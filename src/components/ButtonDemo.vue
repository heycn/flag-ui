<template>
  <div>
    Button Demo
    <hr>
    <h1>按钮状态</h1>
    <div>
      <Button theme="button">普通按钮</Button>
      <Button theme="link">链接按钮</Button>
      <Button theme="text">文本按钮</Button>
    </div>
    <h2>普通按钮</h2>
    <div>
      <Button>普通尺寸</Button>
      <Button size="small">小号尺寸</Button>
      <Button size="big">大号尺寸</Button>
    </div>
    <h2>链接按钮</h2>
    <div>
      <Button theme="link">普通尺寸</Button>
      <Button theme="link" size="small">小号尺寸</Button>
      <Button theme="link" size="big">大号尺寸</Button>
    </div>
    <h2>文本按钮</h2>
    <div>
      <Button theme="text">普通尺寸</Button>
      <Button theme="text" size="small">小号尺寸</Button>
      <Button theme="text" size="big">大号尺寸</Button>
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