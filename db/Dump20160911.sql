CREATE DATABASE  IF NOT EXISTS `TTO_Survey` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `TTO_Survey`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: TTO_Survey
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add health card',7,'add_healthcard'),(20,'Can change health card',7,'change_healthcard'),(21,'Can delete health card',7,'delete_healthcard'),(22,'Can add health state',8,'add_healthstate'),(23,'Can change health state',8,'change_healthstate'),(24,'Can delete health state',8,'delete_healthstate'),(25,'Can add cors model',9,'add_corsmodel'),(26,'Can change cors model',9,'change_corsmodel'),(27,'Can delete cors model',9,'delete_corsmodel'),(28,'Can add participant',10,'add_participant'),(29,'Can change participant',10,'change_participant'),(30,'Can delete participant',10,'delete_participant'),(31,'Can add participant answer',11,'add_participantanswer'),(32,'Can change participant answer',11,'change_participantanswer'),(33,'Can delete participant answer',11,'delete_participantanswer');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corsheaders_corsmodel`
--

DROP TABLE IF EXISTS `corsheaders_corsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corsheaders_corsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cors` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsheaders_corsmodel`
--

LOCK TABLES `corsheaders_corsmodel` WRITE;
/*!40000 ALTER TABLE `corsheaders_corsmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `corsheaders_corsmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_healthcard`
--

DROP TABLE IF EXISTS `database_healthcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_healthcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_healthcard`
--

