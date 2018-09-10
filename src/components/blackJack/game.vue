<template>
    <el-row>
      <el-col :span="10">
        <div class="game-container">
            <!-- 第一行 -->
            <el-row style="padding: 20px;" :gutter="20">
                <el-col :span="14">
                    <div class="tip-text">{{$t('BET AMOUNT')}}</div>
                    <div class="bet-amount-container">
                        <el-row class="bet-amount">
                            <el-col :span="12" class="amount">
                                <img class="navbar-coin" src="../../assets/eos-logo.png">
                                <span class="display-text" style="margin-left: 30px;">
                                  <el-input v-model.number="betAmount" class="bet-amount-input" @change="changeBetAmount"></el-input>
                                </span>
                            </el-col>
                            <el-col :span="4" class="amount-button tip-text">
                                <span @click="amountTimes(0.5)">1/2</span>
                            </el-col>
                            <el-col :span="4" class="amount-button tip-text">
                                <span @click="amountTimes(2)">2X</span>
                            </el-col>
                            <el-col :span="4" class="amount-button tip-text">
                                <span @click="amountMax()">MAX</span>
                            </el-col>
                        </el-row>
                    </div>
                </el-col>
                <el-col :span="10">
                    <div class="tip-text">{{$t('PAYOUT ON WIN')}}</div>
                    <div class="payout-on-win-container">
                        <img class="navbar-coin" src="../../assets/eos-logo.png">
                        <span class="display-text">{{payOnWin}}</span>
                    </div>
                </el-col>
            </el-row>

            <!-- 第二行 -->
            <el-row class="roll-info">
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text">{{$t('当前点数')}}</div>
                    <div class="big-display-text">{{cardSum}}</div>
                </el-col>
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text">{{$t('PAYOUT')}}</div>
                    <div class="big-display-text">{{payout}} x</div>
                </el-col>
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text">{{$t('WIN CHANCE')}}</div>
                    <div class="big-display-text">xxx %</div>
                </el-col>
            </el-row>

            <!-- 第三行 -->
            <el-row class="account-info">
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/eos-logo.png">
                        <span class="display-text">{{store.balance}}</span>
                    </div>
                </el-col>
                <el-col :span="8" class="account-info-section">
                  <el-button type="primary" class="login-button" @click="initIdentity()" v-if="!store.account">{{$t('LOGIN')}}</el-button>
                  <el-button type="primary" class="login-button" @click="initGame()" v-else-if="!gaming" v-loading="loading">{{$t('Start Game')}}</el-button>
                  <el-button type="primary" class="login-button" @click="nextCard()" v-else v-loading="loading">{{$t('Next Card')}}</el-button>
                </el-col>
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/HPY_Token.png">
                        <span class="display-text">{{store.hpyBalance}}</span>
                        <i class="el-icon-question" @click="isShowBetDialog = !isShowBetDialog" style="cursor: pointer;"></i>
                    </div>
                </el-col>
            </el-row>
        </div>

        <!-- 弹出 -->
        <el-dialog
          :title="$t('HPY Token Giveaway!')"
          :visible.sync="isShowBetDialog"
          width="30%"
          center>
          <img src="../../assets/HPY_Token.png" style="width: 40%; display: block; margin: auto;">
          <p>{{$t('bet-1')}}</p>
          <p>{{$t('bet-2')}} <a href="https://happyeosslot.com/" target="_blank">https://happyeosslot.com/</a></p>
          <p>{{$t('bet-3')}}</p>
        </el-dialog>
      </el-col>
      <el-col :span="14">
        <div id="deck">
        </div>
      </el-col>
    </el-row>
</template>

<script>
import * as store from '../../store.js';
import Deck from 'deck-of-cards';
import Chance from 'chance';
import utils from '../../utils.js';

