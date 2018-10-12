<template>
  <div class="app">
    <header id="header" class="mui-bar mui-bar-nav">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/home/stroll"></router-link>
			<h1 class="mui-title">详情</h1>
		</header>
    <!--轮播图-->
    <mt-swipe :auto="4000" class="swiper_img">
        <mt-swipe-item class="swiper_item">
          <img src="../../img/details1.jpg">
        </mt-swipe-item>
        <mt-swipe-item class="swiper_item">
          <img src="../../img/details2.jpg">
        </mt-swipe-item>
    </mt-swipe>
    <!--价格标题-->
    <div class="mui-card">
      <div class="mui-card-header">独立设计师原创中长袖宽松荷叶袖上衣</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <p>设计师:高禄</p>
          <p>品牌:2.1 studio</p>
          <p>库存:223</p>
          <p>
            型号:
            <a>XS</a>
            <a>S</a>
            <a>M</a>
            <a>L</a>
          </p>
        </div>
      </div>
      <div class="mui-card-footer">
        <p class="price">
          <span>¥288</span>
        </p>
        <p>
          <span class="count">数量</span>
          <div class="mui-numbox">
            <button class="mui-btn mui-btn-numbox-minus" type="button" @click="minus" v-show="count>1">-</button>
            <input class="mui-input-numbox" type="number" value="1" v-model="count"/>
            <button class="mui-btn mui-btn-numbox-plus" type="button" @click="add">+</button>
          </div>
        </p>
      </div>
      <div class="mui-card-footer">
        <mt-button type="primary" size="small">立即购买</mt-button>
        <mt-button type="danger" size="small">加入购物车</mt-button>
      </div>
    </div>
    <!--图片详情-->
    <div class="mui-card">
      <div class="mui-card-header">
        <div id="segmentedControl" class="mui-segmented-control mui-segmented-control-inverted">
          <a data-toggle="tab" class="mui-control-item mui-active" href="#item1">图片</a>
          <a data-toggle="tab" class="mui-control-item" href="#item2">评论</a>
          <a data-toggle="tab" class="mui-control-item" href="#item3">说明</a>
        </div>
      </div>
      <div class="mui-card-content mui-card-content-inner">
        <div id="scroll" class="mui-scroll-wrapper">
          <div class="mui-scroll z-active" id="item1">
            <ul class="mui-table-view">
              <li class="mui-table-view-cell">
                <div class="miao">
                  <video src="../../assets/mp4/1.mp4" autoplay></video>
                  <img src="../../img/miao1.jpg">
                  <img src="../../img/miao2.jpg">
                  <img src="../../img/miao3.png">
                  <img src="../../img/miao4.png">
                  <img src="../../img/miao5.png">
                  <img src="../../img/miao6.png">
                </div>
              </li>
            </ul>
          </div>
          <div class="mui-scroll" id="item2">
            <ul class="mui-table-view">
              <li class="mui-table-view-cell">   
                <comment-box :id="this.id"></comment-box>
              </li>
            </ul>
          </div>
          <div class="mui-scroll" id="item3">
            <ul class="mui-table-view">
              <li class="mui-table-view-cell">
                <h5>广告禁用词</h5>
                <p>根据新广告法规定，所有页面不得出现广告禁用词。我们在此郑重表态：支持新广告法，也为了不影响消费者正常购物，我们已经在排查修改；本页面所有广告禁用词在此声明失效，不作为赔付理由，请为真正的消费者让路。维权是双向的，希望各位消费者理解，在此感谢！</p>
                <h5>页面价格</h5>
                <p>划线价格指商品的吊牌价、品牌指导价或该商品的曾展示过的销售价等，并非原价，仅供参考。无划线价格指商品的实时销售价，不因表述的差异改变性质。具体成交价格根据商品参加活动，或会员使用优惠券/码、有货币等发生变化，最终以订单结算页价格为准。</p>
                <h5>价格异常</h5>
                <p>可能因为存在系统缓存、页面延迟等异常情况，导致价格、促销或其他类型活动显示异常，商品具体结算信息以订单结算页面显示为准。如您发现此类情况，请立即联系我们客服调整。</p>
                <p>此说明仅当出现价格比较时有效，若商家单独对价格进行说明的，以商家的表述为准。</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom">
      <img src="../../img/logo.png">
    </div>
  </div>
</template>
<script>
  import {Toast} from 'mint-ui'
  import comment from '../subcomponents/comment.vue'
  export default{
    data(){
      return {
        count:1,
        id:1
      }
    },
    created(){

    },
    mounted(){
      this.change()
		},  
    methods:{ 
      add(){
        this.count++
      },
      minus(){
        this.count--
      },
      change(){
				$(".mui-control-item").click(function(e){ 
					var $btn =$(this);                
					if(!$btn.hasClass("mui-active")){  
						$btn.addClass("mui-active");
						$btn.siblings().removeClass("mui-active");                   
					}else{    
						$btn.addClass("mui-active"); 
						$btn.siblings().removeClass("mui-active");
					}
          var id=$btn.attr("href");
          $(id).addClass("z-active").siblings().removeClass("z-active");                   
				})
			}
    },
    components:{
      'comment-box':comment 
    }
  }
</script>
<style scoped>
  .swiper_img{
    height:375px;
    padding:20px;
    background:#fff;
  }
  .swipe_item{
    height:375px;
  }
  .swipe_item img{
    width:100%;
  }
  .price{
    font-size:26px;
    color:red;
    margin-top:5px;
    margin-bottom:5px;
    margin-left:15px;
  }
  .count{
    display:inline-block;
    color:black;
    font-size:16px;
    padding-top:10px;
  }
  .mui-card{
    margin:10px 0;
  }
  .mui-card-content-inner>p a{
    display:inline-block;
    color:#888;
    width:30px;
    height:20px;
    border:1px solid #000;
    text-align:center;
    margin:0 10px;
  }
  .mui-card-content-inner>p a:hover{
    background:black;
    color:#fff;
  }
  .mui-card-footer{
    display:flex;
  }
  .mui-card-footer .mint-button--small{
    padding:0 45px;
  }
  .miao img{
    width:100%;
  }
  .bottom img,video{
    width:100%;
    padding:0px;
  }
  .mui-card-content.mui-card-content-inner{
		height:450px;
  }
  .mui-scroll{
    visibility:hidden;
  }
  .mui-scroll.z-active{
    z-index: 10;
    visibility:visible;
    overflow:scroll;
    height:100%;
  }
  .mui-table-view-cell h5{
    color:black;
  }
</style>