<template>
    <div class="app">
      <header id="header" class="mui-bar mui-bar-nav">
        <h1 class="mui-title">购物车</h1>
      </header>
      <div class="cart">
        <div class="cart-item" v-for="item in cartList">
          <img :src="item.img_url">
          <div class="div-ul">
            <p class="ul-title">{{item.title}}</p>
            <p class="ul-text">{{item.price}}*{{item.count}}</p>
            <p class="ul-text add-minus mui-numbox">
              <button class="mui-btn mui-btn-numbox-minus" type="button" @click="minus">-</button>
              <input class="mui-input-numbox" type="number" :value="item.count" id="inp"/>
              <button class="mui-btn mui-btn-numbox-plus" type="button" @click="add">+</button>
            </p>
          </div>
        </div>
      </div>
      <div class="total">
        <span class="total-contant">总价:</span>
        <button class="total-sub">提交订单</button>
      </div>
    </div>
</template>
<script>
  export default {
     data(){
         return { 
           cartList:[]
         }
     },
    created(){
      this.getCartList()
    },
    methods:{
      getCartList(){
        this.$http.get("cart/cartlist")
        .then(result=>{
          var obj=result.body
          if(obj.code==1){
            this.cartList=obj.msg;
          }else{
            Toast("数据请求失败")  
          }
        })
      },
      add(){

      },
      minus(){

      }
    }

  }
</script>
<style scoped>
.cart-item{
  padding:10px;
  border-bottom:1px solid #ddd;
  display:flex;
}
.cart-item img{
  width:80px;
  height:80px;
  margin-top:5px;
}
.div-ul{
  margin-left:15px;
  line-height:17px;
}
.ul-title{
  font-size:18px;
  color:#000;
}
.ul-text{
  color:#000;
}
.mui-numbox{
  height:25px;
}
.mui-numbox .mui-input-numbox{
  height:25px;
}
.add-minus{
  display:inline-block;
}
.add-minus input{
  width:50px;
  height:35px;
  padding:0
}
.total{
  background:#a2a2a2;
  width:100%;
  height:50px;
  position:fixed;
  bottom:50px;
}
.total-contant{
  color:#000;
  font-size:20px;
  position:relative;
  top:15px;
  left:15px;
}
.total-sub{
  width:100px;
  height:50px;
  border:1px solid #666;
  background:#000;
  color:#fff;
  border-radius:0;
  float:right;
}
</style>