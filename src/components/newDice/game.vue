<template>
<div class="dice-div">
  <div class="dice-game-container">
    <div class="dice-logo">
      <div>
        <div class="dice-logo-content">LEADING TO A NEW ERA </div>
        <div class="dice-logo-content">OF <span>URBAN LEGEND</span></div>
      </div>
    </div>
    <div class="dice-game-dashboard">
      <div class="dice-broadcast" style="display: none;">
        <div class="dice-broadcast-content">
          <span>Bulletin:</span> congratulations to "<span>RMS</span>" （ID）who won 5000 EOS, ranking the top of the list.
        </div>
      </div>
      <el-row class="dice-game-account-info">
        <el-col :span="4" class="account-info" :offset="4">
          <div class="title">ACCOUNT</div>
          <div class="content"><span v-if="store.account">{{store.account.name}}</span><span v-else>UNKNOWN</span></div>
        </el-col>
        <el-col :span="4" class="account-info">
          <div class="title">BALANCE</div>
          <div class="content">{{store.eos.balance}} EOS</div>
        </el-col>
        <el-col :span="4" class="account-info">
          <div class="title">GAINS</div>
          <div class="content">xxx EOS</div>
        </el-col>
        <el-col :span="4" class="account-info">
          <div class="title">GAME TIMES</div>
          <div class="content">xxx</div>
        </el-col>
      </el-row>
      <el-row class="dice-game-result">
        <el-col :span="8" class="predict-result">
          <div class="title">PREDICT RESULT</div>
          <div class="content">80-99</div>
        </el-col>
        <el-col :span="8">
          <div class="roll-result">75</div>
        </el-col>
        <el-col :span="8" class="predict-result">
          <div class="title">BET AMOUNT</div>
          <div class="content">{{betAmount}} EOS</div>
        </el-col>
      </el-row>
      <div class="dice-game-result-display">LOSE</div>
      <el-row style="display: none;">
        <el-col :span="8" class="dice-player-info">
          <el-row>
            <el-col :span="10">
              <img src="../../assets/newDice/avatar.png">
            </el-col>
            <el-col :span="14" class="assets">
              <div style="margin-bottom: 21px;">
                <span v-if="store.account">{{store.account.name}}</span>
                <span v-else>UNKNOWN</span> <span style="color: red;">Lv x</span>
              </div>
              <div>GAINS:</div>
              <div>xxx EOS; xxx TPT</div>
            </el-col>
          </el-row>
          <div class="info">
            <div>总游戏次数：xxx times</div>
            <div style="margin-bottom: 21px;">本次游戏次数：xx times</div>
            <div>Jetpack使用次数：x</div>
            <div>Jetpack剩余使用次数：x</div>
          </div>
        </el-col>
        <el-col :span="8" class="dice-dashboard">
          <div style="margin-top: 40px;">JETPACK: xx%</div>
          <img src="../../assets/newDice/dashboard.png">
          <div style="margin-top: 20px;">LEVEL OF RISK：xxx</div>
        </el-col>
        <el-col :span="8">
          <div class="predict-info" style="margin-top: 104px;">
            <div class="title">{{$t('PREDICT RESULTS')}}</div>
            <div class="number">{{choose === 'small' ? `${range + 1} - 99` : `1 - ${range - 1}`}}</div>
          </div>
          <div class="predict-info" style="margin-top: 39px;">
            <div class="title">{{$t('PAYOUT ON WIN')}}</div>
            <div class="number">{{payOnWin}} EOS</div>
          </div>
        </el-col>
      </el-row>
      <el-row class="dice-payout">
        <el-col :span="8" class="section">
          <div class="title">{{$t('WIN CHANCE')}}</div>
          <div class="content">{{choose === 'small' ? range : 99 - range}} %</div>
        </el-col>
        <el-col :span="8" class="section">
          <div class="title">{{$t('PAYOUT')}}</div>
          <div class="content">{{payout}} X</div>
        </el-col>
        <el-col :span="8" class="section">
          <div class="title">{{$t('PAYOUT ON WIN')}}</div>
          <div class="content">{{payOnWin}} EOS</div>
        </el-col>
      </el-row>
    </div>
    <div class="dice-game-button">
      <el-row>
        <el-col :span="8" class="game-count">
          本场游戏次数 <span>XXX</span>
        </el-col>
        <el-col :span="16">
          <div class="bet-amount-container">
              <el-row class="bet-amount" :gutter="13">
                  <el-col :span="12" class="amount">
                      <img class="navbar-coin" src="../../assets/eos-logo.png">
                      <span class="display-text" style="margin-left: 30px;">
                        <el-input v-model.number="betAmount" class="bet-amount-input" @change="changeBetAmount"></el-input>
                      </span>
                  </el-col>
                  <el-col :span="4" class="amount-button">
                      <span @click="amountTimes(0.5)">1/2</span>
                  </el-col>
                  <el-col :span="4" class="amount-button">
                      <span @click="amountTimes(2)">2X</span>
                  </el-col>
                  <el-col :span="4" class="amount-button">
                      <span @click="amountMax()">MAX</span>
                  </el-col>
              </el-row>
          </div>
        </el-col>
        <el-col :span="4" class="dice-game-balance" style="display: none;">
          <div style="margin-top: 7px;">Balance</div>
          <div>{{store.eos.balance}} EOS</div>
        </el-col>
      </el-row>
      <div class="dice-game-slider-wrapper">
        <div :class="['direction-info', choose === 'small' ? 'direction-active' : 'direction-disable']" @click="choose = 'small'">LEFT</div>
        <div class="slider-wrapper">
            <span>0</span>
            <el-slider v-model="range" class="range" :min="0" :max="99"></el-slider>
            <span>99</span>
        </div>
        <div :class="['direction-info', choose === 'big' ? 'direction-active' : 'direction-disable']" @click="choose = 'big'">RIGHT</div>
      </div>
      <div class="bet-button">
        <div class="bet-button-board">
          <el-button type="primary" class="button" @click="initIdentity()" v-if="!store.account">{{$t('LOGIN')}}</el-button>
          <el-button type="primary" class="button" @click="roll()" v-else v-loading="loading">{{$t('ROLL DICE')}}</el-button>
        </div>
      </div>
    </div>

    <!-- log -->
    <dice-log></dice-log>
  </div>
