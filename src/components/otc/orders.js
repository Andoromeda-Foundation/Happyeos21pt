import axios from "axios";
import { map } from "ramda";
import {store} from "../../store.js";
import config from "../../config.js";
const network = config.networks[store.network]



function timestampToDate(timestamp) {
    return new Date(timestamp * 1000).toLocaleString()
}

function convertOrderDetail(order) {
    const { timestamp } = order
    const order_time = timestampToDate(timestamp)
    return {...order, order_time}
}

export async function getOrders(ask_token_contract = "eosio.token") {
    const { data } = await axios({
        method: 'post',
        url: `${network.protocol}://${network.host}/v1/chain/get_table_rows`,
        headers: { 'content-type': 'application/x-www-form-urlencoded' },
        data: {
            "code": "eosotcbackup",
            "table": "order",
            "scope": ask_token_contract,
            "json": true
        },
        withCredentials: false
    })
    return map(
        convertOrderDetail
    )(data.rows)
}

export async function getOrderDetail(target) {
    const orders = await getOrders()
    return orders.filter(o => o.id === target)[0]
}