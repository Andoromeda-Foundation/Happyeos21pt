
<template>
<div id="menu">
    <div id="logo-container">
    <img src="../assets/logo.png" id="logo">
    </div>
    <div id="menu-container">
      <div id="menu-section-container">
        <el-button type="text" class="menu-item" @click="isShowFairDialog = !isShowFairDialog">{{$t('FAIRNESS')}}</el-button>
        <el-button type="text" class="menu-item" @click="isShowCommunityDialog = !isShowCommunityDialog">{{$t('COMMUNITY')}}</el-button>
        <el-button type="text" class="menu-item" @click="isShowHowToPlayDialog = !isShowHowToPlayDialog">{{$t('HOW TO PLAY')}}</el-button>
      </div>
      <div id="menu-section-container">
        <el-dropdown trigger="click" @command="handleMenuClick">
          <span class="el-dropdown-link">
            {{currentRouteName}}<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="Index">{{$t('Index')}}</el-dropdown-item>
            <el-dropdown-item command="Dice">{{$t('Dice')}}</el-dropdown-item>
            <el-dropdown-item command="NewDice">{{$t('NewDice')}}</el-dropdown-item>
            <!-- <el-dropdown-item command="Slot">Slot</el-dropdown-item> -->
            <!-- <el-dropdown-item command="BlackJack">{{$t('BlackJack')}}</el-dropdown-item> -->
            <el-dropdown-item command="OTCEOS">{{$t('OTC')}}</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
      <div id="menu-section-container">
        <el-dropdown trigger="click" @command="handleNetworkChange" v-if="!store.account" style="margin-right: 20px;">
          <span class="el-dropdown-link">
            {{$t('Network')}}:{{store.network}}<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="mainnet">{{$t('Eos Mainnet')}}</el-dropdown-item>
            <el-dropdown-item command="kylin">{{$t('Eos Kylin Testnet')}}</el-dropdown-item>
            <el-dropdown-item command="nas_mainnet">{{$t('Nas Mainnet')}}</el-dropdown-item>
            <el-dropdown-item command="nas_testnet">{{$t('Nas Testnet')}}</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-dropdown trigger="click" @command="changeLang" style="margin-right: 20px;">
          <span class="el-dropdown-link">
            {{langCodeToReadableStr[store.lang]}} <i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="ch"> 中文 </el-dropdown-item>
            <el-dropdown-item command="en"> English</el-dropdown-item>
            <el-dropdown-item command="jp"> 日本語　</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <el-button type="primary"  @click="initIdentity()" v-if="!store.account"> {{$t('Login')}} </el-button>
        <el-button type="text" class="menu-item" v-if="store.account"> {{store.account.name}} @ {{store.network}} </el-button>
        <el-button type="primary" class="menu-item" @click="forgetIdentity()" v-if="store.account"> {{$t('Logout')}} </el-button>
        <el-button type="text" class="menu-item" @click="isShowReferralsDialog = !isShowReferralsDialog" v-if="store.account">{{$t('REFERRALS')}}</el-button>
      </div>
    </div>
      <!-- 弹出 -->
      <el-dialog
        :title="$t('Provably Fair Betting')"
        :visible.sync="isShowFairDialog"
        width="30%"
        center>

        <p>{{$t('fair-1')}}</p>
        <p>{{$t('fair-2')}}</p>
        <p>{{$t('fair-3')}}</p>
        所有合约均已经过 eospark 认证：
        <p>
          <a href="https://eosflare.io/account/happyeosslot">https://eosflare.io/account/happyeosslot</a>
          <a href="https://eosflare.io/account/happyeosdice">https://eosflare.io/account/happyeosdice</a>
          <a href="https://eosflare.io/account/happyeos21pt">https://eosflare.io/account/happyeos21pt</a>
          <a href="https://eosflare.io/account/eosotcbackup">https://eosflare.io/account/eosotcbackup</a>
        </p>
        并且可使用下面的小程度验证随机数的结果：
        <el-input v-model="store.seed" :placeholder="$t('Enter Your Custom Seed')" style="width: 300px;"></el-input>
        <el-button type="primary" @click="update()">{{$t('Update_Client_Seed')}}</el-button>

        <el-input v-model="store.server_seed" :placeholder="$t('Server Seed')" style="width: 300px;"></el-input>
        <el-button type="primary" @click="pull()">{{$t('Pull_Server_Seed')}}</el-button>

        <el-input v-model="store.random_number" :placeholder="$t('Random Number')" style="width: 300px;"></el-input>
      </el-dialog>

      <el-dialog
        :title="$t('Join the Happy Community')"
        :visible.sync="isShowCommunityDialog"
        width="30%"
        center>
          <ul class="community-links">
            <li @click="navigate('telegram')">
              <font-awesome-icon :icon="['fab', 'telegram']" />
            </li>
            <li @click="navigate('twitter')">
              <font-awesome-icon :icon="['fab', 'twitter']" />
            </li>
            <li @click="navigate('github')">
              <font-awesome-icon :icon="['fab', 'github']" />
            </li>
            <li @click="navigate('medium')">
              <font-awesome-icon :icon="['fab', 'medium-m']" />
            </li>
            <li @click="navigate('discord')">
              <font-awesome-icon :icon="['fab', 'discord']" />
            </li>
          </ul>
      </el-dialog>

      <el-dialog
        :title="$t('Get Rewarded With Referrals')"
        :visible.sync="isShowReferralsDialog"
        width="30%"
        center>
        <el-input :value="refUrl" style="width: 300px;" :disabled="true"></el-input>
        <el-button type="primary" @click="copy" class="copy-btn" :data-clipboard-text="refUrl">{{$t('Copy')}}</el-button>
        <p>{{$t('referrals-1')}}</p>
      </el-dialog>

      <el-dialog
        :title="$t('How To Play')"
        :visible.sync="isShowHowToPlayDialog"
        width="30%"
        center>
        <p>1. {{$t('how-1')}} <a href="https://www.mytokenpocket.vip/how-to-create-eos-account-by-friend/index.html?from=groupmessage&isappinstalled=0" target="_blank">Click</a></p>
        <p>2. {{$t('how-2')}} <a href="https://get-scatter.com/" target="_blank">Scatter</a></p>
        <p>3. {{$t('how-3')}}</p>
        <p>4. {{$t('how-4')}}</p>
        <p>5. {{$t('how-5')}}</p>
        <p>6. {{$t('how-6')}}</p>
        <p>7. {{$t('how-7')}}</p>
        <p>{{$t('how-8')}}</p>
        <p>{{$t('how-9')}}</p>
      </el-dialog>
