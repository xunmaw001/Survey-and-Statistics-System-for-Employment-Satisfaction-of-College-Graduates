-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm2l727
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm2l727/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm2l727/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm2l727/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaochatongjijieguo`
--

DROP TABLE IF EXISTS `diaochatongjijieguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaochatongjijieguo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `wenjuanfengmian` varchar(200) DEFAULT NULL COMMENT '问卷封面',
  `jiuyemanyidu` varchar(200) DEFAULT NULL COMMENT '就业满意度',
  `tongjirenshu` int(11) DEFAULT NULL COMMENT '统计人数',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='调查统计结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaochatongjijieguo`
--

LOCK TABLES `diaochatongjijieguo` WRITE;
/*!40000 ALTER TABLE `diaochatongjijieguo` DISABLE KEYS */;
INSERT INTO `diaochatongjijieguo` VALUES (31,'2021-03-11 13:53:33','问卷名称1','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian1.jpg','非常满意',1,'2021-03-11 21:53:33'),(32,'2021-03-11 13:53:33','问卷名称2','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian2.jpg','非常满意',2,'2021-03-11 21:53:33'),(33,'2021-03-11 13:53:33','问卷名称3','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian3.jpg','非常满意',3,'2021-03-11 21:53:33'),(34,'2021-03-11 13:53:33','问卷名称4','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian4.jpg','非常满意',4,'2021-03-11 21:53:33'),(35,'2021-03-11 13:53:33','问卷名称5','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian5.jpg','非常满意',5,'2021-03-11 21:53:33'),(36,'2021-03-11 13:53:33','问卷名称6','http://localhost:8080/jspm2l727/upload/diaochatongjijieguo_wenjuanfengmian6.jpg','非常满意',6,'2021-03-11 21:53:33');
/*!40000 ALTER TABLE `diaochatongjijieguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswenjuan`
--

DROP TABLE IF EXISTS `discusswenjuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswenjuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615471337954 DEFAULT CHARSET=utf8 COMMENT='问卷评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswenjuan`
--

LOCK TABLES `discusswenjuan` WRITE;
/*!40000 ALTER TABLE `discusswenjuan` DISABLE KEYS */;
INSERT INTO `discusswenjuan` VALUES (101,'2021-03-11 13:53:33',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-11 13:53:33',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-11 13:53:33',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-11 13:53:33',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-11 13:53:33',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-11 13:53:33',6,6,'用户名6','评论内容6','回复内容6'),(1615471337953,'2021-03-11 14:02:17',1615471190328,1615471308007,NULL,'测试',NULL);
/*!40000 ALTER TABLE `discusswenjuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2021-03-11 13:53:33',1,'用户名1','留言内容1','回复内容1'),(92,'2021-03-11 13:53:33',2,'用户名2','留言内容2','回复内容2'),(93,'2021-03-11 13:53:33',3,'用户名3','留言内容3','回复内容3'),(94,'2021-03-11 13:53:33',4,'用户名4','留言内容4','回复内容4'),(95,'2021-03-11 13:53:33',5,'用户名5','留言内容5','回复内容5'),(96,'2021-03-11 13:53:33',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='就业咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-03-11 13:53:33','标题1','简介1','http://localhost:8080/jspm2l727/upload/news_picture1.jpg','内容1'),(82,'2021-03-11 13:53:33','标题2','简介2','http://localhost:8080/jspm2l727/upload/news_picture2.jpg','内容2'),(83,'2021-03-11 13:53:33','标题3','简介3','http://localhost:8080/jspm2l727/upload/news_picture3.jpg','内容3'),(84,'2021-03-11 13:53:33','标题4','简介4','http://localhost:8080/jspm2l727/upload/news_picture4.jpg','内容4'),(85,'2021-03-11 13:53:33','标题5','简介5','http://localhost:8080/jspm2l727/upload/news_picture5.jpg','内容5'),(86,'2021-03-11 13:53:33','标题6','简介6','http://localhost:8080/jspm2l727/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renwutijiao`
--

DROP TABLE IF EXISTS `renwutijiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renwutijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `wenjuanfengmian` varchar(200) DEFAULT NULL COMMENT '问卷封面',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615471359459 DEFAULT CHARSET=utf8 COMMENT='任务提交';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renwutijiao`
--

LOCK TABLES `renwutijiao` WRITE;
/*!40000 ALTER TABLE `renwutijiao` DISABLE KEYS */;
INSERT INTO `renwutijiao` VALUES (41,'2021-03-11 13:53:33','问卷名称1','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian1.jpg','2021-03-11 21:53:33'),(42,'2021-03-11 13:53:33','问卷名称2','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian2.jpg','2021-03-11 21:53:33'),(43,'2021-03-11 13:53:33','问卷名称3','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian3.jpg','2021-03-11 21:53:33'),(44,'2021-03-11 13:53:33','问卷名称4','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian4.jpg','2021-03-11 21:53:33'),(45,'2021-03-11 13:53:33','问卷名称5','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian5.jpg','2021-03-11 21:53:33'),(46,'2021-03-11 13:53:33','问卷名称6','http://localhost:8080/jspm2l727/upload/renwutijiao_wenjuanfengmian6.jpg','2021-03-11 21:53:33'),(1615471359458,'2021-03-11 14:02:38','555777','http://localhost:8080/jspm2l727/upload/1615471170067.jpeg','2021-04-23 00:00:00');
/*!40000 ALTER TABLE `renwutijiao` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','moj1b6hdckg89gpej0lhuepboppcgp94','2021-03-11 13:54:16','2021-03-11 14:56:58'),(2,1615471308007,'666','yonghu','用户','n9k4ordyzupprnaw1hyemujp8s7lur6h','2021-03-11 14:01:56','2021-03-11 15:01:57');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 13:53:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuan`
--

DROP TABLE IF EXISTS `wenjuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `wenjuanfengmian` varchar(200) DEFAULT NULL COMMENT '问卷封面',
  `wenjuan` varchar(200) DEFAULT NULL COMMENT '问卷',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenjuanxiangqing` longtext COMMENT '问卷详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615471190329 DEFAULT CHARSET=utf8 COMMENT='问卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuan`
--

LOCK TABLES `wenjuan` WRITE;
/*!40000 ALTER TABLE `wenjuan` DISABLE KEYS */;
INSERT INTO `wenjuan` VALUES (21,'2021-03-11 13:53:33','问卷名称1','http://localhost:8080/jspm2l727/upload/wenjuan_wenjuanfengmian1.jpg','','2021-03-11 21:53:33','问卷详情1'),(22,'2021-03-11 13:53:33','问卷名称2','http://localhost:8080/jspm2l727/upload/wenjuan_wenjuanfengmian2.jpg','','2021-03-11 21:53:33','问卷详情2'),(23,'2021-03-11 13:53:33','问卷名称3','http://localhost:8080/jspm2l727/upload/wenjuan_wenjuanfengmian3.jpg','','2021-03-11 21:53:33','问卷详情3'),(24,'2021-03-11 13:53:33','问卷名称4','http://localhost:8080/jspm2l727/upload/wenjuan_wenjuanfengmian4.jpg','','2021-03-11 21:53:33','问卷详情4'),(1615471190328,'2021-03-11 13:59:49','555777','http://localhost:8080/jspm2l727/upload/1615471170067.jpeg','http://localhost:8080/jspm2l727/file/download?fileName=1615471181410.docx','2021-03-17 18:13:20','测试11111\r\n');
/*!40000 ALTER TABLE `wenjuan` ENABLE KEYS */;
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
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `biyenianfen` date DEFAULT NULL COMMENT '毕业年份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615471308008 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-11 13:53:33','用户1','姓名1','123456','男','年龄1','13823888881','773890001@qq.com','http://localhost:8080/jspm2l727/upload/yonghu_zhaopian1.jpg','毕业学校1','2021-03-11'),(12,'2021-03-11 13:53:33','用户2','姓名2','123456','男','年龄2','13823888882','773890002@qq.com','http://localhost:8080/jspm2l727/upload/yonghu_zhaopian2.jpg','毕业学校2','2021-03-11'),(13,'2021-03-11 13:53:33','用户3','姓名3','123456','男','年龄3','13823888883','773890003@qq.com','http://localhost:8080/jspm2l727/upload/yonghu_zhaopian3.jpg','毕业学校3','2021-03-11'),(14,'2021-03-11 13:53:33','用户4','姓名4','123456','男','年龄4','13823888884','773890004@qq.com','http://localhost:8080/jspm2l727/upload/yonghu_zhaopian4.jpg','毕业学校4','2021-03-11'),(15,'2021-03-11 13:53:33','用户5','姓名5','123456','男','年龄5','13823888885','773890005@qq.com','http://localhost:8080/jspm2l727/upload/yonghu_zhaopian5.jpg','毕业学校5','2021-03-11'),(1615471079783,'2021-03-11 13:57:59','333999','李四','456','男','33','13033333333','789@qq.com','http://localhost:8080/jspm2l727/upload/1615471073981.jpg','星星学校','2021-03-03'),(1615471308007,'2021-03-11 14:01:48','666','王五','456',NULL,'33','13066666666','456@qq.com',NULL,'星星大学',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13  9:50:03
