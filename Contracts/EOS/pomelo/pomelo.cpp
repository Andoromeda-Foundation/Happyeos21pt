#include "pomelo.hpp"
  
uint64_t pomelo::string_to_symbol(uint8_t precision, const char* str) 
{
    uint32_t len = 0;
    while (str[len]) 
    {
        ++len;
    }
    uint64_t result = 0;
    for (uint32_t i = 0; i < len; ++i) {
        // All characters must be upper case alaphabets
        eosio_assert(str[i] >= 'A' && str[i] <= 'Z', "invalid character in symbol name");
        result |= (uint64_t(str[i]) << (8 * (i + 1)));
    }
    result |= uint64_t(precision);
    return result >> 8;
}

void pomelo::assert_whitelist(string symbol, account_name contract)
{
    auto account = get_contract_name_by_symbol(symbol);
    eosio_assert(account == contract, "Transfer code does not match the contract in whitelist");
}

void pomelo::assert_whitelist(symbol_type symbol, account_name contract)
{
    auto account = get_contract_name_by_symbol(symbol);
    eosio_assert(account == contract, "Transfer code does not match the contract in whitelist");
}

bool pomelo::is_valid_unit_price(uint64_t eos, uint64_t non_eos) 
{
    return eos % non_eos == 0;
}

uint64_t pomelo::string_to_amount(string s) {
    uint64_t z = 0;
    for (int i=0;i<s.size();++i) {
        if ('0' <= s[i] && s[i] <= '9') {
            z *= 10; 
            z += s[i] - '0';
        }
    }
    return z;
}

vector<string> pomelo::split(string src, char c) 
{
    vector<string> z;
    string t;
    for (int i = 0; i < src.size(); ++i){
        if (src[i] == 'c') 
        {
            z.push_back(t);
            t.clear();
        } 
        else 
        {
            t += src[i];
        }
  }
  return z;
}

account_name pomelo::get_contract_name_by_symbol(string symbol)
{
    return get_contract_name_by_symbol(string_to_symbol(4, symbol.c_str()));
}

account_name pomelo::get_contract_name_by_symbol(symbol_type symbol)
{
    auto whitelist_table = whitelists(_self, symbol.name());
    auto row = whitelist_table.begin();
    eosio_assert(row != whitelist_table.end(), "The token has not been whitelisted");
    return row->contract;
}

void pomelo::publish_buyorder_if_needed(account_name account, asset bid, asset ask)
{
    // Validate bid symbol
    eosio_assert(bid.symbol == EOS, "Bid must be EOS");

    // Validate ask symbol
    eosio_assert(ask.symbol != EOS, "Ask must be non-EOS");

    if (ask.amount > 0)
    {
        auto buy_table = buyorders(_self, ask.symbol.name());

        buy_table.emplace(_self, [&](auto& t) {
            t.id = buy_table.available_primary_key();
            t.account = account;
            t.ask = ask;
            t.bid = bid;
            t.unit_price = bid.amount / ask.amount;
            t.timestamp = current_time();
        });
    }
}


void pomelo::publish_sellorder_if_needed(account_name account, asset bid, asset ask)
{
    /*
    // Validate bid symbol
    eosio_assert(bid.symbol != EOS, "Bid must be non-EOS");

    // Validate ask symbol
    eosio_assert(ask.symbol == EOS, "Ask must be EOS");

    if (ask.amount > 0) 
    {
        auto sell_table = sellorders(_self, ask.symbol.name());

        sell_table.emplace(_self, [&](auto& t) {
            t.id = sell_table.available_primary_key();
            t.account = account;
            t.ask = ask;
            t.bid = bid;
            t.unit_price = ask.amount / bid.amount;
            t.timestamp = current_time();
        });
    }
    */
}

void pomelo::maintain_txlogs() 
{
    /*
    auto txlog_table = txlogs(_self, _self);
    auto timestamp_index = txlog_table.get_index<N(bytimestamp)>();
    for (auto itr = timestamp_index.lower_bound(current_time() - 3600); itr != timestamp_index.end(); ++itr)
    {
        timestamp_index.erase(itr);
    }*/
}

void pomelo::insert_txlog(account_name buyer, account_name seller, asset ask, asset bid) 
{
    /*
    auto txlog_table = txlogs(_self, _self);
    txlog_table.emplace(_self, [&](auto& t)
    {
        t.id = txlog_table.available_primary_key();
        t.buyer = buyer;
        t.seller = seller;    
        t.ask = ask;
        t.bid = bid;        
        t.timestamp = current_time();
    });

    maintain_txlogs();*/
}

