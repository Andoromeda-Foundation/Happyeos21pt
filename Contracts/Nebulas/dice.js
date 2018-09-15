/**
 * CryptoHero Contract Nebulas Version
 * ©️ Andoromeda Foundation All Right Reserved.
 * @author: MinakoKojima <lychees67@gmail.com>
 * @version: 1.0
 */

"use strict"

class Operator {
    constructor(obj) {
        this.operator = {}
        this.parse(obj)
    }

    toString() {
        return JSON.stringify(this.operator)
    }

    parse(obj) {
        if (typeof obj != "undefined") {
            var data = JSON.parse(obj)
            for (var key in data) {
                this.operator[key] = data[key]
            }
        }
    }

    get(key) {
        return this.operator[key]
    }

    set(key, value) {
        this.operator[key] = value
    }
}

class CounterContract {
    constructor() {       
        LocalContractStorage.defineProperties(this, {
            counter: null,
            referCut: null,
        })
        LocalContractStorage.defineMapProperties(this, {
        })
    }

   // referer by default is empty
   bet(referer = "", bet_number = 50, is_under = true) {
        var {
            from,
            value
        } = Blockchain.transaction
        
        this._sendCommissionTo(referer, value)

        var roll_number = Math.floor(Math.random() * 100);        
        if (is_under) {
            if (bet_number < roll_number) {
                Blockchain.transfer(from, new BigNumber(value).times(96).dividedToIntegerBy(bet_number))
            }
        } else {
            if(bet_number > roll_number) {
                Blockchain.transfer(from,  new BigNumber(value).times(96).dividedToIntegerBy(99 - bet_number))
            }
        }
        this._event("Bet",{number: roll_number});
    }


    init() {
        this.counter = 0
        this.referCut = new BigNumber(1)
    }
    
    _sendCommissionTo(referer, actualCost) {
        const {
            referCut
        } = this
        if (referer !== "") {
            const withoutCut = new BigNumber(100).dividedToIntegerBy(referCut)
            const cut = actualCost.dividedToIntegerBy(withoutCut)
            Blockchain.transfer(referer, cut)
        }
    }

    _event(name,indexes){
        var k = {};
        k[name] = indexes;
        Event.Trigger("Dice", k);
    }
}

module.exports = CounterContract