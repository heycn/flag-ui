<template>
  <div class="flag-tabs">
    <div class="flag-tabs-nav" ref="container">
      <div class="flag-tabs-nav-item"
           v-for="(t,index) in titles"
           :ref="el => {if (t === selected) selectedItem = el}"
           @click="select(t)"
           :class="{selected: t === selected}"
           :key="index">
        {{ t }}
      </div>
      <div class="flag-tabs-nav-underline" ref="underline"></div>
    </div>
    <div class="flag-tabs-content">
      <component :is="current" :key="current.props.title"/>
    </div>
  </div>
</template>

<script lang="ts">
import Tab from './Tab.vue';
import {computed, onMounted, ref, watchEffect} from 'vue';

export default {
  props: {
    selected: {type: String}
  },
  setup(props, context) {
    const selectedItem = ref<HTMLDivElement>(null);
    const underline = ref<HTMLDivElement>(null);
    const container = ref<HTMLDivElement>(null);
    onMounted(() => {
      watchEffect(() => {
        const {width} = selectedItem.value.getBoundingClientRect();
        underline.value.style.width = width + 'px';
        const {left: left1} = container.value.getBoundingClientRect();
        const {left: left2} = selectedItem.value.getBoundingClientRect();
        const left = left2 - left1;
        underline.value.style.left = left + 'px';
      });
    });

    const defaults = context.slots.default();
    defaults.forEach((tag) => {
      // @ts-ignore
      if (tag.type.name !== Tab.name) {
        throw new Error('Tabs 子标签必须是 Tab');
      }
    });
    const current = computed(() => {
      return defaults.find(tag => tag.props.title === props.selected);
    });

    const titles = defaults.map((tag) => {
      return tag.props.title;
    });

    const select = (title: string) => {
      context.emit('update:selected', title);
    };

    return {defaults, titles, select, selectedItem, underline, container, current};
  }
};
</script>

<style lang="scss">
$blue: #2d8cf0;
$color: #17233d;
$border-color: #dcdee2;
.flag-tabs {
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
  }
}
</style>