-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: db_blog
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album_albuminfo`
--

DROP TABLE IF EXISTS `album_albuminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_albuminfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `introduce` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_albuminfo_user_id_ef08f7d4_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `album_albuminfo_user_id_ef08f7d4_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_albuminfo`
--

LOCK TABLES `album_albuminfo` WRITE;
/*!40000 ALTER TABLE `album_albuminfo` DISABLE KEYS */;
INSERT INTO `album_albuminfo` VALUES (1,'图片1','图片1介绍','album/1.jpg',1),(2,'图片2','图片2介绍','album/2.jpg',1),(3,'图片3','图片3介绍','album/3.jpg',1),(4,'图片4','图片4介绍','album/4.jpg',1),(5,'图片5','图片5介绍','album/5.jpg',1),(6,'图片6','图片6介绍','album/6.jpg',1),(7,'图片7','图片7介绍','album/7.jpg',1),(8,'图片8','图片8介绍','album/8.jpg',1),(9,'图片9','图片9介绍','album/9.jpg',1),(10,'图片10','图片10介绍','album/10.jpg',1),(11,'图片11','图片11介绍','album/11.jpg',1),(13,'1','2','album/33.jpg',1),(14,'我去','不造啊','album/55.jpg',1);
/*!40000 ALTER TABLE `album_albuminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_article`
--

DROP TABLE IF EXISTS `article_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `reads` int NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` bigint NOT NULL,
  `type_id` int NOT NULL,
  `abstract` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_article_type_id_f3debe9a_fk_article_articletype_id` (`type_id`),
  KEY `article_article_author_id_e6b479f8_fk_user_myuser_id` (`author_id`),
  CONSTRAINT `article_article_author_id_e6b479f8_fk_user_myuser_id` FOREIGN KEY (`author_id`) REFERENCES `user_myuser` (`id`),
  CONSTRAINT `article_article_type_id_f3debe9a_fk_article_articletype_id` FOREIGN KEY (`type_id`) REFERENCES `article_articletype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_article`
--

LOCK TABLES `article_article` WRITE;
/*!40000 ALTER TABLE `article_article` DISABLE KEYS */;
INSERT INTO `article_article` VALUES (1,'1','文字是心灵的港湾，是我们与世界相连接的桥梁。在文字的世界里，我们可以感受到历史的沧桑，体味生活的美好。文字是心灵的港湾，是我们与世界相连接的桥梁。在文字的世界里，我们可以感受到历史的沧桑，体味生活的美好。文字是心灵的港湾，是我们与世界相连接的桥梁。在文字的世界里，我们可以感受到历史的沧桑，体味生活的美好。文字是心灵的港湾，是我们与世界相连接的桥梁。在文字的世界里，我们可以感受到历史的沧桑，体味生活的美好。文字是心灵的港湾，是我们与世界相连接的桥梁。在文字的世界里，我们可以感受到历史的沧桑，体味生活的美好。','article/11.jpg',38,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'文字是心灵的港湾，是我们与世界相连接的桥梁。'),(2,'1','2','article/22.jpg',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(3,'2','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(4,'3','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(5,'是的','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(6,'5','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(7,'6','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(8,'7','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(9,'8','好啊是的','',2,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,1,'11'),(10,'9','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,2,'11'),(11,'10','2','',1,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,2,'11'),(12,'1','<p>1</p>','',2,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,2,'1'),(15,'看植物','<p>太牛逼了。</p>\r\n\r\n<p><img alt=\"\" src=\"/media/article_images/2024/12/18/login-background.jpg\" style=\"height:394px; width:700px\" /></p>','article/login.jpg',8,'2025-07-14 15:50:55.000000','2025-07-23 15:50:55.000000',1,3,'火豌');
/*!40000 ALTER TABLE `article_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_articletype`
--

DROP TABLE IF EXISTS `article_articletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_articletype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_articletype_user_id_86358c8c_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `article_articletype_user_id_86358c8c_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_articletype`
--

LOCK TABLES `article_articletype` WRITE;
/*!40000 ALTER TABLE `article_articletype` DISABLE KEYS */;
INSERT INTO `article_articletype` VALUES (1,'Python基础',1),(2,'数据分析',1),(3,'人工智能',1);
/*!40000 ALTER TABLE `article_articletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(60) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `article_id` int NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_comment_article_id_4fa145bf_fk_article_article_id` (`article_id`),
  KEY `article_comment_author_id_9487a55a_fk_user_myuser_id` (`author_id`),
  CONSTRAINT `article_comment_article_id_4fa145bf_fk_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article_article` (`id`),
  CONSTRAINT `article_comment_author_id_9487a55a_fk_user_myuser_id` FOREIGN KEY (`author_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_comment`
--

LOCK TABLES `article_comment` WRITE;
/*!40000 ALTER TABLE `article_comment` DISABLE KEYS */;
INSERT INTO `article_comment` VALUES (1,'jack','11111','2025-07-16 17:34:16.000000',1,1),(2,'张三','222','2025-07-16 17:34:16.000000',1,1),(3,'匿名用户','11','2025-07-16 17:34:16.000000',1,1),(4,'匿名用户','3232','2025-07-16 17:34:16.000000',1,1),(5,'匿名用户','pvz','2025-07-16 17:34:16.000000',1,1),(6,'匿名用户','666','2025-07-16 17:34:16.000000',1,1),(7,'11','11','2025-07-16 17:34:16.000000',1,1),(8,'11','牛逼','2025-07-16 17:34:16.000000',15,1),(9,'666','不错！','2025-07-16 17:34:16.000000',15,1);
/*!40000 ALTER TABLE `article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_myuser'),(22,'Can change user',6,'change_myuser'),(23,'Can delete user',6,'delete_myuser'),(24,'Can view user',6,'view_myuser'),(25,'Can add 图片墙管理',7,'add_albuminfo'),(26,'Can change 图片墙管理',7,'change_albuminfo'),(27,'Can delete 图片墙管理',7,'delete_albuminfo'),(28,'Can view 图片墙管理',7,'view_albuminfo'),(29,'Can add 博客类别',8,'add_articletype'),(30,'Can change 博客类别',8,'change_articletype'),(31,'Can delete 博客类别',8,'delete_articletype'),(32,'Can view 博客类别',8,'view_articletype'),(33,'Can add 博客帖子管理',9,'add_article'),(34,'Can change 博客帖子管理',9,'change_article'),(35,'Can delete 博客帖子管理',9,'delete_article'),(36,'Can view 博客帖子管理',9,'view_article'),(37,'Can add comment',10,'add_comment'),(38,'Can change comment',10,'change_comment'),(39,'Can delete comment',10,'delete_comment'),(40,'Can view comment',10,'view_comment'),(41,'Can add 友情链接管理',11,'add_linkinfo'),(42,'Can change 友情链接管理',11,'change_linkinfo'),(43,'Can delete 友情链接管理',11,'delete_linkinfo'),(44,'Can view 友情链接管理',11,'view_linkinfo'),(45,'Can add message',12,'add_message'),(46,'Can change message',12,'change_message'),(47,'Can delete message',12,'delete_message'),(48,'Can view message',12,'view_message');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-07-14 10:43:49.334758','13','1',1,'[{\"added\": {}}]',7,1),(2,'2025-07-14 10:44:45.630176','14','我去',1,'[{\"added\": {}}]',7,1),(3,'2025-07-17 03:27:26.237656','12','1',1,'[{\"added\": {}}]',9,1),(4,'2025-07-17 03:29:44.753697','13','1',1,'[{\"added\": {}}]',9,1),(5,'2025-07-17 03:30:54.462876','14','11',1,'[{\"added\": {}}]',9,1),(6,'2025-07-18 00:23:33.003688','15','看植物',1,'[{\"added\": {}}]',9,1),(7,'2025-07-18 00:24:58.544339','14','11',3,'',9,1),(8,'2025-07-18 00:24:58.548326','13','1',3,'',9,1),(9,'2025-07-18 00:25:53.523499','12','1',3,'',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'album','albuminfo'),(9,'article','article'),(8,'article','articletype'),(10,'article','comment'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(11,'link','linkinfo'),(12,'message','message'),(5,'sessions','session'),(6,'user','myuser');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-24 02:19:56.932610'),(2,'contenttypes','0002_remove_content_type_name','2024-10-24 02:19:57.268791'),(3,'auth','0001_initial','2024-10-24 02:19:57.982543'),(4,'auth','0002_alter_permission_name_max_length','2024-10-24 02:19:58.122199'),(5,'auth','0003_alter_user_email_max_length','2024-10-24 02:19:58.133168'),(6,'auth','0004_alter_user_username_opts','2024-10-24 02:19:58.143142'),(7,'auth','0005_alter_user_last_login_null','2024-10-24 02:19:58.148128'),(8,'auth','0006_require_contenttypes_0002','2024-10-24 02:19:58.150124'),(9,'auth','0007_alter_validators_add_error_messages','2024-10-24 02:19:58.155109'),(10,'auth','0008_alter_user_username_max_length','2024-10-24 02:19:58.160096'),(11,'auth','0009_alter_user_last_name_max_length','2024-10-24 02:19:58.164086'),(12,'auth','0010_alter_group_name_max_length','2024-10-24 02:19:58.219937'),(13,'auth','0011_update_proxy_permissions','2024-10-24 02:19:58.224923'),(14,'auth','0012_alter_user_first_name_max_length','2024-10-24 02:19:58.229910'),(15,'user','0001_initial','2025-07-14 02:19:58.726493'),(16,'admin','0001_initial','2025-07-14 02:19:58.726493'),(17,'admin','0002_logentry_remove_auto_add','2025-07-14 02:19:58.726493'),(18,'admin','0003_logentry_add_action_flag_choices','2025-07-14 02:19:58.726493'),(19,'sessions','0001_initial','2025-07-14 02:19:58.726493'),(20,'album','0001_initial','2025-07-14 02:19:58.726493'),(21,'article','0001_initial','2025-07-14 02:19:58.726493'),(22,'article','0002_alter_articletype_options_alter_comment_options','2025-07-14 02:19:58.726493'),(23,'link','0001_initial','2025-07-14 02:19:58.726493'),(24,'article','0003_remove_article_likes_article_abstract','2025-07-14 02:19:58.726493'),(25,'album','0002_alter_albuminfo_photo','2025-07-14 02:19:58.726493'),(26,'message','0001_initial','2025-07-14 02:19:58.726493'),(27,'article','0004_alter_article_options_alter_articletype_options_and_more','2025-07-14 02:19:58.726493'),(28,'link','0002_linkinfo_user','2025-07-14 02:19:58.726493'),(29,'message','0002_alter_message_options','2025-07-14 02:19:58.726493');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0hts8hpq834408xbulzitw32oiorbq34','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLwkN:sw2URZEOvgAJCMoKT74EGoggaACnNoE4EG4BkPILwhw','2025-07-17 03:53:47.916987'),('1t35l4rjujinhd2r5o79kvmrfdsecn57','e30:1t6Qk5:FeGkiHJYqag2XlSxYMVgS3WXOqPkugD9NzaI5rfBCjE','2025-07-17 03:53:47.916987'),('2ftetpuevlirhvp1ag8pshe72xqd8cns','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tHDag:DoAxhTgMl7q6kZnfdYFnso8pIyvDuADaNChFWKjXMy4','2025-07-17 03:53:47.916987'),('45w91j7k0itoyijn471yirhscx2qnkg8','.eJxVjEEOwiAQRe_C2pABCrQu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXDrEfIphMFhQ49ho1dMkhGwJP2fTAOGRL1mQVfcqcMCIzkbY77sTnC_Z6OTo:1t7mEa:F3u-AGI3DpRALYTTKRlrumymjrIeycxhp6H0NwMVQHo','2025-07-17 03:53:47.916987'),('4ihjc1r6t1v1x4bkvsn1r2rsp688x0fm','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tKuBc:UzslA8Jfqjg8J9WjnR_KTU3kh1asGjpZC8wL9jy0k-o','2025-07-17 03:53:47.916987'),('4qbnbx81bo8t16orx46ca1ypiukqykw3','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tRThC:0fVfRN15HUxc1sqSa22_m2AZPGTRl0mvUQx-2a999LE','2025-07-17 03:53:47.916987'),('5uwp8d0vpmhjt565xxjrtyitysz0h4bf','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLvs3:fd0qiOz0sxM5CK0nX4ZiMtl2lz3TD4IagpO0yx0jujA','2025-07-17 03:53:47.916987'),('5zuxhwowoqd4dpuc9qutoo5d8fll1106','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1udRYo:oC_SHvY9dh4XVmgos8niLqts4AdbwQ0Nb-hmlN_rZcw','2025-07-17 03:53:47.916987'),('6fmj4w44c5nebbjyns4hz7jqyivym61v','e30:1t7laB:cGRZK7iu-dWiW0PQNPOIuLX2G5KpDnx3S7hBivK7jJI','2025-07-17 03:53:47.916987'),('742gpqacz4dnpznpewkxe2el0wj664rb','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tDEAa:0a1l88TUtPmHrQX4F-NWCZuqF4DrgmZJADfgFTPGiGw','2025-07-17 03:53:47.916987'),('74fw0vezu9l3bz5824x30omquk2ayq2l','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tJ1dw:gSVBKe-S5V91PBGAGdWecpb5FqFk146UhjVJPDZN00Y','2025-07-17 03:53:47.916987'),('7jaum3puxeiwvxdv3dsnrml2pqy849fo','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tDBti:3QLfD1UXp2MaHEiJz5vbyl7vdB0FuGMNLr1Mp0POHaI','2025-07-17 03:53:47.916987'),('85nunv86908oxltl254cwkuwo3wcqgx4','e30:1t50cq:2ncJjt-CINQRszYdsUfXwjhgQ8lcDfbL-ihaknkUq94','2025-07-17 03:53:47.916987'),('8h16fz33xif8jm1u5aa4onu217wptsf6','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLvmx:2UbRTJTee-vH9MRPadFxzUjQQWTUof996dbsUxUHq2w','2025-07-17 03:53:47.916987'),('9g56j5qwozdelkxqb5o98hmwwtnr6y3d','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLuoh:MRDV0ynFy_cuG7_UiHYX0fgtVgAOFQJmYsCg4aWRR-4','2025-07-17 03:53:47.916987'),('d1mf34nw16mu8ikf3od6vj1gillffnmx','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tEfNH:3a3IfhxQj4YByM5bFgfe3LpRkJJsh37Nhp8_x7q5c94','2025-07-17 03:53:47.916987'),('d21zaasmvjjyw5ycicrt0i05gop4y3yy','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLvNO:_npnZ1ebmKWIHzQERcyNbkU_UOtAjHY_OZzlEae57Fc','2025-07-17 03:53:47.916987'),('d268wg3hd3xsc0em856cfclcq6gepguu','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tJUBB:S0_69COhWOMnR4SHRD86zPDD5DEhpWHoSMz8jTY6zjA','2025-07-17 03:53:47.916987'),('fks7qjaebhp3bbvqu6db78643hxvjn5p','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1udRxQ:kCKDp2ngQWU_ynwDLVYrJgf2In1ExqLAHHs9ZP0ltOY','2025-08-03 11:11:52.093933'),('he2wtre1ova5diwfhiqtnf7oe7y5cjjc','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1udREx:x7zDU95ibGnRBp82qFli77qd5dAMi1fqyOwnFew8ris','2025-07-17 03:53:47.916987'),('i7ilchzmzbikd2qq1un4b5xw6050n4ln','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tLuzj:KdytcV3_mg17F03REdQ93vAt07Vyc94e9Zzbu-M4cX8','2025-07-17 03:53:47.916987'),('iw8qkvykr1cuys10183b2iyb8fq7ob2m','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tIkZl:tnOMSIqAskWzAIegzY-omqAyeB7Kt32-xUDDYcfpeEo','2025-07-17 03:53:47.916987'),('kptlgmaxfais798je217eh8p5ixcr8hh','.eJxVjMsOwiAUBf-FtSFCe6W6dO83kPsAqRpISrsy_ruQdKHbmTnnrTxua_JbDYufRV3UqA6_jJCfIXchD8z3ornkdZlJ90TvtupbkfC67u3fQcKa2poHYIYjnGI0LIyTOEsdEtloz3GSgA5MhCCmVTIKtZybcmwFBvX5AhkjORw:1tNheH:App8PoESU9jQiO7L1iXeL2dwjDUDXilBRfU6FSiNGec','2025-07-17 03:53:47.916987'),('l4noeqwl3xq5fooj4ap0bg0u2w6eq0jh','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tCy3g:_JeLoT0JVc-yVahhGSRD1S2CBkhVK0D3DcnsRUJUhBc','2025-07-17 03:53:47.916987'),('oe5qzl72kvz3gv73vvslhgqqucxsh900','.eJxVjEEOwiAQRe_C2pABCrQu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXDrEfIphMFhQ49ho1dMkhGwJP2fTAOGRL1mQVfcqcMCIzkbY77sTnC_Z6OTo:1t7laM:WX0TYRYF8t-izSuelOmd28WJIlEhEA1S2a52_ihZFms','2025-07-17 03:53:47.916987'),('rjhyrq29kdqqfr3kx4qtlfx5kbct2wsw','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tIIUl:fn5kZApwCPPkJDLZV7O54kq0Lp6aRGC_O_aoLaLwhBo','2025-07-17 03:53:47.916987'),('rvaoyheq4xvpjvzs4z0skwj5s7glkrvr','.eJxVjEEOwiAQRe_C2pABCrQu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXDrEfIphMFhQ49ho1dMkhGwJP2fTAOGRL1mQVfcqcMCIzkbY77sTnC_Z6OTo:1t9DO2:vDc9mMSSFIsBU2-L1DHTbqL3XI747fvnWZRDKySZQZE','2025-07-17 03:53:47.916987'),('s3bc6kewourr190d1jfmb0tx76olcvgz','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tG99g:cRvQz7cwym4aX_6-JaYC11PTCvcEcnOR9EFuKN3VNio','2025-07-17 03:53:47.916987'),('xe5lgu7o5gsqm15d4fof8r8hx9piio0c','.eJxVjEEOwiAQRe_C2pABCrQu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXDrEfIphMFhQ49ho1dMkhGwJP2fTAOGRL1mQVfcqcMCIzkbY77sTnC_Z6OTo:1t9ECL:2jokrNbaDXi1Lo1vDIcmzgvIbuGnCQ6pVleIxqhBWBs','2025-07-17 03:53:47.916987'),('xezimlc62ykgh1a6u9ynyc5d7zgqlf8l','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tFl7m:LIH8MI_xJYPQh-kzjhKFUZvA_UZsbMDivvjA1tO5MDs','2025-07-17 03:53:47.916987'),('xwblaswsw6n1i8c4u1zaqkk1q5aok0tx','.eJxVjDsOwjAQBe_iGln-4piSPmewdtdrHECOFCcV4u4QKQW0b2beSyTY1pq2zkuasrgILU6_GwI9uO0g36HdZklzW5cJ5a7Ig3Y5zpmf18P9O6jQ67fGM_uIZLVyYEMZLIAr0XgwBYIhchEdEDpLno1jD6iCitkOFDVno8T7A_U5OE0:1tDv0J:9QKgkfGzwEScpoKsOGWlOBS8fLnJ94vEXBUwpQFlgHQ','2025-07-17 03:53:47.916987');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_linkinfo`
--

DROP TABLE IF EXISTS `link_linkinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_linkinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_linkinfo_user_id_b50e4dbb_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `link_linkinfo_user_id_b50e4dbb_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_linkinfo`
--

LOCK TABLES `link_linkinfo` WRITE;
/*!40000 ALTER TABLE `link_linkinfo` DISABLE KEYS */;
INSERT INTO `link_linkinfo` VALUES (1,'python官网','http://www.python.org/','好网站',1),(2,'python博客','http://www.python.org/','好博客',1);
/*!40000 ALTER TABLE `link_linkinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_message`
--

DROP TABLE IF EXISTS `message_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_message_user_id_e5d1ceee_fk_user_myuser_id` (`user_id`),
  CONSTRAINT `message_message_user_id_e5d1ceee_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_message`
--

LOCK TABLES `message_message` WRITE;
/*!40000 ALTER TABLE `message_message` DISABLE KEYS */;
INSERT INTO `message_message` VALUES (1,'Jack逊','111@qq.com','牛逼','2025-07-11 10:41:59.000000',1),(2,'Marry马','222@qq.com','哈哈','2025-07-10 10:43:55.000000',1),(3,'1','1','1','2025-07-11 19:20:24.685254',1),(4,'666','332@qq.com','真不错，学习了。','2025-07-11 19:20:48.869941',1),(5,'张三','2','3','2025-07-28 17:22:38.005017',1);
/*!40000 ALTER TABLE `message_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_myuser`
--

DROP TABLE IF EXISTS `user_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_myuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `introduce` longtext NOT NULL,
  `company` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `wx` varchar(50) NOT NULL,
  `qq` varchar(50) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_myuser`
--

LOCK TABLES `user_myuser` WRITE;
/*!40000 ALTER TABLE `user_myuser` DISABLE KEYS */;
INSERT INTO `user_myuser` VALUES (1,'pbkdf2_sha256$720000$0C34F0vKntA17voupagVgb$HtDC6zOJHauWlE/97rOR0LzbnEKyG/t8NVUHfilse5U=','2025-07-20 11:11:52.084932',1,'python','','','666@gmail.com',1,1,'2025-07-27 09:01:51.033287','python','你死了','文化有限公司','梦魇','你的噩梦','1234567890','666','999','avatar/1.jpg'),(6,'pbkdf2_sha256$720000$WvaIm1AxQRDNMGMEaNrFWw$a1m2auOFeJJ8SMjYAbHi9lmnO3QwLIx4eREAohfSUkM=',NULL,1,'java','','','',1,1,'2025-07-28 10:05:09.266373','匿名用户','暂无介绍','暂无信息','暂无信息','暂无信息','暂无信息','暂无信息','暂无信息','');
/*!40000 ALTER TABLE `user_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_myuser_groups`
--

DROP TABLE IF EXISTS `user_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_myuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_groups_myuser_id_group_id_680fbae2_uniq` (`myuser_id`,`group_id`),
  KEY `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` (`group_id`),
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_myuser_groups`
--

LOCK TABLES `user_myuser_groups` WRITE;
/*!40000 ALTER TABLE `user_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_myuser_user_permissions`
--

DROP TABLE IF EXISTS `user_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_myuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq` (`myuser_id`,`permission_id`),
  KEY `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`),
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_myuser_user_permissions`
--

LOCK TABLES `user_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `user_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 19:19:35
