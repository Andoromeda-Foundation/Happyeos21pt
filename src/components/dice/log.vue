<template>
    <div id="log">
        <div class="title">{{$t('ALL BETS')}}</div>
        <el-row>
            <el-col :span="4">{{$t('NO.')}}</el-col>
            <el-col :span="4">{{$t('Bettor')}}</el-col>
            <el-col :span="4">{{$t('Roll Range')}}</el-col>
            <el-col :span="4">{{$t('Bet')}}</el-col>
            <el-col :span="4">{{$t('Roll')}}</el-col>
            <el-col :span="4">{{$t('Payout')}}</el-col>
        </el-row>
        <el-row v-for="(log, index) in logs" :class="{'log-item': true, 'gray': index%2 == 1}">
            <el-col :span="4">#{{log.id}}</el-col>
            <el-col :span="4">{{log.account}}</el-col>
            <el-col :span="4">{{log.range}} {{log.direction === 'big' ? '↑' : '↓'}}</el-col>
            <el-col :span="4">{{log.betAmount}} EOS</el-col>
            <el-col :span="4">{{log.roll}}</el-col>
            <el-col :span="4" v-if="log.roll && ((log.direction === 'big' && log.roll > log.range) || (log.direction === 'small' && log.roll < log.range))" class="success">{{log.resultAmount}} EOS</el-col>
        </el-row>
    </div>
</template>

<script>
import * as store from '../../store.js';
import Eos from 'eosjs';
import * as request from 'superagent';

export default {
    data() {
      return {
          logs: [],
          store: store.store,
      };
    },
    created() {
        setInterval(() => {
            this.getLogs().then();
        }, 2000);
    },
    methods: {
      getLogs: async function() {
        const result = await request.get('http://api.happyeosslot.com/api/dice/logs');
        this.logs = result.body;
      },
    }
}
</script>

<style>
#log {
  background-color: #191919;
  padding: 50px;
  color: white;
  font-weight: 600;
  text-align: center;
}
#log .title {
  margin-bottom: 30px;
}
#log .log-item {
  border-radius: 5px;
  margin: 5px 0;
  height: 50px;
  display: flex;
  align-items: center;
}
#log .gray {
  background-color: #3f3e3e;
}
#log .success {
  text-shadow: 0 0 5px #02f292;
  color: #02f292;
}
</style>
