import Vue from 'vue';
import VueI18n from 'vue-i18n';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import './css/main.css';
import app from './app.vue';
import config from './config.js';

import enLocale from 'element-ui/lib/locale/lang/en';
import zhLocale from 'element-ui/lib/locale/lang/zh-CN';
import zhTerm from './lang/ch';
import enTerm from './lang/en';

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

new Vue({
  el: '#app',
  i18n,
  data,
  render: (h) => h(app),
});
