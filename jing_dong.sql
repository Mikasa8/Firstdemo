-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: jing_dong
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `pub_date` date DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'射雕英雄传','1970-05-01',36.60),(2,'天龙八部','1986-07-24',50.20),(3,'笑傲江湖','1995-12-24',40.00),(4,'雪山飞狐','1987-11-11',29.00);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `cate_name` varchar(40) NOT NULL,
  `brand_name` varchar(40) NOT NULL,
  `price` decimal(10,3) NOT NULL DEFAULT '0.000',
  `is_show` bit(1) NOT NULL DEFAULT b'1',
  `is_saleoff` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'r510vc 15.6英寸笔记本','笔记本','华硕',3399.000,_binary '',_binary '\0'),(2,'y400n 14.0英寸笔记本电脑','笔记本','联想',4999.000,_binary '',_binary '\0'),(3,'g150th 15.6英寸游戏本','游戏本','雷神',8499.000,_binary '',_binary '\0'),(4,'x550cc 15.6英寸笔记本','笔记本','华硕',2799.000,_binary '',_binary '\0'),(5,'x240 超极本','超级本','联想',4880.000,_binary '',_binary '\0'),(6,'u330p 13.3英寸超极本','超级本','联想',4299.000,_binary '',_binary '\0'),(7,'svp13226scb 触控超极本','超级本','索尼',7999.000,_binary '',_binary '\0'),(8,'ipad mini 7.9英寸平板电脑','平板电脑','苹果',1998.000,_binary '',_binary '\0'),(9,'ipad air 9.7英寸平板电脑','平板电脑','苹果',3388.000,_binary '',_binary '\0'),(10,'ipad mini 配备 retina 显示屏','平板电脑','苹果',2788.000,_binary '',_binary '\0'),(11,'ideacentre c340 20英寸一体电脑 ','台式机','联想',3499.000,_binary '',_binary '\0'),(12,'vostro 3800-r1206 台式电脑','台式机','戴尔',2899.000,_binary '',_binary '\0'),(13,'imac me086ch/a 21.5英寸一体电脑','台式机','苹果',9188.000,_binary '',_binary '\0'),(14,'at7-7414lp 台式电脑 linux ）','台式机','宏碁',3699.000,_binary '',_binary '\0'),(15,'z220sff f4f06pa工作站','服务器/工作站','惠普',4288.000,_binary '',_binary '\0'),(16,'poweredge ii服务器','服务器/工作站','戴尔',5388.000,_binary '',_binary '\0'),(17,'mac pro专业级台式电脑','服务器/工作站','苹果',28888.000,_binary '',_binary '\0'),(18,'hmz-t3w 头戴显示设备','笔记本配件','索尼',6999.000,_binary '',_binary '\0'),(19,'商务双肩背包','笔记本配件','索尼',99.000,_binary '',_binary '\0'),(20,'x3250 m4机架式服务器','服务器/工作站','ibm',6888.000,_binary '',_binary '\0'),(21,'商务双肩背包','笔记本配件','索尼',99.000,_binary '',_binary '\0');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `age` tinyint(3) unsigned DEFAULT '0',
  `gender` enum('男','女','中性','保密') DEFAULT '保密',
  `skill` varchar(20) DEFAULT '',
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroes`
--

LOCK TABLES `heroes` WRITE;
/*!40000 ALTER TABLE `heroes` DISABLE KEYS */;
INSERT INTO `heroes` VALUES (1,'郭靖',30,'男','降龙十八掌',1),(2,'黄蓉',30,'女','打狗棍法',1),(3,'黄药师',60,'男','弹指神通',1),(4,'欧阳锋',65,'男','蛤蟆功',1),(5,'梅超风',40,'女','九阴白骨爪',1),(6,'乔峰',33,'男','降龙十八掌',2),(7,'段誉',25,'男','六脉神剑',2),(8,'虚竹',27,'男','天山六阳掌',2),(9,'王语嫣',18,'女','神仙姐姐',2),(10,'令狐冲',32,'男','独孤九剑',3),(11,'任盈盈',24,'女','弹琴',3),(12,'岳不群',50,'保密','华山剑法',3),(13,'东方不败',99,'中性','葵花宝典',3),(14,'胡斐',26,'男','胡家刀法',4),(15,'苗若兰',16,'女','黄衣',4),(16,'程灵素',20,'女','医术',4),(17,'袁紫衣',22,'女','六合拳',4);
/*!40000 ALTER TABLE `heroes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-22 22:27:25