</div>
</template>

<script>
import * as store from '../../store.js';
import tokenDisplay from '../../components/token/token.vue';
import log from './log.vue';

export default {
    components: {
      'token-display': tokenDisplay,
      'dice-log': log,
    },
    data() {
      return {
        store: store.store,
        range: 50,
        betAmount: 1,
        isShowBetDialog: false,
        loading: false,
        choose: 'small',
      };
    },
    computed: {
      payOnWin: function() {
        if (this.choose === 'small') {
          return Math.floor(98 / this.range * this.betAmount * 10000) / 10000;
        } else {
          return Math.floor(98 / (99 - this.range) * this.betAmount * 10000) / 10000;
        }
      },
      payout: function() {
        if (this.choose === 'small') {
          return Math.floor(98 / this.range * 10000) / 10000;
        } else {
          return Math.floor(98 / (99 - this.range) * 10000) / 10000;
        }
      }
    },
    watch: {
      range(newRange, oldRange) {
        if(newRange < 6) {
          this.range = 6;
        } else if(newRange > 93) {
          this.range = 93;
        }
      }
    },
    methods: {
      initIdentity() {
        store.initIdentity();
      },
      amountTimes(data) {
        this.betAmount = this.betAmount * data;
        if(this.betAmount > this.store.eos.balance) {
          this.betAmount = this.store.eos.balance;
        }
      },
      amountMax() {
        this.betAmount = this.store.eos.balance;
      },
      changeBetAmount(data) {
        this.betAmount = Math.floor(this.betAmount * 10000) / 10000;
      },
      roll: function() {
        this.loading = true;
        let memo = `bet ${this.choose === 'small' ? this.range + 100 : this.range} ${this.store.seed}`;
        const referral = this.store.referral;
        if (referral) {
          memo += ` ${referral}`;
        }
        this.store.scatter.transfer(this.store.account.name, "happyeosdice", `${this.betAmount.toFixed(4)} EOS`, memo)
          .then(() => {
            // 轮询查找结果
            const r = setInterval(() => {
              this.store.scatter.getTableRows(true, "happyeosdice", this.store.account.name, "result", "0").then((data) => {
                const ans = data.rows[0].roll_number;
                // roll点值为0-99
                if (ans < 100) {
                  clearInterval(r);
                  this.loading = false;
                  if ((this.choose === 'small' && ans < this.range) || (this.choose === 'big' && ans > this.range)) {
                    this.roll_success(ans);
                  } else {
                    this.roll_fail(ans);
                  }
                }
              });
            }, 1000);
          }).catch((err) => {
            console.error(err);
            alert('项目出错了，快联系开发者！');
          });
      },
      roll_success: function(ans) {
        this.$notify({
          title: this.$t('Congratulations!'),
          message: this.$t('success_message', [ans, this.payout * this.betAmount]),
          type: 'success',
        });
        store.updateBalance();
      },
      roll_fail: function(ans) {
        this.$notify.error({
          title: this.$t('You fail'),
          message: this.$t('fail_message', [ans, this.payout * this.betAmount]),
        });
        store.updateBalance();
      }
    }
}
</script>

