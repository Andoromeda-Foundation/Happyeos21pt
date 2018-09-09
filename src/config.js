const config = {
  networks: {
    kylin: {
      blockchain: 'eos',
      host: 'api-kylin.eoslaomao.com',
      port: 443,
      chainId: '5fff1dae8dc8e2fc4d5b23b2c7665c97f9e9d8edf2b6485a86ba311c25639191',
      protocol: 'https',
      httpEndpoint: 'https://api-kylin.eoslaomao.com:443',
    },
    mainnet: {
      blockchain: 'eos',
      host: 'api1.eosasia.one',
      port: 443,
      chainId: 'aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906',
      protocol: 'https',
      httpEndpoint: 'https://api1.eosasia.one:443',
    },
  },
};

export default config;
