-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootc8hzm
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336962598 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-01-11 03:35:01',1,1,'提问1','回复1',1),(52,'2021-01-11 03:35:01',2,2,'提问2','回复2',2),(53,'2021-01-11 03:35:01',3,3,'提问3','回复3',3),(54,'2021-01-11 03:35:01',4,4,'提问4','回复4',4),(55,'2021-01-11 03:35:01',5,5,'提问5','回复5',5),(56,'2021-01-11 03:35:01',6,6,'提问6','回复6',6),(1610336663286,'2021-01-11 03:44:22',1610336516339,NULL,'你好',NULL,0),(1610336962597,'2021-01-11 03:49:21',1610336516339,1,NULL,'你好',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootc8hzm/upload/1610336445098.png'),(2,'picture2','http://localhost:8080/springbootc8hzm/upload/1610336455892.png'),(7,'首页轮播图上传的地方','http://localhost:8080/springbootc8hzm/upload/1610336983475.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyinlefanchang`
--

DROP TABLE IF EXISTS `discussyinlefanchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyinlefanchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336611742 DEFAULT CHARSET=utf8 COMMENT='音乐翻唱评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyinlefanchang`
--

LOCK TABLES `discussyinlefanchang` WRITE;
/*!40000 ALTER TABLE `discussyinlefanchang` DISABLE KEYS */;
INSERT INTO `discussyinlefanchang` VALUES (91,'2021-01-11 03:35:02',1,1,'评论内容1','回复内容1'),(92,'2021-01-11 03:35:02',2,2,'评论内容2','回复内容2'),(93,'2021-01-11 03:35:02',3,3,'评论内容3','回复内容3'),(94,'2021-01-11 03:35:02',4,4,'评论内容4','回复内容4'),(95,'2021-01-11 03:35:02',5,5,'评论内容5','回复内容5'),(96,'2021-01-11 03:35:02',6,6,'评论内容6','回复内容6'),(1610336611741,'2021-01-11 03:43:31',31,1610336516339,'四方达刚发的广东佛山',NULL);
/*!40000 ALTER TABLE `discussyinlefanchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyinlezixun`
--

DROP TABLE IF EXISTS `discussyinlezixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyinlezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336595180 DEFAULT CHARSET=utf8 COMMENT='音乐资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyinlezixun`
--

LOCK TABLES `discussyinlezixun` WRITE;
/*!40000 ALTER TABLE `discussyinlezixun` DISABLE KEYS */;
INSERT INTO `discussyinlezixun` VALUES (81,'2021-01-11 03:35:01',1,1,'评论内容1','回复内容1'),(82,'2021-01-11 03:35:01',2,2,'评论内容2','回复内容2'),(83,'2021-01-11 03:35:01',3,3,'评论内容3','回复内容3'),(84,'2021-01-11 03:35:01',4,4,'评论内容4','回复内容4'),(85,'2021-01-11 03:35:01',5,5,'评论内容5','回复内容5'),(86,'2021-01-11 03:35:01',6,6,'评论内容6','回复内容6'),(1610336595179,'2021-01-11 03:43:15',21,1610336516339,'f十多个发的给对方',NULL);
/*!40000 ALTER TABLE `discussyinlezixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixiantingge`
--

DROP TABLE IF EXISTS `discusszaixiantingge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixiantingge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336579503 DEFAULT CHARSET=utf8 COMMENT='在线听歌评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixiantingge`
--

LOCK TABLES `discusszaixiantingge` WRITE;
/*!40000 ALTER TABLE `discusszaixiantingge` DISABLE KEYS */;
INSERT INTO `discusszaixiantingge` VALUES (101,'2021-01-11 03:35:02',1,1,'评论内容1','回复内容1'),(102,'2021-01-11 03:35:02',2,2,'评论内容2','回复内容2'),(103,'2021-01-11 03:35:02',3,3,'评论内容3','回复内容3'),(104,'2021-01-11 03:35:02',4,4,'评论内容4','回复内容4'),(105,'2021-01-11 03:35:02',5,5,'评论内容5','回复内容5'),(106,'2021-01-11 03:35:02',6,6,'评论内容6','回复内容6'),(1610336579502,'2021-01-11 03:42:59',41,1610336516339,'食发鬼发的感到十分广东佛山',NULL);
/*!40000 ALTER TABLE `discusszaixiantingge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336628387 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (71,'2021-01-11 03:35:01',1,'用户名1','留言内容1','回复内容1'),(72,'2021-01-11 03:35:01',2,'用户名2','留言内容2','回复内容2'),(73,'2021-01-11 03:35:01',3,'用户名3','留言内容3','回复内容3'),(74,'2021-01-11 03:35:01',4,'用户名4','留言内容4','回复内容4'),(75,'2021-01-11 03:35:01',5,'用户名5','留言内容5','回复内容5'),(76,'2021-01-11 03:35:01',6,'用户名6','留言内容6','回复内容6'),(1610336628386,'2021-01-11 03:43:48',1610336516339,'123','手打尽快发货点事刚发的','电风扇广东佛山广东佛山');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336613583 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610336613582,'2021-01-11 03:43:32',1610336516339,31,'yinlefanchang','歌曲名称1','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','kvkl9qo2ftbpnoerwse5j2gymmowprp9','2021-01-11 03:37:58','2021-01-10 20:47:06'),(2,1610336516339,'123','yonghu','用户','oe3uo6b1dlmco52ul5i0qer5kmxw085f','2021-01-11 03:42:04','2021-01-10 20:42:04'),(3,1610336721398,'234','yonghu','用户','pqn40y4pukj82i222ncp7p5ne776snjs','2021-01-11 03:45:30','2021-01-10 20:45:31');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-11 03:35:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinlefanchang`
--

DROP TABLE IF EXISTS `yinlefanchang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinlefanchang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `yuanchang` varchar(200) DEFAULT NULL COMMENT '原唱',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `yinpin` varchar(200) DEFAULT NULL COMMENT '音频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fanchangyuanyin` longtext COMMENT '翻唱原因',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `gequjieshao` longtext COMMENT '歌曲介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336812705 DEFAULT CHARSET=utf8 COMMENT='音乐翻唱';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinlefanchang`
--

LOCK TABLES `yinlefanchang` WRITE;
/*!40000 ALTER TABLE `yinlefanchang` DISABLE KEYS */;
INSERT INTO `yinlefanchang` VALUES (31,'2021-01-11 03:35:01','编号1','歌曲名称1','原唱1','标签1','http://localhost:8080/springbootc8hzm/upload/1610336364110.mp3','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian1.jpg','翻唱原因1电风扇沪电股份很反感金龟换酒都是','用户名1','<p>歌曲介绍1的双方 回防高地回防高地发的各电风扇割发代首广东佛山</p>',2,2),(32,'2021-01-11 03:35:01','编号2','歌曲名称2','原唱2','标签2','','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian2.jpg','翻唱原因2','用户名2','歌曲介绍2',2,2),(33,'2021-01-11 03:35:01','编号3','歌曲名称3','原唱3','标签3','','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian3.jpg','翻唱原因3','用户名3','歌曲介绍3',3,3),(34,'2021-01-11 03:35:01','编号4','歌曲名称4','原唱4','标签4','','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian4.jpg','翻唱原因4','用户名4','歌曲介绍4',4,4),(35,'2021-01-11 03:35:01','编号5','歌曲名称5','原唱5','标签5','','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian5.jpg','翻唱原因5','用户名5','歌曲介绍5',5,5),(36,'2021-01-11 03:35:01','编号6','歌曲名称6','原唱6','标签6','','http://localhost:8080/springbootc8hzm/upload/yinlefanchang_tupian6.jpg','翻唱原因6','用户名6','歌曲介绍6',6,6),(1610336812704,'2021-01-11 03:46:52','1610336772465','泡沫','邓紫棋','伤感','http://localhost:8080/springbootc8hzm/upload/1610336804906.mp3','http://localhost:8080/springbootc8hzm/upload/1610336788700.jpg','发多少割发代首割发代首广东佛山g','234','<p>是大法官发多少广东佛山广东佛山广东佛山</p><p>发给很反感烦得很发过的回防高地hgf</p>',0,0);
/*!40000 ALTER TABLE `yinlefanchang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinlezixun`
--

DROP TABLE IF EXISTS `yinlezixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinlezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhaiyao` longtext COMMENT '摘要',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336871889 DEFAULT CHARSET=utf8 COMMENT='音乐资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinlezixun`
--

LOCK TABLES `yinlezixun` WRITE;
/*!40000 ALTER TABLE `yinlezixun` DISABLE KEYS */;
INSERT INTO `yinlezixun` VALUES (21,'2021-01-11 03:35:01','年度流行金曲，你不得不听的10大金曲','资讯类型1','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian1.jpg','摘要1阿斯蒂芬手打富士达富士达富士达fs','<p>详情1 富士达富士达富士达富士达非的故事</p><p>发过火发给回防高地很反感很反感回复回防高地</p><p>发的回防高地回防高地回防高地发的发的供货方大哥</p><p>士大夫电风扇回防高地回防高地</p>',2,2),(22,'2021-01-11 03:35:01','标题2','资讯类型2','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian2.jpg','摘要2','详情2',2,2),(23,'2021-01-11 03:35:01','标题3','资讯类型3','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian3.jpg','摘要3','详情3',3,3),(24,'2021-01-11 03:35:01','标题4','资讯类型4','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian4.jpg','摘要4','详情4',4,4),(25,'2021-01-11 03:35:01','标题5','资讯类型5','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian5.jpg','摘要5','详情5',5,5),(26,'2021-01-11 03:35:01','标题6','资讯类型6','http://localhost:8080/springbootc8hzm/upload/yinlezixun_tupian6.jpg','摘要6','详情6',6,6),(1610336871888,'2021-01-11 03:47:51','2021开年新春好歌','好歌推荐','http://localhost:8080/springbootc8hzm/upload/1610336866311.jpg','手打富士达发多少fsd','<p> 发多少富士达富士达富士达富士达发送到</p>',0,0);
/*!40000 ALTER TABLE `yinlezixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336721399 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-11 03:35:01','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-01-11 03:35:01','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-01-11 03:35:01','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-01-11 03:35:01','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-01-11 03:35:01','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-01-11 03:35:01','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','440300199606060006'),(1610336516339,'2021-01-11 03:41:56','123','123','都是',NULL,NULL,NULL,NULL,NULL),(1610336721398,'2021-01-11 03:45:21','234','234','第三方','24','男','13455667788','54756@qq.com','223344556677889900');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiantingge`
--

DROP TABLE IF EXISTS `zaixiantingge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiantingge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `yuanchang` varchar(200) DEFAULT NULL COMMENT '原唱',
  `zuoqu` varchar(200) DEFAULT NULL COMMENT '作曲',
  `zuoci` varchar(200) DEFAULT NULL COMMENT '作词',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gequjianjie` longtext COMMENT '歌曲简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610336937707 DEFAULT CHARSET=utf8 COMMENT='在线听歌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiantingge`
--

LOCK TABLES `zaixiantingge` WRITE;
/*!40000 ALTER TABLE `zaixiantingge` DISABLE KEYS */;
INSERT INTO `zaixiantingge` VALUES (41,'2021-01-11 03:35:01','编号1','过火','标签1','张信哲','作曲1','作词1','http://localhost:8080/springbootc8hzm/upload/1610336392855.mp3','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian1.jpg','<p>歌曲简介1电饭锅广东佛山很反感</p><p>电风扇花港饭店很反感jhg士大夫很反感</p>',2,2,'2021-01-11 03:43:41',5),(42,'2021-01-11 03:35:01','编号2','歌曲名称2','标签2','原唱2','作曲2','作词2','','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian2.jpg','歌曲简介2',2,2,'2021-01-11 11:35:01',2),(43,'2021-01-11 03:35:01','编号3','歌曲名称3','标签3','原唱3','作曲3','作词3','','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian3.jpg','歌曲简介3',3,3,'2021-01-11 11:35:01',3),(44,'2021-01-11 03:35:01','编号4','歌曲名称4','标签4','原唱4','作曲4','作词4','','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian4.jpg','歌曲简介4',4,4,'2021-01-11 03:44:37',5),(45,'2021-01-11 03:35:01','编号5','歌曲名称5','标签5','原唱5','作曲5','作词5','','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian5.jpg','歌曲简介5',5,5,'2021-01-11 11:35:01',5),(46,'2021-01-11 03:35:01','编号6','歌曲名称6','标签6','原唱6','作曲6','作词6','','','http://localhost:8080/springbootc8hzm/upload/zaixiantingge_tupian6.jpg','歌曲简介6',6,6,'2021-01-11 11:35:01',6),(1610336937706,'2021-01-11 03:48:57','1610336897888','撒是','标签是','林俊杰','林俊杰','的的','http://localhost:8080/springbootc8hzm/upload/1610336915260.mp3','http://localhost:8080/springbootc8hzm/upload/1610336921082.mp4','http://localhost:8080/springbootc8hzm/upload/1610336933581.jpg','<p>第三方割发代首割发代首第三方广东佛山广东佛山</p>',0,0,'2021-01-11 03:50:11',1);
/*!40000 ALTER TABLE `zaixiantingge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-16 10:58:28
