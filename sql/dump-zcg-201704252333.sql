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
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `operation_type` varchar(20) NOT NULL,
  `description` text,
  `created_at` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES (1,'/product/update?id=5','product','update','alex修改了 product_id=5 的 name 为 aaaaasssssss  [ 原始数据: fffffff ]',1493132870,3),(2,'/category/update?id=1','category','update','alex修改了 cate_id=1 的 cate_name 为 麻将机  [ 原始数据: phone ]',1493132986,3),(3,'/category/update?id=2','category','update','alex修改了 cate_id=2 的 cate_name 为 捕鱼机  [ 原始数据: food ]',1493132996,3),(4,'/product/delete?id=7','product','delete','alex删除了 product_id=7 的记录',1493133235,3),(5,'/category/create','category','create','alex创建了 cate_id=5 的记录',1493133620,3),(6,'/category/create','admin_log','create','alex创建了 id=5 的记录',1493133620,3),(7,'/category/create','admin_log','create','alex创建了 id=6 的记录',1493133620,3),(8,'/category/create','admin_log','create','alex创建了 id=7 的记录',1493133620,3),(9,'/category/create','admin_log','create','alex创建了 id=8 的记录',1493133620,3),(10,'/category/create','admin_log','create','alex创建了 id=9 的记录',1493133620,3),(11,'/category/create','admin_log','create','alex创建了 id=10 的记录',1493133620,3),(12,'/category/create','admin_log','create','alex创建了 id=11 的记录',1493133620,3),(13,'/category/create','admin_log','create','alex创建了 id=12 的记录',1493133620,3),(14,'/category/create','admin_log','create','alex创建了 id=13 的记录',1493133621,3),(15,'/category/create','admin_log','create','alex创建了 id=14 的记录',1493133621,3),(16,'/category/create','admin_log','create','alex创建了 id=15 的记录',1493133621,3),(17,'/category/create','admin_log','create','alex创建了 id=16 的记录',1493133621,3),(18,'/category/create','admin_log','create','alex创建了 id=17 的记录',1493133621,3),(19,'/category/create','admin_log','create','alex创建了 id=18 的记录',1493133622,3),(20,'/category/create','admin_log','create','alex创建了 id=19 的记录',1493133622,3),(21,'/category/create','admin_log','create','alex创建了 id=20 的记录',1493133622,3),(22,'/category/create','admin_log','create','alex创建了 id=21 的记录',1493133622,3),(23,'/category/create','admin_log','create','alex创建了 id=22 的记录',1493133622,3),(24,'/category/create','admin_log','create','alex创建了 id=23 的记录',1493133623,3),(25,'/category/create','admin_log','create','alex创建了 id=24 的记录',1493133623,3),(26,'/category/create','admin_log','create','alex创建了 id=25 的记录',1493133623,3),(27,'/category/create','admin_log','create','alex创建了 id=26 的记录',1493133623,3),(28,'/category/create','admin_log','create','alex创建了 id=27 的记录',1493133623,3),(29,'/category/create','admin_log','create','alex创建了 id=28 的记录',1493133623,3),(30,'/category/create','admin_log','create','alex创建了 id=29 的记录',1493133623,3),(31,'/category/create','admin_log','create','alex创建了 id=30 的记录',1493133623,3),(32,'/category/create','admin_log','create','alex创建了 id=31 的记录',1493133623,3),(33,'/category/create','admin_log','create','alex创建了 id=32 的记录',1493133623,3),(34,'/category/create','category','create','alex创建了 cate_id=6 的记录',1493133659,3),(35,'/category/create','admin_log','create','alex创建了 id=34 的记录',1493133659,3),(36,'/category/create','admin_log','create','alex创建了 id=35 的记录',1493133659,3),(37,'/category/create','admin_log','create','alex创建了 id=36 的记录',1493133659,3),(38,'/category/create','admin_log','create','alex创建了 id=37 的记录',1493133659,3),(39,'/category/create','admin_log','create','alex创建了 id=38 的记录',1493133659,3),(40,'/category/create','admin_log','create','alex创建了 id=39 的记录',1493133659,3),(41,'/category/create','admin_log','create','alex创建了 id=40 的记录',1493133659,3),(42,'/category/create','admin_log','create','alex创建了 id=41 的记录',1493133659,3),(43,'/category/create','admin_log','create','alex创建了 id=42 的记录',1493133659,3),(44,'/category/create','admin_log','create','alex创建了 id=43 的记录',1493133659,3),(45,'/category/create','admin_log','create','alex创建了 id=44 的记录',1493133659,3),(46,'/category/create','admin_log','create','alex创建了 id=45 的记录',1493133659,3),(47,'/category/create','admin_log','create','alex创建了 id=46 的记录',1493133659,3),(48,'/category/create','admin_log','create','alex创建了 id=47 的记录',1493133659,3),(49,'/category/create','admin_log','create','alex创建了 id=48 的记录',1493133659,3),(50,'/category/create','admin_log','create','alex创建了 id=49 的记录',1493133659,3),(51,'/category/create','admin_log','create','alex创建了 id=50 的记录',1493133660,3),(52,'/category/create','admin_log','create','alex创建了 id=51 的记录',1493133660,3),(53,'/category/create','admin_log','create','alex创建了 id=52 的记录',1493133660,3),(54,'/category/create','admin_log','create','alex创建了 id=53 的记录',1493133660,3),(55,'/category/create','admin_log','create','alex创建了 id=54 的记录',1493133660,3),(56,'/category/create','admin_log','create','alex创建了 id=55 的记录',1493133660,3),(57,'/category/create','admin_log','create','alex创建了 id=56 的记录',1493133660,3),(58,'/category/create','admin_log','create','alex创建了 id=57 的记录',1493133660,3),(59,'/category/create','admin_log','create','alex创建了 id=58 的记录',1493133660,3),(60,'/category/create','admin_log','create','alex创建了 id=59 的记录',1493133660,3),(61,'/category/create','admin_log','create','alex创建了 id=60 的记录',1493133660,3),(62,'/category/create','admin_log','create','alex创建了 id=61 的记录',1493133660,3),(63,'/category/create','category','create','alex创建了 cate_id=7 的记录',1493133667,3),(64,'/category/create','admin_log','create','alex创建了 id=63 的记录',1493133667,3),(65,'/category/create','admin_log','create','alex创建了 id=64 的记录',1493133667,3),(66,'/category/create','admin_log','create','alex创建了 id=65 的记录',1493133667,3),(67,'/category/create','admin_log','create','alex创建了 id=66 的记录',1493133667,3),(68,'/category/create','admin_log','create','alex创建了 id=67 的记录',1493133667,3),(69,'/category/create','admin_log','create','alex创建了 id=68 的记录',1493133667,3),(70,'/category/create','admin_log','create','alex创建了 id=69 的记录',1493133667,3),(71,'/category/create','admin_log','create','alex创建了 id=70 的记录',1493133667,3),(72,'/category/create','admin_log','create','alex创建了 id=71 的记录',1493133667,3),(73,'/category/create','admin_log','create','alex创建了 id=72 的记录',1493133667,3),(74,'/category/create','admin_log','create','alex创建了 id=73 的记录',1493133667,3),(75,'/category/create','admin_log','create','alex创建了 id=74 的记录',1493133667,3),(76,'/category/create','admin_log','create','alex创建了 id=75 的记录',1493133667,3),(77,'/category/create','admin_log','create','alex创建了 id=76 的记录',1493133667,3),(78,'/category/create','admin_log','create','alex创建了 id=77 的记录',1493133667,3),(79,'/category/create','admin_log','create','alex创建了 id=78 的记录',1493133668,3),(80,'/category/create','admin_log','create','alex创建了 id=79 的记录',1493133668,3),(81,'/category/create','admin_log','create','alex创建了 id=80 的记录',1493133668,3),(82,'/category/create','admin_log','create','alex创建了 id=81 的记录',1493133668,3),(83,'/category/create','admin_log','create','alex创建了 id=82 的记录',1493133668,3),(84,'/category/create','admin_log','create','alex创建了 id=83 的记录',1493133668,3),(85,'/category/create','admin_log','create','alex创建了 id=84 的记录',1493133668,3),(86,'/category/create','admin_log','create','alex创建了 id=85 的记录',1493133668,3),(87,'/category/create','admin_log','create','alex创建了 id=86 的记录',1493133668,3),(88,'/category/create','admin_log','create','alex创建了 id=87 的记录',1493133668,3),(89,'/category/create','admin_log','create','alex创建了 id=88 的记录',1493133668,3),(90,'/category/create','admin_log','create','alex创建了 id=89 的记录',1493133668,3),(91,'/category/create','admin_log','create','alex创建了 id=90 的记录',1493133668,3),(92,'/category/delete?id=7','category','delete','alex删除了 cate_id=7 的记录',1493133681,3),(93,'/category/delete?id=7','admin_log','create','alex创建了 id=92 的记录',1493133681,3),(94,'/category/delete?id=7','admin_log','create','alex创建了 id=93 的记录',1493133681,3),(95,'/category/delete?id=7','admin_log','create','alex创建了 id=94 的记录',1493133681,3),(96,'/category/delete?id=7','admin_log','create','alex创建了 id=95 的记录',1493133681,3),(97,'/category/delete?id=7','admin_log','create','alex创建了 id=96 的记录',1493133681,3),(98,'/category/delete?id=7','admin_log','create','alex创建了 id=97 的记录',1493133681,3),(99,'/category/delete?id=7','admin_log','create','alex创建了 id=98 的记录',1493133682,3),(100,'/category/delete?id=7','admin_log','create','alex创建了 id=99 的记录',1493133682,3),(101,'/category/delete?id=7','admin_log','create','alex创建了 id=100 的记录',1493133682,3),(102,'/category/delete?id=7','admin_log','create','alex创建了 id=101 的记录',1493133682,3),(103,'/category/delete?id=7','admin_log','create','alex创建了 id=102 的记录',1493133682,3),(104,'/category/delete?id=7','admin_log','create','alex创建了 id=103 的记录',1493133682,3),(105,'/category/delete?id=7','admin_log','create','alex创建了 id=104 的记录',1493133682,3),(106,'/category/delete?id=7','admin_log','create','alex创建了 id=105 的记录',1493133682,3),(107,'/category/delete?id=7','admin_log','create','alex创建了 id=106 的记录',1493133682,3),(108,'/category/delete?id=7','admin_log','create','alex创建了 id=107 的记录',1493133682,3),(109,'/category/delete?id=7','admin_log','create','alex创建了 id=108 的记录',1493133682,3),(110,'/category/delete?id=7','admin_log','create','alex创建了 id=109 的记录',1493133682,3),(111,'/category/delete?id=7','admin_log','create','alex创建了 id=110 的记录',1493133682,3),(112,'/category/delete?id=7','admin_log','create','alex创建了 id=111 的记录',1493133682,3),(113,'/category/delete?id=7','admin_log','create','alex创建了 id=112 的记录',1493133682,3),(114,'/category/delete?id=7','admin_log','create','alex创建了 id=113 的记录',1493133682,3),(115,'/category/delete?id=7','admin_log','create','alex创建了 id=114 的记录',1493133682,3),(116,'/category/delete?id=7','admin_log','create','alex创建了 id=115 的记录',1493133682,3),(117,'/category/delete?id=7','admin_log','create','alex创建了 id=116 的记录',1493133682,3),(118,'/category/delete?id=7','admin_log','create','alex创建了 id=117 的记录',1493133682,3),(119,'/category/delete?id=7','admin_log','create','alex创建了 id=118 的记录',1493133682,3),(120,'/category/delete?id=7','admin_log','create','alex创建了 id=119 的记录',1493133682,3),(121,'/category/delete?id=6','category','delete','alex删除了 cate_id=6 的记录',1493133754,3),(122,'/category/delete?id=6','admin_log','create','alex创建了 id=121 的记录',1493133754,3),(123,'/category/delete?id=6','admin_log','create','alex创建了 id=122 的记录',1493133754,3),(124,'/category/delete?id=6','admin_log','create','alex创建了 id=123 的记录',1493133754,3),(125,'/category/delete?id=6','admin_log','create','alex创建了 id=124 的记录',1493133754,3),(126,'/category/delete?id=6','admin_log','create','alex创建了 id=125 的记录',1493133754,3),(127,'/category/delete?id=6','admin_log','create','alex创建了 id=126 的记录',1493133754,3),(128,'/category/delete?id=6','admin_log','create','alex创建了 id=127 的记录',1493133754,3),(129,'/category/delete?id=6','admin_log','create','alex创建了 id=128 的记录',1493133754,3),(130,'/category/delete?id=6','admin_log','create','alex创建了 id=129 的记录',1493133754,3),(131,'/category/delete?id=6','admin_log','create','alex创建了 id=130 的记录',1493133754,3),(132,'/category/delete?id=6','admin_log','create','alex创建了 id=131 的记录',1493133754,3),(133,'/category/delete?id=6','admin_log','create','alex创建了 id=132 的记录',1493133754,3),(134,'/category/delete?id=6','admin_log','create','alex创建了 id=133 的记录',1493133754,3),(135,'/category/delete?id=6','admin_log','create','alex创建了 id=134 的记录',1493133754,3),(136,'/category/delete?id=6','admin_log','create','alex创建了 id=135 的记录',1493133754,3),(137,'/category/delete?id=6','admin_log','create','alex创建了 id=136 的记录',1493133754,3),(138,'/category/delete?id=6','admin_log','create','alex创建了 id=137 的记录',1493133754,3),(139,'/category/delete?id=6','admin_log','create','alex创建了 id=138 的记录',1493133755,3),(140,'/category/delete?id=6','admin_log','create','alex创建了 id=139 的记录',1493133755,3),(141,'/category/delete?id=6','admin_log','create','alex创建了 id=140 的记录',1493133755,3),(142,'/category/delete?id=6','admin_log','create','alex创建了 id=141 的记录',1493133755,3),(143,'/category/delete?id=6','admin_log','create','alex创建了 id=142 的记录',1493133755,3),(144,'/category/delete?id=6','admin_log','create','alex创建了 id=143 的记录',1493133755,3),(145,'/category/delete?id=6','admin_log','create','alex创建了 id=144 的记录',1493133755,3),(146,'/category/delete?id=6','admin_log','create','alex创建了 id=145 的记录',1493133755,3),(147,'/category/delete?id=6','admin_log','create','alex创建了 id=146 的记录',1493133755,3),(148,'/category/delete?id=6','admin_log','create','alex创建了 id=147 的记录',1493133755,3),(149,'/category/delete?id=6','admin_log','create','alex创建了 id=148 的记录',1493133755,3),(150,'/category/delete?id=5','category','delete','alex删除了 cate_id=5 的记录',1493133798,3),(151,'/category/delete?id=3','category','delete','alex删除了 cate_id=3 的记录',1493133874,3),(152,'/category/create','category','create','alex创建了 cate_id=11 的记录',1493134051,3),(153,'/category/create','admin_log','create','alex创建了 id=152 的记录',1493134051,3),(154,'/category/create','admin_log','create','alex创建了 id=153 的记录',1493134051,3),(155,'/category/create','admin_log','create','alex创建了 id=154 的记录',1493134051,3),(156,'/category/create','admin_log','create','alex创建了 id=155 的记录',1493134051,3),(157,'/category/create','admin_log','create','alex创建了 id=156 的记录',1493134051,3),(158,'/category/create','admin_log','create','alex创建了 id=157 的记录',1493134051,3),(159,'/category/create','admin_log','create','alex创建了 id=158 的记录',1493134051,3),(160,'/category/create','admin_log','create','alex创建了 id=159 的记录',1493134051,3),(161,'/category/create','admin_log','create','alex创建了 id=160 的记录',1493134051,3),(162,'/category/create','admin_log','create','alex创建了 id=161 的记录',1493134051,3),(163,'/category/create','admin_log','create','alex创建了 id=162 的记录',1493134051,3),(164,'/category/create','admin_log','create','alex创建了 id=163 的记录',1493134051,3),(165,'/category/create','admin_log','create','alex创建了 id=164 的记录',1493134051,3),(166,'/category/create','admin_log','create','alex创建了 id=165 的记录',1493134051,3),(167,'/category/create','admin_log','create','alex创建了 id=166 的记录',1493134051,3),(168,'/category/create','admin_log','create','alex创建了 id=167 的记录',1493134051,3),(169,'/category/create','admin_log','create','alex创建了 id=168 的记录',1493134051,3),(170,'/category/create','admin_log','create','alex创建了 id=169 的记录',1493134051,3),(171,'/category/create','admin_log','create','alex创建了 id=170 的记录',1493134051,3),(172,'/category/create','admin_log','create','alex创建了 id=171 的记录',1493134051,3),(173,'/category/create','admin_log','create','alex创建了 id=172 的记录',1493134052,3),(174,'/category/create','admin_log','create','alex创建了 id=173 的记录',1493134052,3),(175,'/category/create','admin_log','create','alex创建了 id=174 的记录',1493134052,3),(176,'/category/create','admin_log','create','alex创建了 id=175 的记录',1493134052,3),(177,'/category/create','admin_log','create','alex创建了 id=176 的记录',1493134052,3),(178,'/category/create','admin_log','create','alex创建了 id=177 的记录',1493134052,3),(179,'/category/create','admin_log','create','alex创建了 id=178 的记录',1493134052,3),(180,'/category/create','admin_log','create','alex创建了 id=179 的记录',1493134052,3),(181,'/category/create','category','create','alex创建了 cate_id=12 的记录',1493134095,3),(182,'/category/create','admin_log','create','alex创建了 id=181 的记录',1493134095,3),(183,'/category/create','admin_log','create','alex创建了 id=182 的记录',1493134095,3),(184,'/category/create','admin_log','create','alex创建了 id=183 的记录',1493134095,3),(185,'/category/create','admin_log','create','alex创建了 id=184 的记录',1493134095,3),(186,'/category/create','admin_log','create','alex创建了 id=185 的记录',1493134095,3),(187,'/category/create','admin_log','create','alex创建了 id=186 的记录',1493134095,3),(188,'/category/create','admin_log','create','alex创建了 id=187 的记录',1493134095,3),(189,'/category/create','admin_log','create','alex创建了 id=188 的记录',1493134095,3),(190,'/category/create','admin_log','create','alex创建了 id=189 的记录',1493134095,3),(191,'/category/create','admin_log','create','alex创建了 id=190 的记录',1493134095,3),(192,'/category/create','admin_log','create','alex创建了 id=191 的记录',1493134095,3),(193,'/category/create','admin_log','create','alex创建了 id=192 的记录',1493134096,3),(194,'/category/create','admin_log','create','alex创建了 id=193 的记录',1493134096,3),(195,'/category/create','admin_log','create','alex创建了 id=194 的记录',1493134096,3),(196,'/category/create','admin_log','create','alex创建了 id=195 的记录',1493134096,3),(197,'/category/create','admin_log','create','alex创建了 id=196 的记录',1493134096,3),(198,'/category/create','admin_log','create','alex创建了 id=197 的记录',1493134096,3),(199,'/category/create','admin_log','create','alex创建了 id=198 的记录',1493134096,3),(200,'/category/create','admin_log','create','alex创建了 id=199 的记录',1493134096,3),(201,'/category/create','admin_log','create','alex创建了 id=200 的记录',1493134096,3),(202,'/category/create','admin_log','create','alex创建了 id=201 的记录',1493134096,3),(203,'/category/create','admin_log','create','alex创建了 id=202 的记录',1493134096,3),(204,'/category/create','admin_log','create','alex创建了 id=203 的记录',1493134096,3),(205,'/category/create','admin_log','create','alex创建了 id=204 的记录',1493134096,3),(206,'/category/create','admin_log','create','alex创建了 id=205 的记录',1493134096,3),(207,'/category/create','admin_log','create','alex创建了 id=206 的记录',1493134096,3),(208,'/category/create','admin_log','create','alex创建了 id=207 的记录',1493134096,3),(209,'/category/create','admin_log','create','alex创建了 id=208 的记录',1493134096,3),(210,'/category/delete?id=12','category','delete','alex删除了 cate_id=12 的记录',1493134137,3),(211,'/category/delete?id=12','admin_log','create','alex创建了 id=210 的记录',1493134137,3),(212,'/category/delete?id=12','admin_log','create','alex创建了 id=211 的记录',1493134137,3),(213,'/category/delete?id=12','admin_log','create','alex创建了 id=212 的记录',1493134137,3),(214,'/category/delete?id=12','admin_log','create','alex创建了 id=213 的记录',1493134137,3),(215,'/category/delete?id=12','admin_log','create','alex创建了 id=214 的记录',1493134137,3),(216,'/category/delete?id=12','admin_log','create','alex创建了 id=215 的记录',1493134137,3),(217,'/category/delete?id=12','admin_log','create','alex创建了 id=216 的记录',1493134137,3),(218,'/category/delete?id=12','admin_log','create','alex创建了 id=217 的记录',1493134137,3),(219,'/category/delete?id=12','admin_log','create','alex创建了 id=218 的记录',1493134137,3),(220,'/category/delete?id=12','admin_log','create','alex创建了 id=219 的记录',1493134137,3),(221,'/category/delete?id=12','admin_log','create','alex创建了 id=220 的记录',1493134137,3),(222,'/category/delete?id=12','admin_log','create','alex创建了 id=221 的记录',1493134137,3),(223,'/category/delete?id=12','admin_log','create','alex创建了 id=222 的记录',1493134137,3),(224,'/category/delete?id=12','admin_log','create','alex创建了 id=223 的记录',1493134137,3),(225,'/category/delete?id=12','admin_log','create','alex创建了 id=224 的记录',1493134137,3),(226,'/category/delete?id=12','admin_log','create','alex创建了 id=225 的记录',1493134137,3),(227,'/category/delete?id=12','admin_log','create','alex创建了 id=226 的记录',1493134137,3),(228,'/category/delete?id=12','admin_log','create','alex创建了 id=227 的记录',1493134138,3),(229,'/category/delete?id=12','admin_log','create','alex创建了 id=228 的记录',1493134138,3),(230,'/category/delete?id=12','admin_log','create','alex创建了 id=229 的记录',1493134138,3),(231,'/category/delete?id=12','admin_log','create','alex创建了 id=230 的记录',1493134139,3),(232,'/category/delete?id=12','admin_log','create','alex创建了 id=231 的记录',1493134139,3),(233,'/category/delete?id=12','admin_log','create','alex创建了 id=232 的记录',1493134139,3),(234,'/category/delete?id=12','admin_log','create','alex创建了 id=233 的记录',1493134139,3),(235,'/category/delete?id=12','admin_log','create','alex创建了 id=234 的记录',1493134139,3),(236,'/category/delete?id=12','admin_log','create','alex创建了 id=235 的记录',1493134139,3),(237,'/category/delete?id=12','admin_log','create','alex创建了 id=236 的记录',1493134139,3),(238,'/category/delete?id=12','admin_log','create','alex创建了 id=237 的记录',1493134139,3),(239,'/category/update?id=1','category','update','alex修改了 cate_id=1 的 create_time 为 2011-11-11 11:11:010  [ 原始数据: 2011-11-11 11:11:01 ]',1493134147,3),(240,'/category/update?id=1','admin_log','create','alex创建了 id=239 的记录',1493134147,3),(241,'/category/update?id=1','admin_log','create','alex创建了 id=240 的记录',1493134147,3),(242,'/category/update?id=1','admin_log','create','alex创建了 id=241 的记录',1493134147,3),(243,'/category/update?id=1','admin_log','create','alex创建了 id=242 的记录',1493134148,3),(244,'/category/update?id=1','admin_log','create','alex创建了 id=243 的记录',1493134148,3),(245,'/category/update?id=1','admin_log','create','alex创建了 id=244 的记录',1493134148,3),(246,'/category/update?id=1','admin_log','create','alex创建了 id=245 的记录',1493134148,3),(247,'/category/update?id=1','admin_log','create','alex创建了 id=246 的记录',1493134148,3),(248,'/category/update?id=1','admin_log','create','alex创建了 id=247 的记录',1493134148,3),(249,'/category/update?id=1','admin_log','create','alex创建了 id=248 的记录',1493134148,3),(250,'/category/update?id=1','admin_log','create','alex创建了 id=249 的记录',1493134148,3),(251,'/category/update?id=1','admin_log','create','alex创建了 id=250 的记录',1493134148,3),(252,'/category/update?id=1','admin_log','create','alex创建了 id=251 的记录',1493134148,3),(253,'/category/update?id=1','admin_log','create','alex创建了 id=252 的记录',1493134148,3),(254,'/category/update?id=1','admin_log','create','alex创建了 id=253 的记录',1493134148,3),(255,'/category/update?id=1','admin_log','create','alex创建了 id=254 的记录',1493134148,3),(256,'/category/update?id=1','admin_log','create','alex创建了 id=255 的记录',1493134148,3),(257,'/category/update?id=1','admin_log','create','alex创建了 id=256 的记录',1493134148,3),(258,'/category/update?id=1','admin_log','create','alex创建了 id=257 的记录',1493134148,3),(259,'/category/update?id=1','admin_log','create','alex创建了 id=258 的记录',1493134148,3),(260,'/category/update?id=1','admin_log','create','alex创建了 id=259 的记录',1493134148,3),(261,'/category/update?id=1','admin_log','create','alex创建了 id=260 的记录',1493134148,3),(262,'/category/update?id=1','admin_log','create','alex创建了 id=261 的记录',1493134148,3),(263,'/category/update?id=1','admin_log','create','alex创建了 id=262 的记录',1493134148,3),(264,'/category/update?id=1','admin_log','create','alex创建了 id=263 的记录',1493134148,3),(265,'/category/update?id=1','admin_log','create','alex创建了 id=264 的记录',1493134149,3),(266,'/category/update?id=1','admin_log','create','alex创建了 id=265 的记录',1493134149,3),(267,'/category/update?id=1','admin_log','create','alex创建了 id=266 的记录',1493134149,3),(268,'/category/update?id=1','category','update','alex修改了 cate_id=1 的 create_time 为 2011-11-11 11:11:101  [ 原始数据: 2011-11-11 11:11:10 ]',1493134296,3),(269,'/category/update?id=1','admin_log','create','alex创建了 id=268 的记录',1493134296,3),(270,'/category/update?id=1','admin_log','create','alex创建了 id=269 的记录',1493134296,3),(271,'/category/update?id=1','admin_log','create','alex创建了 id=270 的记录',1493134296,3),(272,'/category/update?id=1','admin_log','create','alex创建了 id=271 的记录',1493134296,3),(273,'/category/update?id=1','admin_log','create','alex创建了 id=272 的记录',1493134296,3),(274,'/category/update?id=1','admin_log','create','alex创建了 id=273 的记录',1493134296,3),(275,'/category/update?id=1','admin_log','create','alex创建了 id=274 的记录',1493134296,3),(276,'/category/update?id=1','admin_log','create','alex创建了 id=275 的记录',1493134296,3),(277,'/category/update?id=1','admin_log','create','alex创建了 id=276 的记录',1493134296,3),(278,'/category/update?id=1','admin_log','create','alex创建了 id=277 的记录',1493134296,3),(279,'/category/update?id=1','admin_log','create','alex创建了 id=278 的记录',1493134297,3),(280,'/category/update?id=1','admin_log','create','alex创建了 id=279 的记录',1493134297,3),(281,'/category/update?id=1','admin_log','create','alex创建了 id=280 的记录',1493134297,3),(282,'/category/update?id=1','admin_log','create','alex创建了 id=281 的记录',1493134297,3),(283,'/category/update?id=1','admin_log','create','alex创建了 id=282 的记录',1493134297,3),(284,'/category/update?id=1','admin_log','create','alex创建了 id=283 的记录',1493134297,3),(285,'/category/update?id=1','admin_log','create','alex创建了 id=284 的记录',1493134297,3),(286,'/category/update?id=1','admin_log','create','alex创建了 id=285 的记录',1493134297,3),(287,'/category/update?id=1','admin_log','create','alex创建了 id=286 的记录',1493134297,3),(288,'/category/update?id=1','admin_log','create','alex创建了 id=287 的记录',1493134297,3),(289,'/category/update?id=1','admin_log','create','alex创建了 id=288 的记录',1493134297,3),(290,'/category/update?id=1','admin_log','create','alex创建了 id=289 的记录',1493134297,3),(291,'/category/update?id=1','admin_log','create','alex创建了 id=290 的记录',1493134297,3),(292,'/category/update?id=1','admin_log','create','alex创建了 id=291 的记录',1493134297,3),(293,'/category/update?id=1','admin_log','create','alex创建了 id=292 的记录',1493134297,3),(294,'/category/update?id=1','admin_log','create','alex创建了 id=293 的记录',1493134297,3),(295,'/category/update?id=1','admin_log','create','alex创建了 id=294 的记录',1493134297,3),(296,'/category/update?id=1','admin_log','create','alex创建了 id=295 的记录',1493134297,3),(297,'/category/update?id=1','category','update','alex修改了 cate_id=1 的 create_time 为 0000-00-00 00:00:01  [ 原始数据: 0000-00-00 00:00:00 ]',1493134348,3),(298,'/category/update?id=1','admin_log','create','alex创建了 id=297 的记录',1493134348,3),(299,'/category/update?id=1','admin_log','create','alex创建了 id=298 的记录',1493134348,3),(300,'/category/update?id=1','admin_log','create','alex创建了 id=299 的记录',1493134348,3),(301,'/category/update?id=1','admin_log','create','alex创建了 id=300 的记录',1493134348,3),(302,'/category/update?id=1','admin_log','create','alex创建了 id=301 的记录',1493134348,3),(303,'/category/update?id=1','admin_log','create','alex创建了 id=302 的记录',1493134348,3),(304,'/category/update?id=1','admin_log','create','alex创建了 id=303 的记录',1493134348,3),(305,'/category/update?id=1','admin_log','create','alex创建了 id=304 的记录',1493134348,3),(306,'/category/update?id=1','admin_log','create','alex创建了 id=305 的记录',1493134348,3),(307,'/category/update?id=1','admin_log','create','alex创建了 id=306 的记录',1493134348,3),(308,'/category/update?id=1','admin_log','create','alex创建了 id=307 的记录',1493134348,3),(309,'/category/update?id=1','admin_log','create','alex创建了 id=308 的记录',1493134348,3),(310,'/category/update?id=1','admin_log','create','alex创建了 id=309 的记录',1493134348,3),(311,'/category/update?id=1','admin_log','create','alex创建了 id=310 的记录',1493134349,3),(312,'/category/update?id=1','admin_log','create','alex创建了 id=311 的记录',1493134349,3),(313,'/category/update?id=1','admin_log','create','alex创建了 id=312 的记录',1493134349,3),(314,'/category/update?id=1','admin_log','create','alex创建了 id=313 的记录',1493134349,3),(315,'/category/update?id=1','admin_log','create','alex创建了 id=314 的记录',1493134349,3),(316,'/category/update?id=1','admin_log','create','alex创建了 id=315 的记录',1493134349,3),(317,'/category/update?id=1','admin_log','create','alex创建了 id=316 的记录',1493134349,3),(318,'/category/update?id=1','admin_log','create','alex创建了 id=317 的记录',1493134349,3),(319,'/category/update?id=1','admin_log','create','alex创建了 id=318 的记录',1493134349,3),(320,'/category/update?id=1','admin_log','create','alex创建了 id=319 的记录',1493134349,3),(321,'/category/update?id=1','admin_log','create','alex创建了 id=320 的记录',1493134349,3),(322,'/category/update?id=1','admin_log','create','alex创建了 id=321 的记录',1493134349,3),(323,'/category/update?id=1','admin_log','create','alex创建了 id=322 的记录',1493134349,3),(324,'/category/update?id=1','admin_log','create','alex创建了 id=323 的记录',1493134349,3),(325,'/category/update?id=1','admin_log','create','alex创建了 id=324 的记录',1493134349,3);
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `auth_assignment` VALUES ('用户管理员','4',1492320748),('超级管理员','3',1492255036),('超级管理员','6',1492950138);
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
INSERT INTO `auth_item` VALUES ('/*',2,NULL,NULL,NULL,1492254863,1492254863),('/admin-log/*',2,NULL,NULL,NULL,1493131341,1493131341),('/admin-log/create',2,NULL,NULL,NULL,1493131341,1493131341),('/admin-log/delete',2,NULL,NULL,NULL,1493131341,1493131341),('/admin-log/index',2,NULL,NULL,NULL,1493131341,1493131341),('/admin-log/update',2,NULL,NULL,NULL,1493131341,1493131341),('/admin-log/view',2,NULL,NULL,NULL,1493131341,1493131341),('/admin/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/default/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/default/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/menu/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/remove',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/permission/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/*',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/delete',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/remove',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/update',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/role/view',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/route/assign',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/create',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/index',2,NULL,NULL,NULL,1492254860,1492254860),('/admin/route/refresh',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/route/remove',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/create',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/delete',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/index',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/update',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/rule/view',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/*',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/activate',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/assign',2,NULL,NULL,NULL,1492949714,1492949714),('/admin/user/change-password',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/delete',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/index',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/login',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/logout',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/request-password-reset',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/reset-password',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/revoke',2,NULL,NULL,NULL,1492949714,1492949714),('/admin/user/signup',2,NULL,NULL,NULL,1492254861,1492254861),('/admin/user/update',2,NULL,NULL,NULL,1492346612,1492346612),('/admin/user/view',2,NULL,NULL,NULL,1492254861,1492254861),('/category/*',2,NULL,NULL,NULL,1492322252,1492322252),('/category/create',2,NULL,NULL,NULL,1492322252,1492322252),('/category/delete',2,NULL,NULL,NULL,1492322252,1492322252),('/category/index',2,NULL,NULL,NULL,1492322252,1492322252),('/category/update',2,NULL,NULL,NULL,1492322252,1492322252),('/category/view',2,NULL,NULL,NULL,1492322252,1492322252),('/debug/*',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/*',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/db-explain',2,NULL,NULL,NULL,1492254861,1492254861),('/debug/default/download-mail',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/index',2,NULL,NULL,NULL,1492254861,1492254861),('/debug/default/toolbar',2,NULL,NULL,NULL,1492254862,1492254862),('/debug/default/view',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/*',2,NULL,NULL,NULL,1492254863,1492254863),('/gii/default/*',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/action',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/diff',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/index',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/preview',2,NULL,NULL,NULL,1492254862,1492254862),('/gii/default/view',2,NULL,NULL,NULL,1492254862,1492254862),('/product/*',2,NULL,NULL,NULL,1492322727,1492322727),('/product/ajax-upload',2,NULL,NULL,NULL,1492949714,1492949714),('/product/create',2,NULL,NULL,NULL,1492322727,1492322727),('/product/delete',2,NULL,NULL,NULL,1492322727,1492322727),('/product/index',2,NULL,NULL,NULL,1492322727,1492322727),('/product/update',2,NULL,NULL,NULL,1492322727,1492322727),('/product/view',2,NULL,NULL,NULL,1492322727,1492322727),('/site/*',2,NULL,NULL,NULL,1492254863,1492254863),('/site/error',2,NULL,NULL,NULL,1492254863,1492254863),('/site/flush-cache',2,NULL,NULL,NULL,1492910526,1492910526),('/site/index',2,NULL,NULL,NULL,1492254863,1492254863),('/site/login',2,NULL,NULL,NULL,1492254863,1492254863),('/site/logout',2,NULL,NULL,NULL,1492254863,1492254863),('后台首页',2,'后台首页',NULL,NULL,1492321379,1492954778),('商品管理',2,'商品管理',NULL,NULL,1492322274,1492954793),('操作日志',2,'操作日志',NULL,NULL,1492954823,1493131421),('普通用户',1,'普通用户',NULL,NULL,1492910565,1492910701),('权限管理',2,'权限管理',NULL,NULL,1492256128,1492954848),('用户管理',2,'用户管理',NULL,NULL,1492254906,1492321306),('用户管理员',1,'用户管理员',NULL,NULL,1492320710,1492322305),('超级管理员',1,'拥有所有权限',NULL,NULL,1492254999,1493131528);
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
INSERT INTO `auth_item_child` VALUES ('操作日志','/admin-log/*'),('操作日志','/admin-log/create'),('操作日志','/admin-log/delete'),('操作日志','/admin-log/index'),('操作日志','/admin-log/update'),('操作日志','/admin-log/view'),('权限管理','/admin/*'),('权限管理','/admin/default/*'),('权限管理','/admin/default/index'),('用户管理','/admin/default/index'),('权限管理','/admin/menu/*'),('权限管理','/admin/menu/create'),('权限管理','/admin/menu/delete'),('权限管理','/admin/menu/index'),('权限管理','/admin/menu/update'),('权限管理','/admin/menu/view'),('权限管理','/admin/permission/*'),('权限管理','/admin/permission/assign'),('权限管理','/admin/permission/create'),('权限管理','/admin/permission/delete'),('权限管理','/admin/permission/index'),('权限管理','/admin/permission/remove'),('权限管理','/admin/permission/update'),('权限管理','/admin/permission/view'),('权限管理','/admin/role/*'),('权限管理','/admin/role/assign'),('权限管理','/admin/role/create'),('权限管理','/admin/role/delete'),('权限管理','/admin/role/index'),('权限管理','/admin/role/remove'),('权限管理','/admin/role/update'),('权限管理','/admin/role/view'),('权限管理','/admin/route/*'),('权限管理','/admin/route/assign'),('权限管理','/admin/route/create'),('权限管理','/admin/route/index'),('权限管理','/admin/route/refresh'),('权限管理','/admin/route/remove'),('权限管理','/admin/rule/*'),('权限管理','/admin/rule/create'),('权限管理','/admin/rule/delete'),('权限管理','/admin/rule/index'),('权限管理','/admin/rule/update'),('权限管理','/admin/rule/view'),('权限管理','/admin/user/*'),('权限管理','/admin/user/activate'),('权限管理','/admin/user/assign'),('权限管理','/admin/user/change-password'),('权限管理','/admin/user/delete'),('权限管理','/admin/user/index'),('权限管理','/admin/user/login'),('权限管理','/admin/user/logout'),('权限管理','/admin/user/request-password-reset'),('权限管理','/admin/user/reset-password'),('权限管理','/admin/user/revoke'),('权限管理','/admin/user/signup'),('权限管理','/admin/user/update'),('权限管理','/admin/user/view'),('商品管理','/category/*'),('商品管理','/category/create'),('商品管理','/category/delete'),('商品管理','/category/index'),('商品管理','/category/update'),('商品管理','/category/view'),('商品管理','/product/*'),('商品管理','/product/create'),('商品管理','/product/delete'),('商品管理','/product/index'),('商品管理','/product/update'),('商品管理','/product/view'),('后台首页','/site/flush-cache'),('后台首页','/site/index'),('普通用户','后台首页'),('超级管理员','后台首页'),('超级管理员','商品管理'),('超级管理员','操作日志'),('超级管理员','权限管理'),('用户管理员','用户管理'),('超级管理员','用户管理');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'麻将机','0000-00-00 00:00:01'),(2,'捕鱼机','2011-11-11 11:11:01'),(8,'娃娃机','2011-11-11 11:11:01'),(9,'娃娃机','2011-11-11 11:11:01'),(10,'娃娃机','2011-11-11 11:11:01'),(11,'娃娃机','2011-11-11 11:11:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,1,12,'2017042123564084310695271.jpg',1492819173);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'系统设置',NULL,'/admin/default/index',999,'{\"icon\": \"fa fa-cogs\", \"visible\": true}'),(2,'用户管理',1,'/admin/user/index',3,'{\"icon\": \"fa fa-user\", \"visible\": true}'),(3,'菜单',4,'/admin/menu/index',0,NULL),(4,'权限控制',1,'/admin/default/index',1,'{\"icon\": \"fa fa-key\", \"visible\": true}'),(5,'路由',4,'/admin/route/index',1,NULL),(6,'权限',4,'/admin/permission/index',2,NULL),(7,'角色',4,'/admin/role/index',3,NULL),(9,'首页',NULL,'/site/index',1,'{\"icon\": \"fa fa-home\", \"visible\": true}'),(11,'商品管理',NULL,'/site/index',2,'{\"icon\": \"fa fa-money\", \"visible\": true}'),(12,'分类',11,'/category/index',1,'{\"icon\": \"fa fa-filter\", \"visible\": true}'),(13,'产品',11,'/product/index',2,'{\"icon\": \"fa fa-tablet\", \"visible\": true}'),(14,'操作日志',1,'/admin-log/index',4,'{\"icon\": \"fa fa-laptop\", \"visible\": true}');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'awefawef23',1,5400,'fawfewafe',1492819001),(8,'awefawef',1,5400,'fawfewafe',1492819070),(9,'awefawef',1,5400,'fawfewafe',1492819107),(10,'awefawef',1,5400,'fawfewafe',1492819136),(11,'awefawef',1,5400,'fawfewafe',1492819148),(12,'awefawef',1,5400,'fawfewafe',1492819173);
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

-- Dump completed on 2017-04-25 23:33:22
