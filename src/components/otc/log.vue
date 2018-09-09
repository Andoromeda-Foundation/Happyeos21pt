<template>
    <div id="log">
        <div class="title">{{$t('ALL BETS')}}</div>
        <el-row>
            <el-col :span="4">{{$t('Time')}}</el-col>
            <el-col :span="4">{{$t('Bettor')}}</el-col>
            <el-col :span="4">{{$t('Roll Under')}}</el-col>
            <el-col :span="4">{{$t('Bet')}}</el-col>
            <el-col :span="4">{{$t('Roll')}}</el-col>
            <el-col :span="4">{{$t('Payout')}}</el-col>
        </el-row>
        <el-row v-for="(log, index) in logs" :class="{'log-item': true, 'gray': index%2 == 1}">
            <el-col :span="4">{{log.time}}</el-col>
            <el-col :span="4">{{log.bettor}}</el-col>
            <el-col :span="4">{{log.under}}</el-col>
            <el-col :span="4">{{log.bet}} EOS</el-col>
            <el-col :span="4">{{log.roll}}</el-col>
            <el-col :span="4" v-if="log.roll < log.under" class="success">{{log.payout}} EOS</el-col>
        </el-row>
    </div>
</template>

<script>
import Eos from 'eosjs';

export default {
    data() {
      return {
          exampleLog: {
              time: '17:21:12',
              bettor: 'gu3tcmbvgyge',
              under: 29,
              bet: 10,
              roll: 14,
              payout: 31.24,
          },
          logs: [],
          eos: null,
      };
    },
    created() {
        // setTimeout(() => {
        //     this.setEos();
        //     setInterval(() => {
        //         this.getLogs();
        //     }, 2000);
        // }, 2000);
    },
    methods: {
      setEos: function () {
        this.eos = scatter.eos(window.data.config.networks.kylin, Eos, {});
        this.getLogs();
      },
      getLogs: function() {
        this.eos.getActions('happyeosdice', -1, 20).then((result) => {
            console.log(result);
        });
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
