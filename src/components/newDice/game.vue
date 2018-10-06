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
      <div class="dice-broadcast">
        <div class="dice-broadcast-content">
          <span>Bulletin:</span> congratulations to "<span>RMS</span>" （ID）who won 5000 EOS, ranking the top of the list.
        </div>
      </div>
      <el-row>
        <el-col :span="8" class="dice-player-info">
          <el-row>
            <el-col :span="12">
              <img src="../../assets/newDice/avatar.png">
            </el-col>
            <el-col :span="12" class="assets">
              <div style="margin-bottom: 21px;">RMS <span style="color: red;">Lv4</span></div>
              <div>GAINS:</div>
              <div>500EOS; 1200TPT</div>
            </el-col>
          </el-row>
          <div class="info">
            <div>总游戏次数：625 times</div>
            <div style="margin-bottom: 21px;">本次游戏次数：17 times</div>
            <div>Jetpack使用次数：2</div>
            <div>Jetpack剩余使用次数：2</div>
          </div>
        </el-col>

      </el-row>
    </div>
  </div>
    <div>
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
            <el-row class="choose-info" :gutter="20">
                <el-col :span="6" :offset="6" >
                  <el-badge is-dot style="width: 100%" :hidden="choose != 'small'">
                    <div :class="['choose-info-section', choose === 'small' ? 'choose-text' : 'big-display-text']" @click="choose = 'small'">{{$t('Small')}}</div>
                  </el-badge>
                </el-col>
                <el-col :span="6">
                  <el-badge is-dot style="width: 100%" :hidden="choose != 'big'">
                    <div :class="['choose-info-section', choose === 'big' ? 'choose-text' : 'big-display-text']" @click="choose = 'big'">{{$t('Big')}}</div>
                  </el-badge>
                </el-col>
            </el-row>

            <!-- 第三行 -->
            <el-row class="roll-info">
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text" v-if="choose === 'small'">{{$t('ROLL UNDER TO WIN')}}</div>
                    <div class="tip-text" v-else>{{$t('ROLL OVER TO WIN')}}</div>
                    <div class="big-display-text">{{range}}{{choose === 'small' ? '↓' : '↑'}}</div>
                </el-col>
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text">{{$t('PAYOUT')}}</div>
                    <div class="big-display-text">{{payout}} x</div>
                </el-col>
                <el-col :span="8" class="roll-info-section">
                    <div class="tip-text">{{$t('WIN CHANCE')}}</div>
                    <div class="big-display-text">{{choose === 'small' ? range : 99 - range}} %</div>
                </el-col>
            </el-row>

            <!-- 第四行 -->
            <el-row class="account-info">
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/eos-logo.png">
                        <span class="display-text">{{store.eos.balance}}</span>
                    </div>
                </el-col>
                <el-col :span="8" class="account-info-section">
                  <el-button type="primary" class="login-button" @click="initIdentity()" v-if="!store.account">{{$t('LOGIN')}}</el-button>
                  <el-button type="primary" class="login-button" @click="roll()" v-else v-loading="loading">{{$t('ROLL DICE')}}</el-button>
                </el-col>
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/HPY_Token.png">
                        <span class="display-text">{{store.hpy.balance}}</span>
                        <i class="el-icon-question" @click="isShowBetDialog = !isShowBetDialog" style="cursor: pointer;"></i>
                    </div>
                </el-col>
            </el-row>
        </div>
        <div class="slider-wrapper">
            <span>0</span>
            <el-slider v-model="range" class="range" :min="0" :max="99"></el-slider>
            <span>99</span>
        </div>

        <!-- 买卖token及K线 -->
        <token-display :code="'happyeosslot'" :game="'dice'" :symbol="'hpy'"></token-display>
        <!-- <token-display :code="'dicemaster11'" :game="'dice'" :symbol="'dmt'"></token-display> -->

        <!-- log -->
        <dice-log></dice-log>

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
.game-container {
  width: 655px;
  height: 386px;
  margin: 60px auto 20px auto;
  font-size: 18px;
  border-radius: 5px;
  background-color: #4b4848;
  align-items: center;
}
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
</style>
