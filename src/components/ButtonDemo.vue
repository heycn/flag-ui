<template>
  <div>
    Button Demo
    <hr>
    <h1>示例1</h1>
    <div>
      <Button>默认是button</Button>
      <Button theme="button"> is button</Button>
      <Button theme="link"> is link</Button>
      <Button theme="text"> is text</Button>
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