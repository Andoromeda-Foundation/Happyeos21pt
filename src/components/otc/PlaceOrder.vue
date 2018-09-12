<template>
    <el-card title="OTC" >
            <div slot="header" class="clearfix">
              <h1 class="title">挂单</h1>
            </div>
            <span  style="margin-left: 30px;">
              出价币合约: <el-input v-model="bid_token_contract" class="bet-amount-input"></el-input>
              出价(你愿意出多少): <el-input v-model="bid" placeholder="精确小数点,如: 10.0000 HPY"  class="bet-amount-input"></el-input>
            </span>
            <span style="margin-left: 30px;">
              要价币合约: <el-input v-model="ask_token_contract" class="bet-amount-input"></el-input>
              要价（你想要多少）: <el-input v-model="ask" placeholder="精确到小数点,如: 10.0000 EOS" class="bet-amount-input"></el-input>
            </span>								

            <el-row class="account-info">
                <el-col :span="8" class="account-info-section">
                    <div class="account-container">
                        <span>EOS 余额：{{store.balance}}</span>
                    </div>
                </el-col>
                <el-col :span="8" class="account-info-section">
                  <el-button type="primary" class="login-button" @click="initIdentity()" v-if="!store.account"> 登录 </el-button>
                  <el-button type="primary" class="login-button" @click="ask_order()" v-else v-loading="loading"> 发出交易 </el-button>
                </el-col>
            </el-row>
        </el-card>
</template>

<script>
import * as store from "../../store.js";

export default {
    data: () => ({
      store: store.store,
      ask: "",
      bid: "",
      bid_token_contract: "happyeosslot",
      ask_token_contract: "eosio.token"
    })
}
</script>
