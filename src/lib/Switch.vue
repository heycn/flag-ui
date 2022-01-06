<template>
  <button @click="toggle" :class="{checked:value}">
    <span></span>
  </button>
</template>

<script lang="ts">

export default {
  props: {
    value: Boolean
  },
  setup(props, context) {
    const toggle = () => {
      context.emit('update:value', !props.value);
    };
    return {toggle};
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
  transition: left 250ms;
}

button.checked {
  background: blue;
}

button.checked > span {
  left: calc(100% - 20px);
}

button:focus {
  outline: none;
}
</style>