</div>
</template>

<script>
import Chance from "chance";
import Clipboard from "clipboard";
import * as store from "../store.js";
import ElDropdownItem from "element-ui/packages/dropdown/src/dropdown-item";

export default {
    components: {ElDropdownItem},
    data() {
    return {
      store: store.store,
      isShowFairDialog: false,
      isShowCommunityDialog: false,
      isShowReferralsDialog: false,
      isShowHowToPlayDialog: false,
      langCodeToReadableStr: {
        ch: "中文",
        en: "English",
        jp: "日本語"
      }
    };
  },
  mounted: function() {
      setTimeout(() => {
        store.setScatter();
      }, 2000);
    },
  computed: {
    refUrl: function() {
      return `${window.location.origin}?ref=${(this.store.account &&
        this.store.account.name) ||
        ""}`;
    },
    currentRouteName() {
      return this.$route.name
    }
  },
  methods: {
    initIdentity() {
      store.initIdentity();
    },
    forgetIdentity() {
      store.forgetIdentity();
      location.reload();
    },
    handleMenuClick(val) {
      this.$router.push({ name: val })
    },
    handleNetworkChange(val) {
      this.changeNetwork(val);
    },
    changeNetwork(newNetwork) {
      localStorage.setItem("network", newNetwork);
      location.reload();
    },
    changeLang(lang) {
      this.store.lang = lang;
      localStorage.setItem("lang", this.store.lang);
      this.$i18n.locale = this.store.lang;
    },
    navigate(brand) {
      switch (brand) {
        case 'telegram':
          window.open('//t.me/joinchat/HnyfLA9DC8cNmr6RP0tE7Q');
          break;
        case 'twitter':
          window.open('//twitter.com/link_idol_');
          break;
        case 'medium':
          window.open('//medium.com/@andoromeda');
          break;
        case 'github':
          window.open('//github.com/Andoromeda-Foundation');
          break;
        case 'discord':
          window.open('//discordapp.com/channels/420341255696809995/420341258184163330');
          break;
      }
    },
    copy() {
      const clipboard = new Clipboard(".copy-btn");
    },
    update() {
      if (!this.store.seed) {
        this.$notify.error({
          title: this.$t("Update seed fail")
        });
      } else {
        localStorage.setItem("seed", this.store.seed);
        this.$notify({
          title: this.$t("Update seed success"),
          type: "success"
        });
      }
    }
  }
};
</script>

