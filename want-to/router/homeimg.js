//1.引入模块
const express=require("express");
//2.创建一个对象
var router=express.Router();
var pool=require("../pool")
//3.处理请求   GET   /list
//图片轮播查询列表
router.get("/list",(req,res)=>{
  //3.1:参数   (不要)
  //3.2:sql   
  var sql=`SELECT id,img_url,title FROM sliderimg`;
  //3.3:返回数据
  pool.query(sql,(err,result)=>{
    //查询结果是否出现错误,如果出现直接抛出
    if(err)throw err;
    if(result.length>0){//result数组
      //将结果返回给客户端
      //返回数据 1.告诉客户端成功还是失败   1正确  -1失败
      //返回数据 2.返回查询结果
      res.send({code:1,msg:result});
    }else{
      res.send({code:-1,msg:"请求错误"})
    }
    res.end()
  })
})
router.get("/likelist",(req,res)=>{
  var sql=`SELECT id,img_url,content FROM all_like`;
  //3.3:返回数据
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }else{
      res.send({code:-1,msg:"请求错误"})
    }
    res.end()
  })
})
router.get("/brandlist",(req,res)=>{
  var sql=`SELECT id,img_url,title FROM brand`;
  //3.3:返回数据
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }else{
      res.send({code:-1,msg:"请求错误"})
    }
    res.end()
  })
})
router.get("/handlist",(req,res)=>{
  var sql=`SELECT id,img_url,title,att FROM handwork`;
  //3.3:返回数据
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }else{
      res.send({code:-1,msg:"请求错误"})
    }
    res.end()
  })
})
//4.导出router对象
module.exports=router;