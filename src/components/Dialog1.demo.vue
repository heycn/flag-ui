<demo>常规用法</demo>
<template>
  <div>
    <Button @click="toggle">打开对话框</Button>
    <Dialog v-model:visible="x" :closeOnClickOverlay="false" :ok="f1" :cancel="f2">
      <template v-slot:content>
        <strong>hi</strong>
        <div>hi2</div>
      </template>
      <template v-slot:title>
        <strong>标题</strong>
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