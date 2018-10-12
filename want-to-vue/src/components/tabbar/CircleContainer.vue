<template> 
    <div class="app">
        <header id="header" class="mui-bar mui-bar-nav">
			<h1 class="mui-title">圈子</h1>
		</header>
        <div class="mui-content">
			<div class="mui-card" v-for="item in circlelist">
				<div class="mui-card-header mui-card-media">
					<img :src="item.head" />
					<div class="mui-media-body">
						{{item.uname}}
						<p>发表于 {{item.datas}}</p>
					</div>
				</div>
				<div class="mui-card-content" >
					<img :src="item.img_url" width="100%"/>
				</div>
				<div class="mui-card-footer">
					<a class="mui-card-link">喜欢:{{item.collect}}</a>
					<router-link class="mui-card-link" to="/circle/circleinfo">阅读更多</router-link>
				</div>
			</div>
        </div>
    </div>
</template>
<script>
  export default {
      data(){
          return {
              circlelist:[]
          }
      },
      created(){
         this.getCircleList() 
      },
      methods:{
        getCircleList(){
          this.$http.get("circle/circlelist")
          .then(result=>{
            var obj=result.body
            if(obj.code==1){
              this.circlelist=obj.msg;
            }else{
              Toast("数据请求失败")  
            }
          })
        },

      }

  }
</script>
<style scoped>
</style>