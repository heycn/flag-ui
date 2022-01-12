<demo>常规使用</demo>

<template>
  <Switch v-model:value="bool"/>
</template>

<script lang="ts">
import {Switch} from '../lib/index';
import {ref} from 'vue';

export default {
  components: {Switch,},
  setup() {
    const bool = ref(false);
    return {bool};
  }
};
</script>