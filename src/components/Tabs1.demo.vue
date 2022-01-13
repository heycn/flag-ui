<demo>常规使用</demo>
<template>
  <Tabs v-model:selected="x">
    <Tab title="熊二">熊大！熊大！光头强又来砍树啦！</Tab>
    <Tab title="熊大">熊二...熊二...求求你别再吃了......</Tab>
  </Tabs>
</template>

<script lang="ts">
import {
  Tabs,
  Tab
} from '../lib/index';
import {ref} from 'vue';

export default {
  components: {
    Tabs,
    Tab
  },
  setup() {
    const x = ref('熊二');
    return {
      x
    };
  }
};
</script>