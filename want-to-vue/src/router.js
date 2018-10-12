import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import About from './views/About.vue'
import HomeContainer from "./components/tabbar/HomeContainer.vue"
import CircleContainer from "./components/tabbar/CircleContainer.vue"
import MineContainer from "./components/tabbar/MineContainer.vue"
import ShopContainer from "./components/tabbar/ShopContainer.vue"
import HomeStroll from "./components/stroll/strolllist.vue"
import Details from "./components/stroll/details.vue"
import Login from "./components/login/login.vue"
import Circle from "./components/circle/circle"


Vue.use(Router)

export default new Router({
  routes: [
    {path:"/",redirect:"/home"}, 
    {path:'/home',component:HomeContainer},
    {path:'/circle',component:CircleContainer},
    {path:'/mine',component:MineContainer}, 
    {path:'/cart',component:ShopContainer},   
    {path:'/home/stroll',component:HomeStroll},  
    {path:'/home/stroll/details',component:Details},
    {path:'/mine/login',component:Login},
    {path:'/circle/circleinfo',component:Circle}
  ] 
})
