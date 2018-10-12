const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/circlelist",(req,res)=>{
  var sql=`SELECT id,uname,head,datas,img_url,texts,readr,collect FROM circle`;
  pool.query(sql,(err,result)=>{
    res.send({code:1,msg:result})
  })
})
module.exports=router;