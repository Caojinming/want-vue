/*创建指定库 want-to*/
SET names utf8;
DROP DATABASE IF EXISTS want_to;
/*建议:库名,表名,列名,英文全小写*/
CREATE DATABASE want_to CHARSET=utf8;
/*进入 want-to库中*/
USE want_to;
/*首页数据*/
/*轮播图*/
CREATE TABLE sliderimg(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128)
);
INSERT INTO sliderimg VALUES(null,"http://127.0.0.1:3000/img/1.1.jpg","潮T入夏,凹型必备");
INSERT INTO sliderimg VALUES(null,"http://127.0.0.1:3000/img/1.2.jpg","两针一线学珍惜");
INSERT INTO sliderimg VALUES(null,"http://127.0.0.1:3000/img/1.3.jpg","最好的餐桌时光");
INSERT INTO sliderimg VALUES(null,"http://127.0.0.1:3000/img/1.4.jpg","说走就走的夏天");
INSERT INTO sliderimg VALUES(null,"http://127.0.0.1:3000/img/1.5.jpg","S A L A M A  F R I C A");
/*大家喜欢*/
USE want_to;
CREATE TABLE all_like(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  content VARCHAR(128)
);
INSERT INTO all_like VALUES(null,"http://127.0.0.1:3000/img/index1.png","喜欢了4个作品♥");
INSERT INTO all_like VALUES(null,"http://127.0.0.1:3000/img/index2.png","喜欢了3个作品♥");
INSERT INTO all_like VALUES(null,"http://127.0.0.1:3000/img/index3.png","喜欢了2个作品♥");
INSERT INTO all_like VALUES(null,"http://127.0.0.1:3000/img/index4.png","喜欢了4个作品♥");
/*设计师品牌*/
USE want_to;
CREATE TABLE brand(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128)
);
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/p7.jpg","NANAZ 创意家居");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/p8.jpg","enson9安森玖");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/p9.jpg","新叶集");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/p10.jpg","EIGHTSENSE八觉");
INSERT INTO brand VALUES(null,"http://127.0.0.1:3000/img/p11.jpg","泡泡眼啊");
/*手工艺人*/
USE want_to;
CREATE TABLE handwork(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128),
  att int
);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g2.jpg","豆蔻手工馆",223);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g3.jpg","Creative Amazing",445);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g4.jpg","奇美工坊",668);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g5.jpg","青木古器",779);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g6.jpg","饕餮老爸",554);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g7.jpg","叁公馆四人定制",485);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/g1.jpg","Pan Hand Crafted",852);
INSERT INTO handwork VALUES(null,"http://127.0.0.1:3000/img/r5.jpg","木匠",852);
/*逛 推荐*/
USE want_to;
CREATE TABLE recommend(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128),
  price decimal(10,2)
);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang1.jpg","2.1 studio",180);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang2.jpg","Inter studio",229);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang3.jpg","Inter studio",169);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang4.jpg","ERICD",180);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang5.jpg","衫野制作",280);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang6.jpg","Wfstwoman",420);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang7.jpg","LIU柳下",320);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang8.jpg","橙舍竹文化",230);
INSERT INTO recommend VALUES(null,"http://127.0.0.1:3000/img/guang9.jpg","2.1 studio",198);
/*最新*/
USE want_to;
CREATE TABLE new(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128),
  price decimal(10,2)
);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian1.jpg","2.1 studio",180);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian2.jpg","Inter studio",229);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian3.jpg","Inter studio",169);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian4.jpg","ERICD",180);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian5.jpg","衫野制作",280);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian6.jpg","Wfstwoman",420);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian7.jpg","LIU柳下",320);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian8.jpg","橙舍竹文化",230);
INSERT INTO new VALUES(null,"http://127.0.0.1:3000/img/tuijian9.jpg","2.1 studio",198);
/*最热*/
USE want_to;
CREATE TABLE hot(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(128),
  price decimal(10,2)
);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r1.jpg","2.1 studio",180);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r2.jpg","Inter studio",229);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r3.jpg","Inter studio",169);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r4.jpg","ERICD",180);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r5.jpg","衫野制作",280);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r6.jpg","Wfstwoman",420);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r7.jpg","LIU柳下",320);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r8.jpg","橙舍竹文化",230);
INSERT INTO hot VALUES(null,"http://127.0.0.1:3000/img/r9.jpg","2.1 studio",198);

