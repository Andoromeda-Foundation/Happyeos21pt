<template>
    <el-card class="box-card">
        <div slot="header" class="clearfix">
          <span>订单 #{{ order.id }}</span>
            <el-button class="btn" type="text"
            v-if="isLogined && isTheOrderOwner" @click="cancel()">取消订单</el-button>
            <el-button class="btn" type="text"
            v-else-if="isLogined" @click="take()">购买</el-button>
            <el-button class="btn" type="text"
            v-else disabled="">登录后采取行动</el-button>
        </div>
        <p class="description"> 以 </p> <p class="text item"> {{order.ask.quantity}} <p class="description">购买</p><p class="text item"> {{order.bid.quantity}}</p>
        <p class="description">单价: </p><p class="text item"> {{order.ask.quantity.split(" ")[0]/order.bid.quantity.split(" ")[0]}} {{order.ask.quantity.split(" ")[1]}}/{{{{order.bid.quantity.split(" ")[1]}}}} </p>
        <!-- <p class="text item">单价: {{order.get_price()}} </p> -->
        <!-- get_price() not working, why? TODO -->
        <p class="description">卖家: </p> <p class="text item">{{order.owner}}</p>
        <p class="description">挂单时间:</p>  <p class="text item">{{order.order_time}} </p>
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
.description{
  font-weight: 400;
}
</style>