void pomelo::buy(account_name account, asset bid, asset ask) 
{
    // Validate bid symbol
    eosio_assert(bid.symbol == EOS, "Bid must be EOS");

    // Validate ask symbol
    eosio_assert(ask.symbol != EOS, "Ask must be non-EOS");

    // Validate unit price is integer
    eosio_assert(is_valid_unit_price(bid.amount, ask.amount), "Bid mod ask must be 0");

    // Retrive the sell table for current token
    auto sell_table = sellorders(_self, ask.symbol.name());

    // Calculate unit price
    auto order_unit_price = bid.amount / ask.amount;

    // Get unit price index
    auto unit_price_index = sell_table.get_index<N(byprice)>();
    
    // Visit sell orders table
    for (auto itr = unit_price_index.lower_bound(order_unit_price); itr != unit_price_index.end(); ++itr)
    {
        // Exit loop when the ask token is 0
        if (ask.amount == 0) {
            break;
        }

        uint64_t sold_token = ask.amount <= itr->bid.amount ? ask.amount : itr->bid.amount;
        uint64_t sold_eos = sold_token * itr->unit_price;

        // Modify sell order record
        unit_price_index.modify(itr, 0, [&](auto& t) {
            t.bid.amount -= sold_token;
            t.ask.amount -= sold_eos;
        });
        
        // Retrive issue contract of this token
        auto token_contract = get_contract_name_by_symbol(ask.symbol);

        // Transfer EOS to seller
        action(
            permission_level{ _self, N(active) },
            TOKEN_CONTRACT, N(transfer),
            make_tuple(_self, itr->account, asset(sold_eos, EOS), string("transfer")))
            .send();

        // Transfer Token to buyer
        action(
            permission_level{ _self, N(active) },
            token_contract, N(transfer),
            make_tuple(_self, account, asset(sold_token, ask.symbol), string("transfer")))
            .send();

        ask.amount -= sold_token;
        bid.amount -= sold_token * order_unit_price;

        // Erase the sell order from sell order table if the order finished.
        if (itr->ask.amount == 0)
        {
            unit_price_index.erase(itr);
        }
        
        // Log the matched transaction
        insert_txlog(account, itr->account, asset(sold_token, ask.symbol), asset(sold_eos, EOS));
    }

    // The current order is not fully matched, publish the order
    publish_buyorder_if_needed(account, bid, ask);
}

void pomelo::sell(account_name account, asset bid, asset ask) 
{
    // Validate bid symbol
    eosio_assert(bid.symbol != EOS, "Bid must be non-EOS");

    // Validate ask symbol
    eosio_assert(ask.symbol == EOS, "Ask must be EOS");

    // Validate unit price is integer
    eosio_assert(is_valid_unit_price(ask.amount, bid.amount), "Ask mod bid must be 0");

    // Retrive the buy table for current token
    auto buy_table = buyorders(_self, bid.symbol.name());

    // Calculate unit price
    auto order_unit_price = ask.amount / bid.amount;

    // Get unit price index
    auto unit_price_index = buy_table.get_index<N(byprice)>();
    
    // Visit sell orders table
    for (auto itr = unit_price_index.upper_bound(order_unit_price - 1); itr != unit_price_index.end(); ++itr)
    {
        // Defensive
        if (order_unit_price > itr->unit_price)
        {
            continue;
        }

        // Exit loop when the ask token is 0
        if (ask.amount == 0) {
            break;
        }

        uint64_t sold_token = bid.amount <= itr->ask.amount ? bid.amount : itr->bid.amount;
        uint64_t sold_eos = sold_token * itr->unit_price;

        // Modify sell order record
        unit_price_index.modify(itr, 0, [&](auto& t) {
            t.bid.amount -= sold_token;
            t.ask.amount -= sold_eos;
        });
        
        // Retrive issue contract of this token
        auto token_contract = get_contract_name_by_symbol(ask.symbol);

        // Transfer EOS to seller
        action(
            permission_level{ _self, N(active) },
            TOKEN_CONTRACT, N(transfer),
            make_tuple(_self, account, asset(sold_token * order_unit_price, EOS), string("transfer")))
            .send();

        // Transfer Token to buyer
        action(
            permission_level{ _self, N(active) },
            token_contract, N(transfer),
            make_tuple(_self, itr->account, asset(sold_token, ask.symbol), string("transfer")))
            .send();

        ask.amount -= sold_token * order_unit_price;

        // Erase the sell order from sell order table if the order finished.
        if (itr->ask.amount == 0)
        {
            unit_price_index.erase(itr);
        }
        
        // Log the matched transaction
        insert_txlog(itr->account, account, asset(sold_token, ask.symbol), asset(sold_token * order_unit_price, EOS));
    }

    // The current order is not fully matched, publish the order
    publish_sellorder_if_needed(account, bid, ask);
}

