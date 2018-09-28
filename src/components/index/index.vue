<template>
    <div>
        <div id="section-1">
            <div class="container">
                <div id="subhead">CASINO ARCADE /URBANLEGEND.io</div>
                <div id="title">URBANLEGEND</div>
                <div id="contact-icon-container">
                    <img class="contact-icon" src="../../assets/index/twitter.png">
                    <img class="contact-icon" src="../../assets/index/facebook.png">
                    <img class="contact-icon" src="../../assets/index/weibo.png">
                    <img class="contact-icon" src="../../assets/index/wechat.png">
                    <img class="contact-icon" src="../../assets/index/bitcoin.png">
                </div>
            </div>
        </div>

    </div>
</template>

<script>
import * as store from '../../store.js';

export default {
    data() {
      return {
          store: store.store,
      };
    },
    created() {
        setInterval(() => {
            // this.getLogs().then();
        }, 2000);
    },
    methods: {
    }
}
</script>

<style>
@font-face {
  font-family: 'FZXS16--GB1-0';
  src: url('../../assets/fonts/FangZhengXiangSu16.ttf') format('truetype');
}
.container {
    width: 1440px;
    margin-left: auto;
    margin-right: auto;
    width: 1440px;
    display: block;
}
#section-1 {
    background: url('../../assets/index/background.png');
    background-size: contain;
    height: 777px;
}
#section-2 {
    height: 777px;
    background-color: #201529;
}
#subhead {
  font-family: 'FZXS16--GB1-0';
  font-size: 64px;
  background: linear-gradient(-180deg, #0020ff 62%, #86baff 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  letter-spacing: 0;
  text-align: left;
  position: relative;
  top: 407px;
  left: 184px;
}
#title {
  font-family: 'FZXS16--GB1-0' !important;
  font-size: 180px;
  background: linear-gradient(to bottom, #00b0ff 62%, #ff2493 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  letter-spacing: 0;
  text-align: left;
  position: relative;
  top: 389px;
  left: 243px;
}
#contact-icon-container {
    position: relative;
    top: 453px;
    left: 550px;
}
.contact-icon {
    height: 50px;
    width: 50px;
    margin-right: 25px;
}
</style>
