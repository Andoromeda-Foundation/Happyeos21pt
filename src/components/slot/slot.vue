<template>
    <div class="app" id="app">
        <!--<div  class="header-content">
            <ul>
                <li onclick="implementFun()"><a>游戏规则</a></li>
                <li><a href="https://github.com/Andoromeda-Foundation/Project-Eolt">项目代码</a></li>
                <li><a href="https://t.me/CryptoHero_Official">社区</a></li>
                <li><a href="https://discordthis.com/invite/nMXUYGQ">讨论</a> </li>
            </ul>
        </div>-->
        <div class="main" >
            <div class="adorn-top"></div>
            <div class="adorn-bottom"></div>
            <div class="box1-left">
                <div class="img-box img-box1" v-bind:class="{selected: index == 1}"></div>
                <div class="img-box img-box2" v-bind:class="{selected: index == 2}"></div>
                <div class="img-box img-box3" v-bind:class="{selected: index == 3}"></div>
                <div class="img-box img-box4" v-bind:class="{selected: index == 4}"></div>
                <div class="img-box img-box5" v-bind:class="{selected: index == 5}"></div>
                <div class="img-box img-box6" v-bind:class="{selected: index == 6}"></div>
            </div>
            <div class="box2-center">
                <div class="box2-contain">
                    <div class="center-box-top">

                        <div class="img-box img-box28" v-bind:class="{selected: index == 28}"></div>
                        <div class="img-box img-box27" v-bind:class="{selected: index == 27}"></div>
                        <div class="img-box img-box26" v-bind:class="{selected: index == 26}"></div>
                        <div class="img-box img-box25" v-bind:class="{selected: index == 25}"></div>
                        <div class="img-box img-box24" v-bind:class="{selected: index == 24}"></div>
                        <div class="img-box img-box23" v-bind:class="{selected: index == 23}"></div>
                        <div class="img-box img-box22" v-bind:class="{selected: index == 22}"></div>
                        <div class="img-box img-box21" v-bind:class="{selected: index == 21}"></div>


                    </div>
                    <div class="center-box-center">
                        <div class="center-box-center-left">

                            <!--                    <div class="bet">bet</div>
                                                <div class="bet-num">70</div>
                                                 <div class="big">
                                                  &lt;!&ndash;   <span STYLE="text-align: center">Bet</span>&ndash;&gt;
                                                     <input v-model="bet_input" type="number" id="bet_input" placeholder="Bet credits">
                                                 </div>
                    -->
                            <div class="bet" @click="change_bet()">Bet</div>
                            <div class="bet-num" @click="change_bet()">{{ bet_input||0 }}
                                <span class="tooltiptext">点击修改Bet数额</span>
                            </div>
                            <div class="bet">EOP</div>
                            <div class="bet-num">{{ (eop!=""?eop.toFixed(4):eop)||0 }}
                            </div>

                            <!-- <div class="cirlce-left"></div> -->
                        </div>
                        <div class="center-box-center-center">
                            <!-- <div class="center-num" >
                               &lt;!&ndash;  <span>充值金额</span>&ndash;&gt;
                                 <input v-model="deposit_input" type="number" id="deposit_input" placeholder="Deposit EOS number">
                             </div>-->
                        </div>
                        <div class="center-box-center-right">
                            <!-- <div class="credits">Current EOP</div>
                            <div class="credits-num">{{ eop.toFixed(4) || 0 }}</div> -->
                            <div class="credits">Balance</div>
                            <div class="credits-num">{{ user_eos_balance || 0 }}</div>
                            <!--   <div class="small"> </div>-->
                            <div class="credits">HPY</div>
                            <div class="credits-num">{{ user_hpy_balance || 0 }}</div>
                        </div>
                    </div>
                    <div class="center-box-bottom">
                        <div class="img-box img-box7" v-bind:class="{selected: index == 7}"></div>
                        <div class="img-box img-box8" v-bind:class="{selected: index == 8}"></div>
                        <div class="img-box img-box9" v-bind:class="{selected: index == 9}"></div>
                        <div class="img-box img-box10" v-bind:class="{selected: index == 10}"></div>
                        <div class="img-box img-box11" v-bind:class="{selected: index == 11}"></div>
                        <div class="img-box img-box12" v-bind:class="{selected: index == 12}"></div>
                        <div class="img-box img-box13" v-bind:class="{selected: index == 13}"></div>
                        <div class="img-box img-box14" v-bind:class="{selected: index == 14}"></div>
                    </div>
                </div>
            </div>
            <div class="box3-right">
                <div class="img-box img-box20" v-bind:class="{selected: index == 20}"></div>
                <div class="img-box img-box19" v-bind:class="{selected: index == 19}"></div>
                <div class="img-box img-box18" v-bind:class="{selected: index == 18}"></div>
                <div class="img-box img-box17" v-bind:class="{selected: index == 17}"></div>
                <div class="img-box img-box16" v-bind:class="{selected: index == 16}"></div>
                <div class="img-box img-box15" v-bind:class="{selected: index == 15}"></div>
            </div>
        </div>
        <div class="main-bg">
            <div class="horizontal-box"></div>
            <div class="vertical-box"></div>
        </div>
        <div class="bottom-bg">
            <div class="cube-top-box">
                <div class="top-front"></div>
                <div class="top-bottom"></div>
                <div class="top-back"></div>
                <div class="top-top"></div>
                <div class="top-left"></div>
                <div class="top-right"></div>
            </div>
            <div class="cube-box">
                <div class="front"></div>
                <div class="bottom"></div>
                <div class="back"></div>
                <div class="top"></div>
                <div class="left"></div>
                <div class="right"></div>
            </div>
            <div v-if="!store.account">
                <el-button type="primary" class="login-button" @click="setIdentity()" >{{$t('LOGIN')}}</el-button>
            </div>
            <div v-else>
            <button id="spinId" class="spin" v-on:click="start_roll">摇起来！</button>
            <button class="input-money" v-show="true" v-on:click="make_deposit">购买股份</button>
            <button class="get-money" v-show="true"  v-on:click="make_withdraw">出售股份</button>
             </div>

            <!--   <button class="leave"> Leave</button>-->
            <div class="music-play" id="musicId">
                <img id="imgId" src="../../assets/imges/pause.jpg">
            </div>
            <div class="actions-table">
                <table class="table">
                    <thead>
                    <tr>
                        <th><abbr title="Position">#</abbr></th>
                        <th>From</th>
                        <th>To</th>
                        <th>Qty</th>
                        <th>Memo</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(action, idx) in actions">
                        <th>{{idx}}</th>
                        <td>{{action.from}}</td>
                        <td>{{action.to}}</td>
                        <td>{{action.quantity}}</td>
                        <td>{{action.memo}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!--  <p> EOP：{{ eop }} </p>
              <p> HPY余额: {{ user_hpy_balance }}</p>-->
        </div>
        <audio id="audioId" loop="loop" preload="auto" autoplay="autoplay">
            <source src="../../assets/music/tiger.mp3" type="audio/mp3">
        </audio>
        <audio id="se_bigreward" preload="auto">
            <source src="../../assets/music/se/bigreward.mp3" type="audio/mp3">
        </audio>
        <audio id="se_buy" preload="auto">
            <source src="../../assets/music/se/buy.mp3" type="audio/mp3">
        </audio>
        <audio id="se_click" preload="auto">
            <source src="../../assets/music/se/click.mp3" type="audio/mp3">
        </audio>
        <audio id="se_rolling" preload="auto">
            <source src="../../assets/music/se/rolling.mp3" type="audio/mp3">
        </audio>
        <audio id="se_smallreward" preload="auto">
            <source src="../../assets/music/se/smallreward.mp3" type="audio/mp3">
        </audio>
        <audio id="se_startrolling" preload="auto">
            <source src="../../assets/music/se/startrolling.mp3" type="audio/mp3">
        </audio>
        <audio id="se_withdraw" preload="auto">
            <source src="../../assets/music/se/withdraw.mp3" type="audio/mp3">
        </audio>
    </div>
</template>
<script>
import * as store from '../../store.js';
import config from '../../config.js';
import Eos from 'eosjs';
import ElButton from "../../../node_modules/element-ui/packages/button/src/button";

export default{
    components: {ElButton},
    data(){
     return {
         store:store.store,
        requiredFields: null,
        eos: null,
        account: null,
        user_hpy_balance: 0,
        user_eos_balance: 0,
        actions: [],
        last_bet: null,
        bet_input: "1.0000",
        bet_result: null,
        old_bet_amount: null,
        index: 0, //当前转动到哪个位置，起点位置
        count: 28, //总共有多少个位置
        speed: 20, //初始转动速度
        cycle: 20, //转动基本次数：即至少需要转动多少次再进入抽奖环节
        timer: 0, //setTimeout的ID，用clearTimeout清除
        result_timer: 0, // get_roll_result timeout.
        times: 0,
        prize: -1, //中奖位置
        running: false, // 正在抽奖
        tpConnected: false,
        eop:1, // 经营状况系数
        tpAccount: null,
         network:localStorage.getItem('network')
    };
},
    created: function () {
    },
    watch: {},
    methods: {
        resolveUrl: function (to) {
            if (typeof to === 'string')
                return to;
            if (to.name && !to.path)
                return to.name;
            if (!to.query)
                return to.path;
            var baseUrl = to.path + (to.path.indexOf('?') >= 0 ? '&' : '?');
            var args = [];
            for (var x in to.query) {
                args.push(x + '=' + encodeURIComponent(to.query[x]));
            }
            return baseUrl += args.join('&');
        },
        change_bet: function () {
            this.play_se("se_click");
            var new_bet = parseFloat(prompt("赌多少EOS？"));
//            var new_bet = prompt("赌多少EOS？");
            // Check new bet
            if (new_bet > 0) {
                this.bet_input = new Number(new_bet).toFixed(4);
            }
        },
        get_current_balance: function () {
            this.get_current_eop();
            if(this.store.scatter){

            this.store.scatter.getCurrencyBalance('happyeosslot', this.store.account.name).then(x => {
                this.user_hpy_balance = x[0].split(' ', 1)[0];
            })
            this.store.scatter.getCurrencyBalance('eosio.token', this.store.account.name).then(x => {
                this.user_eos_balance = x[0].split(' ', 1)[0];
            });
            }
//            this.fetch_action()
        },
        get_current_eop: async function () {
            var happyeosslot_balance = await this.store.scatter.getCurrencyBalance('eosio.token', 'happyeosslot');
            var happyeosslot_true_balance =
                await this.store.scatter.getTableRows({
                    json: "true",
                    code: "happyeosslot",
                    scope: "happyeosslot",
                    limit: 10,
                    table: 'market'
                });
            happyeosslot_balance = happyeosslot_balance[0].split(' ', 1)[0];
            //this.eop = happyeosslot_true_balance;
            happyeosslot_true_balance = happyeosslot_true_balance.rows[0].deposit.balance.split(' ', 1)[0];
            this.eop = happyeosslot_balance / (happyeosslot_true_balance - 1250);
            //this.eop = new Number(this.eop).toFixed(4);

            this.user_hpy_balance = this.store.hpy.balance;
            this.user_eos_balance = this.store.eos.balance;
            return this.eop;
        },
        make_deposit: function (event) {
            this.play_se("se_click");
            var new_deposit = prompt("购买多少EOS的股份？");
            // Check new deposit
            if (new_deposit > 0) {
                if (this.isPc()) {
                    this.deposit(new_deposit);
                } else {
                    if (this.tpConnected) {
                        this.tpDeposit(new_deposit);
                    } else {
                        alert("请下载安装TokenPocket")
                    }

                }
            }
        },
        make_withdraw: function (event) {
            this.play_se("se_click");
            var new_withdraw = prompt("出售多少HPY（股份）？");
            // Check new withdraw
            if (new_withdraw > 0) {
                this.withdraw(new_withdraw);
            }
        },
        redirect: function (name, path, params, query) {
            if (name && !path)
                path = name;
            LazyRouting.RedirectTo(name, path, params, query);
        },
        get_roll_result: function () {
            this.store.scatter.getTableRows({
                json: "true",
                code: "happyeosslot",
                scope: this.store.account.name,
                limit: 10,
                table: 'result'
            }).then((data) => {
                console.log(data)
                var result = data.rows[0].roll_number;
                this.bet_result = result;
                var rate_100 = 25;
                var rate_50 = new Array(11, 24);
                var rate_20 = new Array(6, 16, 21);
                var rate_10 = new Array(1, 10, 26);
                var rate_5 = new Array(3, 13, 18, 22);
                var rate_2 = new Array(2, 8, 17, 28);
                var rate_0_1 = new Array(5, 9, 12, 14, 19);
                var rate_0_0_1 = new Array(4, 7, 15, 20, 23, 27);

                if (this.running) {
                    var random = Math.random();
                    // console.log(random);
                    if (result >= 10000) {
                        this.stop_at(rate_100);
                    } else if (result >= 5000) {
                        this.stop_at(rate_50[Math.floor(random) * 2]);
                    } else if (result >= 2000) {
                        this.stop_at(rate_20[Math.floor(random * 3)]);
                    } else if (result >= 1000) {
                        this.stop_at(rate_10[Math.floor(random * 3)]);
                    } else if (result >= 500) {
                        this.stop_at(rate_5[Math.floor(random * 4)]);
                    } else if (result >= 200) {
                        this.stop_at(rate_2[Math.floor(random * 4)]);
                    } else if (result >= 10) {
                        this.stop_at(rate_0_1[Math.floor(random * 5)]);
                    } else if (result >= 1) {
                        this.stop_at(rate_0_0_1[Math.floor(random * 6)]);
                    } else {
                        this.result_timer = setTimeout(this.get_roll_result, 100); //循环调用
                    }
                }
            }).catch((err) => {
                alert(err.toString());
            })
        },
        tpGetRollResult: function () {
            tp.getTableRows({
                json: "true",
                code: "happyeosslot",
                scope: this.tpAccount.name,
                limit: 10,
                table: 'result'
            }).then((data) => {
                var result = data.rows[0].roll_number;
                this.bet_result = result;

                var rate_100 = 25;
                var rate_50 = new Array(11, 24);
                var rate_20 = new Array(6, 16, 21);
                var rate_10 = new Array(1, 10, 26);
                var rate_5 = new Array(3, 13, 18, 22);
                var rate_2 = new Array(2, 8, 17, 28);
                var rate_0_1 = new Array(5, 9, 12, 14, 19);
                var rate_0_0_1 = new Array(4, 7, 15, 20, 23, 27);

                if (this.running) {
                    var random = Math.random();
                    // console.log(random);
                    if (result >= 10000) {
                        this.stop_at(rate_100);
                    } else if (result >= 5000) {
                        this.stop_at(rate_50[Math.floor(random) * 2]);
                    } else if (result >= 2000) {
                        this.stop_at(rate_20[Math.floor(random * 3)]);
                    } else if (result >= 1000) {
                        this.stop_at(rate_10[Math.floor(random * 3)]);
                    } else if (result >= 500) {
                        this.stop_at(rate_5[Math.floor(random * 4)]);
                    } else if (result >= 200) {
                        this.stop_at(rate_2[Math.floor(random * 4)]);
                    } else if (result >= 10) {
                        this.stop_at(rate_0_1[Math.floor(random * 5)]);
                    } else if (result >= 1) {
                        this.stop_at(rate_0_0_1[Math.floor(random * 6)]);
                    } else {
                        this.result_timer = setTimeout(this.get_roll_result, 200); //循环调用
                    }
                }
            }).catch((err) => {
                alert(err)
            })
        },
        deposit: function (amount) {
            this.play_se("se_click");
            amount = new Number(amount).toFixed(4);
            // console.log(amount);
            this.store.scatter.transfer(this.store.account.name, "happyeosslot", amount + " EOS", "buy")
                .then(() => {
                    this.play_se("se_buy");
                    this.get_current_balance();
                    alert("充值成功");
                })
                .catch((err) => {
                    alert(err.toString());
                });
        },
        tpDeposit: function (amount) {
            amount = new Number(amount).toFixed(4);
            tp.eosTokenTransfer({
                from: tpAccount.name,
                to: 'happyeosslot',
                amount: amount,
                tokenName: 'EOS',
                precision: 4,
                contract: 'eosio.token',
                memo: 'buy'
            }).then(function (data) {
                if (data.result) {
                    alert("充值成功：" + amount)
                    this.get_current_balance();
                } else {
                    alert("充值失败")
                }
            })
        },
        withdraw: function (amount) {
            this.play_se("se_click");
            amount = new Number(amount).toFixed(4);
            console.log(this.store.network)
            var requiredFields = this.requiredFields = {
                accounts: [config.networks[this.store.network]]
            };
            this.store.scatter.contract('happyeosslot', {
                requiredFields
            }).then(contract => {
                contract.sell(this.store.account.name, amount + " HPY", {
                    authorization: [`${this.store.account.name}@${this.store.account.authority}`]
                });
            })
                .then(() => {
                    this.play_se("se_withdraw");
                    this.get_current_balance();
                })
                .catch((err) => {
                    alert(err.toString());
                });
        },
        setIdentity: function () {
            store.initIdentity();
            this.init_scatter()
            this.get_current_balance();
            this.requiredFields = {
                accounts: [config.networks[this.store.network]]
            };
        },
        init_scatter: function () {
            if (this.store.scatter != null) return;
//            if (this.tpAccount != null) return;
            if (this.isPc()) {
                if (!('scatter' in window)) {
                    alert("没有找到Scatter.");
                } else {
                    scatter.getIdentity({
                        accounts: [{
                            chainId: config.networks[store.store.network].chainId,
                            blockchain: config.networks[store.store.network].blockchain
                        }]
                    })
                        .then(identity => {
                            this.setIdentity(identity);
                        })
                        .catch(err => {
                            alert("Scatter 初始化失败.");
                        });
                }
            } else {
                //移动端
                this.tpConnected = tp.isConnected();
                if (this.tpConnected) {
                    //test
                    // this.tpBalance();
                    tp.getWalletList("eos").then(function (data) {
                        this.tpAccount = data.wallets.eos[0];
                    });
                } else {
                    alert("请下载TokenPocket") //待完善
                }
            }
        },
        roll: function () {
            var index = this.index;
            var count = this.count;
            index += 1;
            if (index > count) {
                index -= count
            }
            this.index = index;
            return false;
        },
        createHexRandom: function () {
            var num = '';
            for (var i = 0; i < 64; i++) {
                var tmp = Math.floor(Math.random() * 16);
                if (tmp > 9) {
                    switch (tmp) {
                        case (10):
                            num += 'a';
                            break;
                        case (11):
                            num += 'b';
                            break;
                        case (12):
                            num += 'c';
                            break;
                        case (13):
                            num += 'd';
                            break;
                        case (14):
                            num += 'e';
                            break;
                        case (15):
                            num += 'f';
                            break;
                    }
                } else {
                    num += tmp;
                }
            }
            return num;
        },
        start_roll: function () {
            this.play_se("se_click");
            if (this.running) return;
            var amount = new Number(this.bet_input).toFixed(4);
            if (this.bet_input == "") {
                amount = "1.0000"
            }
            this.store.scatter.transfer(this.store.account.name, "happyeosslot", amount + " EOS", "bet " + this.createHexRandom())
                .then(() => {
                    this.play_se("se_startrolling");
                    this.running = true;
                    this.last_bet = amount;
                    this.roll_loop();
                    this.get_roll_result();
                })
                .catch((err) => {
                    alert(err.toString());
                });
        },
        roll_loop: function () {
            this.play_se("se_rolling");
            this.times += 1;
            this.roll();
            if (this.times > this.cycle + 10 && this.prize == this.index) {
                clearTimeout(this.timer);
                this.prize = -1;
                this.times = 0;
                this.running = false;
            } else {
                if (this.times < this.cycle) {
                    if (this.speed > 200) {
                        this.speed -= 100;
                    } else {
                        this.speed -= 10;
                    }
                } else {
                    if (this.prize != -1) {
                        if (this.times > this.cycle + 10 && ((this.prize == 1 && this.index == this.count) || this.prize == this.index + 1)) {
                            this.speed += 110;
                        } else {
                            this.speed += 20;
                        }
                    }
                }
                if (this.speed < 40) {
                    this.speed = 40;
                };
                if (this.speed > 500) {
                    this.speed = 500;
                }
                this.timer = setTimeout(this.roll_loop, this.speed); //循环调用
            }
        },
        fetch_action: async function() {
            // Sorry SuperONE, EOSAsia have the BETTER get_actions API than yours,
            const {data} = await axios({
                method:'post',
                url: 'https://api1.eosasia.one/v1/history/get_actions',
                headers: { 'content-type': 'thislication/x-www-form-urlencoded' },
                data: {"account_name":"happyeosslot","pos":-1,"offset":-300}
            })
            this.actions = data.actions
                .map(({action_trace}) => action_trace.act.data)
                .filter(action => action.quantity) // No Reveal Blank Data will be shown
            // alert(res)
        },
        stop_at: function (stop_position) {
            if (this.prize == -1) {
                clearTimeout(this.result_timer);
                this.prize = stop_position;
                this.get_current_balance();
            }
        },
         isPc:function () {
    //移动端PC端判断
    return /Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent) ? false : true;
     },
         swap_music:function(id) {
    var oAudio = document.getElementById("audioId");
    var playEvent = document.getElementById(id);
    if(oAudio.paused){
        oAudio.play();
        $("#"+id).attr('src',"../../assets/imges/pause.jpg");
    }else {
        oAudio.pause();
        $("#"+id).attr('src',"../../assets/imges/play.jpg");
    }
},

 play_se: function(id){
    var SEAudio = document.getElementById(id);
    SEAudio.currentTime = 0;
    SEAudio.play();
}
    },
    computed: {}
}
</script>
<style scoped>
@import '../../assets/css/cube.css';
@import '../../assets/css/cube-top.css';
@import '../../assets/css/main.css';
</style>
<style lang="less">
@import '../../assets/css/main.less';
</style>