export default {
    data() {
      return {
        store: store.store,
        betAmount: 1,
        isShowBetDialog: false,
        loading: false,
        gaming: false,
        deck: null,
        cardSum: 0,
        cards: [],
      };
    },
    computed: {
      payOnWin: function() {
        return '???';
      },
      payout: function() {
        return '???';
      }
    },
    mounted: function() {
      setTimeout(() => {
        this.deck = Deck();
        this.deck.mount(document.getElementById('deck'));

        this.deck.flip();
        this.deck.sort(true);
        this.deck.bysuit();
      }, 1000);
    },
    watch: {
    },
    methods: {
      initIdentity() {
        store.initIdentity();
      },
      amountTimes(data) {
        this.betAmount = this.betAmount * data;
        if(this.betAmount > this.store.balance) {
          this.betAmount = this.store.balance;
        }
      },
      amountMax() {
        this.betAmount = this.store.balance;
      },
      changeBetAmount(data) {
        this.betAmount = Math.floor(this.betAmount * 10000) / 10000;
      },
      initGame() {
        this.cardSum = 0;
        this.cards = [];
        this.gaming = true;

        this.deck.flip();
        this.deck.shuffle();
        this.deck.shuffle();
      },
      nextCard() {
        const chance = new Chance();
        const cardId = chance.integer({ min: 0, max: 51 });
        const fontSize = utils.getFontSize();

        if (this.cards.includes(cardId)) {
          this.nextCard();
          return;
        }

        this.deck.cards[cardId].animateTo({
          delay: 0,
          duration: 250,

          x: Math.round((this.cards.length - 2.05) * 70 * fontSize / 16),
          y: Math.round(-110 * fontSize / 16),
          rot: 0,
        });
        this.deck.cards[cardId].setSide('front');

        this.cards.push(cardId);
        this.cardSum += this.deck.cards[cardId].rank;


        if (this.cardSum === 21) {
          this.roll_success();
          this.gaming = false;
        } else if (this.cardSum > 21) {
          this.roll_fail();
          this.gaming = false;
        }
      },
      roll_success: function(ans) {
        this.$notify({
          title: this.$t('Congratulations!'),
          type: 'success',
        });
        store.updateBalance();
      },
      roll_fail: function(ans) {
        this.$notify.error({
          title: this.$t('You fail'),
        });
        store.updateBalance();
      }
    }
}
</script>

