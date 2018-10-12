const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/recommend",(req,res)=>{
  var sql=`SELECT id,img_url,title,price FROM recommend`;
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
router.get("/newlist",(req,res)=>{
  var sql=`SELECT id,img_url,title,price FROM new`;
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
router.get("/hotlist",(req,res)=>{
  var sql=`SELECT id,img_url,title,price FROM hot`;
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
module.exports=router;