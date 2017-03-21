-- MySQL dump 10.13  Distrib 5.6.35, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_project
-- ------------------------------------------------------
-- Server version	5.6.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 广告',6,'add_ad'),(17,'Can change 广告',6,'change_ad'),(18,'Can delete 广告',6,'delete_ad'),(19,'Can add 友情链接',7,'add_links'),(20,'Can change 友情链接',7,'change_links'),(21,'Can delete 友情链接',7,'delete_links'),(22,'Can add 标签',8,'add_tag'),(23,'Can change 标签',8,'change_tag'),(24,'Can delete 标签',8,'delete_tag'),(25,'Can add 评论',9,'add_comment'),(26,'Can change 评论',9,'change_comment'),(27,'Can delete 评论',9,'delete_comment'),(28,'Can add 分类',10,'add_category'),(29,'Can change 分类',10,'change_category'),(30,'Can delete 分类',10,'delete_category'),(31,'Can add 文章',11,'add_article'),(32,'Can change 文章',11,'change_article'),(33,'Can delete 文章',11,'delete_article'),(34,'Can add 用户',12,'add_user'),(35,'Can change 用户',12,'change_user'),(36,'Can delete 用户',12,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_ad`
--

DROP TABLE IF EXISTS `blog_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `callback_url` varchar(200) DEFAULT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_ad`
--

