<template>
  <div class="app app-container">
    <router-view></router-view>
    <nav class="mui-bar mui-bar-tab">
			<div class="mui-tab-item mui-active change" @click="toHome">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</div>
			<div class="mui-tab-item change" @click="toCircle">
				<span class="mui-icon mui-icon-pengyouquan"></span>
				<span class="mui-tab-label">圈子</span>
			</div>
			<div class="mui-tab-item change" @click="toCart">
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart"><span class="mui-badge">0</span></span>
				<span class="mui-tab-label">购物车</span>
			</div>
			<div class="mui-tab-item change" @click="toMine">
				<span class="mui-icon mui-icon-person"></span>
				<span class="mui-tab-label">我的</span>
			</div>
		</nav>
  </div>
</template>
<script>
  export default{
    data(){
      return{};
    },
    mounted(){
      this.change();
		},
		methods:{
			change(){
				$(".change").click(function(){ 
					var $btn =$(this);                
					if(!$btn.hasClass("mui-active")){  
						$btn.addClass("mui-active");
						$btn.siblings().removeClass("mui-active");                            
					}else{    
						$btn.addClass("mui-active"); 
						$btn.siblings().removeClass("mui-active");
					}                        
				})
			},
			toHome(){this.$router.push("/home")},
			toCircle(){this.$router.push("/circle")},
			toCart(){this.$router.push("/cart")},
			toMine(){this.$router.push("/mine")}
		}
	}
</script>
<style>
  .app-container{
		/*mt-header 固定布局显示子组件 */
		padding-top:44px;
		/*tabbar 固定底部显示组件*/
		padding-bottom:50px;
	}
  .app .mui-bar.mui-bar-nav{
    background-color:black;
  }
  .app .mui-title{
     color:#fff;
  }
  .app .mui-bar.mui-bar-tab{
    background-color:black;
  }
</style>
