<template>
  <div class="wheel-tabs">
    <div class="wheel-tabs-nav">
      <div class="wheel-tabs-nav-item" v-for="(t,index) in titles" :key="index">
        {{ t }}
      </div>
    </div>
    <div class="wheel-tabs-content">
      <component class="wheel-tabs-content-item" v-for="(c,index) in defaults" :is="c" :key="index"/>
    </div>
  </div>
</template>

<script lang="ts">
import Tab from './Tab.vue';

export default {
  setup(props, context) {
    const defaults = context.slots.default();
    defaults.forEach((tag) => {
      if (tag.type !== Tab) {
        throw new Error('Tabs 子标签必须是 Tab');
      }
    });
    const titles = defaults.map((tag) => {
      return tag.props.title;
    });
    return {defaults, titles};
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
  }

  &-content {
    padding: 8px 0;
  }
}
</style>