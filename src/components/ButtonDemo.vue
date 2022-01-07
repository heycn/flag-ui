<template>
  <div>
    Button Demo
    <hr>
    <h1>示例1</h1>
    <div>
      <Button theme="button">普通按钮</Button>
      <Button theme="link">链接按钮</Button>
      <Button theme="text">文本按钮</Button>
    </div>
    <h1>示例2</h1>
    <div>
      <Button size="normal">普通尺寸</Button>
      <Button size="small">小号尺寸</Button>
      <Button size="big">大号尺寸</Button>
    </div>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';

export default {
  components: {Button},
  setup() {
    const onClick = () => {
      console.log('hi');
    };
    return {onClick};
  }
};
</script>