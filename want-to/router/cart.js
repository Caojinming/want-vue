const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/cartlist",(req,res)=>{
  var sql=`SELECT uid,count,img_url,title,price FROM cart`;
  pool.query(sql,(err,result)=>{
    res.send({code:1,msg:result})
  })
})
module.exports=router;