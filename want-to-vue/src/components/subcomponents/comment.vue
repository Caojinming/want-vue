<template>
  <div class="cmt-container">
    <hr/>
    <!--发表评论的区域-->
    <textarea placeholder="请输入评论内容(最多128字)" maxlength="128" v-model="msg">
    </textarea>
    <mt-button type="button" size="large" @click="postComment" class="pud-btn">发表</mt-button>
    <!--评论列表-->
    <div class="cmt-list">
      <div class="cmt-item" v-for="(item,i) in list" :key="item.id">
        <div class="cmt-title">
          第{{i+1}}楼&nbsp;&nbsp;用户:{{item.username}} &nbsp;发表时间:{{item.add_time | datatimeFilter}}
        </div>
        <div class="cmt-body">
          {{item.content}}
        </div>
      </div>
    </div>
    <mt-button type="default" size="large" @click="getMore">点击加载更多</mt-button>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui'
  //评论子组件值负责显示评论部分
  //通常某一个组件组成部分
  export default{
    data(){
      return {
        msg:"",
        list:[],
        pno:1
      }
    },
    created(){
      this.getComments()
    },
    methods:{
      getComments(){
        var nid=this.id;
        var p=this.pno;
        this.$http.get(`commentlist/list?nid=${nid}&pno=${p}`)
        .then(result=>{
          var obj=result.body;
          if(obj.code==1){
            //保存数据
            this.list=this.list.concat(obj.msg);
          }else{
            Toast("网络故障请检查")
          }
        })
      },
      postComment(){//发表评论
        //1.创建一个正则表达式,验证用户发表的留言,
        var m=this.msg.trim()
        if(m.length<3){
          Toast("亲,你发表的内容过少,请必须大于3个字符");
          return;
        }
        //2.如果过格式不正确,要提示
        //3.格式正确,发送ajax请求,nid,content
        var n=this.id;
        var url=`commentlist/postcomment?nid=${n}&username=ceshi&content=${m}`
        //4.判断
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            Toast(result.body.msg);
            this.msg="";
          }
        })
      },
      //加载更多
      getMore(){
        //1.当前页+1
        this.pno++;
        //2.调用查询的方法
        this.getComments();
      }
    },
    props:["id"]
  }
</script>
<style>
  .pud-btn{
      background:#aaa;
  }
  /*修改多行文本框 */
  .cmt-container textarea{
    font-size:14px;
    height:85px;
    margin:0px;
  }
  /*评论列表 */
  .cmt-container .cmt-list{
    margin:5px;
  }
  .cmt-container .cmt-list .cmt-item{
    font-size:13px;
  }
  .cmt-container .cmt-list .cmt-item  .cmt-title{
    line-height:30px;
    background:#ccc;
  }
  .cmt-container .cmt-list .cmt-item  .cmt-body{
    line-height:30px;
    text-indent:2rem;
  }
</style>