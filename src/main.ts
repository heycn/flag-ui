import { createApp } from 'vue';
import App from './App.vue';
import './index.css';
import { createWebHashHistory, createRouter } from 'vue-router';
import heycn from './components/heycn.vue';
import heycn2 from './components/heycn2.vue';

const history = createWebHashHistory();
const router = createRouter({
  history: history,
  routes: [
    {
      path: '/',
      component: heycn
    },
    {
      path: '/xxx',
      component: heycn2
    }
  ]
});

const app = createApp(App);
app.use(router);
app.mount('#app');
