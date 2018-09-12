import config from './config.js';
import Eos from 'eosjs';
import utils from './utils.js';

if (!localStorage.getItem('network')) {
  localStorage.setItem('network', 'mainnet');
}

if (!localStorage.getItem('lang')) {
  localStorage.setItem('lang', 'ch');
}

if (!localStorage.getItem('seed')) {
  localStorage.setItem('seed', new Chance().word({ length: 10 }));
}

export const store = {
  currentGame: 'otc',
  account: null,
  balance: 0,
  hpyBalance: 0,
  eos: null,
  network: localStorage.getItem('network'),
  lang: localStorage.getItem('lang'),
  seed: localStorage.getItem('seed'),
  referral: utils.getQueryString('ref'),
};

export function isPc() {
  //移动端PC端判断
  return /Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent) ? false : true;
}

export function initIdentity() {
  if (isPc()) {
    if (!('scatter' in window)) {
      alert('没有找到Scatter钱包');
      return;
    }
    scatter
      .getIdentity({
        accounts: [
          {
            chainId: config.networks[store.network].chainId,
            blockchain: config.networks[store.network].blockchain,
          },
        ],
      })
      .then((identity) => {
        setIdentity(identity);
      })
      .catch((err) => {
        console.error(err);
        alert('Scatter初始化失败');
      });
  } else {
    // 移动端钱包
    alert('暂不支持此浏览器');
  }
}

export async function forgetIdentity() {
  await scatter.forgetIdentity(this.network)
  setIdentity(null);      
}

export function setIdentity(identity) {
  store.account = identity.accounts.find((acc) => acc.blockchain === 'eos');
  store.eos = scatter.eos(config.networks[store.network], Eos, {});
  updateBalance();
}

export function updateBalance() {
  getEosBalance();
  getBetBalance();
}

export function getEosBalance() {
  store.eos.getCurrencyBalance('eosio.token', store.account.name).then((result) => {
    if (!result[0]) {
      store.balance = 0;
    } else {
      store.balance = parseFloat(result[0].split(' ', 1)[0]).toFixed(4);
    }
  });
}

export function getBetBalance() {
  store.eos.getCurrencyBalance('happyeosslot', store.account.name).then((result) => {
    if (!result[0]) {
      store.hpyBalance = 0;
    } else {
      store.hpyBalance = parseFloat(result[0].split(' ', 1)[0]).toFixed(4);
    }
  });
}
