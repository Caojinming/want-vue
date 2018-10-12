//app.js
//1:引相应模块  express
const express=require("express");
const pool=require("./pool");
//1.1 加载路由模块  路由：请求方式，请求地址，处理函数
const homeImg=require("./router/homeimg");
const strollList=require("./router/strolllist");
const cart=require("./router/cart")
const circle=require("./router/circle")
const commentlist=require("./router/commentlist")

//2:创建express 对象
var app=express();
var cors=require("cors");

//配置跨域请求
app.use(cors({
  orign:["http://127.0.0.1:8080","http://localhost:8080"],//允许那个地址跨域
  credentials:true
}))
//3：绑定监听端口
app.listen(3000);
//4：指定静态目录  public
app.use(express.static(__dirname+"/public"));
//5.将路由模块挂载入口文件
app.use("/homeimg",homeImg);
app.use("/stroll",strollList);
app.use("/cart",cart)
app.use("/circle",circle)
app.use("/commentlist",commentlist)