<style scoped>
.game-container {
  width: 655px;
  height: 286px;
  margin: 60px auto 20px auto;
  font-size: 18px;
  border-radius: 5px;
  background-color: #4b4848;
  align-items: center;
}
#deck {
  width: 100%;
  height: 100vh;
  background-color: #45a173;
  color: #333;
  font-family: 'Open Sans', sans-serif;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  overflow: hidden;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  text-size-adjust: 100%;
}
.deck {
    position: relative;
    left: 50%;
    top: 50%;
}
#container {
  position: fixed;
  top: calc(50% + 1.5rem);
  left: 50%;
  -webkit-transform: translate3d(-50%, -50%, 0);
  -moz-transform: translate3d(-50%, -50%, 0);
  -o-transform: translate3d(-50%, -50%, 0);
  -ms-transform: translate3d(-50%, -50%, 0);
  transform: translate3d(-50%, -50%, 0);
}
.card {
  position: absolute;
  display: inline-block;
  left: -1.9375rem;
  top: -2.75rem;
  width: 3.875rem;
  height: 5.5rem;
  background-color: #fff;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
  box-shadow: 0 1px 1px rgba(0,0,0,0.15);
  cursor: default;
  will-change: transform;
}
.card:before,
.card:after {
  position: absolute;
  font-size: 0.7rem;
  text-align: center;
  line-height: 0.7rem;
  font-family: 'Ubuntu Condensed', sans-serif;
  white-space: pre-line;
  width: 0.55rem;
  letter-spacing: -0.1rem;
}
.card:before {
  top: 0.15rem;
  left: 0;
}
.card:after {
  bottom: 0.1rem;
  right: 0;
  -webkit-transform: rotate(180deg);
  -moz-transform: rotate(180deg);
  -o-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.card .face {
  height: 100%;
  background-position: 50% 50%;
  -webkit-background-size: 100% 100%;
  -moz-background-size: 100% 100%;
  background-size: 100% 100%;
  background-repeat: no-repeat;
}
.card .back {
  position: absolute;
  background-image: url("../../assets/faces/back.png");
  background-position: 50% 50%;
  -webkit-background-size: 100% 100%;
  -moz-background-size: 100% 100%;
  background-size: 100% 100%;
  background-repeat: no-repeat;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}
.card.spades,
.card.clubs,
.card.joker {
  color: #000;
}
.card.hearts,
.card.diamonds,
.card.joker.rank3 {
  color: #d40000;
}
.card.joker.rank1:before,
.card.joker.rank2:before,
.card.joker.rank3:before,
.card.joker.rank1:after,
.card.joker.rank2:after,
.card.joker.rank3:after {
  content: "J\a O\a K\a E\a R";
  letter-spacing: 0;
  font-size: 0.4rem;
  line-height: 0.4rem;
  padding: 0.15rem 0.05rem;
  width: 0.5rem;
}
.card.rank1:before,
.card.rank1:after {
  content: "A";
}
.card.rank2:before,
.card.rank2:after {
  content: "2";
}
.card.rank3:before,
.card.rank3:after {
  content: "3";
}
.card.rank4:before,
.card.rank4:after {
  content: "4";
}
.card.rank5:before,
.card.rank5:after {
  content: "5";
}
.card.rank6:before,
.card.rank6:after {
  content: "6";
}
.card.rank7:before,
.card.rank7:after {
  content: "7";
}
.card.rank8:before,
.card.rank8:after {
  content: "8";
}
.card.rank9:before,
.card.rank9:after {
  content: "9";
}
.card.rank10:before,
.card.rank10:after {
  content: "10";
}
.card.rank11:before,
.card.rank11:after {
  content: "J";
}
.card.rank12:before,
.card.rank12:after {
  content: "Q";
}
.card.rank13:before,
.card.rank13:after {
  content: "K";
}
.card.spades.rank1 .face {
  background-image: url("../../assets/faces/0_1.svg");
}
.card.spades.rank2 .face {
  background-image: url("../../assets/faces/0_2.svg");
}
.card.spades.rank3 .face {
  background-image: url("../../assets/faces/0_3.svg");
}
.card.spades.rank4 .face {
  background-image: url("../../assets/faces/0_4.svg");
}
.card.spades.rank5 .face {
  background-image: url("../../assets/faces/0_5.svg");
}
.card.spades.rank6 .face {
  background-image: url("../../assets/faces/0_6.svg");
}
.card.spades.rank7 .face {
  background-image: url("../../assets/faces/0_7.svg");
}
.card.spades.rank8 .face {
  background-image: url("../../assets/faces/0_8.svg");
}
.card.spades.rank9 .face {
  background-image: url("../../assets/faces/0_9.svg");
}
.card.spades.rank10 .face {
  background-image: url("../../assets/faces/0_10.svg");
}
.card.spades.rank11 .face {
  background-image: url("../../assets/faces/0_11.svg");
}
.card.spades.rank12 .face {
  background-image: url("../../assets/faces/0_12.svg");
}
.card.spades.rank13 .face {
  background-image: url("../../assets/faces/0_13.svg");
}
.card.hearts.rank1 .face {
  background-image: url("../../assets/faces/1_1.svg");
}
.card.hearts.rank2 .face {
  background-image: url("../../assets/faces/1_2.svg");
}
.card.hearts.rank3 .face {
  background-image: url("../../assets/faces/1_3.svg");
}
.card.hearts.rank4 .face {
  background-image: url("../../assets/faces/1_4.svg");
}
.card.hearts.rank5 .face {
  background-image: url("../../assets/faces/1_5.svg");
}
.card.hearts.rank6 .face {
  background-image: url("../../assets/faces/1_6.svg");
}
.card.hearts.rank7 .face {
  background-image: url("../../assets/faces/1_7.svg");
}
.card.hearts.rank8 .face {
  background-image: url("../../assets/faces/1_8.svg");
}
.card.hearts.rank9 .face {
  background-image: url("../../assets/faces/1_9.svg");
}
.card.hearts.rank10 .face {
  background-image: url("../../assets/faces/1_10.svg");
}
.card.hearts.rank11 .face {
  background-image: url("../../assets/faces/1_11.svg");
}
.card.hearts.rank12 .face {
  background-image: url("../../assets/faces/1_12.svg");
}
.card.hearts.rank13 .face {
  background-image: url("../../assets/faces/1_13.svg");
}
.card.clubs.rank1 .face {
  background-image: url("../../assets/faces/2_1.svg");
}
.card.clubs.rank2 .face {
  background-image: url("../../assets/faces/2_2.svg");
}
.card.clubs.rank3 .face {
  background-image: url("../../assets/faces/2_3.svg");
}
.card.clubs.rank4 .face {
  background-image: url("../../assets/faces/2_4.svg");
}
.card.clubs.rank5 .face {
  background-image: url("../../assets/faces/2_5.svg");
}
.card.clubs.rank6 .face {
  background-image: url("../../assets/faces/2_6.svg");
}
.card.clubs.rank7 .face {
  background-image: url("../../assets/faces/2_7.svg");
}
.card.clubs.rank8 .face {
  background-image: url("../../assets/faces/2_8.svg");
}
.card.clubs.rank9 .face {
  background-image: url("../../assets/faces/2_9.svg");
}
.card.clubs.rank10 .face {
  background-image: url("../../assets/faces/2_10.svg");
}
.card.clubs.rank11 .face {
  background-image: url("../../assets/faces/2_11.svg");
}
.card.clubs.rank12 .face {
  background-image: url("../../assets/faces/2_12.svg");
}
.card.clubs.rank13 .face {
  background-image: url("../../assets/faces/2_13.svg");
}
.card.diamonds.rank1 .face {
  background-image: url("../../assets/faces/3_1.svg");
}
.card.diamonds.rank2 .face {
  background-image: url("../../assets/faces/3_2.svg");
}
.card.diamonds.rank3 .face {
  background-image: url("../../assets/faces/3_3.svg");
}
.card.diamonds.rank4 .face {
  background-image: url("../../assets/faces/3_4.svg");
}
.card.diamonds.rank5 .face {
  background-image: url("../../assets/faces/3_5.svg");
}
.card.diamonds.rank6 .face {
  background-image: url("../../assets/faces/3_6.svg");
}
.card.diamonds.rank7 .face {
  background-image: url("../../assets/faces/3_7.svg");
}
.card.diamonds.rank8 .face {
  background-image: url("../../assets/faces/3_8.svg");
}
.card.diamonds.rank9 .face {
  background-image: url("../../assets/faces/3_9.svg");
}
.card.diamonds.rank10 .face {
  background-image: url("../../assets/faces/3_10.svg");
}
.card.diamonds.rank11 .face {
  background-image: url("../../assets/faces/3_11.svg");
}
.card.diamonds.rank12 .face {
  background-image: url("../../assets/faces/3_12.svg");
}
.card.diamonds.rank13 .face {
  background-image: url("../../assets/faces/3_13.svg");
}
.card.joker.rank1 .face {
  background-image: url("../../assets/faces/4_1.svg");
}
.card.joker.rank2 .face {
  background-image: url("../../assets/faces/4_2.svg");
}
.card.joker.rank3 .face {
  background-image: url("../../assets/faces/4_3.svg");
}











.bet-amount-container {
  background-color: #3f3e3e;
  height: 43px;
  border-radius: 0.3em;
  padding: 4px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.bet-amount {
  width: 100%;
  height: 100%;
  display: flex;
}
.bet-amount .amount {
  background-color: #4b4848;
  display: flex;
  align-items: center;
  border-radius: 0.3em;
}
.bet-amount .amount-button {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  cursor: pointer;
}
.navbar-coin {
  height: 22px;
  margin-left: 10px;
  vertical-align: middle;
}
.payout-on-win-container {
  background-color: #3f3e3e;
  height: 43px;
  border-radius: 0.3em;
  padding: 4px;
  display: flex;
  align-items: center;
}
.payout-on-win-container span {
  display: block;
  width: 100%;
  text-align: center;
}
.roll-info {
  background-color: #3f3e3e;
  border-radius: 0.3em;
  height: 87px;
  margin: 0 20px;
}
.roll-info-section {
  text-align: center;
  padding: 10px;
}
.choose-info {
  margin-bottom: 20px;
}
.choose-info-section {
  background-color: #3f3e3e;
  height: 70px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 0.3em;
  padding: 4px;
}
.account-info {
  height: 87px;
  margin: 0 20px;
  font-size: 20px;
  display: flex;
  align-items: center;
}
.account-container {
  display: flex;
  align-items: center;
}
.account-container span {
  display: block;
  width: 100%;
  text-align: center;
}
.bet-amount-input input {
  background-color: #4b4848;
  border: 0;
  color: white;
  font-size: 1.2em;
}
</style>
