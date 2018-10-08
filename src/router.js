import Vue from 'vue';
import Router from 'vue-router';
import diceGame from './components/dice/game.vue';
import newDiceGame from './components/newDice/game.vue';
import blackJackGame from './components/blackJack/game.vue';
import OTCView from './components/otc';
import slot from './components/slot/slot.vue';
import index from './components/index/index.vue';
Vue.use(Router);

export default new Router({
  scrollBehavior: () => ({ y: 0 }),
  routes: [
    {
      name: 'Home',
      path: '/',
      redirect: {
        name: 'Dice',
      },
    },
    {
      name: 'OTCEOS',
      path: '/otc',
      redirect: {
        name: 'OTC',
        params: {
          tokenContract: 'eosio.token',
          tokenSymbol: 'EOS',
        },
      },
    },
    {
      name: 'OTC',
      path: '/otc/:tokenContract/:tokenSymbol',
      component: OTCView,
    },
    {
      name: 'BlackJack',
      path: '/blackjack',
      component: blackJackGame,
    },
    {
      name: 'Dice',
      path: '/dice',
      component: diceGame,
    },
    {
      name: 'NewDice',
      path: '/newDice',
      component: newDiceGame,
    },
    {
      name: 'Slot',
      path: '/slot',
      component: slot,
    },
    {
      name: 'Index',
      path: '/index',
      component: index,
    },
  ],
});
