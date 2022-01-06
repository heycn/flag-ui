<template>
  <button @click="toggle" :class="{checked}">
    <span></span>
  </button>
</template>

<script lang="ts">
import {ref} from 'vue';
import Button from './Button.vue';

export default {
  components: {Button},
  setup() {
    const checked = ref(false);
    const toggle = () => {
      checked.value = !checked.value;
    };
    return {checked, toggle};
  }
};

</script>

<style lang="scss" scoped>
button {
  height: 22px;
  width: 44px;
  border: none;
  background: gray;
  border-radius: 11px;
  position: relative;
}

span {
  position: absolute;
  top: 2px;
  left: 2px;
  height: 18px;
  width: 18px;
  background: white;
  border-radius: 9px;
}

button.checked {
  background: blue;
}

button.checked > span {
  left: calc(100% - 20px);
}
</style>