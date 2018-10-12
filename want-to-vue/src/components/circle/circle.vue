<template> 
    <div class="app">
      <header id="header" class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/circle"></router-link>
			  <h1 class="mui-title">圈子</h1>
		  </header>
      <div class="info-body">
        <div class="title">
          <img :src="circleinfo.head">
          <div>
            <p class="title-item">发表时间:{{circleinfo.datas}}</p>
            <p class="title-item">作者:{{circleinfo.uname}}</p>
            <p class="title-item">喜欢:{{circleinfo.readr}}</p>
            <p class="title-item">收藏:{{circleinfo.collect}}</p>
          </div>
        </div>
        <div class="info-text">
          {{circleinfo.texts}}
        </div> 
        <h3>评论</h3>
        <comment-box :id="this.id"></comment-box>
      </div>
    </div>
</template>
<script>
  import {Toast} from 'mint-ui'
  import comment from '../subcomponents/comment.vue'
  export default {
    data(){
        return {
            id:1,
            circleinfo:{}
        }
    },
    created(){
        this.getCircleInfo() 
    },
    methods:{
      getCircleInfo(){
        this.$http.get("circle/circlelist?id="+this.id)
        .then(result=>{
          var obj=result.body
          if(obj.code==1){
            this.circleinfo=obj.msg[0];
          }else{
            Toast("数据请求失败")  
          }
        })
      },
    },
    components:{
      'comment-box':comment 
    }
  }
</script>
<style scoped>
.title{
  padding:5px;
  border-bottom:1px solid #999;
  display:flex;
  margin-bottom:5px;
}
.title img{
  width:20%;
  height:20%;
  margin:10px;
}
.title-item{
  margin:1px 5px;
}
.info-text{
  font-size:16px;
  line-height:1.5rem;
  text-indent:1.5rem;
  padding:15px 15px;
  border-bottom:1px solid #999;
}
h3{
  font-size:18px;
  text-align:center;
  padding:5px 0;
}
</style>