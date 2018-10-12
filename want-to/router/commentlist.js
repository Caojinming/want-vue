//node.js 服务器
//留言列表
//1.引入模块
const express=require("express");
//2.创建一个对象
var router=express.Router();
var pool=require("../pool")
//3.处理请求   分页查询留言列表的请求
router.get("/list",(req,res)=>{
  //参数 nid 新闻编号;pon 页码
  var nid=req.query.nid;
  var pno=req.query.pno;
  //为页码设置一个值
  if(!pno){pno=1}
  //创建正则表达式验证参数是否正确    阻止危险字符进入数据库
  var reg=/^[0-9]{1,}$/i;
  if(!reg.test(pno)){
    res.send({code:-1,msg:"页码格式错误"});
    return;
  }
  if(!reg.test(nid)){
    res.send({code:-2,msg:"新闻格式错误"});
    return;
  }
  //创建sql
  var sql="SELECT id,username,add_time,content,nid FROM comment WHERE nid=? LIMIT ?,? ";
  var pageSize=3;                 //页大小
  var offset=parseInt((pno-1)*pageSize);   //查询偏移量
  nid=parseInt(nid); 
  //返回的json
  pool.query(sql,[nid,offset,pageSize],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:result})
  })
})
//4.发表留言
router.get("/postcomment",(req,res)=>{
  //添加一个评论信息
  var username=req.query.username;
  var content=req.query.content;
  var nid=req.query.nid;
  var sql="INSERT INTO comment (username,add_time,content,nid) VALUES(?,now(),?,?)"
  pool.query(sql,[username,content,nid],(err,result)=>{
    if(err)throw err;
    res.send({code:1,msg:"发表成功"})
  })
})
//5.导出router对象
module.exports=router;