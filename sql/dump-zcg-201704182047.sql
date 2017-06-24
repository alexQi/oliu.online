-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zcg
-- ------------------------------------------------------
-- Server version	5.6.30-1

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('用户管理员','4',1492320748),('超级管理员','3',1492255036);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,NULL,NULL,NULL,1492254863,1492254863),('/admin/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/assignment/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/assignment/assign',2,NULL,NULL,NULL,1492254859,1492254859),('/admin/assignment/index',2,NULL,NULL,NULL,1492254859,1492254859),('/admin/assignment/revoke',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/assignment/view',2,NULL,NULL,NULL,1492254859,1492254859),('/admin/default/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/default/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/remove',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/remove',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/route/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/refresh',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/route/remove',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/create',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/delete',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/index',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/update',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/view',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/activate',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/change-password',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/delete',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/index',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/login',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/logout',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/reset-password',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/signup',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/update',2,NULL,NULL,NULL,1492346612,1492346612),('/admin/user/view',2,NULL,NULL,NULL,1492254861,1492254861),('/category/*',2,NULL,NULL,NULL,1492322252,1492322252),('/category/create',2,NULL,NULL,NULL,1492322252,1492322252),('/category/delete',2,NULL,NULL,NULL,1492322252,1492322252),('/category/index',2,NULL,NULL,NULL,1492322252,1492322252),('/category/update',2,NULL,NULL,NULL,1492322252,1492322252),('/category/view',2,NULL,NULL,NULL,1492322252,1492322252),('/debug/*',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/*',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/db-explain',2,NULL,NULL,NULL,1492254861,1492254861),('/debug/default/download-mail',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/index',2,NULL,NULL,NULL,1492254861,1492254861),('/debug/default/toolbar',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/view',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/*',2,NULL,NULL,NULL,1492254863,1492254863),('/gii/default/*',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/action',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/diff',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/index',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/preview',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/view',2,NULL,NULL,NULL,1492254862,1492254862),('/product/*',2,NULL,NULL,NULL,1492322727,1492322727),('/product/create',2,NULL,NULL,NULL,1492322727,1492322727),('/product/delete',2,NULL,NULL,NULL,1492322727,1492322727),('/product/index',2,NULL,NULL,NULL,1492322727,1492322727),('/product/update',2,NULL,NULL,NULL,1492322727,1492322727),('/product/view',2,NULL,NULL,NULL,1492322727,1492322727),('/site/*',2,NULL,NULL,NULL,1492254863,1492254863),('/site/error',2,NULL,NULL,NULL,1492254863,1492254863),('/site/index',2,NULL,NULL,NULL,1492254863,1492254863),('/site/login',2,NULL,NULL,NULL,1492254863,1492254863),('/site/logout',2,NULL,NULL,NULL,1492254863,1492254863),('后台首页',2,'后台首页',NULL,NULL,1492321379,1492321379),('商品管理',2,'商品管理',NULL,NULL,1492322274,1492322735),('权限管理',2,'权限管理',NULL,NULL,1492256128,1492321276),('用户管理',2,'用户管理',NULL,NULL,1492254906,1492321306),('用户管理员',1,'用户管理员',NULL,NULL,1492320710,1492322305),('超级管理员',1,'拥有所有权限',NULL,NULL,1492254999,1492322324);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('权限管理','/admin/*'),('权限管理','/admin/assignment/*'),('权限管理','/admin/assignment/assign'),('权限管理','/admin/assignment/index'),('权限管理','/admin/assignment/revoke'),('权限管理','/admin/assignment/view'),('权限管理','/admin/default/*'),('权限管理','/admin/default/index'),('用户管理','/admin/default/index'),('权限管理','/admin/menu/*'),('权限管理','/admin/menu/create'),('权限管理','/admin/menu/delete'),('权限管理','/admin/menu/index'),('权限管理','/admin/menu/update'),('权限管理','/admin/menu/view'),('权限管理','/admin/permission/*'),('权限管理','/admin/permission/assign'),('权限管理','/admin/permission/create'),('权限管理','/admin/permission/delete'),('权限管理','/admin/permission/index'),('权限管理','/admin/permission/remove'),('权限管理','/admin/permission/update'),('权限管理','/admin/permission/view'),('权限管理','/admin/role/*'),('权限管理','/admin/role/assign'),('权限管理','/admin/role/create'),('权限管理','/admin/role/delete'),('权限管理','/admin/role/index'),('权限管理','/admin/role/remove'),('权限管理','/admin/role/update'),('权限管理','/admin/role/view'),('权限管理','/admin/route/*'),('权限管理','/admin/route/assign'),('权限管理','/admin/route/create'),('权限管理','/admin/route/index'),('权限管理','/admin/route/refresh'),('权限管理','/admin/route/remove'),('权限管理','/admin/rule/*'),('权限管理','/admin/rule/create'),('权限管理','/admin/rule/delete'),('权限管理','/admin/rule/index'),('权限管理','/admin/rule/update'),('权限管理','/admin/rule/view'),('权限管理','/admin/user/*'),('权限管理','/admin/user/activate'),('权限管理','/admin/user/change-password'),('权限管理','/admin/user/delete'),('权限管理','/admin/user/index'),('权限管理','/admin/user/login'),('权限管理','/admin/user/logout'),('权限管理','/admin/user/request-password-reset'),('权限管理','/admin/user/reset-password'),('权限管理','/admin/user/signup'),('权限管理','/admin/user/view'),('商品管理','/category/*'),('商品管理','/category/create'),('商品管理','/category/delete'),('商品管理','/category/index'),('商品管理','/category/update'),('商品管理','/category/view'),('商品管理','/product/*'),('商品管理','/product/create'),('商品管理','/product/delete'),('商品管理','/product/index'),('商品管理','/product/update'),('商品管理','/product/view'),('后台首页','/site/index'),('超级管理员','后台首页'),('超级管理员','商品管理'),('超级管理员','权限管理'),('用户管理员','用户管理'),('超级管理员','用户管理');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'phone','2011-11-11 11:11:01'),(2,'辣鸡','2011-11-11 11:11:01');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 image   2 video',
  `product_id` int(11) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'系统设置',NULL,'/admin/default/index',999,'{\"icon\": \"fa fa-cogs\", \"visible\": true}'),(2,'用户管理',1,'/admin/user/index',3,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(3,'菜单',4,'/admin/menu/index',0,NULL),(4,'权限控制',1,'/admin/default/index',1,'{\"icon\": \"fa fa-key\", \"visible\": true}'),(5,'路由',4,'/admin/route/index',1,NULL),(6,'权限',4,'/admin/permission/index',2,NULL),(7,'角色',4,'/admin/role/index',3,NULL),(8,'分配',4,'/admin/assignment/index',4,NULL),(9,'首页',NULL,'/site/index',1,'{\"icon\": \"fa fa-home\", \"visible\": true}'),(11,'商品管理',NULL,'/site/index',2,'{\"icon\": \"fa fa-money\", \"visible\": true}'),(12,'分类',11,'/category/index',1,'{\"icon\": \"fa fa-filter\", \"visible\": true}'),(13,'产品',11,'/product/index',2,'{\"icon\": \"fa fa-tablet\", \"visible\": true}');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `content` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `content` text,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Iphone 6s',1,5400,'the best phone in the world',2147483647),(2,'Iphone 5e',2,3000,'cheap iphone',2147483647);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'alex','qYLhupf2yY5TKFfx-BMV37rozjZUhS4Y','$2y$13$fPN7C4LFaPDv0X.o6/e3pOHMIYZ3dhumEZqU.7G3e4E7sS.LYkjle',NULL,'alex.qiubo@qq.com',10,10,1491809952,1492349814),(4,'qiubo','EvdmRgHHz8ndL_XsO_7Ia1XQfUT_t--2','$2y$13$pkrmTvdPt1EPK0DuQrADtO.MFTDCKKuAEICvvRLkFcRoo2KzPpVN.',NULL,'qiubo@qq.com',10,10,1491812922,1492345882),(5,'choubo','UMf3diKM0tpzxkTKpPJJdXhIKJIe8wYQ','$2y$13$67vZlfPaWPsK9wPqG3/cYuHkdAxqf8pxqe2Us/btA33QzuxnfUtHm',NULL,'choubo@qq.com',10,10,1492347851,1492347851),(6,'pozm','JYfAzMtwnyJsU7OZv62LWrNLqEKLuHVd','$2y$13$xmUau.fC6hC3WlhunqGTYOqLjrM3kVhIjb8GCvK2INv.YNgDHOXXi',NULL,'pozm@qq.com',10,10,1492519331,1492519331);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'zcg'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18 20:47:23
