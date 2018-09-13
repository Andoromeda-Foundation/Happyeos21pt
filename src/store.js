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
  config,
  currentGame: 'otc',
  account: null,
  eos: {
    balance: 0,
  },
  hpy: {
    balance: 0,
    contractBalance: 0,
    bancorBalance: 0,
    supply: 0,
    eop: 0,
    price: 0,
  },
  dmt: {
    // DMT （Dice Master Token）
    balance: 0,
    contractBalance: 0,
    bancorBalance: 0,
    supply: 0,
    eop: 0,
    price: 0,
  },
  scatter: null,
  network: localStorage.getItem('network'),
  lang: localStorage.getItem('lang'),
  seed: localStorage.getItem('seed'),
  referral: utils.getQueryString('ref'),
};

export function isPc() {
  //移动端PC端判断
  return /Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent) ? false : true;
}

export function setScatter() {
  if (!('scatter' in window)) {
    alert('没有找到Scatter钱包');
    return;
  }
  store.scatter = scatter.eos(config.networks[store.network], Eos, {});
}

export function initIdentity() {
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
}

export async function forgetIdentity() {
  await scatter.forgetIdentity(this.network);
  setIdentity(null);
}

export function setIdentity(identity) {
  store.account = identity.accounts.find((acc) => acc.blockchain === 'eos');
  updateBalance();
}

export function updateBalance() {
  getBalance('eosio.token', 'eos');
  getBalance('happyeosslot', 'hpy');
  getBalance('dicemaster11', 'dmt');
}

export function getAllTokensInfo() {
  getTokenInfo('happyeosslot', 'hpy');
  getTokenInfo('dicemaster11', 'dmt');
}

export function getBalance(code, token, name) {
  if (!name) {
    name = store.account.name;
  }

  store.scatter.getCurrencyBalance(code, name).then((result) => {
    if (!result[0]) {
      store[token].balance = 0;
    } else {
      store[token].balance = parseFloat(result[0].split(' ', 1)[0]).toFixed(4);
    }
  });
}

export function getTokenInfo(code, token) {
  // 获取token发行量
  store.scatter.getTableRows(true, code, code, 'market', '0').then((result) => {
    if (result && result.rows && result.rows[0]) {
      store[token].bancorBalance = parseFloat(result.rows[0].deposit.balance.split(' ', 1)[0]).toFixed(4);
      store[token].supply = parseFloat(result.rows[0].supply.split(' ', 1)[0]).toFixed(4);

      store.scatter.getCurrencyBalance('eosio.token', code).then((contractBalanceResult) => {
        if (contractBalanceResult[0]) {
          store[token].contractBalance = parseFloat(contractBalanceResult[0].split(' ', 1)[0]).toFixed(4);

          store[token].eop = store[token].contractBalance / (store[token].bancorBalance - 1250);
          store[token].price = ((store[token].supply / 250000) * store[token].eop).toFixed(4);
        }
      });
    }
  });
}
