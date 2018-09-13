<template>
    <el-card class="box-card">
        <div slot="header" class="clearfix">
          <span>订单 #{{ order.id }}</span>
            <el-button class="btn" type="text"
            v-if="isLogined && isTheOrderOwner" @click="cancel()">取消订单</el-button>
            <el-button class="btn" type="text"
            v-else-if="isLogined" @click="take()">TAKE!</el-button>
            <el-button class="btn" type="text"
            v-else disabled="">登录后采取行动</el-button>
        </div>
        <p class="text item">出价: {{order.bid.quantity}}</p>
        <p class="text item">要价: {{order.ask.quantity}}</p>
        <p class="text item">卖家: {{order.owner}}</p>
        <p class="text item">时间 {{order.order_time}} </p>
      </el-card>
</template>

<script>
import * as store from "../../store.js";

export default {
  props: ["order"],
  created() {
    console.info(store);
  },
  computed: {
    isLogined() {
      return store.store.account;
    },
    currentUser() {
      return store.store.account.name;
    },
    isTheOrderOwner() {
      return this.currentUser === this.order.owner;
    }
  },
  methods: {
    async take() {
      const { ask, bid } = this.order
      const memo = `take,${bid.quantity},${bid.contract},${this.order.id}`
      try {
        const contract = await store.store.scatter.contract(`${ask.contract}`)
        await contract.transfer(
			store.store.account.name,
			"eosotcbackup",
			`${ask.quantity}`,
			`${memo}`,
           {
            authorization: [`${store.store.account.name}@${store.store.account.authority}`]
           }
        )
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
    async cancel() {
      try {
        const contract = await store.store.scatter.contract("eosotcbackup")
        await contract.retrieve(
            store.store.account.name,
            this.order.id,
            `${this.order.ask.quantity}@${this.order.ask.contract}`,
            {
              authorization: [`${store.store.account.name}@${store.store.account.authority}`]
            }
        )
        this.$notify.success({
          title: "取消成功",
          message: "请耐心等待"
        });
      } catch (error) {
        this.$notify.error({
          title: "交易失败",
          message: error.message
        });
      }
      //retrieve*/
    }
  }
};
</script>

<style scoped>
.btn {
  float: right;
  padding: 3px 0;
}
</style>

