<template>
  <div>
    Tabs Demo
    <hr>
    <Tabs/>
    <Tab/>
  </div>
</template>

<script lang="ts">
import Tabs from '../lib/Tabs.vue';
import Tab from '../lib/Tab.vue';

export default {
  components: {Tabs, Tab}
};
</script>