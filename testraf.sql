/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: testraf
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add client',7,'add_client'),
(26,'Can change client',7,'change_client'),
(27,'Can delete client',7,'delete_client'),
(28,'Can view client',7,'view_client'),
(29,'Can add projct',8,'add_projct'),
(30,'Can change projct',8,'change_projct'),
(31,'Can delete projct',8,'delete_projct'),
(32,'Can view projct',8,'view_projct'),
(33,'Can add payment',9,'add_payment'),
(34,'Can change payment',9,'change_payment'),
(35,'Can delete payment',9,'delete_payment'),
(36,'Can view payment',9,'view_payment'),
(37,'Can add project',8,'add_project'),
(38,'Can change project',8,'change_project'),
(39,'Can delete project',8,'delete_project'),
(40,'Can view project',8,'view_project');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$870000$lZbCkSsjQiMTt3wsY1rOVp$fuzwjJ50Wfm58yyGF60cPRmZM3FL6WLbOlrTAPm004U=','2024-11-05 06:12:06.740567',1,'admin','','','tawhid0406@gmail.com',1,1,'2024-11-05 06:01:57.970032');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2024-11-05 06:16:31.598343','1','Client A',1,'[{\"added\": {}}]',7,1),
(2,'2024-11-05 06:16:55.337802','2','Client B',1,'[{\"added\": {}}]',7,1),
(3,'2024-11-05 10:47:44.479473','6','masud',3,'',7,1),
(4,'2024-11-05 10:47:44.479473','5','masud',3,'',7,1),
(5,'2024-11-05 10:47:44.479473','4','rakib',3,'',7,1),
(6,'2024-11-05 10:47:44.479473','3','amir',3,'',7,1),
(7,'2024-11-05 10:47:44.479473','2','Client B',3,'',7,1),
(8,'2024-11-05 10:47:44.479473','1','Client A',3,'',7,1),
(9,'2024-11-05 10:54:56.110164','7','Atif aslam',1,'[{\"added\": {}}]',7,1),
(10,'2024-11-05 10:55:57.151576','8','Alan Walker',1,'[{\"added\": {}}]',7,1),
(11,'2024-11-05 10:57:24.532586','1','Make Walker Webvsite',1,'[{\"added\": {}}]',8,1),
(12,'2024-11-05 10:58:08.549147','2','Goverment Website',1,'[{\"added\": {}}]',8,1),
(13,'2024-11-05 11:03:42.025745','3','Make Walker Webvsite - Payment ID: 3',1,'[{\"added\": {}}]',9,1),
(14,'2024-11-05 11:04:08.668971','4','Goverment Website - Payment ID: 4',1,'[{\"added\": {}}]',9,1),
(15,'2024-11-05 11:05:04.155950','5','Goverment Website - Payment ID: 5',1,'[{\"added\": {}}]',9,1),
(16,'2024-11-05 11:24:23.289204','6','Payment of 50 on 2024-11-05',1,'[{\"added\": {}}]',9,1),
(17,'2024-11-05 11:25:20.216537','7','Payment of 500 on 2024-11-05',1,'[{\"added\": {}}]',9,1),
(18,'2024-11-05 12:13:03.621935','2','Goverment Website',2,'[{\"added\": {\"name\": \"payment\", \"object\": \"Payment of 100 on 2024-11-05\"}}]',8,1),
(19,'2024-11-05 12:13:17.698739','2','Goverment Website',2,'[{\"added\": {\"name\": \"payment\", \"object\": \"Payment of 200 on 2024-11-05\"}}]',8,1),
(20,'2024-11-05 12:13:48.858506','1','Make Walker Webvsite',3,'',8,1),
(21,'2024-11-06 05:47:09.703700','3','Make Walker Webvsite',1,'[{\"added\": {}}, {\"added\": {\"name\": \"payment\", \"object\": \"Payment of 20 on 2024-11-06\"}}, {\"added\": {\"name\": \"payment\", \"object\": \"Payment of 40 on 2024-11-06\"}}]',8,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(7,'home','client'),
(9,'home','payment'),
(8,'home','project'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2024-11-05 05:42:42.566369'),
(2,'auth','0001_initial','2024-11-05 05:43:08.312639'),
(3,'admin','0001_initial','2024-11-05 05:43:13.732903'),
(4,'admin','0002_logentry_remove_auto_add','2024-11-05 05:43:13.778610'),
(5,'admin','0003_logentry_add_action_flag_choices','2024-11-05 05:43:13.896365'),
(6,'contenttypes','0002_remove_content_type_name','2024-11-05 05:43:17.349194'),
(7,'auth','0002_alter_permission_name_max_length','2024-11-05 05:43:19.328604'),
(8,'auth','0003_alter_user_email_max_length','2024-11-05 05:43:20.905206'),
(9,'auth','0004_alter_user_username_opts','2024-11-05 05:43:20.997502'),
(10,'auth','0005_alter_user_last_login_null','2024-11-05 05:43:22.955031'),
(11,'auth','0006_require_contenttypes_0002','2024-11-05 05:43:23.098647'),
(12,'auth','0007_alter_validators_add_error_messages','2024-11-05 05:43:23.178462'),
(13,'auth','0008_alter_user_username_max_length','2024-11-05 05:43:24.419939'),
(14,'auth','0009_alter_user_last_name_max_length','2024-11-05 05:43:25.587582'),
(15,'auth','0010_alter_group_name_max_length','2024-11-05 05:43:26.435857'),
(16,'auth','0011_update_proxy_permissions','2024-11-05 05:43:26.570011'),
(17,'auth','0012_alter_user_first_name_max_length','2024-11-05 05:43:42.520225'),
(18,'sessions','0001_initial','2024-11-05 05:43:43.668604'),
(19,'home','0001_initial','2024-11-05 06:15:35.709532'),
(20,'home','0002_client_address_client_company_client_password_projct_and_more','2024-11-05 10:47:23.159202'),
(21,'home','0003_rename_projct_project','2024-11-05 10:53:39.206776'),
(22,'home','0004_remove_payment_client','2024-11-05 11:00:55.884430'),
(23,'home','0005_remove_payment_project_project_payment','2024-11-05 11:20:35.245203'),
(24,'home','0006_remove_project_payment_payment_project','2024-11-05 11:56:27.624351'),
(25,'home','0007_project_sub_total','2024-11-05 13:18:27.377749'),
(26,'home','0008_alter_project_start_time','2024-11-05 13:21:42.742291'),
(27,'home','0009_alter_project_end_time','2024-11-05 13:33:48.146792'),
(28,'home','0010_alter_project_end_time','2024-11-05 13:33:58.821045'),
(29,'home','0011_remove_project_sub_total','2024-11-05 13:33:59.136950'),
(30,'home','0012_project_sub_total','2024-11-05 13:33:59.761734'),
(31,'home','0013_client_cid','2024-11-05 13:55:57.573110');
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
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('oxyig8hg3huqm07c5bkyl46u81zbg5pf','.eJxVjDsOwjAQBe_iGlk2_m0o6XMGa71e4wBypDipEHeHSCmgfTPzXiLitta4dV7ilMVFaHH63RLSg9sO8h3bbZY0t3WZktwVedAuxznz83q4fwcVe_3WUAZt2YcBdAgmoWLH5B1oIqOICJ3xkJWl4rJW5M_JaoYSslLswRvx_gDaVzen:1t8CnO:wwO1JWw6OWXJIDWs_PNWONOAKVV5UCiR9AAm_D98oTw','2024-11-19 06:12:06.773288');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_client`
--

DROP TABLE IF EXISTS `home_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_client` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(400) NOT NULL,
  `company` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_client`
--

LOCK TABLES `home_client` WRITE;
/*!40000 ALTER TABLE `home_client` DISABLE KEYS */;
INSERT INTO `home_client` VALUES
(7,'Atif aslam','atifaslam@gmail.com','0123456789','Pakisthan','newTect IT','123456',1),
(8,'Alan Walker','alan@gmail.com','8795642310','Norway','DarkSide','654321',1),
(9,'Clients','clieds@gmail.com','563453453','drfgts tyh t','asas','123456',20);
/*!40000 ALTER TABLE `home_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_payment`
--

DROP TABLE IF EXISTS `home_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `description` varchar(300) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_payment_project_id_bcddda2d_fk_home_project_id` (`project_id`),
  CONSTRAINT `home_payment_project_id_bcddda2d_fk_home_project_id` FOREIGN KEY (`project_id`) REFERENCES `home_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_payment`
--

LOCK TABLES `home_payment` WRITE;
/*!40000 ALTER TABLE `home_payment` DISABLE KEYS */;
INSERT INTO `home_payment` VALUES
(8,100,'2024-11-05 12:13:03.621354','fdghdfgh',2),
(9,200,'2024-11-05 12:13:17.698739','dfghdg hfgh dgh',2),
(10,20,'2024-11-06 05:47:09.702200','xvgbhgbvhn',3),
(11,40,'2024-11-06 05:47:09.703203','cxvhcvgb',3);
/*!40000 ALTER TABLE `home_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_project`
--

DROP TABLE IF EXISTS `home_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `details` longtext NOT NULL,
  `budget` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `sub_total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_projct_client_id_63685d92_fk_home_client_id` (`client_id`),
  CONSTRAINT `home_projct_client_id_63685d92_fk_home_client_id` FOREIGN KEY (`client_id`) REFERENCES `home_client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_project`
--

LOCK TABLES `home_project` WRITE;
/*!40000 ALTER TABLE `home_project` DISABLE KEYS */;
INSERT INTO `home_project` VALUES
(2,'Goverment Website','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',20000,'2024-11-05 10:58:08.548057','2024-11-10 10:57:59.000000','Pending',7,1),
(3,'Make Walker Webvsite','Dfzfgfdgzsdfg',2000,'2024-11-06 05:47:09.685574','2024-11-20 05:46:53.000000','Pending',9,0);
/*!40000 ALTER TABLE `home_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-11-06 12:59:29
