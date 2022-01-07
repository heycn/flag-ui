<template>
  <button class="wheel-button"
          :class="`wheel-theme-${theme}`">
    <slot/>
  </button>
</template>

<script lang="ts">
export default {
  props: {
    theme: {
      type: String,
      default: 'button'
    }
  }
};
</script>

<style lang="scss">
$h: 32px;
$border-color: #dcdee2;
$color: #515a6e;
$blue: #2d8cf0;
$blue-light: #5cadff;
$radius: 4px;
.wheel-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: #f8f8f8;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);

  & + & {
    margin-left: 8px;
  }

  &:hover {
    color: $blue-light;
    border-color: $blue-light;
  }

  &:focus {
    color: $blue;
    border-color: $blue;
  }

  &:focus {
    outline: none;
  }

  //兼容浏览器 :focus { outline: none } 在 Firefox 不太好用
  &::-moz-focus-inner {
    border: 0;
  }

  &.wheel-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;

    &:hover, &:focus {
      color: lighten($blue, 10%);
    }
  }

  &.wheel-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;

    &:hover, &:focus {
      background: darken(white, 5%);;
    }
  }
}
</style>