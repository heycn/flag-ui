// 主页界面

<template>
  <div>
    <Topnav/>
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
        <a href="https://github.com/heycn/wheel-ui">GitHub</a>
        <router-link to="/doc">快速上手</router-link>
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import Topnav from '../components/Topnav.vue';

export default {
  components: {Topnav}
};
</script>

<style lang="scss" scoped>
.banner {
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  background: lightgreen;

  > .actions {
    padding: 8px 0;

    a {
      margin: 0 8px;
      background: #fff;
      display: inline-block;
      height: 28px;
      line-height: 28px;
      border-radius: 14px;
      padding: 0 8px;
    }
  }
}
</style>
