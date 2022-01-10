<template>
  <div>
    <h1>Switch 组件示例 </h1>
    <div class="demo">
      <h2>常规用法</h2>
      <div class="demo-component">
        <component :is="Switch1Demo"/>
      </div>
      <div class="demo-actions">
        <Button>查看代码</Button>
      </div>
      <div class="demo-code">
        <pre class="language-html" v-html="Prism.highlight(Switch1Demo.__sourceCode, Prism.languages.html, 'html')"/>
      </div>
    </div>
    <div class="demo">
      <h2>disabled </h2>
      <div class="demo-component">
        <component :is="Switch2Demo"/>
      </div>
      <div class="demo-actions">
        <Button>查看代码</Button>
      </div>
      <div class="demo-code">
        <pre class="language-html" v-html="Prism.highlight(Switch2Demo.__sourceCode, Prism.languages.html, 'html')"/>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
import Switch1Demo from './Switch1.demo.vue';
import Switch2Demo from './Switch2.demo.vue';
import 'prismjs';
import 'prismjs/themes/prism-tomorrow.css';
import {ref} from 'vue';

// Prism 源代码是指向全局 但是TS不认识，强制把 Prism 定义在 window，骗过TS
const Prism = (window as any).Prism;

export default {
  components: {Button},
  setup() {
    const bool = ref(false);
    return {bool, Switch1Demo, Switch2Demo, Prism}
      ;
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