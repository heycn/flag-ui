// 主页界面

<template>
  <div>
    <Topnav />
    <div class="topnav">
      <div class="logo">LOGO</div>
      <ul class="menu">
        <li>菜单1</li>
        <li>菜单2</li>
      </ul>
    </div>
    <div class="banner">
      <h1>Wheel UI</h1>
      <h2>一个基于 Vue 开发的 UI框架</h2>
      <p class="actions">
        <a>GitHub</a>
        <a>开始</a>
      </p>
    </div>
  </div>
</template>

<script lang="ts">
  import Topnav from '../components/Topnav.vue';
  export default {
    components: { Topnav }
  };
</script>

<style lang="scss" scoped></style>
