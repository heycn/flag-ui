// 文档界面

<template>
  <div>
    <Topnav />
    <div class="content">
      <aside>
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
  export default {
    components: { Topnav }
  };
</script>