<style>
#logo-container {
  height: 100%;
  display: inline-flex;
  align-items: center;
  margin-right: 10px;
}
#logo {
  height: 50px;
}

#menu {
  height: 60px;
  background-color: #3f3e3e;
  padding: 8px 16px;
  display: flex;
}
#menu .el-dropdown {
  display: inline-block;
  position: relative;
  font-size: 14px;
  color: #eee;
}

.menu-item {
  color: white;
  padding: 6px 12px;
}
.menu-item :hover {
  text-shadow: 0 0 5px #fff;
}

#menu-container {
  display: flex;
  justify-content: space-between;
  width: 100%;
}
#menu-section-container {
  height: 100%;
  display: inline-flex;
  align-items: center;
}

.lang-icon {
  height: 16px;
}

.community-links {
  list-style-type: none;
  position: sticky;
  top: 0;
  z-index: 100;
  display: flex;
  align-items: center;
  height: 76px;
  justify-content: space-between;
  padding: 0 30px;
  text-decoration: none;
  letter-spacing: 0.5px;
  font-weight: 600;
  font-size: 2em;
}

.community-links {
  display: flex;
  align-items: center;
  cursor: pointer;
  border-radius: 50%;
  transition: 1s;
}

.community-links li:hover {
  border-radius: 20%;
  background-color: #6c2ded;
}

.community-links ul li {
  text-decoration: none;
  padding: 50px;
}
.community-links {
  color: #333;
  text-decoration: none;
  letter-spacing: 0.5px;
}

.icon-logout {
  cursor: pointer;
}
</style>



