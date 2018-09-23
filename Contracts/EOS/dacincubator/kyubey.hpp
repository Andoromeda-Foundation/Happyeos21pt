/**
 *  @dev minakokojima
 *  @copyleft ／人◕ ‿‿ ◕人＼
 *  Want to make a Contract with me?
 *  I am the linear version of kyubey protocol.
 */

#pragma once

#include "eosio.token.hpp"

#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/contract.hpp>
#include <eosiolib/transaction.hpp>

#define EOS_SYMBOL S(4, EOS)
#define KBY_SYMBOL S(4, KBY)
typedef double real_type;

using eosio::token;
using eosio::asset;
using eosio::symbol_type;
using eosio::action;
using eosio::permission_level;

const uint64_t K = 100000000;

class kyubey : public token {
    public:
        kyubey(account_name self) :
            token(self),
            _market(_self, _self) {}

 //       const uint64_t init_dummy_supply;     
   //     const uint64_t init_dummy_balance;
        
        void buy(account_name account, asset in) {    
            asset out;
            _market.modify(_market.begin(), 0, [&](auto &m) {
                out = m.buy(in.amount);
            });                                            
            issue(account, out, "");
        }

        void sell(account_name account, asset in) {
            sub_balance(account, in);          
            asset out;
            _market.modify(_market.begin(), 0, [&](auto &m) {
                out = m.sell(in.amount);
            });    
            
            action(
                permission_level{_self, N(active)},
                N(eosio.token), N(transfer),
                make_tuple(_self, account, out, std::string(""))
            ).send();
        }

        // @abi table market i64
        struct market {
            uint64_t id = 0;
            asset supply;
            asset balance;
            uint64_t primary_key() const { return id; }

            asset buy(uint64_t in) {
                balance.amount += in;
                uint64_t new_supply = sqrt(balance.amount * 2 * 10000 * K);
                uint64_t delta_supply = new_supply - supply.amount;
                supply.amount = new_supply;
                balance.amount = (supply.amount * supply.amount) / 2 / 10000 / K;
                return asset(new_supply, supply.symbol);
            } 

            asset sell(uint64_t in) {
                uint64_t eos_return = (((supply.amount << 1) - in) * in / 2 / 10000 / K);
                supply.amount -= in;
                balance.amount = (supply.amount * supply.amount) / 2 / 10000 / K;
                return asset(eos_return, balance.symbol);
            }

            EOSLIB_SERIALIZE(market, (supply)(balance))
        };

        typedef eosio::multi_index<N(market), market> market_index;
        market_index _market;      
};
