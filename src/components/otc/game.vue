<template>
    <div class="otc-view">
        <el-card title="OTC" >
            <h1 class="tile">挂单</h1>
            <span  style="margin-left: 30px;">
              出价: <el-input v-model="bid" placeholder="输入你需要卖出的价格，如: 10.0000 HPY"  class="bet-amount-input"></el-input>
            </span>
            <span style="margin-left: 30px;">
              要价: <el-input v-model="ask" placeholder="输入你的理想价格，精确到小数点,如: 10.0000 EOS" class="bet-amount-input"></el-input>
              Target Token Contract: <el-input v-model="target_token_contract" class="bet-amount-input"></el-input>
            </span>								

            <el-row class="account-info">
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/eos-logo.png">
                        <span>EOS 余额：{{store.balance}}</span>
                    </div>
                </el-col>
                <el-col :span="8" class="account-info-section">
                  <el-button type="primary" class="login-button" @click="initIdentity()" v-if="!store.account"> 使用 Scatter 登录 </el-button>
                  <el-button type="primary" class="login-button" @click="ask_order()" v-else v-loading="loading"> 发出交易 </el-button>
                </el-col>
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <img class="navbar-coin" src="../../assets/HPY_Token.png">
                        <span class="">HPY 余额：{{store.hpyBalance}}</span>
                        <i class="el-icon-question" @click="isShowBetDialog = !isShowBetDialog" style="cursor: pointer;"></i>
                    </div>
                </el-col>
            </el-row>
        </el-card>
        <MarketView class="market-container" />
    </div>
</template>

<script>
import * as store from "../../store.js";
import { getOrders } from "./orders";
import OrderView from "./order";
import MarketView from "./market";
export default {
  components: {
    OrderView,
    MarketView
  },
  data() {
    return {
      store: store.store,
      range: 50,
      betAmount: 1,
      isShowBetDialog: false,
      loading: false,
      choose: "small",
      ask: "",
      bid: "",
      target_token_contract: 'happyeosslot'
    };
  },
  computed: {
  },
  async created() {
  },
  watch: {
    range(newRange, oldRange) {
      if (newRange < 6) {
        this.range = 6;
      } else if (newRange > 93) {
        this.range = 93;
      }
    }
  },
  methods: {
    initIdentity() {
      store.initIdentity();
    },

    async ask_order() {
      const {target_token_contract, ask, bid} = this
      const memo = `ask,${ask},${target_token_contract}`

      try {
        await this.store.eos.transfer(
          this.store.account.name,
          "eosotcbackup",
          `${bid}`,
          `${memo}`
        );
        this.$notify.success({
          title: '挂单成功',
          message: "请耐心等待"
        });
      } catch (error) {
        this.$notify.error({
          title: '交易失败',
          message: error.message
        });
      }
    },

    roll: function() {
      this.loading = true;
      let memo = `bet ${
        this.choose === "small" ? this.range + 100 : this.range
      } ${this.store.seed}`;
      const referral = this.store.referral;
      if (referral) {
        memo += ` ${referral}`;
      }
      this.store.eos
        .transfer(
          this.store.account.name,
          "happyeosdice",
          `${this.betAmount.toFixed(4)} EOS`,
          memo
        )
        .then(() => {
          // 轮询查找结果
          const r = setInterval(() => {
            this.store.eos
              .getTableRows(
                true,
                "happyeosdice",
                this.store.account.name,
                "result",
                "0"
              )
              .then(data => {
                const ans = data.rows[0].roll_number;
                // roll点值为0-99
                if (ans < 100) {
                  clearInterval(r);
                  this.loading = false;
                  if (
                    (this.choose === "small" && ans < this.range) ||
                    (this.choose === "big" && ans > this.range)
                  ) {
                    this.roll_success(ans);
                  } else {
                    this.roll_fail(ans);
                  }
                }
              });
          }, 1000);
        })
        .catch(err => {
          console.error(err);
          alert("项目出错了，快联系开发者！");
        });
    }
  }
};
</script>

// For the sake of god, please use style scoped to avoid style collusion
<style scoped>
.game-container {
  width: 655px;
  height: 386px;
  margin: 60px auto 20px auto;
  font-size: 18px;
  border-radius: 5px;
  background-color: #4b4848;
  align-items: center;
}
.otc-view {
  max-width: 90%;
  margin: 0 auto;
}
</style>