<style scoped>
.game {
  background: url('../assets/background.png') top left repeat;
  background-size: contain;
  padding: 60px 0;
}
.form {
  width: 655px;
  border-radius: 5px;
  font-size: 18px;
  background-color: #4b4848;
  margin: 0 auto 20px auto;
  padding: 20px 30px;
}
.form-group {
  display: flex;
  align-items: center;
}
.form-group > div:last-child {
  flex: 1;
}
.amount-rate {
  display: flex;
  align-items: center;
}
.amount-rate li {
  color: #9b9fae;
  font-size: 0.6em;
  font-weight: 600;
}
.amount-rate li:not(:last-child) {
  border-right: 2px solid #2f2f2f;
}
.form-group {
  margin-bottom: 20px;
}
.form-group label {
  color: #9b9fae;
  font-weight: 600;
  font-size: 0.6em;
  margin-bottom: 0.75em;
  display: block;
}
.form-group input {
  text-align: center;
  border: none;
  padding: 10px 12px;
  borde-radius: 0.3em;
  font-weight: 600;
  letter-spacing: 0.2px;
  font-size: 18px;
  outline: none;
  background-color: #4b4848;
  width: 177px;
  color: #fff;
}
.input-amount-group {
  display: flex;
  align-items: center;
  background-color: #3f3e3e;
  padding: 2px;
  border-radius: 0.3em;
  margin-right: 30px;
  height: 47px;
  position: relative;
}
.input-amount-group ul li {
  cursor: pointer;
  padding: 8px 15px;
}
.input-amount-group ul li:hover {
  background-color: #0000003f;
}
.input-group {
  flex: 1;
}
.input-group input {
  padding-left: 15px;
}
.input-group .eos-logo {
  position: absolute;
  left: 10px;
  top: 12.5px;
}
.info-container {
  background-color: #3f3e3e;
  padding: 20px;
}
.info-container ul {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.info-container ul > li {
  display: flex;
  flex-direction: column;
  align-items: center;
  flex: 1;
}
.info-container ul > li:not(:last-child) {
  border-right: 2px solid #2f2f2f;
}
.info-container ul > li > label {
  color: #9b9fae;
  font-weight: 600;
  font-size: 0.6em;
  margin-bottom: 0.75em;
  display: block;
}
.info-container ul > li > span {
  color: #fff;
  font-size: 1.2em;
  font-weight: 600;
  letter-spacing: 0.5px;
}
.bet-cell {
  background-color: #3f3e3e;
  border-radius: 0.3em;
  height: 47px;
  line-height: 47px;
  text-align: center;
  position: relative;
}
.bet-cell > span {
  color: #fff;
  font-weight: 600;
}
.bet-cell .eos-logo {
  position: absolute;
  left: 10px;
  top: 12.5px;
}
.game-footer {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
}
.game-footer > div {
  flex: 1;
  text-align: center;
  color: #fff;
  font-weight: 600;
}
.btn-action {
  outline: none;
  letter-spacing: 3px;
  font-weight: 600;
  font-size: 18px;
  background-color: #0191ee;
  border-color: #0191ee;
  cursor: pointer;
  padding: 0.5rem 1rem;
  line-height: 1.5;
  border-radius: 0.3rem;
  color: #fff;
  flex: 1;
}
.eos-logo {
  height: 22px;
}
.eos-lg {
  width: 22px;
  margin-right: 5px;
  vertical-align: middle;
}
.token-logo {
  width: 22px;
  vertical-align: middle;
  margin-right: 5px;
}
.game >>> .el-dialog {
  background-color: #4a4848;
}
.game >>> .el-dialog__header {
  font-weight: 700;
  text-align: center;
  line-height: 1.5;
  letter-spacing: 0.5px;
  color: #fff;
  font-size: 1.25em;
}
.game >>> .el-dialog__body {
  color: #fff;
  padding-top: 0;
  font-weight: 700;
  letter-spacing: 0.5px;
  color: #fff;
  font-size: 1em;
}
.game >>> .el-dialog__body li,
.game >>> .el-dialog__body p {
  margin-bottom: 10px;
}
.game >>> .el-dialog__body a {
  color: #0191ee;
  text-decoration: none;
}
.game >>> .el-dialog__body a:hover {
  text-decoration: underline;
}
.social-links {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 30px 30px 0 30px;
  font-size: 1.2em;
}
.social-links li {
  border-radius: 50%;
  padding: 10px;
  cursor: pointer;
  transition: background-color ease 200ms;
}
.social-links li:hover {
  background-color: #6c2ded;
}
.bet-balance {
  visibility: hidden;
}
.currenteos-container {
  position: relative;
}
.eos-animation {
  opacity: 0;

  position: absolute;
}
.eos-animation.animateUp {
  animation: fadeOutUp 3s;
  color: #02f292;
  text-shadow: 0 0 5px #02f292;
}
.eos-animation.animateDown {
  animation: fadeOutDown 1s;
  color: #cd4263;
  text-shadow: 0 0 5px #cd4263;
}
@keyframes fadeOutUp {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
}
@keyframes fadeOutDown {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
    -webkit-transform: translate3d(0, 100%, 0);
    transform: translate3d(0, 100%, 0);
  }
}
</style>
