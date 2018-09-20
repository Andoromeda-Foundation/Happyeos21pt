<template>
    <div>
      <el-card class="box-card">
        <div slot="header" class="clearfix">
          <h1 class="title"> {{inExchangeFor}} </h1>
        </div>
        <el-row class="eos-orders-list" :gutter="20">
                <el-col :span="8" class="order-info-section" v-for="order in ordersList" :key="order.id">
                  <OrderView class="order-view" :order="order" />
                </el-col>
        </el-row>
      </el-card>
    </div>
</template>

<script>
import * as store from "../../store.js";
import { getOrders } from "./orders";
import OrderView from "./order";
export default {
  components: {
    OrderView
  },
  props: ['currentToken'],
  data() {
    return {
      store: store.store,
      ordersList: [],
    };
  },
  computed: {
    inExchangeFor() {
      return `${this.currentToken.tokenSymbol} 市场`
    },
  },
  async created() {
    this.ordersList = await getOrders(this.currentToken.tokenContract);
  },
  watch: {
    async currentToken(newVal, oldVal) {
      this.ordersList = await getOrders(newVal.tokenContract)
    }
  },
  methods: {
    initIdentity() {
      store.initIdentity();
    },

    async ask_order() {
      const {bid_token_contract, ask_token_contract, ask, bid} = this
      const memo = `ask,${ask},${ask_token_contract}`

      try {
        var contract = this.store.scatter.contract(bid_token_contract);
        await contract.transfer(
          this.store.account.name,
          "eosotcbackup",
          `${bid}`,
          `${memo}`,
           {
            authorization: [`${this.store.account.name}@${this.store.account.authority}`]
           }
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
    }
  }
};
</script>

<style scoped>
.order-view {
  margin: 0.5rem 0;
}
</style>
