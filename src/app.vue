<template>
  <div id="app">
    <vip-menu></vip-menu>
    <div id="game">
      <router-view />   
    </div>
  </div>
</template>

<script>
import menu from './components/menu.vue';
import * as store from './store.js';

export default {
  components: {
    'vip-menu': menu,
  },
  data() {
      return {
        store: store.store,
      };
    },
  methods: {
  }
}
</script>

<style>
#app {
  font-family: Poppins, sans-serif;
}
#game {
  background: url('./assets/background_2.png');
  background-size: 100%;
  background-repeat: repeat repeat;
  height: 100vh;
  display: flex;
  flex-direction: column;
  font-weight: 600;
  letter-spacing: 0.5px;
}
</style>
