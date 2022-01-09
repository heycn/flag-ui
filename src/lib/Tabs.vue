<template>
  <div class="wheel-tabs">
    <div class="wheel-tabs-nav" ref="container">
      <div class="wheel-tabs-nav-item"
           v-for="(t,index) in titles"
           :ref="el => {if (t === selected) selectedItem = el}"
           @click="select(t)"
           :class="{selected: t === selected}"
           :key="index">
        {{ t }}
      </div>
      <div class="wheel-tabs-nav-underline" ref="underline"></div>
    </div>
    <div class="wheel-tabs-content">
      <component class="wheel-tabs-content-item"
                 :class="{selected: c.props.title === selected}"
                 v-for="c in defaults"
                 :is="c"/>
    </div>
  </div>
</template>

<script lang="ts">
import Tab from './Tab.vue';
import {computed, onMounted, onUpdated, ref} from 'vue';

export default {
  props: {
    selected: {
      type: String
    }
  },
  setup(props, context) {
    const selectedItem = ref<HTMLDivElement>(null);
    const underline = ref<HTMLDivElement>(null);
    const container = ref<HTMLDivElement>(null);
    const x = () => {
      const {width} = selectedItem.value.getBoundingClientRect();
      underline.value.style.width = width + 'px';
      const {left: left1} = container.value.getBoundingClientRect();
      const {left: left2} = selectedItem.value.getBoundingClientRect();
      const left = left2 - left1;
      underline.value.style.left = left + 'px';
    };

    onMounted(x);
    onUpdated(x);

    const defaults = context.slots.default();
    defaults.forEach((tag) => {
      if (tag.type !== Tab) {
        throw new Error('Tabs 子标签必须是 Tab');
      }
    });

    const current = computed(() => {
      return defaults.filter((tag) => {
        return tag.props.title === props.selected;
      })[0];
    });

    const titles = defaults.map((tag) => {
      return tag.props.title;
    });

    const select = (title: string) => {
      context.emit('update:selected', title);
    };

    return {defaults, titles, current, select, selectedItem, underline, container};
  }
};
</script>

<style lang="scss">
$blue: #2d8cf0;
$color: #17233d;
$border-color: #dcdee2;
.wheel-tabs {
  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    position: relative;

    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;

      &:first-child {
        margin-left: 0;
      }

      &.selected {
        color: $blue;
      }
    }

    // 选中时的下划线
    &-underline {
      position: absolute;
      height: 3px;
      background: $blue;
      left: 0;
      bottom: -1px;
      width: 100px;
      transition: all 250ms;
    }
  }

  &-content {
    padding: 8px 0;

    &-item {
      display: none;

      &.selected {
        display: block
      }
    }
  }
}
</style>