<template>
    <el-row :gutter="20" class="otc-view" style="margin-left: 0;margin-right: 0;">
      <el-col :span="24" class="bj">
        <el-card>
          <img src="https://i.loli.net/2018/09/20/5ba371b74dbdc.png" alt="搬家">
          <h1 class="title">我们搬家啦～</h1>
          <h2 class="subtitle">为了更好地提供服务，OTC 业务已经迁移到 <a href="https://kyubey.network/otc">kyubey.network</a></h2>
          <h2 class="subtitle"> 3秒内跳转，如果没跳转，可点击上方链接 </h2>
        </el-card>
              </el-col>
      <!-- <el-col :span="5">
        <el-card title="Token List">
          <h1 class="title">市场</h1>
          <el-table :data="tokenLists"
            @row-click="clickTokenRow"
            stripe style="width: 100%">
            <el-table-column
              prop="name" label="币名" >
            </el-table-column>
            <el-table-column
              prop="contract"
              label="合约地址">
            </el-table-column>
          </el-table>
          <el-input v-model="contractBySelf" placeholder="请输入合约地址"></el-input>
          <el-input v-model="coinBySelf" placeholder="请输入币名"></el-input>
          <el-button type="primary" @click="queryCoin">查询</el-button>
        </el-card>
      </el-col>
      <el-col :span="13">
        <el-alert title="新手入门，不知道怎么办？" description="请加入我们的讨论QQ群：474639439"
        type="info" show-icon style="margin-bottom: 10px"/>
        <MarketView class="market-container" :currentToken="getTokenDetailByRoute" />
      </el-col>
      <el-col :span="6">
        <PlaceOrderView />
      </el-col> -->

    </el-row>
</template>

<script>
import * as store from "../../store.js";
import { getOrders } from "./orders";
import OrderView from "./order";
import getTokenLists from "./tokenLists";
import MarketView from "./market";
import PlaceOrderView from "./PlaceOrder";
import ElButton from "element-ui/packages/button/src/button";
export default {
  components: {
      ElButton,
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
        contractBySelf:'',
        coinBySelf:''
    };
  },
  computed: {
    getTokenDetailByRoute() {
      const { tokenContract, tokenSymbol } = this.$route.params;
      return { tokenContract, tokenSymbol };
    }
  },
  async created() {
    setTimeout(() => {
      window.location.href = 'https://kyubey.network/Home/OTC'
    }, 3000)
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
      queryCoin(){
          this.jumpToDiffrentToken(this.contractBySelf,this.coinBySelf)
      },
    initIdentity() {
      store.initIdentity();
    },
    jumpToDiffrentToken(tokenContract, tokenSymbol) {
      this.$router.push({
        name: 'OTC',
        params: {
          tokenContract,
          tokenSymbol
        }
      })
    },
    clickTokenRow(row, event, column) {
      console.info(row.contract)
      this.jumpToDiffrentToken(row.contract, row.name)
    },
    switchView(t) {
      // this.currentToken = t;
    },
    async ask_order() {
      const { bid_token_contract, ask_token_contract, ask, bid } = this;
      const memo = `ask,${ask},${ask_token_contract}`;
      try {
        var contract = await this.store.scatter.contract(bid_token_contract);
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
      this.store.scatter
        .transfer(
          this.store.account.name,
          "happyeosdice",
          `${this.betAmount.toFixed(4)} EOS`,
          memo
        )
        .then(() => {
          // 轮询查找结果
          const r = setInterval(() => {
            this.store.scatter
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
.bj {
  text-align: center
}
</style>

