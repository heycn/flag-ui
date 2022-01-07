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
      <Button>普通尺寸</Button>
      <Button size="small">小号尺寸</Button>
      <Button size="big">大号尺寸</Button>
    </div>
    <div>
      <Button theme="link">普通尺寸</Button>
      <Button theme="link" size="small">小号尺寸</Button>
      <Button theme="link" size="big">大号尺寸</Button>
    </div>
    <div>
      <Button theme="text">普通尺寸</Button>
      <Button theme="text" size="small">小号尺寸</Button>
      <Button theme="text" size="big">大号尺寸</Button>
    </div>
    <h1>示例3</h1>
    <div>
      <Button>普通按钮</Button>
      <Button level="primary">主要按钮</Button>
      <Button level="danger">危险按钮</Button>
    </div>
    <div>
      <Button theme="link">普通链接按钮</Button>
      <Button theme="link" level="primary">主要链接按钮</Button>
      <Button theme="link" level="danger">危险链接按钮</Button>
    </div>
    <div>
      <Button theme="text">普通文字按钮</Button>
      <Button theme="text" level="primary">主要文字按钮</Button>
      <Button theme="text" level="danger">危险文字按钮</Button>
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