LOCK TABLES `database_healthcard` WRITE;
/*!40000 ALTER TABLE `database_healthcard` DISABLE KEYS */;
INSERT INTO `database_healthcard` VALUES (1,'card 1',NULL),(2,'card 2',NULL),(3,'card 3',NULL),(4,'card 4',NULL),(5,'card 5',NULL),(6,'card 6',NULL),(7,'card 7',NULL),(8,'card 8',NULL),(9,'card 9',NULL),(10,'card 10',NULL),(11,'card 11',NULL);
/*!40000 ALTER TABLE `database_healthcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_healthstate`
--

DROP TABLE IF EXISTS `database_healthstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_healthstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `health_card_id` int(11) DEFAULT NULL,
  `state_desc` varchar(200),
  PRIMARY KEY (`id`),
  KEY `database_healt_health_card_id_40fedb4d_fk_database_healthcard_id` (`health_card_id`),
  CONSTRAINT `database_healt_health_card_id_40fedb4d_fk_database_healthcard_id` FOREIGN KEY (`health_card_id`) REFERENCES `database_healthcard` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_healthstate`
--

LOCK TABLES `database_healthstate` WRITE;
/*!40000 ALTER TABLE `database_healthstate` DISABLE KEYS */;
INSERT INTO `database_healthstate` VALUES (8,1,'I have no problems in walking around'),(9,1,'I have no problems with personal care'),(10,1,'I have some problems with performing my usual activities'),(11,1,'I have no pain or discomfort'),(12,1,'I am extremely anxious or depressed'),(13,2,'I have no problems in walking around'),(14,2,'I am unable to wash or dress myself'),(15,2,'I have no problems with performing my usual activities'),(16,2,'I have extreme pain or discomfort'),(17,2,'I am not anxious or depressed'),(18,3,'I have some problems in walking around'),(19,3,'I have some problems washing or dressing myself'),(20,3,'I am unable to perform my usual activities'),(21,3,'I have extreme pain or discomfort'),(22,3,'I am moderately anxious or depressed'),(23,4,'I am confined to bed'),(24,4,'I am unable to wash or dress myself'),(25,4,'I am unable to perform my usual activities'),(26,4,'I have extreme pain or discomfort'),(27,4,'I am extremely anxious or depressed'),(28,5,'I have some problems in walking around'),(29,5,'I have some problems washing or dressing myself'),(30,5,'I have no problems with performing my usual activities'),(31,5,'I have moderate pain or discomfort'),(32,5,'I am moderately anxious or depressed'),(33,6,'I have no problems in walking around'),(34,6,'I have no problems with personal care'),(35,6,'I am unable to perform my usual activities'),(36,6,'I have no pain or discomfort'),(37,6,'I am not anxious or depressed'),(38,7,'I am confined to bed'),(39,7,'I have some problems washing or dressing myself'),(40,7,'I have some problems with performing my usual activities'),(41,7,'I have extreme pain or discomfort'),(42,7,'I am not anxious or depressed'),(43,8,'I am confined to bed'),(44,8,'I am unable to wash or dress myself'),(45,8,'I have some problems with performing my usual activities'),(46,8,'I have extreme pain or discomfort'),(47,8,'I am extremely anxious or depressed'),(48,9,'I have some problems in walking around'),(49,9,'I am unable to wash or dress myself'),(50,9,'I have no problems with performing my usual activities'),(51,9,'I have extreme pain or discomfort'),(52,9,'I am extremely anxious or depressed'),(53,10,'I have no problems in walking around'),(54,10,'I have no problems with personal care'),(55,10,'I am unable to perform my usual activities'),(56,10,'I have moderate pain or discomfort'),(57,10,'I am not anxious or depressed'),(58,11,'I have some problems in walking around'),(59,11,'I have some problems washing or dressing myself'),(60,11,'I have some problems with performing my usual activities'),(61,11,'I have extreme pain or discomfort'),(62,11,'I am extremely anxious or depressed');
/*!40000 ALTER TABLE `database_healthstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_participant`
--

DROP TABLE IF EXISTS `database_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zipocde` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `hypertension` varchar(100) DEFAULT NULL,
  `insulin` varchar(100) DEFAULT NULL,
  `noninsulin` varchar(100) DEFAULT NULL,
  `asthma` varchar(100) DEFAULT NULL,
  `epilepsy` varchar(100) DEFAULT NULL,
  `anaemia` varchar(100) DEFAULT NULL,
  `renal` varchar(100) DEFAULT NULL,
  `cardiac` varchar(100) DEFAULT NULL,
  `accident` varchar(100) DEFAULT NULL,
  `mentalhealth` varchar(100) DEFAULT NULL,
  `gastro` varchar(100) DEFAULT NULL,
  `skin` varchar(100) DEFAULT NULL,
  `cancer` varchar(100) DEFAULT NULL,
  `other` varchar(100) DEFAULT NULL,
  `mobility` varchar(100) DEFAULT NULL,
  `personal` varchar(100) DEFAULT NULL,
  `activities` varchar(100) DEFAULT NULL,
  `pain` varchar(100) DEFAULT NULL,
  `anxiety` varchar(100) DEFAULT NULL,
  `health` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_participant`
--

LOCK TABLES `database_participant` WRITE;
/*!40000 ALTER TABLE `database_participant` DISABLE KEYS */;
INSERT INTO `database_participant` VALUES (1,'123','2016-9-21','Male','No','No','No','No','No','No','No','No','No','No','No','No','No','No','I have no problems in walking around','I have no problems with personal care','I have no problems with performing my usual activities','I have no pain or discomfort','I am not anxious or depressed',NULL),(2,'123','2016-9-19','Male','Yes','No','No','Unsure','No','Unsure','No','Unsure','No','Unsure','No','No','No','No','I am confined to bed','I have no problems with personal care','I have some problems with performing my usual activities','I have extreme pain or discomfort','I am not anxious or depressed',NULL),(3,'123','2016-9-12','Male','No','No','No','No','No','Yes','No','Unsure','No','No','No','No','No','No','I have no problems in walking around','I have no problems with personal care','I have no problems with performing my usual activities','I have moderate pain or discomfort','I am moderately anxious or depressed','75'),(4,'123','2016-9-27','Male','No','No','No','No','Unsure','No','No','No','No','No','No','No','No','No','I have no problems in walking around','I have no problems with personal care','I have no problems with performing my usual activities','I have no pain or discomfort','I am moderately anxious or depressed','65'),(5,'456','2016-9-21','Male','Yes','No','Yes','No','Yes','Unsure','No','No','No','No','No','No','No','No','I have no problems in walking around','I am unable to wash or dress myself','I am unable to perform my usual activities','I have no pain or discomfort','I am extremely anxious or depressed','50');
/*!40000 ALTER TABLE `database_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_participantanswer`
--

DROP TABLE IF EXISTS `database_participantanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_participantanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `life_a` varchar(20) DEFAULT NULL,
  `health_card_id` int(11) DEFAULT NULL,
  `participant_id` int(11) DEFAULT NULL,
  `life_b` varchar(20),
  `answer` varchar(20),
  PRIMARY KEY (`id`),
  KEY `database_parti_health_card_id_3335de85_fk_database_healthcard_id` (`health_card_id`),
  KEY `database_part_participant_id_7ff3b9f5_fk_database_participant_id` (`participant_id`),
  CONSTRAINT `database_parti_health_card_id_3335de85_fk_database_healthcard_id` FOREIGN KEY (`health_card_id`) REFERENCES `database_healthcard` (`id`),
  CONSTRAINT `database_part_participant_id_7ff3b9f5_fk_database_participant_id` FOREIGN KEY (`participant_id`) REFERENCES `database_participant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_participantanswer`
--

LOCK TABLES `database_participantanswer` WRITE;
/*!40000 ALTER TABLE `database_participantanswer` DISABLE KEYS */;
INSERT INTO `database_participantanswer` VALUES (1,'6.5',11,4,'3.5','b'),(2,'3',7,4,'7','a'),(3,'5',7,4,'5','both'),(4,'6.5',9,4,'3.5','a'),(5,'3.5',9,5,'6.5','both'),(6,'6.5',10,5,'3.5','a');
/*!40000 ALTER TABLE `database_participantanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'corsheaders','corsmodel'),(7,'database','healthcard'),(8,'database','healthstate'),(10,'database','participant'),(11,'database','participantanswer'),(6,'sessions','session');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-08-27 08:39:24'),(2,'auth','0001_initial','2016-08-27 08:39:31'),(3,'admin','0001_initial','2016-08-27 08:39:34'),(4,'contenttypes','0002_remove_content_type_name','2016-08-27 08:39:35'),(5,'auth','0002_alter_permission_name_max_length','2016-08-27 08:39:36'),(6,'auth','0003_alter_user_email_max_length','2016-08-27 08:39:37'),(7,'auth','0004_alter_user_username_opts','2016-08-27 08:39:37'),(8,'auth','0005_alter_user_last_login_null','2016-08-27 08:39:38'),(9,'auth','0006_require_contenttypes_0002','2016-08-27 08:39:38'),(10,'database','0001_initial','2016-08-27 08:39:39'),(11,'database','0002_auto_20160817_0035','2016-08-27 08:39:41'),(12,'sessions','0001_initial','2016-08-27 08:39:42'),(13,'database','0003_participant','2016-09-10 04:09:45'),(14,'database','0004_participant_health','2016-09-10 04:47:05'),(15,'database','0005_participantanswer','2016-09-10 05:16:44'),(16,'database','0006_auto_20160910_0554','2016-09-10 05:54:50'),(17,'database','0007_participantanswer_answer','2016-09-10 06:27:30');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
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

-- Dump completed on 2016-09-11  7:03:49
