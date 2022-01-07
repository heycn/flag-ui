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
$blue: #0082ff;
$red: #e81123;
$grey: #c5c8ce;
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