void pomelo::cancelsell(account_name account, string symbol, uint64_t id) 
{
    require_auth(account);
    
    auto sell_table = sellorders(_self, string_to_symbol(4, symbol.c_str()));  
    auto itr = sell_table.find(id);

    eosio_assert(itr->account == account, "Account does not match");
    eosio_assert(itr->id == id, "Trade id is not found");

    action(
        permission_level{_self, N(active)},
        N(eosio.token), N(transfer),
        make_tuple(_self, itr->account, itr->bid,
            std::string("trade cancel successed"))
    ).send(); 
    
    sell_table.erase(itr);
}

void pomelo::cancelbuy(account_name account, string symbol, uint64_t id) 
{
    require_auth(account);

    auto buy_table = buyorders(_self, string_to_symbol(4, symbol.c_str()));    
    auto itr = buy_table.find(id); 
    
    eosio_assert(itr != buy_table.end(), "Trade id is not found");
    eosio_assert(itr->account == account, "Account does not match");

    action(
        permission_level{_self, N(active)},
        N(eosio.token), N(transfer),
        make_tuple(_self, itr->account, itr->bid,
            std::string("trade cancel successed"))
    ).send();    

    buy_table.erase(itr);
}

void pomelo::onTransfer(account_name from, account_name to, asset bid, std::string memo) 
{        
    if (to != _self) return;    
    require_auth(from);
    eosio_assert(bid.is_valid(), "invalid token transfer.");
    eosio_assert(bid.amount > 0, "must bet a positive amount");

    auto splited_asset = split(memo, ' ');
    eosio_assert(splited_asset.size() == 2, "Memo should be a valid asset. Example: 1.2345 KBY");
    auto asset_amount = string_to_amount(splited_asset[0]);
    auto asset_symbol = string_to_symbol(4, splited_asset[1].c_str());

    if (bid.symbol == EOS) {
        eosio_assert(asset_symbol != EOS, "Ask must be non-EOS");
        buy(from, bid, asset(asset_amount, asset_symbol));
    }
    else
    {
        eosio_assert(asset_symbol == EOS, "Ask must be EOS");
        sell(from, bid, asset(asset_amount, asset_symbol));
    }
}

void pomelo::transfer(account_name from, account_name to, asset bid, std::string memo) 
{ 
    return;
}

void pomelo::setwhitelist(string symbol, account_name issuer)
{
    require_auth(_self);
    
    rmwhitelist(symbol);
    
    auto whitelist_table = whitelists(_self, string_to_symbol(4, symbol.c_str()));
    whitelist_table.emplace(_self, [&](auto& t) {
        t.id = 0;
        t.contract = issuer;
    });
}




void pomelo::rmwhitelist(string symbol)
{
    require_auth(_self);
    auto whitelist_table = whitelists(_self, string_to_symbol(4, symbol.c_str()));
    auto itr = whitelist_table.begin();
    if (itr != whitelist_table.end())
    {
        whitelist_table.erase(itr);
    }
}




void pomelo::apply(account_name contract, action_name act) 
{   
    if (act == N(transfer)) {
        auto transfer = unpack_action_data<currency::transfer>();
        if (transfer.quantity.symbol == EOS) 
        {
            eosio_assert(contract == TOKEN_CONTRACT, "Transfer EOS must go through eosio.token");
        }
        else
        {
            assert_whitelist(transfer.quantity.symbol.name(), contract);
        }
        onTransfer(transfer.from, transfer.to, transfer.quantity, transfer.memo);
        return;
    }

    if (contract != _self) return;

    // needed for EOSIO_API macro
    auto &thiscontract = *this;
    switch (act) {
        EOSIO_API(pomelo, (cancelbuy)(cancelsell)(rmwhitelist)(setwhitelist));
    };
}



extern "C" {
    [[noreturn]] void apply(uint64_t receiver, uint64_t code, uint64_t action) 
    {
        pomelo p(receiver);
        p.apply(code, action);
        eosio_exit(0);
    }
}