//main  加载所有资源,(组件:js/css/...)创建vue实例对象
import Vue from 'vue'
import App from './App.vue'
//1.加载路由模块
import router from './router'
//1.1:加载VueReseource
import VueResource from 'vue-resource'
//1.2:注册,将VueResource加载到实例对象vue
Vue.use(VueResource);
//1.2.1设置请求根路径(服务器地址)
Vue.http.options.root="http://127.0.0.1:3000/"
//1.2.2创建全局过滤器,
Vue.filter("datatimeFilter",function(val){
  var date=new Date(val);
  var y=date.getFullYear();
  var m=date.getMonth()+1;
  m<10&&(m="0"+m);
  var d=date.getDate();
  d<10&&(d="0"+d);
  var h=date.getHours();
  h>12&&(h-=12);
  h<10&&(h="0"+h);
  var M=date.getMinutes();
  M<10&&(M="0"+M);   
  return `${y}-${m}-${d} ${h}:${M}`;
})

//引入完整的mint-ui
import MintUI from "mint-ui"
Vue.use(MintUI)
//1.6:引入mui的css
import "./lib/mui/css/mui.css"
import "./lib/mui/css/icons-extra.css"
//import "./lib/mui/js/mui.js"

import "./lib/js/jquery-1.11.3"
//1.7引入mint-ui组件所需的样式文件
//默认查找文件路径
//node_modules/mint-ui/lib/style.css
import "mint-ui/lib/style.css"

//2.是否是生产模式  false
Vue.config.productionTip = false;

//3.创建一个vue实例对象挂载到public/index.html#app
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
