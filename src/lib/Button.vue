<template>
  <button class="wheel-button"
          :class="classes"
          :disabled="disabled">
    <span v-if="loading" class="wheel-loadingIndicator"></span>
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
    disabled: {
      type: Boolean,
      default: false
    },
    loading: {
      type: Boolean,
      default: false
    }
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
$blue: #2d8cf0;
$radius: 4px;
$red: #fe3435;
$grey: #c5c8ce;

.wheel-button {
  // 基础按钮样式
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: all 250ms;

  & + & {
    margin-left: 8px;
  }

  &:hover,
  &:focus {
    color: $blue;
    border-color: $blue;
  }

  &:active {
    color: darken($blue, 14%);
    border-color: darken($blue, 14%);
  }

  &:focus {
    outline: none;
  }


  &::-moz-focus-inner {
    border: 0;
  }

  // 链接按钮样式
  &.wheel-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;

    &:hover,
    &:focus {
      color: lighten($blue, 10%);
    }

    &:active {
      color: darken($blue, 10%);
    }
  }

  // 文本按钮样式
  &.wheel-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;

    &:hover,
    &:focus {
      background: darken(white, 4%);
    }

    &:active {
      background: darken(white, 6%);
    }

  }

  // 大号按钮样式
  &.wheel-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }

  // 小号按钮样式
  &.wheel-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }

  // 普通按钮各个状态
  &.wheel-theme-button {
    // 主要状态
    &.wheel-level-primary {
      background: $blue;
      color: white;
      border-color: $blue;

      &:hover,
      &:focus {
        background: lighten($blue, 10%);
        border-color: lighten($blue, 10%);
      }

      &:active {
        background: darken($blue, 10%);
        border-color: darken($blue, 10%);
      }
    }

    // 危险状态
    &.wheel-level-danger {
      background: $red;
      border-color: $red;
      color: white;

      &:hover,
      &:focus {
        background: lighten($red, 10%);
        border-color: lighten($red, 10%);
      }

      &:active {
        background: darken($red, 10%);
        border-color: darken($red, 10%);
      }
    }
  }

  // 链接按钮各个状态
  &.wheel-theme-link {

    // 危险状态
    &.wheel-level-danger {
      color: $red;

      &:hover,
      &:focus {
        color: lighten($red, 12%);
      }

      &:active {
        color: darken($red, 12%);

      }
    }
  }

  // 文本按钮各个状态
  &.wheel-theme-text {
    // 主要状态
    &.wheel-level-primary {
      color: $blue;

      &:hover,
      &:focus {
        color: lighten($blue, 10%);
      }

      &:active {
        color: darken($blue, 10%);
      }
    }

    // 危险状态
    &.wheel-level-danger {
      color: $red;

      &:hover,
      &:focus {
        color: lighten($red, 10%);
      }

      &:active {
        color: darken($red, 10%);
      }
    }
  }

  // 不可选种状态
  &.wheel-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;

      &:hover {
        border-color: $grey;
      }
    }
  }

  &.wheel-theme-link, &.wheel-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
    }
  }

  // 加载状态
  > .wheel-loadingIndicator {
    width: 14px;
    height: 14px;
    display: inline-block;
    margin-right: 4px;
    border-radius: 8px;
    border-color: $blue $blue $blue transparent;
    border-style: solid;
    border-width: 2px;
    animation: wheel-spin 1s infinite linear;
  }
}

@keyframes wheel-spin {
  0% {
    transform: rotate(0deg)
  }
  100% {
    transform: rotate(360deg)
  }
}
</style>