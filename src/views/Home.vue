<!--官网首页-->

<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav/>
      <div class="banner">
        <h1>Wheel UI</h1>
        <h2>一个基于 Vue 开发的 UI框架</h2>
        <p class="actions">
          <a href="https://github.com/heycn/wheel-ui">GitHub</a>
          <router-link to="/doc">快速上手</router-link>
        </p>
      </div>
    </div>
    <div class="feature">
      <svg class="icon">
        <use xlink:href="#icon-vue"></use>
      </svg>
      <svg class="icon">
        <use xlink:href="#icon-ts"></use>
      </svg>
      <svg class="icon">
        <use xlink:href="#icon-happy"></use>
      </svg>
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
.topnavAndBanner {
  background: linear-gradient(145deg, rgba(227, 255, 253, 1) 0%, rgba(183, 233, 230, 1) 100%);
}

.feature {
  > svg {
    width: 64px;
    height: 64px;
  }
}

.banner {
  color: #007974;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  > .actions {
    padding: 8px 0;

    a {
      margin: 0 8px;
      background: #02bcb0;
      color: white;
      display: inline-block;
      padding: 8px 24px;
      border-radius: 4px;

      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>
