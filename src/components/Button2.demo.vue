<demo>支持 size</demo>
<template>
  <div>
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
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';

export default {
  components: {Button}
};
</script>