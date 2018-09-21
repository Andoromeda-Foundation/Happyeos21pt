import axios from "axios";
import { map } from "ramda";
import { store } from "../../store.js";
import config from "../../config.js";
import whitelist from "./whitelist.json";
const network = config.networks[store.network]



function timestampToDate(timestamp) {
    return new Date(timestamp * 1000).toLocaleString()
}

function convertOrderDetail(order) {
    const { timestamp } = order
    const order_time = timestampToDate(timestamp)
    return { ...order, order_time }
}

export async function getOrders(ask_token_contract = "eosio.token", safe = true) {
    const { data } = await axios({
        method: 'post',
        url: `${network.protocol}://${network.host}/v1/chain/get_table_rows`,
        headers: { 'content-type': 'application/x-www-form-urlencoded' },
        data: {
            "code": "eosotcbackup",
            "table": "order",
            "scope": ask_token_contract,
            "json": true,
            "limit": 65536
        },
        withCredentials: false
    })
    const actualList = map(
        convertOrderDetail
    )(data.rows)
    if (safe) {
        return actualList.filter((order) => {
            const { contract } = order.bid
            return whitelist.indexOf(contract) !== -1
        })
    } else {
        return actualList
    }
}

export async function getOrderDetail(target) {
    const orders = await getOrders()
    return orders.filter(o => o.id === target)[0]
}