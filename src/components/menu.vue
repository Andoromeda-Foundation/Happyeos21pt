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
            <el-dropdown-item command="Dice">{{$t('Dice')}}</el-dropdown-item>
            <el-dropdown-item command="Slot">Slot</el-dropdown-item>
            <el-dropdown-item command="BlackJack">{{$t('BlackJack')}}</el-dropdown-item>
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
        <el-input v-model="store.seed" :placeholder="$t('Enter Your Custom Seed')" style="width: 300px;"></el-input>
        <el-button type="primary" @click="update()">{{$t('Update')}}</el-button>
        <p>{{$t('fair-1')}}</p>
        <p>{{$t('fair-2')}}</p>
        <p>{{$t('fair-3')}}</p>
      </el-dialog>

      <el-dialog
        :title="$t('Join the Happy Community')"
        :visible.sync="isShowCommunityDialog"
        width="30%"
        center>
        <a href="https://t.me/joinchat/HnyfLA9DC8cNmr6RP0tE7Q" target="_blank">https://t.me/joinchat/HnyfLA9DC8cNmr6RP0tE7Q</a>
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
import ElDropdownItem from "../../node_modules/element-ui/packages/dropdown/src/dropdown-item";

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
#menu {
  height: 60px;
  background-color: #3f3e3e;
  padding: 8px 16px;
  display: flex;
}
#logo-container {
  height: 100%;
  display: inline-flex;
  align-items: center;
  margin-right: 10px;
}
#logo {
  height: 50px;
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
</style>
