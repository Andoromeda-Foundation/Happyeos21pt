import Vue from 'vue';
import VueI18n from 'vue-i18n';
import ElementUI from 'element-ui';
import VeCandle from 'v-charts/lib/candle.common';
import 'element-ui/lib/theme-chalk/index.css';
import './css/main.css';
import app from './app.vue';
import config from './config.js';
import router from './router.js';

import enLocale from 'element-ui/lib/locale/lang/en';
import zhLocale from 'element-ui/lib/locale/lang/zh-CN';
import jpLocale from 'element-ui/lib/locale/lang/ja';
import zhTerm from './lang/ch';
import enTerm from './lang/en';
import jpTerm from './lang/jp';

Vue.use(VueI18n);

const messages = {
  en: {
    ...enLocale,
    ...enTerm,
  },
  ch: {
    ...zhTerm,
    ...zhLocale,
  },
  jp: {
    ...jpTerm,
    ...jpLocale,
  },
};

const i18n = new VueI18n({
  locale: localStorage.getItem('lang') || 'ch',
  messages,
});

Vue.use(ElementUI, {
  i18n: (key, value) => i18n.t(key, value),
});

window.data = {
  config,
};

Vue.component(VeCandle.name, VeCandle);

new Vue({
  el: '#app',
  i18n,
  data,
  router,
  render: (h) => h(app),
});
