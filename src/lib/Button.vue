<template>
  <button class="wheel-button"
          :class="classes">
    <slot/>
  </button>
</template>

<script lang="ts">
import {computed} from 'vue';

export default {
  props: {
    theme: {
      type: String,
      default: 'button'
    },
    size: {
      type: String,
      default: 'normal'
    },
    level: {
      type: String,
      default: 'normal',
    },
  },
  setup(props) {
    const {theme, size, level} = props;
    const classes = computed(() => {
      return {
        [`wheel-theme-${theme}`]: theme,
        [`wheel-size-${size}`]: size,
        [`wheel-level-${level}`]: level
      };
    });
    return {classes};
  }
};
</script>

<style lang="scss">
$h: 32px;
$border-color: #dcdee2;
$color: #515a6e;
$blue: #0082ff;
$red: #e81123;
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
  //TODO
  background: #ffffff;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: all 250ms;

  & + & {
    margin-left: 8px;
  }

  &:hover {
    color: lighten($blue, 10%);
    border-color: lighten($blue, 10%);
  }

  &:focus {
    color: darken($blue, 10%);
    border-color: darken($blue, 10%);
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

    &:hover {
      color: lighten($blue, 10%);
      border-color: lighten($blue, 10%);
    }

    &:focus {
      color: darken($blue, 10%);
      border-color: darken($blue, 10%);
    }
  }

  &.wheel-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;

    &:hover {
      background: lighten(#f8f8f8, 5%);

    }

    &:focus {
      background: darken(#f8f8f8, 5%);
    }
  }

  &.wheel-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }

  &.wheel-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }

  &.wheel-theme-button {
    &.wheel-level-primary {
      background: $blue;
      color: #f8f8f8;
      border-color: $blue;

      &:hover {
        background: lighten($blue, 6%);
        border-color: lighten($blue, 6%);
      }

      &:focus {
        background: darken($blue, 6%);
        border-color: darken($blue, 6%);
      }
    }

    &.wheel-level-danger {
      background: $red;
      color: #f8f8f8;
      border-color: $red;

      &:hover {
        background: lighten($red, 6%);
        border-color: lighten($red, 6%);
      }

      &:focus {
        background: darken($red, 6%);
        border-color: darken($red, 6%);
      }
    }
  }

  &.wheel-theme-link {
    &.wheel-level-danger {
      color: $red;
      background: #f8f8f8;

      &:hover {
        color: lighten($red, 10%);
        border-color: lighten($red, 10%);
      }

      &:focus {
        color: darken($red, 6%);
        border-color: darken($red, 6%);
      }
    }
  }

  &.wheel-theme-text {
    &.wheel-level-primary {
      color: $blue;

      &:hover {
        color: lighten($blue, 10%);

      }

      &:focus {
        color: darken($blue, 10%);
      }
    }

    &.wheel-level-danger {
      color: $red;

      &:hover {
        color: lighten($red, 10%);
      }

      &:focus {
        color: darken($red, 6%);
      }
    }
  }
}
</style>