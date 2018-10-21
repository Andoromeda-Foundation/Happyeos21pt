#!/bin/bash
# 
# cleos -u http://api.eosbeijing.one push action happyeosslot init '["D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosslot@active
# cleos -u http://api.eosbeijing.one push action happyeosdice reveal '["28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905", "D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosdice@active
# cleos -u http://api.eosbeijing.one push action happyeosslot test '["minakokojima", "1.0000 EOS"]' -p happyeosslot@active
# cleos -u http://api.eosbeijing.one get table happyeosslot happyeosslot offer

for (( ;1 < 100; ))
do
result=`cleos -u http://api.eosbeijing.one get table happyeosslot happyeosslot offer`
if [ ${#result} -gt 35 ]; then
        # sleep 1s
        cleos wallet unlock --password PW5JaGpLtoM1vtD1WxiAC4RDsr82FRUczmKgocw1KJZqVahB4LZ1u
        last_seed=`cat /Users/minakokojima/Desktop/happyeosslot/rawseed.txt`
        #last_seed=28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905
        echo "last Seed " $last_seed
        seed=`openssl rand 32 -hex`
#        echo $seed
        # send last result and new seed.
        hash=`echo -n $seed | xxd -r -p | sha256sum -b | awk '{print $1}'`
        #generated=D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883
        echo "hash " $hash
        echo `date` >> /Users/minakokojima/Desktop/happyeosslot/seed.txt
        echo "seed: " $seed >> /Users/minakokojima/Desktop/happyeosslot/seed.txt
        echo "hash: " $hash >> /Users/minakokojima/Desktop/happyeosslot/seed.txt
        echo $seed > /Users/minakokojima/Desktop/rawseed.txt
        cleos -u http://api.eosbeijing.one push action happyeosdice reveal "[\"$last_seed\", \"$hash\"]" -p happyeosdice@active
#        cleos -u http://api.eosbeijing.one push action happyeosdice reveal '["28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905", "D533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883"]' -p happyeosdice@active
#        cleos_result=$?
 #       if [ $cleos_result -eq 0 ]; then
  #              echo $seed > /root/rawseed.txt
   #     fi
fi
sleep 2s
done
