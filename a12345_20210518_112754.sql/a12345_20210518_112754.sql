-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: a12345
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `fn_11x5order`
--

DROP TABLE IF EXISTS `fn_11x5order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_11x5order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `game` varchar(100) DEFAULT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_11x5order`
--

LOCK TABLES `fn_11x5order` WRITE;
/*!40000 ALTER TABLE `fn_11x5order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_11x5order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_admin`
--

DROP TABLE IF EXISTS `fn_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_admin` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_admin`
--

LOCK TABLES `fn_admin` WRITE;
/*!40000 ALTER TABLE `fn_admin` DISABLE KEYS */;
INSERT INTO `fn_admin` VALUES ('0','chanmail','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `fn_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_azxy10order`
--

DROP TABLE IF EXISTS `fn_azxy10order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_azxy10order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `game` varchar(255) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_azxy10order`
--

LOCK TABLES `fn_azxy10order` WRITE;
/*!40000 ALTER TABLE `fn_azxy10order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_azxy10order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_azxy5order`
--

DROP TABLE IF EXISTS `fn_azxy5order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_azxy5order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_azxy5order`
--

LOCK TABLES `fn_azxy5order` WRITE;
/*!40000 ALTER TABLE `fn_azxy5order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_azxy5order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_ban`
--

DROP TABLE IF EXISTS `fn_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `addtime` datetime NOT NULL,
  `roomid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_ban`
--

LOCK TABLES `fn_ban` WRITE;
/*!40000 ALTER TABLE `fn_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_bjlorder`
--

DROP TABLE IF EXISTS `fn_bjlorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_bjlorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_bjlorder`
--

LOCK TABLES `fn_bjlorder` WRITE;
/*!40000 ALTER TABLE `fn_bjlorder` DISABLE KEYS */;
INSERT INTO `fn_bjlorder` VALUES (1,'oTcjQ5gyasCy0d6UIgBFbawUanP4','赐我大嘴巴子','http://thirdwx.qlogo.cn/mmopen/vi_32/nkibEGAbP8X791pDhPTyibD0VwztqJCSQDebNympwz89nKLmRlgDYIemYqDU1bzrn4qbukCibRT4aIUWVoibIRGBRQ/132','625992','庄',5,'2020-09-09 21:17:01','未结算','false',10029,NULL);
/*!40000 ALTER TABLE `fn_bjlorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_chat`
--

DROP TABLE IF EXISTS `fn_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatid` varchar(255) NOT NULL COMMENT '聊天ID',
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `chat_term` text NOT NULL,
  `term` text NOT NULL,
  `content` text NOT NULL,
  `mingci` text NOT NULL,
  `neirong` text NOT NULL,
  `jine` text NOT NULL,
  `status` text NOT NULL,
  `chat_status` text NOT NULL,
  `addtime` text NOT NULL,
  `time` text NOT NULL,
  `game` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1039 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_chat`
--

LOCK TABLES `fn_chat` WRITE;
/*!40000 ALTER TABLE `fn_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_custom`
--

DROP TABLE IF EXISTS `fn_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_custom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `content` text NOT NULL,
  `addtime` datetime NOT NULL,
  `roomid` int(11) NOT NULL,
  `status` text NOT NULL,
  `type` text NOT NULL,
  `hid` int(255) NOT NULL COMMENT '回复ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_custom`
--

LOCK TABLES `fn_custom` WRITE;
/*!40000 ALTER TABLE `fn_custom` DISABLE KEYS */;
INSERT INTO `fn_custom` VALUES (1,'oTcjQ5gyasCy0d6UIgBFbawUanP4','赐我大嘴巴子','http://thirdwx.qlogo.cn/mmopen/vi_32/nkibEGAbP8X791pDhPTyibD0VwztqJCSQDebNympwz89nKLmRlgDYIemYqDU1bzrn4qbukCibRT4aIUWVoibIRGBRQ/132','1','2020-09-09 21:13:11',10029,'未读','U2',0);
/*!40000 ALTER TABLE `fn_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_everyday`
--

DROP TABLE IF EXISTS `fn_everyday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_everyday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zyk` varchar(100) NOT NULL,
  `allprice` varchar(100) NOT NULL,
  `allsf` varchar(100) NOT NULL,
  `zye` varchar(100) NOT NULL,
  `shijian` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_everyday`
--

LOCK TABLES `fn_everyday` WRITE;
/*!40000 ALTER TABLE `fn_everyday` DISABLE KEYS */;
INSERT INTO `fn_everyday` VALUES (0,'0','0/0/0','0/0','1000748132','2021-05-18'),(1,'0','0/0/0','1100/0','1000747937','2019-11-07'),(2,'0','0/0/0','100/0','1000748132','2020-09-09'),(3,'0','0/0/0','0/0','1000748132','2021-05-18'),(4,'0','0/0/0','0/0','1000748132','2021-05-18'),(5,'0','0/0/0','0/0','1000748132','2021-05-18'),(6,'0','0/0/0','0/0','1000748132','2021-05-18'),(7,'0','0/0/0','0/0','1000748132','2021-05-18'),(8,'0','0/0/0','0/0','1000748132','2021-05-18'),(9,'0','0/0/0','0/0','1000748132','2021-05-18'),(10,'0','0/0/0','0/0','1000748132','2021-05-18'),(11,'0','0/0/0','0/0','1000748132','2021-05-18');
/*!40000 ALTER TABLE `fn_everyday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_feiorder`
--

DROP TABLE IF EXISTS `fn_feiorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_feiorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game` text NOT NULL,
  `term` text NOT NULL,
  `content` text NOT NULL,
  `pan` text NOT NULL,
  `panuser` text NOT NULL,
  `money` text NOT NULL,
  `time` datetime NOT NULL,
  `status` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_feiorder`
--

LOCK TABLES `fn_feiorder` WRITE;
/*!40000 ALTER TABLE `fn_feiorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_feiorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_ffcorder`
--

DROP TABLE IF EXISTS `fn_ffcorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_ffcorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_ffcorder`
--

LOCK TABLES `fn_ffcorder` WRITE;
/*!40000 ALTER TABLE `fn_ffcorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_ffcorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_flyorder`
--

DROP TABLE IF EXISTS `fn_flyorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_flyorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `game` varchar(255) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_flyorder`
--

LOCK TABLES `fn_flyorder` WRITE;
/*!40000 ALTER TABLE `fn_flyorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_flyorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_jslhcorder`
--

DROP TABLE IF EXISTS `fn_jslhcorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_jslhcorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_jslhcorder`
--

LOCK TABLES `fn_jslhcorder` WRITE;
/*!40000 ALTER TABLE `fn_jslhcorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_jslhcorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_jsscorder`
--

DROP TABLE IF EXISTS `fn_jsscorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_jsscorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_jsscorder`
--

LOCK TABLES `fn_jsscorder` WRITE;
/*!40000 ALTER TABLE `fn_jsscorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_jsscorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_jssscorder`
--

DROP TABLE IF EXISTS `fn_jssscorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_jssscorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_jssscorder`
--

LOCK TABLES `fn_jssscorder` WRITE;
/*!40000 ALTER TABLE `fn_jssscorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_jssscorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_k3order`
--

DROP TABLE IF EXISTS `fn_k3order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_k3order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_k3order`
--

LOCK TABLES `fn_k3order` WRITE;
/*!40000 ALTER TABLE `fn_k3order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_k3order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lhcorder`
--

DROP TABLE IF EXISTS `fn_lhcorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lhcorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lhcorder`
--

LOCK TABLES `fn_lhcorder` WRITE;
/*!40000 ALTER TABLE `fn_lhcorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_lhcorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery1`
--

DROP TABLE IF EXISTS `fn_lottery1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery1`
--

LOCK TABLES `fn_lottery1` WRITE;
/*!40000 ALTER TABLE `fn_lottery1` DISABLE KEYS */;
INSERT INTO `fn_lottery1` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','1.96','1.96','3','2','2','3','2.1','1.7','1.7','2.1','42','21','14','10','8','9.8','5','20000','5','20000','5','20000','5','5000','5','5000','5','5000',60,'<div class=\"RuleT1\">【北京赛车】</div>\r\n    <div class=\"RuleT2\">【游戏介绍】</div>\r\n    北京赛车是经国家财政部批准，由北京国家福利彩票管理中心统一发行的赛车主题排列型高频彩票；每期开奖车号共十个,每个车号除了整合玩法，第1~10名、冠亚和值、冠亚组合分别为一个竞猜组，大小/单双/龙虎、车道数字、冠亚大小、冠亚特码、十球全接、特码区段。<br>\r\n    北京赛车、幸运飞艇同以「1~10」十个号码作为开奖依据，完全公平公正公开、开奖透明、无法作弊！<br>\r\n    <br>\r\n    <div class=\"RuleT2\">【相关资料】</div>\r\n    【开奖官网】官网：http://www.bwlc.net/<br>\r\n    【官方APP下载】请直接搜索「北京赛车」<br>\r\n    【开奖时间】北京赛车为每天上午09:07~晚上23:57每二十分钟开奖一期，每天44期，与官网完全同步。<br>\r\n    <br>\r\n    <div class=\"RuleT2\">【玩法】</div>\r\n    <div class=\"RuleT3\">【1~10名猜大小单双】</div>\r\n    <div class=\"RuleT3\">第一名～第十名车号：开出之号码大于或等于6为大，小于或等于5为小。开出的号码偶数为双，号码奇数为单。</div>\r\n    ■奖励：含本1.96倍<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：名次/大小单双/金额<br>\r\n    　例：12345/双/100 = 1~5车道买双各100 = 总500<br>\r\n    <div class=\"RuleT3\">【1~10名猜车号】</div>\r\n    <div class=\"RuleT3\">每一个车号为一竞猜组合，开奖结果「竞猜车号」对应所猜「车道」视为中奖，其余情形视为不中奖。</div>\r\n    ■奖励：含本9.8倍<br>\r\n    ■限额：10-10,000<br>\r\n    ■格式：名次/号码/金额<br>\r\n    　例：12345/89/20 = 1~5车道的8号、9号各买20 = 总200<br>\r\n    　例：1357/890/20 = 1.3.5.7车道的8号、9号、10号各买20 = 总240<br>\r\n    <div class=\"RuleT3\">【1~5名猜龙虎】</div>\r\n    <div class=\"RuleT3\">(1)第一名vs第十名，(2)第二名vs第九名，(3)第三名vs第八名，(4)第四名vs第七名，(5)第五名vs第六名，前比后大为龙，反之为虎。</div>\r\n    ■奖励：含本1.96倍<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：名次/号码/金额<br>\r\n    　例：123/龙/100 = 1~3车道买龙各100=总300<br>\r\n   <div class=\"RuleT3\">【猜冠亚号码】 </div>\r\n<div class=\"RuleT3\">猜冠军及亚军车号（前2名），每次竞猜2个号码，顺序不限。 </div>\r\n■格式：组/号码/金额 <br>\r\n例：组/5-6/50=5号.6号在冠亚军（顺序不限）=总下注50 <br>\r\n例：组/1-9.3-7/100=1.9号车或3.7号车再冠亚军（顺序不限）=总下注200<br>\r\n    <div class=\"RuleT3\">【冠亚和值(特码)猜大小单双】</div>\r\n    <div class=\"RuleT3\">冠军车号+亚军车号 = 冠亚和值 = 特码 = 数字3~19</div>\r\n    <div class=\"RuleT3\">冠亚和值大于或等于12为大，小于或等于11为小。开出的号码偶数为双，号码奇数为单。</div>\r\n    ■奖励：<br>\r\n    　「大」、「双」含本2.1倍。<br>\r\n    　「小」、「单」含本1.7倍。<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：和/大小单双/金额<br>\r\n    　例：和双100 = 「冠亚和」的双100<br>\r\n    　例：和大100 = 「冠亚和」的大100<br>\r\n    <div class=\"RuleT3\">【冠亚和值(特码)猜数字】</div>\r\n    <div class=\"RuleT3\">「冠亚和值」为「特码」可能出现的结果为3~19，竞猜中对应「冠亚和值」数字的视为中奖，其余视为不中奖。</div>\r\n    ■奖励：<br>\r\n    　3.4.18.19，含本42倍，限额10-1,000<br>\r\n    　5.6.16.17，含本21倍，限额10-2,000<br>\r\n    　7.8.14.15，含本14倍，限额10-3,000<br>\r\n    　9.10.12.13，含本10倍，限额10-4,000<br>\r\n    　11，含本8倍，限额10-5,000<br>\r\n    ■格式：和(特)/数字/金额<br>\r\n    　例：和567/100 = 竞猜「冠亚和」的值为5或6或7各100 = 总300<br>\r\n    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>\r\n    <br>\r\n    <div class=\"RuleT2\">【说明】</div>\r\n    ■没带名次默认竞猜第一名，如「双/100」第一名双100、「123/100」第一名123号各100<br>\r\n    ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。<br>\r\n    ■0号即为10号，竞猜时输入0即为10，输入10即为1、10号。<br>\r\n    　例：0/0/100 = 视为竞猜第10名10号车冠军<br>\r\n    　例：0/100 = 视为竞猜第1名10号车冠军<br>\r\n    <br>\r\n    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>\r\n','0','0','0');
/*!40000 ALTER TABLE `fn_lottery1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery10`
--

DROP TABLE IF EXISTS `fn_lottery10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `zhuang` text,
  `xian` text,
  `he` text,
  `zhuangdui` text,
  `xiandui` text,
  `anydui` text,
  `zhuang_min` text,
  `xian_min` text,
  `he_min` text,
  `zhuangdui_min` text,
  `xiandui_min` text,
  `anydui_min` text,
  `zhuang_max` text,
  `xian_max` text,
  `he_max` text,
  `zhuangdui_max` text,
  `xiandui_max` text,
  `anydui_max` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=963259 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery10`
--

LOCK TABLES `fn_lottery10` WRITE;
/*!40000 ALTER TABLE `fn_lottery10` DISABLE KEYS */;
INSERT INTO `fn_lottery10` VALUES (10029,10029,'true','false',15,'庄家和闲家在游戏中没有特殊含义就是A方 B方 闲家先发牌。\r\n\r\n2到9为实际点数， A为1点， 10、J、Q、K 都为0点（就是没有）。\r\n\r\n发牌员左(A) 右(B) 发牌，玩家押大小(你押哪个大 开大你就赢、反之就输)。\r\n\r\nA、 B 按跳续发牌，各方前两张牌加起来算有效点数，如果点不过7继续要第三张牌、再相加算点数，如果一方前两张牌加起来为8或9就不需要要第三张牌（天生赢家）。   【这里相加9点最大，此游戏比大小只比个位数】\r\n','1.95','2','8','11','11','5','5','5','5','5','5','5','50000','50000','10000','10000','10000','10000','2','1','');
/*!40000 ALTER TABLE `fn_lottery10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery11`
--

DROP TABLE IF EXISTS `fn_lottery11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `tema` text,
  `zongda` text,
  `zongxiao` text,
  `zongdan` text,
  `zongshuang` text,
  `long` text,
  `hu` text,
  `he` text,
  `q_baozi` text,
  `z_baozi` text,
  `h_baozi` text,
  `q_duizi` text,
  `z_duizi` text,
  `h_duizi` text,
  `q_shunzi` text,
  `z_shunzi` text,
  `h_shunzi` text,
  `q_banshun` text,
  `z_banshun` text,
  `h_banshun` text,
  `q_zaliu` text,
  `z_zaliu` text,
  `h_zaliu` text,
  `dx_min` int(11) DEFAULT '0',
  `ds_min` int(11) DEFAULT NULL,
  `lh_min` int(11) DEFAULT NULL,
  `tm_min` int(11) DEFAULT NULL,
  `zh_min` int(11) DEFAULT NULL,
  `bz_min` int(11) DEFAULT NULL,
  `dz_min` int(255) DEFAULT NULL,
  `sz_min` int(255) DEFAULT NULL,
  `bs_min` int(255) DEFAULT NULL,
  `zl_min` int(255) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `lh_max` int(11) DEFAULT NULL,
  `tm_max` int(255) DEFAULT NULL,
  `zh_max` int(255) DEFAULT NULL,
  `bz_max` int(255) DEFAULT NULL,
  `dz_max` int(255) DEFAULT NULL,
  `sz_max` int(255) DEFAULT NULL,
  `bs_max` int(255) DEFAULT NULL,
  `zl_max` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery11`
--

LOCK TABLES `fn_lottery11` WRITE;
/*!40000 ALTER TABLE `fn_lottery11` DISABLE KEYS */;
INSERT INTO `fn_lottery11` VALUES (10029,10029,'true','true','1.95','1.95','1.95','1.95','9.68','1.95','1.95','1.95','1.95','1.95','1.95','9','65','65','65','2.5','2.5','2.5','12','12','12','2.5','2.5','2.5','2.2','2.2','2.2',10,10,10,10,10,0,0,0,0,0,2000,2000,2000,2000,2000,0,0,0,0,0,38,'【九都娱乐房间规则】','0','0','');
/*!40000 ALTER TABLE `fn_lottery11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery12`
--

DROP TABLE IF EXISTS `fn_lottery12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery12`
--

LOCK TABLES `fn_lottery12` WRITE;
/*!40000 ALTER TABLE `fn_lottery12` DISABLE KEYS */;
INSERT INTO `fn_lottery12` VALUES (10029,10029,'true','true','1.988','1.988','1.988','1.988','1.988','1.988','2.4','1','1','2.4','1.988','1.988','1.988','1.988','40.5','20.5','13.5','10.125','8.1','9.88','0','2000','0','2000','0','2000','0','2000','0','2000','0','2000',15,'<div class=\"RuleT1\">【香港赛马】</div>\r\n<div class=\"RuleT2\">【游戏介绍】</div>\r\n香港赛马是经由菲律宾UC国际彩票中心与菲律賓政府卡格揚河經濟特區联合推出的一款高频彩，由菲律賓政府卡格揚河經濟特區彩票管理中心统一发行的摩托主题排列型高频彩票；每期开奖车号共十个,每个车号除了整合玩法，第1~10名、冠亚和值、冠亚组合分别为一个竞猜组，大小/单双/龙虎、车道数字、冠亚大小、冠亚特码、十球全接、特码区段。<br>\r\n香港赛马同以「1~10」十个号码作为开奖依据，完全公平公正公开、开奖透明、无法作弊！<br>\r\n<br>\r\n<div class=\"RuleT2\">【相关资料】</div>\r\n【开奖官网】http://www.uc3039.com/<br>\r\n【官方APP下载】请直接搜索「香港赛马」<br>\r\n【开奖时间】香港赛马为每天上午09:00~晚上23:55每五分钟开奖一期，每天180期，与官网完全同步。<br>\r\n<br>\r\n<div class=\"RuleT2\">【玩法】</div>\r\n<div class=\"RuleT3\">【1~10名猜大小单双】</div>\r\n<div class=\"RuleT3\">第一名～第十名车号：开出之号码大于或等于6为大，小于或等于5为小。开出的号码偶数为双，号码奇数为单。</div>\r\n■奖历：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：名次/大小单双/金额<br>\r\n　例：12345/双/100 = 1~5车道买双各100 = 总500<br>\r\n<div class=\"RuleT3\">【1~10名猜车号】</div>\r\n<div class=\"RuleT3\">每一个车号为一竞猜组合，开奖结果「竞猜车号」对应所猜「车道」视为中奖，其余情形视为不中奖。</div>\r\n■奖历：含本9.8倍<br>\r\n■限额：10-10,000<br>\r\n■格式：名次/号码/金额<br>\r\n　例：12345/89/20 = 1~5车道的8号、9号各买20 = 总200<br>\r\n　例：1357/890/20 = 1.3.5.7车道的8号、9号、10号各买20 = 总240<br>\r\n<div class=\"RuleT3\">【1~10名猜组合】</div>\r\n<div class=\"RuleT3\">竞猜内容为「大单」「小双」「小单」「大双」，共4种。</div>\r\n■奖历：<br>\r\n　「大单」、「小双」含本4.5倍，<br>\r\n　「小单」、「大双」含本3倍。<br>\r\n■限额：10-10,000<br>\r\n■格式：名次/组合/金额<br>\r\n　例：890/大单/50 = 8.9.10车道大单各买50 = 总150<br>\r\n<div class=\"RuleT3\">【1~5名猜龙虎】</div>\r\n<div class=\"RuleT3\">(1)第一名vs第十名，(2)第二名vs第九名，(3)第三名vs第八名，(4)第四名vs第七名，(5)第五名vs第六名，前比后大为龙，反之为虎。</div>\r\n■奖历：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：名次/号码/金额<br>\r\n　例：123/龙/100 = 1~3车道买龙各100=总300<br>\r\n<div class=\"RuleT3\">【冠亚和值(特码)猜大小单双】</div>\r\n<div class=\"RuleT3\">冠军车号+亚军车号 = 冠亚和值 = 特码 = 数字3~19</div>\r\n<div class=\"RuleT3\">冠亚和值大于或等于12为大，小于或等于11为小。开出的号码偶数为双，号码奇数为单。</div>\r\n■奖历：<br>\r\n　「大」、「双」含本2.1倍。<br>\r\n　「小」、「单」含本1.7倍。<br>\r\n■限额：10-20,000<br>\r\n■格式：和/大小单双/金额<br>\r\n　例：和双100 = 「冠亚和」的双100<br>\r\n　例：和大100 = 「冠亚和」的大100<br>\r\n<div class=\"RuleT3\">【冠亚和值(特码)猜数字】</div>\r\n<div class=\"RuleT3\">「冠亚和值」为「特码」可能出现的结果为3~19，竞猜中对应「冠亚和值」数字的视为中奖，其余视为不中奖。</div>\r\n■奖历：<br>\r\n　3.4.18.19，含本42倍，限额10-1,000<br>\r\n　5.6.16.17，含本21倍，限额10-2,000<br>\r\n　7.8.14.15，含本14倍，限额10-3,000<br>\r\n　9.10.12.13，含本10倍，限额10-4,000<br>\r\n　11，含本8倍，限额10-5,000<br>\r\n■格式：和(特)/数字/金额<br>\r\n　例：和567/100 = 竞猜「冠亚和」的值为5或6或7各100 = 总300<br>\r\n<div class=\"RuleT2\">每期下注：总额10万封顶！</div>\r\n<br>\r\n<div class=\"RuleT2\">【说明】</div>\r\n■没带名次默认竞猜第一名，如「双/100」第一名双100、「123/100」第一名123号各100<br>\r\n■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。<br>\r\n■0号即为10号，竞猜时输入0即为10，输入10即为1、10号。<br>\r\n　例：0/0/100 = 视为竞猜第10名10号车冠军<br>\r\n　例：0/100 = 视为竞猜第1名10号车冠军<br>\r\n<br>\r\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>','2','1','');
/*!40000 ALTER TABLE `fn_lottery12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery13`
--

DROP TABLE IF EXISTS `fn_lottery13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `shengxiao` text,
  `shengxiaonian` text,
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `hongbo` text,
  `lanbo` text,
  `lvbo` text,
  `haoma` text,
  `zhengma` text NOT NULL,
  `xiao2` text,
  `xiao2nian` text,
  `xiao3` text,
  `xiao3nian` text,
  `xiao4` text,
  `xiao4nian` text,
  `xiao5` text,
  `xiao5nian` text,
  `zheng2` text,
  `zheng3` text,
  `zheng4` text,
  `shengxiao_min` text,
  `shengxiao_max` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `sebo_min` text,
  `sebo_max` text,
  `haoma_min` text,
  `haoma_max` text,
  `lianxiao_min` text,
  `lianxiao_max` text,
  `lianma_min` text,
  `lianma_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `wan3` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery13`
--

LOCK TABLES `fn_lottery13` WRITE;
/*!40000 ALTER TABLE `fn_lottery13` DISABLE KEYS */;
INSERT INTO `fn_lottery13` VALUES (10029,10029,'true','false','1','1','1','1','1','1','1','1','1','1','1','','','','','','','','','','','','10','10000','10','10000','10','10000','10','10000','10','10000','10','10000','10','10000',600,'<div class=\"guize-box\">\n	<div class=\"guize-group\">\n		<h2>【游戏介绍】</h2>\n		<p>\n			六合彩（英文：Mark Six）是香港合法彩票，一周开奖3次，每周二、四、六晚上9:35开奖，遇特殊情况会偶尔会有变动开奖时间。<br />\n		</p>\n		<h2>【相关资料】</h2>\n		<p>\n		【开奖时间】周二四六晚9:35,一周3期。<br />\n		【开始投注】开奖前48小时。<br />\n		【封盘时间】开奖前20分钟。<br />\n		【正 特 码】开奖结果前6个号码为正码，分别为正1到正6，第7个号码为特码。<br />\n		【生肖说明】生肖顺序为: 鼠↦牛↦虎↦兔↦龙↦蛇↦马↦羊↦猴↦鸡↦狗↦猪；如今年是狗年，就是以狗为开始，依顺序奖49个号码分别与12个生肖对应，如下：<br />\n			  ☉狗：1,13,25,37,49<br />\n			  ☉猪：12,24,36,48<br />\n			  ☉鼠：11,23,35,47<br />\n			  ☉牛：10,22,34,46<br />\n			  ☉虎：9,21,33,45<br />\n			  ☉兔：8,20,32,44<br />\n			  ☉龙：7,19,31,43<br />\n			  ☉蛇：5,18,30,42<br />\n			  ☉马：5,17,29,41<br />\n			  ☉羊：4,16,28,40<br />\n			  ☉猴：3,15,27,39<br />\n			  ☉鸡：2,14,26,38<br />\n		</p>\n  </div>\n<div class=\"guize-group\">\n		<h3>玩法1<b>【竞猜大小单双】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。开奖结果与所竞猜相同则为中奖，其余为不中，如果竞猜结果是49为和则竞猜还本。<br />\n			☉小: 01~24为小(含24)；<br />\n			☉大: 25~48为大(含48)；<br />\n			☉单: 01,03...45,47，不能整除2的奇数。<br />\n			☉双: 02,04...46,48；能整除2的偶数。<br />\n			☉和: 49(开和竞猜大小单双还本)\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span>含本1.98倍 <br /> \n			<span>■下注限额：</span>10-2000 <br />\n			<span>■单期上限：</span>50000 <br />\n			<span>■竞猜格式：</span>球号/大小单双/金额<br />\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉7/大/100 为 竞猜特码大100<br />\n				☉12/大/100 为 1,2号球大各100 总200\n		</p>\n	</div><div class=\"guize-group\">\n			<h3>玩法2 <b>【正特码定位竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码(1~7球)。一个数字1注(竞猜01~49)，竞猜球号数字与开奖数字相同则为中奖，否则为不中！<br />\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本47.25倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>球号/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉7/45/100 为 特码45号100 <br />\n				☉7/33.48/100 为 特码43,48号各100 总200 <br />\n				☉12/20.12/100 为1,2号球20,12号各100 总400\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法3 <b>【正码竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码（开奖的前6个球)。一个数字1注(竞猜01~49)，开奖结果中含竞猜数字即中奖，否则为不中。\n				<br />\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本7.21倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉45/100 为 45号买100 <br />\n				☉33.48/100 为 43,48号各买100 总200 <br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法4 <b>【正特生肖定位竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。竞猜生肖与开奖相同则为中奖，否则为不中！<br />\n			如:竞猜特码狗，开奖结果特码为狗，则中奖，其它情况为不中。<br />\n			如:竞猜正码1狗，开奖结果正码1为狗，则中奖，其它情况为不中。<br />\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br />\n						<b class=\"odds\">「生肖狗」</b>9.36倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds\">「其它生肖」</b>11.7倍含本, 单限:2000, 总限:50000<br />\n			<span>■最小限额：</span>10 <br />\n			<span>■竞猜格式：球号码/生肖/金额</span>\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉1/狗牛/100 为 正码1买生肖狗牛各100<br />\n				☉7/狗牛/100 为 特码买生肖狗牛各100<br />\n				☉12/狗牛/100 为 正码1,2买生肖狗牛各100<br />\n		</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法5 <b>【正特生肖（单肖）竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象正特码。一个生肖为竞猜单位，开奖结果含竞猜的生肖则为中奖，否则为不中！<br />\n			如:竞猜狗，开奖结果中含有生肖狗，则中奖，否则为不中。<br />\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br /> \n						<b class=\"odds\">「生肖狗」</b>1.77倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds\">「其它生肖」</b>2.09倍含本, 单限:2000, 总限:50000<br />\n			<span>■下注限额：</span>10-2000 <br />\n			<span>■单期上限：</span>50000 <br />\n			<span>■竞猜格式：</span>生肖/金额<br />\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉狗/100 为 买生肖狗各100<br />\n				☉狗牛/100 为  买生肖狗牛各100。\n		</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法6 <b>【正特码波色竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。竞猜位置波色与开奖相同则为中奖，否则为不中！<br />\n			 <font color=\"red\">☉红波:01,02,07,08,12,13,18,19,23,           24,29,30,34,35,40,45,46；</font><br />\n			<font color=\"blue\">☉蓝波:03,04,09,10,14,15,20,25,           26,31,36,37,41,42,47,48；</font><br />\n			<font color=\"green\">☉绿波:05,06,11,16,17,21,22,27,           28,32,33,38,39,43,44,49；</font>\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br />\n						<b class=\"odds red\">「红波」</b>2.8倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds blue\">「蓝波」</b>2.97倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds green\">「绿波」</b>2.97倍含本, 单限:2000, 总限:50000<br />\n			<span>■最小限额：</span>10 <br />\n			<span>■竞猜格式：球号码/波色/金额</span>\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉1/红波/100 为 正码1买红波100<br />\n				☉红波/100 为 特码买红波100<br />\n				☉12/红波/100 为 正码1,2买红波各100<br />\n				☉红波/100 = 7/红波/100 特码快捷下注。\n		</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法7 <b>【2肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜2个不同生肖，开奖结果中含竞猜的2个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>4.06倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>4.57倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>2肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉2肖/牛狗/100 为 购买牛狗100 <br />\n				☉2肖/牛狗.牛鸡/100 为 购买牛狗,牛鸡各100  总200 <br />\n				☉2肖/牛狗鸡/100 为 复式购买牛狗,牛鸡,狗鸡各100 总300 <br />\n				☉如果竞猜的生肖超过2个则用复式下注。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法8 <b>【3肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜3个不同生肖，开奖结果中含竞猜的3个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br />\n								<b class=\"odds\">「含狗」</b>10.76倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>11.65倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>3肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉3肖/牛狗鸡/100 为 购买牛狗鸡100 <br />\n				☉3肖/牛狗鸡.牛狗猪/100 为 购买牛狗鸡.牛狗猪各100  总200 <br />\n				☉3肖/牛狗鸡猪/100 为 复式购买牛狗鸡,牛狗猪,牛鸡猪,狗鸡猪各100 总400<br />\n				☉如果竞猜的生肖超过3个则用复式下注。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法9 <b>【4肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜4个不同生肖，开奖结果中含竞猜的4个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>32.07倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>34.08倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>4肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉4肖/牛狗鸡猪/100 为 购买牛狗鸡猪100 <br />\n				☉多注之间生肖.分开，超过4个生肖时为复式购买。\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法10 <b>【5肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜5个不同生肖，开奖结果中含竞猜的5个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>115.01倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>120.86倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>5肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉5肖/牛狗鸡猪鼠/100 为 购买牛狗鸡猪鼠100 <br />\n				☉多注之间生肖.分开，超过5个生肖时为复式购买。\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法11 <b>【正码2中2竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一主竞猜2个不同数字，开奖结果正码(前6个数字)中含竞猜的2数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本65倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>2中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉2中/12.13/100 为 购买12.13一注100 <br />\n				☉2中/12.13.22/100 为 购买12.13,12.22,13.22共3注 总300 <br />\n			</p>\n	</div><div class=\"guize-group\">\n			<h3>玩法12 <b>【正码3中3竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一注竞猜3个不同数字，开奖结果正码(前6个数字)中含竞猜的3数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本680倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>3中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉3中/12.13.18/100 为 购买12.13.18一注100 <br />\n				☉如果竞猜数字超过3个则使用复式购买。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法13 <b>【正码4中4竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一注竞猜4个不同数字，开奖结果正码(前6个数字)中含竞猜的4数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本4800倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>4中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉4中/12.13.32.44/100 为 购买12.13.32.44一注100 <br />\n				☉如果一次竞猜超过4个数字则使用复式购买。<br />\n			</p>\n	</div>\n\n\n	<div class=\"guize-group\">\n		<h3>【竞猜说明】 </h3>\n		<p class=\"play-alert\">\n			 ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。</p>\n		<p class=\"play-alert\">\n			 ■一切结果以竞猜记录为准，如果扣了点未有竞猜记录，请联系客服处理，无任是否中奖一律按退还余点处理。\n		</p>\n	</div>\n </div>','100','0','0','');
/*!40000 ALTER TABLE `fn_lottery13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery14`
--

DROP TABLE IF EXISTS `fn_lottery14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `shengxiao` text,
  `shengxiaonian` text,
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `hongbo` text,
  `lanbo` text,
  `lvbo` text,
  `haoma` text,
  `zhengma` text NOT NULL,
  `xiao2` text,
  `xiao2nian` text,
  `xiao3` text,
  `xiao3nian` text,
  `xiao4` text,
  `xiao4nian` text,
  `xiao5` text,
  `xiao5nian` text,
  `zheng2` text,
  `zheng3` text,
  `zheng4` text,
  `shengxiao_min` text,
  `shengxiao_max` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `sebo_min` text,
  `sebo_max` text,
  `haoma_min` text,
  `haoma_max` text,
  `lianxiao_min` text,
  `lianxiao_max` text,
  `lianma_min` text,
  `lianma_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `wan3` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery14`
--

LOCK TABLES `fn_lottery14` WRITE;
/*!40000 ALTER TABLE `fn_lottery14` DISABLE KEYS */;
INSERT INTO `fn_lottery14` VALUES (10029,10029,'true','false','11.9','9.6','1.96','1.96','1.96','1.96','2.72','2.9','2.9','48','48','','','','','','','','','','','','10','10000','10','10000','10','10000','10','10000','10','10000','10','10000','10','10000',30,'<div class=\"guize-box\">\n	<div class=\"guize-group\">\n		<h2>【游戏介绍】</h2>\n		<p>\n			极速六合彩（英文：Mark Six）是马尼拉合法彩票，全天24小时，每分钟开奖，遇特殊情况会偶尔会有变动开奖时间。<br />\n		</p>\n		<h2>【相关资料】</h2>\n		<p>\n		【开奖时间】每分钟,全天1152期。<br />\n		【开始投注】开奖后即可投注。<br />\n		【封盘时间】开奖前15秒。<br />\n		【正 特 码】开奖结果前6个号码为正码，分别为正1到正6，第7个号码为特码。<br />\n		【生肖说明】生肖顺序为: 鼠↦牛↦虎↦兔↦龙↦蛇↦马↦羊↦猴↦鸡↦狗↦猪；如今年是狗年，就是以狗为开始，依顺序奖49个号码分别与12个生肖对应，如下：<br />\n			  ☉狗：1,13,25,37,49<br />\n			  ☉猪：12,24,36,48<br />\n			  ☉鼠：11,23,35,47<br />\n			  ☉牛：10,22,34,46<br />\n			  ☉虎：9,21,33,45<br />\n			  ☉兔：8,20,32,44<br />\n			  ☉龙：7,19,31,43<br />\n			  ☉蛇：5,18,30,42<br />\n			  ☉马：5,17,29,41<br />\n			  ☉羊：4,16,28,40<br />\n			  ☉猴：3,15,27,39<br />\n			  ☉鸡：2,14,26,38<br />\n		</p>\n  </div>\n<div class=\"guize-group\">\n		<h3>玩法1<b>【竞猜大小单双】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。开奖结果与所竞猜相同则为中奖，其余为不中，如果竞猜结果是49为和则竞猜还本。<br />\n			☉小: 01~24为小(含24)；<br />\n			☉大: 25~48为大(含48)；<br />\n			☉单: 01,03...45,47，不能整除2的奇数。<br />\n			☉双: 02,04...46,48；能整除2的偶数。<br />\n			☉和: 49(开和竞猜大小单双还本)\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span>含本1.98倍 <br /> \n			<span>■下注限额：</span>10-2000 <br />\n			<span>■单期上限：</span>50000 <br />\n			<span>■竞猜格式：</span>球号/大小单双/金额<br />\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉7/大/100 为 竞猜特码大100<br />\n				☉12/大/100 为 1,2号球大各100 总200\n		</p>\n	</div><div class=\"guize-group\">\n			<h3>玩法2 <b>【正特码定位竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码(1~7球)。一个数字1注(竞猜01~49)，竞猜球号数字与开奖数字相同则为中奖，否则为不中！<br />\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本47.25倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>球号/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉7/45/100 为 特码45号100 <br />\n				☉7/33.48/100 为 特码43,48号各100 总200 <br />\n				☉12/20.12/100 为1,2号球20,12号各100 总400\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法3 <b>【正码竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码（开奖的前6个球)。一个数字1注(竞猜01~49)，开奖结果中含竞猜数字即中奖，否则为不中。\n				<br />\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本7.21倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉45/100 为 45号买100 <br />\n				☉33.48/100 为 43,48号各买100 总200 <br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法4 <b>【正特生肖定位竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。竞猜生肖与开奖相同则为中奖，否则为不中！<br />\n			如:竞猜特码狗，开奖结果特码为狗，则中奖，其它情况为不中。<br />\n			如:竞猜正码1狗，开奖结果正码1为狗，则中奖，其它情况为不中。<br />\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br />\n						<b class=\"odds\">「生肖狗」</b>9.36倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds\">「其它生肖」</b>11.7倍含本, 单限:2000, 总限:50000<br />\n			<span>■最小限额：</span>10 <br />\n			<span>■竞猜格式：球号码/生肖/金额</span>\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉1/狗牛/100 为 正码1买生肖狗牛各100<br />\n				☉7/狗牛/100 为 特码买生肖狗牛各100<br />\n				☉12/狗牛/100 为 正码1,2买生肖狗牛各100<br />\n		</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法5 <b>【正特生肖（单肖）竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象正特码。一个生肖为竞猜单位，开奖结果含竞猜的生肖则为中奖，否则为不中！<br />\n			如:竞猜狗，开奖结果中含有生肖狗，则中奖，否则为不中。<br />\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br /> \n						<b class=\"odds\">「生肖狗」</b>1.77倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds\">「其它生肖」</b>2.09倍含本, 单限:2000, 总限:50000<br />\n			<span>■下注限额：</span>10-2000 <br />\n			<span>■单期上限：</span>50000 <br />\n			<span>■竞猜格式：</span>生肖/金额<br />\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉狗/100 为 买生肖狗各100<br />\n				☉狗牛/100 为  买生肖狗牛各100。\n		</p>\n	</div>\n<div class=\"guize-group\">\n		<h3>玩法6 <b>【正特码波色竞猜】</b></h3>\n		<p class=\"play-intro\">\n			竞猜对象为正特码(1~7球)。竞猜位置波色与开奖相同则为中奖，否则为不中！<br />\n			 <font color=\"red\">☉红波:01,02,07,08,12,13,18,19,23,           24,29,30,34,35,40,45,46；</font><br />\n			<font color=\"blue\">☉蓝波:03,04,09,10,14,15,20,25,           26,31,36,37,41,42,47,48；</font><br />\n			<font color=\"green\">☉绿波:05,06,11,16,17,21,22,27,           28,32,33,38,39,43,44,49；</font>\n		</p>\n		<p class=\"play-tips\">\n			<span>■竞猜奖励：</span><br />\n						<b class=\"odds red\">「红波」</b>2.8倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds blue\">「蓝波」</b>2.97倍含本, 单限:2000, 总限:50000<br />\n			<b class=\"odds green\">「绿波」</b>2.97倍含本, 单限:2000, 总限:50000<br />\n			<span>■最小限额：</span>10 <br />\n			<span>■竞猜格式：球号码/波色/金额</span>\n		</p>\n		<p class=\"play-case\">\n			<span>■竞猜例子：</span><br />\n				☉1/红波/100 为 正码1买红波100<br />\n				☉红波/100 为 特码买红波100<br />\n				☉12/红波/100 为 正码1,2买红波各100<br />\n				☉红波/100 = 7/红波/100 特码快捷下注。\n		</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法7 <b>【2肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜2个不同生肖，开奖结果中含竞猜的2个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>4.06倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>4.57倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>2肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉2肖/牛狗/100 为 购买牛狗100 <br />\n				☉2肖/牛狗.牛鸡/100 为 购买牛狗,牛鸡各100  总200 <br />\n				☉2肖/牛狗鸡/100 为 复式购买牛狗,牛鸡,狗鸡各100 总300 <br />\n				☉如果竞猜的生肖超过2个则用复式下注。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法8 <b>【3肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜3个不同生肖，开奖结果中含竞猜的3个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br />\n								<b class=\"odds\">「含狗」</b>10.76倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>11.65倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>3肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉3肖/牛狗鸡/100 为 购买牛狗鸡100 <br />\n				☉3肖/牛狗鸡.牛狗猪/100 为 购买牛狗鸡.牛狗猪各100  总200 <br />\n				☉3肖/牛狗鸡猪/100 为 复式购买牛狗鸡,牛狗猪,牛鸡猪,狗鸡猪各100 总400<br />\n				☉如果竞猜的生肖超过3个则用复式下注。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法9 <b>【4肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜4个不同生肖，开奖结果中含竞猜的4个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>32.07倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>34.08倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>4肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉4肖/牛狗鸡猪/100 为 购买牛狗鸡猪100 <br />\n				☉多注之间生肖.分开，超过4个生肖时为复式购买。\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法10 <b>【5肖竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正特码。一注竞猜5个不同生肖，开奖结果中含竞猜的5个生肖即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span><br /> \n								<b class=\"odds\">「含狗」</b>115.01倍含本, 单限:2000, 总限:50000<br />\n				<b class=\"odds\">「不含狗」</b>120.86倍含本, 单限:2000, 总限:50000<br />\n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>5肖/生肖/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉5肖/牛狗鸡猪鼠/100 为 购买牛狗鸡猪鼠100 <br />\n				☉多注之间生肖.分开，超过5个生肖时为复式购买。\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法11 <b>【正码2中2竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一主竞猜2个不同数字，开奖结果正码(前6个数字)中含竞猜的2数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本65倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>2中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉2中/12.13/100 为 购买12.13一注100 <br />\n				☉2中/12.13.22/100 为 购买12.13,12.22,13.22共3注 总300 <br />\n			</p>\n	</div><div class=\"guize-group\">\n			<h3>玩法12 <b>【正码3中3竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一注竞猜3个不同数字，开奖结果正码(前6个数字)中含竞猜的3数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本680倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>3中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉3中/12.13.18/100 为 购买12.13.18一注100 <br />\n				☉如果竞猜数字超过3个则使用复式购买。<br />\n			</p>\n	</div>\n<div class=\"guize-group\">\n			<h3>玩法13 <b>【正码4中4竞猜】</b></h3>\n			<p class=\"play-intro\">\n				竞猜对象为正码。一注竞猜4个不同数字，开奖结果正码(前6个数字)中含竞猜的4数字即中奖，否则为不中。\n			</p>\n			<p class=\"play-tips\">\n				<span>■竞猜奖励：</span>含本4800倍 <br /> \n				<span>■下注限额：</span>10-2000 <br />\n				<span>■单期上限：</span>50000 <br />\n				<span>■竞猜格式：</span>4中/数字/金额\n			</p>\n			<p class=\"play-case\">\n				<span>■竞猜例子：</span><br />\n				☉4中/12.13.32.44/100 为 购买12.13.32.44一注100 <br />\n				☉如果一次竞猜超过4个数字则使用复式购买。<br />\n			</p>\n	</div>\n\n\n	<div class=\"guize-group\">\n		<h3>【竞猜说明】 </h3>\n		<p class=\"play-alert\">\n			 ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。</p>\n		<p class=\"play-alert\">\n			 ■一切结果以竞猜记录为准，如果扣了点未有竞猜记录，请联系客服处理，无任是否中奖一律按退还余点处理。\n		</p>\n	</div>\n </div>','100','2','1','');
/*!40000 ALTER TABLE `fn_lottery14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery15`
--

DROP TABLE IF EXISTS `fn_lottery15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `tong_baozi` text,
  `tong_duizi` text,
  `tong_shunzi` text,
  `tong_sanza` text,
  `tong_erza` text,
  `zhi_baozi` text,
  `zhi_duizi` text,
  `zhi_shunzi` text,
  `zhi_sanza` text,
  `zhi_erza` text,
  `zhi_sanjun` text,
  `dx_min` int(11) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_min` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `dadan_min` int(11) DEFAULT NULL,
  `dadan_max` int(11) DEFAULT NULL,
  `xiaodan_min` int(11) DEFAULT NULL,
  `xiaodan_max` int(11) DEFAULT NULL,
  `dashuang_min` int(11) DEFAULT NULL,
  `dashuang_max` int(11) DEFAULT NULL,
  `xiaoshuang_min` int(11) DEFAULT NULL,
  `xiaoshuang_max` int(11) DEFAULT NULL,
  `tong_baozi_min` int(255) DEFAULT NULL,
  `tong_baozi_max` int(11) DEFAULT NULL,
  `tong_shunzi_min` int(11) DEFAULT NULL,
  `tong_shunzi_max` int(11) DEFAULT NULL,
  `tong_duizi_min` int(11) DEFAULT NULL,
  `tong_duizi_max` int(11) DEFAULT NULL,
  `tong_sanza_min` int(11) DEFAULT NULL,
  `tong_sanza_max` int(11) DEFAULT NULL,
  `tong_erza_min` int(11) DEFAULT NULL,
  `tong_erza_max` int(11) DEFAULT NULL,
  `zhi_baozi_min` int(11) DEFAULT NULL,
  `zhi_baozi_max` int(11) DEFAULT NULL,
  `zhi_shunzi_min` int(11) DEFAULT NULL,
  `zhi_shunzi_max` int(11) DEFAULT NULL,
  `zhi_duizi_min` int(255) DEFAULT NULL,
  `zhi_duizi_max` int(255) DEFAULT NULL,
  `zhi_sanza_min` int(255) DEFAULT NULL,
  `zhi_sanza_max` int(255) DEFAULT NULL,
  `zhi_erza_min` int(255) DEFAULT NULL,
  `zhi_erza_max` int(255) DEFAULT NULL,
  `zhi_sanjun_min` int(255) DEFAULT NULL,
  `zhi_sanjun_max` int(255) DEFAULT NULL,
  `setting_10shazuhe` text,
  `setting_baozitongsha` text,
  `setting_open` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery15`
--

LOCK TABLES `fn_lottery15` WRITE;
/*!40000 ALTER TABLE `fn_lottery15` DISABLE KEYS */;
INSERT INTO `fn_lottery15` VALUES (10029,10029,'false','true','1.98','1.98','1.99','1.99','3.98','3.99','3.98','3.99','32','2','8','1.8','1.5','190','12','32','32','6.5','5.9',1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,'true','true',1,15,'<div class=\"RuleT1\">【台湾快三】</div>    <div class=\"RuleT2\">台湾快三是由台湾地区发行的福利型公益彩票</div>    快3游戏投注是指以三个号码组合为一注进行单式投注，每个投注号码为1-6共六个自然数中的任意一个，一组三个号码的组合称为一注。购买者可对其选定的投注号码进行多倍投注，投注倍数范围为7-190倍。<br>    <br>    <div class=\"RuleT2\">【相关资料】</div>    【开奖官网】 www.uc3039.com<br>    【开奖时间】 全天共960期 每90秒一期<br>    <br>    <div class=\"RuleT2\">【玩法】</div>    <div class=\"RuleT3\">【总和大小单双】</div>    <div class=\"RuleT3\">由三粒骰子的结果相加，所得的数值3到10为小，11到18为大。奇数为单，偶数为双。</div>    举例：竞猜总小100，开奖结果为：1+2+3=6，开奖结果小于11，视为中奖。否则视为不中奖。<br>    ■奖历：含本1.98倍<br>    ■限额：10-10,000<br>    ■格式：总/大小单双/金额<br>    例：总/大/100 = 买总和大于11, 100元 <br>    <div class=\"RuleT3\">【总和组合玩法】</div>    <div class=\"RuleT3\">与总和大小单双相同, 组合玩法为:大单/小单/大双/小双。</div>    举例：竞猜总和大单100。开奖结果为：6+2+3=11（即为大又为单），视为中奖。<br>    举例：竞猜总和大单100。开奖结果为：6+2+3=11 （只为大不为单），视为不中奖。<br>    ■奖历：<br>    大单: 含本2.0倍<br>    小单: 含本2.0倍<br>    大双: 含本2.0倍<br>    小双: 含本2.4倍<br>    ■限额：10-20,000<br>    ■格式：总/大单、小单、大双、小双/金额<br>    例：总/大单/100 = 买总和的大单100<br>    <div class=\"RuleT3\">【通选玩法】</div>    <div class=\"RuleT3\">开奖结果的三位数开出号码为豹子、顺子、对子、三杂、二杂。</div>    豹子：如222、111..999等<br>    顺子：如123、234、456…等<br>    对子：如112、233、556…等(不包括豹子)<br>    三杂：如621、789、421...等<br>    二杂：如128、133、326...等<br>    ※如果开奖号码为豹子、对子、顺子、三杂、二杂则视为中奖。<br>    ■奖历、限额：<br>    豹子含本32倍，限额10-2,000<br>    顺子含本8倍，限额10-10,000<br>    对子含本2倍，限额10-20,000<br>    三杂含本1.8倍，限额10-20,000<br>    二杂含本1.5倍，限额10-20,000<br>    ■格式：特/种类/金额<br>    例：特/对子/300 = 买对子300<br>    例：特/豹子/100 = 买豹子100<br>    例：特/三杂/100 = 买三杂100<br>    <div class=\"RuleT3\">【直选玩法】</div>    <div class=\"RuleT3\">与通选玩法类似,直接选择豹子、对子、顺子、三杂、二杂会出现的号码 </div>    举例：豹子/222/100 , 如果开奖号码为222 则为中奖<br>    举例：三杂/135/100 , 如果开奖号码为135 则为中奖<br>    ■奖历：<br>    豹子含本190倍，限额10-2,000<br>    顺子含本32倍，限额10-10,000<br>    对子含本12倍，限额10-20,000<br>    三杂含本32倍，限额10-20,000<br>    二杂含本6.5倍，限额10-20,000<br>    ■限额：10-20,000<br>    ■格式：种类/号码/金额<br>    例：豹子/111-222-333/100 = 买豹子111/222/333 各100元 = 300元 <br>    例：顺子/123-456/100 = 买顺子123/456各100元 = 200元<br>    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>    <br>    <br>    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有竞猜的情况下以结果论的要求赔偿损失，所有竞猜皆以会员竞猜记录明细为主。</div>','2','1','');
/*!40000 ALTER TABLE `fn_lottery15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery16`
--

DROP TABLE IF EXISTS `fn_lottery16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `tema` text,
  `zongda` text,
  `zongxiao` text,
  `zongdan` text,
  `zongshuang` text,
  `long` text,
  `hu` text,
  `he` text,
  `q_baozi` text,
  `z_baozi` text,
  `h_baozi` text,
  `q_duizi` text,
  `z_duizi` text,
  `h_duizi` text,
  `q_shunzi` text,
  `z_shunzi` text,
  `h_shunzi` text,
  `q_banshun` text,
  `z_banshun` text,
  `h_banshun` text,
  `q_zaliu` text,
  `z_zaliu` text,
  `h_zaliu` text,
  `dx_min` int(11) DEFAULT '0',
  `ds_min` int(11) DEFAULT NULL,
  `lh_min` int(11) DEFAULT NULL,
  `tm_min` int(11) DEFAULT NULL,
  `zh_min` int(11) DEFAULT NULL,
  `bz_min` int(11) DEFAULT NULL,
  `dz_min` int(255) DEFAULT NULL,
  `sz_min` int(255) DEFAULT NULL,
  `bs_min` int(255) DEFAULT NULL,
  `zl_min` int(255) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `lh_max` int(11) DEFAULT NULL,
  `tm_max` int(255) DEFAULT NULL,
  `zh_max` int(255) DEFAULT NULL,
  `bz_max` int(255) DEFAULT NULL,
  `dz_max` int(255) DEFAULT NULL,
  `sz_max` int(255) DEFAULT NULL,
  `bs_max` int(255) DEFAULT NULL,
  `zl_max` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery16`
--

LOCK TABLES `fn_lottery16` WRITE;
/*!40000 ALTER TABLE `fn_lottery16` DISABLE KEYS */;
INSERT INTO `fn_lottery16` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','9.8','1.96','1.96','1.96','1.96','2','2','9.6','90','90','90','3.5','3.5','3.5','15','15','15','2.6','2.6','2.6','3','3','3',10,10,10,10,10,0,10,10,10,11,20000,20000,20000,5000,5000,5000,5000,5000,5000,5000,5,'<div class=\"RuleT1\">【腾讯分分彩】</div>\n<div class=\"RuleT2\">【游戏介绍】</div>\n腾讯分分彩是经中国国家财政部批准由中国腾讯公司彩票发行中心统一发行的『时时彩』具玩法简单、中奖率高、开奖快。腾讯分分彩是国内首个快开彩票，也是国内第一个开设夜场的快开彩票。<br>\n<br>\n<div class=\"RuleT2\">【相关资料】</div>\n【开奖官网】www.cqcp.net <br>\n【开奖时间】全天24小时，每分钟开一次，全天共1440期。<br>\n<br>\n<div class=\"RuleT2\">【玩法】</div>\n<div class=\"RuleT2\">位数即为第几球<br>\n【万=1球】【千=2球】【百=3球】【十=4球】【个=5球】<r=br>\n</div>\n<div class=\"RuleT3\">【一星定位】</div>\n<div class=\"RuleT3\">万、千、百、十、个位数中分别从0～9中任意选择一个或一个以上号码竞猜。开奖结果与竞猜位数、号码相同即视为中奖，其余情形则视为不中奖。</div>\n举例：竞猜【万】1【千】3【百】2【十】4【个】5，开奖结果为：【万】1【千】1【百】2【十】2【个】5，其中[万][百][个]位数奖号与竞猜位数号码相符，视为中奖。 其余[千][十]位数奖号与竞猜位数号码不相符，视为不中奖。<br>\n■奖励：含本9.8倍<br>\n■限额：10-10,000<br>\n■格式：位数/号码/金额<br>\n例：1/5/100 = 买万位数的5号100 <br>\n例：5/5/100 = 买个位数的5号100 <br>\n例：123/5/100 = 买万位、千位、百位的5号各100 = 总300 <br>\n<div class=\"RuleT3\">【双面盘】</div>\n<div class=\"RuleT3\">万、千、百、十、个位数中的\"大、小、单、双\"。0-4为小，5-9为大；1、3、5、7、9为单，0、2、4、6、8为双。</div>\n举例：竞猜万位数 \"大\"。开奖结果为：59436 【万】位数号码为\"大\"，视为中奖。<br>\n举例：竞猜百位数 \"双\"。开奖结果为：59336 【百】位数号码为\"单\"，视为不中奖。<br>\n■奖励：含本1.96倍<br>\n■限额：10-20,000<br>\n■格式：球号/大、小、单、双/金额<br>\n例：2/单/100 = 买千位的单100<br>\n例：5/大/200 = 买个位的大200<br>\n例：123/大/100 = 买万位、千位、百位的大各100 = 总300 <br>\n<div class=\"RuleT3\">【前、中、后三总和】</div>\n<div class=\"RuleT3\">分为选择前三总和【万千百】、中三总和【千百十】、后三总和【百十个】所竞猜位置的三位数开出号码为豹子、顺子、对子、半顺、杂六。</div>\n豹子：如000、111..999等<br>\n顺子：如234、890、901…等(顺序不限)<br>\n对子：如001、288、585…等(不包括豹子)<br>\n半顺：所竞猜位置的三位数开出号码任意两个顺序数字相连（不包括顺子、对子，号码9、0、1相连）。如235、378、283…等。<br>\n※如果开奖号码为前三顺子、前三对子，则前三半顺视为不中奖。 <br>\n杂六：所竞猜位置的三位数开出号码皆不相同且不能为连号，视为杂六。如179、264、802…等。<br>\n※如果开奖号码为中三豹子、中三顺子、中三对子、中三半顺，则杂六视为不中奖。<br>\n■奖励、限额：<br>\n豹子含本90倍，限额10-2,000<br>\n顺子含本15倍，限额10-10,000<br>\n对子含本3.5倍，限额10-20,000<br>\n半顺含本2.6倍，限额10-20,000<br>\n杂六含本3倍，限额10-20,000<br>\n■格式：定位/种类/金额<br>\n例：前/对子/300 = 买前对子300<br>\n例：中/豹子/100 = 买中豹子100<br>\n例：后/杂六/100 = 买后杂六100<br>\n<div class=\"RuleT3\">【五球总和】</div>\n<div class=\"RuleT3\">总和大小：万、千、百、十、个五个位数加总作为开奖依据，五位数总和0~22为小，23~45为大。 </div>\n<div class=\"RuleT3\">总和单双：万、千、百、十、个五个位数加总作为开奖依据，五位数总和1、3、5…43、45为单，总和0、2、4、6…42、44为双。 </div>\n■奖励：含本1.96倍<br>\n■限额：10-20,000<br>\n■格式：大、小、单、双/金额<br>\n例：总大200 <br>\n例：总单100<br>\n<div class=\"RuleT3\">【龙虎】</div>\n<div class=\"RuleT3\">万位数为龙、个位数为虎，以万、个两位数比大小，号码0为最小、9为最大。开奖第一球万大于第五球个为龙，反之为虎。万、个两位数号码相同，则为和。</div>\n■奖励：<br>\n「龙」含本2倍<br>\n「虎」含本2倍<br>\n「和」含本9.6倍<br>\n■限额：10-20,000<br>\n■格式：龙、虎、和/金额<br>\n例：龙/200<br>\n例：和/100<br>\n<div class=\"RuleT3\">【包号】</div>\n<div class=\"RuleT3\">包号投注与一星投注的结算方法相同。例如下1/100(不加球号)，则下注将为12345/1/100，开奖结果5球内如果有1则视为中奖，反之未中奖！</div>\n■奖励：<br>\n含本XXXX倍<br>\n■限额：10-20,000<br>\n■格式：包/位数/金额<br>\n例：包/1/200<br>\n例：1/100<br>\n<div class=\"RuleT2\" style=\"color: red;\">\n注意！如若不加位数默认识别为万位投注（除包号玩法以外）\n</div>\n<div class=\"RuleT2\">每期下注：总额10万封顶！</div>\n<br>\n<br>\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有竞猜的情况下以结果论的要求赔偿损失，所有竞猜皆以会员竞猜记录明细为主。</div>','0','0','0');
/*!40000 ALTER TABLE `fn_lottery16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery17`
--

DROP TABLE IF EXISTS `fn_lottery17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery17`
--

LOCK TABLES `fn_lottery17` WRITE;
/*!40000 ALTER TABLE `fn_lottery17` DISABLE KEYS */;
INSERT INTO `fn_lottery17` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','1.96','1.96','4.5','3','3','4.5','2.1','1.7','1.7','2.1','42','21','14','10','8','9.8','10','20000','10','20000','10','20000','10','5000','10','5000','10','5000',30,'<div class=\"RuleT1\">【澳洲幸运10】</div>\r\n    <div class=\"RuleT2\">【游戏介绍】</div>\r\n    澳洲幸运10是经国家财政部批准，由澳洲国家福利彩票管理中心统一发行的赛车主题排列型高频彩票；每期开奖车号共十个,每个车号除了整合玩法，第1~10名、冠亚和值、冠亚组合分别为一个竞猜组，大小/单双/龙虎、车道数字、冠亚大小、冠亚特码、十球全接、特码区段。<br>\r\n    澳洲幸运10、幸运飞艇同以「1~10」十个号码作为开奖依据，完全公平公正公开、开奖透明、无法作弊！<br>\r\n    <br>\r\n    <div class=\"RuleT2\">【相关资料】</div>\r\n    【开奖官网】官网：http://www.azbo.com/<br>\r\n    【官方APP下载】请直接搜索「澳洲幸运10」<br>\r\n    【开奖时间】澳洲幸运10为每天上午09:07~晚上23:57每五分钟开奖一期，每天179期，与官网完全同步。<br>\r\n    <br>\r\n    <div class=\"RuleT2\">【玩法】</div>\r\n    <div class=\"RuleT3\">【1~10名猜大小单双】</div>\r\n    <div class=\"RuleT3\">第一名～第十名车号：开出之号码大于或等于6为大，小于或等于5为小。开出的号码偶数为双，号码奇数为单。</div>\r\n    ■奖励：含本1.96倍<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：名次/大小单双/金额<br>\r\n    　例：12345/双/100 = 1~5车道买双各100 = 总500<br>\r\n    <div class=\"RuleT3\">【1~10名猜车号】</div>\r\n    <div class=\"RuleT3\">每一个车号为一竞猜组合，开奖结果「竞猜车号」对应所猜「车道」视为中奖，其余情形视为不中奖。</div>\r\n    ■奖励：含本9.8倍<br>\r\n    ■限额：10-10,000<br>\r\n    ■格式：名次/号码/金额<br>\r\n    　例：12345/89/20 = 1~5车道的8号、9号各买20 = 总200<br>\r\n    　例：1357/890/20 = 1.3.5.7车道的8号、9号、10号各买20 = 总240<br>\r\n    <div class=\"RuleT3\">【1~5名猜龙虎】</div>\r\n    <div class=\"RuleT3\">(1)第一名vs第十名，(2)第二名vs第九名，(3)第三名vs第八名，(4)第四名vs第七名，(5)第五名vs第六名，前比后大为龙，反之为虎。</div>\r\n    ■奖励：含本1.96倍<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：名次/号码/金额<br>\r\n    　例：123/龙/100 = 1~3车道买龙各100=总300<br>\r\n   <div class=\"RuleT3\">【猜冠亚号码】 </div>\r\n<div class=\"RuleT3\">猜冠军及亚军车号（前2名），每次竞猜2个号码，顺序不限。 </div>\r\n■格式：组/号码/金额 <br>\r\n例：组/5-6/50=5号.6号在冠亚军（顺序不限）=总下注50 <br>\r\n例：组/1-9.3-7/100=1.9号车或3.7号车再冠亚军（顺序不限）=总下注200<br>\r\n    <div class=\"RuleT3\">【冠亚和值(特码)猜大小单双】</div>\r\n    <div class=\"RuleT3\">冠军车号+亚军车号 = 冠亚和值 = 特码 = 数字3~19</div>\r\n    <div class=\"RuleT3\">冠亚和值大于或等于12为大，小于或等于11为小。开出的号码偶数为双，号码奇数为单。</div>\r\n    ■奖励：<br>\r\n    　「大」、「双」含本2.1倍。<br>\r\n    　「小」、「单」含本1.7倍。<br>\r\n    ■限额：10-20,000<br>\r\n    ■格式：和/大小单双/金额<br>\r\n    　例：和双100 = 「冠亚和」的双100<br>\r\n    　例：和大100 = 「冠亚和」的大100<br>\r\n    <div class=\"RuleT3\">【冠亚和值(特码)猜数字】</div>\r\n    <div class=\"RuleT3\">「冠亚和值」为「特码」可能出现的结果为3~19，竞猜中对应「冠亚和值」数字的视为中奖，其余视为不中奖。</div>\r\n    ■奖励：<br>\r\n    　3.4.18.19，含本42倍，限额10-1,000<br>\r\n    　5.6.16.17，含本21倍，限额10-2,000<br>\r\n    　7.8.14.15，含本14倍，限额10-3,000<br>\r\n    　9.10.12.13，含本10倍，限额10-4,000<br>\r\n    　11，含本8倍，限额10-5,000<br>\r\n    ■格式：和(特)/数字/金额<br>\r\n    　例：和567/100 = 竞猜「冠亚和」的值为5或6或7各100 = 总300<br>\r\n    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>\r\n    <br>\r\n    <div class=\"RuleT2\">【说明】</div>\r\n    ■没带名次默认竞猜第一名，如「双/100」第一名双100、「123/100」第一名123号各100<br>\r\n    ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。<br>\r\n    ■0号即为10号，竞猜时输入0即为10，输入10即为1、10号。<br>\r\n    　例：0/0/100 = 视为竞猜第10名10号车冠军<br>\r\n    　例：0/100 = 视为竞猜第1名10号车冠军<br>\r\n    <br>\r\n    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>\r\n','0','0','0');
/*!40000 ALTER TABLE `fn_lottery17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery18`
--

DROP TABLE IF EXISTS `fn_lottery18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `tema` text,
  `zongda` text,
  `zongxiao` text,
  `zongdan` text,
  `zongshuang` text,
  `long` text,
  `hu` text,
  `he` text,
  `q_baozi` text,
  `z_baozi` text,
  `h_baozi` text,
  `q_duizi` text,
  `z_duizi` text,
  `h_duizi` text,
  `q_shunzi` text,
  `z_shunzi` text,
  `h_shunzi` text,
  `q_banshun` text,
  `z_banshun` text,
  `h_banshun` text,
  `q_zaliu` text,
  `z_zaliu` text,
  `h_zaliu` text,
  `dx_min` int(11) DEFAULT '0',
  `ds_min` int(11) DEFAULT NULL,
  `lh_min` int(11) DEFAULT NULL,
  `tm_min` int(11) DEFAULT NULL,
  `zh_min` int(11) DEFAULT NULL,
  `bz_min` int(11) DEFAULT NULL,
  `dz_min` int(255) DEFAULT NULL,
  `sz_min` int(255) DEFAULT NULL,
  `bs_min` int(255) DEFAULT NULL,
  `zl_min` int(255) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `lh_max` int(11) DEFAULT NULL,
  `tm_max` int(255) DEFAULT NULL,
  `zh_max` int(255) DEFAULT NULL,
  `bz_max` int(255) DEFAULT NULL,
  `dz_max` int(255) DEFAULT NULL,
  `sz_max` int(255) DEFAULT NULL,
  `bs_max` int(255) DEFAULT NULL,
  `zl_max` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery18`
--

LOCK TABLES `fn_lottery18` WRITE;
/*!40000 ALTER TABLE `fn_lottery18` DISABLE KEYS */;
INSERT INTO `fn_lottery18` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','9.8','1.96','1.96','1.96','1.96','2','2','9.6','90','90','90','3.5','3.5','3.5','15','15','15','2.6','2.6','2.6','3','3','3',10,10,10,10,10,10,10,10,10,10,20000,20000,20000,5000,20000,5000,5000,5000,5000,5000,30,'<div class=\"RuleT1\">【澳洲幸运5】</div>\r\n<div class=\"RuleT2\">【游戏介绍】</div>\r\n澳洲幸运5是经澳洲国家财政部批准由澳洲福利彩票发行中心统一发行的『时时彩』具玩法简单、中奖率高、开奖快。澳洲幸运5是国内首个快开彩票，也是国内第一个开设夜场的快开彩票。<br>\r\n<br>\r\n<div class=\"RuleT2\">【相关资料】</div>\r\n【开奖官网】www.cqcp.net <br>\r\n【开奖时间】白天10:00至晚上21:55,10分钟开奖一次，晚上22:00至凌晨02:00，5分钟开奖一次，全天共120期。<br>\r\n<br>\r\n<div class=\"RuleT2\">【玩法】</div>\r\n<div class=\"RuleT2\">位数即为第几球<br>\r\n【万=1球】【千=2球】【百=3球】【十=4球】【个=5球】<r=br>\r\n</div>\r\n<div class=\"RuleT3\">【一星定位】</div>\r\n<div class=\"RuleT3\">万、千、百、十、个位数中分别从0～9中任意选择一个或一个以上号码竞猜。开奖结果与竞猜位数、号码相同即视为中奖，其余情形则视为不中奖。</div>\r\n举例：竞猜【万】1【千】3【百】2【十】4【个】5，开奖结果为：【万】1【千】1【百】2【十】2【个】5，其中[万][百][个]位数奖号与竞猜位数号码相符，视为中奖。 其余[千][十]位数奖号与竞猜位数号码不相符，视为不中奖。<br>\r\n■奖励：含本9.8倍<br>\r\n■限额：10-10,000<br>\r\n■格式：位数/号码/金额<br>\r\n例：1/5/100 = 买万位数的5号100 <br>\r\n例：5/5/100 = 买个位数的5号100 <br>\r\n例：123/5/100 = 买万位、千位、百位的5号各100 = 总300 <br>\r\n<div class=\"RuleT3\">【双面盘】</div>\r\n<div class=\"RuleT3\">万、千、百、十、个位数中的\"大、小、单、双\"。0-4为小，5-9为大；1、3、5、7、9为单，0、2、4、6、8为双。</div>\r\n举例：竞猜万位数 \"大\"。开奖结果为：59436 【万】位数号码为\"大\"，视为中奖。<br>\r\n举例：竞猜百位数 \"双\"。开奖结果为：59336 【百】位数号码为\"单\"，视为不中奖。<br>\r\n■奖励：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：球号/大、小、单、双/金额<br>\r\n例：2/单/100 = 买千位的单100<br>\r\n例：5/大/200 = 买个位的大200<br>\r\n例：123/大/100 = 买万位、千位、百位的大各100 = 总300 <br>\r\n<div class=\"RuleT3\">【前、中、后三总和】</div>\r\n<div class=\"RuleT3\">分为选择前三总和【万千百】、中三总和【千百十】、后三总和【百十个】所竞猜位置的三位数开出号码为豹子、顺子、对子、半顺、杂六。</div>\r\n豹子：如000、111..999等<br>\r\n顺子：如234、890、901…等(顺序不限)<br>\r\n对子：如001、288、585…等(不包括豹子)<br>\r\n半顺：所竞猜位置的三位数开出号码任意两个顺序数字相连（不包括顺子、对子，号码9、0、1相连）。如235、378、283…等。<br>\r\n※如果开奖号码为前三顺子、前三对子，则前三半顺视为不中奖。 <br>\r\n杂六：所竞猜位置的三位数开出号码皆不相同且不能为连号，视为杂六。如179、264、802…等。<br>\r\n※如果开奖号码为中三豹子、中三顺子、中三对子、中三半顺，则杂六视为不中奖。<br>\r\n■奖励、限额：<br>\r\n豹子含本90倍，限额10-2,000<br>\r\n顺子含本15倍，限额10-10,000<br>\r\n对子含本3.5倍，限额10-20,000<br>\r\n半顺含本2.6倍，限额10-20,000<br>\r\n杂六含本3倍，限额10-20,000<br>\r\n■格式：定位/种类/金额<br>\r\n例：前/对子/300 = 买前对子300<br>\r\n例：中/豹子/100 = 买中豹子100<br>\r\n例：后/杂六/100 = 买后杂六100<br>\r\n<div class=\"RuleT3\">【五球总和】</div>\r\n<div class=\"RuleT3\">总和大小：万、千、百、十、个五个位数加总作为开奖依据，五位数总和0~22为小，23~45为大。 </div>\r\n<div class=\"RuleT3\">总和单双：万、千、百、十、个五个位数加总作为开奖依据，五位数总和1、3、5…43、45为单，总和0、2、4、6…42、44为双。 </div>\r\n■奖励：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：大、小、单、双/金额<br>\r\n例：总大200 <br>\r\n例：总单100<br>\r\n<div class=\"RuleT3\">【龙虎】</div>\r\n<div class=\"RuleT3\">万位数为龙、个位数为虎，以万、个两位数比大小，号码0为最小、9为最大。开奖第一球万大于第五球个为龙，反之为虎。万、个两位数号码相同，则为和。</div>\r\n■奖励：<br>\r\n「龙」含本2倍<br>\r\n「虎」含本2倍<br>\r\n「和」含本9.6倍<br>\r\n■限额：10-20,000<br>\r\n■格式：龙、虎、和/金额<br>\r\n例：龙/200<br>\r\n例：和/100<br>\r\n<div class=\"RuleT3\">【包号】</div>\r\n<div class=\"RuleT3\">包号投注与一星投注的结算方法相同。例如下1/100(不加球号)，则下注将为12345/1/100，开奖结果5球内如果有1则视为中奖，反之未中奖！</div>\r\n■奖励：<br>\r\n含本XXXX倍<br>\r\n■限额：10-20,000<br>\r\n■格式：包/位数/金额<br>\r\n例：包/1/200<br>\r\n例：1/100<br>\r\n<div class=\"RuleT2\" style=\"color: red;\">\r\n注意！如若不加位数默认识别为万位投注（除包号玩法以外）\r\n</div>\r\n<div class=\"RuleT2\">每期下注：总额10万封顶！</div>\r\n<br>\r\n<br>\r\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有竞猜的情况下以结果论的要求赔偿损失，所有竞猜皆以会员竞猜记录明细为主。</div>','0','0','');
/*!40000 ALTER TABLE `fn_lottery18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery2`
--

DROP TABLE IF EXISTS `fn_lottery2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery2`
--

LOCK TABLES `fn_lottery2` WRITE;
/*!40000 ALTER TABLE `fn_lottery2` DISABLE KEYS */;
INSERT INTO `fn_lottery2` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','1.96','1.96','3','2','2','3','2.1','1.7','1.7','2.1','42','21','14','10','8','9.8','10','10000','10','10000','10','10000','10','2000','10','2000','10','2000',30,'<div class=\"RuleT1\">【幸运飞艇】</div>\n    <div class=\"RuleT2\">【游戏介绍】</div>\n    幸运飞艇：是马耳他共和国瓦莱塔福利联合委员会独家发行的一款高效率快乐猜，源于F1赛艇的彩票游戏；幸运飞艇除了整合玩法，第1~10名、冠亚和值、冠亚组合分别为一个竞猜组，大小/单双/龙虎、船号数字、冠亚大小、冠亚特码、十球全接、特码区段。<br>\n    幸运飞艇、北京赛车同以「1~10」十个号码作为开奖依据，完全公平公正公开、开奖透明、无法作弊！<br>\n    <br>\n    <div class=\"RuleT2\">【相关资料】</div>\n    【开奖官网】http://www.luckyairship.com<br>\n    【官方APP下载】请直接搜索「幸运飞艇」<br>\n    【开奖时间】幸运飞艇为每天13点09分开始，第二天凌晨04点04分结束，五分钟一期，一共是179期，与官网完全同步。<br>\n    <br>\n    <div class=\"RuleT2\">【玩法】</div>\n    <div class=\"RuleT3\">【1~10名猜大小单双】</div>\n    <div class=\"RuleT3\">第一名～第十名车号：开出之号码大于或等于6为大，小于或等于5为小。开出的号码偶数为双，号码奇数为单。</div>\n    ■奖励：含本1.96倍<br>\n    ■限额：10-20,000<br>\n    ■格式：名次/大小单双/金额<br>\n    　例：12345/双/100 = 1~5车道买双各100 = 总500<br>\n    <div class=\"RuleT3\">【1~10名猜车号】</div>\n    <div class=\"RuleT3\">每一个车号为一竞猜组合，开奖结果「竞猜车号」对应所猜「车道」视为中奖，其余情形视为不中奖。</div>\n    ■奖励：含本9.8倍<br>\n    ■限额：10-10,000<br>\n    ■格式：名次/号码/金额<br>\n    　例：12345/89/20 = 1~5车道的8号、9号各买20 = 总200<br>\n    　例：1357/890/20 = 1.3.5.7车道的8号、9号、10号各买20 = 总240<br>\n    <div class=\"RuleT3\">【1~10名猜组合】</div>\n    <div class=\"RuleT3\">竞猜内容为「大单」「小双」「小单」「大双」，共4种。</div>\n    ■奖励：<br>\n    　「大单」、「小双」含本4.5倍，<br>\n    　「小单」、「大双」含本3倍。<br>\n    ■限额：10-10,000<br>\n    ■格式：名次/组合/金额<br>\n    　例：890/大单/50 = 8.9.10车道大单各买50 = 总150<br>\n    <div class=\"RuleT3\">【1~5名猜龙虎】</div>\n    <div class=\"RuleT3\">(1)第一名vs第十名，(2)第二名vs第九名，(3)第三名vs第八名，(4)第四名vs第七名，(5)第五名vs第六名，前比后大为龙，反之为虎。</div>\n    ■奖励：含本1.96倍<br>\n    ■限额：10-20,000<br>\n    ■格式：名次/号码/金额<br>\n    　例：123/龙/100 = 1~3车道买龙各100=总300<br>\n    <div class=\"RuleT3\">【冠亚和值(特码)猜大小单双】</div>\n    <div class=\"RuleT3\">冠军车号+亚军车号 = 冠亚和值 = 特码 = 数字3~19</div>\n    <div class=\"RuleT3\">冠亚和值大于或等于12为大，小于或等于11为小。开出的号码偶数为双，号码奇数为单。</div>\n    ■奖励：<br>\n    　「大」、「双」含本2.1倍。<br>\n    　「小」、「单」含本1.7倍。<br>\n    ■限额：10-20,000<br>\n    ■格式：和(特)/大小单双/金额<br>\n    　例：和双100 = 「冠亚和」的双100<br>\n    　例：和大100 = 「冠亚和」的大100<br>\n    <div class=\"RuleT3\">【冠亚和值(特码)猜数字】</div>\n    <div class=\"RuleT3\">「冠亚和值」为「特码」可能出现的结果为3~19，竞猜中对应「冠亚和值」数字的视为中奖，其余视为不中奖。</div>\n    ■奖励：<br>\n    　3.4.18.19，含本42倍，限额10-1,000<br>\n    　5.6.16.17，含本21倍，限额10-2,000<br>\n    　7.8.14.15，含本14倍，限额10-3,000<br>\n    　9.10.12.13，含本10倍，限额10-4,000<br>\n    　11，含本8倍，限额10-5,000<br>\n    ■格式：和/数字/金额<br>\n    　例：和567/100 = 竞猜「冠亚和」的值为5或6或7各100 = 总300<br>\n    <div class=\"RuleT2\">【说明】</div>\n    ■没带名次默认竞猜第一名，如「双/100」第一名双100、「123/100」第一名123号各100<br>\n    ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。<br>\n    ■0号即为10号，竞猜时输入0即为10，输入10即为1、10号。<br>\n    　例：0/0/100 = 视为竞猜第10名10号车冠军<br>\n    　例：0/100 = 视为竞猜第1名10号车冠军<br>\n    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>\n    <br>\n    <br>\n    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>','0','0','0');
/*!40000 ALTER TABLE `fn_lottery2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery3`
--

DROP TABLE IF EXISTS `fn_lottery3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `tema` text,
  `zongda` text,
  `zongxiao` text,
  `zongdan` text,
  `zongshuang` text,
  `long` text,
  `hu` text,
  `he` text,
  `q_baozi` text,
  `z_baozi` text,
  `h_baozi` text,
  `q_duizi` text,
  `z_duizi` text,
  `h_duizi` text,
  `q_shunzi` text,
  `z_shunzi` text,
  `h_shunzi` text,
  `q_banshun` text,
  `z_banshun` text,
  `h_banshun` text,
  `q_zaliu` text,
  `z_zaliu` text,
  `h_zaliu` text,
  `dx_min` int(11) DEFAULT '0',
  `ds_min` int(11) DEFAULT NULL,
  `lh_min` int(11) DEFAULT NULL,
  `tm_min` int(11) DEFAULT NULL,
  `zh_min` int(11) DEFAULT NULL,
  `bz_min` int(11) DEFAULT NULL,
  `dz_min` int(255) DEFAULT NULL,
  `sz_min` int(255) DEFAULT NULL,
  `bs_min` int(255) DEFAULT NULL,
  `zl_min` int(255) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `lh_max` int(11) DEFAULT NULL,
  `tm_max` int(255) DEFAULT NULL,
  `zh_max` int(255) DEFAULT NULL,
  `bz_max` int(255) DEFAULT NULL,
  `dz_max` int(255) DEFAULT NULL,
  `sz_max` int(255) DEFAULT NULL,
  `bs_max` int(255) DEFAULT NULL,
  `zl_max` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery3`
--

LOCK TABLES `fn_lottery3` WRITE;
/*!40000 ALTER TABLE `fn_lottery3` DISABLE KEYS */;
INSERT INTO `fn_lottery3` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','9.8','1.96','1.96','1.96','1.96','2','2','9.6','90','90','90','3.5','3.5','3.5','15','15','15','2.6','2.6','2.6','3','3','3',10,10,10,10,10,10,10,10,10,10,20000,20000,20000,5000,5000,5000,5000,5000,5000,5000,60,'<div class=\"RuleT1\">【重庆欢乐生肖】</div>\r\n<div class=\"RuleT2\">【游戏介绍】</div>\r\n重庆欢乐生肖是经中国国家财政部批准由中国重庆福利彩票发行中心统一发行的『时时彩』具玩法简单、中奖率高、开奖快。重庆欢乐生肖是国内首个快开彩票，也是国内第一个开设夜场的快开彩票。<br>\r\n<br>\r\n<div class=\"RuleT2\">【相关资料】</div>\r\n【开奖官网】www.cqcp.net <br>\r\n【开奖时间】07:30至第二天凌晨04:30,20分钟开奖一次，全天共59期。<br>\r\n<br>\r\n<div class=\"RuleT2\">【玩法】</div>\r\n<div class=\"RuleT2\">位数即为第几球<br>\r\n【万=1球】【千=2球】【百=3球】【十=4球】【个=5球】<r=br>\r\n</div>\r\n<div class=\"RuleT3\">【一星定位】</div>\r\n<div class=\"RuleT3\">万、千、百、十、个位数中分别从0～9中任意选择一个或一个以上号码竞猜。开奖结果与竞猜位数、号码相同即视为中奖，其余情形则视为不中奖。</div>\r\n举例：竞猜【万】1【千】3【百】2【十】4【个】5，开奖结果为：【万】1【千】1【百】2【十】2【个】5，其中[万][百][个]位数奖号与竞猜位数号码相符，视为中奖。 其余[千][十]位数奖号与竞猜位数号码不相符，视为不中奖。<br>\r\n■奖励：含本9.8倍<br>\r\n■限额：10-10,000<br>\r\n■格式：位数/号码/金额<br>\r\n例：1/5/100 = 买万位数的5号100 <br>\r\n例：5/5/100 = 买个位数的5号100 <br>\r\n例：123/5/100 = 买万位、千位、百位的5号各100 = 总300 <br>\r\n<div class=\"RuleT3\">【双面盘】</div>\r\n<div class=\"RuleT3\">万、千、百、十、个位数中的\"大、小、单、双\"。0-4为小，5-9为大；1、3、5、7、9为单，0、2、4、6、8为双。</div>\r\n举例：竞猜万位数 \"大\"。开奖结果为：59436 【万】位数号码为\"大\"，视为中奖。<br>\r\n举例：竞猜百位数 \"双\"。开奖结果为：59336 【百】位数号码为\"单\"，视为不中奖。<br>\r\n■奖励：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：球号/大、小、单、双/金额<br>\r\n例：2/单/100 = 买千位的单100<br>\r\n例：5/大/200 = 买个位的大200<br>\r\n例：123/大/100 = 买万位、千位、百位的大各100 = 总300 <br>\r\n<div class=\"RuleT3\">【前、中、后三总和】</div>\r\n<div class=\"RuleT3\">分为选择前三总和【万千百】、中三总和【千百十】、后三总和【百十个】所竞猜位置的三位数开出号码为豹子、顺子、对子、半顺、杂六。</div>\r\n豹子：如000、111..999等<br>\r\n顺子：如234、890、901…等(顺序不限)<br>\r\n对子：如001、288、585…等(不包括豹子)<br>\r\n半顺：所竞猜位置的三位数开出号码任意两个顺序数字相连（不包括顺子、对子，号码9、0、1相连）。如235、378、283…等。<br>\r\n※如果开奖号码为前三顺子、前三对子，则前三半顺视为不中奖。 <br>\r\n杂六：所竞猜位置的三位数开出号码皆不相同且不能为连号，视为杂六。如179、264、802…等。<br>\r\n※如果开奖号码为中三豹子、中三顺子、中三对子、中三半顺，则杂六视为不中奖。<br>\r\n■奖励、限额：<br>\r\n豹子含本90倍，限额10-2,000<br>\r\n顺子含本15倍，限额10-10,000<br>\r\n对子含本3.5倍，限额10-20,000<br>\r\n半顺含本2.6倍，限额10-20,000<br>\r\n杂六含本3倍，限额10-20,000<br>\r\n■格式：定位/种类/金额<br>\r\n例：前/对子/300 = 买前对子300<br>\r\n例：中/豹子/100 = 买中豹子100<br>\r\n例：后/杂六/100 = 买后杂六100<br>\r\n<div class=\"RuleT3\">【五球总和】</div>\r\n<div class=\"RuleT3\">总和大小：万、千、百、十、个五个位数加总作为开奖依据，五位数总和0~22为小，23~45为大。 </div>\r\n<div class=\"RuleT3\">总和单双：万、千、百、十、个五个位数加总作为开奖依据，五位数总和1、3、5…43、45为单，总和0、2、4、6…42、44为双。 </div>\r\n■奖励：含本1.96倍<br>\r\n■限额：10-20,000<br>\r\n■格式：大、小、单、双/金额<br>\r\n例：总大200 <br>\r\n例：总单100<br>\r\n<div class=\"RuleT3\">【龙虎】</div>\r\n<div class=\"RuleT3\">万位数为龙、个位数为虎，以万、个两位数比大小，号码0为最小、9为最大。开奖第一球万大于第五球个为龙，反之为虎。万、个两位数号码相同，则为和。</div>\r\n■奖励：<br>\r\n「龙」含本2倍<br>\r\n「虎」含本2倍<br>\r\n「和」含本9.6倍<br>\r\n■限额：10-20,000<br>\r\n■格式：龙、虎、和/金额<br>\r\n例：龙/200<br>\r\n例：和/100<br>\r\n<div class=\"RuleT3\">【包号】</div>\r\n<div class=\"RuleT3\">包号投注与一星投注的结算方法相同。例如下1/100(不加球号)，则下注将为12345/1/100，开奖结果5球内如果有1则视为中奖，反之未中奖！</div>\r\n■奖励：<br>\r\n含本XXXX倍<br>\r\n■限额：10-20,000<br>\r\n■格式：包/位数/金额<br>\r\n例：包/1/200<br>\r\n例：1/100<br>\r\n<div class=\"RuleT2\" style=\"color: red;\">\r\n注意！如若不加位数默认识别为万位投注（除包号玩法以外）\r\n</div>\r\n<div class=\"RuleT2\">每期下注：总额10万封顶！</div>\r\n<br>\r\n<br>\r\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有竞猜的情况下以结果论的要求赔偿损失，所有竞猜皆以会员竞猜记录明细为主。</div>','0','0','');
/*!40000 ALTER TABLE `fn_lottery3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery4`
--

DROP TABLE IF EXISTS `fn_lottery4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `0027` text,
  `0126` text,
  `0225` text,
  `0324` text,
  `0423` text,
  `0522` text,
  `0621` text,
  `0720` text,
  `891819` text,
  `10111617` text,
  `1215` text,
  `1314` text,
  `jida` text,
  `jixiao` text,
  `baozi` text,
  `duizi` text,
  `shunzi` text,
  `dxds` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `dxds_zongzhu1` text,
  `dxds_1314_1` text,
  `dxds_zongzhu2` text,
  `dxds_1314_2` text,
  `dxds_zongzhu3` text,
  `dxds_1314_3` text,
  `zuhe_zongzhu1` text,
  `zuhe_1314_1` text,
  `zuhe_zongzhu2` text,
  `zuhe_1314_2` text,
  `zuhe_zongzhu3` text,
  `zuhe_1314_3` text,
  `danzhu_min` text,
  `zongzhu_max` text,
  `shuzi_max` text,
  `zuhe_max` text,
  `dxds_max` text,
  `jidx_max` text,
  `baozi_max` text,
  `shunzi_max` text,
  `duizi_max` text,
  `setting_shazuhe` text,
  `setting_fanxiangzuhe` text,
  `setting_tongxiangzuhe` text,
  `setting_liwai` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery4`
--

LOCK TABLES `fn_lottery4` WRITE;
/*!40000 ALTER TABLE `fn_lottery4` DISABLE KEYS */;
INSERT INTO `fn_lottery4` VALUES (10029,10029,'true','true','608','228','108','68','50','39','28','22','15','13','12','12','15','15','60','3','15','2','4.2','4.6','4.6','4.2','1','1.8','1000','1.6','10000','1.2','1','1','1000','1','','1','20','20000','10000','100000','100000','100000','5000','10000','100000','false','false','false','',30,'<div class=\"RuleT1\">【北京28】</div>\r\n<div class=\"RuleT2\">【游戏介绍】</div>\r\n北京28是PC蛋蛋首创的竞猜游戏。开奖号码源于国家福利彩票【国家福利彩票官网：bwlc.net】北京28开奖号码为三个（0 - 9）中随机产生的数字之和，总共有28种结果（0 - 27）。\r\n<br>\r\n<br>\r\n<div class=\"RuleT2\">北京28是根据什么开奖的？</div>\r\n北京28开奖结果来源于国家福利彩票北京快乐8开奖号码，北京快乐8每期开奖共开出20个数字，北京28将这20个开奖号码按照由小到大的顺序依次排列；取其1-6位开奖号码相加，和值的末位数作为北京28开奖第一个数值；取其7-12位开奖号码相加，和值的末位数作为北京28开奖第二个数值，取其13-18位开奖号码相加，和值的末位数作为北京28开奖第三个数值；三个数值相加即为北京28最终的开奖结果。<br>\r\n<br>\r\n例如：快乐8第\"641841\"期数据从小到大排序01,03,13,16,23,27,40,41,45,49,53,54,57,62,63,67,68,71,72,78<br>\r\n第一区[第1/2/3/4/5/6位数字] 1,3,13,16,23,27<br>\r\n计算：1+3+13+16+23+27= 83<br>\r\n结果为3<br>\r\n第二区[第7/8/9/10/11/12位数字] 40,41,45,49,53,54<br>\r\n计算：40+41+45+49+53+54= 282<br>\r\n结果为2<br>\r\n第三区[第13/14/15/16/17/18位数字] 57,62,63,67,68,71<br>\r\n计算：57+62+63+67+68+71= 388<br>\r\n结果为8<br>\r\n最终游戏开奖为：3+2+8=13<br>\r\n<br>\r\n<div class=\"RuleT2\">【相关资料】</div>\r\n【视频开奖官网】www.bwlc.net 或 http://www.uc3039.com/<br>\r\n【开奖时间】北京28为每天早上9:05至23:55，每5分钟一期，共179期。<br>\r\n<br>\r\n<div class=\"RuleT2\">【玩法】</div>\r\n<div class=\"RuleT3\">【猜特码大小单双】</div>\r\n<div class=\"RuleT3\">开出之号码小于或等于13为小，大于或等于14为大。开出的号码偶数为双，号码奇数为单。开出结果为13,14时大小单双赔含本1.5倍 </div>\r\n■奖历：含本2倍<br>\r\n■限额：50-30,000<br>\r\n■格式：大小单双+金额<br>\r\n　例：大100；单200<br>\r\n<div class=\"RuleT3\">【猜特码组合】</div>\r\n<div class=\"RuleT3\">开出之号码小于或等于13为小，大于或等于14为大，偶数为双，奇数为单，竞猜「大单」「小双」「小单」「大双」，共4种。开出结果为13,14时中组合回本</div>\r\n■奖历：<br>\r\n「小单」「大双」含本4.4倍<br>\r\n「大单」「小双」含本4倍<br>\r\n■限额：50-20,000<br>\r\n■格式：组合+金额<br>\r\n　例：大单100；小双200<br>\r\n<div class=\"RuleT3\">【猜和值(特码)数字】</div>\r\n<div class=\"RuleT3\">开出的三个号码加总为和值(特码)，可能的结果为0至27，以下赔率皆含本。</div>\r\n■奖历、限额：<br>\r\n00、27含本608倍，限额20-500<br>\r\n01、26含本228倍，限额20-1,000<br>\r\n02、25含本108倍，限额20-3,000<br>\r\n03、24含本68倍，限额20-5,000<br>\r\n04、23含本50倍，限额20-6,000<br>\r\n05、22含本39倍，限额20-8,000<br>\r\n06、21含本28倍，限额20-9,000<br>\r\n07、20含本22倍，限额20-10,000<br>\r\n08、19含本15倍，限额20-10,000<br>\r\n09、18含本15倍，限额20-10,000<br>\r\n10、17含本13倍，限额20-10,000<br>\r\n11、16含本13倍，限额20-10,000<br>\r\n12、13、14、15含本12倍，限额50-10,000<br>\r\n■格式：单点有效字眼：草or操or点or买or / 符号<br>\r\n　例：6草100，7操100，8点100，9买100<br>\r\n<div class=\"RuleT3\">【猜极大、极小】</div>\r\n<div class=\"RuleT3\">开出的三个号码加总为和值(特码)，可能的结果为0至27，00至05为极小，22至27为极大</div>\r\n■奖历：含本15倍<br>\r\n■限额：50-10,000<br>\r\n■格式：极大or极小+金额<br>\r\n　例：极大100；极小200<br>\r\n<div class=\"RuleT3\">【猜对子、顺子、豹子】</div>\r\n<div class=\"RuleT3\">以三个开奖数字为准，三个开奖数字任意两个数字相同为对子，三个相同的数字为豹子，三个相邻的数字为顺子（0-9个数字头尾不相连）</div>\r\n■奖历、限额：<br>\r\n对子含本3.5倍，限额50-30,000（豹子不属于对子）<br>\r\n顺子含本15倍，限额50-10,000<br>\r\n豹子含本61倍，限额50-3,000<br>\r\n例：<br>\r\n2+1+2、5+8+8 为对子<br>\r\n2+0+1、7+6+5 为顺子<br>\r\n8+9+0、9+1+0 不属于顺子<br>\r\n■格式：对子or顺子or豹子+金额 <br>\r\n　例：对子100，豹子200<br>\r\n<div class=\"RuleT2\">每期下注：总额15万封顶！</div>\r\n<br>\r\n<br>\r\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>\r\n<div class=\"RuleT2\">若发现多个帐号为同一人所有，或同一帐号进行无风险投注，将永久取消帐号。本平台最终解释权归华人国际娱乐所有，并保留修改以上条款的最终权力。</div>','0','0','');
/*!40000 ALTER TABLE `fn_lottery4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery5`
--

DROP TABLE IF EXISTS `fn_lottery5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `0027` text,
  `0126` text,
  `0225` text,
  `0324` text,
  `0423` text,
  `0522` text,
  `0621` text,
  `0720` text,
  `891819` text,
  `10111617` text,
  `1215` text,
  `1314` text,
  `jida` text,
  `jixiao` text,
  `baozi` text,
  `duizi` text,
  `shunzi` text,
  `dxds` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `dxds_zongzhu1` text,
  `dxds_1314_1` text,
  `dxds_zongzhu2` text,
  `dxds_1314_2` text,
  `dxds_zongzhu3` text,
  `dxds_1314_3` text,
  `zuhe_zongzhu1` text,
  `zuhe_1314_1` text,
  `zuhe_zongzhu2` text,
  `zuhe_1314_2` text,
  `zuhe_zongzhu3` text,
  `zuhe_1314_3` text,
  `danzhu_min` text,
  `zongzhu_max` text,
  `shuzi_max` text,
  `zuhe_max` text,
  `dxds_max` text,
  `jidx_max` text,
  `baozi_max` text,
  `shunzi_max` text,
  `duizi_max` text,
  `setting_shazuhe` text,
  `setting_fanxiangzuhe` text,
  `setting_tongxiangzuhe` text,
  `setting_liwai` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery5`
--

LOCK TABLES `fn_lottery5` WRITE;
/*!40000 ALTER TABLE `fn_lottery5` DISABLE KEYS */;
INSERT INTO `fn_lottery5` VALUES (10029,10029,'true','true','608','228','108','68','50','39','28','22','15','13','12','12','16','16','1','1','1','2','4.2','4.6','4.6','4.2','1','1.8','1000','1.6','20000','1.2','1','1','10000','1','1','1','20','20000','10000','100000','100000','100000','5000','10000','100000','false','false','false','',50,'<div class=\"RuleT1\">【加拿大28】</div>\r\n<div class=\"RuleT2\">【游戏介绍】</div>\r\n加拿大28采用加拿大彩票公司开奖数据，每三分半钟开一期。【官网:lotto.bclc.com】为了方便玩家可以更快更直观的了解当期的计算和结果，我们在导航上设置了开奖数据，每期实时更新！<br>\r\n<br>\r\n<div class=\"RuleT2\">加拿大28是根据什么开奖的？</div>\r\n加拿大彩票公司BCLC彩，每期开奖共开出20个数字。加拿大28将这20个开奖号码按照由小到大的顺序依次排列；取其第2/5/8/11/14/17位开奖号码相加，和值的末位数作为加拿大28开奖第一个数值；取其第3/6/9/12/15/18位开奖号码相加，和值的末位数作为加拿大开奖第二个数值，取其第4/7/10/13/16/19位开奖号码相加，和值的末位数作为加拿大28开奖第三个数值；三个数值相加即为加拿大28最终的开奖结果。<br>\r\n<br>\r\n例如：加拿大BCLC第\"1749110\"期数据从小到大排序 7,8,14,16,17,22,26,34,39,41,42,48,54,58,63,64,69,72,73,79<br>\r\n第一区[第2/5/8/11/14/17位数字] 8,17,34,42,58,69<br>\r\n计算：8+17+34+42+58+69= 228<br>\r\n结果为：8<br>\r\n第二区[第3/6/9/12/15/18位数字] 14,22,39,48,63,72<br>\r\n计算：14+22+39+48+63+72= 258<br>\r\n结果为：8<br>\r\n第三区[第4/7/10/13/16/19位数字] 16,26,41,54,64,73<br>\r\n计算：16+26+41+54+64+73= 274<br>\r\n结果为：4<br>\r\n最终游戏开奖为：8+8+4=20<br>\r\n<br>\r\n<div class=\"RuleT2\">【相关资料】</div>\r\n【视频开奖官网】lotto.bclc.com 或 http://www.uc3039.com<br>\r\n【开奖时间】加拿大28为全天候开奖，每三分半钟开一期，每天维护时间约：晚上19:00点到20:00点，周一可能会有延迟。<br>\r\n<br>\r\n<div class=\"RuleT2\">【玩法】</div>\r\n<div class=\"RuleT3\">【猜特码大小单双】</div>\r\n<div class=\"RuleT3\">开出之号码小于或等于13为小，大于或等于14为大。开出的号码偶数为双，号码奇数为单。开出结果为13,14时大小单双赔含本1.5倍 </div>\r\n■奖历：含本2倍<br>\r\n■限额：20-20,000<br>\r\n■格式：大小单双+金额<br>\r\n　例：大100；单200<br>\r\n<div class=\"RuleT3\">【猜特码组合】</div>\r\n<div class=\"RuleT3\">开出之号码小于或等于13为小，大于或等于14为大，偶数为双，奇数为单，竞猜「大单」「小双」「小单」「大双」，共4种。开出结果为13,14时中组合回本</div>\r\n■奖历：<br>\r\n「小单」「大双」含本4.6倍<br>\r\n「大单」「小双」含本 4 .2倍<br>\r\n■限额：20-20,000<br>\r\n■格式：组合+金额<br>\r\n　例：大单100；小双200<br>\r\n<div class=\"RuleT3\">【猜和值(特码)数字】</div>\r\n<div class=\"RuleT3\">开出的三个号码加总为和值(特码)，可能的结果为0至27，以下赔率皆含本。</div>\r\n■奖历、限额：<br>\r\n00、27含本608倍，限额20-500<br>\r\n01、26含本228倍，限额20-1,000<br>\r\n02、25含本108倍，限额20-3,000<br>\r\n03、24含本68倍，限额20-5,000<br>\r\n04、23含本50倍，限额20-6,000<br>\r\n05、22含本39倍，限额20-8,000<br>\r\n06、21含本28倍，限额20-9,000<br>\r\n07、20含本22倍，限额20-10,000<br>\r\n08、19含本18倍，限额20-10,000<br>\r\n09、18含本15倍，限额20-10,000<br>\r\n10、17含本14倍，限额20-10,000<br>\r\n11、16含本13倍，限额20-10,000<br>\r\n12、13、14、15含本12倍，限额20-10,000<br>\r\n■格式：单点有效字眼：草or操or点or买or / 符号<br>\r\n　例：6草100，7操100，8点100，9买100<br>\r\n<div class=\"RuleT3\">【猜极大、极小】</div>\r\n<div class=\"RuleT3\">开出的三个号码加总为和值(特码)，可能的结果为0至27，00至05为极小，22至27为极大</div>\r\n■奖历：含本15倍<br>\r\n■限额：20-10,000<br>\r\n■格式：极大or极小+金额<br>\r\n　例：极大100；极小200<br>\r\n<div class=\"RuleT3\">【猜对子、顺子、豹子】</div>\r\n<div class=\"RuleT3\">以三个开奖数字为准，三个开奖数字任意两个数字相同为对子，三个相同的数字为豹子，三个相邻的数字为顺子（0-9个数字头尾不相连）</div>\r\n■奖历、限额：<br>\r\n对子含本3.5倍，限额20-30,000（豹子不属于对子）<br>\r\n顺子含本15倍，限额20-10,000<br>\r\n豹子含本61倍，限额20-3,000<br>\r\n例：<br>\r\n2+1+2、5+8+8 为对子<br>\r\n2+0+1、7+6+5 为顺子<br>\r\n8+9+0、9+1+0 不属于顺子<br>\r\n■格式：对子or顺子or豹子+金额 <br>\r\n　例：对子100，豹子200<br>\r\n<div class=\"RuleT2\">每期下注：总额15万封顶！</div>\r\n<br>\r\n<br>\r\n<div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>\r\n<div class=\"RuleT2\">若发现多个帐号为同一人所有，或同一帐号进行无风险投注，将永久取消帐号。本平台最终解释权归华人国际娱乐所有，并保留修改以上条款的最终权力。</div>','0','0','');
/*!40000 ALTER TABLE `fn_lottery5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery6`
--

DROP TABLE IF EXISTS `fn_lottery6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery6`
--

LOCK TABLES `fn_lottery6` WRITE;
/*!40000 ALTER TABLE `fn_lottery6` DISABLE KEYS */;
INSERT INTO `fn_lottery6` VALUES (10029,10029,'true','true','1.988','1.988','1.988','1.988','1.988','1.988','2.4','3','3','2.4','1.988','1.988','1.988','1.988','40.5','20.5','13.5','10.125','8.1','9.21','5','300000','5','300000','5','300000','5','300000','5','300000','5','300000',10,'<div class=\"RuleT1\">【极速摩托】</div>\n    <div class=\"RuleT2\">【游戏介绍】</div>\n    极速摩托是经由菲律宾UC国际彩票中心与菲律宾政府卡格揚河经济特区联合推出的一款高频彩，由菲律宾政府卡格揚河经济特区彩票管理中心统一发行都摩托主题排列型高频彩票；每期开奖车号共十个,每个车号除了整合玩法，第1~10名、冠亚和值、冠亚组合分别为一个竞猜组，大小/单双/龙虎、车道数字、冠亚大小、冠亚特码、十球全接、特码区段。<br>\n    北京赛车、幸运飞艇同以「1~10」十个号码作为开奖依据，完全公平公正公开、开奖透明、无法作弊！<br>\n    <br>\n    <div class=\"RuleT2\">【相关资料】</div>\n    【开奖官网】需翻墙打开：www.gov.ph<br>\n    【官方APP下载】请直接搜索「极速摩托」<br>\n    【开奖时间】极速摩托为每天全天24小时开奖，每五分钟开奖一期，每天288期，与官网完全同步。<br>\n    <br>\n    <div class=\"RuleT2\">【玩法】</div>\n    <div class=\"RuleT3\">【1~10名猜大小单双】</div>\n    <div class=\"RuleT3\">第一名～第十名车号：开出之号码大于或等于6为大，小于或等于5为小。开出的号码偶数为双，号码奇数为单。</div>\n    ■奖历：含本1.96倍<br>\n    ■限额：10-20,000<br>\n    ■格式：名次/大小单双/金额<br>\n    　例：12345/双/100 = 1~5车道买双各100 = 总500<br>\n    <div class=\"RuleT3\">【1~10名猜车号】</div>\n    <div class=\"RuleT3\">每一个车号为一竞猜组合，开奖结果「竞猜车号」对应所猜「车道」视为中奖，其余情形视为不中奖。</div>\n    ■奖励：含本9.8倍<br>\n    ■限额：10-10,000<br>\n    ■格式：名次/号码/金额<br>\n    　例：12345/89/20 = 1~5车道的8号、9号各买20 = 总200<br>\n    　例：1357/890/20 = 1.3.5.7车道的8号、9号、10号各买20 = 总240<br>\n    <div class=\"RuleT3\">【1~5名猜龙虎】</div>\n    <div class=\"RuleT3\">(1)第一名vs第十名，(2)第二名vs第九名，(3)第三名vs第八名，(4)第四名vs第七名，(5)第五名vs第六名，前比后大为龙，反之为虎。</div>\n    ■奖励：含本1.96倍<br>\n    ■限额：10-20,000<br>\n    ■格式：名次/号码/金额<br>\n    　例：123/龙/100 = 1~3车道买龙各100=总300<br>\n   <div class=\"RuleT3\">【猜冠亚号码】 </div>\n<div class=\"RuleT3\">猜冠军及亚军车号（前2名），每次竞猜2个号码，顺序不限。 </div>\n■格式：组/号码/金额 <br>\n例：组/5-6/50=5号.6号在冠亚军（顺序不限）=总下注50 <br>\n例：组/1-9.3-7/100=1.9号车或3.7号车再冠亚军（顺序不限）=总下注200<br>\n    <div class=\"RuleT3\">【冠亚和值(特码)猜大小单双】</div>\n    <div class=\"RuleT3\">冠军车号+亚军车号 = 冠亚和值 = 特码 = 数字3~19</div>\n    <div class=\"RuleT3\">冠亚和值大于或等于12为大，小于或等于11为小。开出的号码偶数为双，号码奇数为单。</div>\n    ■奖励：<br>\n    　「大」、「双」含本2.1倍。<br>\n    　「小」、「单」含本1.7倍。<br>\n    ■限额：10-20,000<br>\n    ■格式：和/大小单双/金额<br>\n    　例：和双100 = 「冠亚和」的双100<br>\n    　例：和大100 = 「冠亚和」的大100<br>\n    <div class=\"RuleT3\">【冠亚和值(特码)猜数字】</div>\n    <div class=\"RuleT3\">「冠亚和值」为「特码」可能出现的结果为3~19，竞猜中对应「冠亚和值」数字的视为中奖，其余视为不中奖。</div>\n    ■奖励：<br>\n    　3.4.18.19，含本42倍，限额10-1,000<br>\n    　5.6.16.17，含本21倍，限额10-2,000<br>\n    　7.8.14.15，含本14倍，限额10-3,000<br>\n    　9.10.12.13，含本10倍，限额10-4,000<br>\n    　11，含本8倍，限额10-5,000<br>\n    ■格式：和(特)/数字/金额<br>\n    　例：和567/100 = 竞猜「冠亚和」的值为5或6或7各100 = 总300<br>\n    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>\n    <br>\n    <div class=\"RuleT2\">【说明】</div>\n    ■没带名次默认竞猜第一名，如「双/100」第一名双100、「123/100」第一名123号各100<br>\n    ■竞猜时因各地网路品质不定，可能有1-2秒延迟，以系统判定是否竞猜成功为准。<br>\n    ■0号即为10号，竞猜时输入0即为10，输入10即为1、10号。<br>\n    　例：0/0/100 = 视为竞猜第10名10号车冠军<br>\n    　例：0/100 = 视为竞猜第1名10号车冠军<br>\n    <br>\n    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有下注的情况下以结果论的要求赔偿损失，所有投注皆以会员投注记录明细为主。</div>\n','2','1','');
/*!40000 ALTER TABLE `fn_lottery6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery7`
--

DROP TABLE IF EXISTS `fn_lottery7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `long` text,
  `hu` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `heda` text,
  `hexiao` text,
  `hedan` text,
  `heshuang` text,
  `he341819` text,
  `he561617` text,
  `he781415` text,
  `he9101213` text,
  `he11` text,
  `tema` text,
  `daxiao_min` text,
  `daxiao_max` text,
  `danshuang_min` text,
  `danshuang_max` text,
  `longhu_min` text,
  `longhu_max` text,
  `tema_min` text,
  `tema_max` text,
  `he_min` text,
  `he_max` text,
  `zuhe_min` text,
  `zuhe_max` text,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery7`
--

LOCK TABLES `fn_lottery7` WRITE;
/*!40000 ALTER TABLE `fn_lottery7` DISABLE KEYS */;
INSERT INTO `fn_lottery7` VALUES (10029,10029,'true','true','1.96','1.96','1.96','1.96','1.96','1.96','4.5','3','3','4.5','2.1','1.7','1.7','2.1','42','21','14','10','8','9.8','10','20000','10','20000','10','20000','10','5000','10','5000','10','5000',5,'','2','1','');
/*!40000 ALTER TABLE `fn_lottery7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery8`
--

DROP TABLE IF EXISTS `fn_lottery8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `tema` text,
  `zongda` text,
  `zongxiao` text,
  `zongdan` text,
  `zongshuang` text,
  `long` text,
  `hu` text,
  `he` text,
  `q_baozi` text,
  `z_baozi` text,
  `h_baozi` text,
  `q_duizi` text,
  `z_duizi` text,
  `h_duizi` text,
  `q_shunzi` text,
  `z_shunzi` text,
  `h_shunzi` text,
  `q_banshun` text,
  `z_banshun` text,
  `h_banshun` text,
  `q_zaliu` text,
  `z_zaliu` text,
  `h_zaliu` text,
  `dx_min` int(11) DEFAULT '0',
  `ds_min` int(11) DEFAULT NULL,
  `lh_min` int(11) DEFAULT NULL,
  `tm_min` int(11) DEFAULT NULL,
  `zh_min` int(11) DEFAULT NULL,
  `bz_min` int(11) DEFAULT NULL,
  `dz_min` int(255) DEFAULT NULL,
  `sz_min` int(255) DEFAULT NULL,
  `bs_min` int(255) DEFAULT NULL,
  `zl_min` int(255) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `lh_max` int(11) DEFAULT NULL,
  `tm_max` int(255) DEFAULT NULL,
  `zh_max` int(255) DEFAULT NULL,
  `bz_max` int(255) DEFAULT NULL,
  `dz_max` int(255) DEFAULT NULL,
  `sz_max` int(255) DEFAULT NULL,
  `bs_max` int(255) DEFAULT NULL,
  `zl_max` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery8`
--

LOCK TABLES `fn_lottery8` WRITE;
/*!40000 ALTER TABLE `fn_lottery8` DISABLE KEYS */;
INSERT INTO `fn_lottery8` VALUES (10029,10029,'true','true','1.95','1.95','1.95','1.95','9.88','1.95','1.95','1.95','1.95','1.95','1.95','9','61','61','61','3.3','3.3','3.3','14.5','14.5','14.5','2.5','2.5','2.5','3','3','3',5,5,5,5,5,0,5,5,5,5,3000000,3000000,3000000,3000000,3000000,3000000,3000000,3000000,3000000,3000000,15,'【卓越娱乐房间规则】','2','1','');
/*!40000 ALTER TABLE `fn_lottery8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_lottery9`
--

DROP TABLE IF EXISTS `fn_lottery9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_lottery9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `gameopen` text NOT NULL,
  `fanshui` varchar(255) NOT NULL DEFAULT 'false',
  `da` text,
  `xiao` text,
  `dan` text,
  `shuang` text,
  `dadan` text,
  `xiaodan` text,
  `dashuang` text,
  `xiaoshuang` text,
  `tong_baozi` text,
  `tong_duizi` text,
  `tong_shunzi` text,
  `tong_sanza` text,
  `tong_erza` text,
  `zhi_baozi` text,
  `zhi_duizi` text,
  `zhi_shunzi` text,
  `zhi_sanza` text,
  `zhi_erza` text,
  `zhi_sanjun` text,
  `dx_min` int(11) DEFAULT NULL,
  `dx_max` int(11) DEFAULT NULL,
  `ds_min` int(11) DEFAULT NULL,
  `ds_max` int(11) DEFAULT NULL,
  `dadan_min` int(11) DEFAULT NULL,
  `dadan_max` int(11) DEFAULT NULL,
  `xiaodan_min` int(11) DEFAULT NULL,
  `xiaodan_max` int(11) DEFAULT NULL,
  `dashuang_min` int(11) DEFAULT NULL,
  `dashuang_max` int(11) DEFAULT NULL,
  `xiaoshuang_min` int(11) DEFAULT NULL,
  `xiaoshuang_max` int(11) DEFAULT NULL,
  `tong_baozi_min` int(255) DEFAULT NULL,
  `tong_baozi_max` int(11) DEFAULT NULL,
  `tong_shunzi_min` int(11) DEFAULT NULL,
  `tong_shunzi_max` int(11) DEFAULT NULL,
  `tong_duizi_min` int(11) DEFAULT NULL,
  `tong_duizi_max` int(11) DEFAULT NULL,
  `tong_sanza_min` int(11) DEFAULT NULL,
  `tong_sanza_max` int(11) DEFAULT NULL,
  `tong_erza_min` int(11) DEFAULT NULL,
  `tong_erza_max` int(11) DEFAULT NULL,
  `zhi_baozi_min` int(11) DEFAULT NULL,
  `zhi_baozi_max` int(11) DEFAULT NULL,
  `zhi_shunzi_min` int(11) DEFAULT NULL,
  `zhi_shunzi_max` int(11) DEFAULT NULL,
  `zhi_duizi_min` int(255) DEFAULT NULL,
  `zhi_duizi_max` int(255) DEFAULT NULL,
  `zhi_sanza_min` int(255) DEFAULT NULL,
  `zhi_sanza_max` int(255) DEFAULT NULL,
  `zhi_erza_min` int(255) DEFAULT NULL,
  `zhi_erza_max` int(255) DEFAULT NULL,
  `zhi_sanjun_min` int(255) DEFAULT NULL,
  `zhi_sanjun_max` int(255) DEFAULT NULL,
  `setting_10shazuhe` text,
  `setting_baozitongsha` text,
  `setting_open` int(11) DEFAULT NULL,
  `fengtime` int(11) DEFAULT NULL,
  `rules` text,
  `shenglv` varchar(100) DEFAULT '0' COMMENT '胜率',
  `kongzhi` varchar(100) DEFAULT '0' COMMENT '控制开关',
  `jsdiy` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_lottery9`
--

LOCK TABLES `fn_lottery9` WRITE;
/*!40000 ALTER TABLE `fn_lottery9` DISABLE KEYS */;
INSERT INTO `fn_lottery9` VALUES (10029,10029,'false','true','1.98','1.98','1.99','1.99','3.98','3.99','3.98','3.99','19','19','19','19','19','19','19','19','19','19','60',1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,1,2000,'true','true',1,50,'<div class=\"RuleT1\">【九都娱乐江苏快三】</div>    <div class=\"RuleT2\">【购买联系客服QQ1878336950】</div>    快3游戏投注是指以三个号码组合为一注进行单式投注，每个投注号码为1-6共六个自然数中的任意一个，一组三个号码的组合称为一注。购买者可对其选定的投注号码进行多倍投注，投注倍数范围为7-190倍。<br>    <br>    <div class=\"RuleT2\">【相关资料】</div>    【开奖官网】 www.uc3039.com<br>    【开奖时间】8:30 - 22:10 全天共82期<br>    <br>    <div class=\"RuleT2\">【玩法】</div>    <div class=\"RuleT3\">【总和大小单双】</div>    <div class=\"RuleT3\">由三粒骰子的结果相加，所得的数值3到10为小，11到18为大。奇数为单，偶数为双。</div>    举例：竞猜总小100，开奖结果为：1+2+3=6，开奖结果小于11，视为中奖。否则视为不中奖。<br>    ■奖历：含本1.98倍<br>    ■限额：10-10,000<br>    ■格式：总/大小单双/金额<br>    例：总/大/100 = 买总和大于11, 100元 <br>    <div class=\"RuleT3\">【总和组合玩法】</div>    <div class=\"RuleT3\">与总和大小单双相同, 组合玩法为:大单/小单/大双/小双。</div>    举例：竞猜总和大单100。开奖结果为：6+2+3=11（即为大又为单），视为中奖。<br>    举例：竞猜总和大单100。开奖结果为：6+2+3=11 （只为大不为单），视为不中奖。<br>    ■奖历：<br>    大单: 含本20倍<br>    小单: 含本2.0倍<br>    大双: 含本2.0倍<br>    小双: 含本2.4倍<br>    ■限额：10-20,000<br>    ■格式：总/大单、小单、大双、小双/金额<br>    例：总/大单/100 = 买总和的大单100<br>    <div class=\"RuleT3\">【通选玩法】</div>    <div class=\"RuleT3\">开奖结果的三位数开出号码为豹子、顺子、对子、三杂、二杂。</div>    豹子：如222、111..999等<br>    顺子：如123、234、456…等<br>    对子：如112、233、556…等(不包括豹子)<br>    三杂：如621、789、421...等<br>    二杂：如128、133、326...等<br>    ※如果开奖号码为豹子、对子、顺子、三杂、二杂则视为中奖。<br>    ■奖历、限额：<br>    豹子含本32倍，限额10-2,000<br>    顺子含本8倍，限额10-10,000<br>    对子含本2倍，限额10-20,000<br>    三杂含本1.8倍，限额10-20,000<br>    二杂含本1.5倍，限额10-20,000<br>    ■格式：特/种类/金额<br>    例：特/对子/300 = 买对子300<br>    例：特/豹子/100 = 买豹子100<br>    例：特/三杂/100 = 买三杂100<br>    <div class=\"RuleT3\">【直选玩法】</div>    <div class=\"RuleT3\">与通选玩法类似,直接选择豹子、对子、顺子、三杂、二杂会出现的号码 </div>    举例：豹子/222/100 , 如果开奖号码为222 则为中奖<br>    举例：三杂/135/100 , 如果开奖号码为135 则为中奖<br>    ■奖历：<br>    豹子含本190倍，限额10-2,000<br>    顺子含本32倍，限额10-10,000<br>    对子含本12倍，限额10-20,000<br>    三杂含本32倍，限额10-20,000<br>    二杂含本6.5倍，限额10-20,000<br>    ■限额：10-20,000<br>    ■格式：种类/号码/金额<br>    例：豹子/111-222-333/100 = 买豹子111/222/333 各100元 = 300元 <br>    例：顺子/123-456/100 = 买顺子123/456各100元 = 200元<br>    <div class=\"RuleT2\">每期下注：总额10万封顶！</div>    <br>    <br>    <div class=\"RuleT2\">若因任何无法抗拒之外力因素导致临时关盘，或是官网问题临时关盘，会员不得在没有竞猜的情况下以结果论的要求赔偿损失，所有竞猜皆以会员竞猜记录明细为主。</div>','0','0','');
/*!40000 ALTER TABLE `fn_lottery9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_marklog`
--

DROP TABLE IF EXISTS `fn_marklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_marklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatid` varchar(255) NOT NULL,
  `roomid` int(11) NOT NULL,
  `userid` text,
  `type` text,
  `content` text,
  `money` text,
  `addtime` datetime DEFAULT NULL,
  `tuitime` date NOT NULL COMMENT '操作反水日期',
  `game` varchar(255) NOT NULL COMMENT '游戏',
  `tuishui` varchar(255) NOT NULL COMMENT '退水类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_marklog`
--

LOCK TABLES `fn_marklog` WRITE;
/*!40000 ALTER TABLE `fn_marklog` DISABLE KEYS */;
INSERT INTO `fn_marklog` VALUES (1,'',10029,'oyC0-1KEY8E98eLydQLJ8TOaqawc','上分','管理同意上分100','100','2019-11-07 10:29:00','0000-00-00','',''),(2,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','上分','管理员手动上分','999999999999','2019-11-07 11:28:07','0000-00-00','',''),(3,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','下分','管理员手动下分','99999999999999999','2019-11-07 11:28:40','0000-00-00','',''),(4,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','上分','管理员手动上分','99999999','2019-11-07 11:29:25','0000-00-00','',''),(5,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','下分','管理员手动下分','99999999','2019-11-07 11:29:54','0000-00-00','',''),(6,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','上分','管理员手动上分','99999','2019-11-07 11:30:19','0000-00-00','',''),(7,'',10029,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','上分','管理同意上分1000','1000','2019-11-07 17:32:20','0000-00-00','',''),(8,'',10029,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','下分','彩票投注','50','2019-11-07 19:16:33','0000-00-00','',''),(9,'',10029,'oyC0-1EDS0wGTM80Z1iUDZZfgRoU','上分','管理同意上分100','100','2019-11-07 19:26:04','0000-00-00','',''),(10,'',10029,'oTcjQ5gyasCy0d6UIgBFbawUanP4','上分','管理同意上分100','100','2020-09-09 21:13:22','0000-00-00','',''),(11,'',10029,'oTcjQ5gyasCy0d6UIgBFbawUanP4','下分','彩票投注','5','2020-09-09 21:17:01','0000-00-00','','');
/*!40000 ALTER TABLE `fn_marklog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_mtorder`
--

DROP TABLE IF EXISTS `fn_mtorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_mtorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `game` varchar(255) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_mtorder`
--

LOCK TABLES `fn_mtorder` WRITE;
/*!40000 ALTER TABLE `fn_mtorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_mtorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_open`
--

DROP TABLE IF EXISTS `fn_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `term` text NOT NULL,
  `code` text NOT NULL,
  `next_term` text NOT NULL,
  `time` datetime NOT NULL,
  `next_time` datetime NOT NULL,
  `roomid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_open`
--

LOCK TABLES `fn_open` WRITE;
/*!40000 ALTER TABLE `fn_open` DISABLE KEYS */;
INSERT INTO `fn_open` VALUES (1,1,'740931','01,06,09,10,03,07,05,04,08,02','740932','2019-11-07 13:10:40','2019-11-07 13:30:40',''),(10,13,'2019122','13,25,15,46,30,40,26','2019123','2019-11-07 13:32:18','2019-11-07 21:30:00',''),(26,1,'740932','06,07,01,04,02,08,10,09,03,05','740933','2019-11-07 13:30:40','2019-11-07 13:50:40',''),(123,1,'740933','07,06,05,08,04,02,09,03,10,01','740934','2019-11-07 13:50:40','2019-11-07 14:10:40',''),(148,1,'740948','02,04,06,09,08,10,05,03,07,01','740949','2019-11-07 18:50:40','2019-11-07 19:10:40',''),(171,1,'740949','03,06,08,05,02,10,04,07,09,01','740950','2019-11-07 19:10:40','2019-11-07 19:30:40',''),(238,1,'740951','08,09,06,05,10,03,04,01,02,07','740952','2019-11-07 19:50:40','2019-11-07 20:10:40',''),(331,1,'740952','05,09,04,03,06,01,02,07,08,10','740953','2019-11-07 20:10:40','2019-11-07 20:30:40',''),(344,2,'20200909095','07,10,08,06,09,04,05,02,01,03','20200909096','2020-09-09 20:58:45','2020-09-09 21:03:45',''),(345,1,'749842','02,05,07,03,06,09,04,10,01,08','749843','2020-09-09 20:50:40','2020-09-09 21:10:40',''),(346,7,'31624643','02,01,04,08,07,09,03,10,06,05','31624644','2020-09-09 21:03:03','2020-09-09 21:04:18',''),(347,3,'20200909050','3,5,0,2,4','20200909051','2020-09-09 20:50:00','2020-09-09 21:10:00',''),(348,12,'1793003','1,9,8,4,10,3,2,7,5,6','1793004','2020-09-09 21:04:30','2020-09-09 21:06:00',''),(349,6,'1993003','5,2,7,3,9,4,10,8,6,1','1993004','2020-09-09 21:04:30','2020-09-09 21:06:00',''),(350,9,'200909037','5,6,6','200909038','2020-09-09 21:05:23','2020-09-09 21:10:00',''),(351,2,'20200909096','01,10,03,04,02,09,08,07,05,06','20200909097','2020-09-09 21:03:45','2020-09-09 21:08:45',''),(352,15,'20200909844','2,2,1','20200909845','2020-09-09 21:04:30','2020-09-09 21:06:00',''),(353,4,'1018568','03,05,07,11,17,18,21,24,28,36,38,41,43,47,48,51,53,56,57,71,01','1018569','2020-09-09 21:05:38','2020-09-09 21:05:00',''),(354,8,'11593909','2,8,6,1,2','11593910','2020-09-09 21:05:30','2020-09-09 21:06:45',''),(355,7,'31624645','04,10,09,07,08,03,06,01,05,02','31624646','2020-09-09 21:05:33','2020-09-09 21:06:48',''),(356,12,'1793004','2,10,9,3,6,5,4,7,1,8','1793005','2020-09-09 21:06:00','2020-09-09 21:07:30',''),(357,6,'1993004','3,10,7,2,4,6,8,1,9,5','1993005','2020-09-09 21:06:00','2020-09-09 21:07:30',''),(358,15,'20200909845','6,5,1','20200909846','2020-09-09 21:06:00','2020-09-09 21:07:30',''),(359,4,'1018569','03,10,20,21,31,39,41,44,50,52,57,59,64,66,67,69,73,75,78,79,01','1018570','2020-09-09 21:06:43','2020-09-09 21:10:00',''),(360,7,'31624646','09,08,03,06,05,02,04,01,07,10','31624647','2020-09-09 21:06:48','2020-09-09 21:08:03',''),(361,8,'11593910','5,9,2,7,1','11593911','2020-09-09 21:06:45','2020-09-09 21:08:00',''),(362,6,'1993005','9,1,2,3,4,5,10,8,6,7','1993006','2020-09-09 21:07:30','2020-09-09 21:09:00',''),(363,12,'1793005','3,6,7,1,2,5,10,8,9,4','1793006','2020-09-09 21:07:30','2020-09-09 21:09:00',''),(364,15,'20200909846','3,4,3','20200909847','2020-09-09 21:07:30','2020-09-09 21:09:00',''),(365,7,'31624647','06,02,10,08,01,04,07,09,05,03','31624648','2020-09-09 21:08:03','2020-09-09 21:09:18',''),(366,8,'11593911','1,9,3,6,4','11593912','2020-09-09 21:08:00','2020-09-09 21:09:15',''),(367,15,'20200909847','5,3,6','20200909848','2020-09-09 21:09:00','2020-09-09 21:10:30',''),(368,12,'1793006','1,2,9,4,5,7,8,10,6,3','1793007','2020-09-09 21:09:00','2020-09-09 21:10:30',''),(369,6,'1993006','4,8,5,2,10,6,9,1,3,7','1993007','2020-09-09 21:09:00','2020-09-09 21:10:30',''),(370,2,'20200909097','09,07,08,10,05,02,04,01,06,03','20200909098','2020-09-09 21:08:45','2020-09-09 21:13:45',''),(371,8,'11593912','4,8,8,4,1','11593913','2020-09-09 21:09:15','2020-09-09 21:10:30',''),(372,7,'31624648','03,06,07,02,10,09,04,01,05,08','31624649','2020-09-09 21:09:18','2020-09-09 21:10:33',''),(373,9,'200909038','1,1,6','200909039','2020-09-09 21:10:16','2020-09-09 21:30:00',''),(374,8,'11593913','1,0,8,9,5','11593914','2020-09-09 21:10:30','2020-09-09 21:11:45',''),(375,12,'1793007','5,9,2,1,4,6,3,10,8,7','1793008','2020-09-09 21:10:30','2020-09-09 21:12:00',''),(376,15,'20200909848','4,5,3','20200909849','2020-09-09 21:10:30','2020-09-09 21:12:00',''),(377,6,'1993007','9,7,3,4,5,2,8,10,6,1','1993008','2020-09-09 21:10:30','2020-09-09 21:12:00',''),(378,7,'31624649','10,07,01,09,05,02,08,03,06,04','31624650','2020-09-09 21:10:33','2020-09-09 21:11:48',''),(379,3,'20200909051','8,1,7,6,0','20200909052','2020-09-09 21:10:45','2020-09-09 21:30:45',''),(380,4,'1018570','07,10,11,14,15,20,31,34,35,37,39,50,52,54,56,63,66,68,72,73,01','1018571','2020-09-09 21:11:45','2020-09-09 21:15:00',''),(381,8,'11593914','3,4,4,2,4','11593915','2020-09-09 21:11:45','2020-09-09 21:13:00',''),(382,7,'31624650','09,08,04,05,01,10,06,02,07,03','31624651','2020-09-09 21:11:48','2020-09-09 21:13:03',''),(383,18,'50718183','6,1,3,1,1','50718184','2020-09-09 21:08:40','2020-09-09 21:13:40',''),(384,14,'887903','34,28,16,46,37,10,39','887904','2020-09-09 21:10:30','2020-09-09 21:15:30',''),(385,6,'1993008','10,3,5,2,7,4,8,9,1,6','1993009','2020-09-09 21:12:00','2020-09-09 21:13:30',''),(386,12,'1793008','6,9,8,10,2,4,3,7,1,5','1793009','2020-09-09 21:12:00','2020-09-09 21:13:30',''),(387,10,'625990','17,23,24,30,35','625991','2020-09-09 21:12:00','2020-09-09 21:15:00',''),(388,8,'11593915','8,2,8,6,3','11593916','2020-09-09 21:13:00','2020-09-09 21:14:15',''),(390,15,'20200909849','1,5,3','20200909850','2020-09-09 21:12:00','2020-09-09 21:13:30',''),(391,1,'749843','02,01,06,10,04,08,03,09,05,07','749844','2020-09-09 21:10:40','2020-09-09 21:30:40',''),(392,7,'31624651','04,05,02,06,01,07,08,03,10,09','31624652','2020-09-09 21:13:03','2020-09-09 21:14:18',''),(394,18,'50718184','0,9,6,4,4','50718185','2020-09-09 21:13:40','2020-09-09 21:18:40',''),(395,2,'20200909098','05,10,03,07,09,06,04,01,02,08','20200909099','2020-09-09 21:13:45','2020-09-09 21:18:45',''),(396,12,'1793009','3,6,5,9,2,8,7,1,10,4','1793010','2020-09-09 21:13:30','2020-09-09 21:15:00',''),(397,8,'11593916','6,8,6,6,9','11593917','2020-09-09 21:14:15','2020-09-09 21:15:30',''),(398,15,'20200909851','6,6,3','20200909852','2020-09-09 21:15:00','2020-09-09 21:16:30',''),(399,6,'1993010','3,10,1,2,9,6,4,7,5,8','1993011','2020-09-09 21:15:00','2020-09-09 21:16:30',''),(401,7,'31624652','01,04,05,06,10,07,09,02,08,03','31624653','2020-09-09 21:14:18','2020-09-09 21:15:33',''),(402,10,'625991','3,16,23,36,48','625992','2020-09-09 21:15:00','2020-09-09 21:18:00',''),(403,12,'1793010','3,2,5,9,10,4,7,1,8,6','1793011','2020-09-09 21:15:00','2020-09-09 21:16:30',''),(404,8,'11593917','4,6,4,3,3','11593918','2020-09-09 21:15:30','2020-09-09 21:16:45',''),(406,7,'31624653','10,07,04,08,05,01,09,02,03,06','31624654','2020-09-09 21:15:33','2020-09-09 21:16:48',''),(407,14,'887904','43,22,07,11,47,24,25','887905','2020-09-09 21:15:30','2020-09-09 21:20:30',''),(408,4,'1018571','01,04,07,08,09,15,20,21,26,33,45,49,61,62,64,65,67,72,73,74,01','1018572','2020-09-09 21:16:55','2020-09-09 21:20:00',''),(409,15,'20200909852','1,2,4','20200909853','2020-09-09 21:16:30','2020-09-09 21:18:00',''),(410,8,'11593918','8,1,4,1,3','11593919','2020-09-09 21:16:45','2020-09-09 21:18:00',''),(411,6,'1993011','3,7,8,2,10,4,5,1,6,9','1993012','2020-09-09 21:16:30','2020-09-09 21:18:00',''),(412,12,'1793011','6,1,8,10,4,2,3,5,7,9','1793012','2020-09-09 21:16:30','2020-09-09 21:18:00',''),(413,7,'31624654','08,07,06,04,03,09,01,10,05,02','31624655','2020-09-09 21:16:48','2020-09-09 21:18:03',''),(415,7,'31624655','08,03,06,09,01,05,10,07,02,04','31624656','2020-09-09 21:18:03','2020-09-09 21:19:18',''),(416,10,'625992','3,6,19,24,33,38','625993','2020-09-09 21:18:00','2020-09-09 21:21:00',''),(417,15,'20200909853','3,6,4','20200909854','2020-09-09 21:18:00','2020-09-09 21:19:30',''),(418,8,'11593919','8,5,6,0,2','11593920','2020-09-09 21:18:00','2020-09-09 21:19:15',''),(419,12,'1793012','8,7,1,6,3,4,10,9,5,2','1793013','2020-09-09 21:18:00','2020-09-09 21:19:30',''),(420,6,'1993012','1,2,7,4,5,10,6,9,3,8','1993013','2020-09-09 21:18:00','2020-09-09 21:19:30',''),(422,18,'50718185','6,4,2,8,8','50718186','2020-09-09 21:18:40','2020-09-09 21:23:40',''),(423,2,'20200909099','02,06,03,07,04,08,05,09,01,10','20200909100','2020-09-09 21:18:45','2020-09-09 21:23:45',''),(424,7,'31624656','05,01,06,04,03,08,07,09,02,10','31624657','2020-09-09 21:19:18','2020-09-09 21:20:33',''),(426,8,'11593920','2,4,5,9,4','11593921','2020-09-09 21:19:15','2020-09-09 21:20:30',''),(427,15,'20200909854','3,2,6','20200909855','2020-09-09 21:19:30','2020-09-09 21:21:00',''),(428,12,'1793013','5,7,10,4,8,2,6,9,3,1','1793014','2020-09-09 21:19:30','2020-09-09 21:21:00',''),(429,6,'1993013','10,3,7,6,1,2,9,4,5,8','1993014','2020-09-09 21:19:30','2020-09-09 21:21:00',''),(430,7,'31624657','02,03,06,10,09,07,08,05,01,04','31624658','2020-09-09 21:20:33','2020-09-09 21:21:48',''),(431,14,'887905','46,20,22,34,37,45,06','887906','2020-09-09 21:20:30','2020-09-09 21:25:30',''),(433,8,'11593921','7,2,4,6,0','11593922','2020-09-09 21:20:30','2020-09-09 21:21:45',''),(434,12,'1793014','5,6,9,7,8,3,1,2,4,10','1793015','2020-09-09 21:21:00','2020-09-09 21:22:30',''),(435,10,'625993','4,11,23,32,35','625994','2020-09-09 21:21:00','2020-09-09 21:24:00',''),(436,7,'31624658','08,02,05,03,01,07,04,10,09,06','31624659','2020-09-09 21:21:48','2020-09-09 21:23:03',''),(438,4,'1018572','05,07,14,20,27,32,34,40,42,44,49,63,67,68,69,73,75,76,78,80,01','1018573','2020-09-09 21:22:57','2020-09-09 21:25:00',''),(439,12,'1793015','8,3,1,4,9,7,2,10,6,5','1793016','2020-09-09 21:22:30','2020-09-09 21:24:00',''),(440,8,'11593923','0,3,2,8,8','11593924','2020-09-09 21:23:00','2020-09-09 21:24:15',''),(441,7,'31624659','10,07,05,03,04,01,08,09,06,02','31624660','2020-09-09 21:23:03','2020-09-09 21:24:18',''),(446,2,'20200909100','05,02,07,03,04,06,09,08,10,01','20200909101','2020-09-09 21:23:45','2020-09-09 21:28:45',''),(447,10,'625994','3,12,21,25,33,42','625995','2020-09-09 21:24:00','2020-09-09 21:27:00',''),(448,12,'1793016','7,2,4,8,1,9,5,10,6,3','1793017','2020-09-09 21:24:00','2020-09-09 21:25:30',''),(449,18,'50718186','8,6,5,2,8','50718187','2020-09-09 21:23:40','2020-09-09 21:28:40',''),(451,7,'31624660','08,06,04,09,07,10,05,02,03,01','31624661','2020-09-09 21:24:18','2020-09-09 21:25:33',''),(452,8,'11593924','7,7,5,9,2','11593925','2020-09-09 21:24:15','2020-09-09 21:25:30',''),(458,8,'11593925','7,6,9,6,1','11593926','2020-09-09 21:25:30','2020-09-09 21:26:45',''),(459,12,'1793017','2,1,6,5,3,10,9,4,8,7','1793018','2020-09-09 21:25:30','2020-09-09 21:27:00',''),(460,14,'887906','21,35,26,05,38,19,40','887907','2020-09-09 21:25:30','2020-09-09 21:30:30',''),(461,7,'31624661','07,10,04,01,02,05,08,09,06,03','31624662','2020-09-09 21:25:33','2020-09-09 21:26:48','');
/*!40000 ALTER TABLE `fn_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_order`
--

DROP TABLE IF EXISTS `fn_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `game` varchar(255) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_order`
--

LOCK TABLES `fn_order` WRITE;
/*!40000 ALTER TABLE `fn_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_pcorder`
--

DROP TABLE IF EXISTS `fn_pcorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_pcorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_pcorder`
--

LOCK TABLES `fn_pcorder` WRITE;
/*!40000 ALTER TABLE `fn_pcorder` DISABLE KEYS */;
INSERT INTO `fn_pcorder` VALUES (1,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','','http://thirdwx.qlogo.cn/mmopen/vi_32/OrCtVlmMiauW0uJOK3rPrCDBPpuQSa399e4nSNItSNbHejdfJdN9ibFTRjHcicicmpb4RTe5qKTd2nTFj8hSIcBNtw/132','2495290','1',50,'2019-11-07 19:16:33','-50','false',10029,NULL);
/*!40000 ALTER TABLE `fn_pcorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_prevent`
--

DROP TABLE IF EXISTS `fn_prevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_prevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` text,
  `status` text,
  `time` datetime DEFAULT NULL,
  `list` int(11) DEFAULT NULL,
  `roomid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_prevent`
--

LOCK TABLES `fn_prevent` WRITE;
/*!40000 ALTER TABLE `fn_prevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_prevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_report`
--

DROP TABLE IF EXISTS `fn_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(25) DEFAULT NULL COMMENT 'openid',
  `tuanduishangfen` decimal(12,2) DEFAULT '0.00' COMMENT '团队上分',
  `tuanduixiafen` decimal(12,2) DEFAULT '0.00' COMMENT '团队下分',
  `tuanduiyue` decimal(12,2) DEFAULT '0.00' COMMENT '团队余额',
  `qixiadaili` int(8) DEFAULT '0' COMMENT '旗下代理数',
  `user_type` int(1) DEFAULT '1' COMMENT '玩家类型1直属2代理',
  `z_changgui` decimal(12,2) DEFAULT '0.00' COMMENT '直属常规',
  `z_liuhe` decimal(12,2) DEFAULT '0.00' COMMENT '直属六合',
  `z_shixun` decimal(12,2) DEFAULT '0.00' COMMENT '直属视讯',
  `d_changgui` decimal(12,2) DEFAULT '0.00' COMMENT '代理常规',
  `d_liuhe` decimal(12,2) DEFAULT '0.00' COMMENT '代理六合',
  `d_shixun` decimal(12,2) DEFAULT '0.00' COMMENT '代理视讯',
  `tuanduituishui` decimal(12,2) DEFAULT '0.00' COMMENT '团队退水',
  `f_z_changgui` decimal(12,2) DEFAULT '0.00' COMMENT '直接客户常规返佣',
  `f_z_liuhe` decimal(12,2) DEFAULT '0.00' COMMENT '直接客户六合返佣',
  `f_z_shixun` decimal(12,2) DEFAULT '0.00' COMMENT '直接客户视讯返佣',
  `f_d_changgui` decimal(12,2) DEFAULT '0.00' COMMENT '团队常规返佣',
  `f_d_liuhe` decimal(12,2) DEFAULT '0.00' COMMENT '团队客户六合返佣',
  `f_d_shixun` decimal(12,2) DEFAULT '0.00' COMMENT '代理客户视讯返佣',
  `addtime` datetime DEFAULT NULL COMMENT '数据日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_report`
--

LOCK TABLES `fn_report` WRITE;
/*!40000 ALTER TABLE `fn_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_res_open`
--

DROP TABLE IF EXISTS `fn_res_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_res_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL DEFAULT '0' COMMENT '彩种类型',
  `res_code` varchar(255) NOT NULL DEFAULT '' COMMENT '预设开奖号',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '采集开奖号',
  `term` varchar(255) NOT NULL DEFAULT '' COMMENT '期号',
  `res_time` int(10) NOT NULL DEFAULT '0' COMMENT '开奖号回复期限',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0新1已采集2已还原',
  `roomid` int(10) NOT NULL DEFAULT '0' COMMENT '房间ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_res_open`
--

LOCK TABLES `fn_res_open` WRITE;
/*!40000 ALTER TABLE `fn_res_open` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_res_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_robotplan`
--

DROP TABLE IF EXISTS `fn_robotplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_robotplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `game` text NOT NULL,
  `addtime` datetime NOT NULL,
  `roomid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_robotplan`
--

LOCK TABLES `fn_robotplan` WRITE;
/*!40000 ALTER TABLE `fn_robotplan` DISABLE KEYS */;
INSERT INTO `fn_robotplan` VALUES (1,'{随机名次}/{随机特码}/{随机金额1}','pk10','2019-05-13 13:06:12',10029),(2,'{随机名次}/{随机特码}/{随机金额2}','pk10','2019-05-13 13:06:45',10029),(3,'{随机名次}/12345/{随机金额1}','pk10','2019-05-13 13:07:13',10029),(4,'{随机名次}/67890/{随机金额1}','pk10','2019-05-13 13:07:30',10029),(5,'{随机名次}/234567/{随机金额1}','pk10','2019-05-13 13:07:41',10029),(6,'{随机名次}/789/{随机金额1}','pk10','2019-05-13 13:07:50',10029),(7,'{随机名次}/5678/{随机金额1}','pk10','2019-05-13 13:08:06',10029),(8,'{随机名次}/245679/{随机金额1}','pk10','2019-05-13 13:08:24',10029),(10,'67890/{随机特码}/{随机金额1}','pk10','2019-05-13 13:09:09',10029),(11,'1234/{随机特码}/{随机金额1}','pk10','2019-05-13 13:09:21',10029),(12,'890/{随机特码}/{随机金额1}','pk10','2019-05-13 13:10:21',10029),(13,'{随机名次}/{随机双面}/{随机金额1}','pk10','2019-05-13 13:14:46',10029),(15,'{随机名次}/{随机组合1}/{随机金额1}','pk10','2019-05-13 13:16:16',10029),(16,'{随机名次}/{随机组合2}/{随机金额1}','pk10','2019-05-13 13:16:24',10029),(21,'{随机位数}/{随机龙虎}/{随机金额1}','pk10','2019-05-13 14:25:14',10029),(22,'{随机名次}/{随机特码}/{随机金额1}','xyft','2019-05-13 15:03:52',10029),(23,'{随机名次}/{随机特码}/{随机金额2}','xyft','2019-05-13 15:03:58',10029),(24,'{随机名次}/12345/{随机金额1}','xyft','2019-05-13 15:04:03',10029),(25,'{随机名次}/67890/{随机金额1}','xyft','2019-05-13 15:04:08',10029),(26,'{随机名次}/789/{随机金额1}','xyft','2019-05-13 15:04:14',10029),(27,'{随机名次}/5678/{随机金额1}','xyft','2019-05-13 15:04:21',10029),(28,'{随机名次}/245679/{随机金额1}','xyft','2019-05-13 15:04:27',10029),(29,'{随机名次}/1456/{随机金额1}','xyft','2019-05-13 15:04:32',10029),(30,'{随机名次}/4567/{随机金额1}','xyft','2019-05-13 15:04:38',10029),(31,'{随机名次}/890/{随机金额1}','xyft','2019-05-13 15:04:44',10029),(32,'{随机名次}/1234567/{随机金额1}','xyft','2019-05-13 15:04:49',10029),(33,'{随机名次}/46890/{随机金额1}','xyft','2019-05-13 15:04:54',10029),(34,'{随机名次}/34568/{随机金额1}','xyft','2019-05-13 15:05:00',10029),(35,'{随机名次}/19/{随机金额1}','xyft','2019-05-13 15:05:05',10029),(36,'{随机名次}/189/{随机金额1}','xyft','2019-05-13 15:05:10',10029),(37,'{随机名次}/14590/{随机金额1}','xyft','2019-05-13 15:05:15',10029),(38,'12/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:22',10029),(39,'234/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:27',10029),(40,'67890/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:34',10029),(41,'1234/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:41',10029),(42,'890/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:52',10029),(43,'5690/{随机特码}/{随机金额1}','xyft','2019-05-13 15:05:58',10029),(44,'135/{随机特码}/{随机金额1}','xyft','2019-05-13 15:06:03',10029),(45,'4567/{随机特码}/{随机金额1}','xyft','2019-05-13 15:06:36',10029),(46,'35/{随机特码}/{随机金额1}','xyft','2019-05-13 15:06:42',10029),(47,'356/{随机特码}/{随机金额1}','xyft','2019-05-13 15:06:48',10029),(48,'{随机名次}/{随机双面}/{随机金额1}','xyft','2019-05-13 15:06:59',10029),(49,'{随机名次}/{随机组合1}/{随机金额1}','xyft','2019-05-13 15:07:06',10029),(50,'{随机名次}/{随机组合2}/{随机金额1}','xyft','2019-05-13 15:07:11',10029),(51,'{随机位数}/{随机龙虎}/{随机金额1}','xyft','2019-05-13 15:07:16',10029),(52,'{随机位数}/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:08:44',10029),(53,'{随机位数}/{随机特码}/{随机金额2}','cqssc','2019-05-13 17:08:50',10029),(54,'{随机龙虎}/{随机金额1}','cqssc','2019-05-13 17:08:58',10029),(55,'{随机位数}/{随机双面}/{随机金额1}','cqssc','2019-05-13 17:11:25',10029),(56,'总/{随机双面}/{随机金额1}','cqssc','2019-05-13 17:11:38',10029),(57,'{随机位数}/0123456/{随机金额1}','cqssc','2019-05-13 17:15:24',10029),(58,'{随机位数}/5678/{随机金额1}','cqssc','2019-05-13 17:15:31',10029),(59,'{随机位数}/89/{随机金额1}','cqssc','2019-05-13 17:15:36',10029),(60,'{随机位数}/13456/{随机金额1}','cqssc','2019-05-13 17:15:42',10029),(61,'{随机位数}/2345/{随机金额1}','cqssc','2019-05-13 17:15:47',10029),(62,'{随机位数}/467/{随机金额1}','cqssc','2019-05-13 17:15:53',10029),(63,'{随机位数}/012/{随机金额1}','cqssc','2019-05-13 17:15:59',10029),(64,'12/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:04',10029),(65,'13/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:23',10029),(66,'14/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:30',10029),(67,'15/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:36',10029),(68,'15/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:41',10029),(69,'24/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:47',10029),(70,'25/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:52',10029),(71,'34/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:16:57',10029),(72,'35/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:03',10029),(73,'45/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:09',10029),(74,'12345/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:16',10029),(75,'234/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:21',10029),(76,'345/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:26',10029),(77,'235/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:32',10029),(78,'245/{随机特码}/{随机金额1}','cqssc','2019-05-13 17:17:37',10029),(92,'{随机名次}/{随机特码}/{随机金额1}','jssc','2019-06-30 17:03:57',10029),(93,'{随机名次}/{随机特码}/{随机金额2}','jssc','2019-06-30 17:04:05',10029),(94,'{随机名次}/12345/{随机金额1}','jssc','2019-06-30 17:04:11',10029),(95,'{随机名次}/67890/{随机金额1}','jssc','2019-06-30 17:04:20',10029),(96,'{随机名次}/234567/{随机金额1}','jssc','2019-06-30 17:04:26',10029),(97,'{随机名次}/789/{随机金额1}','jssc','2019-06-30 17:04:31',10029),(98,'{随机名次}/5678/{随机金额1}','jssc','2019-06-30 17:04:38',10029),(99,'{随机名次}/245679/{随机金额1}','jssc','2019-06-30 17:04:44',10029),(100,'67890/{随机特码}/{随机金额1}','jssc','2019-06-30 17:04:52',10029),(101,'1234/{随机特码}/{随机金额1}','jssc','2019-06-30 17:04:58',10029),(102,'890/{随机特码}/{随机金额1}','jssc','2019-06-30 17:05:04',10029),(103,'{随机名次}/{随机双面}/{随机金额1}','jssc','2019-06-30 17:05:09',10029),(104,'{随机名次}/{随机组合1}/{随机金额1}','jssc','2019-06-30 17:05:17',10029),(105,'{随机名次}/{随机组合2}/{随机金额1}','jssc','2019-06-30 17:05:22',10029),(106,'{随机位数}/{随机龙虎}/{随机金额1}','jssc','2019-06-30 17:05:28',10029),(110,'{随机双面}{随机金额1} ','jnd28','2019-09-03 03:37:03',10029),(111,'{随机双面}{随机金额2}','jnd28','2019-09-03 03:37:52',10029),(112,'{随机双面}{随机金额3}','jnd28','2019-09-03 03:37:59',10029),(113,'{随机组合1}{随机金额1}','jnd28','2019-09-03 03:38:18',10029),(114,'{随机组合1}{随机金额2}','jnd28','2019-09-03 03:38:24',10029),(115,'{随机组合1}{随机金额3}','jnd28','2019-09-03 03:38:28',10029),(116,'{随机组合2}{随机金额1}','jnd28','2019-09-03 03:38:34',10029),(117,'{随机组合2}{随机金额2}','jnd28','2019-09-03 03:38:39',10029),(118,'{随机组合2}{随机金额3}','jnd28','2019-09-03 03:38:45',10029),(119,'{随机数字}/{随机金额1}','jnd28','2019-09-03 03:44:56',10029),(120,'{随机数字}/{随机金额2}','jnd28','2019-09-03 03:45:02',10029),(121,'{随机数字}/{随机金额3}','jnd28','2019-09-03 03:45:05',10029),(122,'{随机特码} {随机金额1} ','jssm','2019-09-03 04:25:54',10029),(123,'{随机特码}{随机金额2}','jssm','2019-09-03 04:26:22',10029),(124,'{随机名次}{随机双面}{随机金额1}','jnd28','2019-09-03 04:44:38',10029),(125,'{随机名次}{随机双面}{随机金额2}','jnd28','2019-09-03 04:44:42',10029);
/*!40000 ALTER TABLE `fn_robotplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_robots`
--

DROP TABLE IF EXISTS `fn_robots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_robots` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `headimg` text NOT NULL,
  `name` text NOT NULL,
  `plan` text NOT NULL,
  `game` text NOT NULL,
  `roomid` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_robots`
--

LOCK TABLES `fn_robots` WRITE;
/*!40000 ALTER TABLE `fn_robots` DISABLE KEYS */;
INSERT INTO `fn_robots` VALUES (13,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567454364.jpg','奔跑的梦想','110|111','jnd28','10029'),(14,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567454813.jpg','甲方','110|111|113|114','jnd28','10029'),(15,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567455197.jpg','卑微孤影','110|111|112|113|114|115','jnd28','10029'),(16,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567456019.jpg','奔跑的梦想','122|123','jssm','10029'),(17,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457107.jpg','小白','124|125','jnd28','10029'),(18,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457796.jpg','1','110|111','jnd28','10029'),(19,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457828.jpg','2','110|111|113|114|119|120','jnd28','10029'),(20,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457832.jpg','3','110|111|113|114|119|120','jnd28','10029'),(21,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457835.jpg','4','110|111|113|114|119|120','jnd28','10029'),(22,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457839.jpg','5','110|111|113|114|119|120','jnd28','10029'),(23,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457845.jpg','6','110|111|113|114|119|120','jnd28','10029'),(24,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457849.jpg','7','110|111|113|114|119|120','jnd28','10029'),(25,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457853.jpg','8','110|111|113|114|119|120','jnd28','10029'),(26,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457866.jpg','9','110|111|113|114|119|120','jnd28','10029'),(27,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457870.jpg','10','110|111|113|114|119|120','jnd28','10029'),(28,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457874.jpg','11','110|111|113|114|119|120','jnd28','10029'),(29,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457878.jpg','12','110|111|113|114|119|120','jnd28','10029'),(30,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457883.jpg','13','110|111|113|114|119|120','jnd28','10029'),(31,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457888.jpg','14','110|111|113|114|119|120','jnd28','10029'),(32,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457892.jpg','15','110|111|113|114|119|120','jnd28','10029'),(33,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457896.jpg','16','110|111|113|114|119|120','jnd28','10029'),(34,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457900.jpg','17','110|111|113|114|119|120','jnd28','10029'),(35,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457905.jpg','18','110|111|113|114|119|120','jnd28','10029'),(36,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457910.jpg','19','110|111|113|114|119|120','jnd28','10029'),(37,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457914.jpg','20','110|111|113|114|119|120','jnd28','10029'),(38,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457918.jpg','21','110|111|113|114|119|120','jnd28','10029'),(39,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457922.jpg','22','110|111|113|114|119|120','jnd28','10029'),(40,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457928.jpg','23','110|111|113|114|119|120','jnd28','10029'),(41,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457933.jpg','24','110|111|113|114|119|120','jnd28','10029'),(42,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457939.jpg','25','110|111|113|114|119|120','jnd28','10029'),(43,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457944.jpg','26','110|111|113|114|119|120','jnd28','10029'),(44,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457950.jpg','27','110|111|113|114|119|120','jnd28','10029'),(45,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457955.jpg','28','110|111|113|114|119|120','jnd28','10029'),(46,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457960.jpg','29','110|111|113|114|119|120','jnd28','10029'),(47,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457984.jpg','30','124|125','jnd28','10029'),(48,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457989.jpg','31','124|125','jnd28','10029'),(49,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457994.jpg','32','124|125','jnd28','10029'),(50,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567457999.jpg','33','124|125','jnd28','10029'),(51,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458004.jpg','34','124|125','jnd28','10029'),(52,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458009.jpg','35','124|125','jnd28','10029'),(53,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458014.jpg','36','124|125','jnd28','10029'),(54,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458018.jpg','37','124|125','jnd28','10029'),(55,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458023.jpg','38','124|125','jnd28','10029'),(56,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458027.jpg','39','124|125','jnd28','10029'),(57,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567458032.jpg','40','124|125','jnd28','10029'),(58,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567462984.jpg','1','1','pk10','10029'),(59,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567462988.jpg','2','1','pk10','10029'),(60,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567462991.jpg','3','1','pk10','10029'),(61,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567462996.jpg','4','1','pk10','10029'),(62,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567463004.jpg','5','1','pk10','10029'),(63,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567463008.jpg','6','1','pk10','10029'),(64,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471220.jpg','41','110|111|113|114','jnd28','10029'),(65,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471223.jpg','42','110|111|113|114','jnd28','10029'),(66,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471226.jpg','43','110|111|113|114','jnd28','10029'),(67,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471229.jpg','44','110|111|113|114','jnd28','10029'),(68,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471232.jpg','45','110|111|113|114','jnd28','10029'),(69,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471236.jpg','46','110|111|113|114','jnd28','10029'),(70,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471239.jpg','47','110|111|113|114','jnd28','10029'),(71,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471242.jpg','48','110|111|113|114','jnd28','10029'),(72,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471245.jpg','49','110|111|113|114','jnd28','10029'),(73,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471247.jpg','50','110|111|113|114','jnd28','10029'),(74,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471250.jpg','51','110|111|113|114','jnd28','10029'),(75,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471252.jpg','52','110|111|113|114','jnd28','10029'),(76,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471255.jpg','53','110|111|113|114','jnd28','10029'),(77,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471258.jpg','54','110|111|113|114','jnd28','10029'),(78,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471260.jpg','55','110|111|113|114','jnd28','10029'),(79,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471263.jpg','56','110|111|113|114','jnd28','10029'),(80,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471265.jpg','57','110|111|113|114','jnd28','10029'),(81,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471268.jpg','58','110|111|113|114','jnd28','10029'),(82,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471271.jpg','59','110|111|113|114','jnd28','10029'),(83,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471273.jpg','60','110|111|113|114','jnd28','10029'),(84,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471276.jpg','61','110|111|113|114','jnd28','10029'),(85,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471278.jpg','62','110|111|113|114','jnd28','10029'),(86,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471281.jpg','63','110|111|113|114','jnd28','10029'),(87,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471283.jpg','64','110|111|113|114','jnd28','10029'),(88,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471285.jpg','65','110|111|113|114','jnd28','10029'),(89,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471288.jpg','66','110|111|113|114','jnd28','10029'),(90,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471291.jpg','67','110|111|113|114','jnd28','10029'),(91,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471293.jpg','68','110|111|113|114','jnd28','10029'),(92,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471297.jpg','69','110|111|113|114','jnd28','10029'),(93,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471299.jpg','70','110|111|113|114','jnd28','10029'),(94,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471327.jpg','71','110|111|113|114','jnd28','10029'),(95,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471330.jpg','72','110|111|113|114','jnd28','10029'),(96,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471332.jpg','73','110|111|113|114','jnd28','10029'),(97,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471335.jpg','74','110|111|113|114','jnd28','10029'),(98,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471337.jpg','75','110|111|113|114','jnd28','10029'),(99,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471340.jpg','76','110|111|113|114','jnd28','10029'),(100,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471342.jpg','77','110|111|113|114','jnd28','10029'),(101,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471345.jpg','78','110|111|113|114','jnd28','10029'),(102,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471347.jpg','79','110|111|113|114','jnd28','10029'),(103,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471350.jpg','80','110|111|113|114','jnd28','10029'),(104,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471357.jpg','81','110|111|113|114','jnd28','10029'),(105,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471360.jpg','82','110|111|113|114','jnd28','10029'),(106,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471362.jpg','83','110|111|113|114','jnd28','10029'),(107,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471365.jpg','84','110|111|113|114','jnd28','10029'),(108,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471367.jpg','86','110|111|113|114','jnd28','10029'),(109,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471369.jpg','85','110|111|113|114','jnd28','10029'),(110,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471372.jpg','87','110|111|113|114','jnd28','10029'),(111,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471375.jpg','89','110|111|113|114','jnd28','10029'),(112,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471377.jpg','88','110|111|113|114','jnd28','10029'),(113,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471380.jpg','90','110|111|113|114','jnd28','10029'),(114,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471382.jpg','92','110|111|113|114','jnd28','10029'),(115,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471385.jpg','91','110|111|113|114','jnd28','10029'),(116,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471388.jpg','93','110|111|113|114','jnd28','10029'),(117,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471390.jpg','94','110|111|113|114','jnd28','10029'),(118,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471393.jpg','95','110|111|113|114','jnd28','10029'),(119,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471395.jpg','97','110|111|113|114','jnd28','10029'),(120,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471398.jpg','96','110|111|113|114','jnd28','10029'),(121,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471400.jpg','98','110|111|113|114','jnd28','10029'),(122,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471403.jpg','99','110|111|113|114','jnd28','10029'),(123,'http://px7i789pa.bkt.clouddn.com/7niuupload/201909031567471406.jpg','10','110|111|113|114','jnd28','10029'),(124,'http://cdn.ononn.com/7niuupload/202009091599657626.png','1','22','xyft','10029');
/*!40000 ALTER TABLE `fn_robots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_room`
--

DROP TABLE IF EXISTS `fn_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_room` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `money` decimal(11,2) NOT NULL COMMENT '房间提现余额',
  `roomname` text NOT NULL,
  `roomadmin` text NOT NULL,
  `roompass` text NOT NULL,
  `roomtime` text NOT NULL,
  `agent` text NOT NULL,
  `version` text NOT NULL,
  `vip` text NOT NULL COMMENT 'VIP',
  `zhifubao` varchar(255) NOT NULL COMMENT '支付宝',
  `zhiewm` varchar(255) NOT NULL COMMENT '支付宝收款码',
  `yinhang` varchar(255) NOT NULL COMMENT '银行卡',
  `huming` varchar(255) NOT NULL COMMENT '开户行',
  `kahao` varchar(255) NOT NULL COMMENT '银行账号',
  `weixin` varchar(255) NOT NULL COMMENT '微信',
  `weiewm` varchar(255) NOT NULL COMMENT '微信二维码',
  `feilv` varchar(255) NOT NULL COMMENT '费率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_room`
--

LOCK TABLES `fn_room` WRITE;
/*!40000 ALTER TABLE `fn_room` DISABLE KEYS */;
INSERT INTO `fn_room` VALUES (10029,10029,0.00,'蜜桃源码测试---www.mitaobo.com','admin','827ccb0eea8a706c4c34a16891f84e7b','2030-05-15 23:59:59','Xsoul','尊享版','1','','','','','','','/Weijiang/upload/201808251535209563.png','');
/*!40000 ALTER TABLE `fn_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_roomlog`
--

DROP TABLE IF EXISTS `fn_roomlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_roomlog` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roomid` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `time` text NOT NULL,
  `shebei` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_roomlog`
--

LOCK TABLES `fn_roomlog` WRITE;
/*!40000 ALTER TABLE `fn_roomlog` DISABLE KEYS */;
INSERT INTO `fn_roomlog` VALUES (153,'10029','14.122.138.207','广东省湛江市','2019-08-31 04:01:02','电脑网页'),(154,'10029','14.122.138.207','广东省湛江市','2019-08-31 08:48:18','电脑网页'),(155,'10029','14.119.187.238','广东省湛江市','2019-09-02 21:28:34','电脑网页'),(156,'10029','14.119.187.238','广东省湛江市','2019-09-03 04:02:31','电脑网页'),(157,'10029','171.110.193.171','广西壮族自治区玉林市','2019-11-07 10:24:13','电脑网页'),(158,'10029','180.137.24.119','广西壮族自治区玉林市','2019-11-07 10:29:09','苹果'),(159,'10029','171.110.193.171','广西壮族自治区玉林市','2019-11-07 11:02:52','电脑网页'),(160,'10029','218.21.124.103','广西壮族自治区玉林市','2019-11-07 11:03:18','电脑网页'),(161,'10029','113.15.120.40','广西壮族自治区玉林市','2019-11-07 13:31:31','电脑网页'),(162,'10029','218.21.124.103','广西壮族自治区玉林市','2019-11-07 17:32:04','电脑网页'),(163,'10029','36.101.40.64','海南省琼中黎族苗族自治县','2020-09-09 20:49:28','电脑网页'),(164,'10029','36.101.40.64','海南省琼中黎族苗族自治县','2020-09-09 20:58:07','电脑网页');
/*!40000 ALTER TABLE `fn_roomlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_setting`
--

DROP TABLE IF EXISTS `fn_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_setting` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `sid` varchar(255) NOT NULL COMMENT '充值接口ID',
  `zhisdk` varchar(255) NOT NULL COMMENT '支付宝sdk',
  `weisdk` varchar(255) NOT NULL COMMENT '微信SDK',
  `qsdk` varchar(255) NOT NULL COMMENT 'QQSDK',
  `dsid` varchar(255) NOT NULL COMMENT '第三方ID',
  `dskey` varchar(255) NOT NULL COMMENT '第三方KEY',
  `payfs` int(11) NOT NULL COMMENT '平台支付方式',
  `setting_game` text NOT NULL,
  `setting_tixian` int(255) NOT NULL DEFAULT '5' COMMENT '提现次数',
  `setting_wordkeys` text,
  `setting_kefu` text,
  `setting_cancelbet` text,
  `setting_ischat` text,
  `setting_tishi` text,
  `setting_video` text COMMENT '视频文字',
  `setting_qrcode` text COMMENT '二维码地址',
  `setting_people` int(11) DEFAULT NULL COMMENT '在线人数基数',
  `setting_sysimg` text,
  `setting_robotsimg` text COMMENT '机器人头像',
  `setting_robots` int(11) DEFAULT NULL COMMENT '机器人数量',
  `setting_robot_min` int(11) DEFAULT NULL COMMENT '机器人下注时间间隔最小',
  `setting_robot_max` int(11) DEFAULT NULL COMMENT '机器人下注时间间隔最大',
  `setting_robot_pointmin` int(11) DEFAULT NULL,
  `setting_robot_pointmax` int(11) DEFAULT NULL,
  `setting_templates` text NOT NULL,
  `setting_flyorder` text NOT NULL,
  `setting_downmark` text,
  `display_custom` text NOT NULL,
  `display_extend` text NOT NULL,
  `display_plan` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `display_game` text NOT NULL,
  `msg1_time` int(11) DEFAULT NULL,
  `msg1_cont` text,
  `msg2_time` int(11) DEFAULT NULL,
  `msg2_cont` text,
  `msg3_time` int(11) DEFAULT NULL,
  `msg3_cont` text,
  `daojishi` varchar(255) NOT NULL COMMENT '封盘倒计时消息',
  `fengpanxiaoxi` varchar(255) NOT NULL COMMENT '封盘消息',
  `flyorder_type` text,
  `flyorder_user` text,
  `flyorder_pass` text,
  `flyorder_site` text,
  `flyorder_session` text,
  `flyorder_duichong` text,
  `flyorder_pk10` text,
  `flyorder_xyft` text,
  `flyorder_cqssc` text,
  `tuiguang` int(255) NOT NULL DEFAULT '1',
  `fanshui` varchar(255) NOT NULL COMMENT '反水规则图',
  `fstext` text NOT NULL,
  `tubiao` int(255) NOT NULL DEFAULT '1' COMMENT '图标隐藏',
  `zhibo` varchar(255) NOT NULL COMMENT '美女直播开关',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_setting`
--

LOCK TABLES `fn_setting` WRITE;
/*!40000 ALTER TABLE `fn_setting` DISABLE KEYS */;
INSERT INTO `fn_setting` VALUES (10029,10029,'19193659dfe27ffee7','73382870a885b7762b1e15fb77','adcfd34c8f2a47ec56e445ecbb','123','1013','eDVN0Y2yz2e7i0KU2508nsKu5Eq88V7K',1,'pk10',100,'','','disable','disable','open','','http://cdn.ononn.com/7niuupload/wwwziyueicom201908311567190284.png',1261,'http://cdn.ononn.com/7niuupload/wwwziyueicom201908311567213159.png','http://cdn.ononn.com/7niuupload/wwwziyueicom201908311567212683.png',0,20,30,30,2000,'old','false','true','true','true','false','true',1,'竞猜完可在左侧【记录】复查，有错请于开奖前【撤单】，确认撤单后点数自动返还！',2,'',3,'','第 [期号] 期距离封盘[换行]----★还有30秒★----','第 [期号] 期已关闭，请耐心等待开奖。','guangda','nengli','Aa123456','https://gdcp66.com','b35357e5267fe5693ed1cdf1214290b0','false','true','true','true',0,'http://cdn.ononn.com/7niuupload/feiniaocaiwuinet201911071573093881.jpg','<p></p><div><br></div><p></p>',1,'open');
/*!40000 ALTER TABLE `fn_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_sign`
--

DROP TABLE IF EXISTS `fn_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_sign` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `sing_time` varchar(150) DEFAULT NULL COMMENT '签到的时间',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `money` int(10) DEFAULT '0' COMMENT '获得的金额',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否签到 0 否 1 是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_sign`
--

LOCK TABLES `fn_sign` WRITE;
/*!40000 ALTER TABLE `fn_sign` DISABLE KEYS */;
INSERT INTO `fn_sign` VALUES (39,'odA1R5jWYXkZzElv-lavtNBeDMUw','20190810',NULL,20,0),(40,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','20190811',NULL,20,0),(41,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','20190811',NULL,20,0),(42,'odA1R5jWYXkZzElv-lavtNBeDMUw','20190811',NULL,30,0),(43,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','20190811',NULL,20,0),(44,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','20190812',NULL,30,0),(45,'odA1R5jWYXkZzElv-lavtNBeDMUw','20190812',NULL,50,0),(46,'odY0ywbYUF46BLmjFLEVkkZPD--o','20190812',NULL,20,0),(47,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','20190812',NULL,30,0),(48,'odY0ywbYUF46BLmjFLEVkkZPD--o','20190813',NULL,30,0),(49,'odY0ywTMTip6CPbZ2erPF51XVfK8','20190825',NULL,20,0),(50,'oyC0-1KEY8E98eLydQLJ8TOaqawc','20191107',NULL,20,0),(51,'oyC0-1MgNYYyhrl-nB6RJgnvsg5c','20191107',NULL,20,0);
/*!40000 ALTER TABLE `fn_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_sign_set`
--

DROP TABLE IF EXISTS `fn_sign_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_sign_set` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `s_1` int(10) DEFAULT '0' COMMENT '连续第1天签到获得的金币奖励',
  `s_2` int(10) DEFAULT '0' COMMENT '连续第2天签到获得的金币奖励',
  `s_3` int(10) DEFAULT '0' COMMENT '连续第3天签到获得的金币奖励',
  `s_4` int(10) DEFAULT '0' COMMENT '连续第4天签到获得的金币奖励',
  `s_5` int(10) DEFAULT '0' COMMENT '连续第5天签到获得的金币奖励',
  `s_6` int(10) DEFAULT '0' COMMENT '连续第6天签到获得的金币奖励',
  `s_7` int(10) DEFAULT '0' COMMENT '连续第7天签到获得的金币奖励',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_sign_set`
--

LOCK TABLES `fn_sign_set` WRITE;
/*!40000 ALTER TABLE `fn_sign_set` DISABLE KEYS */;
INSERT INTO `fn_sign_set` VALUES (2,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `fn_sign_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_smorder`
--

DROP TABLE IF EXISTS `fn_smorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_smorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text CHARACTER SET utf8mb4 NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_smorder`
--

LOCK TABLES `fn_smorder` WRITE;
/*!40000 ALTER TABLE `fn_smorder` DISABLE KEYS */;
INSERT INTO `fn_smorder` VALUES (1,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1367135','1','大',100,'2019-06-24 06:21:59','-100','false',10029,NULL),(2,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1367136','1','大',100,'2019-06-24 06:23:26','-100','false',10029,NULL),(3,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1370999','1','大',200,'2019-06-28 06:57:34','-200','false',10029,NULL),(4,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1370999','1','小',100,'2019-06-28 06:57:38','198.8','false',10029,NULL),(5,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1379148','1','小单',100,'2019-07-06 18:41:24','100','false',10029,NULL),(6,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1379148','2','小单',100,'2019-07-06 18:41:24','100','false',10029,NULL),(7,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1379148','3','小单',100,'2019-07-06 18:41:24','-100','false',10029,NULL),(8,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1414034','2','大',50,'2019-08-12 02:49:58','99.4','false',10029,NULL),(9,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1414034','2','小',50,'2019-08-12 02:49:58','-50','false',10029,NULL),(10,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1414144','0','双',500,'2019-08-12 05:35:32','-500','false',10029,NULL),(11,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','1414144','0','大',500,'2019-08-12 05:35:32','-500','false',10029,NULL),(12,'odY0ywbYUF46BLmjFLEVkkZPD--o','A小或','http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCVIQux5adV5Z2LzaGNwYxWXyiakWU7DxFWq4oibkMMJWiaPpuO8zTpqml1o8xVEI9PXicEHWGRScYP7A/132','1415338','1','大',50,'2019-08-13 11:26:28','-50','false',10029,NULL),(13,'odY0ywbYUF46BLmjFLEVkkZPD--o','A小或','http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCVIQux5adV5Z2LzaGNwYxWXyiakWU7DxFWq4oibkMMJWiaPpuO8zTpqml1o8xVEI9PXicEHWGRScYP7A/132','1415338','1','小',50,'2019-08-13 11:26:28','99.4','false',10029,NULL);
/*!40000 ALTER TABLE `fn_smorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_sopen`
--

DROP TABLE IF EXISTS `fn_sopen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_sopen` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `term` varchar(255) CHARACTER SET utf8 NOT NULL,
  `opentime` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 NOT NULL,
  `next_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `next_term` varchar(255) CHARACTER SET utf8 NOT NULL,
  `roomid` varchar(255) CHARACTER SET utf8 NOT NULL,
  `kaijiang` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_sopen`
--

LOCK TABLES `fn_sopen` WRITE;
/*!40000 ALTER TABLE `fn_sopen` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_sopen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_sscorder`
--

DROP TABLE IF EXISTS `fn_sscorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_sscorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_sscorder`
--

LOCK TABLES `fn_sscorder` WRITE;
/*!40000 ALTER TABLE `fn_sscorder` DISABLE KEYS */;
INSERT INTO `fn_sscorder` VALUES (1,'odA1R5jWYXkZzElv-lavtNBeDMUw','樂','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','20190624005','1','大',100,'2019-06-24 01:40:03','-100','false',10029,NULL),(2,'odY0ywTMTip6CPbZ2erPF51XVfK8','、farmer','http://thirdwx.qlogo.cn/mmopen/vi_32/SiahTVtQEs97Um6RtVrMa08KgN5ibS5GkJkkibKa7uonXB87RDeWKfhhC6vJwwDZnQVj9GVhTaKWP1eibt8QLMZITg/132','20190811001','2','0',10,'2019-08-11 00:06:08','-10','false',10029,NULL),(3,'odY0ywTMTip6CPbZ2erPF51XVfK8','、farmer','http://thirdwx.qlogo.cn/mmopen/vi_32/SiahTVtQEs97Um6RtVrMa08KgN5ibS5GkJkkibKa7uonXB87RDeWKfhhC6vJwwDZnQVj9GVhTaKWP1eibt8QLMZITg/132','20190811001','2','2',10,'2019-08-11 00:06:08','-10','false',10029,NULL),(4,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','1','1',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(5,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','1','2',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(6,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','1','3',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(7,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','1','4',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(8,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','1','5',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(9,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','3','1',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(10,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','3','2',50,'2019-08-12 18:34:39','-50','false',10029,NULL),(11,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','3','3',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(12,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','3','4',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(13,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','3','5',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(14,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','5','1',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(15,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','5','2',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(16,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','5','3',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(17,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','5','4',50,'2019-08-12 18:34:40','-50','false',10029,NULL),(18,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','Y','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','20190812044','5','5',50,'2019-08-12 18:34:40','-50','false',10029,NULL);
/*!40000 ALTER TABLE `fn_sscorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_system`
--

DROP TABLE IF EXISTS `fn_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_system` (
  `id` int(11) NOT NULL,
  `content1` text,
  `content2` text,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_system`
--

LOCK TABLES `fn_system` WRITE;
/*!40000 ALTER TABLE `fn_system` DISABLE KEYS */;
INSERT INTO `fn_system` VALUES (0,'li.baok.top','1',NULL),(1,'','1621308391',1),(2,'','1621308391',2),(3,'li.baok.top','45.195.143.170:8888',3);
/*!40000 ALTER TABLE `fn_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_tixian`
--

DROP TABLE IF EXISTS `fn_tixian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_tixian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roomid` varchar(255) NOT NULL COMMENT '房间号',
  `feilv` varchar(255) NOT NULL COMMENT '费率',
  `shiji` decimal(11,2) NOT NULL COMMENT '实际到账',
  `status` varchar(255) NOT NULL COMMENT '状态',
  `money` decimal(11,2) NOT NULL COMMENT '提现金额',
  `titime` datetime NOT NULL COMMENT '提现时间',
  `chutime` datetime NOT NULL COMMENT '处理时间',
  `fangshi` varchar(255) NOT NULL COMMENT '提现方式',
  `qudao` varchar(255) NOT NULL COMMENT '提现渠道',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_tixian`
--

LOCK TABLES `fn_tixian` WRITE;
/*!40000 ALTER TABLE `fn_tixian` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_tixian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_twk3order`
--

DROP TABLE IF EXISTS `fn_twk3order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_twk3order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `username` text NOT NULL,
  `headimg` text NOT NULL,
  `term` text NOT NULL,
  `mingci` text NOT NULL,
  `content` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` datetime NOT NULL,
  `status` text NOT NULL,
  `jia` text NOT NULL,
  `roomid` int(11) NOT NULL,
  `chatid` varchar(255) DEFAULT NULL COMMENT '标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_twk3order`
--

LOCK TABLES `fn_twk3order` WRITE;
/*!40000 ALTER TABLE `fn_twk3order` DISABLE KEYS */;
/*!40000 ALTER TABLE `fn_twk3order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_upmark`
--

DROP TABLE IF EXISTS `fn_upmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_upmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `headimg` text NOT NULL,
  `username` text NOT NULL,
  `type` text NOT NULL,
  `money` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `status` text NOT NULL,
  `game` text,
  `roomid` int(11) NOT NULL,
  `jia` text NOT NULL,
  `orderid` varchar(50) NOT NULL DEFAULT '' COMMENT '订单id',
  `tixian` varchar(255) NOT NULL COMMENT '二维码',
  `czfangshi` varchar(255) NOT NULL COMMENT '充值方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_upmark`
--

LOCK TABLES `fn_upmark` WRITE;
/*!40000 ALTER TABLE `fn_upmark` DISABLE KEYS */;
INSERT INTO `fn_upmark` VALUES (1,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',10000,'2019-06-24 01:29:41','已处理','xyft',10029,'false','2019062420767','','联系客服充值'),(2,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-06-24 03:38:28','已处理','cqssc',10029,'false','2019062489918','','联系客服充值'),(3,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',50,'2019-06-26 02:35:20','已拒绝','jssc',10029,'false','2019062622905','','联系客服充值'),(4,'odA1R5iyRaPIUdEmDjAKWZ6ArdhA','http://thirdwx.qlogo.cn/mmopen/vi_32/nqMXuic5mkp4ns1iav1BuMOIGQrhFaibmgBuOXGUVQDUztBNMtfJqBzwCcmoI1Xmtv0TRO8lrMCADqlzeavdticKvw/132','༄浮生࿐','上分',50,'2019-06-26 02:37:39','已处理','bjl',10029,'false','2019062653371','','联系客服充值'),(5,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-06-28 06:17:12','已处理','xy28',10029,'false','2019062845357','','联系客服充值'),(6,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','下分',1000,'2019-06-30 18:08:45','已处理','jssc',10029,'false','无','中国银行<br>测试<br>6222047789778951452331',''),(7,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',600,'2019-07-14 19:10:23','已处理','jssc',10029,'false','2019071446945','','联系客服充值'),(8,'odA1R5v-z7wyjF5Vu5IivmF5rrSM','http://thirdwx.qlogo.cn/mmopen/vi_32/rbiccghM07nDdghah60A10VcKslTaOj7nYrq6PLgyqJEHfZ2XpUCG3vic4mSpJre4hGOrocDW2c8xT9f1CicU1aKw/132','停机保号','上分',1000,'2019-07-18 00:47:49','已处理','',10029,'false','2019071849460','','联系客服充值'),(9,'odY0ywayC3wvogHBfYm2Fvr7a0U0','http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKSMxsO1V93SD04EfEvFU4wib1rvBZEnN4pkvc6xS8FXclhwUibBs75E3icMXI7suTnbo2MXOUGag9Rg/132','遗忘','上分',1000,'2019-08-09 20:43:38','已处理','',10029,'false','2019080923523','','联系客服充值'),(10,'odY0ywcIyBqltFVFiNxdvw17Bjk8','http://thirdwx.qlogo.cn/mmopen/vi_32/lhlqsAmkYTArrydiawZia3HX4mS0CpRygw8BOsoMDXibbS5jc07uSH1icbWAfdkrRW9yicuLicCU9BNdT17L3bkJ6apA/132','小小叶','上分',100,'2019-08-09 21:38:25','已处理','xyft',10029,'false','2019080990496','','联系客服充值'),(11,'odY0ywTwYS8GO0ODWuXAUDFye13I','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLufYUJaPq3A9y8wO520ZZoVjeDtSV2rTiaOGcyAUb2nuGwict81aTlX1ecpibMibuDEmPgdbdfFzkH3w/132','ꪝ小财神','上分',500,'2019-08-09 22:02:02','已处理','xyft',10029,'false','2019080990656','','联系客服充值'),(12,'odY0ywXqlQC499QpY6WbaZg4lj1g','http://thirdwx.qlogo.cn/mmopen/vi_32/eydnUOOrQAkLkElGEiaJGF6pEEoJusdHchicicrtyW5S5okM82IBbQ3Mo0I8t4bU3hY9EQUH1VaqqtSUAhSCJRmgQ/132','鸿通服务','上分',20000,'2019-08-11 00:48:44','已处理','jssm',10029,'false','2019081186298','','联系客服充值'),(13,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','Y','上分',1000,'2019-08-11 16:48:33','已处理','jsssc',10029,'false','2019081127206','','联系客服充值'),(14,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','Y','上分',1000,'2019-08-11 16:48:34','已处理','jsssc',10029,'false','2019081135605','','联系客服充值'),(15,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','http://thirdwx.qlogo.cn/mmopen/vi_32/jT8qEFTKfVj3h8XbBQXZ82x4S3hQo57WEGE2Z5XbhFXotqlEUexBIicR9QcJnKDC6YAfsibkhvBlRgGp1txiaibvGg/132','Application crazy','上分',99999,'2019-08-11 17:20:38','已处理','azxy5',10029,'false','2019081179656','','联系客服充值'),(16,'odY0ywb7wufiI4BBCQIM2eM8sOus','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI5V6pBDhhleS00FbLNAicicoUDJPibZzib0U0ibiawdshzjhGYu0jgFicLMIO7TMzhWQLgciaalZSGHCbgXw/132','奋斗','上分',1000,'2019-08-11 18:14:04','已处理','azxy10',10029,'false','2019081113104','','联系客服充值'),(17,'odY0ywS5P-20QSlznOb86scrz-yQ','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqeLdUT3dGGWr4JJ8VjDy4RuiafV5AeulBMeXv3hNU0kGoV80s4naJ7iaU7Kz8oW4Jg7OPjWpn3n2Bw/132','小黄 。','上分',111,'2019-08-11 20:41:10','已处理','bjl',10029,'false','2019081171856','','联系客服充值'),(18,'odY0ywbYUF46BLmjFLEVkkZPD--o','http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCVIQux5adV5Z2LzaGNwYxWXyiakWU7DxFWq4oibkMMJWiaPpuO8zTpqml1o8xVEI9PXicEHWGRScYP7A/132','A小或','上分',1000,'2019-08-12 12:01:27','已处理','pk10',10029,'false','2019081266834','','联系客服充值'),(19,'odY0ywcgl0eqFsikJxfNWZTWy-ns','http://thirdwx.qlogo.cn/mmopen/vi_32/6PPqQlcFvx8ZnbLoojIoEgq46nCz2aiaibh5WYXdmLDpOgfynRI2bkboibSS5P1FH0uAn7FU8gQohT9B7kua9SPcA/132','东北二哥','上分',100,'2019-08-12 12:41:27','已处理','xy28',10029,'false','2019081278167','','联系客服充值'),(20,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','Y','上分',0,'2019-08-12 18:08:56','已处理','jssc',10029,'false','2019081219078','','联系客服充值'),(21,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','http://thirdwx.qlogo.cn/mmopen/vi_32/nFsYDCB4YtqMGo0aSgerFe6AU8zrgUXDwOAheDZa1uOtJWep0OGkdSPDomb5o0tQL0g6AyibnjppUse7lMdnsiaA/132','是非人愿','上分',10000,'2019-08-12 18:21:33','已处理','jnd28',10029,'false','2019081202391','','联系客服充值'),(22,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',0,'2019-08-12 23:01:06','已处理','lhc',10029,'false','2019081275527','','联系客服充值'),(23,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','http://thirdwx.qlogo.cn/mmopen/vi_32/xXm2gqm1ZY45W8VEib4bEAPciciaqe63iaic7pXQkWz9SZR7KaTcsLFRs28lUdcuFkmcnzbWIgYxlS03rHzDrjheh9Q/132','!','上分',1000,'2019-08-12 23:14:41','已处理','xyft',10029,'false','2019081267013','','联系客服充值'),(24,'odY0ywUWW2pYrur19DiADeMpSVEw','http://thirdwx.qlogo.cn/mmopen/vi_32/QqQDcmw0yDY0l0P5EY5gpANZJo3I9ptzYegvjguBw2GTRvjzmibu64EIuk86eBbqAyzofkIlv4RXeQbvVeqNNjA/132','A银河软件开发15959222272','上分',1000,'2019-08-13 16:58:59','已处理','bjl',10029,'false','2019081322044','','联系客服充值'),(25,'odY0ywUWW2pYrur19DiADeMpSVEw','http://thirdwx.qlogo.cn/mmopen/vi_32/QqQDcmw0yDY0l0P5EY5gpANZJo3I9ptzYegvjguBw2GTRvjzmibu64EIuk86eBbqAyzofkIlv4RXeQbvVeqNNjA/132','A银河软件开发15959222272','上分',10000,'2019-08-13 17:05:02','已处理','jssc',10029,'false','2019081313630','','联系客服充值'),(26,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','Y','上分',9999999,'2019-08-13 17:27:55','已处理','bjl',10029,'false','2019081399831','','联系客服充值'),(27,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132','Y','上分',2147483647,'2019-08-13 17:28:40','已处理','bjl',10029,'false','2019081389415','','联系客服充值'),(28,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-26 11:48:59','已处理','jnd28',10029,'false','2019082650891','','联系客服充值'),(29,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:40:33','已拒绝','jnd28',10029,'false','','',''),(30,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:46:48','已拒绝','jnd28',10029,'false','','',''),(31,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:46:54','已拒绝','jnd28',10029,'false','','',''),(32,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:47:17','已拒绝','jnd28',10029,'false','','',''),(33,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:50:08','已拒绝','gd11x5',10029,'false','','',''),(34,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:50:31','已拒绝','gd11x5',10029,'false','','',''),(35,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:50:38','已拒绝','gd11x5',10029,'false','','',''),(36,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132','樂','上分',100,'2019-08-31 02:50:59','已处理','gd11x5',10029,'false','','',''),(37,'oyC0-1KEY8E98eLydQLJ8TOaqawc','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq0WiaKhWvwtU8PVV2hzojTdqFdWsCKsQibDwgCW36AxOy59FQk6a53w5jyf5RHiaQicodTQuDaWn2ERA/132','宇壕.','上分',100,'2019-11-07 10:26:54','已处理','',10029,'false','2019110778225','','联系客服充值'),(38,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132','Ya','上分',10,'2019-11-07 10:32:55','已拒绝','',10029,'false','2019110710325582663','','微信扫码'),(39,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132','Ya','上分',10,'2019-11-07 10:33:00','已拒绝','',10029,'false','2019110710330072945','','支付宝'),(40,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132','Ya','上分',20,'2019-11-07 10:33:30','已拒绝','',10029,'false','20191107103330698857','','支付宝'),(41,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132','Ya','上分',20,'2019-11-07 10:33:37','已拒绝','',10029,'false','20191107103337653488','','微信扫码'),(42,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132','Ya','上分',1000,'2019-11-07 13:44:45','已处理','jssc',10029,'false','','',''),(43,'oyC0-1EDS0wGTM80Z1iUDZZfgRoU','http://thirdwx.qlogo.cn/mmopen/vi_32/CHng3iarb6QCZHTtC5CFCdQVtvJDFYia4AmEGX9p2OMwjic7ib9pSGlHDRTKqyA6r1bibZica6jPz71eFGCDAwhkZHqw/132','喽淼科技=17971','上分',100,'2019-11-07 19:18:41','已处理','jssc',10029,'false','2019110740727','','联系客服充值'),(44,'oTcjQ5gyasCy0d6UIgBFbawUanP4','http://thirdwx.qlogo.cn/mmopen/vi_32/nkibEGAbP8X791pDhPTyibD0VwztqJCSQDebNympwz89nKLmRlgDYIemYqDU1bzrn4qbukCibRT4aIUWVoibIRGBRQ/132','赐我大嘴巴子','上分',100,'2020-09-09 21:10:44','已处理','',10029,'false','2020090966770','','联系客服充值');
/*!40000 ALTER TABLE `fn_upmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_user`
--

DROP TABLE IF EXISTS `fn_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` text NOT NULL,
  `tixian` varchar(255) NOT NULL COMMENT '提现二维码',
  `username` text NOT NULL,
  `bzname` varchar(20) NOT NULL,
  `hmd` text NOT NULL,
  `headimg` text NOT NULL,
  `money` decimal(11,2) NOT NULL,
  `roomid` int(255) NOT NULL,
  `statustime` int(255) NOT NULL,
  `agent` text,
  `isagent` text NOT NULL,
  `jia` text NOT NULL,
  `aztime` datetime NOT NULL,
  `shuashui` varchar(255) NOT NULL DEFAULT 'false' COMMENT '是否刷水',
  `tixianxianzhi` int(255) NOT NULL DEFAULT '0' COMMENT '提现限制',
  `timeold` date NOT NULL DEFAULT '2018-07-07' COMMENT '最后提现时间',
  `loginuser` varchar(255) NOT NULL,
  `loginpass` varchar(255) NOT NULL,
  `yinhang` varchar(255) NOT NULL,
  `huming` varchar(255) NOT NULL,
  `kahao` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_user`
--

LOCK TABLES `fn_user` WRITE;
/*!40000 ALTER TABLE `fn_user` DISABLE KEYS */;
INSERT INTO `fn_user` VALUES (1,'odA1R5jWYXkZzElv-lavtNBeDMUw','http://cdn.ononn.com/7niuupload/201906261561553172.jpeg','樂','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI0oIPFG1OLbL9lqo1YXg0zIUia7DlQ91IxK3DJib7jgjzFEY1eqkPmIvohmQMSaI0VmYHwQKjRJicjw/132',26293.20,10029,1599655894,'null','true','false','0000-00-00 00:00:00','false',1,'2019-06-30','ceshi1','e10adc3949ba59abbe56e057f20f883e','中国银行','测试','6222047789778951452331',1),(2,'odA1R5rsk-UgP5tpkrSuYp3gMsYo','','歪歪·会飞飞','','','http://thirdwx.qlogo.cn/mmopen/vi_32/pic9klVpKnk4iaVJNAmKy8rmXPobfYpWocv5kBaHgEc82OYh6NvicEdsMKNIt5TwJSfgMnVJ3dSpCMxEKmklht3Cg/132',0.00,10029,1561488026,'odA1R5qj2UMX3NP7K6yRcFUGWdjc','true','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(3,'odA1R5qj2UMX3NP7K6yRcFUGWdjc','','夜夜笙歌','','','http://thirdwx.qlogo.cn/mmopen/vi_32/3oE54ZElR0pQDKCorHI4iaQDCNHpB1ELdZjkJUh9hD1H6jzFKrbnGLQfQJSuqibZcFU41a3Sk6IhJxh2tFd6xuicg/132',0.00,10029,1561375844,'odA1R5jWYXkZzElv-lavtNBeDMUw','true','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(4,'odA1R5slDIIDwWC91LP2U3ozT_Yc','','可乐','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erz8QhS1dy2Dm8StZSibPHibwUPNet4mx8A6kcCvMUj8gGWTuZF9EDyicOibiaEHNlaVhkk6d6Kux0lBrQ/132',0.00,10029,1563223613,'null','true','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(5,'odA1R5iyRaPIUdEmDjAKWZ6ArdhA','','༄浮生࿐','','','http://thirdwx.qlogo.cn/mmopen/vi_32/nqMXuic5mkp4ns1iav1BuMOIGQrhFaibmgBuOXGUVQDUztBNMtfJqBzwCcmoI1Xmtv0TRO8lrMCADqlzeavdticKvw/132',75050.00,10029,1561653672,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(6,'odA1R5rhjM7PRfBps7yjDQqc3Q-k','','喵','','','http://thirdwx.qlogo.cn/mmopen/vi_32/ticofb0QvNr0tUh4mgxCibl4Nb0ARXoZx57TxvcG9pfPrhmzPKnic3AxvARWhvdZGj3WYWWZ6nGz6cDkNgNrD6YvA/132',0.00,10029,1561648749,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(7,'odA1R5s21hDNekFV1qe1YPWnPaBg','','VIC.Yang','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq8js7dibnX1S9mJ9x7JqJ3uFJf91QsLytzxL4avB3icwN7taEsSGIoKlXUaZ9sSgx2dBL66kAgW64A/132',0.00,10029,1562149199,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(8,'odA1R5v-z7wyjF5Vu5IivmF5rrSM','','停机保号','','','http://thirdwx.qlogo.cn/mmopen/vi_32/rbiccghM07nDdghah60A10VcKslTaOj7nYrq6PLgyqJEHfZ2XpUCG3vic4mSpJre4hGOrocDW2c8xT9f1CicU1aKw/132',500.00,10029,1563383199,'odA1R5jWYXkZzElv-lavtNBeDMUw','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(9,'odA1R5phkvhuJRt-F05Ig3TtL-k8','','罗罗','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKy93TJ9HicDiajfsDicUYqeqBdIqiblalyqvwmiadvH6rec7LgcvClp6jes1PNhJbr2qcibqHcT0vUrzTw/132',0.00,10029,1563449773,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(10,'odY0ywTMTip6CPbZ2erPF51XVfK8','','、farmer','','','http://thirdwx.qlogo.cn/mmopen/vi_32/SiahTVtQEs97Um6RtVrMa08KgN5ibS5GkJkkibKa7uonXB87RDeWKfhhC6vJwwDZnQVj9GVhTaKWP1eibt8QLMZITg/132',100330.00,10029,1567216170,'null','true','false','0000-00-00 00:00:00','false',0,'2018-07-07','13800138000','7945bd83237335e5376ff44d62e4f0ae','','','',1),(11,'odY0ywTMTip6CPbZ2erPF51XVfK8','','、farmer','','','http://thirdwx.qlogo.cn/mmopen/vi_32/SiahTVtQEs97Um6RtVrMa08KgN5ibS5GkJkkibKa7uonXB87RDeWKfhhC6vJwwDZnQVj9GVhTaKWP1eibt8QLMZITg/132',100330.00,0,1565324356,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',1),(12,'odY0ywRlRWRBmLqAbUzKENN1RBoA','','Silly_日天科技客服','','','http://thirdwx.qlogo.cn/mmopen/vi_32/JH9nzUSNhX69Aguvvia8icp6HJIR4zicnuOKViaL5bOYnu84c3ia7d9icnJkBu4gHkMiaEcqYCBD6TJOXmiaU9csz4OAzQ/132',0.00,0,1565325175,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',1),(13,'odY0ywRlRWRBmLqAbUzKENN1RBoA','','Silly_日天科技客服','','','http://thirdwx.qlogo.cn/mmopen/vi_32/JH9nzUSNhX69Aguvvia8icp6HJIR4zicnuOKViaL5bOYnu84c3ia7d9icnJkBu4gHkMiaEcqYCBD6TJOXmiaU9csz4OAzQ/132',0.00,10029,1565325887,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(14,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','','Application crazy','','','http://thirdwx.qlogo.cn/mmopen/vi_32/jT8qEFTKfVj3h8XbBQXZ82x4S3hQo57WEGE2Z5XbhFXotqlEUexBIicR9QcJnKDC6YAfsibkhvBlRgGp1txiaibvGg/132',99999.00,0,1565325613,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',1),(15,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','','是非人愿','','','http://thirdwx.qlogo.cn/mmopen/vi_32/nFsYDCB4YtqMGo0aSgerFe6AU8zrgUXDwOAheDZa1uOtJWep0OGkdSPDomb5o0tQL0g6AyibnjppUse7lMdnsiaA/132',70.00,0,1565333977,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',1),(16,'odY0ywUWW2pYrur19DiADeMpSVEw','','A银河软件开发15959222272','','','http://thirdwx.qlogo.cn/mmopen/vi_32/QqQDcmw0yDY0l0P5EY5gpANZJo3I9ptzYegvjguBw2GTRvjzmibu64EIuk86eBbqAyzofkIlv4RXeQbvVeqNNjA/132',10010.00,10029,1565687146,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(17,'odY0ywayC3wvogHBfYm2Fvr7a0U0','','遗忘','','','http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEKSMxsO1V93SD04EfEvFU4wib1rvBZEnN4pkvc6xS8FXclhwUibBs75E3icMXI7suTnbo2MXOUGag9Rg/132',1000.00,10029,1565367957,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(18,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','','Application crazy','','','http://thirdwx.qlogo.cn/mmopen/vi_32/jT8qEFTKfVj3h8XbBQXZ82x4S3hQo57WEGE2Z5XbhFXotqlEUexBIicR9QcJnKDC6YAfsibkhvBlRgGp1txiaibvGg/132',99999.00,10029,1565594171,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(19,'odY0ywcIyBqltFVFiNxdvw17Bjk8','','小小叶','','','http://thirdwx.qlogo.cn/mmopen/vi_32/lhlqsAmkYTArrydiawZia3HX4mS0CpRygw8BOsoMDXibbS5jc07uSH1icbWAfdkrRW9yicuLicCU9BNdT17L3bkJ6apA/132',600.00,10029,1565359512,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(20,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','','是非人愿','','','http://thirdwx.qlogo.cn/mmopen/vi_32/nFsYDCB4YtqMGo0aSgerFe6AU8zrgUXDwOAheDZa1uOtJWep0OGkdSPDomb5o0tQL0g6AyibnjppUse7lMdnsiaA/132',10127.60,10029,1565672502,'null','true','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(21,'odY0ywTwYS8GO0ODWuXAUDFye13I','','ꪝ小财神','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLufYUJaPq3A9y8wO520ZZoVjeDtSV2rTiaOGcyAUb2nuGwict81aTlX1ecpibMibuDEmPgdbdfFzkH3w/132',500.00,10029,1565359709,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(22,'odY0ywXqlQC499QpY6WbaZg4lj1g','','鸿通服务','','','http://thirdwx.qlogo.cn/mmopen/vi_32/eydnUOOrQAkLkElGEiaJGF6pEEoJusdHchicicrtyW5S5okM82IBbQ3Mo0I8t4bU3hY9EQUH1VaqqtSUAhSCJRmgQ/132',20000.00,10029,1565456314,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(23,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','','!','','','http://thirdwx.qlogo.cn/mmopen/vi_32/xXm2gqm1ZY45W8VEib4bEAPciciaqe63iaic7pXQkWz9SZR7KaTcsLFRs28lUdcuFkmcnzbWIgYxlS03rHzDrjheh9Q/132',1000.00,10029,1565671715,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(24,'odY0ywV1Bel6keSx8_kzKIU3MHd4','','a银河科技、技术对接','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DM586VmS7sFicWyGM7NCRWNHyyKJjYyloyMnBicVfTgvuXUsdmJicnF62cJZkvEgcc2hDVwWlNLWP8ZFV8VmV8mfw/132',0.00,10029,1565513480,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(25,'odY0ywbYUF46BLmjFLEVkkZPD--o','','A小或','','','http://thirdwx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLCVIQux5adV5Z2LzaGNwYxWXyiakWU7DxFWq4oibkMMJWiaPpuO8zTpqml1o8xVEI9PXicEHWGRScYP7A/132',999.60,10029,1565681023,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','tfnhui','f2cc79518ff1bb3643b1d9c7a1ea8978','','','',2),(26,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','http://cdn.ononn.com/7niuupload/201908131565688791.png','Y','','','http://thirdwx.qlogo.cn/mmopen/vi_32/vUP3QPLdxqGuJicZLrdSVjWVC6GOrdy3ORAQBhhdmgtqTFgBuzrDNTmnYZibRURHX1s5qLmpiaG3QXWXcxtflYt1w/132',999999999.99,10029,1565689179,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(27,'odY0ywaLojQvUNhgNp-qLXsKg4gs','','随风丨的枫丶','','','http://thirdwx.qlogo.cn/mmopen/vi_32/nbRZXXZ51cAD9tHtmMrKDOyrA8ic6ZvePbnJZ0LSnejia2apgrP0yAvOySNxcFAkOkBEKdg1iaMZqBaNdvmYKwibFw/132',0.00,10029,1565516598,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(28,'odY0ywdOOyKoamiX01GKkJj4KRFQ','','AAA银河科技牌具彩票棋牌开发','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epcgX2wTD6MmB13Qp0h28qbFgVvkdliafFSGUVgOhD2jiaic117OibgsOphxicI2TGxxuabO0Un0W5OiaBw/132',0.00,10029,1565507044,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(29,'odY0ywb7wufiI4BBCQIM2eM8sOus','','奋斗','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI5V6pBDhhleS00FbLNAicicoUDJPibZzib0U0ibiawdshzjhGYu0jgFicLMIOrXWgGm62nyYuHLlBpmRHPw/132',348.00,10029,1565689351,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(30,'odY0ywS5P-20QSlznOb86scrz-yQ','','小黄 。','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqeLdUT3dGGWr4JJ8VjDy4RuiafV5AeulBMeXv3hNU0kGoV80s4naJ7iaU7Kz8oW4Jg7OPjWpn3n2Bw/132',111.00,10029,1565527245,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(31,'odY0ywV9MjYfYKYy6dvjDw-GhhCk','','人情事故','','','http://thirdwx.qlogo.cn/mmopen/vi_32/5XtTKNI6jSEsvHMXmkD9L1yYQ0sQB4z0AmTx8tkqav4ooWZFLicg6vMSPlwUN8ETgKH7mdI3lRicopFpOc7W72WQ/132',0.00,10029,1565527230,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(32,'odY0ywc7hkqLNa2geake6KLvNti8','','石小弟','','','http://thirdwx.qlogo.cn/mmopen/vi_32/y4u9VLsADmVRl1I32SRFTJWgxice8Aicj3e5vvHibEQRDPvhoDneRjgerCZiclkcCuPYiaQqicI1lf0iadZhUaNdyclkA/132',0.00,10029,1565527430,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(34,'odY0ywcgl0eqFsikJxfNWZTWy-ns','','东北二哥','','','http://thirdwx.qlogo.cn/mmopen/vi_32/6PPqQlcFvx8ZnbLoojIoEgq46nCz2aiaibh5WYXdmLDpOgfynRI2bkboibSS5P1FH0uAn7FU8gQohT9B7kua9SPcA/132',100.00,10029,1565584882,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(35,'odY0ywY_7Dwlwcv9Ejb00F-OG-uc','','美酒挽旧友','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL7rUex45O7ial2SXyw5m02uIQpcKT01G9aZnVP2f8vTia3OY2alKicpGh77j5CyicoatJG1b71qn9Eug/132',0.00,10029,1565623204,'odY0ywbYUF46BLmjFLEVkkZPD--o','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(36,'odY0ywcEQQRegmmoBMBCQAWV_y3Y','','bhbhbhbbbhbbbb','','','http://thirdwx.qlogo.cn/mmopen/vi_32/rOb0SAYlJGOeibj0eZplcET92AJPsuU2yRavibbnxvkIlX1js7UB4RCb9tNQPxqRlFT4em7aUO4uz6epZccCuBtw/132',0.00,10029,1565624124,'odY0ywbYUF46BLmjFLEVkkZPD--o','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(37,'odY0ywZfiBXLlRaoJrcc-PvByLZc','','','','','http://thirdwx.qlogo.cn/mmopen/vi_32/fLyyRxDu0Ax27BwiaticV1l9ibdDblCREBxVEMVXT0aZkL41Yc3RmiaibIlzXP8zJ5ibQgUMCgSLJ7m9qP9YEtAX5cUQ/132',0.00,10029,1565622929,'odY0ywbYUF46BLmjFLEVkkZPD--o','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(38,'odY0yweS3QIlzPqtOtnL3oxVqTdA','','它','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJx73L8DReGLQDmvZHMbibmncVl2wrnNtLAFpvgjCWJnNZCdTETXsHxic8moQbZHorOHPkIo6iawqGvA/132',0.00,10029,1565671820,'odY0ywUWW2pYrur19DiADeMpSVEw','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(39,'odY0ywZ0w4JQUQw1YB7nxp4E9KYY','','厦门银河科技','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxwt8mzpnicg6NGQ2ruRvkISC0XcofwU8ZM8oHic1muqpjfgPXtiap9IokE35fic0nOfdcFPF45ttibkA/132',0.00,10029,1565672365,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',0),(40,'odY0ywU_72Oi2H79qNgRG263WsNc','','年年有余','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoSxZCGOyfPtoJ8xOov1wByKzBeWKL27SpbPtrqN4gPL90vxymQVUXLoQwcxvetRXP5tiadsNk5icpw/132',0.00,10029,1565671163,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(41,'odY0ywVd2uKgMXWza4VaPIN1SkjE','','甜露: ྀི ','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eonQqAb0YYptzasLbNfcxGdtEibb7qwenMnGxX39aib5sNwCicicX6B3pFyhccmIvbzpnDHe2zYSXbd0A/132',0.00,10029,1565690425,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(42,'oyC0-1KEY8E98eLydQLJ8TOaqawc','','宇壕.','','','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq0WiaKhWvwtU8PVV2hzojTdqFdWsCKsQibDwgCW36AxOy59FQk6a53w5jyf5RHiaQicodTQuDaWn2ERA/132',100000.00,10029,1573093576,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(43,'oyC0-1MgNYYyhrl-nB6RJgnvsg5c','','网站开发搭建SSC棋牌游戏','','','http://thirdwx.qlogo.cn/mmopen/vi_32/9TXvsfzAoQCj6Zv53Ad0h8ZbqMOQFLqIp506FKgQicHscxv6lW2dZcwiaLPPdgIBbdtwSia1Qh5vmcBWUzY1KWC9A/132',100020.00,10029,1573123608,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(44,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','','Ya','','','http://thirdwx.qlogo.cn/mmopen/vi_32/eQkpsZXh1QqRIINRiakszW4QfILIicqB7GAnEAYJtcB9R5WbIvImjsgTCBgl2bb6Np8Ca4VPoGFmBcc20giaLvyNQ/132',101000.00,10029,1573128214,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(45,'oyC0-1OElBvHU4itC21fgicqX4ZY','','彩票棋牌网站专业开发','','','http://thirdwx.qlogo.cn/mmopen/vi_32/4KIkPtTLnuErUdLv01QvffS09eJwmytWsEn7vKR7bd3OBicF5Mg7lwzibmRrCiaFNO7b25ZkfWzic7FsIKdNuwbWvA/132',0.00,10029,1573096792,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(46,'cc17c30cd111c7215fc8f51f8790e0e1','','ceshi','','','/Style/images/0.png',0.00,0,0,NULL,'false','false','0000-00-00 00:00:00','false',0,'2018-07-07','ceshi','e10adc3949ba59abbe56e057f20f883e','','','',0),(48,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','','','','','http://thirdwx.qlogo.cn/mmopen/vi_32/OrCtVlmMiauW0uJOK3rPrCDBPpuQSa399e4nSNItSNbHejdfJdN9ibFTRjHcicicmpb4RTe5qKTd2nTFj8hSIcBNtw/132',99949.00,10029,1573126251,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(49,'oyC0-1IlmwssPccv_3qYR289nisg','','A未知の、旋律 “','','','http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJUtaTr2yQX65ibX8mmicdBpO70iaTRDcMMPFM3EbanQ6cfibwkpicqPk0AMzV6JlV83VMZXxqAsPukYpA/132',0.00,10029,1573097845,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(50,'oyC0-1EDS0wGTM80Z1iUDZZfgRoU','','喽淼科技=17971','','','http://thirdwx.qlogo.cn/mmopen/vi_32/CHng3iarb6QCZHTtC5CFCdQVtvJDFYia4AmEGX9p2OMwjic7ib9pSGlHDRTKqyA6r1bibZica6jPz71eFGCDAwhkZHqw/132',100.00,10029,1573125766,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','','','','','',2),(51,'oTcjQ5gyasCy0d6UIgBFbawUanP4','','赐我大嘴巴子','','','http://thirdwx.qlogo.cn/mmopen/vi_32/nkibEGAbP8X791pDhPTyibD0VwztqJCSQDebNympwz89nKLmRlgDYIemYqDU1bzrn4qbukCibRT4aIUWVoibIRGBRQ/132',95.00,10029,1599657799,'null','false','false','0000-00-00 00:00:00','false',0,'2018-07-07','257500','ab2228c24046e2725cbb15d33f3e67c2','','','',2),(52,'200820e3227815ed1756a6b531e7e0d2','','qwe123','','','/Style/images/0.png',0.00,0,0,NULL,'false','false','0000-00-00 00:00:00','false',0,'2018-07-07','qwe123','e10adc3949ba59abbe56e057f20f883e','','','',0);
/*!40000 ALTER TABLE `fn_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_userlog`
--

DROP TABLE IF EXISTS `fn_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_userlog` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `roomid` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` text NOT NULL,
  `addtime` text NOT NULL,
  `shebei` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_userlog`
--

LOCK TABLES `fn_userlog` WRITE;
/*!40000 ALTER TABLE `fn_userlog` DISABLE KEYS */;
INSERT INTO `fn_userlog` VALUES (1,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.234','2019-06-24','2019-06-24 01:23:25','','福建省厦门市'),(2,'odA1R5rsk-UgP5tpkrSuYp3gMsYo','10029','112.5.204.234','2019-06-24','2019-06-24 02:26:20','','福建省厦门市'),(3,'odA1R5qj2UMX3NP7K6yRcFUGWdjc','10029','112.5.204.234','2019-06-24','2019-06-24 02:27:28','','福建省厦门市'),(4,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.234','2019-06-24','2019-06-24 02:52:48','','福建省厦门市'),(5,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','223.104.6.26','2019-06-24','2019-06-24 19:10:20','','福建省厦门市'),(6,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.234','2019-06-25','2019-06-25 03:17:46','','福建省厦门市'),(7,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','27.154.185.54','2019-06-25','2019-06-25 19:16:29','','福建省厦门市'),(8,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.234','2019-06-26','2019-06-26 02:33:38','','福建省厦门市'),(9,'odA1R5iyRaPIUdEmDjAKWZ6ArdhA','10029','120.206.210.76','2019-06-26','2019-06-26 02:35:11','','江西省萍乡市'),(10,'odA1R5rsk-UgP5tpkrSuYp3gMsYo','10029','112.5.204.234','2019-06-26','2019-06-26 02:36:43','','福建省厦门市'),(11,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.234','2019-06-26','2019-06-26 22:42:06','','福建省厦门市'),(12,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.234','2019-06-27','2019-06-27 16:01:26','','福建省厦门市'),(13,'odA1R5rhjM7PRfBps7yjDQqc3Q-k','10029','112.5.204.234','2019-06-27','2019-06-27 23:18:03','','福建省厦门市'),(14,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.234','2019-06-27','2019-06-27 23:21:54','','福建省厦门市'),(15,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','223.104.6.23','2019-06-27','2019-06-27 23:23:45','','福建省厦门市'),(16,'odA1R5iyRaPIUdEmDjAKWZ6ArdhA','10029','120.206.210.222','2019-06-28','2019-06-28 00:40:54','','江西省萍乡市'),(17,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.234','2019-06-28','2019-06-28 01:07:10','','福建省厦门市'),(18,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-06-28','2019-06-28 03:17:56','','福建省厦门市'),(19,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','223.104.6.27','2019-06-28','2019-06-28 14:56:17','','福建省厦门市'),(20,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-06-29','2019-06-29 01:16:35','','福建省厦门市'),(21,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-06-30','2019-06-30 15:55:03','','福建省厦门市'),(22,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-07-01','2019-07-01 05:01:11','','福建省厦门市'),(23,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.217','2019-07-01','2019-07-01 05:05:36','','福建省厦门市'),(24,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-07-02','2019-07-02 15:36:03','','福建省厦门市'),(25,'odA1R5s21hDNekFV1qe1YPWnPaBg','10029','110.87.113.88','2019-07-03','2019-07-03 18:19:59','','福建省厦门市'),(26,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.217','2019-07-04','2019-07-04 15:40:22','','福建省厦门市'),(27,'','10029','112.5.204.217','2019-07-04','2019-07-04 17:56:16','','福建省厦门市'),(28,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.146','2019-07-05','2019-07-05 20:05:19','','福建省厦门市'),(29,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','183.253.12.113','2019-07-06','2019-07-06 17:24:33','','福建省厦门市'),(30,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','27.109.114.231','2019-07-07','2019-07-07 17:08:14','',''),(31,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.20.112.75','2019-07-07','2019-07-07 19:51:32','',''),(32,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','27.109.113.171','2019-07-08','2019-07-08 15:12:56','',''),(33,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','202.178.118.100','2019-07-08','2019-07-08 23:09:45','',''),(34,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','202.178.118.100','2019-07-09','2019-07-09 11:44:26','',''),(35,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.20.113.209','2019-07-10','2019-07-10 22:19:39','',''),(36,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','183.253.12.113','2019-07-12','2019-07-12 14:05:40','','福建省厦门市'),(37,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','183.253.12.113','2019-07-13','2019-07-13 02:54:53','','福建省厦门市'),(38,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.172','2019-07-13','2019-07-13 15:17:13','','福建省厦门市'),(39,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.172','2019-07-14','2019-07-14 15:43:59','','福建省厦门市'),(40,'','10029','61.151.178.165','2019-07-14','2019-07-14 19:11:26','','江苏省苏州市'),(41,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.172','2019-07-15','2019-07-15 00:04:07','','福建省厦门市'),(42,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.172','2019-07-16','2019-07-16 00:04:39','','福建省厦门市'),(43,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.172','2019-07-16','2019-07-16 04:39:46','','福建省厦门市'),(44,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','223.104.6.13','2019-07-17','2019-07-17 20:36:11','','福建省厦门市'),(45,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.170','2019-07-17','2019-07-17 23:04:55','','福建省厦门市'),(46,'odA1R5slDIIDwWC91LP2U3ozT_Yc','10029','112.5.204.170','2019-07-18','2019-07-18 00:00:23','','福建省厦门市'),(47,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','112.5.204.170','2019-07-18','2019-07-18 00:23:57','','福建省厦门市'),(48,'odA1R5v-z7wyjF5Vu5IivmF5rrSM','10029','112.5.204.170','2019-07-18','2019-07-18 00:47:12','','福建省厦门市'),(49,'odA1R5phkvhuJRt-F05Ig3TtL-k8','10029','58.23.44.182','2019-07-18','2019-07-18 19:33:15','','福建省厦门市'),(50,'','10029','120.239.56.217','2019-08-08','2019-08-08 15:47:26','','广东省佛山市'),(51,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.56.217','2019-08-08','2019-08-08 18:56:50','','广东省佛山市'),(52,'','10029','114.224.118.98','2019-08-08','2019-08-08 19:02:03','','江苏省无锡市'),(53,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','114.224.118.98','2019-08-08','2019-08-08 19:02:29','','江苏省无锡市'),(54,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.56.217','2019-08-09','2019-08-09 00:06:18','','广东省佛山市'),(55,'','10029','120.239.56.217','2019-08-09','2019-08-09 00:42:54','','广东省佛山市'),(56,'odY0ywRlRWRBmLqAbUzKENN1RBoA','10029','120.239.56.217','2019-08-09','2019-08-09 12:38:58','','广东省佛山市'),(57,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','120.239.56.217','2019-08-09','2019-08-09 12:45:47','','广东省佛山市'),(58,'','10029','101.89.29.86','2019-08-09','2019-08-09 14:09:03','','上海市'),(59,'','10029','61.151.178.197','2019-08-09','2019-08-09 14:09:03','','江苏省苏州市'),(60,'','10029','117.141.15.120','2019-08-09','2019-08-09 15:26:27','','广西壮族自治区桂林市'),(61,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.15.120','2019-08-09','2019-08-09 15:26:52','','广西壮族自治区桂林市'),(62,'','10029','115.60.190.85','2019-08-09','2019-08-09 15:43:59','','河南省郑州市'),(63,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','115.60.190.85','2019-08-09','2019-08-09 15:44:17','','河南省郑州市'),(64,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.15.107','2019-08-09','2019-08-09 16:02:04','','广西壮族自治区桂林市'),(65,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.15.29','2019-08-09','2019-08-09 16:05:23','','广西壮族自治区桂林市'),(66,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.15.45','2019-08-09','2019-08-09 16:09:28','','广西壮族自治区桂林市'),(67,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.37','2019-08-09','2019-08-09 18:49:20','','福建省厦门市'),(68,'odY0ywayC3wvogHBfYm2Fvr7a0U0','10029','223.104.6.57','2019-08-09','2019-08-09 20:21:51','','福建省厦门市'),(69,'','10029','61.151.207.205','2019-08-09','2019-08-09 20:25:29','','上海市'),(70,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','10029','114.224.118.98','2019-08-09','2019-08-09 20:27:15','','江苏省无锡市'),(71,'odY0ywcIyBqltFVFiNxdvw17Bjk8','10029','114.87.99.44','2019-08-09','2019-08-09 20:31:31','','上海市'),(72,'','10029','114.224.118.98','2019-08-09','2019-08-09 21:25:24','','江苏省无锡市'),(73,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.100','2019-08-09','2019-08-09 21:26:03','','福建省福州市'),(74,'odY0ywTwYS8GO0ODWuXAUDFye13I','10029','58.22.113.149','2019-08-09','2019-08-09 21:56:04','','福建省福州市'),(75,'','10029','117.141.148.135','2019-08-09','2019-08-09 22:20:23','','广西壮族自治区南宁市'),(76,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.148.135','2019-08-09','2019-08-09 22:20:27','','广西壮族自治区南宁市'),(77,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','183.252.116.158','2019-08-09','2019-08-09 22:54:44','','福建省三明市'),(78,'odY0ywayC3wvogHBfYm2Fvr7a0U0','10029','223.104.6.61','2019-08-10','2019-08-10 00:25:34','','福建省厦门市'),(79,'odY0ywXqlQC499QpY6WbaZg4lj1g','10029','117.140.235.98','2019-08-10','2019-08-10 00:27:52','','广西壮族自治区钦州市'),(80,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.148.135','2019-08-10','2019-08-10 05:38:24','','广西壮族自治区南宁市'),(81,'','10029','117.141.148.135','2019-08-10','2019-08-10 07:30:10','','广西壮族自治区南宁市'),(82,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.68','2019-08-10','2019-08-10 08:25:50','','福建省福州市'),(83,'','10029','114.224.118.98','2019-08-10','2019-08-10 09:06:35','','江苏省无锡市'),(84,'','10029','101.89.239.216','2019-08-10','2019-08-10 09:06:43','','上海市'),(85,'','10029','117.136.75.68','2019-08-10','2019-08-10 09:06:59','','福建省福州市'),(86,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','10029','114.224.118.98','2019-08-10','2019-08-10 09:07:05','','江苏省无锡市'),(87,'','10029','120.239.56.174','2019-08-10','2019-08-10 10:26:35','','广东省佛山市'),(88,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.56.174','2019-08-10','2019-08-10 10:26:46','','广东省佛山市'),(89,'','10029','183.253.44.14','2019-08-10','2019-08-10 12:00:16','','福建省厦门市'),(90,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','10029','183.253.44.14','2019-08-10','2019-08-10 12:02:00','','福建省厦门市'),(91,'','10029','222.191.173.60','2019-08-10','2019-08-10 12:04:05','','江苏省无锡市'),(92,'','10029','115.236.52.106','2019-08-10','2019-08-10 12:05:33','','浙江省杭州市'),(93,'odY0ywTwYS8GO0ODWuXAUDFye13I','10029','58.22.113.149','2019-08-10','2019-08-10 12:30:38','','福建省福州市'),(94,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','120.239.56.174','2019-08-10','2019-08-10 13:45:01','','广东省佛山市'),(95,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.123','2019-08-10','2019-08-10 16:07:11','','福建省福州市'),(96,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.43','2019-08-10','2019-08-10 16:44:05','','福建省厦门市'),(97,'','10029om/?211000','110.87.20.10','2019-08-10','2019-08-10 16:44:21','','福建省厦门市'),(98,'odY0ywV1Bel6keSx8_kzKIU3MHd4','10029','110.87.20.10','2019-08-10','2019-08-10 16:45:59','','福建省厦门市'),(99,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','223.104.6.125','2019-08-10','2019-08-10 22:33:05','','福建省漳州市'),(100,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','120.239.56.174','2019-08-11','2019-08-11 00:06:42','','广东省佛山市'),(101,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','10029','114.224.118.98','2019-08-11','2019-08-11 00:42:00','','江苏省无锡市'),(102,'odY0ywXqlQC499QpY6WbaZg4lj1g','10029','117.140.235.98','2019-08-11','2019-08-11 00:48:24','','广西壮族自治区钦州市'),(103,'','10029','120.239.56.174','2019-08-11','2019-08-11 00:49:48','','广东省佛山市'),(104,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.56.174','2019-08-11','2019-08-11 00:50:04','','广东省佛山市'),(105,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','223.104.6.83','2019-08-11','2019-08-11 06:31:50','','福建省漳州市'),(106,'odY0ywbYUF46BLmjFLEVkkZPD--o','10029','113.218.16.75','2019-08-11','2019-08-11 09:48:47','','湖南省长沙市'),(107,'','10029','101.89.29.86','2019-08-11','2019-08-11 13:38:13','','上海市'),(108,'','10029','154.211.12.55','2019-08-11','2019-08-11 13:38:27','',''),(109,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029','114.224.118.98','2019-08-11','2019-08-11 13:39:30','','江苏省无锡市'),(110,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','154.211.12.55','2019-08-11','2019-08-11 13:46:22','',''),(111,'','10029','114.224.118.98','2019-08-11','2019-08-11 13:51:40','','江苏省无锡市'),(112,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','114.224.118.98','2019-08-11','2019-08-11 13:52:13','','江苏省无锡市'),(113,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','223.104.6.66','2019-08-11','2019-08-11 14:11:26','','福建省漳州市'),(114,'','10029','58.247.206.154','2019-08-11','2019-08-11 14:20:21','','上海市'),(115,'odY0ywaLojQvUNhgNp-qLXsKg4gs','10029','111.78.244.197','2019-08-11','2019-08-11 14:26:06','','江西省九江市'),(116,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.41','2019-08-11','2019-08-11 14:31:07','','福建省厦门市'),(117,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','10029','211.97.131.221','2019-08-11','2019-08-11 15:01:35','','福建省泉州市'),(118,'odY0ywdOOyKoamiX01GKkJj4KRFQ','10029','183.253.44.14','2019-08-11','2019-08-11 15:04:04','','福建省厦门市'),(119,'','10029','27.154.248.158','2019-08-11','2019-08-11 15:29:16','','福建省厦门市'),(120,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','27.154.248.158','2019-08-11','2019-08-11 15:31:43','','福建省厦门市'),(121,'odY0ywV1Bel6keSx8_kzKIU3MHd4','10029','223.104.6.45','2019-08-11','2019-08-11 15:34:07','','福建省厦门市'),(122,'','10029','101.89.29.97','2019-08-11','2019-08-11 16:48:03','','上海市'),(123,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','110.87.228.185','2019-08-11','2019-08-11 16:52:34','','福建省三明市'),(124,'odY0ywb7wufiI4BBCQIM2eM8sOus','10029','223.104.6.20','2019-08-11','2019-08-11 16:56:25','','福建省厦门市'),(125,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029','49.95.77.209','2019-08-11','2019-08-11 17:22:37','','江苏省'),(126,'','10029','61.129.6.251','2019-08-11','2019-08-11 17:52:38','','北京市'),(127,'','10029','110.87.228.185','2019-08-11','2019-08-11 17:54:52','','福建省三明市'),(128,'odY0ywV1Bel6keSx8_kzKIU3MHd4','10029','27.154.248.158','2019-08-11','2019-08-11 18:07:56','','福建省厦门市'),(129,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','223.104.6.97','2019-08-11','2019-08-11 20:39:10','','福建省漳州市'),(130,'odY0ywS5P-20QSlznOb86scrz-yQ','10029','140.243.7.223','2019-08-11','2019-08-11 20:40:23','','福建省'),(131,'odY0ywV9MjYfYKYy6dvjDw-GhhCk','10029','183.252.91.236','2019-08-11','2019-08-11 20:40:30','','福建省漳州市'),(132,'odY0ywc7hkqLNa2geake6KLvNti8','10029','117.136.75.122','2019-08-11','2019-08-11 20:43:50','','福建省福州市'),(133,'','10029','117.141.148.135','2019-08-11','2019-08-11 21:08:25','','广西壮族自治区南宁市'),(134,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','117.141.148.135','2019-08-11','2019-08-11 21:08:33','','广西壮族自治区南宁市'),(135,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.77','2019-08-11','2019-08-11 23:42:17','','福建省福州市'),(136,'','10029','211.97.128.178','2019-08-11','2019-08-11 23:46:01','','福建省厦门市'),(137,'odY0ywbYUF46BLmjFLEVkkZPD--o','10029','120.228.77.143','2019-08-11','2019-08-11 23:46:27','','北京市'),(138,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.77','2019-08-12','2019-08-12 00:00:32','','福建省福州市'),(139,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.56.174','2019-08-12','2019-08-12 00:09:38','','广东省佛山市'),(140,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029','114.224.118.98','2019-08-12','2019-08-12 00:40:28','','江苏省无锡市'),(141,'','10029','114.224.118.98','2019-08-12','2019-08-12 01:08:25','','江苏省无锡市'),(142,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','114.224.118.98','2019-08-12','2019-08-12 01:08:27','','江苏省无锡市'),(143,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','110.87.228.185','2019-08-12','2019-08-12 01:59:31','','福建省三明市'),(144,'odY0ywZD5ZVV5Izv9c2t10Aegv5M','10029','114.224.118.98','2019-08-12','2019-08-12 01:59:31','','江苏省无锡市'),(145,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','120.239.56.174','2019-08-12','2019-08-12 02:08:01','','广东省佛山市'),(146,'','10029','120.239.56.174','2019-08-12','2019-08-12 02:10:27','','广东省佛山市'),(147,'odY0ywVd2uKgMXWza4VaPIN1SkjE','10029','114.224.118.98','2019-08-12','2019-08-12 03:17:14','','江苏省无锡市'),(148,'','10029','61.151.178.177','2019-08-12','2019-08-12 05:28:17','','江苏省苏州市'),(149,'','10029','223.104.21.250','2019-08-12','2019-08-12 09:29:05','','湖南省岳阳市'),(150,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029;','49.95.77.209','2019-08-12','2019-08-12 10:55:40','',''),(151,'odY0ywbYUF46BLmjFLEVkkZPD--o','10029','120.228.77.143','2019-08-12','2019-08-12 11:59:19','','北京市'),(152,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','10029','211.97.131.221','2019-08-12','2019-08-12 12:01:04','','福建省泉州市'),(153,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.39','2019-08-12','2019-08-12 12:02:56','','福建省厦门市'),(154,'odY0ywb7wufiI4BBCQIM2eM8sOus','10029','223.104.6.31','2019-08-12','2019-08-12 12:14:37','','福建省厦门市'),(155,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.107','2019-08-12','2019-08-12 12:27:46','','福建省福州市'),(156,'','10029','61.151.207.141','2019-08-12','2019-08-12 12:38:00','','上海市'),(157,'odY0ywcgl0eqFsikJxfNWZTWy-ns','10029','27.29.213.89','2019-08-12','2019-08-12 12:40:16','','湖北省孝感市'),(158,'','10029','112.97.241.19','2019-08-12','2019-08-12 12:45:20','','广东省东莞市'),(159,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','121.206.137.31','2019-08-12','2019-08-12 17:50:09','','福建省三明市'),(160,'odY0ywbYUF46BLmjFLEVkkZPD--o','10029','106.19.96.211','2019-08-12','2019-08-12 22:39:58','','湖南省长沙市'),(161,'','10029','61.129.7.235','2019-08-12','2019-08-12 23:09:36','','山东省潍坊市'),(162,'','10029','175.16.154.159','2019-08-12','2019-08-12 23:10:20','','吉林省吉林市'),(163,'odY0ywY_7Dwlwcv9Ejb00F-OG-uc','10029','175.16.154.159','2019-08-12','2019-08-12 23:11:31','','吉林省吉林市'),(164,'','10029','42.236.10.78','2019-08-12','2019-08-12 23:11:40','','河南省'),(165,'odY0ywcEQQRegmmoBMBCQAWV_y3Y','10029','106.19.96.211','2019-08-12','2019-08-12 23:11:45','','湖南省长沙市'),(166,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.36','2019-08-12','2019-08-12 23:11:52','','福建省厦门市'),(167,'','10029','14.215.176.5','2019-08-12','2019-08-12 23:12:55','','广东省佛山市'),(168,'','10029','111.206.36.14','2019-08-12','2019-08-12 23:15:04','','北京市'),(169,'odY0ywZfiBXLlRaoJrcc-PvByLZc','10029','120.228.77.143','2019-08-12','2019-08-12 23:15:29','','北京市'),(170,'','10029','14.215.176.132','2019-08-12','2019-08-12 23:20:55','','广东省佛山市'),(171,'','10029','14.215.176.139','2019-08-12','2019-08-12 23:20:55','','广东省佛山市'),(172,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','49.95.93.126','2019-08-13','2019-08-13 08:38:57','','江苏省'),(173,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029','114.224.118.98','2019-08-13','2019-08-13 09:05:07','','江苏省无锡市'),(174,'','10029','120.239.57.246','2019-08-13','2019-08-13 10:22:46','','广东省佛山市'),(175,'odY0ywUWW2pYrur19DiADeMpSVEw','10029','223.104.6.36','2019-08-13','2019-08-13 10:48:09','','福建省厦门市'),(176,'odY0ywbYUF46BLmjFLEVkkZPD--o','10029','106.19.170.89','2019-08-13','2019-08-13 10:56:57','','湖南省长沙市'),(177,'','10029','106.19.170.89','2019-08-13','2019-08-13 11:35:21','','湖南省长沙市'),(178,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','120.239.57.246','2019-08-13','2019-08-13 12:05:00','','广东省佛山市'),(179,'odY0ywb7wufiI4BBCQIM2eM8sOus','10029','223.104.6.26','2019-08-13','2019-08-13 12:13:31','','福建省厦门市'),(180,'','10029','101.227.139.161','2019-08-13','2019-08-13 12:16:05','','上海市'),(181,'odY0ywWUmhh-Tcp0AOGK3gO7kzuc','10029','117.136.75.92','2019-08-13','2019-08-13 12:17:34','','福建省福州市'),(182,'','10029','61.129.6.251','2019-08-13','2019-08-13 12:25:58','','北京市'),(183,'odY0yweS3QIlzPqtOtnL3oxVqTdA','10029','223.104.6.20','2019-08-13','2019-08-13 12:29:53','','福建省厦门市'),(184,'odY0ywc_NGt2G_-PkIF1b0LrSwpA','10029','211.97.131.221','2019-08-13','2019-08-13 12:33:47','','福建省泉州市'),(185,'odY0ywZ0w4JQUQw1YB7nxp4E9KYY','10029','223.104.6.59','2019-08-13','2019-08-13 12:37:44','','福建省厦门市'),(186,'odY0ywU_72Oi2H79qNgRG263WsNc','10029','120.35.240.11','2019-08-13','2019-08-13 12:39:02','','福建省三明市'),(187,'odY0ywXlLZE3XwC-G0LhdwwvhuR8','10029','49.92.191.2','2019-08-13','2019-08-13 13:40:04','','江苏省苏州市'),(188,'','10029','101.89.29.86','2019-08-13','2019-08-13 17:08:08','','上海市'),(189,'odY0ywb7wufiI4BBCQIM2eM8sOus','10029','120.36.188.15','2019-08-13','2019-08-13 17:35:40','','福建省厦门市'),(190,'odY0ywVd2uKgMXWza4VaPIN1SkjE','10029','114.224.118.98','2019-08-13','2019-08-13 18:00:25','','江苏省无锡市'),(191,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','14.119.186.156','2019-08-25','2019-08-25 05:31:06','','广东省湛江市'),(192,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','14.119.186.156','2019-08-25','2019-08-25 05:32:36','','广东省湛江市'),(193,'','10029','14.119.186.156','2019-08-25','2019-08-25 06:10:29','','广东省湛江市'),(194,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.110.70.185','2019-08-25','2019-08-25 20:18:43','','广东省湛江市'),(195,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','106.226.45.187','2019-08-25','2019-08-25 20:44:43','','江西省九江市'),(196,'','10029','113.115.48.214','2019-08-25','2019-08-25 23:20:23','','广东省广州市'),(197,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.115.48.214','2019-08-25','2019-08-25 23:20:46','','广东省广州市'),(198,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','183.30.89.237','2019-08-25','2019-08-25 23:28:39','','广东省惠州市'),(199,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','14.122.138.122','2019-08-25','2019-08-25 23:28:49','','广东省湛江市'),(200,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','112.96.119.194','2019-08-25','2019-08-25 23:35:21','','广东省广州市'),(201,'','10029','113.110.70.185','2019-08-26','2019-08-26 09:56:20','','广东省湛江市'),(202,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.110.70.185','2019-08-26','2019-08-26 09:56:31','','广东省湛江市'),(203,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','223.104.65.58','2019-08-26','2019-08-26 15:43:05','','广东省湛江市'),(204,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','112.96.197.20','2019-08-26','2019-08-26 15:43:55','','广东省广州市'),(205,'','10029','14.122.138.122','2019-08-26','2019-08-26 19:58:29','','广东省湛江市'),(206,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.110.70.157','2019-08-29','2019-08-29 02:00:28','','广东省湛江市'),(207,'','10029','113.110.70.157','2019-08-29','2019-08-29 02:50:53','','广东省湛江市'),(208,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','14.122.138.207','2019-08-29','2019-08-29 16:26:40','','广东省湛江市'),(209,'','10029','14.122.138.207','2019-08-30','2019-08-30 00:30:15','','广东省湛江市'),(210,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','14.122.138.207','2019-08-30','2019-08-30 00:30:20','','广东省湛江市'),(211,'','10029','14.122.138.207','2019-08-31','2019-08-31 01:01:28','','广东省湛江市'),(212,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','14.122.138.207','2019-08-31','2019-08-31 01:01:46','','广东省湛江市'),(213,'odY0ywTMTip6CPbZ2erPF51XVfK8','10029','14.122.138.207','2019-08-31','2019-08-31 08:54:23','','广东省湛江市'),(214,'','10029','113.110.68.185','2019-08-31','2019-08-31 22:16:16','','广东省湛江市'),(215,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.110.68.185','2019-08-31','2019-08-31 22:22:58','','广东省湛江市'),(216,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','113.110.68.185','2019-09-01','2019-09-01 01:19:11','','广东省湛江市'),(217,'','10029','14.119.187.238','2019-09-03','2019-09-03 01:55:14','','广东省湛江市'),(218,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','14.119.187.238','2019-09-03','2019-09-03 01:55:16','','广东省湛江市'),(219,'oyC0-1KEY8E98eLydQLJ8TOaqawc','10029','171.110.193.171','2019-11-07','2019-11-07 10:26:16','','广西壮族自治区玉林市'),(220,'oyC0-1MgNYYyhrl-nB6RJgnvsg5c','10029','180.137.24.119','2019-11-07','2019-11-07 10:26:45','','广西壮族自治区玉林市'),(221,'','10029','36.110.199.67','2019-11-07','2019-11-07 10:28:46','','北京市'),(222,'','10029','14.215.176.149','2019-11-07','2019-11-07 10:29:20','','广东省广州市'),(223,'','10029','14.215.176.20','2019-11-07','2019-11-07 10:29:24','','广东省广州市'),(224,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','10029','171.110.193.171','2019-11-07','2019-11-07 10:32:08','','广西壮族自治区玉林市'),(225,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','10029','106.127.6.39','2019-11-07','2019-11-07 10:56:51','','广西壮族自治区南宁市'),(226,'oyC0-1OElBvHU4itC21fgicqX4ZY','10029','218.21.124.103','2019-11-07','2019-11-07 10:58:03','','广西壮族自治区玉林市'),(227,'oyC0-1MgNYYyhrl-nB6RJgnvsg5c','10029','218.21.124.103','2019-11-07','2019-11-07 10:58:18','','广西壮族自治区玉林市'),(228,'cc17c30cd111c7215fc8f51f8790e0e1','10029','171.110.193.171','2019-11-07','2019-11-07 11:17:29','','广西壮族自治区玉林市'),(229,'oyC0-1Mq_m0gfrQl3WR0C-iu70pY','10029','218.21.124.103','2019-11-07','2019-11-07 11:21:06','','广西壮族自治区玉林市'),(230,'','10029','218.21.124.103','2019-11-07','2019-11-07 11:28:57','','广西壮族自治区玉林市'),(231,'oyC0-1IlmwssPccv_3qYR289nisg','10029','183.251.146.207','2019-11-07','2019-11-07 11:32:50','','福建省漳州市'),(232,'cc17c30cd111c7215fc8f51f8790e0e1','10029','113.15.120.40','2019-11-07','2019-11-07 13:19:37','','广西壮族自治区玉林市'),(233,'','10029','113.15.120.40','2019-11-07','2019-11-07 13:22:58','','广西壮族自治区玉林市'),(234,'oyC0-1JqWZrM2vCtx12-j7BrjkjA','10029','113.15.120.40','2019-11-07','2019-11-07 13:36:32','','广西壮族自治区玉林市'),(235,'oyC0-1EDS0wGTM80Z1iUDZZfgRoU','10029','14.24.152.45','2019-11-07','2019-11-07 18:47:01','','广东省广州市'),(236,'odA1R5jWYXkZzElv-lavtNBeDMUw','10029','36.101.40.64','2020-09-09','2020-09-09 20:25:19','','海南省琼中黎族苗族自治县'),(237,'oTcjQ5gyasCy0d6UIgBFbawUanP4','10029','36.101.40.64','2020-09-09','2020-09-09 21:09:33','','海南省琼中黎族苗族自治县'),(238,'200820e3227815ed1756a6b531e7e0d2','10029','183.227.28.7','2021-05-18','2021-05-18 11:24:30','','重庆市');
/*!40000 ALTER TABLE `fn_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fn_welcome`
--

DROP TABLE IF EXISTS `fn_welcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fn_welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomid` int(11) NOT NULL,
  `content` text NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fn_welcome`
--

LOCK TABLES `fn_welcome` WRITE;
/*!40000 ALTER TABLE `fn_welcome` DISABLE KEYS */;
INSERT INTO `fn_welcome` VALUES (222,10029,'★欢迎光临【唐龙国际娱乐城】，祝您愉快的玩耍★','2019-08-31 08:49:27');
/*!40000 ALTER TABLE `fn_welcome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'a12345'
--

--
-- Dumping routines for database 'a12345'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 11:27:54
