<template>
  <div class="app">
    <header id="header" class="mui-bar mui-bar-nav">
			<h1 class="mui-title">想去-买的起的好设计</h1>
		</header>
    <!--搜索框-->
    <div class="mui-input-row mui-search">
			<input type="search" class="mui-input-clear" placeholder="发现更多好货">
		</div>
    <!--轮播图区-->
    <mt-swipe :auto="4000">
        <mt-swipe-item v-for="item in list">
          <img :src="item.img_url">
        </mt-swipe-item>
    </mt-swipe>
    <!--六宫格-->
    <ul class="mui-table-view mui-grid-view mui-grid-9">
      <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
        <router-link to="#">
          <img src="../../img/r5.png">
          <div class="mui-media-body">首页</div>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
        <router-link to="/home/stroll">
          <img src="../../img/r4.png">
          <div class="mui-media-body">逛</div>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
        <router-link to="#">
          <img src="../../img/r3.png">
          <div class="mui-media-body">设计师</div>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3">
        <router-link to="#">
          <img src="../../img/r2.png">
          <div class="mui-media-body">小站</div>
        </router-link>
      </li>
    </ul>
    <!--大家喜欢-->
    <div class="mui-content" style="background-color:#fff">
      <h5 class="h5_title">大家喜欢</h5>
      <h5 class="h5_text">快来看看今日最受网友推荐的商品，喜欢就赶快带回家吧！</h5>
      <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-3" v-for="item in likelist">
          <a href="#">
            <img class="mui-media-object" :src="item.img_url">
            <div class="mui-media-body likefont">{{item.content}}</div>
          </a>
        </li>
      </ul>    
    </div> 
    <!--设计师品牌-->
    <div class="mui-content" style="background-color:#fff">
      <h5 class="h5_title">设计师品牌</h5>
      <h5 class="h5_text">好的设计需要时间和匠心去打磨使物品获得了温度。</h5>
      <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-4" v-for="item in brandlist">
          <a href="#">
            <img class="mui-media-object" :src="item.img_url">
            <div class="mui-media-body likefont">{{item.title}}</div>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4">
          <span class="morebrand">
            更多 <br>
            设计师品牌
          </span>
        </li>
      </ul>    
    </div>
    <!--手工艺人-->
    <div class="mui-content" style="background-color:#fff">
      <h5 class="h5_title">手工艺人</h5>
      <h5 class="h5_text">造物者是物的创造者，造物者是思想与智慧的源头，用智慧创造了万有，用思想控制着一切。</h5>
      <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-4" v-for="item in handlist">
          <a href="#">
            <img class="mui-media-object" :src="item.img_url">
            <div class="mui-media-body likefont">{{item.title}}</div>
            <h5 class="h5_text">{{item.att}}人关注它</h5>
          </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4">
          <span class="morebrand">
            更多 <br>
            手工艺人
          </span>
        </li>
      </ul>    
    </div>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui'
  export default{	
		data(){
      	return {
          list:[],
          likelist:[],
          brandlist:[],
          handlist:[]
        }
      },
      created(){
        this.getSliderImg(),
        this.getAllLike(),
        this.getBrand(),
        this.getHand()
      },
      methods:{
        getSliderImg(){
          this.$http.get("homeimg/list")
          .then(result=>{
            var obj=result.body
            if(obj.code==1){
              this.list=obj.msg;
            }else{
              Toast("轮播图片请求失败")  
            }
          })
        },
        getAllLike(){
          this.$http.get("homeimg/likelist")
          .then(result=>{
            var obj=result.body
            if(obj.code==1){
              this.likelist=obj.msg;
            }else{
              Toast("大家喜欢请求失败")  
            }
          })
        },
        getBrand(){
          this.$http.get("homeimg/brandlist")
          .then(result=>{
            var obj=result.body
            if(obj.code==1){
              this.brandlist=obj.msg;
            }else{
              Toast("设计师品牌请求失败")  
            }
          })
        },
        getHand(){
          this.$http.get("homeimg/handlist")
          .then(result=>{
            var obj=result.body
            if(obj.code==1){
              this.handlist=obj.msg;
            }else{
              Toast("设计师品牌请求失败")  
            }
          })
        }
      }
  }
</script>
<style>
  .mui-input-row.mui-search{
    margin-top:10px;
  }
  /*父元素高度为0 设置高度 200px*/
  .app .mint-swipe{
    height:200px;
    margin-top:0;
  }
  /*修改图片轮播中图片的样式 自适应宽度*/
  .app .mint-swipe img{
    width:100%;
    height:100%;
  }
  .mui-table-view.mui-grid-view.mui-grid-9{
    background-color:#fff; 
  }
  .mui-table-view-cell.mui-media.mui-col-xs-3.mui-col-sm-3{
    padding: 0 15px;
  }
  .mui-table-view-cell.mui-media.mui-col-xs-3.mui-col-sm-3 img{
    width:100%;
    padding: 0;
  }
  .mui-card{
    background-color:#efeff4;
  }
  .likefont{
    font-size:10px !important; 
  }
  .h5_title{
    color:black;
    background-color:#fff;
    font-size:1.2rem;
    text-align: center;
    margin: 10px 0;
  }
  .h5_text{
    background-color:#fff;
    text-align:center;
  }
  .morebrand{
    display:inline-block;
    width: 100px;
    height: 100px;
    padding-top: 1.5rem;
    background-color: #fff;
    font-size:14px;
    border:5px solid black;
    border-radius: 50%;
  }
  .app .mui-content{
    margin-top:-40px;
  }
</style>