LOCK TABLES `blog_ad` WRITE;
/*!40000 ALTER TABLE `blog_ad` DISABLE KEYS */;
INSERT INTO `blog_ad` VALUES (1,'标题1','描述1','ad/2017/03/a1.jpg','http://www.baidu.com','2017-03-15 07:26:23.694394',1),(2,'标题2','描述2','ad/2017/03/a2.jpg','','2017-03-15 07:26:50.639180',2),(3,'标题3','描述3','ad/2017/03/a3.jpg','','2017-03-15 07:27:18.570718',3),(4,'标题4','描述4','ad/2017/03/a4.jpg','','2017-03-15 07:27:48.074371',4);
/*!40000 ALTER TABLE `blog_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `click_count` int(10) unsigned NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `category_id` int(11),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`),
  KEY `blog_article_user_id_5beb0cc1_fk_blog_user_id` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'Test','test、、、','╮(╯▽╰)╭测试',20,1,'2017-03-13 18:20:00.000000',1,1),(2,'富文本测试','富文本','<h1 style=\"text-align:center;\">\r\n	<strong>富文本测试</strong> \r\n</h1>\r\n<blockquote>\r\n	<p>\r\n		<b>下面是一段代码：</b> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<b> </b> \r\n</p>\r\n<pre class=\"prettyprint lang-py\"><b>def index(request):\r\n    return render(request, \'index.html\', locals())</b></pre>\r\n<strong><span style=\"color:#E53333;\">网络图片<img src=\"http://localhost:8000/static/js/kindeditor-4.1.10/plugins/emoticons/images/21.gif\" border=\"0\" alt=\"\" /></span></strong> \r\n<p>\r\n	<img src=\"http://img06.tooopen.com/images/20170306/tooopen_sy_200676715868.jpg\" width=\"600\" height=\"900\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	图片上传\r\n</p>\r\n<p>\r\n	<img src=\"/uploads/kindeditor/2017/3/90c82554-08c7-11e7-a9e3-dc0ea1f43e82.jpg\" alt=\"\" width=\"500\" height=\"314\" title=\"\" align=\"\" /> \r\n</p>',10,0,'2017-03-14 22:17:00.000000',1,1),(3,'1','1','1',0,0,'2017-01-16 16:01:00.000000',1,1),(4,'2','2','2',0,0,'2016-03-16 20:54:00.000000',1,1),(5,'图片','地图','<img src=\"http://api.map.baidu.com/staticimage?center=121.473704%2C31.230393&zoom=11&width=558&height=360&markers=121.473704%2C31.230393&markerStyles=l%2CA\" alt=\"\" />',8,1,'2017-03-18 03:42:00.000000',6,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tag`
--

DROP TABLE IF EXISTS `blog_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tag_article_id_818e752b_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tag_article_id_8db2395e_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tag_tag_id_f2afe66b_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tag`
--

LOCK TABLES `blog_article_tag` WRITE;
/*!40000 ALTER TABLE `blog_article_tag` DISABLE KEYS */;
INSERT INTO `blog_article_tag` VALUES (1,1,1),(2,2,1),(3,2,2),(4,3,1),(5,4,1),(7,5,3);
/*!40000 ALTER TABLE `blog_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'test',999),(3,'关于我',1),(4,'文章',2),(5,'心情',3),(6,'相册',4),(7,'留言',5);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `pid_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(50),
  `url` varchar(100),
  `username` varchar(50),
  PRIMARY KEY (`id`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_id` (`article_id`),
  KEY `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` (`pid_id`),
  KEY `blog_comment_user_id_59a54155_fk_blog_user_id` (`user_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_comment_pid_id_2a2b4cc4_fk_blog_comment_id` FOREIGN KEY (`pid_id`) REFERENCES `blog_comment` (`id`),
  CONSTRAINT `blog_comment_user_id_59a54155_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'评论测试','2017-03-15 06:53:15.936909',2,NULL,1,'','','mo'),(2,'子评论测试','2017-03-15 06:54:05.501543',2,1,1,'','','mo'),(3,'1','2017-03-18 00:55:26.937334',3,NULL,1,'','',''),(4,'2','2017-03-18 00:55:52.090797',3,NULL,1,'','',''),(5,'123','2017-03-18 00:56:34.704339',1,NULL,1,'','',''),(6,'123','2017-03-18 00:56:50.379668',1,NULL,1,'','',''),(7,'123','2017-03-18 00:57:15.252944',1,NULL,1,'','',''),(8,'5','2017-03-18 03:27:16.281022',4,NULL,NULL,'','','5'),(9,'再评论','2017-03-18 20:34:55.837394',2,2,1,'','','mo'),(10,'子评论2','2017-03-18 20:36:35.616019',2,1,1,'','','mo'),(11,'123','2017-03-19 04:05:51.958425',2,NULL,1,'1@1.com','','mo'),(12,'评论测试成功','2017-03-19 04:06:29.405275',2,NULL,1,'a@a.cn','','aaa'),(13,'11111','2017-03-20 03:28:02.392702',5,NULL,2,'1@1.com','http://www.baidu.cn','1'),(14,'22222222222222','2017-03-20 03:31:02.064812',5,NULL,1,'1@1.com','','mo'),(15,'111111111111111','2017-03-20 03:31:42.796108',5,NULL,2,'1@1.com','http://www.baidu.cn','1'),(16,'11111111111111111111','2017-03-20 03:32:03.363890',5,NULL,2,'1@1.com','http://www.baidu.cn','1'),(17,'111111111','2017-03-20 03:33:10.114401',5,NULL,NULL,'1@1.com','https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&ch=12&tn=98012088_2_dg&wd=django%20BAE%E9%83%A8%E7%BD%','111');
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_links`
--

DROP TABLE IF EXISTS `blog_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `callback_url` varchar(200) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_links`
--

LOCK TABLES `blog_links` WRITE;
/*!40000 ALTER TABLE `blog_links` DISABLE KEYS */;
INSERT INTO `blog_links` VALUES (1,'百度','百度一下','http://www.baidu.com','2017-03-18 03:19:18.135802',1),(2,'bilibili','哔哩哔哩 (゜-゜)つロ 干杯~-bilibili','http://www.bilibili.com','2017-03-18 03:21:25.333180',2),(3,'果壳','果壳网','http://www.guokr.com/','2017-03-18 03:22:02.630610',999);
/*!40000 ALTER TABLE `blog_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'test'),(2,'富文本'),(3,'图片');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user`
--

DROP TABLE IF EXISTS `blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `url` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user`
--

LOCK TABLES `blog_user` WRITE;
/*!40000 ALTER TABLE `blog_user` DISABLE KEYS */;
INSERT INTO `blog_user` VALUES (1,'pbkdf2_sha256$30000$kGFBOcAzh3k2$5toqYKTw8WPGYWWgN+x/A3P50EnagIyBcVhWKNrZsl0=','2017-03-20 03:46:57.618932',1,'mo','','','',1,1,'2017-03-14 02:49:22.858441','avatar/default.png',NULL,NULL,NULL),(2,'pbkdf2_sha256$30000$dX9p7KoQZI8n$x2hEfph1dPJS3/u4n51XjKQY8s/iRqTwwz7TtnksE/k=','2017-03-20 03:31:29.426415',0,'1','','','1@1.com',0,1,'2017-03-20 03:27:48.807596','avatar/default.png',NULL,NULL,'http://www.baidu.cn');
/*!40000 ALTER TABLE `blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user_groups`
--

DROP TABLE IF EXISTS `blog_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_user_groups_user_id_9046f296_uniq` (`user_id`,`group_id`),
  KEY `blog_user_groups_group_id_29990e74_fk_auth_group_id` (`group_id`),
  CONSTRAINT `blog_user_groups_group_id_29990e74_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `blog_user_groups_user_id_4e1acb48_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user_groups`
--

LOCK TABLES `blog_user_groups` WRITE;
/*!40000 ALTER TABLE `blog_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_user_user_permissions`
--

DROP TABLE IF EXISTS `blog_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_user_user_permissions_user_id_1d3c1311_uniq` (`user_id`,`permission_id`),
  KEY `blog_user_user_perm_permission_id_95ca6010_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `blog_user_user_perm_permission_id_95ca6010_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `blog_user_user_permissions_user_id_379a1502_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_user_user_permissions`
--

LOCK TABLES `blog_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `blog_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_blog_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_blog_user_id` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-14 18:19:35.675400','1','test',1,'[{\"added\": {}}]',10,1),(2,'2017-03-14 18:20:07.595698','1','test',1,'[{\"added\": {}}]',8,1),(3,'2017-03-14 18:20:12.743064','1','Test',1,'[{\"added\": {}}]',11,1),(4,'2017-03-14 21:08:48.657273','2','富文本测试',1,'[{\"added\": {}}]',11,1),(5,'2017-03-14 21:16:37.247220','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',11,1),(6,'2017-03-14 21:17:18.214526','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',11,1),(7,'2017-03-14 21:17:57.671288','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\", \"category\"]}}]',11,1),(8,'2017-03-14 21:23:03.304755','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',11,1),(9,'2017-03-14 23:05:23.241590','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',11,1),(10,'2017-03-15 04:32:52.263115','2','首页',1,'[{\"added\": {}}]',10,1),(11,'2017-03-15 04:33:17.038947','3','关于我',1,'[{\"added\": {}}]',10,1),(12,'2017-03-15 04:33:35.021154','4','文章',1,'[{\"added\": {}}]',10,1),(13,'2017-03-15 04:33:47.639766','5','心情',1,'[{\"added\": {}}]',10,1),(14,'2017-03-15 04:34:12.385403','6','相册',1,'[{\"added\": {}}]',10,1),(15,'2017-03-15 04:34:29.491445','7','留言',1,'[{\"added\": {}}]',10,1),(16,'2017-03-15 06:42:42.677927','2','富文本',1,'[{\"added\": {}}]',8,1),(17,'2017-03-15 06:42:50.890907','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',11,1),(18,'2017-03-15 06:52:22.214255','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"click_count\"]}}]',11,1),(19,'2017-03-15 06:52:22.280287','1','Test',2,'[{\"changed\": {\"fields\": [\"click_count\"]}}]',11,1),(20,'2017-03-15 06:53:15.937910','1','1',1,'[{\"added\": {}}]',9,1),(21,'2017-03-15 06:54:05.503545','2','2',1,'[{\"added\": {}}]',9,1),(22,'2017-03-15 07:26:23.696397','1','Ad object',1,'[{\"added\": {}}]',6,1),(23,'2017-03-15 07:26:50.641179','2','Ad object',1,'[{\"added\": {}}]',6,1),(24,'2017-03-15 07:27:18.571717','3','Ad object',1,'[{\"added\": {}}]',6,1),(25,'2017-03-15 07:27:48.075373','4','Ad object',1,'[{\"added\": {}}]',6,1),(26,'2017-03-15 07:29:52.750335','1','Ad object',2,'[{\"changed\": {\"fields\": [\"callback_url\"]}}]',6,1),(27,'2017-03-16 16:01:49.121959','3','1',1,'[{\"added\": {}}]',11,1),(28,'2017-03-16 20:55:02.430483','4','2',1,'[{\"added\": {}}]',11,1),(29,'2017-03-16 22:17:53.633787','2','富文本测试',2,'[{\"changed\": {\"fields\": [\"date_publish\"]}}]',11,1),(30,'2017-03-16 22:18:29.574335','1','Test',2,'[{\"changed\": {\"fields\": [\"date_publish\"]}}]',11,1),(31,'2017-03-18 00:55:26.939335','3','3',1,'[{\"added\": {}}]',9,1),(32,'2017-03-18 00:55:52.092799','4','4',1,'[{\"added\": {}}]',9,1),(33,'2017-03-18 00:56:34.705339','5','5',1,'[{\"added\": {}}]',9,1),(34,'2017-03-18 00:56:50.380669','6','6',1,'[{\"added\": {}}]',9,1),(35,'2017-03-18 00:57:15.253944','7','7',1,'[{\"added\": {}}]',9,1),(36,'2017-03-18 03:19:18.137804','1','百度',1,'[{\"added\": {}}]',7,1),(37,'2017-03-18 03:21:25.335182','2','bilibili',1,'[{\"added\": {}}]',7,1),(38,'2017-03-18 03:22:02.631610','3','果壳',1,'[{\"added\": {}}]',7,1),(39,'2017-03-18 03:22:18.733357','2','bilibili',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',7,1),(40,'2017-03-18 03:27:16.287027','8','8',1,'[{\"added\": {}}]',9,1),(41,'2017-03-18 03:41:12.326966','3','图片',1,'[{\"added\": {}}]',8,1),(42,'2017-03-18 03:42:53.874751','5','图片',1,'[{\"added\": {}}]',11,1),(43,'2017-03-18 03:43:28.199469','5','图片',2,'[{\"changed\": {\"fields\": [\"category\"]}}]',11,1),(44,'2017-03-18 04:35:33.224046','5','图片',2,'[]',11,1),(45,'2017-03-18 20:31:41.324118','1','1',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',9,1),(46,'2017-03-18 20:32:01.150869','2','2',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',9,1),(47,'2017-03-18 20:34:55.839395','9','9',1,'[{\"added\": {}}]',9,1),(48,'2017-03-18 20:36:35.618018','10','10',1,'[{\"added\": {}}]',9,1),(49,'2017-03-20 03:47:41.709744','2','首页',3,'',10,1),(50,'2017-03-20 03:48:43.337759','3','关于我',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',10,1),(51,'2017-03-20 03:49:00.334991','4','文章',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',10,1),(52,'2017-03-20 03:49:26.012389','5','心情',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',10,1),(53,'2017-03-20 03:49:42.446360','6','相册',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',10,1),(54,'2017-03-20 03:49:59.753010','7','留言',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(6,'blog','ad'),(11,'blog','article'),(10,'blog','category'),(9,'blog','comment'),(7,'blog','links'),(8,'blog','tag'),(12,'blog','user'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-14 02:46:17.602501'),(2,'contenttypes','0002_remove_content_type_name','2017-03-14 02:46:18.607339'),(3,'auth','0001_initial','2017-03-14 02:46:21.526643'),(4,'auth','0002_alter_permission_name_max_length','2017-03-14 02:46:22.033312'),(5,'auth','0003_alter_user_email_max_length','2017-03-14 02:46:22.064564'),(6,'auth','0004_alter_user_username_opts','2017-03-14 02:46:22.118132'),(7,'auth','0005_alter_user_last_login_null','2017-03-14 02:46:22.148033'),(8,'auth','0006_require_contenttypes_0002','2017-03-14 02:46:22.194917'),(9,'auth','0007_alter_validators_add_error_messages','2017-03-14 02:46:22.226199'),(10,'auth','0008_alter_user_username_max_length','2017-03-14 02:46:22.273045'),(11,'blog','0001_initial','2017-03-14 02:46:32.028883'),(12,'admin','0001_initial','2017-03-14 02:46:33.400831'),(13,'admin','0002_logentry_remove_auto_add','2017-03-14 02:46:33.445173'),(14,'sessions','0001_initial','2017-03-14 02:46:33.876774'),(15,'blog','0002_auto_20170316_1316','2017-03-16 13:16:13.982356'),(16,'blog','0003_auto_20170316_1520','2017-03-16 15:21:01.616241'),(17,'blog','0004_auto_20170317_0307','2017-03-17 03:07:56.228528');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('crj4q4vyingwx7qsaldfe1khf1ht7zcb','N2ZkYmViOTFhYTBmYWRlNTgzYzY3YmRjMDhkOTIwNjY1MWNmOGY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzQxMzNkOTI1NGNkN2VmMTVkMGQwY2RhODk5ZWE0NWEwNjM4NDA3In0=','2017-04-03 03:46:57.645951'),('het21o2gjkjmvr8eue867puz6q42mt36','N2ZkYmViOTFhYTBmYWRlNTgzYzY3YmRjMDhkOTIwNjY1MWNmOGY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzQxMzNkOTI1NGNkN2VmMTVkMGQwY2RhODk5ZWE0NWEwNjM4NDA3In0=','2017-03-28 17:26:45.214522'),('usnkpj6on05j1qz16e9ngxmglh5g9ezj','N2ZkYmViOTFhYTBmYWRlNTgzYzY3YmRjMDhkOTIwNjY1MWNmOGY2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzQxMzNkOTI1NGNkN2VmMTVkMGQwY2RhODk5ZWE0NWEwNjM4NDA3In0=','2017-04-03 03:19:45.839552');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22  2:06:29