<style>
.slider-wrapper {
  padding: 10px;
  background-color: #4b484888;
  border-radius: 30px;
  align-items: center;
  width: 655px;
  margin: 0 auto;
  display: flex;
  flex-direction: row;
  color: white;
  justify-content: space-between;
}
.slider-wrapper .range {
  width: 90%;
}
.bet-amount-container {
  /* background-color: #3f3e3e; */
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
}
.bet-amount .amount-button span {
  border: 2px solid #d8d8d8;
  border-radius: 10px;
  cursor: pointer;
  height: 32px;
  width: 46px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.navbar-coin {
  height: 22px;
  margin-left: 10px;
  vertical-align: middle;
}
.bet-amount-input input {
  background-color: #4b4848;
  border: 0;
  color: white;
  font-size: 1.2em;
}
@font-face {
  font-family: 'FZXS16--GB1-0';
  src: url('../../assets/fonts/FangZhengXiangSu16.ttf') format('truetype');
}
.dice-div {
  width: 1440px;
  margin-left: auto;
  margin-right: auto;
  display: block;
  font-family: 'FZXS16--GB1-0';
  color: white;
}
.dice-game-container {
  background-color: #061314;
  padding-top: 66px;
}
.dice-logo {
  /* border: 7px solid #000000; */
  width: 792px;
  height: 104px;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-left: auto;
  margin-right: auto;
  font-family: Impact;
  font-size: 42px;
  color: #ffffff;
  letter-spacing: 0;
  line-height: 39px;
  text-align: left;
}
.dice-logo-content {
  width: 366px;
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.dice-logo-content span {
  color: #fc157d;
}
.dice-game-dashboard {
  background: #000000;
  width: 806px;
  height: 497px;
  margin: 12px auto 0 auto;
  display: block;
}
.dice-broadcast {
  border: 2px solid #082f2f;
  border-radius: 8px;
  width: 767px;
  height: 44px;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 14px 17px;
}
.dice-broadcast-content {
  font-size: 14px;
  letter-spacing: 0;
  text-align: left;
}
.dice-broadcast-content span {
  color: #00a8c4;
}
.dice-player-info {
  padding: 55px 0 0 38px;
}
.dice-player-info img {
  width: 81px;
  height: 81px;
}
.dice-player-info .assets {
  font-size: 14px;
  letter-spacing: 0;
  line-height: 21px;
  text-align: left;
}
.dice-player-info .info {
  margin-top: 32px;
  font-size: 14px;
  letter-spacing: 0;
  line-height: 21px;
  text-align: left;
}
.predict-info .title {
  font-family: 'FZXS16--GB1-0';
  font-size: 14px;
  color: #ffffff;
  letter-spacing: 0;
  text-align: left;
  display: block;
  text-align: center;
}
.predict-info .number {
  font-family: 'FZXS16--GB1-0';
  font-size: 14px;
  color: #000000;
  letter-spacing: 0;
  text-align: left;
  background-color: #d8d8d8;
  border-radius: 8px;
  width: 126px;
  height: 41px;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 12px auto auto auto;
}
.dice-dashboard {
  text-align: center;
}
.dice-dashboard img {
  width: 193px;
  height: 193px;
  margin-top: 20px;
}
.dice-payout {
  background: #d8d8d8;
  border-radius: 8px;
  width: 767px;
  height: 84px;
  display: block;
  margin: 20px auto auto auto;
}
.dice-payout .section {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  height: 100%;
}
.dice-payout .section .title {
  font-family: 'FZXS16--GB1-0';
  font-size: 14px;
  color: #000000;
  letter-spacing: 0;
}
.dice-payout .section .content {
  font-family: Impact;
  font-size: 20px;
  color: #000000;
  letter-spacing: 0;
  margin-top: 7px;
}
.dice-game-button {
  background: #000000;
  width: 806px;
  height: 230px;
  display: block;
  margin: 13px auto auto auto;
  padding: 14px;
}
.dice-game-button .game-count {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 12px;
  font-family: 'FZXS16--GB1-0';
  font-weight: normal;
  color: rgba(216, 216, 216, 1);
  height: 50px;
}
.dice-game-button .game-count span {
  width: 26px;
  height: 24px;
  font-size: 16px;
  font-family: Impact;
  color: rgba(216, 216, 216, 1);
  line-height: 24px;
  margin-left: 14px;
}
.dice-game-balance div {
  text-align: center;
}
.dice-game-slider-wrapper {
  display: flex;
  align-items: center;
  margin-top: 20px;
}
.dice-game-slider-wrapper .direction-info {
  width: 55px;
  height: 55px;
  border-radius: 100%;
  justify-content: center;
  align-items: center;
  display: flex;
  font-family: Impact;
  font-size: 14px;
  letter-spacing: 0;
  border: 1px solid;
}
.bet-button .bet-button-board {
  border: 1px solid #003433;
  padding: 2px;
  width: 192px;
  height: 47px;
  margin: 17px auto auto auto;
}
.bet-button .bet-button-board .button {
  border: 2px solid #003433;
  width: 192px;
  height: 47px;
  font-family: Impact;
  font-size: 14px;
  color: #00fff7;
  letter-spacing: 0.5px;
  text-align: center;
  background-color: black;
  border-radius: 0;
}
.direction-disable {
  color: #8c8c8c;
  border-color: #8c8c8c;
}
.direction-active {
  color: #00fffa;
  border-color: #007b79;
}
.dice-game-account-info {
  margin-top: 44px;
}
.account-info .title {
  font-family: 'FZXS16--GB1-0';
  font-size: 12px;
  color: #d8d8d8;
  letter-spacing: 0;
  display: block;
  text-align: center;
}
.account-info .content {
  font-family: Impact;
  font-size: 12px;
  color: #d8d8d8;
  letter-spacing: 0;
  display: block;
  text-align: center;
}
.dice-game-result {
  margin-top: 80px;
}
.predict-result .title {
  font-size: 14px;
  font-family: 'FZXS16--GB1-0';
  font-weight: normal;
  color: rgba(255, 255, 255, 1);
  line-height: 14px;
  text-align: center;
}
.predict-result .content {
  margin: 21px auto auto auto;
  width: 157px;
  height: 59px;
  background-color: #d8d8d8;
  border: 2px solid #d8d8d8;
  border-radius: 10px;
  font-size: 30px;
  font-family: Impact;
  color: rgba(0, 0, 0, 1);
  line-height: 36px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.roll-result {
  margin: auto;
  width: 176px;
  height: 107px;
  border: 2px solid white;
  border-radius: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: Impact;
  color: #a7193f;
  font-size: 65px;
  line-height: 80px;
}
.dice-game-result-display {
  text-align: center;
  font-size: 27px;
  font-family: Impact;
  color: rgba(0, 255, 250, 1);
  line-height: 33px;
  margin-top: 12px;
}
</style>
