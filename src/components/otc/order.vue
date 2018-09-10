<template>
    <el-card class="box-card">
        <div slot="header" class="clearfix">
          <span>订单 #{{ order.id }}</span>
          <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
        </div>
        <p class="text item">出价: {{order.bid.quantity}}</p>
        <p class="text item">要价: {{order.ask.quantity}}</p>
        <p class="text item">卖家: {{order.owner}}</p>
        <p class="text item">订单创建时间 {{order.order_time}} </p>  
      </el-card>
</template>

<script>
export default {
  props: ['order']
}
</script>

