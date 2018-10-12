<template>
  <div class="mui-content">
    <header id="header" class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/home"></router-link>
			<h1 class="mui-title">逛</h1>
		</header>
    <div style="padding: 50px 10px;">
      <div id="segmentedControl" class="mui-segmented-control">
        <a data-toggle="tab" class="mui-control-item mui-active" href="#item1">推荐</a>
        <a data-toggle="tab" class="mui-control-item" href="#item2">最新</a>
        <a data-toggle="tab" class="mui-control-item" href="#item3">最热</a>
      </div>
    </div>
    <div id="scroll" class="mui-scroll-wrapper">
      <div class="mui-scroll z-active" id="item1">
        <ul class="mui-table-view">
          <li class="mui-table-view-cell" v-for="item in reclist">
            <router-link to="/home/stroll/details">
              <div class="recommend-img"><img :src="item.img_url"></div>
              <div class="recommend-price">￥{{item.price}}</div>
              <div class="recommend-title">{{item.title}}</div>
              <div class="recommend-type">设计师原创</div>
            </router-link>
          </li>
        </ul>
      </div>
      <div class="mui-scroll" id="item2">
        <ul class="mui-table-view">
          <li class="mui-table-view-cell" v-for="item in newlist">
            <router-link to="/home/stroll/details">
              <div class="recommend-img"><img :src="item.img_url"></div>
              <div class="recommend-price">￥{{item.price}}</div>
              <div class="recommend-title">{{item.title}}</div>
              <div class="recommend-type">设计师原创</div>
            </router-link>
          </li>
        </ul>
      </div>
      <div class="mui-scroll" id="item3">
        <ul class="mui-table-view">
          <li class="mui-table-view-cell" v-for="item in hotlist">
            <router-link to="/home/stroll/details">
              <div class="recommend-img"><img :src="item.img_url"></div>
              <div class="recommend-price">￥{{item.price}}</div>
              <div class="recommend-title">{{item.title}}</div>
              <div class="recommend-type">设计师原创</div>
            </router-link>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
  export default{
    data(){
      return{
        reclist:[],
        newlist:[],
        hotlist:[]
      };
    },
    created(){
      this.getRecommend(),
      this.getNewList(),
      this.getHotList()
    },
    mounted(){
      this.change()
		},
    methods:{
      change(){
				$(".mui-control-item").click(function(e){ 
					var $btn =$(this);                
					if(!$btn.hasClass("mui-active")){  
						$btn.addClass("mui-active");
						$btn.siblings().removeClass("mui-active");                   
					}else{    
						$btn.addClass("mui-active"); 
						$btn.siblings().removeClass("mui-active");
					}
          var id=$btn.attr("href");
          $(id).addClass("z-active").siblings().removeClass("z-active");                   
				})
			},
      getRecommend(){
        this.$http.get("stroll/recommend")
        .then(result=>{
          var obj=result.body
          if(obj.code==1){
            this.reclist=obj.msg;
          }else{
            Toast("最新请求失败")  
          }
        })
      },
      getNewList(){
        this.$http.get("stroll/newlist")
        .then(result=>{
          var obj=result.body
          if(obj.code==1){
            this.newlist=obj.msg;
          }else{
            Toast("最新请求失败")  
          }
        })
      },
      getHotList(){
        this.$http.get("stroll/hotlist")
        .then(result=>{
          var obj=result.body
          if(obj.code==1){
            this.hotlist=obj.msg;
          }else{
            Toast("最新请求失败")  
          }
        })
      }
    }
  };
</script>
<style scoped>
.mui-card .mui-control-content {
				padding: 10px;}
.mui-control-content {
				height: 150px;
}
#scroll{
  margin-top:100px;
}
.mui-action-back.mui-icon.mui-icon-left-nav.mui-pull-left{
  color:#fff;
}
.mui-scroll{
  visibility:hidden;
}
.mui-scroll.z-active{
  z-index: 10;
  visibility:visible;
  overflow:scroll;
  height:90%;
}
.mui-table-view-cell{
  background-color: #fff;
  text-align: center;
  width: 45%;
  padding: 5px;
  margin: 8px;
  float: left;
  border: 0px solid black;
  border-radius: 10px;
  line-height: 1.5rem
}
#segmentedControl.mui-segmented-control{
  border:1px solid black;
}
#segmentedControl .mui-control-item{
  color:black;
  border-left:1px solid black;
}
#segmentedControl .mui-control-item.mui-active{
  background-color: black;
  color:#fff;
}
.recommend-img img{
  width:100%;
  height: 100%;
}
.recommend-price{
  font-size: 24px;
}
.recommend-title{
  font-size: 16px;
  margin-top: 5px;
  font-weight:bold;
  color:#666;
}
.recommend-type{
  font-size:14px;
  color:#666;
}
</style>
