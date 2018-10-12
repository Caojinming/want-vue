<template>
    <div class="app">
        <header id="header" class="mui-bar mui-bar-nav">
            <h1 class="mui-title">我的</h1>
        </header>
        <div class="icon">
            <img src="../../img/avatar.png">
        </div>
        <div class="text">
            <router-link to="/mine/login"><p class="text-item arrow" style="margin-top:10px;">个人资料</p></router-link>
            <p class="text-item" style="margin-bottom:10px">
                <ul class="mui-table-view mui-grid-view mui-grid-9">
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/daifahuo.svg">
                    <div class="mui-media-body">待发货</div>
                    </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/daifukuan.svg">
                    <div class="mui-media-body">待付款</div>
                    </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/daishouhuo.svg">
                    <div class="mui-media-body">待收货</div>
                    </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/dianpu.svg">
                    <div class="mui-media-body">店铺收藏</div>
                    </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/youhui.svg">
                    <div class="mui-media-body">优惠卷</div>
                    </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-2 mui-col-sm-2">
                    <router-link to="#" class="r-l">
                    <img src="../../img/quanbu.svg">
                    <div class="mui-media-body">全部订单</div>
                    </router-link>
                </li>
                </ul>
            </p>
            <p class="text-item arrow">优惠卷</p>
            <p class="text-item arrow">使用条款</p>
            <p class="text-item arrow">常见问题</p>
            <p class="text-item arrow">收货地址</p>
            <p class="text-item arrow" style="margin-top:10px;">设置</p>
        </div>
        <div class="ad">
            <img src="../../img/zhao1.jpg">
        </div>
    </div>
</template>
<script>
   export default{
      data(){
          return {}
      },
      methods:{
          
      }

   }
</script>
<style scoped>
    .icon{
        width:100%;
        height:200px;
        background-color:#cdcdcd;
        display:flex;
        justify-content: center;
        align-items: center;
    }
    .icon img{
        width:100px;
        height:100px;
        border-radius:50%;
        border:5px solid #fff;
    }
    .text{
        margin-bottom:100px;
    }
    .text-item{
        background-color:#fff;
        font-size:16px;
        color:#000;
        padding:10px;
        margin:0;
        border-bottom:1px solid #ddd;
    }
    .arrow{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .arrow::after{
        content: "";
        width:10px;
        height: 10px;
        border-top:2px solid #ddd;
        border-right: 2px solid #ddd;
        transform: rotate(45deg);
    }
    .ad img{
        width:100%;
        position:fixed;
        bottom:50px;
    }
    .mui-table-view.mui-grid-view.mui-grid-9{
        border:0;
        margin:0;
        padding:0;
    }
    .mui-table-view-cell.mui-media.mui-col-xs-2.mui-col-sm-2{
        border:0;
        padding:0 2px;
    }
    .mui-table-view-cell.mui-media.mui-col-xs-2.mui-col-sm-2 img{
        width:80%;
    }
    .mui-grid-view.mui-grid-9 .mui-table-view-cell > a:not(.mui-btn){
        padding:0;
    }
    .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
        font-size:13px;
        margin-top:0;
    }
</style>