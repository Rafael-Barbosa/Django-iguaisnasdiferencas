-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: iguaisnasdiferencas
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_image`
--

DROP TABLE IF EXISTS `app_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `image_thumbnail` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `short_description` longtext NOT NULL,
  `image_full` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_image`
--

LOCK TABLES `app_image` WRITE;
/*!40000 ALTER TABLE `app_image` DISABLE KEYS */;
INSERT INTO `app_image` VALUES (3,'Foto 1','images/1-thumbnail.jpg','Descrição','Descrição curta','images/1-full.jpg'),(4,'Foto 2','images/2-thumbnail.jpg','Descrição','Descrição curta','images/2-full.jpg'),(5,'Foto 3','images/3-thumbnail.jpg','Descrição','Descrição curta','images/3-full.jpg'),(6,'Foto 4','images/4-thumbnail.jpg','Descrição','Descrição curta','images/4-full.jpg'),(7,'Foto 5','images/5-thumbnail.jpg','Descrição','Descrição curta','images/5-full.jpg'),(8,'Foto 6','images/6-thumbnail.jpg','Descrição','Descrição curta','images/6-full.jpg');
/*!40000 ALTER TABLE `app_image` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add deficiencia',7,'add_deficiencia'),(26,'Can change deficiencia',7,'change_deficiencia'),(27,'Can delete deficiencia',7,'delete_deficiencia'),(28,'Can view deficiencia',7,'view_deficiencia'),(29,'Can add endereco',8,'add_endereco'),(30,'Can change endereco',8,'change_endereco'),(31,'Can delete endereco',8,'delete_endereco'),(32,'Can view endereco',8,'view_endereco'),(33,'Can add pessoa',9,'add_pessoa'),(34,'Can change pessoa',9,'change_pessoa'),(35,'Can delete pessoa',9,'delete_pessoa'),(36,'Can view pessoa',9,'view_pessoa'),(37,'Can add pessoadeficiencia',10,'add_pessoadeficiencia'),(38,'Can change pessoadeficiencia',10,'change_pessoadeficiencia'),(39,'Can delete pessoadeficiencia',10,'delete_pessoadeficiencia'),(40,'Can view pessoadeficiencia',10,'view_pessoadeficiencia'),(41,'Can add image',11,'add_image'),(42,'Can change image',11,'change_image'),(43,'Can delete image',11,'delete_image'),(44,'Can view image',11,'view_image');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$pb16lOwHSIEReBrK7vnuou$uweGTKVaaazPcCbE9jKeSkCTNlQTnvDKg1OyZD36Bgw=','2024-03-23 18:23:13.357824',1,'luizpaese','','','luizpaese@gmail.com',1,1,'2024-03-23 15:40:00.447915');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-23 15:40:45.180241','1','Foto 1',1,'[{\"added\": {}}]',11,1),(2,'2024-03-23 15:46:35.398154','1','Foto 1',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(3,'2024-03-23 15:50:11.411065','1','Cavalo',2,'[{\"changed\": {\"fields\": [\"Title\", \"Image\"]}}]',11,1),(4,'2024-03-23 16:17:40.656182','1','Foto 1',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Short description\"]}}]',11,1),(5,'2024-03-23 16:21:29.225054','1','Foto 1',3,'',11,1),(6,'2024-03-23 16:30:06.322581','2','Cavalo',1,'[{\"added\": {}}]',11,1),(7,'2024-03-23 16:34:41.312345','2','Cavalo',3,'',11,1),(8,'2024-03-23 16:35:00.449280','3','Cavalo',1,'[{\"added\": {}}]',11,1),(9,'2024-03-23 16:56:11.528970','3','Foto 1',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',11,1),(10,'2024-03-23 16:56:26.316704','4','Foto 2',1,'[{\"added\": {}}]',11,1),(11,'2024-03-23 16:56:45.183002','5','Foto 3',1,'[{\"added\": {}}]',11,1),(12,'2024-03-23 16:57:15.382469','6','Foto 4',1,'[{\"added\": {}}]',11,1),(13,'2024-03-23 16:57:35.653207','7','Foto 5',1,'[{\"added\": {}}]',11,1),(14,'2024-03-23 16:57:51.012516','8','Foto 6',1,'[{\"added\": {}}]',11,1),(15,'2024-03-23 19:54:17.092849','3','Foto 1',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1),(16,'2024-03-23 19:54:47.828418','4','Foto 2',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1),(17,'2024-03-23 19:54:59.343293','5','Foto 3',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1),(18,'2024-03-23 19:55:16.459417','6','Foto 4',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1),(19,'2024-03-23 19:55:26.150943','7','Foto 5',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1),(20,'2024-03-23 19:55:35.248714','8','Foto 6',2,'[{\"changed\": {\"fields\": [\"Image thumbnail\", \"Image full\"]}}]',11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','deficiencia'),(8,'app','endereco'),(11,'app','image'),(9,'app','pessoa'),(10,'app','pessoadeficiencia'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-22 23:58:00.109935'),(2,'auth','0001_initial','2024-03-22 23:58:03.868460'),(3,'admin','0001_initial','2024-03-22 23:58:04.480758'),(4,'admin','0002_logentry_remove_auto_add','2024-03-22 23:58:04.504378'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-22 23:58:04.535087'),(6,'contenttypes','0002_remove_content_type_name','2024-03-22 23:58:04.803838'),(7,'auth','0002_alter_permission_name_max_length','2024-03-22 23:58:05.048882'),(8,'auth','0003_alter_user_email_max_length','2024-03-22 23:58:05.110436'),(9,'auth','0004_alter_user_username_opts','2024-03-22 23:58:05.134967'),(10,'auth','0005_alter_user_last_login_null','2024-03-22 23:58:05.332073'),(11,'auth','0006_require_contenttypes_0002','2024-03-22 23:58:05.347180'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-22 23:58:05.379781'),(13,'auth','0008_alter_user_username_max_length','2024-03-22 23:58:05.886731'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-22 23:58:06.208116'),(15,'auth','0010_alter_group_name_max_length','2024-03-22 23:58:06.274282'),(16,'auth','0011_update_proxy_permissions','2024-03-22 23:58:06.302980'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-22 23:58:06.583798'),(18,'sessions','0001_initial','2024-03-22 23:58:06.803894'),(19,'app','0001_initial','2024-03-23 15:38:32.075420'),(20,'app','0002_image_description_alter_image_title','2024-03-23 15:46:14.685743'),(21,'app','0003_alter_image_description_alter_image_id','2024-03-23 15:56:19.054339'),(22,'app','0004_image_short_description','2024-03-23 15:56:19.148085'),(23,'app','0005_alter_image_id','2024-03-23 15:59:14.450375'),(24,'app','0006_alter_image_description_and_more','2024-03-23 16:01:59.298449'),(25,'app','0007_image_image_full','2024-03-23 16:24:30.668724'),(26,'app','0008_rename_image_image_image_thumbnail','2024-03-23 16:29:32.205151');
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
INSERT INTO `django_session` VALUES ('mry9qx6dytpde60io7pl78xw4usr3zxf','.eJxVjEEOwiAQRe_C2hAohRGX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERWpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7cG0IwUkR14dpiNsZGNBVYQLSXK3g1wJq-USkqPbkAARdob48m6PIr3B_RsN6M:1ro4ee:y858COqhXGcIibVUFaad6pSHb-cVTXXAEzVByzCYgN0','2024-04-06 16:55:36.111020'),('wblwe624cg5hfrtrebyln8hxigrk1wan','.eJxVjEEOwiAQRe_C2hAohRGX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERWpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7cG0IwUkR14dpiNsZGNBVYQLSXK3g1wJq-USkqPbkAARdob48m6PIr3B_RsN6M:1ro3Ti:9CdH3j7gg7XL5ZSvfmacodeSF57npdRMjfW7bwDR7Ps','2024-04-06 15:40:14.982559');
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

-- Dump completed on 2024-03-24 22:25:38
