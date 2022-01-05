<template>
  <div>导航栏 | <router-link to="/">heycn</router-link> | <router-link to="/xxx">heycn2</router-link></div>
  <hr />
  <router-view />
</template>

<script>
  export default {
    name: 'App'
  };
</script>
