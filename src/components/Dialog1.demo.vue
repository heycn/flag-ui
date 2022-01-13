<demo>常规用法</demo>
<template>
  <div>
    <Button @click="toggle">打开对话框</Button>
    <Dialog v-model:visible="x" :closeOnClickOverlay="false" :ok="f1" :cancel="f2">
      <template v-slot:content>
        <strong>报告！有BUG！</strong>
        <div>为什么点 ok 后不能关闭！<p/> 莫慌！如果这里需要用户填空，但是用户没填，那我就不能给用户 ok 啦~</div>
      </template>
      <template v-slot:title>
        <strong>优雅的标题</strong>
      </template>
    </Dialog>
  </div>
</template>

<script lang="ts">
import {
  Button,
  Dialog
} from '../lib/index';
import {
  ref
} from 'vue';

export default {
  components: {
    Dialog,
    Button
  },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return false;
    };
    const f2 = () => {
    };
    return {
      x,
      toggle,
      f1,
      f2
    };
  }
};
</script>