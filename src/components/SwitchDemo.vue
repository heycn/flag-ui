<template>
  <div>
    <h1>Switch 开关 </h1>
    <Demo :component="Switch1Demo"/>
    <Demo :component="Switch2Demo"/>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import Switch1Demo from './Switch1.demo.vue';
import Switch2Demo from './Switch2.demo.vue';
import 'prismjs';
import 'prismjs/themes/prism-tomorrow.css';

// Prism 源代码是指向全局 但是TS不认识，强制把 Prism 定义在 window，骗过TS
const Prism = (window as any).Prism;
import Demo from './Demo.vue';
import {ref} from 'vue';

export default {
  components: {Button, Demo},
  setup() {
    const bool = ref(false);
    return {bool, Switch1Demo, Switch2Demo, Prism};
  }
};
</script>

<style lang="scss" scoped>
$border-color: #dcdee2;

.demo {
  border: 1px solid $border-color;
  margin: 16px 0 32px;

  > h2 {
    font-size: 20px;
    padding: 8px 16px;
    border-bottom: 1px solid $border-color;
  }

  &-component {
    padding: 16px;
  }

  &-actions {
    padding: 8px 16px;
    border-top: 1px dashed $border-color;
  }

  &-code {
    padding: 8px 16px;
    border-top: 1px dashed $border-color;

    > pre {
      line-height: 1.1;
      font-family: Consolas, 'Courier New', Courier, monospace;
      margin: 0;
    }
  }
}
</style>