/*购物车*/
USE want_to;
CREATE TABLE cart(
  uid   INT,
  count VARCHAR(16),
  img_url VARCHAR(255),
  title VARCHAR(128),
  price decimal(10,2)
);
INSERT INTO cart VALUES(1,2,"http://127.0.0.1:3000/img/r1.jpg","2.1 studio",180);
INSERT INTO cart VALUES(1,3,"http://127.0.0.1:3000/img/guang2.jpg","Inter studio",229);
INSERT INTO cart VALUES(1,4,"http://127.0.0.1:3000/img/tuijian3.jpg","Inter studio",169);

/*圈子文章*/
/*购物车*/
USE want_to;
CREATE TABLE circle(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16),
  head VARCHAR(256),
  datas VARCHAR(128),
  img_url VARCHAR(256),
  texts VARCHAR(1024),
  readr INT,
  collect INT
);
INSERT INTO circle VALUES(null,"张三","http://127.0.0.1:3000/img/head/1.jpg/","2018-09-26 17:30","http://127.0.0.1:3000/img/circle1.jpg","
上学的时候
班上有个男生
背邮差包骑死飞
觉得他好帅
比打篮球的男生还让人心动
后来工作了，稳重了
再后来，街上的邮差包越来越多
渐觉稀松平常
直到看到他们~
太帅了，有木有？！
事件始末：
7月，Arkipelagus & PRAGMATY   “GOOD NEWS” 系列报童包&钱包在偶屿生活馆实体抢先发售。帅哥店员又双叒迅速行动，PO出了一波“靓照”。
出镜帅哥模特：
偶屿生活馆店长+咖啡师
Arkipelagus X Pragmaty 
17AW 限定合作报童包/钱包
报纸的大众时代，促进了信息的共享和社会的进步，这是一个值得纪念的时代。从当时大量出现的报童身上我们提取了这个时代的积极能量：
生活不易，且认真去努力。总会有Good News。
△ 围绕“GOOD NEWS”主题，二代限量报童包/钱包以包面丝网印“GOOD NEWS”广告形式，有力而清楚（LOUD & CLEAR）地传播大家喜闻乐见的“好消息”，以及积极向上的能量与对美好生活的祝福。
△所有包面印花均为全手工丝印，简洁清晰，旨在追求更加纯粹自然复古的初期印花质感，为你带来每一件独一无二的SPECIAL DELIVERY。
该款合作限量报童包/钱包8月7正式出售，喜欢尝鲜的朋友，不要错过，把Good News 带回家。",123,123);

/*评论列表*/
CREATE TABLE comment(
  id   INT PRIMARY KEY AUTO_INCREMENT,
  username  VARCHAR(25),
  add_time  DATETIME,
  content   VARCHAR(255),
  nid       INT
);
INSERT INTO comment VALUES(null,"李四",now(),"hi",1);
INSERT INTO comment VALUES(null,"李四",now(),"hi",1);
INSERT INTO comment VALUES(null,"李四",now(),"hi",1);
INSERT INTO comment VALUES(null,"李四",now(),"hi",1);
INSERT INTO comment VALUES(null,"dd",now(),"hi",1);
INSERT INTO comment VALUES(null,"dd",now(),"hi",1);
INSERT INTO comment VALUES(null,"dd",now(),"hi",1);
INSERT INTO comment VALUES(null,"dd",now(),"hi",1);
INSERT INTO comment VALUES(null,"王五",now(),"hi",1);
INSERT INTO comment VALUES(null,"王五",now(),"hi",1);