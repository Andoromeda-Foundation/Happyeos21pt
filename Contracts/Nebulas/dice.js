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

class OwnerableContract {
    constructor() {
        LocalContractStorage.defineProperties(this, {
            owner: null
        })
        LocalContractStorage.defineMapProperties(this, {
            "admins": null
        })
    }

    init() {
        const {
            from
        } = Blockchain.transaction
        this.admins.set(from, "true")
        this.owner = from
    }

    onlyAdmins() {
        const {
            from
        } = Blockchain.transaction
        if (!this.admins.get(from)) {
            throw new Error("Sorry, You don't have the permission as admins.")
        }
    }

    onlyContractOwner() {
        const {
            from
        } = Blockchain.transaction
        if (this.owner !== from) {
            throw new Error("Sorry, But you don't have the permission as owner.")
        }
    }

    getContractOwner() {
        return this.owner
    }

    getAdmins() {
        return this.admins
    }

    setAdmins(address) {
        this.onlyContractOwner()
        this.admins.set(address, "true")
    }
}

class DiceContract extends OwnerableContract {
    constructor() {       
        super()
        LocalContractStorage.defineProperties(this, {
            referCut: null,
        })
        LocalContractStorage.defineMapProperties(this, {
        })
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

    withdraw(value) {
        this.onlyAdmins()
        // Only the owner can have the withdraw fund, so be careful
        return Blockchain.transfer(this.owner, new BigNumber(value))
    }

    withdrawAll() {
        this.withdraw(this.getBalance())
    }    

    init() {
        super.init()
        const {
            from
        } = Blockchain.transaction
        this.referCut = new BigNumber(1)
        this.admins.set(from, "true")
        this.owner = from
    }
}

module.exports = DiceContract