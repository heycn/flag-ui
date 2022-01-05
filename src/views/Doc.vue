// 文档界面

<template>
  <div>
    <Topnav />
    <div class="content">
      <aside v-if="menuVisible">
        <h2>组件</h2>
        <ol>
          <li><router-link to="/doc/switch"></router-link>Switch 组件</li>
          <li><router-link to="/doc/button"></router-link>Button 组件</li>
          <li><router-link to="/doc/dialog"></router-link>Dialog 组件</li>
          <li><router-link to="/doc/tabs"></router-link>Tabs 组件</li>
        </ol>
      </aside>
      <main>主内容</main>
    </div>
  </div>
</template>

<script lang="ts">
  import Topnav from '../components/Topnav.vue';
  import { inject, Ref } from 'vue';
  export default {
    components: { Topnav },
    setup() {
      const menuVisible = inject<Ref<boolean>>('menuVisible');
      return { menuVisible };
    }
  };
</script>

<style lang="scss" scoped>
  aside {
    background: lightblue;
    width: 150px;
    padding: 16px;
    position: fixed;
    top: 0;
    left: 0;
    padding-top: 70px;
    > h2 {
      margin-bottom: 4px;
    }
    > ol {
      > li {
        padding: 4px 0;
      }
    }
  }
</style>
