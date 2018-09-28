<template>
    <div>
        <div id="section-1">
            <div class="container">
                <div id="subhead-1">CASINO ARCADE /URBANLEGEND.io</div>
                <div id="title-1">URBANLEGEND</div>
                <div id="contact-icon-container">
                    <img class="contact-icon" src="../../assets/index/twitter.png">
                    <img class="contact-icon" src="../../assets/index/facebook.png">
                    <img class="contact-icon" src="../../assets/index/weibo.png">
                    <img class="contact-icon" src="../../assets/index/wechat.png">
                    <img class="contact-icon" src="../../assets/index/bitcoin.png">
                </div>
            </div>
        </div>
        <div id="section-2">
            <div class="container">
                <div id="subhead-2">CASINO ARCADE /URBANLEGEND.io</div>
                <div id="title-2">ARCADE HALL</div>
                <div class="game-row-container">
                  <div class="game-row dice-game">
                    <div class="logo">
                        <div class="name">DICE</div>
                    </div>
                    <div class="description"></div>
                    <div class="goto">
                        <div class="goto-1">
                            <div class="goto-2">-></div>
                        </div>
                    </div>
                  </div>
                  <div class="game-row slot-game">
                      <div class="logo">
                          <div class="name">SLOT</div>
                      </div>
                      <div class="description"></div>
                      <div class="goto">
                          <div class="goto-1">
                              <div class="goto-2">-></div>
                          </div>
                      </div>
                  </div>
                </div>

                <div class="game-column-container">
                  <div class="game-column black-jack-game">
                    <div class="logo">
                        <div class="name">BLACK JACK</div>
                    </div>
                    <div class="description"></div>
                    <div class="goto">
                        <div class="goto-1">
                            <div class="goto-2">START</div>
                        </div>
                    </div>
                  </div>
                  <div class="game-column otc-game">
                      <div class="logo">
                          <div class="name">OTC</div>
                      </div>
                      <div class="description"></div>
                      <div class="goto">
                          <div class="goto-1">
                              <div class="goto-2">Coming Soon...</div>
                          </div>
                      </div>
                  </div>
                </div>

            </div>
        </div>
        <div id="section-3">
          <div class="container">
            <div class="qa-container">
              <div class="qa"><span>Q&A</span></div>
            </div>
            <div class="qa-display">
              <div class="qa-btn-container">
                <div class="qa-btn"><div class="qa-btn-1"><div class="qa-btn-2">WHAT'S THIS</div></div></div>
                <div class="qa-btn"><div class="qa-btn-1"><div class="qa-btn-2">HOW TO PLAY</div></div></div>
                <div class="qa-btn"><div class="qa-btn-1"><div class="qa-btn-2">JUSTICE</div></div></div>
                <div class="qa-btn"><div class="qa-btn-1"><div class="qa-btn-2">ABOUT US</div></div></div>
              </div>
              <div class="qa-description">
                <span>ABOUT US: </span>Great products and services don’t just happen. Behind them lies a development process that starts with careful consideration of market needs, the competitive environment, company resources, the brand image, and the style and function of the new product or service to be created.
              </div>
            </div>
          </div>
        </div>
        <div id="section-4">
          <div class="declare"><span>DECLARATIVE INFORMATION: </span>Great products and services don’t just happen. Behind them lies a development process that starts with careful consideration of market needs, the competitive environment, company resources.</div>
          <div id="section-4-footer">
            <div class="blocks">
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
            </div>
            <div id="section-4-contact-icon-container">
              <img class="contact-icon" src="../../assets/index/twitter-2.png">
              <img class="contact-icon" src="../../assets/index/facebook-2.png">
              <img class="contact-icon" src="../../assets/index/weibo-2.png">
              <img class="contact-icon" src="../../assets/index/wechat-2.png">
              <img class="contact-icon" src="../../assets/index/bitcoin-2.png">
            </div>
            <div class="blocks">
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
              <div class="block"></div>
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
  min-width: 1440px;
  background: url('../../assets/index/background-1.png');
  background-size: contain;
  height: 777px;
}
#section-2 {
  min-width: 1440px;
  height: 977px;
  background-color: #201529;
}
#section-3 {
  min-width: 1440px;
  background: url('../../assets/index/background-2.png');
  background-size: contain;
  height: 977px;
}
#section-4 {
  min-width: 1440px;
  height: 577px;
  background-color: #201529;
}
#subhead-1 {
  font-family: 'FZXS16--GB1-0';
  font-size: 64px;
  background: linear-gradient(-180deg, #0020ff 62%, #86baff 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-align: left;
  position: relative;
  top: 407px;
  left: 184px;
}
#title-1 {
  font-family: 'FZXS16--GB1-0' !important;
  font-size: 180px;
  background: linear-gradient(to bottom, #00b0ff 62%, #ff2493 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-align: left;
  position: relative;
  top: 389px;
  left: 243px;
}
#subhead-2 {
  font-family: 'FZXS16--GB1-0';
  font-size: 30px;
  background: linear-gradient(-180deg, #0020ff 62%, #86baff 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-align: left;
  position: relative;
  top: 50px;
  left: 384px;
}
#title-2 {
  font-family: 'FZXS16--GB1-0' !important;
  font-size: 90px;
  background: linear-gradient(-180deg, #ff008b 40%, #ffb8dc 53%, #ff0081 66%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  text-align: left;
  position: relative;
  top: 59px;
  left: 473px;
}
#contact-icon-container {
  margin-top: 453px;
  margin-left: auto;
  margin-right: auto;
  width: 400px;
  display: flex;
  justify-content: space-around;
}
.contact-icon {
  height: 50px;
  width: 50px;
}
.game-row {
  display: flex;
  justify-content: center;
  align-items: center;
}
.game-row .logo {
  width: 150px;
  height: 150px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
}
.game-row .logo .name {
  font-family: Impact;
  width: 100px;
  height: 100px;
  font-size: 34px;
  color: #ffffff;
  display: flex;
  justify-content: center;
  align-items: center;
  font-weight: 900;
}
.game-row .description {
  background: #000000;
  width: 639px;
  height: 98px;
}
.game-row .goto {
  margin-left: 25px;
  width: 102px;
  height: 102px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.game-row .goto .goto-1 {
  width: 86px;
  height: 86px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.game-row .goto .goto-1 .goto-2 {
  font-family: 'FZXS16--GB1-0';
  width: 70px;
  height: 70px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 48px;
}
.dice-game {
  margin-top: 113px;
}
.dice-game .logo {
  background: url('../../assets/index/blue-border.png');
  background-size: 150px 150px;
  background-position: center;
}
.dice-game .description {
  border: 4px solid #0087b4;
}
.dice-game .goto {
  border: 2px solid #3478a2;
}
.dice-game .goto .goto-1 {
  border: 2px solid #3478a2;
}
.dice-game .goto .goto-1 .goto-2 {
  border: 2px solid #3478a2;
  background-color: #3478a2;
}
.slot-game {
  margin-top: -14px;
}
.slot-game .logo {
  background: url('../../assets/index/green-border.png');
  background-size: 150px 150px;
  background-position: center;
}
.slot-game .description {
  border: 4px solid #229205;
}
.slot-game .goto {
  border: 2px solid #408220;
}
.slot-game .goto .goto-1 {
  border: 2px solid #408220;
}
.slot-game .goto .goto-1 .goto-2 {
  border: 2px solid #408220;
  background-color: #408220;
}

.game-column {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}
.game-column .logo {
  width: 420px;
  height: 75px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
}
.game-column .logo .name {
  font-family: Impact;
  width: 389px;
  height: 44px;
  font-size: 34px;
  color: #ffffff;
  display: flex;
  justify-content: center;
  align-items: center;
  font-weight: 900;
}
.game-column .description {
  background: #000000;
  width: 389px;
  height: 100px;
}
.game-column .goto {
  margin-top: 15px;
  width: 395px;
  height: 61px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.game-column .goto .goto-1 {
  width: 379px;
  height: 45px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.game-column .goto .goto-1 .goto-2 {
  font-family: Impact;
  width: 363px;
  height: 29px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 24px;
}
.black-jack-game .logo {
  background: url('../../assets/index/purple-border.png');
  background-size: 439px 94px;
  background-position: center;
}
.black-jack-game .description {
  border: 3px solid #852463;
}
.black-jack-game .goto {
  border: 2px solid #91258c;
}
.black-jack-game .goto .goto-1 {
  border: 2px solid #91258c;
}
.black-jack-game .goto .goto-1 .goto-2 {
  border: 2px solid #91258c;
  background-color: #902b8a;
}
.otc-game {
  margin-left: 142px;
}
.otc-game .logo .name {
  background: url('../../assets/index/gray-border.png');
  background-size: 389px 44px;
  background-position: center;
}
.otc-game .description {
  border: 3px solid #878787;
}
.otc-game .goto {
  border: 2px solid #878787;
}
.otc-game .goto .goto-1 {
  border: 2px solid #878787;
}
.otc-game .goto .goto-1 .goto-2 {
  border: 2px solid #878787;
  background-color: #a5a5a5;
}

.game-row-container {
}
.game-column-container {
  margin-top: 132px;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.qa-container {
  padding-top: 70px;
}

.qa {
  margin: auto;
  background: #080808;
  width: 363px;
  height: 89px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.qa span {
  font-family: 'FZXS16--GB1-0';
  font-size: 72px;
  background: linear-gradient(-41deg, #ff008b 0%, #2f4580 0%, #2f4580 19%, #ff006f 46%, #3b4d7f 47%, #3b4d7f 63%, #ff005d 91%, #425591 92%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  letter-spacing: 0;
  text-align: left;
}
.qa-display {
  margin-top: 65px;
  background: #000000;
  width: 1307px;
  height: 546px;
  padding-top: 23px;
  padding-left: 32px;
  padding-right: 32px;
  padding-bottom: 45px;
}
.qa-display .qa-btn-container {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  padding-bottom: 25px;
}
.qa-btn {
  width: 281px;
  height: 65px;
  display: flex;
  justify-content: center;
  align-items: center;
  border: 2px solid #878787;
}
.qa-btn .qa-btn-1 {
  width: 265px;
  height: 49px;
  display: flex;
  justify-content: center;
  align-items: center;
  border: 2px solid #878787;
}
.qa-btn .qa-btn-1 .qa-btn-2 {
  font-family: 'FZXS16--GB1-0';
  width: 249px;
  height: 33px;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 24px;
  border: 2px solid #878787;
  background-color: #a5a5a5;
}
.qa-description {
  border: 3px solid #582a2a;
  width: 1239px;
  height: 378px;
  padding: 40px;
  font-family: 'FZXS16--GB1-0';
  color: white;
  font-size: 35px;
}
.qa-description span {
  color: #a75353;
}

.declare {
  border: 8px solid #2d1c45;
  width: 1286px;
  height: 212px;
  padding: 40px;
  font-family: 'FZXS16--GB1-0';
  color: #27ee77;
  font-size: 35px;
  margin-left: auto;
  margin-right: auto;
  position: relative;
  top: 70px;
}
.declare span {
  color: #51396f;
}
#section-4-contact-icon-container {
  background: #20142a;
  width: 400px;
  height: 63px;
  border: 2px solid #2d1c45;
  padding-top: 11px;
  display: flex;
  justify-content: space-around;
}
#section-4-footer {
  display: flex;
  align-items: flex-start;
  margin-top: 80px;
  justify-content: center;
}
.blocks {
  width: 256px;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin-left: 35px;
  margin-right: 35px;
}
.block {
  background: #2d1c45;
  width: 12px;
  height: 43px;
}
</style>
