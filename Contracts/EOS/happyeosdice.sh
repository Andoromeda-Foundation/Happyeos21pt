# -u https://api-kylin.eosasia.one 
cleos wallet unlock --password PW5JaGpLtoM1vtD1WxiAC4RDsr82FRUczmKgocw1KJZqVahB4LZ1u
#/usr/local/eosio/bin/eosiocpp -g happyeosdice/happyeosdice.abi happyeosdice/happyeosdice.cpp happyeosdice/eosio.token.cpp
#/usr/local/eosio/bin/eosiocpp -g happyeosdice/happyeosdice.abi happyeosdice/happyeosdice.cpp happyeosdice/eosio.token.cpp

/usr/local/eosio/bin/eosiocpp -o happyeosdice/happyeosdice.wast happyeosdice/happyeosdice.cpp

cleos -u http://api.eosbeijing.one set contract happyeosdice happyeosdice -p happyeosdice@active
cleos -u http://api.eosbeijing.one set contract happyeosdice happyeosdice -p happyeosdice@active

#cleos -u http://api.eosbeijing.one push action happyeosdice reveal2 '[]' -p happyeosdice@active
#cleos -u http://api.eosbeijing.one push action happyeosdice reveal '["28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905", "D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosdice@active


# cleos -u http://api-direct.eosasia.one push action happyeosdice init '["07359f2ae9669d3991e49bb0bafbc60b2d0efe98cbc38f95682df182561d5947"]' -p happyeosdice@active

#cleos -u https://api-kylin.eosasia.one push action happyeosdice init '["9993a3fa2e1f0d628a1bb9b27b7522ad29aa72881a1a36e39c2af301e86228d3"]' -p happyeosdice@active

#cleos -u http://api.eosbeijing.one push action happyeosdice init '["D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosdice@active

#cleos -u http://api-direct.eosasia.one push action happyeosdice reveal '["28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905", "D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosdice@active

#cleos -u http://api-direct.eosasia.one get table happyeosdice happyeosdice offer

#cleos -u http://api-direct.eosasia.one push action eosio.token transfer '[ "happyeosdice", "minakokojima", "95.0000 EOS", "" ]' -p happyeosdice@active
#cleos -u http://api-direct.eosasia.one set contract happyeosdice happyeosdice -p happyeosdice@active


# cleos -u http://api-direct.eosasia.one push action happyeosdice test '["minakokojima", "1.0000 EOS"]' -p happyeosdice@active
#cleos -u http://api-direct.eosasia.one set contract happyeosdice happyeosdice -p happyeosdice@active
#cleos -u https://api-kylin.eosasia.one push action happyeosdice test '["minakokojima", "1.0000 EOS"]' -p happyeosdice@active

#cleos -u http://api-direct.eosasia.one push action eosio.token transfer '[ "minakokojima", "happyeosdice", "0.1000 EOS", "bet 50" ]' -p minakokojima@active

#cleos -u https://api-kylin.eosasia.one get table happyeosdice happyeosdice accounts


#cleos -u https://api-kylin.eosasia.one push action eosio.token transfer '[ "minakokojima", "happyeosdice", "0.0500 EOS", "buy" ]' -p minakokojima@active

#cleos -u https://api-kylin.eosasia.one push action happyeosdice transfer '[ "minakokojima", "happyeosdice", "0.0001 DMT", "sell" ]' -p minakokojima@active
#cleos -u http://api-direct.eosasia.one set contract happyeosdice happyeosdice -p happyeosdice@active
#cleos -u https://api-kylin.eosasia.one push action happyeosdice init '["0196d5b5d9ec1bc78ba927d2db2cb327d836f002601c77bd8c3f144a07ddc737"]' -p happyeosdice@active
#cleos -u http://api-direct.eosasia.one get table happyeosdice happyeosdice offer

# EOS8Lk5UhkGTZUkyBnAgp9XF8PbREmMHTQYQhgYzNY9FjrEMXQGtF
# cleos wallet unlock --password PW5JaGpLtoM1vtD1WxiAC4RDsr82FRUczmKgocw1KJZqVahB4LZ1u

# /usr/local/eosio/bin/eosiocpp -o happyeosdice/happyeosdice.wast happyeosdice/happyeosdice.cpp
# /usr/local/eosio/bin/eosiocpp -g happyeosdice/happyeosdice.abi happyeosdice/happyeosdice.cpp
# cleos -u https://api-kylin.eosasia.one set contract happyeosdice happyeosdice -p happyeosdice@active
# cleos -u https://api-kylin.eosasia.one push action eosio.token transfer '[ "minakokojima", "happyeosdice", "1.0000 EOS", "bet 50 fda pomelodex111" ]' -p minakokojima@active
# cleos -u https://api-kylin.eosasia.one get table happyeosdice happyeosdice offer
# cleos -u https://api-kylin.eosasia.one get table happyeosdice minakokojima result


# cleos -u https://mainnet.genereos.io:443 push action happyeosdice init '["9993a3fa2e1f0d628a1bb9b27b7522ad29aa72881a1a36e39c2af301e86228d3"]' -p happyeosdice@active

# cleos -u https://api-kylin.eosasia.one system newaccount --stake-net '5.0000 EOS' --stake-cpu '1.0000 EOS' --buy-ram '20.0000 EOS' minakokojima happyeosdice EOS5fY2dmpfXmzXN1DEJ6VfvhhCr55ZpE9MyTd9eX7Cw2EmzJcnFM EOS781pFN6TgUkuCDqmCdyxcp1cnJdtg3DYfajbAba6mvHvrFNuDy




# cleos -u https://api-kylin.eosasia.one set account permission happyeosdice active '{"threshold": 1,"keys": [{"key": "EOS79mZ2pseEgc7cR4rPFoTUe3DBrLj8jmf3FGZqQCBwazUYioGZh","weight": 1}],"accounts": [{"permission":{"actor":"happyeosdice","permission":"eosio.code"},"weight":1}]}' owner -p happyeosdice



#cleos -u http://api-direct.eosasia.one get table happyeosdice happyeosdice global 
#cleos -u http://api-direct.eosasia.one get table happyeosdice happyeosdice offer
#cleos -u http://api-direct.eosasia.one get table happyeosdice happyeosdice market