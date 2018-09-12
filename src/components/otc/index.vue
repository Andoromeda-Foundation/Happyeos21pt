<template>
    <el-row :gutter="20" class="otc-view" style="margin-left: 0;margin-right: 0;">
      <el-col :span="5">
        <el-card title="Token List">
          <h1 class="title">目前可交易的币</h1>
          <ul>
            <li v-for="t in tokenLists" :key="t.name">
              <router-link :to="{ name: 'OTCExchange', params: {
                    tokenContract: t.contract,
                    tokenSymbol: t.name
                } }"> {{t.name}} </router-link>
              </li>
              <el-form ref="form" :model="customTokenForm" label-width="80px">
                <el-form-item label="活动名称">
                  <el-input v-model="customTokenForm.name"></el-input>
                </el-form-item>
                <el-form-item label="活动区域">
                  <el-select v-model="customTokenForm.region" placeholder="请选择活动区域">
                    <el-option label="区域一" value="shanghai"></el-option>
                    <el-option label="区域二" value="beijing"></el-option>
                  </el-select>
                </el-form-item>
              </el-form>
          </ul>
        </el-card>
      </el-col>
      <el-col :span="13">
        <MarketView class="market-container" :currentToken="getTokenDetailByRoute" />
      </el-col>
      <el-col :span="6">
        <PlaceOrderView />        
      </el-col>

    </el-row>
</template>

<script>
import * as store from "../../store.js";
import { getOrders } from "./orders";
import OrderView from "./order";
import getTokenLists from "./tokenLists";
import MarketView from "./market";
import PlaceOrderView from "./PlaceOrder";
export default {
  components: {
    OrderView,
    MarketView,
    PlaceOrderView
  },
  data() {
    return {
      store: store.store,
      loading: false,
      choose: "small",
      customTokenForm: {},
      tokenLists: [],
    };
  },
  computed: {
    getTokenDetailByRoute() {
      const { tokenContract, tokenSymbol } = this.$route.params;
      return { tokenContract, tokenSymbol };
    }
  },
  async created() {
    this.tokenLists = getTokenLists();
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
    switchView(t) {
      // this.currentToken = t;
    },
    async ask_order() {
      const { bid_token_contract, ask_token_contract, ask, bid } = this;
      const memo = `ask,${ask},${ask_token_contract}`;
      try {
        var contract = await this.store.eos.contract(bid_token_contract);
        console.log(contract);
        console.log(this.store.account.name);
        await contract.transfer(
          this.store.account.name,
          "eosotcbackup",
          `${bid}`,
          `${memo}`,
          {
            authorization: [
              `${this.store.account.name}@${this.store.account.authority}`
            ]
          }
        );
        this.$notify.success({
          title: "挂单成功",
          message: "请耐心等待"
        });
      } catch (error) {
        this.$notify.error({
          title: "交易失败",
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
  margin: 2rem auto;
}
</style>

