<template> 
  <div class="app">
    <header id="header" class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/mine"></router-link>
			<h1 class="mui-title">登录</h1>
		</header>
    <div class="login">
      <p class="login-item active">快捷登录</p>
      <p class="login-item">账号登录</p>
    </div>
    <div class="inp">
      <p>
        <input type="text" class="inp-item" placeholder="请输入手机号码">
      </p>
      <p>
        <input type="text" class="inp-item" placeholder="请输入验证码">
        <input type="button" class="inp-item-btn" value="发送验证码">
      </p>
    </div>
    <div>
      <p class="login-inp">
        <input type="button" value="登录" class="inp-bg">
      </p>
      <p class="login-logo">
        <img src="../../assets/logo_xl3.png">
        <img src="../../assets/logo_qq3.png">
      </p>
    </div>
  </div>
</template>
<script>
  export default {
      data(){
          return {}
      },
      methods:{

      }

  }
</script>
<style  scoped>
.login{
  padding:0 5px;
}
.login-item{
  color:#000;
  font-size:16px;
  display:inline-block;
  width:50%;
  text-align:center;
  padding:10px 0;
  border-bottom:1px solid #aaa;
}
.login-item.active{
  border-bottom:2px solid #000;
}
.inp{
  margin:0 5px;
  position:relative;
}
.inp-item{
  border:0px;
  border-radius:0;
  background:#efeff4;
  border-bottom:1px solid #aaa;
  padding:5px 15px;
  margin:0;
  font-size:16px;
}
.inp-item-btn{
  border:0;
  font-size:16px;
  position:absolute;
  right:5px;
  bottom:10px;
}
.login-inp{
  padding:10px;
}
.inp-bg{
  width:100%;
  padding:15px;
  font-size:16px;
  border:0px;
  color:#fff;
  background:#373737;
}
.login-logo{
  text-align:center;
}
.login-logo img{
  width:15%;
  margin:20px 20px;
}
</style>