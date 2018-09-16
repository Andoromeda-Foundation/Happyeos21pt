<template>
    <div class="token-display">
        <h1 class="title">{{game.toUpperCase()}} Token: {{symbol.toUpperCase()}}</h1>
        <el-row class="display-text">
            <el-col :span="11" :offset="1" class="candle-container">
                <ve-candle :data="chartData" :settings="chartSettings" :legend-visible="false"></ve-candle>
            </el-col>
            <el-col :span="6" :offset="2">
                <p>{{$t('Contract Name')}}: {{code}}</p>
                <p>{{$t('Contract Balance')}}: {{store[symbol].bancorBalance}} EOS</p>
                <p>{{$t('Supply')}}: {{store[symbol].supply}} {{symbol.toUpperCase()}}</p>
                <p>{{$t('EOP')}}: {{store[symbol].eop.toFixed(4)}}</p>
                <p>{{$t('Current Price')}}: {{store[symbol].price}} EOS / {{symbol.toUpperCase()}}</p>
                <p>{{$t('My Balance')}}: {{store[symbol].balance}} {{symbol.toUpperCase()}}</p>
                <el-row :gutter="20">
                    <el-col :span="12">
                        <el-input v-model.number="amount" :placeholder="$t('Please Input Amount')" size="small"></el-input>
                    </el-col>
                    <el-col :span="5">
                        <el-button type="success" size="small" @click="buy">{{$t('Buy')}} {{amount}} {{symbol.toUpperCase()}}</el-button>
                    </el-col>
                    <el-col :span="5" :offset="1">
                        <el-button type="warning" size="small" @click="sell">{{$t('Sell')}} {{amount}} {{symbol.toUpperCase()}}</el-button>
                    </el-col>
                </el-row>
            </el-col>
        </el-row>

    </div>
</template>

<script>
import * as store from '../../store.js';
import * as request from 'superagent';

export default {
    props: ['code', 'game', 'symbol'],
    data() {
        this.chartSettings = {
            showDataZoom: true,
            start: 20,
            end: 100
        }
      return {
        store: store.store,
        amount: 0,
        chartData: {
          columns: ['time', 'open', 'close', 'lowest', 'highest'],
          rows: [],
        },
      };
    },
    mounted: function() {
      setTimeout(() => {
        store.getTokenInfo(this.code, this.symbol);
        this.fetch();
      }, 2500);
    },
    methods: {
      fetch: async function() {
        const result = await request.get(`http://api.happyeosslot.com/api/price/${this.symbol}`);
        this.chartData.rows = result.body;
      },
      buy: async function() {
        if (!this.store.account) {
          store.initIdentity();
          return;
        }
        if (this.amount <= 0) {
          alert(this.$t('Wrong Input'));
          return;
        }

        const result = await this.store.scatter.transfer(this.store.account.name, this.code, `${(this.amount * this.store[this.symbol].price).toFixed(4)} EOS`, 'buy');
        store.updateBalance();
        store.getTokenInfo(this.code, this.symbol);
      },
      sell: async function() {
        if (!this.store.account) {
          store.initIdentity();
          return;
        }
        if (this.amount <= 0) {
          alert(this.$t('Wrong Input'));
          return;
        }

        const contract = await this.store.scatter.contract(this.code);
        const result = await contract.transfer(this.store.account.name, this.code, `${this.amount.toFixed(4)} ${this.symbol.toUpperCase()}`, 'sell', {
          authorization: [`${this.store.account.name}@${this.store.account.authority}`]
        });
        store.updateBalance();
        store.getTokenInfo(this.code, this.symbol);
      }
    }
}
</script>

<style scoped>
.token-display {
  margin-top: 100px;
  margin-bottom: 100px;
}
.title {
  text-align: center;
  color: white;
  font-weight: bolder;
}
.candle-container {
  background-color: white;
}
</style>
