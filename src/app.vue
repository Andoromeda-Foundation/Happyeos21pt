<template>
  <div id="app">
    <vip-menu></vip-menu>
    <div id="game">
      <dice-game v-if="store.currentGame === 'dice'"></dice-game>
      <black-jack-game v-else-if="store.currentGame === 'blackJack'"></black-jack-game>
    </div>
  </div>
</template>

<script>
import menu from './components/menu.vue';
import * as store from './store.js';
import diceGame from './components/dice/game.vue';
import blackJackGame from './components/blackJack/game.vue';

export default {
  components: {
    'vip-menu': menu,
    'dice-game': diceGame,
    'black-jack-game': blackJackGame,
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
