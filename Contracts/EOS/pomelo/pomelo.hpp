#include <eosiolib/currency.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <math.h>
#include <string>
#include <vector>

#define EOS S(4, EOS)
#define TOKEN_CONTRACT N(eosio.token)

using namespace eosio;
using namespace std;

class pomelo : public contract
{
public:
    pomelo(account_name self) :
        contract(self) {
    }

    // @abi action
    void cancelsell(account_name account, string symbol, uint64_t id);

    // @abi action
    void cancelbuy(account_name account, string symbol, uint64_t id);

    // @abi action
    void setwhitelist(string symbol, account_name issuer);

    // @abi action
    void rmwhitelist(string symbol);

    void apply(account_name contract, action_name act);   

    void onTransfer(account_name from,
                    account_name to,
                    asset        quantity,
                    string       memo);  

    void transfer(account_name from,
                  account_name to,
                  asset        quantity,
                  string       memo);                 

    // @abi table
    struct buyorder { 
        uint64_t id;
        account_name account;
        asset bid;
        asset ask;
        uint64_t unit_price;
        time timestamp;

        uint64_t primary_key() const { return id; }
        uint64_t get_price() const { return unit_price; }
        EOSLIB_SERIALIZE(buyorder, (id)(account)(bid)(ask)(unit_price)(timestamp))
    };
    typedef eosio::multi_index<N(buyorder), buyorder, 
        indexed_by<N(byprice), const_mem_fun<buyorder, uint64_t, &buyorder::get_price>>
    > buyorders;

    // @abi table
    struct sellorder {
        uint64_t id;
        account_name account;
        asset bid;
        asset ask;
        uint64_t unit_price;
        time timestamp;

        uint64_t primary_key() const { return id; }
        uint64_t get_price() const { return unit_price; }
        EOSLIB_SERIALIZE(sellorder, (id)(account)(bid)(ask)(unit_price)(timestamp))
    };
    typedef eosio::multi_index<N(sellorder), sellorder, 
        indexed_by<N(byprice), const_mem_fun<sellorder, uint64_t, &sellorder::get_price>>
    > sellorders;

    // @abi table
    struct whitelist {
        uint64_t id = 0;
        account_name contract;

        uint64_t primary_key() const { return id; }
        EOSLIB_SERIALIZE(whitelist, (id)(contract))
    };
    typedef eosio::multi_index<N(whitelist), whitelist> whitelists;

    // @abi table
    struct txlog {
        uint64_t id;
        account_name buyer;
        account_name seller;
        asset bid;
        asset ask;
        time timestamp;

        uint64_t primary_key() const { return id; }
        uint64_t get_timestamp() const { return timestamp; } 
        EOSLIB_SERIALIZE(txlog, (id)(buyer)(seller)(bid)(ask)(timestamp))        
    };

    
    typedef eosio::multi_index<N(txlog), txlog, 
        indexed_by<N(bytimestamp), const_mem_fun<txlog, uint64_t, &txlog::get_timestamp>>
    > txlogs; 
    
private:
    uint64_t string_to_symbol(uint8_t precision, const char* str);
    bool is_valid_unit_price(uint64_t eos, uint64_t non_eos);
    void assert_whitelist(string symbol, account_name contract);
    void assert_whitelist(symbol_type symbol, account_name contract);
    uint64_t string_to_amount(string s);
    vector<string> split(string src, char c);
    account_name get_contract_name_by_symbol(string symbol);
    account_name get_contract_name_by_symbol(symbol_type symbol);
    void publish_buyorder_if_needed(account_name account, asset bid, asset ask);
    void publish_sellorder_if_needed(account_name account, asset bid, asset ask);
    void maintain_txlogs();
    void insert_txlog(account_name buyer, account_name seller, asset ask, asset bid);
    void buy(account_name account, asset bid, asset ask);
    void sell(account_name account, asset bid, asset ask);
};