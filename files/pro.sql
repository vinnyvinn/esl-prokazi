-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: prokazi
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `action` enum('created','updated','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `log_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `log_type_title` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `log_type_id` int(11) NOT NULL DEFAULT '0',
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `log_for` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `log_for_id` int(11) NOT NULL DEFAULT '0',
  `log_for2` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_for_id2` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,'2018-03-23 12:03:03',5,'created','task','Other',1,NULL,'project',1,'',0,0),(2,'2018-04-12 08:01:46',5,'created','milestone','Fencing Complete',1,NULL,'project',1,'',0,0),(3,'2018-04-12 08:01:50',5,'created','task','Purchase of fencing materials',1,NULL,'project',1,'',0,0),(4,'2018-04-12 08:06:15',5,'created','task','FEncing',2,NULL,'project',1,'',0,0),(5,'2018-04-12 08:08:23',94,'updated','task','FEncing',2,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 25%\";s:2:\"to\";s:17:\"in_progress - 50%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:50;}}','project',1,'',0,0),(6,'2018-04-12 08:14:22',100,'created','task_comment','Fencing complete as of now',1,NULL,'project',1,'task',1,0),(7,'2018-04-12 08:14:42',100,'updated','task','Purchase of fencing materials',1,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:50;}}','project',1,'',0,0),(8,'2018-04-12 08:24:58',5,'created','project_comment','Test Comment',2,NULL,'project',1,'',0,0),(9,'2018-04-12 08:28:48',100,'created','task_comment','all materials supplied',3,NULL,'project',1,'task',1,0),(10,'2018-04-12 08:29:33',5,'created','task_comment','thanks',4,NULL,'project',1,'task',1,0),(11,'2018-04-12 08:33:07',100,'updated','task','Purchase of fencing materials',1,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:2:\"50\";s:2:\"to\";i:100;}}','project',1,'',0,0),(12,'2018-04-12 08:38:58',5,'updated','task','Purchase of fencing materials',1,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:3:\"100\";s:2:\"to\";i:0;}}','project',1,'',0,0),(13,'2018-04-12 08:46:59',5,'created','project_comment','AR',5,NULL,'project',1,'',0,0),(14,'2018-04-12 11:59:44',5,'created','task','demo task',3,NULL,'project',2,'',0,0),(15,'2018-04-12 12:09:58',5,'created','task','demo 3',4,NULL,'project',2,'',0,0),(16,'2018-04-12 13:49:26',100,'updated','task','FEncing',2,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:2:\"50\";s:2:\"to\";i:100;}}','project',1,'',0,0),(17,'2018-04-13 12:17:14',5,'updated','task','FEncing',2,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:3:\"100\";s:2:\"to\";i:0;}}','project',2,'',0,0),(18,'2018-04-19 13:06:56',5,'created','task','Valuation',5,NULL,'project',9,'',0,0),(19,'2018-04-23 09:14:27',102,'created','task','Recruitment of interns',6,NULL,'project',10,'',0,0),(20,'2018-04-26 13:12:54',5,'created','task','demo task',7,NULL,'project',6,'',0,0),(21,'2018-04-26 13:13:23',5,'created','task_comment','gdfsgdfbdf',6,NULL,'project',6,'task',7,0),(22,'2018-05-05 16:21:42',5,'created','milestone','ESL Agency Go-Live',2,NULL,'project',11,'',0,0),(23,'2018-05-05 16:22:10',5,'created','milestone','Sage, LPO Go-Live',3,NULL,'project',11,'',0,0),(24,'2018-05-05 16:27:17',5,'created','task','Payroll Training ',8,NULL,'project',11,'',0,0),(25,'2018-05-05 16:28:27',5,'created','task','Payroll Processing and Comparison',9,NULL,'project',11,'',0,0),(26,'2018-05-05 16:30:17',5,'created','task','Pro-Kazi Legal , System Training',10,NULL,'project',11,'',0,0),(27,'2018-05-05 16:31:18',5,'created','task','Technical MOdule Learning',11,NULL,'project',11,'',0,0),(28,'2018-05-05 16:32:27',5,'created','task','Technical Module Go-Live',12,NULL,'project',11,'',0,0),(29,'2018-05-05 16:32:38',5,'updated','task','Technical Module Go-Live',12,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 50%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:50;}}','project',11,'',0,0),(30,'2018-05-05 16:37:53',5,'created','task','HR System, Main System Training',13,NULL,'project',11,'',0,0),(31,'2018-05-05 16:38:47',5,'created','task','HR System Go-Live',14,NULL,'project',11,'',0,0),(32,'2018-05-05 16:39:40',5,'created','task','HR- Leave Management',15,NULL,'project',11,'',0,0),(33,'2018-05-05 16:42:01',5,'created','task','Appraisal - Employee Evaluation Go-Live',16,NULL,'project',11,'',0,0),(34,'2018-05-05 16:42:39',5,'created','task','HR-Travel Application Go-live',17,NULL,'project',11,'',0,0),(35,'2018-05-05 16:43:50',5,'updated','task','HR-Travel Application Go-live',17,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:1:\"5\";s:2:\"to\";s:3:\"102\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:3:\"117\";}}','project',11,'',0,0),(36,'2018-05-05 16:46:34',5,'created','task','Agency System Training',18,NULL,'project',11,'',0,0),(37,'2018-05-05 16:48:06',5,'created','task','Agency System Go-Live',19,NULL,'project',11,'',0,0),(38,'2018-05-05 16:49:31',5,'created','task','Sage, Go-Live',20,NULL,'project',11,'',0,0),(39,'2018-05-05 16:50:07',5,'updated','task','Sage, Go-Live',20,'a:2:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"3\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',11,'',0,0),(40,'2018-05-05 16:51:16',5,'created','task','ERP System Audit',21,NULL,'project',11,'',0,0),(41,'2018-05-07 11:21:30',99,'created','task_comment','As discussed Earlier, we need data keyed in the system',7,NULL,'project',11,'task',14,0),(42,'2018-05-07 12:09:52',99,'updated','task','Technical MOdule Learning',11,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}}','project',11,'',0,0),(43,'2018-05-07 12:09:54',99,'updated','task','Technical Module Go-Live',12,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:2:\"50\";s:2:\"to\";i:100;}}','project',11,'',0,0),(44,'2018-05-07 12:09:56',99,'updated','task','Sage, Go-Live',20,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',11,'',0,0),(45,'2018-05-07 12:44:00',102,'created','task_comment','System not yet live, pending a few configurations that are meant to make it more accurate.',8,NULL,'project',11,'task',17,0),(46,'2018-05-07 12:45:51',102,'created','task_comment','Process now fully Ok. Apart from LTA. After leave approval, who receives instructions to pay the 10k or rather who initiates it?',9,NULL,'project',11,'task',15,0),(47,'2018-05-09 09:15:49',109,'created','milestone','PREPARATION OF FOR VESSELS ALONGSIDE, WAITERS AND EXPECTED',4,NULL,'project',12,'',0,0),(48,'2018-05-09 09:20:43',5,'created','task','wrwr',22,NULL,'project',9,'',0,0),(49,'2018-05-09 09:21:15',5,'updated','task','wrwr',22,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',9,'',0,0),(50,'2018-05-09 09:22:03',5,'created','task','wwew',23,NULL,'project',12,'',0,0),(51,'2018-05-09 09:22:33',5,'updated','task','wwew',23,'a:1:{s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"94\";}}','project',12,'',0,0),(52,'2018-05-09 09:22:58',5,'created','task','dsvsdfd',24,NULL,'project',12,'',0,0),(53,'2018-05-09 09:23:48',5,'deleted','task','dsvsdfd',24,NULL,'project',12,NULL,NULL,0),(54,'2018-05-09 09:24:08',5,'deleted','task','Valuation',5,NULL,'project',9,NULL,NULL,0),(55,'2018-05-09 09:24:12',5,'deleted','task','wrwr',22,NULL,'project',9,NULL,NULL,0),(56,'2018-05-09 09:24:14',5,'deleted','task','wwew',23,NULL,'project',12,NULL,NULL,0),(57,'2018-05-09 09:24:49',109,'created','task','GENERAL OPERATIONS MEETING HELD ON 09.05.2018',25,NULL,'project',12,'',0,0),(58,'2018-05-09 09:25:14',109,'updated','task','GENERAL OPERATIONS MEETING HELD ON 09.05.2018',25,'a:2:{s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:1:\"4\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',12,'',0,0),(59,'2018-05-09 09:35:11',109,'created','milestone','PREPARATION FOR VESSELS ALONGSIDE, WAITERS AND EXPECTED',5,NULL,'project',12,'',0,0),(60,'2018-05-09 09:35:38',109,'updated','task','GENERAL OPERATIONS MEETING HELD ON 09.05.2018',25,'a:5:{s:5:\"title\";a:2:{s:4:\"from\";s:45:\"GENERAL OPERATIONS MEETING HELD ON 09.05.2018\";s:2:\"to\";s:15:\"SHIP OPERATIONS\";}s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"4\";s:2:\"to\";s:1:\"5\";}s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:3:\"109\";s:2:\"to\";s:3:\"116\";}}','project',12,'',0,0),(61,'2018-05-09 09:49:08',109,'created','task','CURRENT OPERATIONS',26,NULL,'project',12,'',0,0),(62,'2018-05-09 09:51:05',109,'created','milestone','TIMELY CLEARANCE OF VARIOUS SHIPMENTS',6,NULL,'project',12,'',0,0),(63,'2018-05-09 10:08:47',109,'created','task','FORWARDING OPERATIONS',27,NULL,'project',12,'',0,0),(64,'2018-05-09 10:10:22',109,'updated','task','FORWARDING OPERATIONS',27,'a:4:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:121:\"MTS - CTM 2*40 following up release, 4*20 sorting COC issue with KEBS and Prime steel 1*20 following up release and load.\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-09\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"0000-00-00\";s:2:\"to\";s:10:\"2018-05-09\";}}','project',12,'',0,0),(65,'2018-05-09 10:11:04',109,'updated','task','FORWARDING OPERATIONS',27,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',12,'',0,0),(66,'2018-05-09 10:13:10',109,'created','task','FORWARDING OPERATIONS',28,NULL,'project',12,'',0,0),(67,'2018-05-09 10:14:42',109,'created','task','FORWARDING OPERATIONS',29,NULL,'project',12,'',0,0),(68,'2018-05-09 10:16:00',109,'created','task','FORWARDING OPERATIONS',30,NULL,'project',12,'',0,0),(69,'2018-05-09 10:17:07',109,'created','task','FORWARDING OPERATIONS',31,NULL,'project',12,'',0,0),(70,'2018-05-09 10:23:09',109,'created','task','LOGISTICS OPERATIONS',32,NULL,'project',12,'',0,0),(71,'2018-05-09 10:24:21',109,'created','task','TECHNICAL ',33,NULL,'project',12,'',0,0),(72,'2018-05-09 10:25:52',109,'updated','task','TECHNICAL ',33,'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:69:\"All ESL assets Grabs, Hoppers and Trimmers in good working condition.\";s:2:\"to\";s:176:\"All ESL assets Grabs, Hoppers and Trimmers in good working condition. Following up authorization letter from KPA to position the  2 containers to be used as ESL office in port.\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',12,'',0,0),(73,'2018-05-09 10:30:14',109,'created','task','FINANCE',34,NULL,'project',12,'',0,0),(74,'2018-05-09 10:36:22',109,'updated','task','LOGISTICS OPERATIONS',32,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',12,'',0,0),(75,'2018-05-09 10:36:26',109,'updated','task','LOGISTICS OPERATIONS',32,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:3:\"100\";s:2:\"to\";i:0;}}','project',12,'',0,0),(76,'2018-05-09 10:36:48',109,'created','task_comment','Work in progress.',10,NULL,'project',12,'task',32,0),(77,'2018-05-09 13:08:24',102,'created','milestone','Letter submitted',7,NULL,'project',13,'',0,0),(78,'2018-05-09 13:08:41',102,'created','milestone','Response given by staff',8,NULL,'project',13,'',0,0),(79,'2018-05-09 13:09:27',102,'created','milestone','Method of re-payment planned',9,NULL,'project',13,'',0,0),(80,'2018-05-09 13:09:45',102,'created','milestone','Repayment started',10,NULL,'project',13,'',0,0),(81,'2018-05-09 13:22:47',102,'created','task','Former staff liability',35,NULL,'project',13,'',0,0),(82,'2018-05-09 13:23:26',102,'updated','task','Former staff liability',35,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:3:\"240\";}}','project',13,'',0,0),(83,'2018-05-09 13:25:16',102,'created','milestone','Renegotiated rate',11,NULL,'project',13,'',0,0),(84,'2018-05-09 13:27:33',102,'created','task','Renegotiation of Agency fee with Manuchar Kenya Ltd',36,NULL,'project',13,'',0,0),(85,'2018-05-09 13:29:00',102,'created','milestone','Payment of amount owed',12,NULL,'project',13,'',0,0),(86,'2018-05-09 13:29:52',102,'created','task','Smit Salvage Debt Collection',37,NULL,'project',13,'',0,0),(87,'2018-05-09 13:31:54',102,'created','task','Aspida Debt Collection',38,NULL,'project',13,'',0,0),(88,'2018-05-09 13:32:15',102,'updated','task','Smit Salvage Debt Collection',37,'a:1:{s:11:\"assigned_to\";a:2:{s:4:\"from\";s:3:\"102\";s:2:\"to\";s:2:\"91\";}}','project',13,'',0,0),(89,'2018-05-09 13:33:30',102,'created','task','Med Brokerage debt collection',39,NULL,'project',13,'',0,0),(90,'2018-05-09 13:35:00',102,'created','task','Prote AS/Medship/UMS  debt collection',40,NULL,'project',13,'',0,0),(91,'2018-05-09 13:36:39',102,'created','task','Citadel Maritime debt collection',41,NULL,'project',13,'',0,0),(92,'2018-05-09 13:45:07',102,'created','task','Superfoam debt collection',42,NULL,'project',13,'',0,0),(93,'2018-05-09 13:46:17',102,'created','task','Tsavo Lite debt collection',43,NULL,'project',13,'',0,0),(94,'2018-05-09 13:49:09',102,'created','milestone','Approval of proposal',13,NULL,'project',13,'',0,0),(95,'2018-05-09 13:50:44',102,'created','task','Means of controlling courier cost in Hub Office - Rider approach was given',44,NULL,'project',13,'',0,0),(96,'2018-05-09 13:52:02',102,'created','milestone','Confirmation of all container deposits',14,NULL,'project',13,'',0,0),(97,'2018-05-09 13:54:19',102,'created','task','Container deposits confirmation',45,NULL,'project',13,'',0,0),(98,'2018-05-09 13:55:25',102,'created','milestone','Fabrication of the container',15,NULL,'project',13,'',0,0),(99,'2018-05-09 13:56:40',102,'created','task','Fabrication of a 2\'20\'\' container into an office & store',46,NULL,'project',13,'',0,0),(100,'2018-05-09 13:57:47',102,'created','milestone','Acquisition of land space & containers',16,NULL,'project',13,'',0,0),(101,'2018-05-09 13:59:21',102,'created','task','Two conntainers for Lamu Office',47,NULL,'project',13,'',0,0),(102,'2018-05-09 14:00:00',92,'created','task_comment','Fabrication of store container completed and awaiting COM who working on getting approval from KPA for the containers to enter the port and be placed at berth no 9 yard.',11,NULL,'project',13,'task',46,0),(103,'2018-05-09 14:00:32',102,'created','task','Buzeki Debt Collection',48,NULL,'project',13,'',0,0),(104,'2018-05-09 14:00:58',102,'updated','task','Buzeki Debt Collection',48,'a:1:{s:11:\"description\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:31:\"Awaiting shareholders directive\";}}','project',13,'',0,0),(105,'2018-05-09 14:03:11',102,'created','task','Savannah Cement Debt Collection',49,NULL,'project',13,'',0,0),(106,'2018-05-09 14:04:28',102,'created','task','Stam Shipping Debt Collection',50,NULL,'project',13,'',0,0),(107,'2018-05-09 14:06:20',102,'created','task','ARM Debt Collection',51,NULL,'project',13,'',0,0),(108,'2018-05-09 14:07:21',102,'created','task','Awanad Debt follow-up',52,NULL,'project',13,'',0,0),(109,'2018-05-09 14:08:15',102,'created','milestone','Repayment of claim',17,NULL,'project',13,'',0,0),(110,'2018-05-09 14:10:03',102,'created','task','MD/CEO Baggage Delay',53,NULL,'project',13,'',0,0),(111,'2018-05-09 14:11:07',102,'created','milestone','Intake',18,NULL,'project',13,'',0,0),(112,'2018-05-09 14:13:09',102,'created','task','Season 5 internship recruitment',54,NULL,'project',13,'',0,0),(113,'2018-05-09 14:15:24',102,'created','milestone','Submission of reports by all auditors',19,NULL,'project',13,'',0,0),(114,'2018-05-09 14:17:58',102,'created','task','QMS Audits 1st lEG',55,NULL,'project',13,'',0,0),(115,'2018-05-09 14:26:04',102,'updated','task','Recruitment of interns',6,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',10,'',0,0),(116,'2018-05-09 14:26:15',102,'updated','task','Recruitment of interns',6,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:11:\"done - 100%\";s:2:\"to\";s:10:\"to_do - 0%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:3:\"100\";s:2:\"to\";i:0;}}','project',10,'',0,0),(117,'2018-05-09 14:30:44',102,'created','milestone','Expedited invoicing',20,NULL,'project',10,'',0,0),(118,'2018-05-09 14:32:18',102,'updated','task','Recruitment of interns',6,'a:8:{s:5:\"title\";a:2:{s:4:\"from\";s:22:\"Recruitment of interns\";s:2:\"to\";s:36:\"Resolution of Invoicing delay matter\";}s:11:\"description\";a:2:{s:4:\"from\";s:18:\"Complete by Friday\";s:2:\"to\";s:3:\"WIP\";}s:12:\"milestone_id\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"20\";}s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:17:\"in_progress - 25%\";}s:10:\"start_date\";a:2:{s:4:\"from\";s:10:\"2018-04-23\";s:2:\"to\";s:10:\"2018-04-12\";}s:8:\"deadline\";a:2:{s:4:\"from\";s:10:\"2018-04-27\";s:2:\"to\";s:10:\"2018-05-31\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:3:\"117\";s:2:\"to\";s:3:\"107\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:0:\"\";s:2:\"to\";s:2:\"91\";}}','project',10,'',0,0),(119,'2018-05-09 14:33:09',102,'created','milestone','Weekly Minutes',21,NULL,'project',10,'',0,0),(120,'2018-05-09 14:34:21',102,'created','task','Weekly Debtor Meetings',56,NULL,'project',10,'',0,0),(121,'2018-05-09 14:35:36',102,'created','milestone','Registration of staff with driving schools',22,NULL,'project',10,'',0,0),(122,'2018-05-09 14:36:38',102,'created','task','Driving school training for Operation staff',57,NULL,'project',10,'',0,0),(123,'2018-05-09 14:38:02',102,'created','milestone','Submission of proposals',23,NULL,'project',10,'',0,0),(124,'2018-05-09 14:38:44',102,'created','task','Identification & Mapping of market niche to enable strategic move',58,NULL,'project',10,'',0,0),(125,'2018-05-09 14:40:06',102,'updated','task','Identification & Mapping of market niche to enable strategic move',58,'a:3:{s:5:\"title\";a:2:{s:4:\"from\";s:65:\"Identification & Mapping of market niche to enable strategic move\";s:2:\"to\";s:145:\"Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.\";}s:6:\"points\";a:2:{s:4:\"from\";s:1:\"1\";s:2:\"to\";s:1:\"5\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:2:\"91\";s:2:\"to\";s:5:\"91,99\";}}','project',10,'',0,0),(126,'2018-05-09 14:41:31',102,'created','task','Disposal of Assests through CSR',59,NULL,'project',10,'',0,0),(127,'2018-05-09 14:42:57',102,'created','milestone','Sourcing client',24,NULL,'project',10,'',0,0),(128,'2018-05-09 14:43:49',102,'created','task','Gensets  - Creating demand/business for Gensets',60,NULL,'project',10,'',0,0),(129,'2018-05-09 17:43:22',5,'created','task','Other test',61,NULL,'project',14,'',0,0),(130,'2018-05-09 17:43:48',5,'deleted','task','Other test',61,NULL,'project',14,NULL,NULL,0),(131,'2018-05-10 06:12:55',102,'created','milestone','The actual document',25,NULL,'project',10,'',0,0),(132,'2018-05-10 06:13:08',102,'created','task','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers',62,NULL,'project',10,'',0,0),(133,'2018-05-10 06:13:32',102,'updated','task','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers',62,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:2:\"40\";}}','project',10,'',0,0),(134,'2018-05-10 06:17:21',102,'created','milestone','Registration Certificate',26,NULL,'project',10,'',0,0),(135,'2018-05-10 06:18:27',102,'created','task','ESL Logo Copyright Registration',63,NULL,'project',10,'',0,0),(136,'2018-05-10 06:20:44',102,'created','milestone','Submission of workplan by Finance, Audit, Legal and HR to CM-ESLUG',27,NULL,'project',10,'',0,0),(137,'2018-05-10 06:21:49',102,'created','task','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.',64,NULL,'project',10,'',0,0),(138,'2018-05-10 06:22:52',102,'created','milestone','Availability of power at the yard',28,NULL,'project',10,'',0,0),(139,'2018-05-10 06:24:11',102,'created','task','KPLC Power installation at Mariakani Yard',65,NULL,'project',10,'',0,0),(140,'2018-05-10 06:26:33',102,'created','milestone','Approved two policies per month',29,NULL,'project',10,'',0,0),(141,'2018-05-10 06:27:26',102,'created','task','HR Policies Review',66,NULL,'project',10,'',0,0),(142,'2018-05-10 06:28:14',102,'created','milestone','Finalization of training',30,NULL,'project',10,'',0,0),(143,'2018-05-10 06:29:17',102,'created','task','ERP Trainings to staff',67,NULL,'project',10,'',0,0),(144,'2018-05-10 06:30:19',102,'created','milestone','Actual Go live on ESL',31,NULL,'project',10,'',0,0),(145,'2018-05-10 06:31:08',102,'created','task','ERP Go Live',68,NULL,'project',10,'',0,0),(146,'2018-05-10 06:31:52',102,'created','milestone','Name changed and engraved',32,NULL,'project',10,'',0,0),(147,'2018-05-10 06:33:10',102,'created','task','Corporate Support Department Name Change',69,NULL,'project',10,'',0,0),(148,'2018-05-10 06:34:09',102,'created','milestone','Conducting training',33,NULL,'project',10,'',0,0),(149,'2018-05-10 06:34:56',102,'created','task','Negotiation Skills Training',70,NULL,'project',10,'',0,0),(150,'2018-05-10 06:36:17',102,'created','milestone','Renting and occupation of apartment',34,NULL,'project',10,'',0,0),(151,'2018-05-10 06:37:23',102,'created','task','Renting of Apartment for visiting staff in Nairobi',71,NULL,'project',10,'',0,0),(152,'2018-05-10 07:45:02',102,'updated','task','QMS Audits 1st lEG',55,'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:18:\"QMS Audits 1st lEG\";s:2:\"to\";s:18:\"QMS Audits 1st Leg\";}}','project',13,'',0,0),(153,'2018-05-10 07:46:58',102,'created','milestone','Placement of a Sales - cum - Operations personnel to man the area',35,NULL,'project',10,'',0,0),(154,'2018-05-10 07:48:02',102,'created','task','Recruitment for Lamu',72,NULL,'project',10,'',0,0),(155,'2018-05-10 07:49:03',102,'updated','task','Recruitment for Lamu',72,'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:20:\"Recruitment for Lamu\";s:2:\"to\";s:66:\"Recruitment for Lamu (or reassignment due to impending ERP change)\";}}','project',10,'',0,0),(156,'2018-05-10 07:50:42',102,'created','milestone','Incorporation of survey in ERP',36,NULL,'project',10,'',0,0),(157,'2018-05-10 07:51:27',102,'created','task','Customer Satisfaction Survey',73,NULL,'project',10,'',0,0),(158,'2018-05-10 13:12:53',109,'created','task','SHIPS OPERATION',74,NULL,'project',15,'',0,0),(159,'2018-05-10 13:22:31',109,'updated','task','SHIPS OPERATION',74,'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:457:\"MV Navios Hios sailed yesterday 09.05.2018. \nVessel alongside: MV Bomar Oyster stc bulk clinker receiver NCCL discharge in steady progress ETD 17/05 agw.  MV Papa John receiver Hima cement stc bugged slug discharged in steady progress ETD 14/05 agw. Challenge: Rain and bad weather.\nWaiters: MV St. Cergue receiver SCL documentation in progress awaiting taxes payment.\nExpected: MV Nord Bering  eta 19.05.2018 receiver RAI cement following up documentation.\";s:2:\"to\";s:564:\"MV Navios Hios sailed yesterday 09.05.2018. \nVessel alongside: MV Bomar Oyster discharging bulk clinker receiver NCCL discharge in steady progress ETD 17/05 agw.  \nMV Papa John receiver Hima cement  discharging bugged slug discharge in steady progress ETD 14/05 agw. Challenge: Rain and bad weather.\nWaiters: MV St. Cergue receiver SCL documentation in progress awaiting taxes payment.\nExpected: MV Nord Bering  eta 19.05.2018 receiver RAI cement following up documentation.\n                  MV CISL Leene eta 12.05.2018 to load transhipment boxes and shipspares.\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',15,'',0,0),(160,'2018-05-10 13:26:34',123,'created','task_comment','Peter kindly update',12,NULL,'project',13,'task',54,0),(161,'2018-05-10 13:26:34',123,'created','task_comment','Peter kindly update',13,NULL,'project',13,'task',54,0),(162,'2018-05-10 13:29:00',123,'created','task_comment','Joylinah please update on status',14,NULL,'project',10,'task',71,0),(163,'2018-05-10 13:31:36',109,'created','task','FORWARDING OPERATIONS',75,NULL,'project',15,'',0,0),(164,'2018-05-10 13:54:43',109,'updated','task','FORWARDING OPERATIONS',75,'a:2:{s:11:\"description\";a:2:{s:4:\"from\";s:187:\"REGIONAL CFS - Dominic yesterday exited MKE, SAL 6 boxes to load balance 14 today. IFFCO last 1x40 exited. SAL lot of 5x20 exited last 2 boxes.\nMTS CFS - Mangale exited Prime Steel 1x20, \";s:2:\"to\";s:596:\"REGIONAL CFS - Dominic yesterday exited MKE SAL 6 boxes, to load balance 14 today. IFFCO last 1x40 exited. SAL lot of 5x20 exited last 2 boxes.\nMTS CFS            - Mangale exited Prime Steel 1x20, CTM 2x40 following up verification account.\nINTERPEL CFS   - Shikhonga exited Quest works 4x20.\nFFK CFS              - Casual  exited SCL lcl and verified Maisha Mabati lcl.\nGLP CFS             - Casual to verify NCCL 2 lcl shipments.\nBFT CFS              - Casual Kenagro 1x20 pre-verification. \nUNIFREIGHT CFS: Casual processing ESL UG unit.\nLONGROOM     - Salim following up Asante EPZ messaging\";}s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',15,'',0,0),(165,'2018-05-10 14:03:54',109,'created','task','LOGISTICS OPERATIONS',76,NULL,'project',15,'',0,0),(166,'2018-05-10 14:06:03',109,'created','task','TRANSPORT OPERATIONS',77,NULL,'project',15,'',0,0),(167,'2018-05-10 14:10:54',109,'created','task','TECHNICAL',78,NULL,'project',15,'',0,0),(168,'2018-05-10 14:28:30',109,'created','task','FINANCE',79,NULL,'project',15,'',0,0),(169,'2018-05-10 14:34:35',109,'updated','task','SHIPS OPERATION',74,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',15,'',0,0),(170,'2018-05-10 14:36:15',109,'updated','task','FORWARDING OPERATIONS',75,'a:3:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}s:11:\"assigned_to\";a:2:{s:4:\"from\";s:3:\"109\";s:2:\"to\";s:3:\"152\";}s:13:\"collaborators\";a:2:{s:4:\"from\";s:3:\"118\";s:2:\"to\";s:23:\"118,158,162,163,159,142\";}}','project',15,'',0,0),(171,'2018-05-11 09:23:10',102,'created','milestone','1. Whole department employee evaluations 2. HOD evaluation of entire department 3. HR Reporting',37,NULL,'project',16,'',0,0),(172,'2018-05-11 09:28:18',102,'created','task','Performance Evaluation',80,NULL,'project',16,'',0,0),(173,'2018-05-11 09:28:36',102,'updated','task','Performance Evaluation',80,'a:1:{s:5:\"title\";a:2:{s:4:\"from\";s:22:\"Performance Evaluation\";s:2:\"to\";s:30:\"Q1 2018 Performance Evaluation\";}}','project',16,'',0,0),(174,'2018-05-11 12:59:27',102,'created','task_comment','Hello Francis, was this week\'s meeting held? ',15,NULL,'project',10,'task',56,0),(175,'2018-05-12 08:45:28',102,'created','task_comment','The following Evaluations are active on HRIS:\n1. Ships Agency\n2. Sales & marketing - BDM, CSMM & Sales Exec.\n3. Administration\n4. Finance\n5. HRD\n6. Internal Audit',16,NULL,'project',16,'task',80,0),(176,'2018-05-14 07:57:48',141,'updated','task','SHIPS OPERATION',74,'a:1:{s:9:\"max_hours\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";s:0:\"\";}}','project',15,'',0,0),(177,'2018-05-15 06:08:53',102,'created','milestone','High quality materials',38,NULL,'project',10,'',0,0),(178,'2018-05-15 06:09:32',102,'created','task','Quality of PPE',81,NULL,'project',10,'',0,0),(179,'2018-05-15 06:11:01',102,'created','task','Segmentation of customers (which is corporate etc)',82,NULL,'project',10,'',0,0),(180,'2018-05-15 06:11:57',102,'created','task','Port infrastructure oportunities',83,NULL,'project',10,'',0,0),(181,'2018-05-15 06:13:44',102,'created','task','Top Steel recovery',84,NULL,'project',10,'',0,0),(182,'2018-05-15 06:14:50',102,'created','task','Ecobank South Sudan',85,NULL,'project',10,'',0,0),(183,'2018-05-15 06:16:26',102,'created','task','Profit Sharing within group of companies',86,NULL,'project',10,'',0,0),(184,'2018-05-15 06:25:28',92,'updated','task','KPLC Power installation at Mariakani Yard',65,'a:1:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 50%\";s:2:\"to\";s:17:\"in_progress - 75%\";}}','project',10,'',0,0),(185,'2018-06-26 06:36:52',5,'created','task','Ds',87,NULL,'project',10,'',0,0),(186,'2018-06-26 06:37:21',5,'created','task_comment','SCas',17,NULL,'project',10,'task',59,0),(187,'2018-06-26 06:37:25',5,'created','task_comment','SCas',18,NULL,'project',10,'task',59,0),(188,'2018-06-26 06:38:02',5,'created','task_comment','zXCasd',19,NULL,'project',10,'task',69,0),(189,'2018-06-26 06:38:05',5,'created','task_comment','zXCasd',20,NULL,'project',10,'task',69,0),(190,'2018-07-09 10:09:01',5,'created','task_comment','good',21,NULL,'project',10,'task',72,0),(191,'2018-07-09 10:09:03',5,'created','task_comment','good',22,NULL,'project',10,'task',72,0),(192,'2018-07-09 10:09:09',5,'created','task_comment','good',23,NULL,'project',10,'task',72,0),(193,'2018-07-09 10:09:10',5,'created','task_comment','good',24,NULL,'project',10,'task',72,0),(194,'2018-07-09 10:09:15',5,'created','task_comment','good',25,NULL,'project',10,'task',72,0),(195,'2018-07-09 10:09:30',5,'created','task_comment','goodsa',26,NULL,'project',10,'task',72,0),(196,'2018-07-09 10:09:31',5,'created','task_comment','goodsa',27,NULL,'project',10,'task',72,0),(197,'2018-07-09 10:09:31',5,'created','task_comment','goodsa',28,NULL,'project',10,'task',72,0),(198,'2018-07-12 11:43:05',5,'created','task_comment','wow',29,NULL,'project',15,'task',77,0),(199,'2018-07-12 13:34:55',5,'created','task_comment','asdasd',30,NULL,'project',15,'task',78,0),(200,'2018-07-17 09:35:22',5,'updated','task','Customer Satisfaction Survey',73,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',10,'',0,0),(201,'2018-07-17 09:40:31',5,'updated','task','Disposal of Assests through CSR',59,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:17:\"in_progress - 75%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',10,'',0,0),(202,'2018-07-17 09:41:39',5,'updated','task','Driving school training for Operation staff',57,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',10,'',0,0),(203,'2018-07-17 09:41:43',5,'updated','task','Ds',87,'a:2:{s:6:\"status\";a:2:{s:4:\"from\";s:10:\"to_do - 0%\";s:2:\"to\";s:11:\"done - 100%\";}s:6:\"hesabu\";a:2:{s:4:\"from\";s:1:\"0\";s:2:\"to\";i:100;}}','project',10,'',0,0),(204,'2018-07-17 10:49:14',5,'created','task','Resolution of Invoicing delay matter',88,NULL,'project',17,'',0,0),(205,'2018-07-17 10:49:14',5,'created','task','Weekly Debtor Meetings',89,NULL,'project',17,'',0,0),(206,'2018-07-17 10:49:14',5,'created','task','Driving school training for Operation staff',90,NULL,'project',17,'',0,0),(207,'2018-07-17 10:49:14',5,'created','task','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.',91,NULL,'project',17,'',0,0),(208,'2018-07-17 10:49:14',5,'created','task','Disposal of Assests through CSR',92,NULL,'project',17,'',0,0),(209,'2018-07-17 10:49:15',5,'created','task','Gensets  - Creating demand/business for Gensets',93,NULL,'project',17,'',0,0),(210,'2018-07-17 10:49:15',5,'created','task','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers',94,NULL,'project',17,'',0,0),(211,'2018-07-17 10:49:15',5,'created','task','ESL Logo Copyright Registration',95,NULL,'project',17,'',0,0),(212,'2018-07-17 10:49:15',5,'created','task','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.',96,NULL,'project',17,'',0,0),(213,'2018-07-17 10:49:15',5,'created','task','KPLC Power installation at Mariakani Yard',97,NULL,'project',17,'',0,0),(214,'2018-07-17 10:49:15',5,'created','task','HR Policies Review',98,NULL,'project',17,'',0,0),(215,'2018-07-17 10:49:15',5,'created','task','ERP Trainings to staff',99,NULL,'project',17,'',0,0),(216,'2018-07-17 10:49:15',5,'created','task','ERP Go Live',100,NULL,'project',17,'',0,0),(217,'2018-07-17 10:49:15',5,'created','task','Corporate Support Department Name Change',101,NULL,'project',17,'',0,0),(218,'2018-07-17 10:49:15',5,'created','task','Negotiation Skills Training',102,NULL,'project',17,'',0,0),(219,'2018-07-17 10:49:16',5,'created','task','Renting of Apartment for visiting staff in Nairobi',103,NULL,'project',17,'',0,0),(220,'2018-07-17 10:49:16',5,'created','task','Recruitment for Lamu (or reassignment due to impending ERP change)',104,NULL,'project',17,'',0,0),(221,'2018-07-17 10:49:16',5,'created','task','Customer Satisfaction Survey',105,NULL,'project',17,'',0,0),(222,'2018-07-17 10:49:16',5,'created','task','Quality of PPE',106,NULL,'project',17,'',0,0),(223,'2018-07-17 10:49:16',5,'created','task','Segmentation of customers (which is corporate etc)',107,NULL,'project',17,'',0,0),(224,'2018-07-17 10:49:16',5,'created','task','Port infrastructure oportunities',108,NULL,'project',17,'',0,0),(225,'2018-07-17 10:49:16',5,'created','task','Top Steel recovery',109,NULL,'project',17,'',0,0),(226,'2018-07-17 10:49:16',5,'created','task','Ecobank South Sudan',110,NULL,'project',17,'',0,0),(227,'2018-07-17 10:49:16',5,'created','task','Profit Sharing within group of companies',111,NULL,'project',17,'',0,0),(228,'2018-07-17 10:49:17',5,'created','task','Ds',112,NULL,'project',17,'',0,0),(229,'2018-07-17 11:26:17',5,'created','task','Resolution of Invoicing delay matter',113,NULL,'project',21,'',0,0),(230,'2018-07-17 11:26:17',5,'created','task','Weekly Debtor Meetings',114,NULL,'project',21,'',0,0),(231,'2018-07-17 11:26:17',5,'created','task','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.',115,NULL,'project',21,'',0,0),(232,'2018-07-17 11:26:17',5,'created','task','Gensets  - Creating demand/business for Gensets',116,NULL,'project',21,'',0,0),(233,'2018-07-17 11:26:17',5,'created','task','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers',117,NULL,'project',21,'',0,0),(234,'2018-07-17 11:26:17',5,'created','task','ESL Logo Copyright Registration',118,NULL,'project',21,'',0,0),(235,'2018-07-17 11:26:17',5,'created','task','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.',119,NULL,'project',21,'',0,0),(236,'2018-07-17 11:26:17',5,'created','task','KPLC Power installation at Mariakani Yard',120,NULL,'project',21,'',0,0),(237,'2018-07-17 11:26:17',5,'created','task','HR Policies Review',121,NULL,'project',21,'',0,0),(238,'2018-07-17 11:26:17',5,'created','task','ERP Trainings to staff',122,NULL,'project',21,'',0,0),(239,'2018-07-17 11:26:18',5,'created','task','ERP Go Live',123,NULL,'project',21,'',0,0),(240,'2018-07-17 11:26:18',5,'created','task','Negotiation Skills Training',124,NULL,'project',21,'',0,0),(241,'2018-07-17 11:26:18',5,'created','task','Renting of Apartment for visiting staff in Nairobi',125,NULL,'project',21,'',0,0),(242,'2018-07-17 11:26:18',5,'created','task','Recruitment for Lamu (or reassignment due to impending ERP change)',126,NULL,'project',21,'',0,0),(243,'2018-07-17 11:26:18',5,'created','task','Quality of PPE',127,NULL,'project',21,'',0,0),(244,'2018-07-17 11:26:18',5,'created','task','Segmentation of customers (which is corporate etc)',128,NULL,'project',21,'',0,0),(245,'2018-07-17 11:26:18',5,'created','task','Port infrastructure oportunities',129,NULL,'project',21,'',0,0),(246,'2018-07-17 11:26:18',5,'created','task','Top Steel recovery',130,NULL,'project',21,'',0,0),(247,'2018-07-17 11:26:18',5,'created','task','Ecobank South Sudan',131,NULL,'project',21,'',0,0),(248,'2018-07-17 11:26:18',5,'created','task','Profit Sharing within group of companies',132,NULL,'project',21,'',0,0),(249,'2018-07-17 11:37:32',5,'created','task','Resolution of Invoicing delay matter',133,NULL,'project',23,'',0,0),(250,'2018-07-17 11:37:32',5,'created','task','Weekly Debtor Meetings',134,NULL,'project',23,'',0,0),(251,'2018-07-17 11:37:32',5,'created','task','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.',135,NULL,'project',23,'',0,0),(252,'2018-07-17 11:37:32',5,'created','task','Gensets  - Creating demand/business for Gensets',136,NULL,'project',23,'',0,0),(253,'2018-07-17 11:37:32',5,'created','task','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers',137,NULL,'project',23,'',0,0),(254,'2018-07-17 11:37:32',5,'created','task','ESL Logo Copyright Registration',138,NULL,'project',23,'',0,0),(255,'2018-07-17 11:37:32',5,'created','task','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.',139,NULL,'project',23,'',0,0),(256,'2018-07-17 11:37:32',5,'created','task','KPLC Power installation at Mariakani Yard',140,NULL,'project',23,'',0,0),(257,'2018-07-17 11:37:32',5,'created','task','HR Policies Review',141,NULL,'project',23,'',0,0),(258,'2018-07-17 11:37:32',5,'created','task','ERP Trainings to staff',142,NULL,'project',23,'',0,0),(259,'2018-07-17 11:37:33',5,'created','task','ERP Go Live',143,NULL,'project',23,'',0,0),(260,'2018-07-17 11:37:33',5,'created','task','Negotiation Skills Training',144,NULL,'project',23,'',0,0),(261,'2018-07-17 11:37:33',5,'created','task','Renting of Apartment for visiting staff in Nairobi',145,NULL,'project',23,'',0,0),(262,'2018-07-17 11:37:33',5,'created','task','Recruitment for Lamu (or reassignment due to impending ERP change)',146,NULL,'project',23,'',0,0),(263,'2018-07-17 11:37:33',5,'created','task','Quality of PPE',147,NULL,'project',23,'',0,0),(264,'2018-07-17 11:37:33',5,'created','task','Segmentation of customers (which is corporate etc)',148,NULL,'project',23,'',0,0),(265,'2018-07-17 11:37:33',5,'created','task','Port infrastructure oportunities',149,NULL,'project',23,'',0,0),(266,'2018-07-17 11:37:33',5,'created','task','Top Steel recovery',150,NULL,'project',23,'',0,0),(267,'2018-07-17 11:37:33',5,'created','task','Ecobank South Sudan',151,NULL,'project',23,'',0,0),(268,'2018-07-17 11:37:33',5,'created','task','Profit Sharing within group of companies',152,NULL,'project',23,'',0,0),(269,'2018-09-12 09:14:07',5,'created','task','task 5',153,NULL,'project',24,'',0,0),(270,'2018-09-12 09:15:44',5,'created','task','mytask',154,NULL,'project',24,'',0,0),(271,'2018-09-27 06:30:18',5,'created','task_comment','qweqwe',31,NULL,'project',2,'task',1,0),(272,'2018-09-27 06:30:22',5,'created','task_comment','qweqwe',32,NULL,'project',2,'task',1,0),(273,'2019-03-28 12:04:03',5,'created','task_comment','e3ew',33,NULL,'project',24,'task',153,0),(274,'2019-03-28 12:06:17',5,'created','task','task 5',155,NULL,'project',28,'',0,0),(275,'2019-03-28 12:06:18',5,'created','task','mytask',156,NULL,'project',28,'',0,0);
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `asset_no` varchar(255) DEFAULT NULL,
  `code` mediumtext,
  `description` mediumtext,
  `track_by` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `warranty` varchar(255) DEFAULT '0000-00-00 00:00:00',
  `next_time_km` float DEFAULT '0',
  `next_time_miles` float NOT NULL DEFAULT '0',
  `next_time_hours` varchar(255) DEFAULT NULL,
  `km_reading` float DEFAULT NULL,
  `machine_hours` float DEFAULT '0',
  `driver_id` int(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year_of_make` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `year_of_reg` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `code_type` varchar(255) DEFAULT NULL,
  `miles_reading` float DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `next_service_date` varchar(255) DEFAULT NULL,
  `job_km_readings` varchar(255) DEFAULT NULL,
  `job_miles_readings` varchar(255) DEFAULT NULL,
  `job_machine_hours` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `asset_no` (`asset_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'2259','285','LAND ROVER VOGUE 3.6TDV 8',NULL,'range',0,'2018-06-08 09:57:29','2018-06-22',8000,0,'',250,0,21,'2018-06-30 08:36:13','2018-06-11','e456','2018-06-07','t324234',NULL,0,'0','2018-09-16','600','0',''),(2,'2260','ESL/MSA/FU/3212','CARTRACK GARGETS - GALOOLI',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',3455,0,'5645',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0','2019-04-01','345','0',''),(3,'2261','ESL/MSA/EQ/0216','TOYOTA FIELDER',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,'',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0','2019-04-05','0','0',''),(5,'2263','ESL/MSA/FU/0812','TOYOTA SUCCEED',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,2000,'',3000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0','2019-04-25','0','500',''),(6,'2264','X0053','TOYOTA HILUX DOUBLE CAB','','',0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,0,NULL,NULL,'','','','',NULL,0,'0',NULL,NULL,NULL,NULL),(7,'2302','77','HOPPER 5',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(8,'2303','AGY/016/ESL5','HOPPER 6',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(9,'2304','ESL/MSA/FU/00615','HOPPER SPREADER',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(10,'2305','ESL/MSA/EQ/2513','HOPPER 9',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(11,'2306','ESL/MSA/IT/0513','METALIC STORAGE BOX',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(12,'2307','ESL/MSA/FU/10214','HOPPER 1',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(13,'2308','AGY/016/ESL1','HOPPER 4',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(14,'2309','ESL/NBI/EQ/2012','HOPPER 10',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(15,'2310','386','TRIMMER LIFTING SLINGS',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(16,'2311','ERP/0001/ESL','HOPPER 7',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(17,'2312','AGY/016/ESL7','HOPPER 8',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(18,'2313','282','GRAB 1',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(19,'2314','AGY/014/ESL1','GRAB 2',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(20,'2315','AGY/014/ESL2','GRAB 3',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(21,'2316','AGY/014/ESL3','GRAB 4',NULL,NULL,0,'2018-06-08 09:57:29','0000-00-00 00:00:00',0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(40,'2262','KCC 168Z','TOYOTA VOXY',NULL,NULL,0,'2018-06-08 10:09:15','0000-00-00 00:00:00',0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0',NULL,NULL,NULL,NULL),(41,NULL,'','',NULL,'',0,'2018-09-11 13:40:43','',0,0,NULL,0,0,0,NULL,'','','','',NULL,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('incomplete','pending','approved','rejected','deleted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'incomplete',
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime DEFAULT NULL,
  `difference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `checked_at` datetime DEFAULT NULL,
  `reject_reason` text COLLATE utf8_unicode_ci,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `checked_by` (`checked_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'incomplete',125,0,6,'2018-04-20 10:00:00','2018-04-20 17:00:00','25200',NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'pending',85,5,9,'2018-05-15 22:00:00','2018-07-16 02:00:00','5284800',NULL,NULL,NULL,NULL,NULL,NULL,0),(3,'pending',84,5,9,'2018-07-15 10:00:00','2018-07-16 15:00:00','104400',NULL,NULL,NULL,NULL,NULL,NULL,0),(4,'pending',111,5,9,'2018-07-16 12:00:00','2018-07-16 13:00:00','3600',NULL,NULL,NULL,NULL,NULL,NULL,0),(5,'pending',105,5,9,'2018-07-17 04:00:00','2018-07-17 13:00:00','32400',NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'pending',101,5,9,'2018-07-16 22:00:00','2018-07-17 10:00:00','43200',NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'pending',129,5,9,'2018-07-15 22:00:00','2018-07-17 09:00:00','126000',NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'pending',94,23,12,'2018-09-11 22:00:00','2018-09-11 23:00:00','3600',NULL,NULL,NULL,NULL,NULL,NULL,0),(9,'pending',109,5,9,'2018-09-11 22:00:00','2018-09-12 02:00:00','14400',NULL,NULL,NULL,NULL,NULL,NULL,0),(10,'pending',104,5,9,'2018-09-12 00:00:00','2018-09-12 09:50:00','35400',NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'pending',108,5,9,'2018-09-12 00:00:00','2018-09-12 11:00:00','39600',NULL,NULL,NULL,NULL,NULL,NULL,0),(12,'pending',93,5,9,'2018-09-12 00:00:00','2018-09-12 10:00:00','36000',NULL,NULL,NULL,NULL,NULL,NULL,0),(13,'pending',94,22,9,'2018-09-11 22:00:00','2018-09-12 02:00:00','14400',NULL,NULL,NULL,NULL,NULL,NULL,0),(14,'pending',5,93,17,'2018-09-11 22:00:00','2018-09-12 10:00:00','43200',NULL,NULL,NULL,NULL,NULL,NULL,0),(15,'pending',97,36,13,'2018-09-12 03:00:00','2018-09-12 20:00:00','61200',NULL,NULL,NULL,NULL,NULL,NULL,0),(16,'pending',84,61,14,'2018-09-12 00:00:00','2018-09-11 21:55:00','7500',NULL,NULL,NULL,NULL,NULL,NULL,0),(17,'pending',83,5,9,'2018-09-11 22:00:00','2018-09-11 21:00:00','3600',NULL,NULL,NULL,NULL,'Uganda','dummy text',0),(18,'pending',83,68,10,'2018-09-11 23:00:00','2018-09-12 09:00:00','36000',NULL,NULL,NULL,NULL,'Tanzania','sample testing',0),(19,'pending',91,10,11,'2019-03-28 04:00:00','2019-03-28 15:00:00','39600',NULL,NULL,NULL,NULL,'Uganda','QWSQWDQW',0),(20,'pending',118,5,9,'2019-03-28 06:00:00','2019-03-28 17:00:00','39600',NULL,NULL,NULL,NULL,'Nairobi','THIS IS JUST DUMMY',0);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_types`
--

DROP TABLE IF EXISTS `business_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_types`
--

LOCK TABLES `business_types` WRITE;
/*!40000 ALTER TABLE `business_types` DISABLE KEYS */;
INSERT INTO `business_types` VALUES (1,'New','2018-01-22 21:05:34','2018-05-09 07:21:51',1),(2,'Annual Performance Review and Planning','2018-05-09 07:23:11',NULL,0),(3,'January Financials, Review & Mgt Meeting','2018-05-09 07:24:07',NULL,0),(4,'February Financials, Review & Mgt Meeting','2018-05-09 07:25:05',NULL,0),(5,'Q1 Financials, Review & Mgt Meeting','2018-05-09 07:25:38',NULL,0),(6,'April Financials, Review & Mgt Meeting','2018-05-09 07:26:17',NULL,0),(7,'June Financials, Review & Mgt Meeting','2018-05-09 07:26:48',NULL,0);
/*!40000 ALTER TABLE `business_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_types`
--

DROP TABLE IF EXISTS `call_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_types`
--

LOCK TABLES `call_types` WRITE;
/*!40000 ALTER TABLE `call_types` DISABLE KEYS */;
INSERT INTO `call_types` VALUES (1,'Visit','2018-01-22 18:38:42',NULL,0),(2,'Phone Call','2018-01-22 18:38:56',NULL,0),(3,'Email','2018-01-22 18:39:02',NULL,0);
/*!40000 ALTER TABLE `call_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque_details`
--

DROP TABLE IF EXISTS `cheque_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `cheque_amount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque_details`
--

LOCK TABLES `cheque_details` WRITE;
/*!40000 ALTER TABLE `cheque_details` DISABLE KEYS */;
INSERT INTO `cheque_details` VALUES (1,'bahasha','good one','me','5',NULL,NULL,NULL,'1','2018-07-13 10:02:53',NULL,0),(3,'envelope','delivered today','kinde eng','5',NULL,NULL,NULL,'1','2018-07-13 12:50:08',NULL,0),(4,'envelope','enveloped attached','5','kplc',NULL,NULL,NULL,'0','2018-07-13 13:26:08',NULL,0),(5,'monthly payments','dummy cheque','southlemon','5','chq345',NULL,NULL,'0','2018-07-14 08:32:47',NULL,0),(6,'test ','great','amref','5','ch45435','2018-07-18','56.90','0','2018-07-14 10:02:45',NULL,0);
/*!40000 ALTER TABLE `cheque_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque_details_outwards`
--

DROP TABLE IF EXISTS `cheque_details_outwards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque_details_outwards` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque_details_outwards`
--

LOCK TABLES `cheque_details_outwards` WRITE;
/*!40000 ALTER TABLE `cheque_details_outwards` DISABLE KEYS */;
INSERT INTO `cheque_details_outwards` VALUES (1,'cheque @important','quick send','5','mailer','chq90','1','2018-07-14 09:20:35',NULL,0),(2,'xasds','asdas','5','test user','ch234','0','2018-07-14 15:09:11',NULL,0);
/*!40000 ALTER TABLE `cheque_details_outwards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheques`
--

DROP TABLE IF EXISTS `cheques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_amount` varchar(255) NOT NULL,
  `cheque_date` date NOT NULL,
  `date_collected` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `receptionist_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheques`
--

LOCK TABLES `cheques` WRITE;
/*!40000 ALTER TABLE `cheques` DISABLE KEYS */;
INSERT INTO `cheques` VALUES (1,5,'mailer','che3',NULL,'67899.09','2018-07-24',NULL,'wonderful',87,0,'2018-07-14 11:09:38','2018-07-14 12:20:51',1),(2,5,'uhrfisdi','jasfsdf',NULL,'67.54','2018-07-18','2018-07-14 15:13:14','sadfsfsdg',106,1,'2018-07-14 11:25:49','2018-07-14 13:13:14',0),(3,5,'zxdasd','uertuhert',NULL,'567.50','2018-07-17',NULL,'basic description',5,2,'2018-07-14 11:27:22','2018-07-18 09:43:17',0),(4,5,'aerwe','wewrwe',NULL,'877.5676','2018-07-17',NULL,'ERWER',5,0,'2018-07-14 11:28:44',NULL,0);
/*!40000 ALTER TABLE `cheques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `vat_number` text COLLATE utf8_unicode_ci,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable_online_payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `attend_1st_meeting` int(11) NOT NULL DEFAULT '0',
  `status` enum('Pending','Approved','Disapproved','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cOurRef` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (19,'bett','','','','','','2018-04-12','','','',0,'','',0,5,0,'Pending','',NULL),(20,'BETT','','Nairobi','','','','2018-04-19','','','',0,'','',0,5,0,'Pending','sand',NULL),(21,'zcsc','asdassadsd','sdcfsdc','rgrfd','235346457','kwdfwef0','2018-05-29','asasd','0764532123423','',0,'5345','AED',0,5,0,'Pending','',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_to_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `related_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (1,'Service','Service','Consulting,New Business,Recruitment','multi_select','estimate_form-1',1,1,1);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defferals`
--

DROP TABLE IF EXISTS `defferals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defferals` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `operations_sign_off` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `finance_remarks` varchar(255) DEFAULT NULL,
  `finance_sign_off` varchar(255) DEFAULT NULL,
  `project_defferal_date` varchar(255) DEFAULT NULL,
  `project_id` int(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defferals`
--

LOCK TABLES `defferals` WRITE;
/*!40000 ALTER TABLE `defferals` DISABLE KEYS */;
INSERT INTO `defferals` VALUES (1,'0','great','santa','0','2018-06-21',2,'2018-06-20 06:42:11',NULL),(2,'1','whatat','awesome','1','2018-06-18',3,'2018-06-20 07:27:57',NULL),(3,'1','',NULL,NULL,NULL,122,'2018-07-11 11:35:09',NULL),(4,'0','','test','0','2018-08-01',10,'2018-07-11 11:35:27',NULL),(5,'1','Mercy test','Mercy test','1','2018-09-26',285,'2018-09-26 13:45:50',NULL),(6,'1','dsdf','dfvdv','1','2018-09-28',9,'2018-09-26 13:53:25',NULL),(7,'1','xcsa','zxa','1','2018-09-29',11,'2018-09-26 13:54:38',NULL),(8,'1','zx zx','xcsac','1','2018-09-28',12,'2018-09-26 13:59:17',NULL),(9,'1','jhgfds','xcszc','1','2018-09-27',13,'2018-09-26 14:01:37',NULL),(10,'1','xZX','axcZX','1','2018-09-28',15,'2018-09-26 14:06:54',NULL),(11,'1','iojmoi','kkl','1','2018-09-28',30,'2018-09-26 14:08:49',NULL),(12,'1','dsafwe dsfsdf','zasdzc','1','2018-09-28',31,'2018-09-26 14:14:58',NULL),(13,'1','adas','zxczxc','1','2018-09-28',27,'2018-09-26 14:16:57',NULL),(14,'1','mercy test','mercy test','1','2018-09-27',317,'2018-09-27 13:35:44',NULL),(15,'1','test','sdfd','1','2018-09-28',8702,'2018-09-28 06:31:26',NULL),(16,'1','zxx',NULL,NULL,NULL,5,'2018-09-28 13:21:03',NULL),(17,'1','dwed',NULL,NULL,NULL,18,'2019-03-28 10:28:20',NULL);
/*!40000 ALTER TABLE `defferals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (2,'it'),(3,'sales'),(4,'accounts'),(5,'hr');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispatch_parcel`
--

DROP TABLE IF EXISTS `dispatch_parcel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispatch_parcel` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispatch_parcel`
--

LOCK TABLES `dispatch_parcel` WRITE;
/*!40000 ALTER TABLE `dispatch_parcel` DISABLE KEYS */;
INSERT INTO `dispatch_parcel` VALUES (1,'computer','should be picked today','5','Airtel','1','2018-07-13 13:28:36',NULL,0),(2,'blabla','dasdsds','5','test user','1','2018-07-16 06:08:34',NULL,0),(3,'gsdfjsdf','tetsstststst','5','youuuu','1','2018-07-18 08:23:18',NULL,0),(4,'great stuff','xasddas','5','sdcsdf','0','2018-07-18 09:07:19',NULL,0);
/*!40000 ALTER TABLE `dispatch_parcel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposal_lists`
--

DROP TABLE IF EXISTS `disposal_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disposal_lists` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `asset_no` int(100) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `selling_date` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposal_lists`
--

LOCK TABLES `disposal_lists` WRITE;
/*!40000 ALTER TABLE `disposal_lists` DISABLE KEYS */;
INSERT INTO `disposal_lists` VALUES (1,1899,'287','LAPTOP HP PROBOOK 450','2018-07-10 00:00:00','72500'),(2,2092,'126','CHAIR MIDBACK FABRIC MESH BLUE SWIVEL','2018-07-10 00:00:00','12931.03');
/*!40000 ALTER TABLE `disposal_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `default_message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom_message` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'login_info','Login details','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\">\n  <h1>Login Details</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Hello {USER_FIRST_NAME}, &nbsp;{USER_LAST_NAME},<br><br>An account has been created for you.</p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"> Please use the following info to login your dashboard:</p>            <hr>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">Dashboard URL:&nbsp;<a href=\"{DASHBOARD_URL}\" target=\"_blank\">{DASHBOARD_URL}</a></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\"></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Email: {USER_LOGIN_EMAIL}</span><br></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Password:&nbsp;{USER_LOGIN_PASSWORD}</span></p>            <p style=\"color: rgb(85, 85, 85);\"><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','',0),(2,'reset_password','Reset password','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Reset Password</h1>\n </div>\n <div style=\"padding: 20px; background-color: rgb(255, 255, 255); color:#555;\">                    <p style=\"font-size: 14px;\"> Hello {ACCOUNT_HOLDER_NAME},<br><br>A password reset request has been created for your account.&nbsp;</p>\n                    <p style=\"font-size: 14px;\"> To initiate the password reset process, please click on the following link:</p>\n                    <p style=\"font-size: 14px;\"><a href=\"{RESET_PASSWORD_URL}\" target=\"_blank\">Reset Password</a></p>\n                    <p style=\"font-size: 14px;\"></p>\n                    <p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you\'ve received this mail in error, it\'s likely that another user entered your email address by mistake while trying to reset a password.</span><br></p>\n<p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">If you didn\'t initiate the request, you don\'t need to take any further action and can safely disregard this email.</span><br></p>\n<p style=\"font-size: 14px;\"><br></p>\n<p style=\"font-size: 14px;\">{SIGNATURE}</p>\n                </div>\n            </div>\n        </div>',0),(3,'team_member_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1>   </div>  <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to join with a team.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>',0),(4,'send_invoice','New invoice','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>INVOICE #{INVOICE_ID}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {CONTACT_FIRST_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Thank you for your business cooperation.</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your invoice for the project {PROJECT_TITLE} has been generated and is attached here.</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVOICE_URL}\" target=\"_blank\">Show Invoice</a></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">Invoice balance due is {BALANCE_DUE}</span><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Please pay this invoice within {DUE_DATE}.&nbsp;</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>',0),(5,'signature','Signature','<p>Â© TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>','<p>Â© TeamKazi. Powered By: <a href=\"https://wizag.biz/\" target=\"_blank\">Wise &amp; Agile Solutions Limited. </a></p>',0),(6,'client_contact_invitation','You are invited','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Account Invitation</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello,</span><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\"><br></span></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><span style=\"font-weight: bold;\">{INVITATION_SENT_BY}</span> has sent you an invitation to a client portal.</span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{INVITATION_URL}\" target=\"_blank\">Accept this Invitation</a></span></p>            <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">If you don\'t want to accept this invitation, simply ignore this email.</span><br><br></p>            <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>        </div>    </div></div>',0),(7,'ticket_created','Ticket  Created','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span><br></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Opened</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span><br></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}<br></span><br></p>   </div>  </div> </div>',0),(8,'ticket_commented','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID} Replies</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px; font-weight: bold;\">Title: {TICKET_TITLE}</span><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{TICKET_CONTENT}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p></div></div></div>',0),(9,'ticket_closed','Ticket  Closed','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">Your request has been closed.</p><p style=\"\">Ticket ID: {TICKET_ID}.</p><p style=\"\">Title: Email for {CLOSED_BY} is {EMAIL_USER}.</p><p style=\"\">If you wish to continue the case after it is closed, we encourage you to send a new email.</p><p style=\"\">We are pleased to inform you that you can learn a lot in our Knowledge base by visiting&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">Your request has been closed.</p><p style=\"\">Ticket ID: {TICKET_ID}.</p><p style=\"\">Title: Email for {CLOSED_BY} is {EMAIL_USER}.</p><p style=\"\">If you wish to continue the case after it is closed, we encourage you to send a new email.</p><p style=\"\">We are pleased to inform you that you can learn a lot in our Knowledge base by visiting&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(10,'ticket_reopened','Ticket  #{TICKET_ID} - {TICKET_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been reopened by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>  </div> </div></div>',0),(11,'general_notification','{EVENT_TITLE}','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>{APP_TITLE}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_TITLE}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{EVENT_DETAILS}</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #4f0158; padding: 10px 15px; color: #ffffff;\" href=\"{NOTIFICATION_URL}\" target=\"_blank\">View Details</a></span></p>  </div> </div></div>',0),(12,'next_maintenance_date','Technical','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\"> <img src=\"http://173.212.247.73:8080/pro.teamkazi.com/files/system/default-stie-logo.png\" alt=\"Pro-Kazi\"> <h1>VEHICLE #{VEHICLE_NO}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {TITLE} {USER_NAME},</span><br></p> <p style=\"\"> <span style=\"font-size: 14px; line-height: 20px;\"> <!-- Thank you for your business cooperation. --> </span> <br> </p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your Vehicle No.&nbsp; {VEHICLE_NO}, with mileage of {MILEAGE} is due for maintenance since it is below the minimum requirements by management . Thank you.</span></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p> <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p> </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"> <div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\"> <img src=\"http://173.212.247.73:8080/pro.teamkazi.com/files/system/default-stie-logo.png\" alt=\"Pro-Kazi\"> <h1>VEHICLE #{VEHICLE_NO}</h1> </div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {TITLE} {USER_NAME},</span><br></p> <p style=\"\"> <span style=\"font-size: 14px; line-height: 20px;\"> <!-- Thank you for your business cooperation. --> </span> <br> </p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Your Vehicle No.&nbsp; {VEHICLE_NO}, with mileage of {MILEAGE} is due for maintenance since it is below the minimum requirements by management . Thank you.</span></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p> <p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p> </div> </div></div>',0),(13,'ticket_info','Ticket','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>TICKET TYPE{TICKET_TYPE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {USER_NAME},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">{SUBJECT} .{DESCRIPTION} prepared by {CREADTED_BY} on {CREATED_AT} with reference {REFERNCE}.</span><br></p><p style=\"\"><font color=\"#555555\"><span style=\"font-size: 14px;\">Thank you.</span></font></p><p style=\"\"><br></p><p style=\"\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>TICKET TYPE: {TICKET_TYPE}</h1></div> <div style=\"padding: 20px; background-color: rgb(255, 255, 255);\">  <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">Hello {ASSIGNED_TO},</span><br></p><p style=\"\"><span style=\"font-size: 14px; line-height: 20px;\">{SUBJECT} .{DESCRIPTION} .Prepared by {CREATED_BY} on {CREATED_AT} with reference {REFERENCE}.</span><br></p><p style=\"\"><font color=\"#555555\"><span style=\"font-size: 14px;\">Thank you.</span></font></p><p style=\"\"><br></p><p style=\"\"><br></p><p style=\"color: rgb(85, 85, 85); font-size: 14px;\">{SIGNATURE}</p>  </div> </div></div>',0),(14,'ticket_done','Ticket Done','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\r\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been closed by&nbsp;</span><span style=\"line-height: 18.5714px;\">{USER_NAME}</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Hi {CREATED_BY},</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} created on {CREATED_AT} has been solved by&nbsp;</span><span style=\"line-height: 18.5714px;\">{SOLVED_BY} . Kindly mark it as closed.</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(15,'third_party','Third Party','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\r\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Hi {CREATED_BY},</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} created on {CREATED_AT} has been solved by&nbsp;</span><span style=\"line-height: 18.5714px;\">{SOLVED_BY} . Kindly mark it as closed.</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><br></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p>Dear&nbsp; {THIRD_PARTY_NAME},</p><p>The Ticket #{TICKET_ID}.{MESSAGE}.<br></p><p>Title: Request has been assigned to you by {USER_NAME}. His email is {USER_EMAIL}.</p><p><br></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">&nbsp;</span><a href=\"{TICKET_URL}\" target=\"_blank\" style=\"font-size: 14px; background-color: rgb(0, 179, 147); padding: 10px 15px; color: rgb(255, 255, 255);\">Show Ticket</a></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(16,'assign_ticket','Assign Ticket','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"><h1>{TICKET_TITLE}</h1></span></p><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been assigned to you by&nbsp;&nbsp;</span><span style=\"line-height: 18.5714px;\">{CREATED_BY} on {CREATED_AT}.</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\"><span style=\"line-height: 18.5714px;\"></span></p><h1>{TICKET_TITLE}</h1><p></p><p style=\"\"><span style=\"line-height: 18.5714px;\">The Ticket #{TICKET_ID} has been assigned to you by&nbsp;&nbsp;</span><span style=\"line-height: 18.5714px;\">{CREATED_BY} on {CREATED_AT}.</span></p> <p style=\"\"><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(17,'ticket_owner','Ticket Owner','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}&nbsp;</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear{USER_NAME},</span><br></p> <p>Your&nbsp; request has been assigned to {ASSIGNED_TO}</p><p>-TICKET ID:{TICKET_ID}.<br></p><p>-Title: The email for {ASSIGNED_TO} is ({TITLE}).<br></p><p>{ASSIGNED_TO} will contact you in due course.<br></p><p>Please be informed that we deal with all open requests based on priority and date order.</p><p><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><br></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}<br></span><br></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}&nbsp;</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span><br></p> <p>Your&nbsp; request has been assigned to {ASSIGNED_TO}</p><p>-TICKET ID:{TICKET_ID}.<br></p><p>-Title: The email for {ASSIGNED_TO} is ({TITLE}).<br></p><p>{ASSIGNED_TO} will contact you in due course.<br></p><p>Please be informed that we deal with all open requests based on priority and date order.</p><p><br></p> <p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{TICKET_URL}\" target=\"_blank\">Show Ticket</a></span></p> <p style=\"\"><br></p><p style=\"\">Regards,</p><p style=\"\"><br></p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}<br></span><br></p>   </div>  </div> </div>',0),(18,'ticket_solved','Ticket Solved','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Your request :[{TICKET_ID}] has been solved.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Title: {TITLE}.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">We have marked your request as solved. If there is something else we can help you with. Simply reply to this message within 2 days to reopen your case.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Please be informed that our system will close the ticket after the&nbsp; given time and is prevented to be updated.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">We are pleased to inform you that you can learn a lot in our Knowledge&nbsp; base by visiting&nbsp;</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">&nbsp;</span><a href=\"{TICKET_URL}\" target=\"_blank\" style=\"font-size: 14px; background-color: rgb(0, 179, 147); padding: 10px 15px; color: rgb(255, 255, 255);\">Show Ticket</a></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Ticket #{TICKET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Your request :[{TICKET_ID}] has been solved.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Title: {TITLE}.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">We have marked your request as solved. If there is something else we can help you with. Simply reply to this message within 2 days to reopen your case.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">Please be informed that our system will close the ticket after the&nbsp; given time and is prevented to be updated.</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">We are pleased to inform you that you can learn a lot in our Knowledge&nbsp; base by visiting&nbsp;</span></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">&nbsp;</span><a href=\"{TICKET_URL}\" target=\"_blank\" style=\"font-size: 14px; background-color: rgb(0, 179, 147); padding: 10px 15px; color: rgb(255, 255, 255);\">Show Ticket</a></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(19,'assign_asset','Asset Assignment','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p>Dear&nbsp; {TO},</p><p>The Asset #{ASSET_ID}.<br></p><p>Title: {ASSET} has been has to you by {FROM}.His email is {SENDER_EMAIL}.</p><p><br></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">&nbsp;</span><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p>Dear&nbsp; {TO},</p><p>The Asset #{ASSET_ID}.<br></p><p>Title: {ASSET} has been has to you by {FROM}.His email is {SENDER_EMAIL}.</p><p><br></p><p style=\"\"><span style=\"color: inherit; line-height: 18.5714px;\">&nbsp;</span><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(20,'pending_tasks','Pending Tasks','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>REF #{REF_NO}&nbsp;</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USERNAME},</span><br></p> <p>-REF # :{REF_NO}.<br></p><p>-Performed on :&nbsp; {<span style=\"color: rgb(78, 94, 106);\">PERFORMED_ON</span>} .<br></p><p><br></p><p style=\"\">Regards,</p><p style=\"\">{<span style=\"color: rgb(78, 94, 106);\">PERMFORMED_BY</span>}</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}<br></span><br></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>REF #{REF_NO}&nbsp;</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USERNAME},</span><br></p> <p>-REF # :{REF_NO}.<br></p><p>-Performed on :&nbsp; {PERFORMED_ON}&nbsp;.<br></p><p><br></p><p style=\"\">Regards,</p><p style=\"\">{PERFORMED_BY}</p><p style=\"\"><span style=\"line-height: 18.5714px;\">{SIGNATURE}<br></span><br></p>   </div>  </div> </div>',0),(21,'ict_asset_decline','Asset Declined','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(22,'inventory_requisitions','Inventory Requisitions','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Inventory #{INVENTORY_REQUISITIONS_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {CONTACT_FIRST_NAME} {CONTACT_LAST_NAME},</span></p><p style=\"\">{INVENTORY_REQUISITIONS_NAME} with quantity of {INVENTORY_REQUISITIONS_QUANTITY} requested on {INVENTORY_REQUISITIONS_REQUEST_DATE} has been {INVENTORY_REQUISITIONS_STATUS}</p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Inventory #{INVENTORY_REQUISITIONS_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {CONTACT_FIRST_NAME} {CONTACT_LAST_NAME},</span></p><p style=\"\">{INVENTORY_REQUISITIONS_NAME} with quantity of {INVENTORY_REQUISITIONS_QUANTITY} requested on {INVENTORY_REQUISITIONS_REQUEST_DATE} has been {INVENTORY_REQUISITIONS_STATUS}</p><p style=\"\"><br></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(23,'ict_asset_accept','Asset Accepted','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been accepted.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(25,'ict_asset_issue','Asset Issued','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0),(26,'ict_asset_return','Asset Returned','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>assigned to {CUSTODIAN} with the email {EMAIL} has been rejected.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>','<div style=\"background-color: #eeeeef; padding: 50px 0; \"><div style=\"max-width:640px; margin:0 auto; \"> <div style=\"color: #fff;text-align: center;background-color:#9ad4ea;padding: 30px;border-top-left-radius: 3px;border-top-right-radius: 3px;margin: 0;\">\n<img src=\"http://esl.dnsalias.com:8080/files/system/default-stie-logo.png\" alt=\"TeamKazi\"><h1>Asset #{ASSET_ID}</h1></div><div style=\"padding: 20px; background-color: rgb(255, 255, 255);\"><p style=\"\"><span style=\"line-height: 18.5714px;\">Dear {USER_NAME},</span></p><p style=\"\">&nbsp;<b>{ASSET_TITLE} </b>returned by {CUSTODIAN} with the email {EMAIL} has been accepted.&nbsp;</p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><a style=\"background-color: #00b393; padding: 10px 15px; color: #ffffff;\" href=\"{ASSET_URL}\" target=\"_blank\">Show Asset</a></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\"><br></span></p><p style=\"\"><span style=\"color: rgb(85, 85, 85); font-size: 14px; line-height: 20px;\">{SIGNATURE}</span></p>   </div>  </div> </div>',0);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `code_no` varchar(255) DEFAULT NULL,
  `name` mediumtext,
  `title` mediumtext,
  `join_date` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `asset_no` (`code_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (6,'E00008','ISAAC BABU WATKINS','Mr','2011-04-03 21:00:00','watkins@esl-eastafrica.com',0,'2018-03-19 08:05:35'),(7,'E00009','CHRISPUS MAINGI KILEI','Mr','2011-07-03 21:00:00','chrispus.kilei@esl-east africa.co',0,'2018-03-19 08:05:35'),(8,'E00016','DANIEL LUKORITO WANIKINA','Mr','2015-08-04 21:00:00','3transport@esl-eastafrica.com',0,'2018-03-19 08:05:35'),(9,'E00018','JUSTUS KALII MUTHEMBWA','Mr','2015-08-31 21:00:00','2transport@esl-eastafrica.com',0,'2018-03-19 08:05:35'),(10,'E00044','ERICKSON MWANIKI NGELE','Mr','2013-04-30 21:00:00','1transport@esl-eastafrica.com',0,'2018-03-19 08:05:35'),(11,'E00001','SILVESTER MUSOVYA KUTUTA','Mr','2001-04-30 21:00:00','silvester@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(12,'E00002','CATHERINE ANZAZI LEWA','Miss','2007-03-31 21:00:00','catherine.lewa@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(13,'E00003','MOURINE ACHIENG MAGERO','Miss','2009-12-09 21:00:00','mourine.magero@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(14,'E00004','FRANCISCA MUENI NZIOKA','Miss','2010-05-23 21:00:00','francisca@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(15,'E00006','ALOICE MUOKI KUTUTA','Mr','2011-10-31 21:00:00','aloice@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(16,'E00007','MAUREEN ATIENO OPIYO','Miss','2011-09-30 21:00:00','maurine.atieno@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(17,'E00010','EVANS NGALA CHIBUNGU','Mr','2011-12-18 21:00:00','evans.ngala@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(18,'E00011','LEONARD MWARUWA BAYA','Mr','2011-12-19 21:00:00','leonard.baya@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(19,'E00012','MARTIN KARANI IKIARA','Mr','2011-12-28 21:00:00','martin.karani@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(20,'E00013','LENROD MWAMBURI MGENDI','Mr','2013-11-09 21:00:00','lenrod.mwamburi@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(21,'E00014','JOHN KIPCHUMBA LAGAT','Mr','2014-10-06 21:00:00','john.lagat@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(22,'E00015','JOYLINAH NDUTA NJERI','Miss','2015-06-30 21:00:00','joylinah.nduta@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(23,'E00017','STEPHEN OKIKI OMONDI','Mr','2015-06-15 21:00:00','stephen.okiki@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(24,'E00019','PATRICK MUKUNDI MBUGUA','Mr','2014-08-16 21:00:00','patrick.mbugua@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(25,'E00020','RAYMOND JUMA WANGUNDA','Mr','2016-01-06 21:00:00','raymond.wangunda@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(26,'E00021','FLORENCE CHEPNGETICH TUEI','Mr','2016-01-09 21:00:00','florence.tuei@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(27,'E00022','KENNEDY KIVUVANI','Mr','2012-03-14 21:00:00','kennedy.kivuvani@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(28,'E00023','ERIC OLENSI OSINYA','Mr','2016-02-15 21:00:00','erick.osinya@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(29,'E00024','CATHERINE NYAMBURA THUO','Miss','2014-07-13 21:00:00','catherine.thuo@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(30,'E00025','GRACE MPOYA','Miss','2015-11-08 21:00:00','grace.mpoya@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(31,'E00027','ERIC MULWA KYALO','Mr','2017-01-25 21:00:00','eric.mulwa@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(32,'E00028','IRENE ATIENO OTIENO','Miss','2016-06-01 21:00:00','irene.atieno@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(33,'E00029','MERCYLINE MUTHEU MUTUA','Miss','2012-06-03 21:00:00','mercyline.mutua@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(34,'E00030','ARSHUR LOMO OWANE','Mr','2012-04-01 21:00:00','lomo.owane@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(35,'E00031','COLLINS ONYANGO PAMBA','Mr','2015-01-01 21:00:00','collins.pamba@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(36,'E00032','GULJAN ABUBAKAR RAMADHAN','Miss','2017-05-01 21:00:00','guljan.abubakar@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(37,'E00033','FRANCIS OUMA OPALO','Mr','2017-06-30 21:00:00','francis.opalo@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(38,'E00034','PETER HAVACY MANGA','Mr','2017-08-13 21:00:00','peter.manga@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(39,'E00035','LAWRENCE ODHIAMBO AMENYA','Mr','2017-10-12 21:00:00','lawrence.amenya@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(40,'E00036','MOSES ELIAS MANGALE','Mr','2017-10-12 21:00:00','moses.mangale@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(41,'E00037','MOUREEN WAIRIMU KIAMA','Miss','2017-11-19 21:00:00','wairimu.kiama@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(42,'E00045','FANUEL ONYANGO','Mr','2018-02-28 21:00:00','fanuel.onyango@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(43,'E00046','Benson Munene Ireri','Mr','2018-03-14 21:00:00','benson.ireri@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(44,'E00047','JESINTA NJERI NJOROGE','Miss','2017-10-01 21:00:00','intern@esl.com',0,'2018-05-02 07:29:24'),(45,'E00048','WAYNE DICKSON NDAKALA','Mr','2017-09-01 21:00:00','wayne@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(46,'E00049','GEORGE ABWAO OMORE','Mr','2017-09-01 21:00:00','intern@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(47,'E00050','FREDRICK WAWALA','Mr','2017-09-01 21:00:00','intern@esl.com',0,'2018-05-02 07:29:24'),(48,'E00051','AHMED ABDULRAHMAN AHMED','Mr','2017-09-01 21:00:00','intern@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(49,'E00052','PAUL NZISSI MUSYOKA','Mr','2017-09-01 21:00:00','intern@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(50,'E00053','BILHA AMAGOVE OMUDI','Miss','2017-09-01 21:00:00','internEsl@intern.com',0,'2018-05-02 07:29:24'),(51,'E00054','WILLINGTONE MICHAEL WARIO','Mr','2011-01-02 21:00:00','willingtone.wario@esl-eastafrica.com',0,'2018-05-02 07:29:24'),(52,'E00026','PATRICK MURANGIRI MAGIRI','Mr','2007-11-25 21:00:00','patrick.murangiri@esl-eastafica.com',0,'2018-05-02 07:29:24'),(53,'E00056','WASHINGTONE MWAMBURI MASEGHE','Mr','2011-11-14 21:00:00','washingtone.mwamburi@freightwell.com',0,'2018-05-02 07:29:24'),(54,'E00057','JOSEPH KUUMA MATHEKA','Mr','2010-11-28 21:00:00','joseph.matheka@freightwell.com',0,'2018-05-02 07:29:24'),(55,'E00058','BILHA AMAGOVE OMUDI','Miss','2018-05-01 21:00:00','bilha.amagove@esl-eastafrica.com',0,'2018-05-04 08:19:04'),(56,'E00059','SALIM SULUBU CHARO','Mr','2015-07-14 21:00:00','salim.sulubu@freightwell.com',0,'2018-10-30 11:41:31'),(57,'E00060','MOSES JONH SHIKHONGA','Mr','2012-09-30 21:00:00','moses.shikhonga@freightwell.com',0,'2018-10-30 11:41:31'),(58,'E00061','RODGERS WAFULA WEKESA','Mr','2012-07-31 21:00:00','rodgers.wekesa@freightwell.com',0,'2018-10-30 11:41:31'),(59,'E00062','CHRISTINE NDUTA GEMA','Mr','2012-07-31 21:00:00','christine.gema@freightwell.com',0,'2018-10-30 11:41:31'),(60,'E00063','DOMINIC KIMANZI MUTHUI','Mr','2016-02-15 21:00:00','dominic.muthui@freightwell.com',0,'2018-10-30 11:41:31'),(61,'E00064','PHIDES LAURA MWAMKITA','Miss','2016-06-05 21:00:00','phides.laura@freightwell.com',0,'2018-10-30 11:41:31'),(62,'E00065','ALOIS MUTUA DAVID','Mr','2015-06-30 21:00:00','aloise.mutua@freightwell.com',0,'2018-10-30 11:41:31'),(63,'E00066','PAULINE KARWIRWA','Miss','2008-07-31 21:00:00','pauline.karwirwa@sovereinlog.com',0,'2018-10-30 11:41:31'),(64,'E00067','CLIFFORD NYAKUNDI','Mr','2013-04-03 21:00:00','clifford.nyakundi@sovereignlog.com',0,'2018-10-30 11:41:31'),(65,'E00068','JESINTA NJERI NJOROGE','Miss','2018-05-01 21:00:00','jesinta.njeri@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(66,'E00069','AHMED ABDULRAHMAN AHMED','Mr','2018-06-01 21:00:00','ahmed.abdulrahman@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(67,'E00070','PAUL NZISSI MUSYOKA','Mr','2018-06-01 21:00:00','it.support@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(68,'E00071','JACKLINE WAIRIMU WAWERU','Miss','2018-06-30 21:00:00','intern@sovereignlog.om',0,'2018-10-30 11:41:31'),(69,'E00072','PHANICE AYAKO OMUNANJE','Ms.','2018-06-30 21:00:00','intern@freightwell.com',0,'2018-10-30 11:41:31'),(70,'E00073','JOSEPH KIRIMO DANIEL','Mr','2018-06-30 21:00:00','intern@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(71,'E00074','AISHA SULEIMAN MWAZUZU','Ms.','2018-06-30 21:00:00','intern@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(72,'E00075','RUKHSAR MUNIR MULJI','Ms.','2018-06-30 21:00:00','lega.intern@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(73,'E00076','MARGARET MAINA MUTHONI','Miss','2018-07-01 21:00:00','intern@freightwell.com',0,'2018-10-30 11:41:31'),(74,'E00077','SALOME ACHIENG ACHOLA','Ms.','2018-06-30 21:00:00','ict.intern@esl-eastafrica.com',0,'2018-10-30 11:41:31'),(75,'E00078','ABUBAKAR OMAR WATKINS','Mr','2018-06-30 21:00:00','it.support@esl-eastafrica.com',0,'2018-10-30 11:41:31');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipments` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `asset_no` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `purchase_price` float DEFAULT NULL,
  `for_hire` int(100) NOT NULL DEFAULT '0',
  `forhire_group` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `charge_per` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'G009','E009','Hoppers',50,0,0,'inhouse',NULL,NULL,'2018-04-20 10:15:41',0),(2,'G002','H008','Grabs',60,0,0,'inhouse',NULL,NULL,'2018-04-20 10:16:19',0),(3,'T001','T008','Trimmers',60,0,0,'inhouse',NULL,NULL,'2018-04-20 10:16:24',0),(4,'b009','3245','good condition',400,0,0,'inhouse','KSH','tonne','2018-05-03 14:27:57',0);
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalation_matrix`
--

DROP TABLE IF EXISTS `escalation_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escalation_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `escalation_matrix` varchar(255) NOT NULL,
  `agent_name` varchar(255) NOT NULL,
  `escalation` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `assigned_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE,
  CONSTRAINT `escalation_matrix_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalation_matrix`
--

LOCK TABLES `escalation_matrix` WRITE;
/*!40000 ALTER TABLE `escalation_matrix` DISABLE KEYS */;
INSERT INTO `escalation_matrix` VALUES (1,'ICT Assets','90,113,121,145','45',NULL,'2018-04-26 11:31:50',NULL,0);
/*!40000 ALTER TABLE `escalation_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_forms`
--

DROP TABLE IF EXISTS `estimate_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_forms`
--

LOCK TABLES `estimate_forms` WRITE;
/*!40000 ALTER TABLE `estimate_forms` DISABLE KEYS */;
INSERT INTO `estimate_forms` VALUES (1,'H - Test Estimate form','','active',1);
/*!40000 ALTER TABLE `estimate_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_items`
--

DROP TABLE IF EXISTS `estimate_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_items`
--

LOCK TABLES `estimate_items` WRITE;
/*!40000 ALTER TABLE `estimate_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate_requests`
--

DROP TABLE IF EXISTS `estimate_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimate_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estimate_form_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` enum('new','processing','hold','canceled','estimated') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate_requests`
--

LOCK TABLES `estimate_requests` WRITE;
/*!40000 ALTER TABLE `estimate_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimate_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimates`
--

DROP TABLE IF EXISTS `estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL DEFAULT '0',
  `estimate_date` date NOT NULL,
  `valid_until` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','sent','accepted','declined') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimates`
--

LOCK TABLES `estimates` WRITE;
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_comments`
--

DROP TABLE IF EXISTS `event_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_comments`
--

LOCK TABLES `event_comments` WRITE;
/*!40000 ALTER TABLE `event_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_notes`
--

DROP TABLE IF EXISTS `event_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_notes`
--

LOCK TABLES `event_notes` WRITE;
/*!40000 ALTER TABLE `event_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `prospector_id` int(11) DEFAULT NULL,
  `business_type` int(11) NOT NULL,
  `call_type` int(11) NOT NULL,
  `objective_type` int(11) NOT NULL,
  `IDOpportunity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pipeline_stage` int(11) NOT NULL,
  `IDOpportunityStatus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (4,'WIBA','Insuarance','2018-12-31','2018-12-31',NULL,NULL,126,'N/A','90',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(5,'Kinyua munyau (manuchar)','Insuarance','2018-05-16','2018-05-16',NULL,NULL,167,'N/A','146',1,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(6,'i8wer','Legal','2018-06-15','2018-06-15',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(7,'test data','Legal','2018-07-18','2018-07-18',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(8,'test','Legal','2018-07-19','2018-07-19',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(9,'err','Legal','2018-07-10','2018-07-10',NULL,NULL,5,'N/A','86',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(10,'grrt','Legal','2018-07-11','2018-07-11',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(11,'23123','Legal','2018-08-01','2018-08-01',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(12,'ererer','Legal','2018-08-01','2018-08-01',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(13,'sadqwsa','Legal','2018-07-26','2018-07-26',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(14,'wrwe','Legal','2018-07-25','2018-07-25',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(15,'werwe','Legal','2018-07-18','2018-07-18',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(16,'567','Legal','2018-07-19','2018-07-19',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(17,'uu','Insuarance','2018-07-26','2018-07-26',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(18,'test','Legal','2018-07-21','2018-07-21',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(19,'test2','Legal','2018-06-15','2018-06-15',NULL,NULL,5,'N/A','86',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(20,'test3','Legal','2018-07-27','2018-07-27',NULL,NULL,5,'N/A','107',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(21,'test','Legal','2018-09-26','2018-09-26',NULL,NULL,5,'N/A','5',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL),(22,'dummy','Insuarance','0000-00-00','0000-00-00',NULL,NULL,5,'N/A','87',0,'#d43480',NULL,NULL,0,0,0,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
INSERT INTO `expense_categories` VALUES (1,'Miscellaneous expense',0);
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `amount` double NOT NULL,
  `files` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'2018-06-25',1,'zdasf',500,'a:0:{}','werwe',10,83,0),(2,'2018-06-25',1,'sfweds',455,'a:0:{}','test',0,86,0),(3,'2018-06-25',1,'asdsa',900,'a:0:{}','etert',0,87,0),(4,'2018-07-18',1,'sxc xszc ',5677,'a:0:{}','dsdqwsd',10,86,0);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extended_services`
--

DROP TABLE IF EXISTS `extended_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extended_services` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extended_services`
--

LOCK TABLES `extended_services` WRITE;
/*!40000 ALTER TABLE `extended_services` DISABLE KEYS */;
INSERT INTO `extended_services` VALUES (1,'External Parts Service','2018-03-22 09:19:40',0),(2,'Fuel','2018-03-22 09:19:49',0);
/*!40000 ALTER TABLE `extended_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_services`
--

DROP TABLE IF EXISTS `external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_services` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `job_card_id` varchar(255) NOT NULL,
  `supplier_id` int(100) DEFAULT NULL,
  `service_provider_id` varchar(255) DEFAULT NULL,
  `service_type` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT '0000-00-00 00:00:00',
  `end_date` varchar(255) DEFAULT '0000-00-00 00:00:00',
  `total_service` double DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `amount` float DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `total_fuel` float DEFAULT NULL,
  `service_no` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `stock_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_services`
--

LOCK TABLES `external_services` WRITE;
/*!40000 ALTER TABLE `external_services` DISABLE KEYS */;
INSERT INTO `external_services` VALUES (1,'2',NULL,'3','labour','04/19/2018','04/26/2018',5600,'2018-04-18 07:41:10',0,NULL,NULL,NULL,'ES-001',NULL,NULL),(2,'6',18,NULL,'parts','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2018-04-18 07:55:38',0,5000,200,1000000,'ES-002',NULL,NULL),(3,'3',NULL,'3','labour','04/25/2018','04/27/2018',1600,'2018-04-21 07:03:12',0,NULL,NULL,NULL,'ES-003',NULL,NULL),(4,'3',16,NULL,'parts','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2018-04-21 07:05:35',0,150,3,450,'ES-004',NULL,3),(5,'3',NULL,'14','labour','04/26/2018','05/28/2018',25600,'2018-04-21 07:12:13',0,NULL,NULL,NULL,'ES-005',NULL,NULL),(6,'12',NULL,'5','labour','04/25/2018','04/28/2018',2400,'2018-04-21 07:27:20',0,NULL,NULL,NULL,'ES-006',NULL,NULL),(7,'3',19,'','parts','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2018-04-21 07:32:29',0,400,6,2400,'ES-007',NULL,2),(8,'1',16,NULL,'parts','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2018-04-23 09:07:26',0,200,3,600,'ES-008',NULL,2),(9,'5',NULL,'3','labour','03/28/2019','04/24/2019',21600,'2019-03-27 10:16:58',0,NULL,NULL,NULL,'ES-009',NULL,NULL);
/*!40000 ALTER TABLE `external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followups`
--

DROP TABLE IF EXISTS `followups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followups` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(100) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `mileage` varchar(255) NOT NULL,
  `checklist` varchar(255) NOT NULL,
  `measurement` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followups`
--

LOCK TABLES `followups` WRITE;
/*!40000 ALTER TABLE `followups` DISABLE KEYS */;
INSERT INTO `followups` VALUES (1,3,'2018-05-22','300','','km','2018-08-08 06:47:50',0),(2,6,'2018-08-01','1000','','mi','2018-08-08 06:48:18',0),(3,10,'2018-06-13','4555','','hrs','2018-08-08 06:48:47',0),(4,20,'2018-07-25','3000','','km','2018-08-08 06:49:15',0),(5,19,'2018-06-28','3800','Screenshot_from_2018-05-16_19-51-17.png','mi','2018-08-08 06:49:43',0);
/*!40000 ALTER TABLE `followups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_balances`
--

DROP TABLE IF EXISTS `fuel_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel_balances` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_balances`
--

LOCK TABLES `fuel_balances` WRITE;
/*!40000 ALTER TABLE `fuel_balances` DISABLE KEYS */;
INSERT INTO `fuel_balances` VALUES (1,'full','2018-04-17 09:19:58',NULL,0),(2,'3/4','2018-04-17 09:19:58',NULL,0),(3,'1/2','2018-04-17 09:20:17',NULL,0),(4,'1/4','2018-04-17 09:20:17',NULL,0),(5,'close to empty','2018-04-17 09:20:38',NULL,0);
/*!40000 ALTER TABLE `fuel_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_suppliers`
--

DROP TABLE IF EXISTS `fuel_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel_suppliers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `fuel_type` varchar(255) DEFAULT NULL,
  `is_petrol` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_suppliers`
--

LOCK TABLES `fuel_suppliers` WRITE;
/*!40000 ALTER TABLE `fuel_suppliers` DISABLE KEYS */;
INSERT INTO `fuel_suppliers` VALUES (1,'Petro Oil (K) Ltd','00012','0733 633034',94.5,'diesel',0,'2018-04-10 05:43:32',0),(5,'Petro Oil (K) Ltd','00012','0733 633034',103.5,'petrol',1,'2018-05-03 06:10:38',0);
/*!40000 ALTER TABLE `fuel_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuels`
--

DROP TABLE IF EXISTS `fuels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuels` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `litres` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `supplier_id` int(100) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `expense_id` double DEFAULT NULL,
  `expense_cost` double DEFAULT NULL,
  `km_reading` int(100) DEFAULT NULL,
  `miles_reading` float DEFAULT NULL,
  `vehicle_id` varchar(255) DEFAULT NULL,
  `done_on` varchar(255) DEFAULT NULL,
  `mileage_km` float DEFAULT NULL,
  `machine_hours` varchar(255) DEFAULT '0',
  `mileage_miles` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `fuel_id` varchar(255) DEFAULT NULL,
  `is_petrol` tinyint(1) NOT NULL DEFAULT '0',
  `is_company` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuels`
--

LOCK TABLES `fuels` WRITE;
/*!40000 ALTER TABLE `fuels` DISABLE KEYS */;
INSERT INTO `fuels` VALUES (1,199,103.5,20596.5,1,NULL,'in456',1,5000,4953,0,'1','0000-00-00 00:00:00',2,'0',0,'USD','petrol',1,1,'2018-06-12 10:18:51','2018-06-30 08:59:02',0),(2,NULL,94.5,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2018-06-13 12:33:04',NULL,0),(3,100.56,103.5,10408,1,'6','in345',3,400,6700,0,'2','2018-06-19 00:00:00',6100,'0',0,'USD','petrol',1,1,'2018-06-30 07:59:04',NULL,0),(4,100.56,103.5,10408,1,'6','in345',3,400,6700,0,'2','2018-06-19 00:00:00',NULL,'',NULL,'USD','petrol',1,1,'2018-06-30 07:59:04',NULL,0),(5,100,103.5,10350,1,'6','in345',3,400,6700,0,'2','2018-06-19 00:00:00',0,'0',0,'USD','petrol',1,1,'2018-06-30 07:59:24',NULL,0),(6,100,103.5,10350,1,'6','in345',3,400,6700,0,'2','2018-06-19 00:00:00',0,'0',0,'USD','petrol',1,1,'2018-06-30 07:59:29',NULL,0),(7,456,94.5,43092,5,'8','in23435',3,400,0,0,'','2018-06-18 00:00:00',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:02:34',NULL,0),(8,120.345,103.5,12455.7,5,'6','in43',3,400,0,0,'3','2018-06-12 00:00:00',0,'0',0,'USD','petrol',1,1,'2018-06-30 08:02:57',NULL,0),(9,120.345,103.5,12455.7,5,'6','in43',3,400,0,0,'3','2018-06-12 00:00:00',NULL,'',NULL,'USD','petrol',1,1,'2018-06-30 08:02:57',NULL,0),(10,200.99,103.5,20802.5,5,'6','in345',3,400,6789,0,'2','2018-06-26',89,'0',0,'KSH','petrol',1,1,'2018-06-30 08:07:18',NULL,0),(11,34.9,94.5,3298.05,1,'7','in23423',1,5000,8900,0,'2','2018-06-06',2111,'0',0,'KSH','diesel',0,1,'2018-06-30 08:07:57',NULL,0),(12,34.9,94.5,3298.05,1,'7','in23423',1,5000,8900,0,'2','2018-06-06',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:08:19',NULL,0),(13,679.33,94.5,64196.7,5,'6','in23423',1,5000,9000,0,'2','2018-06-06',100,'0',0,'KSH','diesel',0,1,'2018-06-30 08:12:18',NULL,0),(14,679.33,94.5,64196.7,5,'6','in23423',1,5000,9000,0,'2','2018-06-06',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:12:59',NULL,0),(15,679,94.5,64165.5,5,'6','in23423',1,5000,9000,0,'2','2018-06-06',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:13:05',NULL,0),(16,89,103.5,9211.5,5,'6','iinw3435',3,400,0,0,'5','2018-06-25',0,'0',0,'KSH','petrol',1,1,'2018-06-30 08:13:27',NULL,0),(17,89,103.5,9211.5,5,'6','iinw3435',3,400,0,0,'5','2018-06-25',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 08:13:28',NULL,0),(18,89,103.5,9211.5,5,'6','iinw3435',3,400,0,0,'2','2018-06-25',-9000,'0',0,'KSH','petrol',1,1,'2018-06-30 08:13:48',NULL,0),(19,89,103.5,9211.5,1,'6','in3423',3,400,0,0,'5','2018-05-17',0,'0',0,'USD','petrol',1,1,'2018-06-30 08:14:49',NULL,0),(20,89,103.5,9211.5,1,'6','in3423',3,400,0,0,'5','2018-05-17',NULL,'',NULL,'USD','petrol',1,1,'2018-06-30 08:14:50',NULL,0),(21,890,103.5,92115,1,'6','in423',0,0,0,0,'5','2018-06-18',0,'0',0,'KSH','petrol',1,1,'2018-06-30 08:16:26',NULL,0),(22,890,103.5,92115,1,'6','in423',0,0,0,0,'5','2018-06-18',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 08:16:27',NULL,0),(23,90,103.5,9315,1,'6','hioh',0,0,0,0,'5','2018-06-26',0,'0',0,'KSH','petrol',1,1,'2018-06-30 08:20:23',NULL,0),(24,90,103.5,9315,1,'6','hioh',0,0,0,0,'5','2018-06-26',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 08:20:23',NULL,0),(25,6789,94.5,641560,5,'11','in45676',1,5000,0,0,'5','2018-06-20',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:21:09',NULL,0),(26,6789,94.5,641560,5,'11','in45676',1,5000,0,0,'5','2018-06-20',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:21:09',NULL,0),(27,89.8989,94.5,8495.45,1,'6','in8989',3,400,0,0,'14','2018-06-13',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:21:46',NULL,0),(28,89.8989,94.5,8495.45,1,'6','in8989',3,400,0,0,'14','2018-06-13',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:21:46',NULL,0),(29,90.67,94.5,8568.32,1,'11','in5345',3,400,0,0,'3','2018-06-19',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:25:02',NULL,0),(30,90.67,94.5,8568.32,1,'11','in5345',3,400,0,0,'3','2018-06-19',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:25:02',NULL,0),(31,89.45,94.5,8453.03,5,'17','in34535',4,4000,0,0,'2','2018-06-27',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:26:55',NULL,0),(32,89.45,94.5,8453.03,5,'17','in34535',4,4000,0,0,'2','2018-06-27',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:26:55',NULL,0),(33,34234.3,94.5,3235140,5,'11','mdd34',3,400,0,0,'2','2018-06-20',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:29:16',NULL,0),(34,89.56,94.5,8463.42,5,'26','insdqwe566',3,400,0,0,'3','2018-06-04',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:30:30',NULL,0),(35,56.45,94.5,5334.52,5,'6','im678',3,400,0,0,'6','2018-06-14',0,'0',0,'USD','diesel',0,1,'2018-06-30 08:32:51',NULL,0),(36,89.54,94.5,8461.53,1,'6','sdd',0,0,0,0,'20','2018-06-20',0,'0',0,'USD','diesel',0,1,'2018-06-30 08:39:07',NULL,0),(37,900,94.5,85050,1,'6','in435345',0,0,0,0,'5','2018-06-19',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:42:41',NULL,0),(38,900,94.5,85050,1,'6','in435345',0,0,0,0,'5','2018-06-19',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 08:42:42',NULL,0),(39,234,94.5,22113,1,'6','in23434',3,400,0,0,'5','2018-06-20',0,'0',0,'KSH','diesel',0,1,'2018-06-30 08:57:29',NULL,0),(40,9084,94.5,858438,1,'6','jdsnadsa',3,400,0,0,'3','2018-06-07',0,'0',0,'KSH','diesel',0,1,'2018-06-30 09:17:42',NULL,0),(41,9084,94.5,858438,1,'6','jdsnadsa',3,400,0,0,'3','2018-06-07',0,'0',0,'KSH','diesel',0,1,'2018-06-30 09:17:56',NULL,0),(42,12,103.5,1242,5,'6','weds',0,0,0,0,'3','2018-06-21',0,'0',0,'KSH','petrol',1,1,'2018-06-30 09:18:55',NULL,0),(43,12,103.5,1242,5,'6','weds',0,0,0,0,'3','2018-06-21',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 09:18:55',NULL,0),(44,78.23,103.5,8096.81,1,'6','ksdfsd',1,5000,0,0,'20','2018-06-27',0,'0',0,'KSH','petrol',1,1,'2018-06-30 09:19:16',NULL,0),(45,78.23,103.5,8096.81,1,'6','ksdfsd',1,5000,0,0,'20','2018-06-27',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 09:19:16',NULL,0),(46,4234,94.5,400113,5,'6','jka324',0,0,0,0,'40','2018-06-13',0,'0',0,'KSH','diesel',0,1,'2018-06-30 09:20:11',NULL,0),(47,4234,94.5,400113,5,'6','jka324',0,0,0,0,'40','2018-06-13',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 09:20:11',NULL,0),(48,324,94.5,30618,1,'11','dsfaf',0,0,2800,0,'1','2018-06-20',1600,'0',0,'USD','diesel',0,1,'2018-06-30 09:23:10',NULL,0),(49,324,94.5,30618,1,'11','dsfaf',0,0,2800,0,'1','2018-06-20',NULL,'',NULL,'USD','diesel',0,1,'2018-06-30 09:23:10',NULL,0),(50,903.45,103.5,93507.1,1,'6','',0,0,2900,0,'1','2018-06-21',100,'0',0,'KSH','petrol',1,1,'2018-06-30 09:28:10',NULL,0),(51,903.45,103.5,93507.1,1,'6','',0,0,2900,0,'1','2018-06-21',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 09:28:14',NULL,0),(52,903.45,103.5,93507.1,1,'6','',0,0,2900,0,'1','2018-06-21',0,'0',0,'KSH','petrol',1,1,'2018-06-30 09:28:14',NULL,0),(53,903.45,103.5,93507.1,1,'6','',0,0,2900,0,'1','2018-06-21',NULL,'',NULL,'KSH','petrol',1,1,'2018-06-30 09:28:19',NULL,0),(54,45,103.5,4657.5,1,'6','ksdfas',0,0,291,0,'1','2018-06-27',-2609,'0',0,'USD','petrol',1,1,'2018-06-30 09:30:13',NULL,0),(55,78.345,94.5,7403.6,1,'12','iom90',3,400,300,0,'1','2018-06-20',9,'0',0,'USD','diesel',0,1,'2018-06-30 09:32:02',NULL,0),(56,78.345,94.5,7403.6,1,'12','iom90',3,400,300,0,'1','2018-06-20',NULL,'',NULL,'USD','diesel',0,1,'2018-06-30 09:32:02',NULL,0),(57,34.56,94.5,3265.92,1,'8','gher67',0,0,4000,0,'1','2018-06-12',3700,'0',0,'KSH','diesel',0,1,'2018-06-30 09:34:20',NULL,0),(58,34.56,94.5,3265.92,1,'8','gher67',0,0,4000,0,'1','2018-06-12',NULL,'',NULL,'KSH','diesel',0,1,'2018-06-30 09:34:26',NULL,0),(59,345,103.5,35707.5,1,'6','ftryu345',3,400,4950,0,'1','2018-06-26',950,'0',0,'USD','petrol',1,1,'2018-06-30 09:37:37',NULL,0),(60,345,103.5,35707.5,1,'6','ftryu345',3,400,4950,0,'1','2018-06-26',NULL,'',NULL,'USD','petrol',1,1,'2018-06-30 09:37:37',NULL,0),(61,78.345,94.5,7403.6,1,'8','jk3423',3,400,4951,0,'1','2018-06-19',1,'0',0,'USD','diesel',0,1,'2018-06-30 09:56:19',NULL,0),(62,78.345,94.5,7403.6,1,'8','jk3423',3,400,4951,0,'1','2018-06-19',NULL,'',NULL,'USD','diesel',0,1,'2018-06-30 09:56:25',NULL,0),(63,200,94.5,18900,1,'6','in345436',0,0,7999,0,'3','2018-07-11',-1,'0',0,'USD','diesel',0,1,'2018-07-10 07:21:32',NULL,0),(64,232,103.5,24012,1,'6','inqweqw',0,0,8999,0,'3','2018-07-12',1000,'0',0,'KSH','petrol',1,1,'2018-07-10 07:24:05',NULL,0),(65,54,103.5,5589,1,'6','ytrr909',0,0,890,0,'3','2018-07-11',-8109,'0',0,'KSH','petrol',1,1,'2018-07-10 07:25:46',NULL,0),(66,54,103.5,5589,1,'6','ytrr909',0,0,9000,0,'3','2018-07-11',8110,'0',0,'KSH','petrol',1,1,'2018-07-10 07:26:08',NULL,0),(67,8,103.5,828,1,'9','nj9',4,4000,9000,0,'3','2018-07-24',0,'0',0,'KSH','petrol',1,1,'2018-07-10 07:29:43',NULL,0),(68,NULL,94.5,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2018-07-10 07:30:01',NULL,0),(69,8,103.5,828,1,'9','nj9',4,4000,9000,0,'3','2018-07-24',0,'0',0,'KSH','petrol',1,1,'2018-07-10 07:30:13',NULL,0),(70,890,103.5,92115,1,'6','in23423',0,0,2500,0,'5','2018-07-25',500,'0',0,'KSH','petrol',1,1,'2018-07-10 07:37:09',NULL,0),(71,432,94.5,40824,5,'9','indfds',1,5000,0,0,'2','2018-07-17',0,'0',0,'USD','diesel',0,1,'2018-07-28 09:34:29',NULL,0),(72,NULL,94.5,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2018-07-28 09:34:53',NULL,0),(73,432,94.5,40824,5,'9','indfds',1,5000,0,0,'2','2018-07-17',0,'0',0,'USD','diesel',0,1,'2018-07-28 09:35:11',NULL,0),(74,34,103.5,3519,5,'9','ibqw213',1,5000,0,0,'2','2018-07-17',0,'0',0,'USD','petrol',1,1,'2018-07-30 05:52:58',NULL,0);
/*!40000 ALTER TABLE `fuels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gl_accounts`
--

DROP TABLE IF EXISTS `gl_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gl_accounts` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `account_link` varchar(255) DEFAULT NULL,
  `master_account` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gl_accounts`
--

LOCK TABLES `gl_accounts` WRITE;
/*!40000 ALTER TABLE `gl_accounts` DISABLE KEYS */;
INSERT INTO `gl_accounts` VALUES (327,'1','550000/550001','Commercial Bank of Africa Kes','2018-09-28 09:00:47',0),(328,'2','550000/550002','Commercial Bank of Africa Usd','2018-09-28 09:00:47',0),(329,'3','550000/550003','CFC Stanbic Bank Euro','2018-09-28 09:00:47',0),(330,'4','550000/550004/12010','Petty Cash MBA','2018-09-28 09:00:47',0),(331,'5','550000/550004/12011','Petty Cash NBO','2018-09-28 09:00:47',0),(332,'6','550000/550006','Suspense Account','2018-09-28 09:00:47',0),(333,'7','400000/400001','Accounts Receivable KES','2018-09-28 09:00:47',0),(334,'8','400000/400002','Accounts Receivable USD','2018-09-28 09:00:47',0),(335,'9','410000/400900','Doubtful Debts','2018-09-28 09:00:47',0),(336,'10','410000/400901','Prov. for Bad & Doubtful debt','2018-09-28 09:00:47',0),(337,'11','410000/410001','Other Recoverables','2018-09-28 09:00:47',0),(338,'12','410000/410002','Container Deposit','2018-09-28 09:00:47',0),(339,'13','410000/410003','Director Current Account - SK','2018-09-28 09:00:47',0),(340,'14','410000/410004','Other Deposit','2018-09-28 09:00:47',0),(341,'15','410000/410005','Staff advance','2018-09-28 09:00:47',0),(342,'16','410000/410006','Staff Co Loans','2018-09-28 09:00:47',0),(343,'17','410000/410007','Prepayment','2018-09-28 09:00:47',0),(344,'18','490100','Deferred Balance (WIP)','2018-09-28 09:00:47',0),(345,'19','240000/240001','Computer,Fax ,Copiers','2018-09-28 09:00:47',0),(346,'20','240000/240002','Furniture,Fittings & Port Equipment','2018-09-28 09:00:47',0),(347,'21','240000/240003','Communication Equipment','2018-09-28 09:00:47',0),(348,'22','240000/240004','Motor Vehicle,Cycles','2018-09-28 09:00:47',0),(349,'23','240000/240010','Furnitures, Fixtures&Vehicles (acq.Cost)/Fixed Assets Software','2018-09-28 09:00:47',0),(350,'24','240000/240800','Fixed Asset Disposal','2018-09-28 09:00:47',0),(351,'25','240900/240901','Accumulated Depr.Motor Vehicle','2018-09-28 09:00:47',0),(352,'26','240900/240902','Accumulated Depr. Computer','2018-09-28 09:00:47',0),(353,'27','240900/240903','Accum  dep. F&F,port  equipment','2018-09-28 09:00:47',0),(354,'3366','754001/754004','Unrealized Exchange Gains - A/C USD','2018-09-28 09:00:47',0),(355,'30','440000/440001','Accounts Payable KES','2018-09-28 09:00:47',0),(356,'31','440000/440002','Accounts Payable USD','2018-09-28 09:00:47',0),(357,'32','163000/163001','Provision for Bad & Doubtful Debt','2018-09-28 09:00:47',0),(358,'33','450000/450001','VAT Control','2018-09-28 09:00:47',0),(359,'34','450000/450004','Witholding Tax','2018-09-28 09:00:47',0),(360,'35','450000/450005','Corporate Tax','2018-09-28 09:00:47',0),(361,'37','480000/480001','PAYE','2018-09-28 09:00:47',0),(362,'38','480000/480002','N.H.I.F','2018-09-28 09:00:47',0),(363,'39','480000/480003','N.S.S.F','2018-09-28 09:00:47',0),(364,'40','480000/480004','Net Pay (Salary & Wages)','2018-09-28 09:00:47',0),(365,'41','480000/480005','Uokoaji SACCO','2018-09-28 09:00:47',0),(366,'43','490000/490001','Deferred Tax','2018-09-28 09:00:47',0),(367,'45','439000/493001','Financial Debts','2018-09-28 09:00:47',0),(368,'3367','455000/455009','Provisions for Gratuity','2018-09-28 09:00:47',0),(369,'49','700000/700001','Port Agency ','2018-09-28 09:00:47',0),(370,'50','700000/700003','Agency Import NBI','2018-09-28 09:00:47',0),(371,'51','700000/700004','Agency Export Msa ','2018-09-28 09:00:47',0),(372,'53','700000/700007','Agency Fee -  handing Over','2018-09-28 09:00:47',0),(373,'54','700000/700010','Agency Fee - Handling Income ','2018-09-28 09:00:47',0),(374,'55','700000/700009','Turnover/Disbursements Income Vessels','2018-09-28 09:00:47',0),(375,'56','700000/701001','Freight Charge','2018-09-28 09:00:47',0),(376,'57','700000/701002','Port Charges','2018-09-28 09:00:47',0),(377,'58','700000/701003','Shipping Line Charges','2018-09-28 09:00:47',0),(378,'59','700000/701004/MSA','Transport charge Mombasa','2018-09-28 09:00:47',0),(379,'60','700000/701004/NBO','Transport charge/Nairobi','2018-09-28 09:00:47',0),(380,'61','700000/701005','Storage & Handling','2018-09-28 09:00:47',0),(381,'62','700000/701006','Port Operational Income','2018-09-28 09:00:47',0),(382,'63','700000/701007','Custom Duty','2018-09-28 09:00:47',0),(383,'64','700000/701008','Courier Charges','2018-09-28 09:00:47',0),(384,'65','700000/701009','Vessel Recoverables ','2018-09-28 09:00:47',0),(385,'66','600000/600001','Cost Of Service /Handling & Break Bulk','2018-09-28 09:00:47',0),(386,'67','600000/600002','Cost Of Service/Prior Year(s) Trading Expense','2018-09-28 09:00:47',0),(387,'68','600000/600003/MSA','Cost Of Service/Transporter Cost/Mombasa','2018-09-28 09:00:47',0),(388,'69','600000/600003/NBO','Cost Of Service/Transporter Cost/Nairobi','2018-09-28 09:00:47',0),(389,'70','600000/600004','Cost Of Service/Port Charges','2018-09-28 09:00:47',0),(390,'71','600000/600006','Cost Of Service/Boat Hire','2018-09-28 09:00:47',0),(391,'72','600000/600007','Cost Of Service/Freight Charges','2018-09-28 09:00:47',0),(392,'73','600000/600008','Shipping Line Charge','2018-09-28 09:00:47',0),(393,'74','600000/600009','Purchases/Courier Charges','2018-09-28 09:00:47',0),(394,'75','600000/600014','Port Operational expense ','2018-09-28 09:00:47',0),(395,'76','600000/600018','Grab Maintenance ','2018-09-28 09:00:47',0),(396,'77','610100/610102','Fixed Line ','2018-09-28 09:00:47',0),(397,'78','610100/610101','Mobile ','2018-09-28 09:00:47',0),(398,'79','610200','Office expenses','2018-09-28 09:00:47',0),(399,'80','610200/601209','Postage & delivery ','2018-09-28 09:00:47',0),(400,'81','610200/610201','Staff Welfare ','2018-09-28 09:00:47',0),(401,'82','610200/610202','Service Contract','2018-09-28 09:00:47',0),(402,'83','610200/610203','EDP Material ','2018-09-28 09:00:47',0),(403,'84','610200/610204','Office miscelleneous Travel ','2018-09-28 09:00:47',0),(404,'85','610200/610205','Books & Publication ','2018-09-28 09:00:47',0),(405,'86','610200/610206','Medical Expense (Insurance)','2018-09-28 09:00:47',0),(406,'87','610200/610207','Security Alarm System ','2018-09-28 09:00:47',0),(407,'88','610200/610208','License & Permit ','2018-09-28 09:00:47',0),(408,'89','610200/610211','Internet Expense ','2018-09-28 09:00:47',0),(409,'90','610200/610212','Printing & reproduction ','2018-09-28 09:00:47',0),(410,'91','610200/610213','Subscription ','2018-09-28 09:00:47',0),(411,'92','610200/610215','Entertainment-Staff ','2018-09-28 09:00:47',0),(412,'93','610200/610216','Car Park charges ','2018-09-28 09:00:47',0),(413,'94','610200/610217','Port Passes ','2018-09-28 09:00:47',0),(414,'95','610200/610218','Office Supplies ','2018-09-28 09:00:47',0),(415,'96','610200/610220','Fines & Penalties','2018-09-28 09:00:47',0),(416,'97','610200/610221','Travel Insurance ','2018-09-28 09:00:47',0),(417,'98','610200/610224','Staff Uniform ','2018-09-28 09:00:47',0),(418,'99','610200/610222','Misceleneous Expense','2018-09-28 09:00:47',0),(419,'100','610300/610301','Legal Fee ','2018-09-28 09:00:47',0),(420,'101','610300/610302','Audit fee ','2018-09-28 09:00:47',0),(421,'102','610300/610305','Consultancy ','2018-09-28 09:00:47',0),(422,'103','610500/610501','Marketing Expense ','2018-09-28 09:00:47',0),(423,'104','610500/610502','Meals ','2018-09-28 09:00:47',0),(424,'105','610500/610503','Travel expense(Air,Road,Rail)','2018-09-28 09:00:47',0),(425,'106','610500/610504','Accomodation Expense ','2018-09-28 09:00:47',0),(426,'107','610500/610505','Other Travel Expense ','2018-09-28 09:00:47',0),(427,'108','610500/610506','Car Hire & Taxis ','2018-09-28 09:00:47',0),(428,'110','610700/610701','Office Rent ','2018-09-28 09:00:47',0),(429,'111','610700/610704','Equipment repair ','2018-09-28 09:00:47',0),(430,'112','610700/610705','Janitorial Expense ','2018-09-28 09:00:47',0),(431,'113','610700/610707','Electricity Expense ','2018-09-28 09:00:47',0),(432,'114','610700/610708','Water Expense ','2018-09-28 09:00:47',0),(433,'115','610800/610801','Gift & Donation ','2018-09-28 09:00:47',0),(434,'116','610800/610802','Industrial Training Levy','2018-09-28 09:00:47',0),(435,'117','610800/610804','Staff Training ','2018-09-28 09:00:47',0),(436,'118','610900','Motor Maintenance Expense','2018-09-28 09:00:47',0),(437,'119','610900/610901','Motor Repair ','2018-09-28 09:00:47',0),(438,'120','610900/610902','Car wash ','2018-09-28 09:00:47',0),(439,'121','610900/610903','Motor Fuel Expense ','2018-09-28 09:00:47',0),(440,'122','610900/610904','Motor Insurance ','2018-09-28 09:00:47',0),(441,'123','620000/620001','Basic Salary ','2018-09-28 09:00:47',0),(442,'124','620000/620003','Attachee Allowance','2018-09-28 09:00:47',0),(443,'125','620000/620004','NSSF Co. Contribution ','2018-09-28 09:00:47',0),(444,'126','620000/620005','NHIF Attachee Co. Contribution','2018-09-28 09:00:47',0),(445,'127','620000/620006','Employers Liabilty ','2018-09-28 09:00:47',0),(446,'128','620000/620008','N.I.T.A Contribution ','2018-09-28 09:00:47',0),(447,'129','630000/630001','Depreciation Exp. Fixed Assets ','2018-09-28 09:00:47',0),(448,'130','650000/651000','XX 2018 Loan Interest ','2018-09-28 09:00:47',0),(449,'131','650000/652000','Interest Expense','2018-09-28 09:00:47',0),(450,'132','654000/654001','Realized Exchange Losses ','2018-09-28 09:00:47',0),(451,'133','650000/659000','Other Financial Charges','2018-09-28 09:00:47',0),(452,'3381','410000/410009/087','Other Advances/CATHERINE NYAMBURA THUO','2018-09-28 09:00:47',0),(453,'148','7015000','Rounding Adjustment','2018-09-28 09:00:47',0),(454,'147','700000/701010','Boat Hire','2018-09-28 09:00:47',0),(455,'185','410000/410012','Staff Co. Loan (Ex Employees)','2018-09-28 09:00:47',0),(456,'155','240900/240904','Acc Dep - Software','2018-09-28 09:00:47',0),(457,'152','411000','Inventy Control','2018-09-28 09:00:47',0),(458,'156','450000/410010','Current Tax','2018-09-28 09:00:47',0),(459,'184','550000/550005','Fixed/Call Deposit','2018-09-28 09:00:47',0),(460,'158','700000/700002','Agency Fee/Agency Import MSA','2018-09-28 09:00:47',0),(461,'159','700000/700005','Agency Fee/Agency Export NBI','2018-09-28 09:00:47',0),(462,'161','610200/610214','Software & Hardware Expense ','2018-09-28 09:00:47',0),(463,'162','610200/610225','Staff Activities & Team Building ','2018-09-28 09:00:47',0),(464,'187','480000/480006','Accrued Expenses','2018-09-28 09:00:47',0),(465,'186','410000/410006/00057 ','Martin Karani','2018-09-28 09:00:47',0),(466,'167','600000/600019','Vessel recoverables ','2018-09-28 09:00:47',0),(467,'178','100000/100001','Issued Capital','2018-09-28 09:00:47',0),(468,'172','610200/610226','Office Plus Policy ','2018-09-28 09:00:47',0),(469,'174','610200/610227','Meeting & Confrence ','2018-09-28 09:00:47',0),(470,'179','100000/10002','Dividends','2018-09-28 09:00:47',0),(471,'169','410000/410011','Marketing Float ','2018-09-28 09:00:47',0),(472,'180','100000/10003','Retained Earnings Current Yr','2018-09-28 09:00:47',0),(473,'181','100000/100004','Retained Earnings - Accumulated','2018-09-28 09:00:47',0),(474,'193','610200/610223','Entertainment -Third party ','2018-09-28 09:00:47',0),(475,'195','610300/610304','Professional fees/Secretarial Expenses ','2018-09-28 09:00:47',0),(476,'200','610900/610905','Other Motor Expenses ','2018-09-28 09:00:47',0),(477,'201','620000/620002','Other Pay/Bonus ','2018-09-28 09:00:47',0),(478,'203','410000/410006/00017 ','Catherine Lewa','2018-09-28 09:00:47',0),(479,'204','410000/410006/00043 ','Wario','2018-09-28 09:00:47',0),(480,'205','410000/410006/00034 ','Mourine Magero','2018-09-28 09:00:47',0),(481,'191','600000/600016','Hopper Maintenance ','2018-09-28 09:00:47',0),(482,'206','410000/410012/00029 ','Steve Kivuva','2018-09-28 09:00:47',0),(483,'207','410000/410012/00041','Jacob Safari','2018-09-28 09:00:47',0),(484,'208','410000/410012/00003','Alfred Kaburu - Ex Employee Car Loan','2018-09-28 09:00:47',0),(485,'209','410000/410006/00001','Silvester Kututa','2018-09-28 09:00:47',0),(486,'210','410000/410006/00033','Magdaline Ndirangu','2018-09-28 09:00:47',0),(487,'211','410000/410006/00048 ','Maurine Opiyo','2018-09-28 09:00:47',0),(488,'212','410000/410006/00049 ','Isaac Babu ','2018-09-28 09:00:47',0),(489,'213','410000/410006/00051 ','Chrispus Kilei','2018-09-28 09:00:47',0),(490,'217','410000/410006/00056 ','Leonard Mwaruwa','2018-09-28 09:00:47',0),(491,'218','410000/410006/00040 ','Francisca Mueni','2018-09-28 09:00:47',0),(492,'219','410000/410006/00047 ','Aloice Muoki ','2018-09-28 09:00:47',0),(493,'220','410000/410006/00027','Pauline Karwirwa','2018-09-28 09:00:47',0),(494,'224','410000/410006/00046 ','Clinton Ouma','2018-09-28 09:00:47',0),(495,'226','620000/620010','Payroll Expense/Staff Medical ','2018-09-28 09:00:47',0),(496,'230','764000/764001','Other extra Ordinary income ','2018-09-28 09:00:47',0),(497,'231','210000/211001','Software - ERP','2018-09-28 09:00:47',0),(498,'232','250000/250001','Leasehold ','2018-09-28 09:00:47',0),(499,'233','211900/211901','Accumulated Depr. Software - ERP','2018-09-28 09:00:47',0),(500,'234','280000/280001','Investment In Associate FW','2018-09-28 09:00:47',0),(501,'235','670000/670001 ','Income Tax','2018-09-28 09:00:47',0),(502,'236','620000/620011','Payroll Expense/Telephone Allowance ','2018-09-28 09:00:47',0),(503,'237','620000/620012','Payroll Expense/Terminal Dues ','2018-09-28 09:00:47',0),(504,'240','250900/250901','Accum Amort-Leasehold','2018-09-28 09:00:47',0),(505,'241','700000/700008','Hire of Hoppers ','2018-09-28 09:00:47',0),(506,'242','700000/700011','Hire of Grabs ','2018-09-28 09:00:47',0),(507,'250','610700/610702','Building Repair ','2018-09-28 09:00:47',0),(508,'253','410000/410006/00999 ','Staff Co Loan','2018-09-28 09:00:47',0),(509,'254','410000/410012/09999','Staff Co. Loan Ex Employees','2018-09-28 09:00:47',0),(510,'256','610500/610510','ESL Uganda Establishment Expenses ','2018-09-28 09:00:47',0),(511,'257','460000/460001','Advances from Shipowners','2018-09-28 09:00:47',0),(512,'258','460000/460002','Advances From General Customers','2018-09-28 09:00:47',0),(513,'262','620000/620013','Payroll Expense/Fuel Allowance ','2018-09-28 09:00:47',0),(514,'238','450000/450007','HELB','2018-09-28 09:00:47',0),(515,'239','450000/450008','Kenidia/Madison/Pension/Jubilee','2018-09-28 09:00:47',0),(516,'244','656000/656001','Bank Charges ','2018-09-28 09:00:47',0),(517,'245','754000/754002','Realized Exchange Gains - AR','2018-09-28 09:00:47',0),(518,'246','754000/754001','Realized Exchange Gains','2018-09-28 09:00:47',0),(519,'247','751100/751101','Debtors Interest Income ','2018-09-28 09:00:47',0),(520,'248','740000/740001','Other Financial Income ','2018-09-28 09:00:47',0),(521,'249','630000/630200','Depreciation Exp. Intangible Assets','2018-09-28 09:00:47',0),(522,'1499','455000/455001','PAYE','2018-09-28 09:00:47',0),(523,'255','410000/410012/00046 ','Clinton Ouma','2018-09-28 09:00:47',0),(524,'259','410000/410013','Advances to ESLTZ Dar (Tz)','2018-09-28 09:00:47',0),(525,'260','490000/490002','Deferred Income','2018-09-28 09:00:47',0),(526,'261','410000/410014','Advances to FW(Intercompany)','2018-09-28 09:00:47',0),(527,'263','410000/410006/00058 ','Vincent Rutto','2018-09-28 09:00:47',0),(528,'264','410000/410015','Advances to SLL(Intercomapny)','2018-09-28 09:00:47',0),(529,'265','410000/410006/00061 ','Arshur Owane Lomo','2018-09-28 09:00:47',0),(530,'272','400000/400003','AR - Unrealised Exchange Gain(Loss)','2018-09-28 09:00:47',0),(531,'273','440000/440003','AP - Unrealised Exchange Gain(Loss)','2018-09-28 09:00:47',0),(532,'266','280000/280002','Investments in Associates ESLTZ (49%)','2018-09-28 09:00:47',0),(533,'268','630000/631001','Receivables Witten off ','2018-09-28 09:00:47',0),(534,'269','400900/400901','Interest Income Receivable','2018-09-28 09:00:47',0),(535,'274','630000/631002','Payables Written off ','2018-09-28 09:00:47',0),(536,'275','280000/280004','Investments In Associates SLLKE ','2018-09-28 09:00:47',0),(537,'276','470000/470001','Dividends Payable','2018-09-28 09:00:47',0),(538,'277','610200/610228','Computer Repairs','2018-09-28 09:00:47',0),(539,'278','680000/680001','Deferred Tax - Allocations','2018-09-28 09:00:47',0),(540,'279','780500/780501','Net Profit of Consolidated Companies','2018-09-28 09:00:47',0),(541,'280','690500/690501','Net Loss of Consolidated Companies','2018-09-28 09:00:47',0),(542,'282','700000/702001','Crew Change Income ','2018-09-28 09:00:47',0),(543,'283','600000/603001','Wheel loader Expense ','2018-09-28 09:00:47',0),(544,'287','270000/270001','Assets Under Constr.& Down Payment (acq)','2018-09-28 09:00:47',0),(545,'288','450000/450002','Advance Tax','2018-09-28 09:00:47',0),(546,'289','410000/410009','Other Advances','2018-09-28 09:00:47',0),(547,'290','410000/410001/00055 ','Other Recoverables - Evans Ngala','2018-09-28 09:00:47',0),(548,'291','410000/410006/00055 ','Evans Ngala','2018-09-28 09:00:47',0),(549,'292','410000/410006/00064 ','Nancy Kemuma','2018-09-28 09:00:47',0),(550,'1500','455000/455002','N.H.I.F','2018-09-28 09:00:47',0),(551,'296','750000/750010','Financial Investment ','2018-09-28 09:00:47',0),(552,'297','480000/480008','HELB','2018-09-28 09:00:47',0),(553,'298','664000/664001','Other Extra Ordinary Charges ','2018-09-28 09:00:47',0),(554,'302','654001/654010','Unrealized Exchange Losses - AR ','2018-09-28 09:00:47',0),(555,'271','763000/763001','Gain On Disposal Of Fixed Assets','2018-09-28 09:00:47',0),(556,'294','490100/490102','Deferred Expense','2018-09-28 09:00:47',0),(557,'299','663000/663001','Loss On Disposal of Fixed Assets ','2018-09-28 09:00:47',0),(558,'300','600000/604001','Arms Handling Expense ','2018-09-28 09:00:47',0),(559,'303','654000/654002','Unrealized Exchange Losses - AP ','2018-09-28 09:00:47',0),(560,'304','654000/654003','Unrealized Exchange Losses - A/C USD','2018-09-28 09:00:47',0),(561,'305','654000/654004','Unrealized Exchange Losses - LOAN','2018-09-28 09:00:47',0),(562,'306','754001/754003','Unrealized Exchange Gains - AP','2018-09-28 09:00:47',0),(563,'1501','455000/455003','N.S.S.F','2018-09-28 09:00:47',0),(564,'1502','455000/455004','Net Pay (Salaries & Wages)','2018-09-28 09:00:47',0),(565,'309','410000/410006/00067','Jacob Safari','2018-09-28 09:00:47',0),(566,'310','410000/410006/00065 ','Lenrod Mwamburi','2018-09-28 09:00:47',0),(567,'312','410000/410016','Advances Other','2018-09-28 09:00:47',0),(568,'1312','410000/410012/00057 ','Martin Karani - Car Loan','2018-09-28 09:00:47',0),(569,'1313','410000/410012/00040 ','Francisca Mueni - Car Loan','2018-09-28 09:00:47',0),(570,'1314','410000/410012/00067','Jacob Safari - Car Loan','2018-09-28 09:00:47',0),(571,'1315','635000/635001','Bad Debt Provision ','2018-09-28 09:00:47',0),(572,'1316','410000/410017','Corporate Strategy Exp. Control A/C','2018-09-28 09:00:47',0),(573,'1317','763000/763002','Gain on Disposal of Fixed Asset','2018-09-28 09:00:47',0),(574,'281','410000/410008','Travel Advances','2018-09-28 09:00:47',0),(575,'284','610800/610805','Refund DIT','2018-09-28 09:00:47',0),(576,'285','700000/703001','Wheel loader Income ','2018-09-28 09:00:47',0),(577,'286','600000/602001','Crew Change Expense ','2018-09-28 09:00:47',0),(578,'1318','410000/410006/00072 ','Lydia Wambui','2018-09-28 09:00:47',0),(579,'1319','620000/620014','Payroll Expense/Leave Travel Allowance ','2018-09-28 09:00:47',0),(580,'2319','410000/410012/00065 ','Lenrod Mwamburi - Car Loan','2018-09-28 09:00:47',0),(581,'2320','412000/412001','Tax Recoverable','2018-09-28 09:00:47',0),(582,'2321','610800/610807','Prior Year(s) Operating Expenses','2018-09-28 09:00:47',0),(583,'2322','410000/410006/00077 ','Stephen Okiki ','2018-09-28 09:00:47',0),(584,'2323','410000/410006/00076 ','Daniel Lokorito ','2018-09-28 09:00:47',0),(585,'2324','410000/410012/00047 ','Aloice Muoki  - Car Loan','2018-09-28 09:00:47',0),(586,'2325','410000/410012/00049 ','Isaac Babu - Car Loan','2018-09-28 09:00:47',0),(587,'2326','410000/410012/00055 ','Evans Ngala - Car Loan','2018-09-28 09:00:47',0),(588,'2327','410000/410006/00073 ','Joylinah Nduta','2018-09-28 09:00:47',0),(589,'2328','480000/480010','Group - Staff Investments Contribution','2018-09-28 09:00:47',0),(590,'2329','751100/751102','Fixed/Call Deposit Income','2018-09-28 09:00:47',0),(591,'2330','410000/410006/00079 ','Patrick Mbugua ','2018-09-28 09:00:47',0),(592,'2331','410000/410006/00078','Justus Kalii','2018-09-28 09:00:47',0),(593,'2332','410000/410006/00080 ','Raymond Juma','2018-09-28 09:00:47',0),(594,'2333','410000/410018','Control A/C - Office Facelift','2018-09-28 09:00:47',0),(595,'2334','410000/410006/00087','Catherine Thuo','2018-09-28 09:00:47',0),(596,'2335','410000/410006/00088','Grace Mpoya','2018-09-28 09:00:47',0),(597,'2336','410000/410006/00085 ','Anselm Mwadime','2018-09-28 09:00:47',0),(598,'301','700000/704001','Arms Handling Income ','2018-09-28 09:00:47',0),(599,'311','610800/610806','ISO 9001:2008 Certification Expenses ','2018-09-28 09:00:47',0),(600,'2337','410000/410012/00085 ','Anselm Mwadime - Car Loan','2018-09-28 09:00:47',0),(601,'2338','410000/410012/00083','Merreck Getugi - Car Loan','2018-09-28 09:00:47',0),(602,'2339','410000/410012/00081 ','Florence Tuei - Car Loan','2018-09-28 09:00:47',0),(603,'2340','410000/410012/00082 ','Kennedy Kivuvani - Car Loan','2018-09-28 09:00:47',0),(604,'2341','410000/410012/00084 ','Patrick Magiri - Ex Employee Car Loan','2018-09-28 09:00:47',0),(605,'2342','410000/410006/00083','Merreck Getugi','2018-09-28 09:00:47',0),(606,'2343','410000/410006/00084 ','Patrick Magiri ','2018-09-28 09:00:47',0),(607,'2344','410000/410006/00082 ','Kennedy Kivuvani ','2018-09-28 09:00:47',0),(608,'2345','410000/410006/00081 ','Florence Tuei ','2018-09-28 09:00:47',0),(609,'2346','410000/410012/00079 ','Patrick Mbugua - Car Loan','2018-09-28 09:00:47',0),(610,'2347','220000/220001','Land - Mazeras','2018-09-28 09:00:47',0),(611,'2351','280000/280005','Investments In Associates ESLUG','2018-09-28 09:00:47',0),(612,'2352','410000/410019','Advances to ESLUG (Intercompany)','2018-09-28 09:00:47',0),(613,'2353','410000/410006/00097 ','Peter Manga ','2018-09-28 09:00:47',0),(614,'2354','410000/410006/00063 ','Erickson Mwaniki','2018-09-28 09:00:47',0),(615,'2355','410000/410006/00091','Irene Atieno','2018-09-28 09:00:47',0),(616,'2356','410000/410012/00095','Francis Opalo - Car Loan','2018-09-28 09:00:47',0),(617,'2357','410000/410020','Director Current Account - JK','2018-09-28 09:00:47',0),(618,'2358','410000/410006/00092','Mercyline Mutua ','2018-09-28 09:00:47',0),(619,'2359','410000/410021','Dividends Receivable','2018-09-28 09:00:47',0),(620,'2361','240000/240005','Heavy Commercial Vehicle','2018-09-28 09:00:47',0),(621,'2363','140000/140001','Accumulated Profits (Losses)','2018-09-28 09:00:47',0),(622,'2364','493000/493001','Financial Debts/Manuchar Loan','2018-09-28 09:00:47',0),(623,'3364','650000/650001','Debts Expenses - Interest ST','2018-09-28 09:00:47',0),(624,'3365','650000/650011','Debts Expenses - Interest LT','2018-09-28 09:00:47',0),(625,'2348','460000/460003','Intercompany Deposits','2018-09-28 09:00:47',0),(626,'2349','410000/410012/00048 ','Maurine Opiyo - Car Loan','2018-09-28 09:00:47',0),(627,'2360','450000/450009','Imprests','2018-09-28 09:00:47',0),(628,'2362','240900/240906','Acc Dep Heavy Commercial Vehicle','2018-09-28 09:00:47',0),(629,'1503','455000/455005','Uokoaji Sacco','2018-09-28 09:00:47',0),(630,'1504','455000/455006','Group - Staff Investments Contribution','2018-09-28 09:00:47',0),(631,'1505','455000/455007','HELB','2018-09-28 09:00:47',0),(632,'1506','455000/455008','Kenidia/Madison/Pension/Jubilee','2018-09-28 09:00:47',0),(633,'3368','410000/410009/055','Other Advances/EVANS NGALA CHIBUNGU','2018-09-28 09:00:47',0),(634,'3369','410000/410009/001','Other Advances/SILVESTER MUSOVYA KUTUTA','2018-09-28 09:00:47',0),(635,'3370','410000/410009/088','Other Advances/GRACE MPOYA','2018-09-28 09:00:47',0),(636,'3371','410000/410009/076','DANIEL LUKORITO WANIKINA','2018-09-28 09:00:47',0),(637,'3372','410000/410009/104',NULL,'2018-09-28 09:00:47',0),(638,'3373','410000/410009/106',NULL,'2018-09-28 09:00:47',0),(639,'3374','410000/410009/034','Other Advances/MOURINE ACHIENG MAGERO','2018-09-28 09:00:47',0),(640,'3375','410000/410009/040','Other Advances/FRANCISCA MUENI NZIOKA','2018-09-28 09:00:47',0),(641,'3376','410000/410009/047','Other Advances/ALOICE MUOKI KUTUTA','2018-09-28 09:00:47',0),(642,'3377','410000/410009/065','Other Advances/LENROD MWAMBURI MGENDI','2018-09-28 09:00:47',0),(643,'3378','410000/410009/069','Other Advances/JOHN KIPCHUMBA LAGAT','2018-09-28 09:00:47',0),(644,'3379','410000/410009/073','Other Advances/JOYLINAH NDUTA NJERI','2018-09-28 09:00:47',0),(645,'3380','410000/410009/077','Other Advances/STEPHEN OKIKI OMONDI','2018-09-28 09:00:47',0),(646,'3416','410000/410009/105',NULL,'2018-09-28 09:00:47',0),(647,'3417','410000/410009/101',NULL,'2018-09-28 09:00:47',0),(648,'3418','410000/410009/102',NULL,'2018-09-28 09:00:47',0),(649,'3419','410000/410009/T022',NULL,'2018-09-28 09:00:47',0),(650,'3382','410000/410009/097','Other Advances/PETER HAVACY  MANGA','2018-09-28 09:00:47',0),(651,'3383','410000/410009/017','Other Advances/CATHERINE ANZAZI LEWA','2018-09-28 09:00:47',0),(652,'3384','410000/410009/043','Other Advances/WILLINGTONE MICHAEL WARIO','2018-09-28 09:00:47',0),(653,'3385','410000/410009/057','Other Advances/MARTIN KARANI IKIARA','2018-09-28 09:00:47',0),(654,'3386','410000/410009/079','Other Advances/PATRICK MUKUNDI MBUGUA','2018-09-28 09:00:47',0),(655,'3387','410000/410009/091','Other Advances/IRENE ATIENO OTIENO','2018-09-28 09:00:47',0),(656,'3388','410000/410009/092','Other Advances/MERCYLINE MUTHEU MUTUA','2018-09-28 09:00:47',0),(657,'3389','410000/410009/093','Other Advances/COLLINS ONYANGO PAMBA','2018-09-28 09:00:47',0),(658,'3390','410000/410009/048','Other Advances/MAUREEN ATIENO OPIYO','2018-09-28 09:00:47',0),(659,'3391','410000/410009/049','Other Advances/ISAAC BABU WATKINS','2018-09-28 09:00:47',0),(660,'3392','410000/410009/051','Other Advances/CHRISPUS MAINGI KILEI','2018-09-28 09:00:47',0),(661,'3393','410000/410009/056','Other Advances/LEONARD MWARUWA BAYA','2018-09-28 09:00:47',0),(662,'3394','410000/410009/063','Other Advances/ERICKSON MWANIKI NGELE','2018-09-28 09:00:47',0),(663,'3395','410000/410009/078','Other Advances/JUSTUS KALII MUTHEMBWA','2018-09-28 09:00:47',0),(664,'3396','410000/410009/080','/Other Advances/RAYMOND JUMA WANGUNDA','2018-09-28 09:00:47',0),(665,'3397','410000/410009/086','Other Advances/ERIC OLENSI OSINYA','2018-09-28 09:00:47',0),(666,'3420','410000/410009/103',NULL,'2018-09-28 09:00:47',0),(667,'3398','410000/410009/094','Am. Receiv. Within One Year - Others/Other Advances/GULJAN ABUBAKAR RAMADHAN','2018-09-28 09:00:47',0),(668,'3399','410000/410009/095','Other Advances/FRANCIS OUMA OPALO','2018-09-28 09:00:47',0),(669,'3400','410000/410009/098','Other Advances/LAWRENCE ODHIAMBO AMENYA','2018-09-28 09:00:47',0),(670,'3401','410000/410009/099','Other Advances/MOSES ELIAS MANGALE','2018-09-28 09:00:47',0),(671,'3402','410000/410009/081','Other Advances/FLORENCE CHEPNGETICH TUEI','2018-09-28 09:00:47',0),(672,'3403','410000/410009/089','Other Advances/ERIC MULWA KYALO','2018-09-28 09:00:47',0),(673,'3404','410000/410009/082','Other Advances/KENNEDY KIVUVANI','2018-09-28 09:00:47',0),(674,'3405','410000/410009/084','Other Advances/PATRICK MURANGIRI MAGIRI','2018-09-28 09:00:47',0),(675,'3406','410000/410009/090','Other Advances/ARSHUR LOMO OWANE','2018-09-28 09:00:47',0),(676,'3407','410000/410009/100','Other Advances/MOUREEN WAIRIMU KIAMA','2018-09-28 09:00:47',0),(677,'3408','410000/410009/015','Other Advances/JOSEPH KUUMA MATHEKA','2018-09-28 09:00:47',0),(678,'3409','410000/410009/024','Other Advances/WASHINGTON MWAMBURI MASEGHE','2018-09-28 09:00:47',0),(679,'3410','410000/410009/028','Others/Other Advances/MOSES JOHN SHIKHONGA','2018-09-28 09:00:47',0),(680,'3411','410000/410009/033','Other Advances/CHRISTINE NDUTA GEMA','2018-09-28 09:00:47',0),(681,'3412','410000/410009/036','Other Advances/ALOIS MUTUA DAVID','2018-09-28 09:00:47',0),(682,'3413','410000/410009/042','Other Advances/BENARD MUSIKEKE OLAYO','2018-09-28 09:00:47',0),(683,'3414','410000/410009/045','Other Advances/GEORGE MULI MUTUA','2018-09-28 09:00:47',0),(684,'3415','410000/410009/046','Others/Other Advances/SALIM SULUBU CHARO','2018-09-28 09:00:47',0),(685,'3421','168000/168001','Deferred Tax','2018-09-28 09:00:47',0),(686,'3422','490000/490004','Accrued Expense','2018-09-28 09:00:47',0);
/*!40000 ALTER TABLE `gl_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hire_assets`
--

DROP TABLE IF EXISTS `hire_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hire_assets` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) DEFAULT NULL,
  `staff_id` int(100) DEFAULT NULL,
  `client_id` int(100) DEFAULT NULL,
  `supplier_id` varchar(255) DEFAULT NULL,
  `project_id` int(100) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `tonnes` mediumtext,
  `total` double DEFAULT NULL,
  `measurement` varchar(255) DEFAULT NULL,
  `hours` longtext,
  `currency` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hire_assets`
--

LOCK TABLES `hire_assets` WRITE;
/*!40000 ALTER TABLE `hire_assets` DISABLE KEYS */;
INSERT INTO `hire_assets` VALUES (3,'IPAD',13,21,'21',7,40,'',1800,'hours','45','USD',NULL,NULL,'inhouse','2018-07-31 06:49:32',NULL,0),(4,'PRINTER',12,2,'1',2,210,'45',9450,'tonnes','','USD','esl stores','esl outlets','inhouse','2018-09-10 08:37:12',NULL,0),(5,'PANASONIC',10,2,'1',2,45,'24',1080,'tonnes','','USD','esl_store','esl_store2','inhouse','2018-09-10 08:41:22',NULL,0),(6,'ELECTRONIC',9,8,'3',2,120,'32',3840,'tonnes','','USD','','','outsourced','2018-09-10 08:54:06',NULL,0),(7,'ELECTRONIC',12,5,'',2,100,'456',45600,'tonnes','','USD','scs','xczcz','inhouse','2018-09-10 08:55:00',NULL,0),(11,'ELECTRONIC TYPEWRITER, HP DESK JET 2050, HP DESK JET 2050',6,0,'',4,0,'',0,'','','','ESL East Africa','ESL East Africa','inhouse','2018-09-12 13:04:12',NULL,0),(12,'Hoppers, Grabs',21,0,'',28,200,'450',90000,'tonnes','','USD','ESL East Africa','ESL East Africa','outsourced','2018-09-12 13:14:42',NULL,0);
/*!40000 ALTER TABLE `hire_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ict_issets`
--

DROP TABLE IF EXISTS `ict_issets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ict_issets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sage_id` int(11) NOT NULL DEFAULT '0',
  `sage_dept` int(11) NOT NULL DEFAULT '0',
  `model_no` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `accepted` enum('No','Yes') DEFAULT 'No',
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `depreciation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sage_id` (`sage_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ict_issets`
--

LOCK TABLES `ict_issets` WRITE;
/*!40000 ALTER TABLE `ict_issets` DISABLE KEYS */;
INSERT INTO `ict_issets` VALUES (374,1878,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(375,1879,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(376,1880,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(377,1881,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(378,1882,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(379,1883,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(380,1884,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(381,1885,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(382,1886,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(383,1887,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(384,1888,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(385,1889,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(386,1890,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(387,1891,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(388,1892,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(389,1893,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(390,1894,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(391,1895,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(392,1896,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(393,1897,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(394,1898,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(395,1899,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(396,1900,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(397,1901,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(398,1902,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(399,1903,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(400,1904,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(401,1905,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(402,1906,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(403,1907,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(404,1908,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(405,1909,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(406,1910,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(407,1911,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(408,1912,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(409,1913,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(410,1914,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(411,1915,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(412,1916,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(413,1917,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(414,1918,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(415,1919,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(416,1920,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(417,1921,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(418,1922,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(419,1923,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(420,1924,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(421,1925,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(422,1926,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(423,1927,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',1),(424,1928,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(425,1929,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(426,1930,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(427,1931,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(428,1932,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(429,1933,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(430,1934,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(431,1935,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(432,1936,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(433,1937,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(434,1938,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(435,1939,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(436,1940,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(437,1941,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(438,1942,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(439,1943,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(440,1944,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(441,1945,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(442,1946,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(443,1947,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(444,1948,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(445,1949,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(446,1950,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(447,1951,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(448,1952,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(449,1953,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(450,1954,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(451,1955,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(452,1956,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(453,1957,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(454,1958,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(455,1959,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(456,1960,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(457,1961,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(458,1962,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(459,1963,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(460,1964,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(461,1965,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(462,1966,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(463,1967,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(464,1968,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(465,1969,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(466,1970,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(467,1971,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(468,1972,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(469,1973,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(470,1974,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(471,1975,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(472,1976,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(473,1977,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(474,1978,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(475,1979,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(476,1980,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(477,1981,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(478,1982,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(479,1983,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(480,1984,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(481,1985,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(482,1986,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(483,1987,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(484,1988,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(485,1989,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(486,1990,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(487,1991,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(488,1992,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(489,1993,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(490,1994,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(491,1995,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(492,1996,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(493,1997,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(494,1998,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(495,1999,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(496,2000,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(497,2001,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(498,2002,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(499,2003,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(500,2004,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(501,2005,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(502,2006,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(503,2007,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(504,2008,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(505,2009,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(506,2010,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(507,2011,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(508,2012,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(509,2013,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(510,2014,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(511,2015,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(512,2016,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(513,2017,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(514,2018,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(515,2019,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(516,2020,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(517,2021,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(518,2022,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(519,2023,0,NULL,NULL,0,'No',0,NULL,'2018-06-28 08:44:05',0),(520,2267,0,NULL,NULL,0,'No',0,NULL,'2005-12-31 21:00:00',0),(521,2269,0,NULL,NULL,0,'No',0,NULL,'2019-09-01 21:00:00',0),(522,2270,0,NULL,NULL,0,'No',0,NULL,'2019-09-01 21:00:00',0),(523,2280,0,NULL,NULL,0,'No',0,NULL,'2015-07-08 21:00:00',0),(524,2282,0,NULL,NULL,0,'No',0,NULL,'2020-06-09 21:00:00',0),(525,2318,0,NULL,NULL,0,'No',0,NULL,'2021-05-23 21:00:00',0),(526,2319,0,NULL,NULL,0,'No',0,NULL,'2021-05-23 21:00:00',0),(527,2321,0,NULL,NULL,0,'No',0,NULL,'2021-05-23 21:00:00',0),(528,2322,0,NULL,NULL,0,'No',0,NULL,'2021-05-23 21:00:00',0);
/*!40000 ALTER TABLE `ict_issets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_assets`
--

DROP TABLE IF EXISTS `inventory_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_assets` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `asset_no` int(100) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `custodian` varchar(255) DEFAULT NULL,
  `assign_by` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `purchase_date` varchar(255) DEFAULT NULL,
  `purchase_cost` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_assets`
--

LOCK TABLES `inventory_assets` WRITE;
/*!40000 ALTER TABLE `inventory_assets` DISABLE KEYS */;
INSERT INTO `inventory_assets` VALUES (1,1878,'ADM/013/ESL','ELECTRONIC TYPEWRITER','aoo300','sr45','Nairobi','ict','',5,'2','2001-01-01 00:00:00','15000','Aon Kenya Insurance Brokers Ltd',0,'2019-04-29 13:47:37','2019-04-29 16:47:37',0),(2,1879,'ACC/011/ESL','PRINTER HP-LASERJET 3005','cm233','cm7777','Nairobi','ict--',NULL,5,'2','2006-01-01 00:00:00','60000','CMA CGM Kenya Ltd',0,'2019-04-29 14:01:09','2019-04-29 17:01:09',0),(3,1880,'ADM/048/ESL','PANASONIC CONSOLE-SWITCH BOARD','wdwe','ser444','Nairobi','icicic','82',5,'2','2007-01-01 00:00:00','7000','AAR Health Care',0,'2019-04-29 14:03:33','2019-04-29 17:03:33',0),(4,1881,'ADM/067/FWL','PANASONIC KX C-SWITCH BOARD','xzxc','sdcsd','Nairobi','fvszdasd','84',5,'2','2008-01-01 00:00:00','89070','Expolanka Freight Dubai',0,'2019-04-29 14:05:15','2019-04-29 17:05:15',0),(5,1882,'ESL/MSA/IT/0311','HP DESK JET 2050','wdwed','se34534','Nairobi','cat343','',5,'2','2008-01-01 00:00:00','15000','Enforcer Alarms Ltd',0,'2019-04-30 08:42:35','2019-04-30 11:42:35',0),(6,1883,'ESL/MSA/IT/0311','HP DESK JET 2050',NULL,NULL,'1',NULL,NULL,NULL,NULL,'2010-01-01 00:00:00','15000','4',0,'2019-04-29 14:24:01',NULL,0),(7,1884,'ESL/MSA/IT/0411','DELL INSPIRON N4030','m343','sr345345','Nairobi','cat56677','',5,'2','2010-01-01 00:00:00','60000','AAR Health Care',0,'2019-04-30 10:44:03','2019-04-30 13:44:03',0),(8,1885,'ESL/MSA/IT/0711','HP PROBOOK 620 LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2010-01-01 00:00:00','60000','0',0,'2019-04-29 14:24:01',NULL,0),(9,1886,'ACC/010/ESL','MINI LAPTOP',NULL,NULL,'3',NULL,NULL,NULL,NULL,'2010-01-01 00:00:00','29000','29',0,'2019-04-29 14:24:01',NULL,0),(10,1887,'ACC/010/ESL','MINI LAPTOP',NULL,NULL,'3',NULL,NULL,NULL,NULL,'2011-01-01 00:00:00','29000','29',0,'2019-04-29 14:24:01',NULL,0),(11,1888,'ESL/MSA/EQ/0113','MAC BOOK PRO',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2013-01-01 00:00:00','160000','0',0,'2019-04-29 14:24:01',NULL,0),(12,1889,'294','Laptop HP 650',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2018-03-01 00:00:00','61175','64',0,'2019-04-29 14:24:01',NULL,0),(13,1890,'ESL/MSA/IT/1513','Laptop HP 650',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2013-06-01 00:00:00','61175','23',0,'2019-04-29 14:24:01',NULL,0),(14,1891,'ESL/MSA/FU/9914','LAPTOP HP250 SR#CND6163N5T',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-09-01 00:00:00','52500','0',0,'2019-04-29 14:24:01',NULL,0),(15,1892,'230','LAPTOP HP250 SR#CND6163T6K',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-01 00:00:00','52500','0',0,'2019-04-29 14:24:01',NULL,0),(16,1893,'231','LAPTOP HP250 SR# CND62463Q7',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-01 00:00:00','52500','0',0,'2019-04-29 14:24:01',NULL,0),(17,1894,'258','LAPTOP HP250 SR# CND624623M',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-01 00:00:00','52500','0',0,'2019-04-29 14:24:01',NULL,0),(18,1895,'259','LAPTOP HP250 SR#CND62462RM',NULL,NULL,'1',NULL,NULL,NULL,NULL,'2016-10-01 00:00:00','52500','8',0,'2019-04-29 14:24:01',NULL,0),(19,1896,'X0004','MOTOROLA DP PORTABLE RADIO SN 871TRV6521',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-01 00:00:00','83000','0',0,'2019-04-29 14:24:01',NULL,0),(20,1897,'268','MOTOROLA DP PORTABLE RADIO SN 871TRY3129',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-11-01 00:00:00','83000','0',0,'2019-04-29 14:24:01',NULL,0),(21,1898,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2016-11-01 00:00:00','72500','5482',0,'2019-04-29 14:24:01',NULL,0),(22,1899,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2017-11-01 00:00:00','72500','5482',0,'2019-04-29 14:24:01',NULL,0),(23,1900,'289','PROJECTOR SCREEN',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-11-01 00:00:00','30000','0',0,'2019-04-29 14:24:01',NULL,0),(24,1901,'ESL/MSA/IT/3613','COPIER RICOH MP251058 MFP SN.E336M321185',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-05-02 00:00:00','260000','0',0,'2019-04-29 14:24:01',NULL,0),(25,1902,'317','PRINTER HP LASERJET MFP477FDW',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-02 00:00:00','49985','0',0,'2019-04-29 14:24:01',NULL,0),(26,1903,'AGY/016/ESL6','IPAD AIR 32GB',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-10-02 00:00:00','81982.76','0',0,'2019-04-29 14:24:01',NULL,0),(27,1904,'ESL/MSA/IT/10814','IPAD AIR 32GB',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-10-02 00:00:00','81982.76','0',0,'2019-04-29 14:24:01',NULL,0),(28,1905,'ESL/MSA/3912','HP PROBOOK 4540S LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-01-03 00:00:00','69800','0',0,'2019-04-29 14:24:01',NULL,0),(29,1906,'AGY/015/ESL','HP PROBOOK 4530S LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2010-04-03 00:00:00','66500','0',0,'2019-04-29 14:24:01',NULL,0),(30,1907,'ACC/010/ESL','MINI LAPTOP',NULL,NULL,'3',NULL,NULL,NULL,NULL,'2011-09-03 00:00:00','29000','29',0,'2019-04-29 14:24:01',NULL,0),(31,1908,'ADM/ESL/154','Smsung Galaxy S3 Mini',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2010-12-03 00:00:00','26999','0',0,'2019-04-29 14:24:01',NULL,0),(32,1909,'ERP/0003/ESL','PABX',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-02-04 00:00:00','44000','0',0,'2019-04-29 14:24:01',NULL,0),(33,1910,'ADM/066/ESL','HP 3520 DESKTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2008-04-04 00:00:00','62000','0',0,'2019-04-29 14:24:01',NULL,0),(34,1911,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2013-04-04 00:00:00','149739.66','18',0,'2019-04-29 14:24:01',NULL,0),(35,1912,'ESL/MSA/IT/4014','PANASONIC DIGITAL CORDLESS PHONE',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2013-11-04 00:00:00','5800','4',0,'2019-04-29 14:24:01',NULL,0),(36,1913,'ESL/MSA/IT/4014','PANASONIC DIGITAL CORDLESS PHONE',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-02-05 00:00:00','5800','4',0,'2019-04-29 14:24:01',NULL,0),(37,1914,'ESL/MSA/IT/4014','PANASONIC DIGITAL CORDLESS PHONE',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-02-05 00:00:00','5800','4',0,'2019-04-29 14:24:01',NULL,0),(38,1915,'ESL/MSA/IT/4014','PANASONIC DIGITAL CORDLESS PHONE',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-02-05 00:00:00','5800','4',0,'2019-04-29 14:24:01',NULL,0),(39,1916,'ESL/MSA/IT/4014','PANASONIC DIGITAL CORDLESS PHONE',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-02-05 00:00:00','5800','4',0,'2019-04-29 14:24:01',NULL,0),(40,1917,'ESL/MSA/IT/4314','HP Scanjet 3110 Scanner',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-02-05 00:00:00','10000','0',0,'2019-04-29 14:24:01',NULL,0),(41,1918,'ESL/MSA/FU/1712','LAPTOP HP PROBOOK SN.5CD7119TJC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-06-05 00:00:00','77000','0',0,'2019-04-29 14:24:01',NULL,0),(42,1919,'283','LAPTOP HP PROBOOK SN.5CD7119VCR',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-07-06 00:00:00','77000','0',0,'2019-04-29 14:24:01',NULL,0),(43,1920,'ADM/035/ESL','TV SMART LED SAMSUNG 40',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2008-09-06 00:00:00','59913.8','0',0,'2019-04-29 14:24:01',NULL,0),(44,1921,'ADM/038/ESL','HUAWAI BLACK BOXES',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2008-05-07 00:00:00','30000','0',0,'2019-04-29 14:24:01',NULL,0),(45,1922,'X0045','HUAWEI B315s-22 WIRELESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-03-08 00:00:00','8619.83','0',0,'2019-04-29 14:24:01',NULL,0),(46,1923,'403','HP10696 PROBOOK 450 G0 NOTEBOOK PC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2018-03-08 00:00:00','67000','0',0,'2019-04-29 14:24:01',NULL,0),(47,1924,'ESL/MSA/IT/6114','FELLOWEES SHREDDER 79CI',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-04-08 00:00:00','36000','0',0,'2019-04-29 14:24:01',NULL,0),(48,1925,'ESL/MSA/IT/0216','HP OFFICEJET PRO 6830 PRINTER',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-04-08 00:00:00','14000','0',0,'2019-04-29 14:24:01',NULL,0),(49,1926,'ESL/MSA/IT/0316','DESKTOP -DELL',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-04-08 00:00:00','50000','0',0,'2019-04-29 14:24:01',NULL,0),(50,1927,'ERP/0002/ESL','SONY PROJECTOR VPL-DX140 3200LUMENS',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-07-08 00:00:00','60000','0',0,'2019-04-29 14:24:01',NULL,0),(51,1928,'ADM/081/ESL','BLACKBERRY PHONE Q10',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2011-03-09 00:00:00','30498','0',0,'2019-04-29 14:24:01',NULL,0),(52,1929,'ESL/MSA/IT/00615','BLACKBERRY PHONE Q10',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-03-09 00:00:00','30498','0',0,'2019-04-29 14:24:01',NULL,0),(53,1930,'ADM/091/ESL','COMPAQ  LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2008-09-09 00:00:00','55000','0',0,'2019-04-29 14:24:01',NULL,0),(54,1931,'ESL/MSA/EQ/1612','PANASONIC CORDLESS PHONE  - S/N 6LCQD088081',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-05-10 00:00:00','6000','0',0,'2019-04-29 14:24:01',NULL,0),(55,1932,'279','PANASONIC CORDLESS PHONE S/N 6JCQCO55497',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-10 00:00:00','6000','0',0,'2019-04-29 14:24:01',NULL,0),(56,1933,'280','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-10 00:00:00','6000','0',0,'2019-04-29 14:24:01',NULL,0),(57,1934,'X0050','HUAWEI G7 LTE PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-10 00:00:00','32999','0',0,'2019-04-29 14:24:01',NULL,0),(58,1935,'ESL/MSA/IT/01215','SERVER (DOMAIN)',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-08-10 00:00:00','423926','0',0,'2019-04-29 14:24:01',NULL,0),(59,1936,'ESL/MSA//MV/2712','MACBOOK LAPTOP SR# CO2RQ0JWFVH5',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-07-11 00:00:00','193790.38','0',0,'2019-04-29 14:24:01',NULL,0),(60,1937,'261','IPAD PRO GOLD SR# DMPR8ATFGXQ0',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-11 00:00:00','85111.06','0',0,'2019-04-29 14:24:01',NULL,0),(61,1938,'X0037','HP PROBOOK 4530S LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-10-11 00:00:00','67240','0',0,'2019-04-29 14:24:01',NULL,0),(62,1939,'ESL/MSA/IT/0912','HP PROBOOK 4530S LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-04-12 00:00:00','67240','0',0,'2019-04-29 14:24:01',NULL,0),(63,1940,'378','DELL INSPIRON-LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-12 00:00:00','63000','0',0,'2019-04-29 14:24:01',NULL,0),(64,1941,'ESL/MSA/IT/2412','PRO DIAGNOSTICS TOOL',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-07-12 00:00:00','248992.16','0',0,'2019-04-29 14:24:01',NULL,0),(65,1942,'ESL/MSA/IT/0616','HP630 LAPTOP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-08-12 00:00:00','57785','0',0,'2019-04-29 14:24:01',NULL,0),(66,1943,'ESL/MSA/IT/0212','APC UPS',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-01-13 00:00:00','7000','0',0,'2019-04-29 14:24:01',NULL,0),(67,1944,'ESL/MSA/IT/0312','IPAD AIR2 64GB',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-01-13 00:00:00','78189.66','0',0,'2019-04-29 14:24:01',NULL,0),(68,1945,'ESL/MSA/IT/00315','BLACKBERRY PHONE Q10',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-02-13 00:00:00','26291.38','0',0,'2019-04-29 14:24:01',NULL,0),(69,1946,'ESL/MSA/IT/00415','HP10696 PROBOOK 450 G0NOTEBOOK PC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-02-13 00:00:00','61500','0',0,'2019-04-29 14:24:01',NULL,0),(70,1947,'ESL/MSA/IT/6714','HP10696 PROBOOK 450 G0NOTEBOOK PC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-05-13 00:00:00','61500','0',0,'2019-04-29 14:24:01',NULL,0),(71,1948,'AGY/016/ESL10','HP 250 G3 Notebook PC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2013-11-13 00:00:00','53000','0',0,'2019-04-29 14:24:01',NULL,0),(72,1949,'ESL/MSA/IT/01415','IMACK',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-11-13 00:00:00','166800','0',0,'2019-04-29 14:24:01',NULL,0),(73,1950,'ESL/MSA/FU/5814','IPAD Wifi',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-02-14 00:00:00','82002.15','0',0,'2019-04-29 14:24:01',NULL,0),(74,1951,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2012-07-14 00:00:00','71000','5482',0,'2019-04-29 14:24:01',NULL,0),(75,1952,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2015-01-15 00:00:00','71000','5482',0,'2019-04-29 14:24:01',NULL,0),(76,1953,'ESL/MSA/IT/00215','LG-DVD',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-01-15 00:00:00','4995','0',0,'2019-04-29 14:24:01',NULL,0),(77,1954,'ESL/MSA/EQ/3414','APC Smart UPS',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-01-16 00:00:00','53000','0',0,'2019-04-29 14:24:01',NULL,0),(78,1955,'ESL/MSA/FT/1813','iMAC 21.5 Dual Core',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2013-07-16 00:00:00','168965.52','0',0,'2019-04-29 14:24:01',NULL,0),(79,1956,'KHMA 276C','APC SMART UPS SN:6836',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2013-04-17 00:00:00','35000','0',0,'2019-04-29 14:24:01',NULL,0),(80,1957,'264','LAPTOP MACBOOK RETINA SN:C07RQ5XJFVH3',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-11-17 00:00:00','171025.86','0',0,'2019-04-29 14:24:01',NULL,0),(81,1958,'265','LAPTOP HP ELITBOOK 840 SN:5CG6410Y4Z',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-11-17 00:00:00','121475','0',0,'2019-04-29 14:24:01',NULL,0),(82,1959,'266','PANASONIC OPERATOR CONSOLE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-11-17 00:00:00','5000','0',0,'2019-04-29 14:24:01',NULL,0),(83,1960,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2017-11-17 00:00:00','304066.25','18',0,'2019-04-29 14:24:01',NULL,0),(84,1961,'ESL/MSA/IT/0416','SAMSUNG GALAXY NOTE 10.1',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-04-18 00:00:00','62930.17','0',0,'2019-04-29 14:24:01',NULL,0),(85,1962,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-06-18 00:00:00','211560','18',0,'2019-04-29 14:24:01',NULL,0),(86,1963,'ESL/MSA/IT/4312','HP OFFICEJET PRINTER 4500',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-10-18 00:00:00','9800','0',0,'2019-04-29 14:24:01',NULL,0),(87,1964,'ESL/MSA/FU/2713','SHREDDER FELLOWEES P-35C',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2013-11-19 00:00:00','13000','0',0,'2019-04-29 14:24:01',NULL,0),(88,1965,'297','PRINTER HP COLOR LASERJET ProM477fnw',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-12-19 00:00:00','40500','0',0,'2019-04-29 14:24:01',NULL,0),(89,1966,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2017-12-19 00:00:00','204000','18',0,'2019-04-29 14:24:01',NULL,0),(90,1967,'299','HP LASERJET PRINTER PRO300',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2018-02-20 00:00:00','86900','0',0,'2019-04-29 14:24:01',NULL,0),(91,1968,'ESL/MSA/FU/01015','NOTE TAB SAMSUNG GALAXY',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-11-20 00:00:00','63999','0',0,'2019-04-29 14:24:01',NULL,0),(92,1969,'ESL/MSA/IT/3814','IPAD AIR 32GB',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-02-21 00:00:00','85575.86','0',0,'2019-04-29 14:24:01',NULL,0),(93,1970,'KCC 169Z','LAPTOP MAC MINI 2.5GHz DUAL',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-05-22 00:00:00','68103.45','0',0,'2019-04-29 14:24:01',NULL,0),(94,1971,'379','WD EXTERNAL HARD DISK MY CLOUD SN.WCC7K6VTF0JL',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-22 00:00:00','46100','0',0,'2019-04-29 14:24:01',NULL,0),(95,1972,'ESL/MSA/EQ/00116','LAPTOP MACBOOK - SERIAL C02Q42HMFWW3',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-12-22 00:00:00','169818.2','0',0,'2019-04-29 14:24:01',NULL,0),(96,1973,'ADM/004/ESL','DELL 23 MONITOR',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2007-02-23 00:00:00','22300','0',0,'2019-04-29 14:24:01',NULL,0),(97,1974,'ESL/MSA/IT/00815','FUJIFILM CAMERA',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-03-23 00:00:00','16500','0',0,'2019-04-29 14:24:01',NULL,0),(98,1975,'ESL/MSA/IT/0516','APC UPS 650VA',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-04-23 00:00:00','7000','0',0,'2019-04-29 14:24:01',NULL,0),(99,1976,'ADM/042/ESL','AIRPORT EXTREME SN.C86SL6BFFJ1R',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2004-06-23 00:00:00','27969.82','0',0,'2019-04-29 14:24:01',NULL,0),(100,1977,'AGY/016/ESL8','LAPTOP HP250 G5 i3',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-10-23 00:00:00','53448.28','0',0,'2019-04-29 14:24:01',NULL,0),(101,1978,'275','HUAWEI B315s-22 WIRELESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-02-24 00:00:00','8619.33','0',0,'2019-04-29 14:24:01',NULL,0),(102,1979,'401','HUAWEI B315s-22 WIRELESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2018-02-24 00:00:00','8619.83','0',0,'2019-04-29 14:24:01',NULL,0),(103,1980,'402','HUAWEI B315s-22 WIRELESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2018-02-24 00:00:00','8619.83','0',0,'2019-04-29 14:24:01',NULL,0),(104,1981,'404','PABX',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2018-02-24 00:00:00','54700','0',0,'2019-04-29 14:24:01',NULL,0),(105,1982,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2010-03-24 00:00:00','266858','18',0,'2019-04-29 14:24:01',NULL,0),(106,1983,'','Macbook Pro',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2012-11-24 00:00:00','160517.24','18',0,'2019-04-29 14:24:01',NULL,0),(107,1984,'ESL/MSA/FU/00715','SAMSUNG GALAXY S3 MINI',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-03-26 00:00:00','25999','0',0,'2019-04-29 14:24:01',NULL,0),(108,1985,'ESL/MSA/IT/6214','PANASONIC SWITCHBOARD EXECUTIVE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-04-26 00:00:00','9500','0',0,'2019-04-29 14:24:01',NULL,0),(109,1986,'307','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','6750','0',0,'2019-04-29 14:24:01',NULL,0),(110,1987,'313','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','6750','0',0,'2019-04-29 14:24:01',NULL,0),(111,1988,'318','PRINTER HP LASERJET MPF CF378A',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','46400','0',0,'2019-04-29 14:24:01',NULL,0),(112,1989,'347','PROJECTOR SCREEN ELECTRICAL',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','31000','0',0,'2019-04-29 14:24:01',NULL,0),(113,1990,'368','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','6750','0',0,'2019-04-29 14:24:01',NULL,0),(114,1991,'375','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','6750','0',0,'2019-04-29 14:24:01',NULL,0),(115,1992,'376','PANASONIC CORDLESS PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','6750','0',0,'2019-04-29 14:24:01',NULL,0),(116,1993,'374','SAMSUNG GALAXY NOTE 10.1',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-05-26 00:00:00','62930','0',0,'2019-04-29 14:24:01',NULL,0),(117,1994,'ESL/MSA/IT/6914','LENOVO MOBILE PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-06-26 00:00:00','16999','0',0,'2019-04-29 14:24:01',NULL,0),(118,1995,'ESL//MSA/IT/01115','15 MacBook Retina MGXA2B/A',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-08-26 00:00:00','250165.2','0',0,'2019-04-29 14:24:01',NULL,0),(119,1996,'ESL/MSA/IT/0716','iPAD PRO 9.7 32GB  SPACE GREY',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-08-26 00:00:00','85731','0',0,'2019-04-29 14:24:01',NULL,0),(120,1997,'ESL/MSA/IT/0816','SPEAKER SOUNDTOUCH 30III WHT 240V AP',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-08-26 00:00:00','62867.53','0',0,'2019-04-29 14:24:01',NULL,0),(121,1998,'256','Macbook laptop MD102/A 13 H.E',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-26 00:00:00','177190','0',0,'2019-04-29 14:24:01',NULL,0),(122,1999,'ESL/MSA/IT/3514','LAPTOP HP SPECTRE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-01-27 00:00:00','205000','0',0,'2019-04-29 14:24:01',NULL,0),(123,2000,'277','PRINTER OFFICEJET PRO 8710',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-01-27 00:00:00','17000','0',0,'2019-04-29 14:24:01',NULL,0),(124,2001,'ESL/MSA/FU/00815','WESTERN DIGITAL 2TB EXT HDD',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-03-27 00:00:00','20000','0',0,'2019-04-29 14:24:01',NULL,0),(125,2002,'ESL/MSA/IT/2212','WD NETWORK MY CLOUD SN.WUBF27300224',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-06-27 00:00:00','137000','0',0,'2019-04-29 14:24:01',NULL,0),(126,2003,'AGY/014/ESL4','NETWORK ATTACHED STORAGE DEVICE 12TB',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2010-12-27 00:00:00','93960','0',0,'2019-04-29 14:24:01',NULL,0),(127,2004,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2017-09-29 00:00:00','69000','5482',0,'2019-04-29 14:24:01',NULL,0),(128,2005,'','HP Probook 450',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2014-11-29 00:00:00','69000','5482',0,'2019-04-29 14:24:01',NULL,0),(129,2006,'KCC 694T','LAPTOP HP 250G5 SN.CND7084NQ7',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-04-30 00:00:00','56175','0',0,'2019-04-29 14:24:01',NULL,0),(130,2007,'278','SUMSUNG S3 MINI - PHONE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-04-30 00:00:00','26999','0',0,'2019-04-29 14:24:01',NULL,0),(131,2008,'ESL/MSA/FU/00316','DSTV DISH',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-06-30 00:00:00','16100','0',0,'2019-04-29 14:24:01',NULL,0),(132,2009,'ESL/MSA/EQ/2812','HP OFFICEJET PRO6830 PRINTER',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-07-30 00:00:00','31673.6','0',0,'2019-04-29 14:24:01',NULL,0),(133,2010,'ESL/MSA/IT/01315','LAPTOP TUFFBOOK PANASONIC',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-09-30 00:00:00','56825','0',0,'2019-04-29 14:24:01',NULL,0),(134,2011,'224','RACK METALLIC ONE GLASS DOOR',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','50000','0',0,'2019-04-29 14:24:01',NULL,0),(135,2012,'225','NETWORK STORAGE WD MY CLOUD',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','24000','0',0,'2019-04-29 14:24:01',NULL,0),(136,2013,'227','SCANNER HP SCANJET',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','20500','0',0,'2019-04-29 14:24:01',NULL,0),(137,2014,'232','SERVER RACK',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','25000','0',0,'2019-04-29 14:24:01',NULL,0),(138,2015,'251','AIRPORT TIME CAPSULE',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','51000','0',0,'2019-04-29 14:24:01',NULL,0),(139,2016,'226','NASHUATEC MP2501SP COPIER',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-30 00:00:00','248706.25','0',0,'2019-04-29 14:24:01',NULL,0),(140,2017,'270','LAPTOP HP 450',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-11-30 00:00:00','68500','0',0,'2019-04-29 14:24:01',NULL,0),(141,2018,'KCB 363Y','HP OFFICEJET 7612 WF PRINTER',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2015-01-31 00:00:00','22700','0',0,'2019-04-29 14:24:01',NULL,0),(142,2019,'274','iPHONE 7 256GB BLACK',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-01-31 00:00:00','116379.31','0',0,'2019-04-29 14:24:01',NULL,0),(143,2020,'X0042','iPAD AIR2 WiFi Cellular',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-01-31 00:00:00','89250','0',0,'2019-04-29 14:24:01',NULL,0),(144,2021,'X0043','iPAD AIR 2',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-01-31 00:00:00','86703.44','0',0,'2019-04-29 14:24:01',NULL,0),(145,2022,'ESL/MSA/FU/6014','HP SERVER',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2014-03-31 00:00:00','105000','0',0,'2019-04-29 14:24:01',NULL,0),(146,2023,'ESL/MSA/EQ/4512','HP Probook 430G4 for Patrick Mbugua',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-10-31 00:00:00','79500','0',0,'2019-04-29 14:24:01',NULL,0),(147,2144,'ACC/008/ESL','FILING CABINET',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2010-09-09 00:00:00','8300','0',0,'2019-04-29 14:24:01',NULL,0),(148,2267,'ADM/075/ESL','ETR MACHINE-ESD',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2003-01-01 00:00:00','150000','0',0,'2019-04-29 14:24:01',NULL,0),(149,2269,'165','PROJECTOR EPSON- SERIAL RKEF5Y0039L',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-02 00:00:00','192500','0',0,'2019-04-29 14:24:01',NULL,0),(150,2270,'48','PROJECTOR SCREEN VEGA',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2016-09-02 00:00:00','34500','0',0,'2019-04-29 14:24:01',NULL,0),(151,2280,'ESL/MSA/FU/3312','SECURITY ALARM SYSTEM',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2012-07-09 00:00:00','53280','0',0,'2019-04-29 14:24:01',NULL,0),(152,2282,'X0047','BIOMETRIC SYSTEM',NULL,NULL,'0',NULL,NULL,NULL,NULL,'2017-06-10 00:00:00','225016','0',0,'2019-04-29 14:24:01',NULL,0),(153,2324,'00413','HP Probook Laptop',NULL,NULL,'2',NULL,NULL,NULL,NULL,'2018-09-21 00:00:00','86200','5482',0,'2019-04-29 14:24:01',NULL,0),(154,2325,'0394','HP Probook Laptop',NULL,NULL,'1',NULL,NULL,NULL,NULL,'2018-09-21 00:00:00','86200','5482',0,'2019-04-29 14:24:01',NULL,0),(156,NULL,'wfer','ads sdfsd','d345','ser2312','Kampala','cat444','203',5,'admin','2019-04-25','6000','The Docucare Agencies',0,'2019-04-30 07:11:06','2019-04-30 10:11:06',0);
/*!40000 ALTER TABLE `inventory_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_requisitions`
--

DROP TABLE IF EXISTS `inventory_requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_requisitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_quantity` varchar(255) NOT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `StkItem_id` int(11) DEFAULT NULL,
  `sage_project_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `approver_id` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_requisitions`
--

LOCK TABLES `inventory_requisitions` WRITE;
/*!40000 ALTER TABLE `inventory_requisitions` DISABLE KEYS */;
INSERT INTO `inventory_requisitions` VALUES (1,5,135,'A3 Envelope','78',NULL,135,2,'needed today','2018-07-13 05:21:37','2018-07-13 05:21:37','Approved',0,0),(2,82,136,'A4 Envelope','1',NULL,136,2,'axasd','2019-03-27 12:19:52','2019-03-27 12:19:52','Approved',0,0),(3,83,136,'A4 Envelope','2',NULL,136,3,'qweqwe','2018-08-07 06:58:22','2018-08-07 06:58:22','Approved',0,0),(4,84,140,'Pens ','4',NULL,140,3,'nbb','2018-08-07 06:58:31','2018-08-07 06:58:31','Pending',0,0),(5,85,140,'Pens ','2','0',140,1,'axasx','2018-08-07 06:58:38','2018-08-07 06:58:38','Approved',0,0),(6,82,140,'Pens ','1','0',140,6,'Xas','2018-08-07 06:58:55','2018-08-07 06:58:55','Approved',0,0),(7,83,140,'Pens ','1','0',140,3,'testing','2018-08-07 06:59:22','2018-08-07 06:59:22','Approved',0,0),(8,84,140,'Pens ','1','0',140,7,'asda','2018-08-07 06:59:32','2018-08-07 06:59:32','Disapproved',0,0),(9,86,140,'Pens ','1','0',140,2,'asdas','2018-08-07 06:59:40','2018-08-07 06:59:40','Approved',0,0),(10,5,140,'Pens ','3','0',140,33,'test project','2018-08-05 13:58:05','2018-08-05 13:58:05','Approved',0,0),(11,5,140,'Pens ','5','167.68292682927',140,1,'blabla','2018-08-05 14:06:47','2018-08-05 14:06:47','Approved',0,0),(12,84,138,'A5 Envelope','4','0',138,4,'wdw','2018-08-06 21:00:00',NULL,'Pending',0,0),(13,5,135,'A3 Envelope','5','0',135,1204,'qwedwwe','2019-03-27 12:20:07','2019-03-27 12:20:07','Disapproved',0,0);
/*!40000 ALTER TABLE `inventory_requisitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` double NOT NULL,
  `unit_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rate` double NOT NULL,
  `total` double NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `invoice_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `id_2` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payments`
--

LOCK TABLES `invoice_payments` WRITE;
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci,
  `last_email_sent_date` date DEFAULT NULL,
  `status` enum('draft','not_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `tax_id2` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,20,0,'2018-06-14','2018-06-19','test',NULL,'draft',1,1,0);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inward_cheques`
--

DROP TABLE IF EXISTS `inward_cheques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inward_cheques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `cheque_amount` varchar(255) NOT NULL,
  `cheque_date` date NOT NULL,
  `date_collected` datetime DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `receptionist_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inward_cheques`
--

LOCK TABLES `inward_cheques` WRITE;
/*!40000 ALTER TABLE `inward_cheques` DISABLE KEYS */;
INSERT INTO `inward_cheques` VALUES (1,'93','ytwertwer',NULL,'700.766','2018-07-18','2018-07-14 17:02:34','',5,1,'2018-07-14 14:18:26','2018-07-14 15:02:34',0),(2,'96','sample',NULL,'234345.6','2018-07-27',NULL,'',5,2,'2018-07-14 14:19:57','2018-07-14 15:02:39',0),(3,'5','sdsdfsdf','ewrwetret','5667','2018-07-26',NULL,'dsfsdfgsfd',5,0,'2018-07-14 14:33:02','2018-07-18 09:40:17',0),(4,'5','tetsts','chq35','567.90','2018-07-17',NULL,'sdsafsf',5,0,'2018-07-14 14:43:20','2018-07-18 09:40:33',0);
/*!40000 ALTER TABLE `inward_cheques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_inspections`
--

DROP TABLE IF EXISTS `job_inspections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_inspections` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_inspections`
--

LOCK TABLES `job_inspections` WRITE;
/*!40000 ALTER TABLE `job_inspections` DISABLE KEYS */;
INSERT INTO `job_inspections` VALUES (7,'Monthly Inspection checklist','2018-05-02 08:56:47',NULL,0),(8,'Annual NTSA Inspection','2018-05-03 06:26:22',NULL,0),(9,'Annual Osha Inspection','2018-05-03 06:27:37',NULL,0),(10,'Bi-Annual Osha Inspection','2018-05-03 06:28:01',NULL,0),(11,'Bi-Monthly Company Vehicles Inspection','2018-05-03 06:28:50',NULL,0);
/*!40000 ALTER TABLE `job_inspections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_services`
--

DROP TABLE IF EXISTS `job_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_services`
--

LOCK TABLES `job_services` WRITE;
/*!40000 ALTER TABLE `job_services` DISABLE KEYS */;
INSERT INTO `job_services` VALUES (1,'Repair job','2018-02-21 22:32:19',NULL,0),(2,'Service Job','2018-02-21 22:32:19',NULL,0);
/*!40000 ALTER TABLE `job_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tasks`
--

DROP TABLE IF EXISTS `job_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tasks` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `service_type_id` int(100) DEFAULT NULL,
  `assigned_to` int(100) NOT NULL,
  `tasks` varchar(255) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `job_time_in` time DEFAULT NULL,
  `jobs_type_id` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tasks`
--

LOCK TABLES `job_tasks` WRITE;
/*!40000 ALTER TABLE `job_tasks` DISABLE KEYS */;
INSERT INTO `job_tasks` VALUES (1,2,6,'complete','2018-03-27 21:00:00','01:59:00',5,'2018-03-23 04:05:37',NULL,0),(2,2,9,'great','2018-03-20 21:00:00','01:00:00',6,'2018-03-23 04:05:58',NULL,0),(3,2,8,'great task','2018-03-27 21:00:00','01:00:00',2,'2018-03-23 04:07:31',NULL,0),(4,1,6,'test 1','0000-00-00 00:00:00','00:00:00',1,'2018-03-23 15:29:05',NULL,0),(5,2,0,'test 1','2018-03-20 21:00:00','09:00:00',0,'2018-03-23 15:30:07',NULL,0);
/*!40000 ALTER TABLE `job_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_types` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `job_type_name` varchar(255) NOT NULL,
  `service_type` int(100) DEFAULT NULL,
  `job_id` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
INSERT INTO `job_types` VALUES (1,'Oil filter change, engine oil change, air cleaner change, cabin filter change',1,2,'2018-05-09 12:16:50',NULL,0);
/*!40000 ALTER TABLE `job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `job_type_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `vehicle_no` int(100) DEFAULT NULL,
  `completion_date` varchar(255) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `km_reading` float DEFAULT NULL,
  `miles_reading` float NOT NULL DEFAULT '0',
  `fuel_balance` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `supplier_id` int(100) DEFAULT NULL,
  `service_type_id` int(100) DEFAULT NULL,
  `job_service_id` int(100) DEFAULT NULL,
  `application_data` longtext,
  `picture` mediumtext,
  `reactive` tinyint(1) NOT NULL DEFAULT '0',
  `hours` mediumtext,
  `time_out` varchar(255) DEFAULT NULL,
  `actual_date` varchar(255) DEFAULT NULL,
  `track_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In Progress',
  `provider` varchar(255) DEFAULT NULL,
  `internal_provider` varchar(255) DEFAULT NULL,
  `external_provider` varchar(255) DEFAULT NULL,
  `part_name` longtext,
  `quantity` longtext,
  `cost` longtext,
  `total` varchar(255) DEFAULT NULL,
  `spares_data` longtext,
  `labour` varchar(255) DEFAULT NULL,
  `labour_cost` double DEFAULT NULL,
  `next_time_km` float NOT NULL DEFAULT '0',
  `next_time_miles` float NOT NULL DEFAULT '0',
  `next_time_hours` varchar(255) DEFAULT NULL,
  `next_service_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'zczxc','zxXasxx',2,'2018-04-24','01:59:00',0,0,'1','ESL-1-ESL/MSA/FU/321',NULL,1,NULL,'[]','',0,'100','13:59','2018-04-24','hours','Completed','internal','adasd','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,'1000',NULL,'2018-06-11 06:37:03',NULL,0),(2,'maintenance','ssdfsdf',2,'2018-06-20','01:59:00',0,0,'1','ESL-2-ESL/MSA/FU/321',NULL,1,NULL,'[]','defferals_(2).pdf',0,'300','13:59','2018-06-13','hours','Completed','internal','mypro','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,'400',NULL,'2018-06-12 11:15:22',NULL,0),(3,'testing','hasdnasdfdn',2,'2018-06-28','01:59:00',600,0,'3','ESL-3-ESL/MSA/FU/321',NULL,1,NULL,'[]','',1,'','01:59','2018-06-13','kilometer','Completed','internal','test','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,2000,0,NULL,NULL,'2018-06-12 11:30:13',NULL,0),(5,'maintenance','work to be done',5,'2018-07-24','10:45:00',2000,0,'3','ESL-5-ESL/MSA/FU/081',NULL,2,NULL,'[]','',1,'','1:45 PM','2018-08-11','kilometer','Completed','internal','safcom','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,3000,0,NULL,'2018-07-28','2018-08-10 06:42:18',NULL,0),(7,'maintenance','sdasasd',5,'2018-07-25','12:15:00',2600,0,'2','ESL-7-ESL/MSA/FU/081',NULL,3,NULL,'[]','',1,'','12:15 PM','2018-08-11','kilometer','Completed','external','','3','[\"part1\",\"\"]','[\"3\",\"\"]','[\"234.34\",\"\"]','0',NULL,'tes l',4500.45,2700,0,NULL,'2018-07-18','2018-08-16 09:04:45',NULL,0),(8,'zczxcv','dfsdfsdf',1,'2018-09-19','01:45:00',250,0,'3','ESL-8-285',NULL,1,NULL,'[]','',0,'','3:45 PM','2018-09-12','kilometer','Completed','internal','terwer','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,1000,0,'','2019-07-30','2018-09-10 10:42:51',NULL,0),(9,'axZXZ','zXZXZX',2,'2018-09-19','03:00:00',0,0,'1','ESL-9-ESL/MSA/FU/321',NULL,2,NULL,'[]','',1,'450','6:00 PM','2018-09-11','hours','Completed','internal','asdasd','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,NULL,'2018-09-25','2018-09-10 11:56:06',NULL,0),(10,'SXZC  ','XZ XZ ',2,'2018-09-04','03:00:00',0,0,'3','ESL-10-ESL/MSA/FU/32',NULL,2,NULL,NULL,'',1,'','8:00 PM','2018-09-12','miles','In Progress','internal','zxza','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,500,NULL,'2018-09-19','2018-09-10 12:00:36',NULL,0),(11,'scasdf','xzcsd',2,'2018-09-25','03:15:00',600,0,'3','ESL-11-ESL/MSA/FU/32',NULL,1,NULL,'[]','',1,'','7:15 PM','2018-09-11','kilometer','Completed','internal','zXas','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,3000,0,NULL,'2018-09-29','2018-09-10 12:05:25',NULL,0),(12,'csdc','sdcsdc',2,'2018-10-02','03:45:00',0,0,'3','ESL-12-ESL/MSA/FU/32',NULL,1,NULL,'[]','',1,'','8:45 PM','2018-09-12','hours','Completed','internal','xcszxc','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,NULL,'2018-09-20','2018-09-10 12:36:27',NULL,0),(13,'sdsad','zxc xzc ',2,'2018-09-25','03:45:00',0,0,'3','ESL-13-ESL/MSA/FU/32',NULL,1,NULL,'[]','',0,'','6:45 PM','2018-09-05','kilometer','Completed','internal','asdasd','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,6000,0,'','2018-09-26','2018-09-10 12:44:12',NULL,0),(14,NULL,'zasqeqwer',14,'2018-09-12','01:59:00',0,0,'3','ESL-14-ESL/MSA/FU/32',NULL,2,NULL,'[]','',0,'450',NULL,NULL,'hours','Completed','internal','axccsa','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,'600','2018-09-29','2018-09-10 12:47:20',NULL,0),(15,'test','fusuaas axas',5,'2018-09-25','04:00:00',3000,0,'4','ESL-15-ESL/MSA/FU/08',NULL,2,NULL,NULL,'',1,'','7:00 PM','2018-09-12','kilometer','In Progress','internal','test','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,2500,0,NULL,'2018-09-29','2018-09-10 12:49:13',NULL,0),(16,'test6','sxczcx',NULL,'2018-09-12','08:00:00',800,0,'4','ESL-16-ESL/MSA/FU/32',NULL,16,NULL,NULL,'',0,'','9:00 AM','2018-09-26','kilometer','In Progress','external','test2','','[\"p2\",\"p3\"]','[\"2\",\"3\"]','[\"150\",\"250\"]','0',NULL,'',0,1000,0,'','2018-09-29','2018-09-11 04:52:20',NULL,0),(17,'rtooer','sadasda',7,'2018-09-26','11:15:00',600,0,'3','ESL-17-77',NULL,1,NULL,NULL,'',0,'','1:15 PM','2018-09-13','kilometer','In Progress','internal','320','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,400,0,'','2018-09-29','2018-09-11 08:10:38',NULL,0),(18,'test','scdsdc',5,'2018-09-19','11:30:00',3000,0,'1','ESL-18-ESL/MSA/FU/08',NULL,1,NULL,NULL,'',0,'','2:30 PM','2018-09-19','kilometer','In Progress','internal','testing','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,5000,0,'','2018-09-28','2018-09-11 08:24:57',NULL,0),(19,'more testing ...','more descriptive text.',1,'2018-09-30','01:00:00',500,0,'1','ESL-19-285',NULL,3,NULL,NULL,'',0,'','4:00 PM','2018-09-12','kilometer','In Progress','internal','tetetete','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,1500,0,'','2018-09-30','2018-09-11 09:57:27',NULL,0),(20,'srororor','xscsdcds',1,'2018-09-30','01:00:00',600,0,'3','ESL-20-285',NULL,3,NULL,'[]','',0,'','4:00 PM','2018-09-30','kilometer','Completed','internal','sccs','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,8000,0,'','2018-09-16','2018-09-11 09:58:35',NULL,0),(21,'test','axcxc sc',2,'2018-11-01','09:30:00',400,0,'1','ESL-21-ESL/MSA/FU/32',NULL,1,NULL,NULL,'',0,'','12:30 PM','2018-10-29','kilometer','In Progress','external','','629','[\"p1\",\"p2\",\"p4\",\"\"]','[\"3\",\"2\",\"1\",\"\"]','[\"150\",\"200\",\"250\",\"\"]','0',NULL,'',0,1200,0,'','2018-10-31','2018-10-01 06:23:32',NULL,0),(22,'test','simple desc',NULL,'2018-10-30','09:30:00',600,0,'1','ESL-22-ESL/MSA/FU/32',NULL,2,NULL,NULL,'',1,'','11:30 AM','2018-10-17','kilometer','In Progress','external','','612','[\"p1\",\"\"]','[\"3\",\"\"]','[\"210\",\"\"]','0',NULL,'test',200,3000,0,NULL,'2018-10-31','2018-10-01 06:28:27',NULL,0),(23,'ssdcc','sdfdwf eferf',2,'2018-12-27','02:30:00',300,0,'1','ESL-23-ESL/MSA/FU/32',NULL,2,NULL,NULL,'',0,'','2:30 PM','2018-12-18','kilometer','In Progress','internal','teeeee','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,1000,0,'','2018-12-25','2018-12-04 11:27:37',NULL,0),(24,'sqsq','sdwedwee',2,'2019-04-06','12:45:00',345,0,'2','ESL-24-ESL/MSA/FU/32',NULL,2,NULL,NULL,'',0,'','3:45 PM','2019-03-27','kilometer','In Progress','internal','asq','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,3455,0,'5645','2019-04-01','2019-03-27 09:38:53',NULL,0),(25,'wedwedfer','wedwedwerdfwe',5,'2019-05-10','01:00:00',0,500,'3','ESL-25-ESL/MSA/FU/08',NULL,1,NULL,NULL,'',0,'','3:00 PM','2019-03-28','miles','In Progress','internal','wewwewe','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,2000,'','2019-04-25','2019-03-27 09:51:46',NULL,0),(26,'eferfer','eqwe dqwedqw',3,'2019-04-05','01:15:00',0,0,'4','ESL-26-ESL/MSA/EQ/02',NULL,3,NULL,'[{\"items\":{\"inspection_id\":\"8\",\"user\":\"23\",\"satus\":\"2\"}},{\"items\":{\"inspection_id\":\"7\",\"user\":\"6\",\"satus\":\"1\"}}]','',1,'','5:15 PM','2019-03-22','hours','Completed','internal','fgfgfg','','[\"\",\"\"]','[\"\",\"\"]','[\"\",\"\"]','0',NULL,'',0,0,0,NULL,'2019-04-05','2019-03-27 10:10:42',NULL,0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs_status`
--

DROP TABLE IF EXISTS `jobs_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs_status` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs_status`
--

LOCK TABLES `jobs_status` WRITE;
/*!40000 ALTER TABLE `jobs_status` DISABLE KEYS */;
INSERT INTO `jobs_status` VALUES (1,'Not Started',0),(2,'In Progress',0),(3,'Completed',0);
/*!40000 ALTER TABLE `jobs_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_applications`
--

DROP TABLE IF EXISTS `leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_hours` decimal(7,2) NOT NULL,
  `total_days` decimal(5,2) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `checked_at` datetime DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `leave_type_id` (`leave_type_id`) USING BTREE,
  KEY `user_id` (`applicant_id`) USING BTREE,
  KEY `checked_by` (`checked_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_applications`
--

LOCK TABLES `leave_applications` WRITE;
/*!40000 ALTER TABLE `leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `color` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,'Casual Leave','active','#83c340','',0);
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (17,'Nairobi'),(19,'Mombasa'),(20,'Kampala');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_activity`
--

DROP TABLE IF EXISTS `mailing_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_activity`
--

LOCK TABLES `mailing_activity` WRITE;
/*!40000 ALTER TABLE `mailing_activity` DISABLE KEYS */;
INSERT INTO `mailing_activity` VALUES (3,'inwards','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada. Proin eget tortor risus. Pellentesque in ipsum id orci p','2018-04-14 02:11:35',NULL,0),(4,'outwards','Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada. Proin eget tortor risus. Pellentesque in ipsum id orci p','2018-04-14 02:11:56',NULL,0);
/*!40000 ALTER TABLE `mailing_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_list`
--

DROP TABLE IF EXISTS `mailing_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_list`
--

LOCK TABLES `mailing_list` WRITE;
/*!40000 ALTER TABLE `mailing_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailing_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_parcel`
--

DROP TABLE IF EXISTS `mailing_parcel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_parcel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `files` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_parcel`
--

LOCK TABLES `mailing_parcel` WRITE;
/*!40000 ALTER TABLE `mailing_parcel` DISABLE KEYS */;
INSERT INTO `mailing_parcel` VALUES (1,3,5,5,140,'operations','this and that',2,'a:1:{i:0;a:2:{s:9:\"file_name\";s:36:\"inward_file5b484c161d2fb-jobcard.pdf\";s:9:\"file_size\";s:5:\"19841\";}}','2018-07-13 06:52:06','2018-07-16 06:51:37',0),(2,3,5,5,112,'excellent','adwqedqw',1,'a:1:{i:0;a:2:{s:9:\"file_name\";s:39:\"inward_file5b484c384ec9b-PRO-000001.pdf\";s:9:\"file_size\";s:6:\"109784\";}}','2018-07-13 06:52:40','2018-07-13 12:27:05',0),(3,3,5,5,90,'Operations Staff','great wonder of our days',0,'a:0:{}','2018-07-13 10:53:51','2018-07-13 11:43:53',1),(4,3,5,5,105,'action point','nice descr',0,'a:0:{}','2018-07-13 12:45:54',NULL,0);
/*!40000 ALTER TABLE `mailing_parcel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_parcel_outwards`
--

DROP TABLE IF EXISTS `mailing_parcel_outwards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_parcel_outwards` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(255) DEFAULT NULL,
  `sender_id` int(100) DEFAULT NULL,
  `activity_id` int(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL,
  `files` text,
  `receptionist_id` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_parcel_outwards`
--

LOCK TABLES `mailing_parcel_outwards` WRITE;
/*!40000 ALTER TABLE `mailing_parcel_outwards` DISABLE KEYS */;
INSERT INTO `mailing_parcel_outwards` VALUES (1,'Airtel',5,4,'adminTest','adasdasdas',1,'a:0:{}',86,'2018-07-13 14:02:34',NULL,0),(2,'him',5,4,'sdfsdfsd','test test test',2,'a:1:{i:0;a:2:{s:9:\"file_name\";s:41:\"outward_file5b48b29072e8a-jobcard-(1).pdf\";s:9:\"file_size\";s:5:\"12181\";}}',84,'2018-07-13 14:09:20',NULL,0),(3,'dasd',5,4,'cdssafs','done',0,'a:0:{}',86,'2018-07-13 14:28:20',NULL,0),(4,'amtel',5,4,'parcel3','testing....',0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:41:\"outward_file5b4c5191aead2-jobcard-(5).pdf\";s:9:\"file_size\";s:5:\"12156\";}}',101,'2018-07-16 08:04:33',NULL,0),(5,'me',5,4,'dwede','wdwede',0,'a:0:{}',5,'2019-03-27 12:42:18',NULL,0);
/*!40000 ALTER TABLE `mailing_parcel_outwards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_tasks`
--

DROP TABLE IF EXISTS `main_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `PROJECTS_FK` (`project_id`) USING BTREE,
  CONSTRAINT `PROJECTS_FK` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_tasks`
--

LOCK TABLES `main_tasks` WRITE;
/*!40000 ALTER TABLE `main_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `status` enum('unread','read') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `message_id` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_by_users` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `message_from` (`from_user_id`) USING BTREE,
  KEY `message_to` (`to_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'insuarance/demo','hi Aloice, kindly check on the insuarance','2018-04-17 12:37:16',5,126,'read',0,0,'a:0:{}',''),(2,'','ok well noted','2018-04-17 12:38:02',126,5,'read',1,0,'a:0:{}',''),(3,'Test','Test','2018-04-21 08:54:00',139,100,'unread',0,0,'a:0:{}',''),(4,'test','test','2018-04-21 08:59:30',139,125,'read',0,0,'a:0:{}',''),(5,'','1....2....3...  message test check','2018-04-23 04:24:16',125,139,'read',4,0,'a:0:{}',''),(6,'TEST MAIL','TEST MAIL ','2018-05-04 13:37:20',141,94,'read',0,0,'a:0:{}',''),(7,'','I need your help','2018-05-10 09:43:13',139,125,'read',4,0,'a:0:{}',''),(8,'','what is it about mtheu?','2018-05-10 10:10:57',125,139,'read',4,0,'a:0:{}',''),(9,'','Confirm end-to-end encryption for me to proceed.\n','2018-05-10 11:26:12',139,125,'read',4,0,'a:0:{}',''),(10,'','confirmed','2018-05-10 12:40:35',125,139,'read',4,0,'a:0:{}',''),(11,'','can\'t send emails to NBI...na wapi emonji\'s yawa, they are vital in today\'s communication!','2018-05-10 12:44:23',139,125,'read',4,0,'a:0:{}',''),(12,'','case closed/resolved','2018-05-11 07:45:00',125,139,'unread',4,0,'a:0:{}',''),(13,'wdwe','weerf','2019-03-26 12:35:38',5,90,'unread',0,0,'a:0:{}','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,'Fencing Complete',1,'2018-04-13',0),(2,'ESL Agency Go-Live',11,'2018-05-07',0),(3,'Sage, LPO Go-Live',11,'2018-05-07',0),(4,'PREPARATION OF FOR VESSELS ALONGSIDE, WAITERS AND EXPECTED',12,'2018-05-09',0),(5,'PREPARATION FOR VESSELS ALONGSIDE, WAITERS AND EXPECTED',12,'2018-05-09',0),(6,'TIMELY CLEARANCE OF VARIOUS SHIPMENTS',12,'2018-05-09',0),(7,'Letter submitted',13,'2018-05-19',0),(8,'Response given by staff',13,'2018-05-31',0),(9,'Method of re-payment planned',13,'2018-05-31',0),(10,'Repayment started',13,'2018-06-30',0),(11,'Renegotiated rate',13,'2018-06-30',0),(12,'Payment of amount owed',13,'2018-06-30',0),(13,'Approval of proposal',13,'2018-06-30',0),(14,'Confirmation of all container deposits',13,'2018-06-30',0),(15,'Fabrication of the container',13,'2018-05-31',0),(16,'Acquisition of land space & containers',13,'2018-08-31',0),(17,'Repayment of claim',13,'2018-06-30',0),(18,'Intake',13,'2018-06-04',0),(19,'Submission of reports by all auditors',13,'2018-05-18',0),(20,'Expedited invoicing',10,'2018-05-31',0),(21,'Weekly Minutes',10,'2018-05-31',0),(22,'Registration of staff with driving schools',10,'2018-06-30',0),(23,'Submission of proposals',10,'2018-05-31',0),(24,'Sourcing client',10,'2018-05-31',0),(25,'The actual document',10,'2018-05-31',0),(26,'Registration Certificate',10,'2018-09-30',0),(27,'Submission of workplan by Finance, Audit, Legal and HR to CM-ESLUG',10,'2018-05-31',0),(28,'Availability of power at the yard',10,'2018-07-31',0),(29,'Approved two policies per month',10,'2018-05-15',0),(30,'Finalization of training',10,'2018-06-30',0),(31,'Actual Go live on ESL',10,'2018-04-13',0),(32,'Name changed and engraved',10,'2018-05-31',0),(33,'Conducting training',10,'2018-05-31',0),(34,'Renting and occupation of apartment',10,'2018-05-31',0),(35,'Placement of a Sales - cum - Operations personnel to man the area',10,'2018-05-31',0),(36,'Incorporation of survey in ERP',10,'2018-05-31',0),(37,'1. Whole department employee evaluations 2. HOD evaluation of entire department 3. HR Reporting',16,'2018-05-31',0),(38,'High quality materials',10,'2018-05-31',0);
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitoring_outages`
--

DROP TABLE IF EXISTS `monitoring_outages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monitoring_outages` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitoring_outages`
--

LOCK TABLES `monitoring_outages` WRITE;
/*!40000 ALTER TABLE `monitoring_outages` DISABLE KEYS */;
INSERT INTO `monitoring_outages` VALUES (1,'mombasa','2018-03-25','9:00 PM','2018-07-31','2:00 PM','great','2018-07-23 09:50:10','2018-07-23 09:50:10','email',0),(2,'kisumu','2018-02-28','3:15 PM','2018-07-31','3:15 AM','great','2018-07-23 10:14:10','2018-07-23 10:14:10','email',0),(3,'nai','2018-07-15','4:30 PM','2018-07-28','10:30 PM','testing','2018-07-23 13:20:05','2018-07-23 13:20:05','internet',0),(4,'maumau','2018-07-16','5:30 PM','2018-07-29','4:30 AM','erp test','2018-07-23 13:29:09','2018-07-23 13:29:09','erp',0),(5,'malindi','2018-07-10','4:45 PM','2018-07-27','9:45 PM','test payroll','2018-07-23 13:37:50','2018-07-23 13:37:50','payroll',0),(6,'mombasa','2018-07-12','5:00 PM','2018-07-21','8:00 PM','smartness test server','2018-07-23 13:49:18','2018-07-23 13:49:18','smartship',0),(7,'githuri','2018-07-15','9:30 AM','2018-07-28','1:15 PM','testing','2018-07-24 05:58:46','2018-07-24 05:58:46','email',0);
/*!40000 ALTER TABLE `monitoring_outages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,85,'2018-05-03 07:28:44','Dubai Cilents','Infralog\n1008, Grosvenor Business Tower\nTecom, Barsha Height\nDubai, UAE.\nTel +971(4)7707636\nFax : +971(4)7707423\nMobile : +971(50)9225023\nEmail :\nFixtures : fixture@infralog.net\nOperations : postfix@ifralog.net\n\n++++++++++++++++\n\n',0,0,0,'Important',0),(2,99,'2018-05-07 11:54:57','Technical department go live','Technical team set-up\nClean up test data and key in Actual data\nLinks between technical, finance and agency to be tested once actual data is in',0,0,0,'Important',0),(3,99,'2018-05-07 11:56:44','Legal ','Legal documents to be attached, not just tacking expiry dates',0,0,0,'Important',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `enable_email` int(1) NOT NULL DEFAULT '0',
  `enable_web` int(1) NOT NULL DEFAULT '0',
  `notify_to_team` text NOT NULL,
  `notify_to_team_members` text NOT NULL,
  `notify_to_terms` text NOT NULL,
  `sort` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `event` (`event`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (1,'project_created','project',0,0,'','','',1,0),(2,'project_deleted','project',0,0,'','','',2,0),(3,'project_task_created','project',1,1,'','','project_members,task_assignee',3,0),(4,'project_task_updated','project',0,1,'','','task_assignee',4,0),(5,'project_task_assigned','project',0,1,'','','task_assignee',5,0),(7,'project_task_started','project',0,0,'','','',7,0),(8,'project_task_finished','project',0,0,'','','',8,0),(9,'project_task_reopened','project',0,0,'','','',9,0),(10,'project_task_deleted','project',0,1,'','','task_assignee',10,0),(11,'project_task_commented','project',0,1,'','','task_assignee',11,0),(12,'project_member_added','project',0,1,'','','project_members',12,0),(13,'project_member_deleted','project',0,1,'','','project_members',13,0),(14,'project_file_added','project',0,1,'','','project_members',14,0),(15,'project_file_deleted','project',0,1,'','','project_members',15,0),(16,'project_file_commented','project',0,1,'','','project_members',16,0),(17,'project_comment_added','project',0,1,'','','project_members',17,0),(18,'project_comment_replied','project',0,1,'','','project_members,comment_creator',18,0),(19,'project_customer_feedback_added','project',0,1,'','','project_members',19,0),(20,'project_customer_feedback_replied','project',0,1,'','','project_members,comment_creator',20,0),(21,'client_signup','client',0,1,'1','5','',21,0),(22,'invoice_online_payment_received','invoice',0,0,'','','',22,0),(23,'leave_application_submitted','leave',0,0,'','','',23,0),(24,'leave_approved','leave',0,1,'','','leave_applicant',24,0),(25,'leave_assigned','leave',0,1,'','','leave_applicant',25,0),(26,'leave_rejected','leave',0,1,'','','leave_applicant',26,0),(27,'leave_canceled','leave',0,0,'','','',27,0),(28,'ticket_created','ticket',1,1,'','','ticket_assignee',28,0),(29,'ticket_commented','ticket',0,1,'','','client_primary_contact,ticket_creator',29,0),(30,'ticket_closed','ticket',0,1,'','','client_primary_contact,ticket_creator',30,0),(31,'ticket_reopened','ticket',0,1,'','','client_primary_contact,ticket_creator',31,0),(32,'estimate_request_received','estimate',0,0,'','','',32,0),(33,'estimate_sent','estimate',0,0,'','','',33,0),(34,'estimate_accepted','estimate',0,0,'','','',34,0),(35,'estimate_rejected','estimate',0,0,'','','',35,0);
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `project_comment_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_comment_id` int(11) NOT NULL,
  `project_file_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `activity_log_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_payment_id` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `estimate_request_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,5,'','2018-03-23 12:03:03','219,241','','project_task_created',1,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,5,'','2018-04-12 08:01:51','','','project_task_created',1,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,5,'','2018-04-12 08:06:16','94,100',',100','project_task_created',1,2,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,94,'','2018-04-12 08:08:23','','','project_task_updated',1,2,0,0,0,0,0,0,0,5,0,0,0,0,0),(5,100,'','2018-04-12 08:11:04','94',',94','project_task_updated',1,2,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,100,'','2018-04-12 08:14:22','5','','project_task_commented',1,1,1,0,0,0,0,0,0,0,0,0,0,0,0),(7,100,'','2018-04-12 08:14:42','5',',5','project_task_updated',1,1,0,0,0,0,0,0,0,7,0,0,0,0,0),(8,5,'','2018-04-12 08:24:58','94,100','','project_comment_added',1,0,2,0,0,0,0,0,0,0,0,0,0,0,0),(9,100,'','2018-04-12 08:28:48','5',',5','project_task_commented',1,1,3,0,0,0,0,0,0,0,0,0,0,0,0),(10,5,'','2018-04-12 08:29:34','','','project_task_commented',1,1,4,0,0,0,0,0,0,0,0,0,0,0,0),(11,100,'','2018-04-12 08:33:08','5',',5','project_task_updated',1,1,0,0,0,0,0,0,0,11,0,0,0,0,0),(12,5,'','2018-04-12 08:38:59','','','project_task_updated',1,1,0,0,0,0,0,0,0,12,0,0,0,0,0),(13,5,'','2018-04-12 08:46:59','94,100','','project_comment_added',1,0,5,0,0,0,0,0,0,0,0,0,0,0,0),(14,5,'','2018-04-12 11:59:44','94','','project_task_created',2,3,0,0,0,0,0,0,0,0,0,0,0,0,0),(15,94,'','2018-04-12 12:03:39','5,82','','project_member_added',2,0,0,0,0,0,0,0,82,0,0,0,0,0,0),(16,5,'','2018-04-12 12:09:58','82,83,94','','project_task_created',2,4,0,0,0,0,0,0,0,0,0,0,0,0,0),(17,100,'','2018-04-12 13:49:26','94','','project_task_updated',1,2,0,0,0,0,0,0,0,16,0,0,0,0,0),(18,5,'','2018-04-13 12:17:14','94','','project_task_updated',2,2,0,0,0,0,0,0,0,17,0,0,0,0,0),(19,5,'','2018-04-19 12:58:47','94','','ticket_created',0,0,0,1,1,0,0,0,0,0,0,0,0,0,0),(20,5,'','2018-04-19 13:06:57','94,113',',113','project_task_created',9,5,0,0,0,0,0,0,0,0,0,0,0,0,0),(21,102,'','2018-04-23 09:14:28','117','','project_task_created',10,6,0,0,0,0,0,0,0,0,0,0,0,0,0),(22,5,'','2018-04-26 13:12:55','','','project_task_created',6,7,0,0,0,0,0,0,0,0,0,0,0,0,0),(23,5,'','2018-04-26 13:13:24','','','project_task_commented',6,7,6,0,0,0,0,0,0,0,0,0,0,0,0),(24,5,'','2018-05-05 16:27:17','123','','project_task_created',11,8,0,0,0,0,0,0,0,0,0,0,0,0,0),(25,5,'','2018-05-05 16:28:27','123','','project_task_created',11,9,0,0,0,0,0,0,0,0,0,0,0,0,0),(26,5,'','2018-05-05 16:30:18','90,123','','project_task_created',11,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(27,5,'','2018-05-05 16:31:19','90,92,123','','project_task_created',11,11,0,0,0,0,0,0,0,0,0,0,0,0,0),(28,5,'','2018-05-05 16:32:27','90,92,123','','project_task_created',11,12,0,0,0,0,0,0,0,0,0,0,0,0,0),(29,5,'','2018-05-05 16:32:38','92','','project_task_updated',11,12,0,0,0,0,0,0,0,29,0,0,0,0,0),(30,5,'','2018-05-05 16:37:53','90,92,102,117,123','','project_task_created',11,13,0,0,0,0,0,0,0,0,0,0,0,0,0),(31,5,'','2018-05-05 16:38:47','90,92,102,117,123','','project_task_created',11,14,0,0,0,0,0,0,0,0,0,0,0,0,0),(32,5,'','2018-05-05 16:39:40','90,92,102,117,123',',102','project_task_created',11,15,0,0,0,0,0,0,0,0,0,0,0,0,0),(33,5,'','2018-05-05 16:42:02','90,92,102,117,123','','project_task_created',11,16,0,0,0,0,0,0,0,0,0,0,0,0,0),(34,5,'','2018-05-05 16:42:39','90,92,102,117,123','','project_task_created',11,17,0,0,0,0,0,0,0,0,0,0,0,0,0),(35,5,'','2018-05-05 16:43:50','102',',102','project_task_updated',11,17,0,0,0,0,0,0,0,35,0,0,0,0,0),(36,5,'','2018-05-05 16:46:34','90,91,92,102,106,115,116,117,123','','project_task_created',11,18,0,0,0,0,0,0,0,0,0,0,0,0,0),(37,5,'','2018-05-05 16:48:07','90,91,92,102,106,115,116,117,123','','project_task_created',11,19,0,0,0,0,0,0,0,0,0,0,0,0,0),(38,5,'','2018-05-05 16:49:31','86,90,91,92,102,106,111,112,115,116,117,123','','project_task_created',11,20,0,0,0,0,0,0,0,0,0,0,0,0,0),(39,5,'','2018-05-05 16:50:07','86','','project_task_updated',11,20,0,0,0,0,0,0,0,39,0,0,0,0,0),(40,5,'','2018-05-05 16:51:16','86,90,91,92,99,102,106,110,111,112,115,116,117,123',',99','project_task_created',11,21,0,0,0,0,0,0,0,0,0,0,0,0,0),(41,99,'','2018-05-07 11:21:31','102','','project_task_commented',11,14,7,0,0,0,0,0,0,0,0,0,0,0,0),(42,99,'','2018-05-07 12:09:52','92','','project_task_updated',11,11,0,0,0,0,0,0,0,0,0,0,0,0,0),(43,99,'','2018-05-07 12:09:54','92','','project_task_updated',11,12,0,0,0,0,0,0,0,43,0,0,0,0,0),(44,99,'','2018-05-07 12:09:57','86','','project_task_updated',11,20,0,0,0,0,0,0,0,44,0,0,0,0,0),(45,102,'','2018-05-07 12:44:00','','','project_task_commented',11,17,8,0,0,0,0,0,0,0,0,0,0,0,0),(46,102,'','2018-05-07 12:45:51','','','project_task_commented',11,15,9,0,0,0,0,0,0,0,0,0,0,0,0),(47,94,'','2018-05-08 08:18:30','','','ticket_created',0,0,0,18,3,0,0,0,0,0,0,0,0,0,0),(48,5,'','2018-05-09 09:20:43','94,113','','project_task_created',9,22,0,0,0,0,0,0,0,0,0,0,0,0,0),(49,5,'','2018-05-09 09:21:16','','','project_task_updated',9,22,0,0,0,0,0,0,0,49,0,0,0,0,0),(50,5,'','2018-05-09 09:22:03','109','','project_task_created',12,23,0,0,0,0,0,0,0,0,0,0,0,0,0),(51,5,'','2018-05-09 09:22:34','','','project_task_updated',12,23,0,0,0,0,0,0,0,51,0,0,0,0,0),(52,5,'','2018-05-09 09:22:59','94,109','','project_task_created',12,24,0,0,0,0,0,0,0,0,0,0,0,0,0),(53,5,'','2018-05-09 09:23:48','','','project_task_deleted',12,24,0,0,0,0,0,0,0,0,0,0,0,0,0),(54,5,'','2018-05-09 09:24:09','94','','project_task_deleted',9,5,0,0,0,0,0,0,0,0,0,0,0,0,0),(55,5,'','2018-05-09 09:24:12','','','project_task_deleted',9,22,0,0,0,0,0,0,0,0,0,0,0,0,0),(56,5,'','2018-05-09 09:24:14','','','project_task_deleted',12,23,0,0,0,0,0,0,0,0,0,0,0,0,0),(57,109,'','2018-05-09 09:24:50','5,94,95,106,141,145,152,153','','project_task_created',12,25,0,0,0,0,0,0,0,0,0,0,0,0,0),(58,109,'','2018-05-09 09:25:14','','','project_task_updated',12,25,0,0,0,0,0,0,0,58,0,0,0,0,0),(59,109,'','2018-05-09 09:35:38','116','','project_task_updated',12,25,0,0,0,0,0,0,0,60,0,0,0,0,0),(60,109,'','2018-05-09 09:49:08','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,26,0,0,0,0,0,0,0,0,0,0,0,0,0),(61,109,'','2018-05-09 10:08:47','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,27,0,0,0,0,0,0,0,0,0,0,0,0,0),(62,109,'','2018-05-09 10:10:23','153','','project_task_updated',12,27,0,0,0,0,0,0,0,64,0,0,0,0,0),(63,109,'','2018-05-09 10:11:04','153','','project_task_updated',12,27,0,0,0,0,0,0,0,65,0,0,0,0,0),(64,109,'','2018-05-09 10:13:10','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,28,0,0,0,0,0,0,0,0,0,0,0,0,0),(65,109,'','2018-05-09 10:14:42','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,29,0,0,0,0,0,0,0,0,0,0,0,0,0),(66,109,'','2018-05-09 10:16:00','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,30,0,0,0,0,0,0,0,0,0,0,0,0,0),(67,109,'','2018-05-09 10:17:08','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,31,0,0,0,0,0,0,0,0,0,0,0,0,0),(68,109,'','2018-05-09 10:23:10','5,94,95,106,116,121,128,141,145,152,153','','project_task_created',12,32,0,0,0,0,0,0,0,0,0,0,0,0,0),(69,109,'','2018-05-09 10:24:21','5,94,95,106,116,121,127,128,141,145,152,153',',5','project_task_created',12,33,0,0,0,0,0,0,0,0,0,0,0,0,0),(70,109,'','2018-05-09 10:25:52','127','','project_task_updated',12,33,0,0,0,0,0,0,0,72,0,0,0,0,0),(71,109,'','2018-05-09 10:30:14','5,86,94,95,96,106,111,112,116,121,127,128,140,141,145,152,153',',5','project_task_created',12,34,0,0,0,0,0,0,0,0,0,0,0,0,0),(72,109,'','2018-05-09 10:36:23','','','project_task_updated',12,32,0,0,0,0,0,0,0,74,0,0,0,0,0),(73,109,'','2018-05-09 10:36:26','','','project_task_updated',12,32,0,0,0,0,0,0,0,75,0,0,0,0,0),(74,109,'','2018-05-09 10:36:49','','','project_task_commented',12,32,10,0,0,0,0,0,0,0,0,0,0,0,0),(75,102,'','2018-05-09 13:22:47','96,99,105,123','','project_task_created',13,35,0,0,0,0,0,0,0,0,0,0,0,0,0),(76,102,'','2018-05-09 13:23:26','123','','project_task_updated',13,35,0,0,0,0,0,0,0,82,0,0,0,0,0),(77,102,'','2018-05-09 13:27:33','85,91,96,99,105,123','','project_task_created',13,36,0,0,0,0,0,0,0,0,0,0,0,0,0),(78,102,'','2018-05-09 13:29:53','85,91,96,99,105,106,123','','project_task_created',13,37,0,0,0,0,0,0,0,0,0,0,0,0,0),(79,102,'','2018-05-09 13:31:55','85,91,96,99,105,106,123','','project_task_created',13,38,0,0,0,0,0,0,0,0,0,0,0,0,0),(80,102,'','2018-05-09 13:32:15','91','','project_task_assigned',13,37,0,0,0,0,0,0,91,0,0,0,0,0,0),(81,102,'','2018-05-09 13:33:31','85,91,96,99,105,106,123','','project_task_created',13,39,0,0,0,0,0,0,0,0,0,0,0,0,0),(82,102,'','2018-05-09 13:35:00','85,91,96,99,105,106,123','','project_task_created',13,40,0,0,0,0,0,0,0,0,0,0,0,0,0),(83,102,'','2018-05-09 13:36:40','85,91,96,99,105,106,123','','project_task_created',13,41,0,0,0,0,0,0,0,0,0,0,0,0,0),(84,102,'','2018-05-09 13:45:07','85,91,96,99,105,106,107,123','','project_task_created',13,42,0,0,0,0,0,0,0,0,0,0,0,0,0),(85,102,'','2018-05-09 13:46:18','85,91,96,99,105,106,107,123','','project_task_created',13,43,0,0,0,0,0,0,0,0,0,0,0,0,0),(86,102,'','2018-05-09 13:50:45','85,91,92,96,99,105,106,107,123',',92','project_task_created',13,44,0,0,0,0,0,0,0,0,0,0,0,0,0),(87,102,'','2018-05-09 13:54:20','85,86,91,92,96,99,105,106,107,112,123',',92','project_task_created',13,45,0,0,0,0,0,0,0,0,0,0,0,0,0),(88,102,'','2018-05-09 13:56:40','85,86,91,92,96,99,101,104,105,106,107,112,123',',92','project_task_created',13,46,0,0,0,0,0,0,0,0,0,0,0,0,0),(89,102,'','2018-05-09 13:59:22','85,86,91,92,96,99,101,104,105,106,107,112,123','','project_task_created',13,47,0,0,0,0,0,0,0,0,0,0,0,0,0),(90,92,'','2018-05-09 14:00:00','101','','project_task_commented',13,46,11,0,0,0,0,0,0,0,0,0,0,0,0),(91,102,'','2018-05-09 14:00:32','85,86,91,92,96,99,101,104,105,106,107,112,123','','project_task_created',13,48,0,0,0,0,0,0,0,0,0,0,0,0,0),(92,102,'','2018-05-09 14:00:58','105','','project_task_updated',13,48,0,0,0,0,0,0,0,104,0,0,0,0,0),(93,102,'','2018-05-09 14:03:11','85,86,91,92,96,99,101,104,105,106,107,112,123','','project_task_created',13,49,0,0,0,0,0,0,0,0,0,0,0,0,0),(94,102,'','2018-05-09 14:04:29','85,86,91,92,96,99,101,104,105,106,107,112,123,132','','project_task_created',13,50,0,0,0,0,0,0,0,0,0,0,0,0,0),(95,102,'','2018-05-09 14:06:20','85,86,91,92,96,99,101,104,105,106,107,112,123,132','','project_task_created',13,51,0,0,0,0,0,0,0,0,0,0,0,0,0),(96,102,'','2018-05-09 14:07:22','85,86,90,91,92,96,99,101,104,105,106,107,112,123,132','','project_task_created',13,52,0,0,0,0,0,0,0,0,0,0,0,0,0),(97,102,'','2018-05-09 14:10:03','85,86,87,90,91,92,96,99,101,104,105,106,107,112,123,132','','project_task_created',13,53,0,0,0,0,0,0,0,0,0,0,0,0,0),(98,102,'','2018-05-09 14:13:09','85,86,87,90,91,92,96,99,101,104,105,106,107,112,117,123,132','','project_task_created',13,54,0,0,0,0,0,0,0,0,0,0,0,0,0),(99,102,'','2018-05-09 14:17:59','85,86,87,90,91,92,94,96,99,100,101,104,105,106,107,112,117,123,132,152',',92','project_task_created',13,55,0,0,0,0,0,0,0,0,0,0,0,0,0),(100,102,'','2018-05-09 14:26:04','117','','project_task_updated',10,6,0,0,0,0,0,0,0,115,0,0,0,0,0),(101,102,'','2018-05-09 14:26:15','117','','project_task_updated',10,6,0,0,0,0,0,0,0,116,0,0,0,0,0),(102,102,'','2018-05-09 14:32:18','107','','project_task_updated',10,6,0,0,0,0,0,0,0,118,0,0,0,0,0),(103,102,'','2018-05-09 14:34:22','86,91,105,107,116,117','','project_task_created',10,56,0,0,0,0,0,0,0,0,0,0,0,0,0),(104,102,'','2018-05-09 14:36:38','86,91,105,107,116,117,123','','project_task_created',10,57,0,0,0,0,0,0,0,0,0,0,0,0,0),(105,102,'','2018-05-09 14:38:44','86,91,105,107,116,117,123','','project_task_created',10,58,0,0,0,0,0,0,0,0,0,0,0,0,0),(106,102,'','2018-05-09 14:40:06','107','','project_task_updated',10,58,0,0,0,0,0,0,0,125,0,0,0,0,0),(107,102,'','2018-05-09 14:41:32','86,88,91,99,105,107,112,113,116,117,123','','project_task_created',10,59,0,0,0,0,0,0,0,0,0,0,0,0,0),(108,102,'','2018-05-09 14:43:49','86,88,91,96,99,105,107,112,113,116,117,123','','project_task_created',10,60,0,0,0,0,0,0,0,0,0,0,0,0,0),(109,5,'','2018-05-09 17:43:22','156','','project_task_created',14,61,0,0,0,0,0,0,0,0,0,0,0,0,0),(110,5,'','2018-05-09 17:43:48','','','project_task_deleted',14,61,0,0,0,0,0,0,0,0,0,0,0,0,0),(111,102,'','2018-05-10 06:13:08','86,88,90,91,92,94,96,99,105,107,112,113,116,117,123','','project_task_created',10,62,0,0,0,0,0,0,0,0,0,0,0,0,0),(112,102,'','2018-05-10 06:13:33','','','project_task_updated',10,62,0,0,0,0,0,0,0,133,0,0,0,0,0),(113,102,'','2018-05-10 06:18:27','86,88,90,91,92,94,96,99,105,107,112,113,116,117,123','','project_task_created',10,63,0,0,0,0,0,0,0,0,0,0,0,0,0),(114,102,'','2018-05-10 06:21:50','86,88,90,91,92,94,96,99,105,107,112,113,116,117,123','','project_task_created',10,64,0,0,0,0,0,0,0,0,0,0,0,0,0),(115,102,'','2018-05-10 06:24:11','86,88,90,91,92,94,96,99,105,107,112,113,116,117,123','','project_task_created',10,65,0,0,0,0,0,0,0,0,0,0,0,0,0),(116,102,'','2018-05-10 06:27:27','86,88,90,91,92,94,96,99,105,107,112,113,116,117,123','','project_task_created',10,66,0,0,0,0,0,0,0,0,0,0,0,0,0),(117,102,'','2018-05-10 06:29:17','86,88,90,91,92,94,96,99,100,105,107,112,113,116,117,123','','project_task_created',10,67,0,0,0,0,0,0,0,0,0,0,0,0,0),(118,102,'','2018-05-10 06:31:08','86,88,90,91,92,94,96,99,100,105,107,112,113,116,117,123','','project_task_created',10,68,0,0,0,0,0,0,0,0,0,0,0,0,0),(119,102,'','2018-05-10 06:33:10','86,88,90,91,92,94,96,99,100,105,107,112,113,116,117,123',',92','project_task_created',10,69,0,0,0,0,0,0,0,0,0,0,0,0,0),(120,102,'','2018-05-10 06:34:56','86,88,90,91,92,94,96,99,100,105,107,112,113,116,117,123',',92','project_task_created',10,70,0,0,0,0,0,0,0,0,0,0,0,0,0),(121,102,'','2018-05-10 06:37:24','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123',',92','project_task_created',10,71,0,0,0,0,0,0,0,0,0,0,0,0,0),(122,102,'','2018-05-10 07:45:02','92','','project_task_updated',13,55,0,0,0,0,0,0,0,152,0,0,0,0,0),(123,102,'','2018-05-10 07:48:03','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123','','project_task_created',10,72,0,0,0,0,0,0,0,0,0,0,0,0,0),(124,102,'','2018-05-10 07:49:03','123','','project_task_updated',10,72,0,0,0,0,0,0,0,155,0,0,0,0,0),(125,102,'','2018-05-10 07:51:27','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123',',92','project_task_created',10,73,0,0,0,0,0,0,0,0,0,0,0,0,0),(126,125,'','2018-05-10 10:24:30','','','ticket_created',0,0,0,19,4,0,0,0,0,0,0,0,0,0,0),(127,125,'','2018-05-10 10:27:24','','','ticket_created',0,0,0,20,5,0,0,0,0,0,0,0,0,0,0),(128,109,'','2018-05-10 13:12:54','95,106,115,116,121','','project_task_created',15,74,0,0,0,0,0,0,0,0,0,0,0,0,0),(129,109,'','2018-05-10 13:22:32','116','','project_task_updated',15,74,0,0,0,0,0,0,0,159,0,0,0,0,0),(130,123,'','2018-05-10 13:26:34','','','project_task_commented',13,54,12,0,0,0,0,0,0,0,0,0,0,0,0),(131,123,'','2018-05-10 13:26:35','','','project_task_commented',13,54,13,0,0,0,0,0,0,0,0,0,0,0,0),(132,123,'','2018-05-10 13:29:01','101','','project_task_commented',10,71,14,0,0,0,0,0,0,0,0,0,0,0,0),(133,109,'','2018-05-10 13:31:37','95,106,115,116,118,121','','project_task_created',15,75,0,0,0,0,0,0,0,0,0,0,0,0,0),(134,109,'','2018-05-10 13:54:43','','','project_task_updated',15,75,0,0,0,0,0,0,0,164,0,0,0,0,0),(135,109,'','2018-05-10 14:03:54','95,106,115,116,118,121,141','','project_task_created',15,76,0,0,0,0,0,0,0,0,0,0,0,0,0),(136,109,'','2018-05-10 14:06:03','95,104,106,115,116,118,121,141','','project_task_created',15,77,0,0,0,0,0,0,0,0,0,0,0,0,0),(137,109,'','2018-05-10 14:10:54','93,95,103,104,106,115,116,118,121,141','','project_task_created',15,78,0,0,0,0,0,0,0,0,0,0,0,0,0),(138,109,'','2018-05-10 14:28:30','86,93,95,103,104,106,111,112,115,116,118,121,140,141,154','','project_task_created',15,79,0,0,0,0,0,0,0,0,0,0,0,0,0),(139,109,'','2018-05-10 14:34:36','116','','project_task_updated',15,74,0,0,0,0,0,0,0,169,0,0,0,0,0),(140,109,'','2018-05-10 14:36:15','152','','project_task_updated',15,75,0,0,0,0,0,0,0,170,0,0,0,0,0),(141,5,'','2018-05-11 08:32:51','86','','project_task_deleted',0,20,0,0,0,0,0,0,0,0,0,0,0,0,0),(142,5,'','2018-05-11 08:32:54','102','','project_task_deleted',0,17,0,0,0,0,0,0,0,0,0,0,0,0,0),(143,99,'','2018-05-11 08:34:26','156','','ticket_created',0,0,0,21,6,0,0,0,0,0,0,0,0,0,0),(144,102,'','2018-05-11 09:28:18','86,90,91,92,94,96,99,112,116,123','','project_task_created',16,80,0,0,0,0,0,0,0,0,0,0,0,0,0),(145,102,'','2018-05-11 09:28:36','','','project_task_updated',16,80,0,0,0,0,0,0,0,173,0,0,0,0,0),(146,125,'','2018-05-11 09:31:37','156',',156','ticket_created',0,0,0,22,7,0,0,0,0,0,0,0,0,0,0),(147,99,'','2018-05-11 11:30:33','156',',156','ticket_created',0,0,0,23,9,0,0,0,0,0,0,0,0,0,0),(148,102,'','2018-05-11 12:59:27','105','','project_task_commented',10,56,15,0,0,0,0,0,0,0,0,0,0,0,0),(149,102,'','2018-05-12 08:45:29','','','project_task_commented',16,80,16,0,0,0,0,0,0,0,0,0,0,0,0),(150,141,'','2018-05-14 07:57:48','116','','project_task_updated',15,74,0,0,0,0,0,0,0,176,0,0,0,0,0),(151,125,'','2018-05-14 08:26:20','','','ticket_created',0,0,0,24,10,0,0,0,0,0,0,0,0,0,0),(152,125,'','2018-05-14 11:36:46','','','ticket_created',0,0,0,25,11,0,0,0,0,0,0,0,0,0,0),(153,102,'','2018-05-15 06:09:32','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,81,0,0,0,0,0,0,0,0,0,0,0,0,0),(154,102,'','2018-05-15 06:11:02','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,82,0,0,0,0,0,0,0,0,0,0,0,0,0),(155,102,'','2018-05-15 06:11:57','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,83,0,0,0,0,0,0,0,0,0,0,0,0,0),(156,102,'','2018-05-15 06:13:45','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,84,0,0,0,0,0,0,0,0,0,0,0,0,0),(157,102,'','2018-05-15 06:14:51','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,85,0,0,0,0,0,0,0,0,0,0,0,0,0),(158,102,'','2018-05-15 06:16:27','86,88,90,91,92,94,96,99,100,101,105,107,112,113,116,117,123,152','','project_task_created',10,86,0,0,0,0,0,0,0,0,0,0,0,0,0),(159,92,'','2018-05-15 06:25:29','','','project_task_updated',10,65,0,0,0,0,0,0,0,0,0,0,0,0,0),(160,5,'','2018-07-17 09:41:39','123','','project_task_updated',10,57,0,0,0,0,0,0,0,202,0,0,0,0,0),(161,5,'','2018-07-17 09:41:43','','','project_task_updated',10,87,0,0,0,0,0,0,0,203,0,0,0,0,0),(162,5,'','2018-07-31 07:53:42','90','','project_task_deleted',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(163,5,'','2018-08-07 09:37:05','90','','project_task_deleted',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(164,5,'','2018-09-27 06:30:19','','','project_task_commented',2,1,31,0,0,0,0,0,0,0,0,0,0,0,0),(165,5,'','2018-09-27 06:30:22','','','project_task_commented',2,1,32,0,0,0,0,0,0,0,0,0,0,0,0),(166,5,'','2018-10-31 06:46:34','90','','project_task_deleted',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0),(167,5,'','2019-03-28 12:04:04','','','project_task_commented',24,153,33,0,0,0,0,0,0,0,0,0,0,0,0),(168,5,'','2019-04-16 13:26:47','90','','project_task_deleted',0,10,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective_types`
--

DROP TABLE IF EXISTS `objective_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objective_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective_types`
--

LOCK TABLES `objective_types` WRITE;
/*!40000 ALTER TABLE `objective_types` DISABLE KEYS */;
INSERT INTO `objective_types` VALUES (1,'Debt Collection','2018-01-22 18:51:46',NULL,0),(2,'Development','2018-01-22 18:51:57',NULL,0),(3,'Maintenance','2018-01-22 18:52:08',NULL,0),(4,'Acquisition','2018-01-22 18:52:20',NULL,0);
/*!40000 ALTER TABLE `objective_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_expenses`
--

DROP TABLE IF EXISTS `other_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_expenses` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` double NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_expenses`
--

LOCK TABLES `other_expenses` WRITE;
/*!40000 ALTER TABLE `other_expenses` DISABLE KEYS */;
INSERT INTO `other_expenses` VALUES (1,'car wash','done weekly',5000,'2018-04-12 06:30:13',0),(3,'Lubricating','To be done frequently',400,'2018-04-12 06:40:01',0),(4,'fine','reckless driving',4000,'2018-04-12 06:40:47',0);
/*!40000 ALTER TABLE `other_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outages`
--

DROP TABLE IF EXISTS `outages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outages` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `start_date` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `duration_in_hrs` varchar(255) DEFAULT NULL,
  `incident` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outages`
--

LOCK TABLES `outages` WRITE;
/*!40000 ALTER TABLE `outages` DISABLE KEYS */;
INSERT INTO `outages` VALUES (1,'12.03.1018','12:09','14.03.1018','14:10','5','demo incident',NULL,'2018-07-03 10:46:15',NULL,0),(2,'15.04.2018','13:09','17.02.2018','16:38','6','test now',NULL,'2018-07-03 10:46:15',NULL,0);
/*!40000 ALTER TABLE `outages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel_details`
--

DROP TABLE IF EXISTS `parcel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcel_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel_details`
--

LOCK TABLES `parcel_details` WRITE;
/*!40000 ALTER TABLE `parcel_details` DISABLE KEYS */;
INSERT INTO `parcel_details` VALUES (1,'bahasha','good one','me','5','1','2018-07-13 10:02:53',NULL,0),(3,'envelope','delivered today','kinde eng','5','1','2018-07-13 12:50:08',NULL,0),(4,'envelope','enveloped attached','5','kplc','1','2018-07-13 13:26:08',NULL,0),(5,'teste','test test','ngo','5','1','2018-07-16 07:15:52',NULL,0),(6,'wowo','great','walala','5','1','2018-07-16 07:34:48',NULL,0),(7,'dcsc','wepwepe','dddd','5','1','2018-07-16 08:46:39',NULL,0),(8,'wewe','wewe test','asdasd','5','1','2018-07-16 08:47:55',NULL,0),(9,'blabla','great descr','msdfmsdfm','5','1','2018-07-18 08:15:23',NULL,0),(10,'testingthis','sample envelope','Nairobi','5','1','2018-10-31 08:55:16',NULL,0),(11,'ducontentmmy ','duconte ntmmy ','kitale','5','1','2018-10-31 09:14:52',NULL,0),(12,'test','sdewdwe','milimani','5','1','2019-03-27 12:25:47',NULL,0),(13,'sdqw','qsqw','edewdwedweeeded','5','1','2019-03-27 12:28:53',NULL,0);
/*!40000 ALTER TABLE `parcel_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcel_inwards`
--

DROP TABLE IF EXISTS `parcel_inwards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcel_inwards` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `receiver_id` varchar(255) DEFAULT NULL,
  `receptionist_id` varchar(255) DEFAULT NULL,
  `parcel_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `sender` varchar(255) DEFAULT NULL,
  `files` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcel_inwards`
--

LOCK TABLES `parcel_inwards` WRITE;
/*!40000 ALTER TABLE `parcel_inwards` DISABLE KEYS */;
INSERT INTO `parcel_inwards` VALUES (5,'test','test it again','101','5','2018-07-26','1',NULL,NULL,'2018-07-14 15:52:11',NULL,0),(6,'ert','dsadad','5','5','2018-07-14','2',NULL,NULL,'2018-07-14 15:58:37',NULL,0),(7,'xzXzXzXxx','zxczxfvsdfwerfwasc','98','5','2018-07-25','0','zxzx',NULL,'2018-07-16 07:33:54',NULL,1),(8,'tetet','sdcsdcas','120','5','2018-07-26','0','wdwdcwedwe',NULL,'2018-07-16 07:35:04',NULL,0),(9,'wfdsf','dsfdsadasd','113','5','2018-07-25','0','amref','a:1:{i:0;a:2:{s:9:\"file_name\";s:32:\"inward_file5b4c56ab18d98-grr.jpg\";s:9:\"file_size\";s:6:\"191874\";}}','2018-07-16 08:26:19',NULL,0),(10,'xczxc','descriptive','5','5','2018-07-26','0','kinde eng','a:1:{i:0;a:2:{s:9:\"file_name\";s:89:\"inward_file5b4c5b911ed80-kazi_files_timeline_files_ticket_file5ad89287b8e95-users-(6).png\";s:9:\"file_size\";s:5:\"82093\";}}','2018-07-16 08:47:13',NULL,0),(11,'title356','basic testings','166','5','2018-07-25','0','simple user','a:1:{i:0;a:2:{s:9:\"file_name\";s:39:\"inward_file5b4c5be600a64-PRO-000001.pdf\";s:9:\"file_size\";s:6:\"109784\";}}','2018-07-16 08:48:38',NULL,0),(12,'tttttttttttttt','awesome men','183','5','2018-10-31','0','Nairobi','a:0:{}','2018-10-31 08:56:37',NULL,0),(13,'Call me now','assdvdf dsfsdgvdf','97','5','2018-11-01','0','kitale','a:0:{}','2018-10-31 09:14:12',NULL,0),(14,'rrrrrr','ascsd','82','5','2018-11-02','0','kitale','a:0:{}','2018-10-31 09:15:23',NULL,0),(15,'Media','This is it','5','5','2019-03-28','0','Willy','a:0:{}','2019-03-27 12:28:29',NULL,0),(16,'wedwe','wedwe','5','5','2019-03-28','0','wed','a:0:{}','2019-03-27 12:29:09',NULL,0);
/*!40000 ALTER TABLE `parcel_inwards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts_suppliers`
--

DROP TABLE IF EXISTS `parts_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parts_suppliers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `tax_no` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1205 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts_suppliers`
--

LOCK TABLES `parts_suppliers` WRITE;
/*!40000 ALTER TABLE `parts_suppliers` DISABLE KEYS */;
INSERT INTO `parts_suppliers` VALUES (605,'AAR Health Care','A0001','020 271 531 9','P051162287A','2018-09-26 12:23:39',0),(606,'Aquisana Ltd','A0002','020 243 510 8','P051234247W','2018-09-26 12:23:39',0),(607,'Accesskenya Group Ltd','A0003','020 360 000 0','P051193029R','2018-09-26 12:23:39',0),(608,'African Cargo Handling Ltd','A0004','328 230 00','P051118655F','2018-09-26 12:23:39',0),(609,'Aon Kenya Insurance Brokers Ltd','A0005','473135/38/898','','2018-09-26 12:23:39',0),(610,'Alicom Systems Ltd','A0006','44 1628 554650','','2018-09-26 12:23:39',0),(611,'Blue wave Company Ltd','B0001','2227818/2230331','P051124454T','2018-09-26 12:23:39',0),(612,'Bill investments ltd','B0002','556459/','P000601105W','2018-09-26 12:23:39',0),(613,'Baltic International Maritime Council','B0003','45 4436 6800','','2018-09-26 12:23:39',0),(614,'CMA CGM Kenya Ltd','C0002',' 25441435263','P051171485W','2018-09-26 12:23:39',0),(615,'Deans Travel Centre ltd-KES','D0001','041 2317211','P051165502Z','2018-09-26 12:23:39',0),(616,'Dev Enterprises Ltd','D0002','041 2222378','P000621269R','2018-09-26 12:23:39',0),(617,'First Computers Ltd ','F0002','+254 733 666 661','P051113453P','2018-09-26 12:23:39',0),(618,'Darajani hotel co.ltd','D0003','041 2494692','P051200631H','2018-09-26 12:23:39',0),(619,'Elite Digital Mombasa Ltd','E0001','020-8046262/63','P05131329G','2018-09-26 12:23:39',0),(620,'Expolanka Freight Dubai','E0002','+971-4-2990111','','2018-09-26 12:23:39',0),(621,'Enforcer Alarms Ltd','E0003','2222882/','P051091186X','2018-09-26 12:23:39',0),(622,'Eagle Africa Insurance Brokers Kenya Ltd','E0004','041 2003051','P000591465U','2018-09-26 12:23:39',0),(623,'Fapbod Ships & General contractors','F0001','041 2230841/','P051102553N','2018-09-26 12:23:39',0),(624,'Furniturerama Ltd','F0003','2494759-60','P051133096Y','2018-09-26 12:23:39',0),(625,'Fast tTruck Int. limited','F0004','2229784/6','','2018-09-26 12:23:39',0),(626,'xxxxKenya port Authority','K0003','+254 11 312211','P051094522S','2018-09-26 12:23:39',0),(627,'Freightwell Express Limited-USD','F0005','2224822/','P051153405J','2018-09-26 12:23:39',0),(628,'Kenya Marine Contractors (EPZ) Ltd ','K0002','+254 20 2381040','','2018-09-26 12:23:39',0),(629,'George Philip Muhugu Ngomo','G0001','0734 790 410','A001754984K','2018-09-26 12:23:39',0),(630,'Karigithu Kinyua & Co. Advocates','K0001','2220909/','P051184901P','2018-09-26 12:23:39',0),(631,'IFA-Haiko Logistics India PVT Ltd','H0002',' 00 9122 2857 7354/32','','2018-09-26 12:23:39',0),(632,'Hammond Tutu & Gunther Kenya Ltd','H0001','020-2340347/','P051216709Z','2018-09-26 12:23:39',0),(633,'Island Tyres & Automart Ltd','I0001','041 2494980','P051166177H','2018-09-26 12:23:39',0),(634,'Royal Court Hotel (Ksh)','R0001','041 222379','P051106160S','2018-09-26 12:23:39',0),(635,'Perfect Scan ltd','P0005','020 2648286','P051176232U','2018-09-26 12:23:39',0),(636,'Personal Systems Nairobi Ltd','P0004','0737333470','P051173268A','2018-09-26 12:23:39',0),(637,'PKF Kenya','P0003','+254 41 2226422/3','P051130467R','2018-09-26 12:23:39',0),(638,'Kenya Ferry Services Ltd','K0004','2226220/','','2018-09-26 12:23:39',0),(639,'Lifting Equipment Co. Ltd','L0001',' (254-41)2220267','P000619655J','2018-09-26 12:23:39',0),(640,'MTN Business (K) Ltd','M0001','+254 (20)698-8000','P051138876Z','2018-09-26 12:23:39',0),(641,'MYSSA General Suppliers & Contractors','M0002',' 0721 400 824','','2018-09-26 12:23:39',0),(642,'Oceanfreight E.A Ltd','O0001',' 2223446','P000621296U','2018-09-26 12:23:39',0),(643,'Petro Oil Kenya Ltd','P0001','041-2315461/','P051135956F','2018-09-26 12:23:39',0),(644,'Probranding Ventures','P0002','254 721 100178','','2018-09-26 12:23:39',0),(645,'Ree J\'s Ltd','R0002','0728-445688','P051146293G','2018-09-26 12:23:39',0),(646,'Trade Magnate Limited','T0004','041 2022457/8','P051152374V','2018-09-26 12:23:39',0),(647,'The Co-operative Insurance Co. (K) Ltd','T0003','2823000','','2018-09-26 12:23:39',0),(648,'The Copy Cat Ltd Msa','T0002','020-226701','P00597676Q','2018-09-26 12:23:39',0),(649,'The Docucare Agencies','T0001','020 2171069','P051217587P','2018-09-26 12:23:39',0),(650,'Smart Force Trade Ltd','S0004','2495754','P051203411E','2018-09-26 12:23:39',0),(651,'Stan Equipment & Logistics Services Ltd','S0001','2223186/7','P051172959E','2018-09-26 12:23:39',0),(652,'Sadena Agencies Ltd','S0002','020 2039108','P051245190F','2018-09-26 12:23:39',0),(653,'Ruman Shipcontractors (USD)','R0004','020 354820','P051183732S','2018-09-26 12:23:39',0),(654,'xxxxRoanna KESxxxxxx','R0003','(254-020)354201','A 00127652N','2018-09-26 12:23:39',0),(655,'Six Eighty Hotel','S0003','(02) 315000','P000595575K','2018-09-26 12:23:39',0),(656,'Woodtex Kenya Ltd','W0002','8076224','P000613037L','2018-09-26 12:23:39',0),(657,'Texas Alarms Kenya Ltd ;2011','T0007','472222/','P051118168F','2018-09-26 12:23:39',0),(658,'Transocean Marine Surveyors','T0005','3548201','A002059560V','2018-09-26 12:23:39',0),(659,'Telkom Kenya Ltd','T0006','+254 20 4952001/2','P051128176G','2018-09-26 12:23:39',0),(660,'Transglobal Cargo Centre Ltd','T0008',' +254-(020)827069','','2018-09-26 12:23:39',0),(661,'UUNET Kenya Ltd','W0001','+2542069 88000','P051138876Z','2018-09-26 12:23:39',0),(662,'xxxxx','K001','','','2018-09-26 12:23:39',0),(663,'Anwarali & Brothers Ltd','A0007','020-8017615','P000620847Q','2018-09-26 12:23:39',0),(664,'Protecting & Indemnity K Ltd','P0006','','','2018-09-26 12:23:39',0),(665,'Romageco K Ltd','R0005','','','2018-09-26 12:23:39',0),(666,'Ruman shipcontractors Limited','R0006','0254-020-3548201','','2018-09-26 12:23:39',0),(667,'Safaricom Limited','S0005','041 2223911','P051129820X','2018-09-26 12:23:39',0),(668,'Scanwell Logistics (CMH)','S0006','','','2018-09-26 12:23:39',0),(669,'Scanwell Logistics HK Ltd','S0007','','','2018-09-26 12:23:39',0),(670,'Tysons Limited','T0010','','','2018-09-26 12:23:39',0),(671,'Scanwell Logistics Spain','S0008','','','2018-09-26 12:23:39',0),(672,'Airgo Consultants Ltd','A0011','','','2018-09-26 12:23:39',0),(673,'Shine Travels & Cargo PVT Ltd','S0009','','','2018-09-26 12:23:39',0),(674,'Trubrand Solutions Ltd','T0012','','','2018-09-26 12:23:39',0),(675,'Shipbrokers Register','S0010','','','2018-09-26 12:23:39',0),(676,'Alicom Systems Ltd','A0014','','','2018-09-26 12:23:39',0),(677,'Brains Tours & Car Hire','B0004','','','2018-09-26 12:23:39',0),(678,'Super First Forwarders','S0011','','','2018-09-26 12:23:39',0),(679,'Suppliers Magnate','S0012','','','2018-09-26 12:23:39',0),(680,'Spaceman Information Technology','S0013','0700111499','P051585201Z','2018-09-26 12:23:39',0),(681,'Swissport Cargo Services','S0014','','','2018-09-26 12:23:39',0),(682,'The Mission to Seamen  - KES','T0013','','P051092074X','2018-09-26 12:23:39',0),(683,'The Mission to Seamen (usd)','T0014','','','2018-09-26 12:23:39',0),(684,'Cargo Service Centre','C0005','','','2018-09-26 12:23:39',0),(685,'Cemtec Engineering Ltd','C0006','+254 041 24 90 310','P051232445S','2018-09-26 12:23:39',0),(686,'Trubrand Solutions Ltd','T0015','','','2018-09-26 12:23:39',0),(687,'Deans Travel Centre Ltd (USD)','D0004','041 2317211','P051165502Z','2018-09-26 12:23:39',0),(688,'The Aga Khan Hospital XXXXXXXXXXXX','T0016','','','2018-09-26 12:23:39',0),(689,'Bounty Hotel','B0005','','','2018-09-26 12:23:39',0),(690,'DHL Worldwide Express Kenya','D0005','+254 (041) 223933 ','P000613307I','2018-09-26 12:23:39',0),(691,'Jathii Enterprises ','J0001','','A003283457T','2018-09-26 12:23:39',0),(692,'Distance Car Hire, Tours & Travel Ltd','D0006','','','2018-09-26 12:23:39',0),(693,'DN Freight','D0007','','','2018-09-26 12:23:39',0),(694,'Dream Works Technologies ','D0008','','','2018-09-26 12:23:39',0),(695,'Jomki  Enterprises Ship Contractors','J0002','','','2018-09-26 12:23:39',0),(696,'Kenya Airways Ltd(KAHL)','K0005','','','2018-09-26 12:23:39',0),(697,'Kenya National Shipping Line Ltd','K0006','','','2018-09-26 12:23:39',0),(698,'KenyaWeb.Com Limited','K0007','','','2018-09-26 12:23:39',0),(699,'KW Design','K0008','','','2018-09-26 12:23:39',0),(700,'Lapid Logistics Limited','L0002','','','2018-09-26 12:23:39',0),(701,'ManucharMNV','M0004','','','2018-09-26 12:23:39',0),(702,'Eculine Kenya Ltd','E0005','','','2018-09-26 12:23:39',0),(703,'Freightwell Express Ltd -KES','F0006','+254-412229784','','2018-09-26 12:23:39',0),(704,'Mission to seamen Entertainment ','M0005','','','2018-09-26 12:23:39',0),(705,'Mombasa Fresh Water Supplier','M0006','','','2018-09-26 12:23:39',0),(706,'Future Kenya Ltd ','F0007','','','2018-09-26 12:23:39',0),(707,'Myssa General Suppliers & Contractors','M0007','','','2018-09-26 12:23:39',0),(708,'Green Island Ship Chandlers K Ltd','G0002','','','2018-09-26 12:23:39',0),(709,'Hi-Tech Radiocall Services','H0003','','','2018-09-26 12:23:39',0),(710,'Oceanfreight EA Limited','O0002','','','2018-09-26 12:23:39',0),(711,'Oriel Limited','O0003','041 470753','P051096223W','2018-09-26 12:23:39',0),(712,'IFA Secretariat','I0002','','','2018-09-26 12:23:39',0),(713,'Oriental Business Paradise','O0004','0726 675 904','P051115801L','2018-09-26 12:23:39',0),(714,'International Maritime & Aviation (Ksh)','I0004','','','2018-09-26 12:23:39',0),(715,'Agents One','A0016','','','2018-09-26 12:23:39',0),(716,'Wilke International Ltd','W0003','','P051147656H','2018-09-26 12:23:39',0),(717,'Cory Logistics','C0007','','','2018-09-26 12:23:39',0),(718,'Communications Commission of Kenya','C0008','254 020 424 2000','P051127746C','2018-09-26 12:23:39',0),(719,'Nation Media Group LTD','N0001','+2540412225479','','2018-09-26 12:23:39',0),(720,'Milele Beach Resort','M0008','0729403649','P051099353L','2018-09-26 12:23:39',0),(721,'Vectocorn Pest Control','V0001','2491531','P000621010R','2018-09-26 12:23:39',0),(722,'The Ship Brokers\' Register','T0017','','','2018-09-26 12:23:39',0),(723,'Dimensional Computer Backups','D0009','','','2018-09-26 12:23:39',0),(724,'Scanwell Logistics (china)co. ltd(Guangzhou Branch','S0015','','','2018-09-26 12:23:39',0),(725,'Fire fox xxxxxxxxxxxxxx','F0008','','','2018-09-26 12:23:39',0),(726,'DT Dobie','D0010','+254 20 6977000','P000594873H','2018-09-26 12:23:39',0),(727,'Shanghai Qifan Co.Ltd','S0016','','','2018-09-26 12:23:39',0),(728,'Jans Trading Japan','J0003','','','2018-09-26 12:23:39',0),(729,'Car & General (trading)Ltd','C0009','','P051096263G','2018-09-26 12:23:39',0),(730,'IBC JAPAN','I0005','','','2018-09-26 12:23:39',0),(731,'The Aga Khan Hospital,Mombasa','T0018','231 2953 / 4 / 5','','2018-09-26 12:23:39',0),(732,'Starwis ship contractors& eng.ltd','S0017','','','2018-09-26 12:23:39',0),(733,'Cemtec Eng. Ltd XXXXXXXXXX','C0010','','','2018-09-26 12:23:39',0),(734,'Mjshabiby Enterprises','M0010','0723-598038','A002754982J','2018-09-26 12:23:39',0),(735,'Industrial & Maritime Surveyors Ltd','I0006','','P000633434Z','2018-09-26 12:23:39',0),(736,'Umma University Trust','U0001','020 2469381/2','P051137878Z','2018-09-26 12:23:39',0),(737,'Mohammed Ahmed Abdalla','M0013','','','2018-09-26 12:23:39',0),(738,'Manson Hotel','M0014','','','2018-09-26 12:23:39',0),(739,'PAUL NKOLA','P0007','','','2018-09-26 12:23:39',0),(740,'Heritage Insurance Company Ltd','H0004','2224724','P000591465U','2018-09-26 12:23:39',0),(741,'Document Consulting Ltd','D0013','+254206005545/8','','2018-09-26 12:23:39',0),(742,'KAWSAR AUTO SPARES LTD','K0009','','','2018-09-26 12:23:39',0),(743,'JIWANI IMPEX LIMITED','J0004','','','2018-09-26 12:23:39',0),(744,'NYALI GOLF AND COUNTRY CLUB','N0002','','','2018-09-26 12:23:39',0),(745,'Nyali Airconditioning & Refrigration services Ltd','N0003','231 5503','P000621047H','2018-09-26 12:23:39',0),(746,'BEST BUYS TECHNOLOGIES LTD','B0006','0412313225','','2018-09-26 12:23:39',0),(747,'Phanry Enterprises','P0008','','','2018-09-26 12:23:39',0),(748,'AutoXpress Ltd','A0017','','P000626389L','2018-09-26 12:23:39',0),(749,'DENTECH ENTERPRISES','D0014','','','2018-09-26 12:23:39',0),(750,'wilking enterprises ltd','W0004','','','2018-09-26 12:23:39',0),(751,'Lexis Guest House','L0003','0723268332','','2018-09-26 12:23:39',0),(752,'NIBEATO AUTO WORKS LTD','N0004','0723691295','','2018-09-26 12:23:39',0),(753,'XXXManuchar...','M0015','','','2018-09-26 12:23:39',0),(754,'TOYOTA KENYA','T0019','','','2018-09-26 12:23:39',0),(755,'Manken Geohydrotech Consultants','M0016','0722796171','A001285084W','2018-09-26 12:23:39',0),(756,'URBAN CARGO NETWORKS','U0002','','','2018-09-26 12:23:39',0),(757,'Signon Aviation Ltd','S0021','','P051604274I','2018-09-26 12:23:39',0),(758,'mozart Business Solution','M0017','','','2018-09-26 12:23:39',0),(759,'SAROVA WHITE SANDS HOTEL','S0022','+254412128000','P000608996S','2018-09-26 12:23:39',0),(760,'Next Level Valuers & Property Consultants','N0005','0722764636','','2018-09-26 12:23:39',0),(761,'Process Express International','P0009','','','2018-09-26 12:23:39',0),(762,'Habib Boats Services','H0005','0733895987','A003891952B','2018-09-26 12:23:39',0),(763,'Sovereign Logistics Ltd-KES','S0023','041 2229784','P051372811P','2018-09-26 12:23:39',0),(764,'Safmarine Kenya Limited','S0025','','','2018-09-26 12:23:39',0),(765,'Officeline Trading','O0006','','','2018-09-26 12:23:39',0),(766,'Mombasa Canvas','M0019','2315640','P000621116Y','2018-09-26 12:23:39',0),(767,'Fracoline Marketing Africa','F0009','','','2018-09-26 12:23:39',0),(768,'CMC MOTORS GROUP LTD','C0013','','','2018-09-26 12:23:39',0),(769,'Maruti Office Supplies Ltd','M0020','020-3541776','P051103500A','2018-09-26 12:23:39',0),(770,'BANDARINI SHIPCHANDALERS & GENERAL AGENCIS LTD','B0008','','','2018-09-26 12:23:39',0),(771,'BANADARINI SHIP CHANDLERS','B0009','','','2018-09-26 12:23:39',0),(772,'FUTURE KENYA (USD)','F0010','','','2018-09-26 12:23:39',0),(773,'MISSION TO SEA MEN XXXXXXXXXXX','M0021','','','2018-09-26 12:23:39',0),(774,'CITY COUNCIL OF NAIROBI','C0014','','','2018-09-26 12:23:39',0),(775,'SUNRISE RESORT','S0027','','','2018-09-26 12:23:39',0),(776,'Ganador Investments','G0003','','','2018-09-26 12:23:39',0),(777,'DIMENSIONAL SERVICES LTD','D0015','020-2068790','','2018-09-26 12:23:39',0),(778,'TRANSGLOBAL CARGO CENTRE LTD','T0020','2929000','','2018-09-26 12:23:39',0),(779,'Computech Limited','C0015','0733666661','','2018-09-26 12:23:39',0),(780,'JAAMBO FREIGHT','J0005','','','2018-09-26 12:23:39',0),(781,'KASL','K0010','','','2018-09-26 12:23:39',0),(782,'NICHOLAS SHIPPING SA','N0006','','','2018-09-26 12:23:39',0),(783,'Nicholson Shipping SA','N0007','','','2018-09-26 12:23:39',0),(784,'KENYA SHIPS AGENT ASSOCIATION','K0011','','','2018-09-26 12:23:39',0),(785,'HUSSEIN AUTO SPARES LTD','H0006','0722820392','','2018-09-26 12:23:39',0),(786,'Elite Digital ','E0006','','','2018-09-26 12:23:39',0),(787,'Flag Business Systems','F0011','0723938719','','2018-09-26 12:23:39',0),(788,'Kenya Ports Authority-USD','K0012','254 11 312211','P051094522S','2018-09-26 12:23:39',0),(789,'Office Mart Ltd','O0007','','','2018-09-26 12:23:39',0),(790,'Whitesands Beach Resort & Spa','W0005','','P000607761D','2018-09-26 12:23:39',0),(791,'IFA- Gelders Forwarding B.V','G0004','','','2018-09-26 12:23:39',0),(792,'Jafftek Computer Solutions usd','J0006','','','2018-09-26 12:23:39',0),(793,'Lapid Logistics Ltd Usd','L0004','','','2018-09-26 12:23:39',0),(794,'David & Sons ','D0016','','','2018-09-26 12:23:39',0),(795,'BIMCO','B0010',' +45 44 36 68 0','','2018-09-26 12:23:39',0),(796,'Motown Engineering Works Limited','M0022','','','2018-09-26 12:23:39',0),(797,'Send It Africa Logistics','S0028','','','2018-09-26 12:23:39',0),(798,'Kenya Maritime Authority','K0013','','P051175258E','2018-09-26 12:23:39',0),(799,'Freight in Time Limited','F0012','','','2018-09-26 12:23:39',0),(800,'Mbukoni Logistics Limited','M0023','','','2018-09-26 12:23:39',0),(801,'Manuchar Kenya Ltd','M0024','+254 20 6005282','P051334120M','2018-09-26 12:23:39',0),(802,'Emirates Shipping EA Limited','E0007','','','2018-09-26 12:23:39',0),(803,'Keldex Enterprises Ltd','K0014','+254727247137','P051427327E','2018-09-26 12:23:39',0),(804,'Jona Pestcon','J0007','','','2018-09-26 12:23:39',0),(805,'Ketty Tours','K0015','','','2018-09-26 12:23:39',0),(806,'Ketty Tours, Travels & Safaris Ltd','K0016','','','2018-09-26 12:23:39',0),(807,'Infinite  Horizon','I0008','','','2018-09-26 12:23:39',0),(808,'Panca Anggerik SDN BHD','P0010','','','2018-09-26 12:23:39',0),(809,'Nueva  Direction','N0008','','','2018-09-26 12:23:39',0),(810,'PIL K Limited','P0011','','','2018-09-26 12:23:39',0),(811,'Crystal Rims & Accessories Ltd','C0016','','','2018-09-26 12:23:39',0),(812,'Computech Ltd','C0017','','','2018-09-26 12:23:39',0),(813,'Everlloyd Container Lines PVT Ltd','E0008','','','2018-09-26 12:23:39',0),(814,'Crystal Rims & Accessories Ltd','C0018','','','2018-09-26 12:23:39',0),(815,'Techbiz Ltd XXXXXXXXXXXX','T0021','','','2018-09-26 12:23:39',0),(816,'Federation of Kenya Employers','F0013','2721929/48/49/52','P000606857G','2018-09-26 12:23:39',0),(817,'Computech Ltd','C0019','0733 666 666','P000599855R','2018-09-26 12:23:39',0),(818,'International Maritime Aviation (Inactive)','I0009','04 398 7117','','2018-09-26 12:23:39',0),(819,'Techbiz Ltd  (Ksh)','T0022','','P051165794M','2018-09-26 12:23:39',0),(820,'Cellnet Ltd','C0020','041 2222239','P000619916A','2018-09-26 12:23:39',0),(821,'Scanwell Logistics NYC inc','S0029','','','2018-09-26 12:23:39',0),(822,'Scanwell Logistics Pakistan (PVT) Ltd','S0030','','','2018-09-26 12:23:39',0),(823,'Chartis Kenya Insurance Co. Ltd  ','C0021','','','2018-09-26 12:23:39',0),(824,'Travellers Beach Hotel','T0023','','','2018-09-26 12:23:39',0),(825,'Hammond Tutu & Guntherxxxxxxxx','H0007','','','2018-09-26 12:23:39',0),(826,'Cross Freight GMBH','C0022','','','2018-09-26 12:23:39',0),(827,'Panal Freighters Limited-USD','P0012','+254 538 015 353','P051148463G','2018-09-26 12:23:39',0),(828,'Institute Of Chartered Shipbrokers-KES','I0010','','','2018-09-26 12:23:39',0),(829,'Bribramo General Contractors Ltd','B0011','','','2018-09-26 12:23:39',0),(830,'International Maritime & Aviation','I0011','','','2018-09-26 12:23:39',0),(831,'Techbiz  Ltd (usd)','T0024','','','2018-09-26 12:23:39',0),(832,'UNDERWATER ENGINEERING & HARBOURS SERVICES CONT','U0003','','A002677774P','2018-09-26 12:23:39',0),(833,'VIJAY OPTICIANS','V0002','2223813','','2018-09-26 12:23:39',0),(834,'Car Track','C0023','','','2018-09-26 12:23:39',0),(835,'Firefox Kenya Ltd','F0014','','','2018-09-26 12:23:39',0),(836,'Mvita Freight Ltd','M0025','254 41 2315844','','2018-09-26 12:23:39',0),(837,'Evergreen Logistics Corp.**************','E0009','+886-02-25083969','','2018-09-26 12:23:39',0),(838,'Evergreen Logistics Corp.','E0010','+886-02-2508369','','2018-09-26 12:23:39',0),(839,'L L & L Enterprises','L0006','','','2018-09-26 12:23:39',0),(840,'Seaforth Shipping (Kenya) Ltd-xxxxxxxxxxxxxxx','S0031','','','2018-09-26 12:23:39',0),(841,'SGL Universal (Guangzhou) Co Ltd','S0032','','','2018-09-26 12:23:39',0),(842,'Scanwell Logistics India PVT Ltd-Bangalore ','S0033','','','2018-09-26 12:23:39',0),(843,'Mpunga Gardens Apartments','M0026','0720136500','','2018-09-26 12:23:39',0),(844,'Wamu Hardware & Electrical','W0006','','','2018-09-26 12:23:39',0),(845,'Mombasa Sports Club','M0027','','P051092224N','2018-09-26 12:23:39',0),(846,'Nat Fire Company','N0009','','','2018-09-26 12:23:39',0),(847,'Ahlers India Private Ltd-India','A0022','','','2018-09-26 12:23:39',0),(848,'iWay Africa Kenya Ltd','I0012','','','2018-09-26 12:23:39',0),(849,'Institute of Chartered Shipbrokers ICS-USD','I0013','','','2018-09-26 12:23:39',0),(850,'Pepe Art','P0013','+254 725 088285','','2018-09-26 12:23:39',0),(851,'ROYAL COURT HOTEL(Ksh) XXXXXXXXXXXX','R0007','2223379','','2018-09-26 12:23:39',0),(852,'Ole-Sereni Hotel','O0008','+254 203901000','','2018-09-26 12:23:39',0),(853,'Metalic Ship and General Contractors','M0028','','','2018-09-26 12:23:39',0),(854,'Enhanced Performance & Innovation Centre (Ksh)','E0011','020-2022156','','2018-09-26 12:23:39',0),(855,'Stan consulting Group Ltd (Ksh)','S0034','','','2018-09-26 12:23:39',0),(856,'Kenya Ports Authority Pension Scheme','K0017','4452581/2/3','P051094719W','2018-09-26 12:23:39',0),(857,'Coast Lamps Ltd (Ksh)','C0024','(041)2311 411','','2018-09-26 12:23:39',0),(858,'Seaforth Shipping (Kenya) Ltd-USD','S0035','+254 41 231 3776','','2018-09-26 12:23:39',0),(859,'Chandaria Industries Ltd','C0025','+254 20 8563252-4','','2018-09-26 12:23:39',0),(860,'Project Cargo Network','P0014','+44 2392 425204','','2018-09-26 12:23:39',0),(861,'Radisson Blu Hotels & Resorts','R0008','','P051179504Z','2018-09-26 12:23:39',0),(862,'Kenya Shippers Council','K0018','+254 20 2684799/801','','2018-09-26 12:23:39',0),(863,'Dove Business Enterprise','D0017','020-551239','A004023720Y','2018-09-26 12:23:39',0),(864,'Jobs Connection Limited','J0008','','','2018-09-26 12:23:39',0),(865,'DSV Belgium N.V','D0018','03/238 25 15','','2018-09-26 12:23:39',0),(866,'Abetrans Logistics Ltd','A0023','+972-3-795-8888','','2018-09-26 12:23:39',0),(867,'Bati Nakliyat ve Ticaret A.S.','B0012','','','2018-09-26 12:23:39',0),(868,'EBB  Alliance  Ltd (HK)','E0012','','','2018-09-26 12:23:39',0),(869,'Pacco Motors','P0015','0722-803 849','','2018-09-26 12:23:39',0),(870,'Chartis Kenya Insurance Co. Ltd (Ksh)','C0026','020  3676 000  3751 800','','2018-09-26 12:23:39',0),(871,'Rapid Kate Services Ltd','R0009','020 551896/897','','2018-09-26 12:23:39',0),(872,'Multiple Solutions Ltd','M0029','+254 20 8017584','','2018-09-26 12:23:39',0),(873,'Mvita  Freight  Ltd','M0030','041 2315844','P051232751V','2018-09-26 12:23:39',0),(874,'Buzeki Dairy Ltd','B0013','','','2018-09-26 12:23:39',0),(875,'Somco Books & Stationers','S0036','0722 847921','','2018-09-26 12:23:39',0),(876,'Baileys Plant Hire Ltd','B0014','0722 411128','','2018-09-26 12:23:39',0),(877,'Imer Investments Ltd','I0014','0722 403 049','P051405318U','2018-09-26 12:23:39',0),(878,'United Cargo Logistics S.R.L','U0004','','','2018-09-26 12:23:39',0),(879,'Tanzania Ports Authority ','T0025','','','2018-09-26 12:23:39',0),(880,'Raphael Logistics T Ltd','R0010','','','2018-09-26 12:23:39',0),(881,'EON Maritime Services','E0013','','','2018-09-26 12:23:39',0),(882,'Mombasa Continental Resort','M0031','','','2018-09-26 12:23:39',0),(883,'North Coast Beach Hotel ','N0010','020 2037784','','2018-09-26 12:23:39',0),(884,'AIG Kenya Insurance Co.Ltd','A0025','','','2018-09-26 12:23:39',0),(885,'Mantrac Kenya Ltd (Usd)','M0032','041 2223442','P000591111Y','2018-09-26 12:23:39',0),(886,'The Panari Hotel Nairobi','T0026','3946000','','2018-09-26 12:23:39',0),(887,'Vmax Insurance Agencies','V0003','041 - 2226770','','2018-09-26 12:23:39',0),(888,'The Kenya Institute of Management','T0027','','','2018-09-26 12:23:39',0),(889,'Mvuli House, Nairobi','M0033','+254 20 600 8052','P051189019Z','2018-09-26 12:23:39',0),(890,'Beca Auto Ltd','B0015','0723 922 199','','2018-09-26 12:23:39',0),(891,'Lan-X Africa Ltd','L0007','020 2166058','','2018-09-26 12:23:39',0),(892,'Sentrim Hotels & Lodges','S0037','020 315680','','2018-09-26 12:23:39',0),(893,'Ivory Technologies','I0015','0734 391762','P051518533J','2018-09-26 12:23:39',0),(894,'Translink Logistics Ltd','T0028','','','2018-09-26 12:23:39',0),(895,'Translink Logistics Ltd (Usd)','T0029','','','2018-09-26 12:23:39',0),(896,'Pan Africa Express Transport Ltd','P0016','+254 20 3907000','','2018-09-26 12:23:39',0),(897,'Nation Media Group Ltd','N0011','32088000/1/2/3','','2018-09-26 12:23:39',0),(898,'Fairdeal  Superstores  Ltd','F0015','0720 107033','P061148499S','2018-09-26 12:23:39',0),(899,'KEMA (E.A) Ltd','K0019','041 2492837','P051095678P','2018-09-26 12:23:39',0),(900,'Mantrac  Kenya  Ltd (Ksh)','M0034','041 2223442','P000591111Y','2018-09-26 12:23:39',0),(901,'Olunzi Marine services','O0009','+254 725 141 864','','2018-09-26 12:23:39',0),(902,'Orway Maritime Services - USD','O0010','35482011','','2018-09-26 12:23:39',0),(903,'Orway Maritime -KES','O0011','35482011','','2018-09-26 12:23:39',0),(904,'Boma Travel Services Ltd','B0016','+254 41 2319796','','2018-09-26 12:23:39',0),(905,'Boma Travel Services Ltd (Usd)','B0017','+254 41 2319796','','2018-09-26 12:23:40',0),(906,'DODWELL and COMPANY (East Africa) Limited','D0019','+254 11 230060','','2018-09-26 12:23:40',0),(907,'Joyden Enterprises','J0009','2495325','','2018-09-26 12:23:40',0),(908,'Resolution Insurance Company Ltd','R0011','+254 20 2894 000','P051150885Z','2018-09-26 12:23:40',0),(909,'Marine Spectrum Inspection Company','M0035','020 8187211','','2018-09-26 12:23:40',0),(910,'DSM Corridor Group Ltd','D0020','+255 (0) 75 4632827','','2018-09-26 12:23:40',0),(911,'Two Dots Business Systems','T0030','0723 938719','','2018-09-26 12:23:40',0),(912,'Eyecatchers  Ltd','E0014','2224033','P051116426S','2018-09-26 12:23:40',0),(913,'ALFOSS ENERGY LIMITED','A0026','+254722871853','','2018-09-26 12:23:40',0),(914,'Louise Dreyfus Commodities K. Ltd C/O Baba Shippin','L0008','+254722897006','','2018-09-26 12:23:40',0),(915,'Neptune Ship Contractors','N0012','','','2018-09-26 12:23:40',0),(916,'Usafi Services Ltd','U0005','','','2018-09-26 12:23:40',0),(917,'I. Messina (K) Ltd','I0016','+254 41 2319640/1/2','','2018-09-26 12:23:40',0),(918,'Philomu Mapping Services','P0017','0720 279 960','A003841632N','2018-09-26 12:23:40',0),(919,'Express Chartering & Shipping Ltd','E0015','','','2018-09-26 12:23:40',0),(920,'Euromax Africa Investment Company Ltd','E0016','+254724755296','','2018-09-26 12:23:40',0),(921,'Euromax Africa Investment Company Ltd','E0017','041 2319447','','2018-09-26 12:23:40',0),(922,'MaxSmith Group Ltd','M0036','+254-718-860-470','','2018-09-26 12:23:40',0),(923,'Inspectorate E.A Ltd','I0017','0722 305 872','P051173300F','2018-09-26 12:23:40',0),(924,'Prideinn Hotels & Investments Ltd','P0018','+ 254 41 2317895','P051326272G','2018-09-26 12:23:40',0),(925,'Ree J\'s  Ltd (Usd)','R0012','0728 445688','','2018-09-26 12:23:40',0),(926,'Digital Edge','D0021','+254 729 265 020','','2018-09-26 12:23:40',0),(927,'Digital Hub','D0022','+254 (20) 2112220','P051401195X','2018-09-26 12:23:40',0),(928,'P.N MASHRU LIMITED','P0019','020 - 2040526/7','P000620691U','2018-09-26 12:23:40',0),(929,'Apex Steel Ltd','A0027','','','2018-09-26 12:23:40',0),(930,'Ree Js Ltd XXXXXXXXXXXXXXXXXXX','R0013','','','2018-09-26 12:23:40',0),(931,'Logistics Three Sixty Five Ltd','L0009','+254 (20) 50572/3/4','','2018-09-26 12:23:40',0),(932,'Bollore Africa Logistics Kenya Ltd','B0018','','','2018-09-26 12:23:40',0),(933,'Polucon Services (Kenya) Ltd','P0020','254-41-4470777/3/4','','2018-09-26 12:23:40',0),(934,'SGS Kenya Limited-KES','S0038','020 2733693/99/90','P000618406U','2018-09-26 12:23:40',0),(935,'Kenya Red cross Society EMS ','K0020','0725 292 000','P051111931F','2018-09-26 12:23:40',0),(936,'Serena Beach Hotel & Spar','S0039','+ 254 41 5485721/2/3/4','','2018-09-26 12:23:40',0),(937,'APA Insurance Ltd','A0028','041-2226770','','2018-09-26 12:23:40',0),(938,'Institute of Human Resource Management','I0018','+254 (0) 20 2213745','P051222543Q','2018-09-26 12:23:40',0),(939,'Brookside Dairy Ltd','B0019','+254 20 3542480','','2018-09-26 12:23:40',0),(940,'Island Auto Works','I0019','0719 786 786','P051444842C','2018-09-26 12:23:40',0),(941,'Institute of Internal Auditors','I0020','2731246','','2018-09-26 12:23:40',0),(942,'East African Commercial & Shipping ','E0018','254 707 032 148','P000618644C','2018-09-26 12:23:40',0),(943,'Castle Royal Hotel','C0027','041 2228780','P000595575K','2018-09-26 12:23:40',0),(944,'Wilken Wireless (K)  Ltd','W0007','+254 20 6006030/7','','2018-09-26 12:23:40',0),(945,'Inspectorate E.A Ltd. (Kshs)','I0021','','','2018-09-26 12:23:40',0),(946,'Indesols Ltd','I0022','020 2573956','','2018-09-26 12:23:40',0),(947,'Training and Consultancy Associates Ltd','T0031','+254 20 2714206/08','','2018-09-26 12:23:40',0),(948,'Land & Marine Publications Ltd','L0010','+44(0)1206752902','','2018-09-26 12:23:40',0),(949,'Najmi Clearing & Forwarding ','N0013','','','2018-09-26 12:23:40',0),(950,'Furniture Palace International (K) Ltd','F0016','0721 554 073','P051141705E','2018-09-26 12:23:40',0),(951,'Export UK Motors Limited','E0019','+44 20 8986 1254','','2018-09-26 12:23:40',0),(952,'Kenya Institute of Management','K0021','020 2445555','P000593820Q','2018-09-26 12:23:40',0),(953,'Nine One One Group Ltd','N0014','+ 254 20 4911000','P051099772S','2018-09-26 12:23:40',0),(954,'Sun Fire & Safety Supplies Ltd','S0040','','P051212149R','2018-09-26 12:23:40',0),(955,'Dorbe Leit Solutions Ltd','D0023','0701 561 919','P051305505S','2018-09-26 12:23:40',0),(956,'Overdrive Consultants Ltd','O0012','+ 254 41 2226647/6403','P051520042Z','2018-09-26 12:23:40',0),(957,'African Marine and General Engineering Co. Ltd','A0029','+254 722 203 455','','2018-09-26 12:23:40',0),(958,'Centre for Corporate Governance','C0028','+254 20 3745915','P051136021L','2018-09-26 12:23:40',0),(959,'Sea-Bulk Shipping Services Ltd','S0041','+254-412222972 ','P051096086L','2018-09-26 12:23:40',0),(960,'Ashbury & Fletcher Ltd','A0030','+ 254 20 2014684','','2018-09-26 12:23:40',0),(961,'Isinya Resorts Limited','I0023','+254202310980','P051342232O','2018-09-26 12:23:40',0),(962,'Baobab Beach Resort Mombasa Ltd','B0020','020 2057093-8','P000619188N','2018-09-26 12:23:40',0),(963,'XXXXX Roanna USD','R0014','+254 020 354201','','2018-09-26 12:23:40',0),(964,'Vision Institute of Professionals','V0004','041-2230295','','2018-09-26 12:23:40',0),(965,'Shanifreight Logistics ','S0042','','','2018-09-26 12:23:40',0),(966,'Farouk Adam & Company Advocates','F0017','2220210','A000140451V','2018-09-26 12:23:40',0),(967,'Tariq Khan & Associates Advocates','T0032','+254 0200727724494','','2018-09-26 12:23:40',0),(968,'Communications Authority of Kenya','C0029','254-020-4242000','','2018-09-26 12:23:40',0),(969,'Smart Skills Trainers Ltd','S0043','020-2538634','','2018-09-26 12:23:40',0),(970,'Shikara Limited ','S0044','041 2224333','P051184035Q','2018-09-26 12:23:40',0),(971,'Michimedia Limited','M0037','020 8077180','P051158326Z','2018-09-26 12:23:40',0),(972,'Graphic World Ltd','G0005','0721 241 052','P051376336G','2018-09-26 12:23:40',0),(973,'Samco Holdings Ltd T/A EKA Hotel','S0045','0719 045 000','PO51097146E','2018-09-26 12:23:40',0),(974,'Inchcape Shipping  Services Kenya Ltd','I0024','+254 41 2314245','','2018-09-26 12:23:40',0),(975,'Timcage Enterprises(Msa)','T0033','020 2138050','P051370570Y','2018-09-26 12:23:40',0),(976,'Polimax Services Limited','P0021','0727 618869','P051389997I','2018-09-26 12:23:40',0),(977,'PowerPoint Systems East Africa Ltd ','P0022','020 6530260','','2018-09-26 12:23:40',0),(978,'Nairobi Serena Hotel','N0015','+254 20 2822000','','2018-09-26 12:23:40',0),(979,'Port Management Association of Eastern & Southern ','P0023','+254 20 238 1184','','2018-09-26 12:23:40',0),(980,'Leopard Beach Resort & Spa','L0011','+254-20 2692844','','2018-09-26 12:23:40',0),(981,'Joash M . Orina','J0010','','','2018-09-26 12:23:40',0),(982,'ICPAK','I0025','020 2304226/7','P000607239Y','2018-09-26 12:23:40',0),(983,'Fones Direct Ltd','F0018','+254 (20) 300 1117','','2018-09-26 12:23:40',0),(984,'Davis & Shirtliff Ltd ','D0024','+254 41 249 5920','P000591252N','2018-09-26 12:23:40',0),(985,'Easternpioneers Limited','E0020','','','2018-09-26 12:23:40',0),(986,'Green Island Shipping Services Ltd','G0006','+254 20 2683940/2','','2018-09-26 12:23:40',0),(987,'Wylde International Ltd','W0008','+254 701 560 203','','2018-09-26 12:23:40',0),(988,'Kingsway Tyres Ltd','K0022','041 2491013','P051116728X','2018-09-26 12:23:40',0),(989,'Amirali Transporters','A0032','0710-786000','','2018-09-26 12:23:40',0),(990,'Nyali International Beach Hotel','N0016','','','2018-09-26 12:23:40',0),(991,'Multiple ICD (Kenya) Limited','M0038','020 231 77 82','P051232338S','2018-09-26 12:23:40',0),(992,'Josim Agencies Limited','J0011','0725283299','','2018-09-26 12:23:40',0),(993,'Coco Vita Ltd','C0030','0728-604471','','2018-09-26 12:23:40',0),(994,'Sovereign Logistics Ltd-USD','S0046','+254 41 2229784','','2018-09-26 12:23:40',0),(995,'Summerdale Inn','S0047','','P051215355B','2018-09-26 12:23:40',0),(996,'Hotel Rio','H0008','+254 020 2300152','P051197219Y','2018-09-26 12:23:40',0),(997,'SGS Kenya Ltd (Usd)','S0048','020 2733693/99/90','','2018-09-26 12:23:40',0),(998,'Kivunzi (K) Ltd','K0023','0708 898735','P051407674O','2018-09-26 12:23:40',0),(999,'San Valencia Ltd','S0049','0412312399','P051189925J','2018-09-26 12:23:40',0),(1000,'November Sixty Two Ltd','N0017','+254 0725095056','','2018-09-26 12:23:40',0),(1001,'Satguru Travels & Tours Services','S0050','','P000599474Q','2018-09-26 12:23:40',0),(1002,'Modern Fitness Gym, Nyali Centre','M0039','+254 708 748 474','P051525790R','2018-09-26 12:23:40',0),(1003,'Faiz Gym','F0019','0722 692961','','2018-09-26 12:23:40',0),(1004,'Hotel English Point','H0009','041 2147000','P051092905R','2018-09-26 12:23:40',0),(1005,'Rabaria Communications','R0015','','','2018-09-26 12:23:40',0),(1006,'The Institute of Certified Public Secretaries of K','T0034','+ 254 20 3597840/2','','2018-09-26 12:23:40',0),(1007,'Satguru Travels & Tours Services Ltd (Usd)','S0051','+254-41-2220337/8/9','P000599474Q','2018-09-26 12:23:40',0),(1008,'Flamingo Beach Resort & Spa','F0020','+254 41 5480034/5/6/7','VAT 0513633691','2018-09-26 12:23:40',0),(1009,'Occupational Safety and Health Fund','O0013','+ 254 (041) 2312031','','2018-09-26 12:23:40',0),(1010,'Jaffery Motors','J0012','2226604','','2018-09-26 12:23:40',0),(1011,'Institute of Certified Public Secretaries of Kenya','I0026','','','2018-09-26 12:23:40',0),(1012,'A.B.M.C International Ltd','A0033','+ 254 20 40 31 000','P051390953D','2018-09-26 12:23:40',0),(1013,'Shankar Electronics Ltd','S0052','','','2018-09-26 12:23:40',0),(1014,'College of Insurance, Mombasa','C0031','020 2348328','','2018-09-26 12:23:40',0),(1015,'Kimlan Management Ltd','K0024','+254 0721 234013','','2018-09-26 12:23:40',0),(1016,'Equitorial Secretaries & Registrars','E0021','2226422/3','P051146810Z','2018-09-26 12:23:40',0),(1017,'Business Motivation Seminars Ltd','B0021','+44 20 8669, 5222','GB 407 3323 81','2018-09-26 12:23:40',0),(1018,'Hull Marine Enterprisesxxxxxxxxxxxxxxxxx','H0010','','','2018-09-26 12:23:40',0),(1019,'City Blue Creekside Hotel & Suites','B0022','+254733888746','P051228052C','2018-09-26 12:23:40',0),(1020,'Intermark Services','I0027','','A002710673T','2018-09-26 12:23:40',0),(1021,'Wilhelmsen Ships Service Ltd','W0009','','','2018-09-26 12:23:40',0),(1022,'International Register of Certified Auditors','I0028','+44 0 20 7245 6833','','2018-09-26 12:23:40',0),(1023,'Fahmi Said Basalim','F0021','+254 722 414918','','2018-09-26 12:23:40',0),(1024,'Creative Concepts Ltd','C0032','+254 41 2000169','','2018-09-26 12:23:40',0),(1025,'Grayson Consulting Ltd','G0007','020 261 7718','P051413941X','2018-09-26 12:23:40',0),(1026,'Lamwo General Engineering Works Ltd','L0012','+254 0726 741201','168884J','2018-09-26 12:23:40',0),(1027,'PG Bison Kenya Ltd','P0024','+254 20 2378902','','2018-09-26 12:23:40',0),(1028,'Lantech Data Services Ltd','L0013','+254 020 243 5477','P051241828R','2018-09-26 12:23:40',0),(1029,'Dolphins Training & Consultants Ltd','D0025','+254 20 2211362/4/5/382','P051219950K','2018-09-26 12:23:40',0),(1030,'UK Roadrunner Ltd','U0006','0044 7850064725','','2018-09-26 12:23:40',0),(1031,'Seatrade Agencies Ltd','S0053','+254 41 2311491','','2018-09-26 12:23:40',0),(1032,'Global Business Commanders Ltd','G0008','041 2229381','0130204X','2018-09-26 12:23:40',0),(1033,'Shanghai Janus Grab Company LtdXXXXXXXXXXXXXXX','S0054','+86-21-68855558','','2018-09-26 12:23:40',0),(1034,'Tripple M & Associates ','T0035','041 2319770','','2018-09-26 12:23:40',0),(1035,'MANPOWER SERVICES (K) LTD','M0040','2710550','P051111229E','2018-09-26 12:23:40',0),(1036,'MWACHEO SHIP CONTRACTORS','M0041','0724 174 180','','2018-09-26 12:23:40',0),(1037,'Muturi Gakuo & Kibara Advocates','M0042','041-2313418','P051123447Q','2018-09-26 12:23:40',0),(1038,'Navcom Ltd','N0018','+254 (020) 3873510','P000614755Y','2018-09-26 12:23:40',0),(1039,'Transport Events Management Ltd','T0036','','','2018-09-26 12:23:40',0),(1040,'Institute of Directors (Kenya)','I0029','+254-020-2190131','P051180293W','2018-09-26 12:23:40',0),(1041,'Postal Corporation of Kenya','P0025','','P051128734A','2018-09-26 12:23:40',0),(1042,'Marajani Communications Tours and Assistance Ltd','M0043','+254 733 954949','P051149812A','2018-09-26 12:23:40',0),(1043,'Automobile Association of Kenya','A0034','020 2612300','','2018-09-26 12:23:40',0),(1044,'BrighterMonday.com Ltd-KES','B0023','0703 026117','P051208319X','2018-09-26 12:23:40',0),(1045,'Athi Kay Ltd','A0035','0700 117257','P051382325U','2018-09-26 12:23:40',0),(1046,'Floor Solutions','F0022','','A007102667M','2018-09-26 12:23:40',0),(1047,'Orima & Company Advocates','O0014','+256 (0) 392 179 040','','2018-09-26 12:23:40',0),(1048,'Hot Point Appliances Ltd','H0011','0770299361/2','P000597694S','2018-09-26 12:23:40',0),(1049,'Harbour Agency Limited','H0012','','','2018-09-26 12:23:40',0),(1050,'Panal Freighters Ltd-KES','P0026','+254 538 015 353','P051148463G','2018-09-26 12:23:40',0),(1051,'Crater Automobiles (NBI) Ltd','C0033','+254 020 8068901','P000606000F','2018-09-26 12:23:40',0),(1052,'Euro Models (K) Ltd','E0022','+254 0722 354532','P051552846H','2018-09-26 12:23:40',0),(1053,'Shake Distributors Ltd','S0055','043-30047','P051194701Z','2018-09-26 12:23:40',0),(1054,'The Grind Group Ltd','T0037','+254 732 885035','P051330218I','2018-09-26 12:23:40',0),(1055,'Conquest Capital Ltd','C0034','+254 020 2363559','P051220252M','2018-09-26 12:23:40',0),(1056,'Kismart Aluminium Fabrications','K0025','+254 020 8053119','','2018-09-26 12:23:40',0),(1057,'Insurance Institute of East Africa','I0030','+254 20 6530128','P051609555U','2018-09-26 12:23:40',0),(1058,'Mwacheo Ship Contractors','M0044','','','2018-09-26 12:23:40',0),(1059,'Jihan Freighters Ltd','J0013','2227093','P051099809K','2018-09-26 12:23:40',0),(1060,'Keyun Hauliers Ltd','K0026','0729 643448','P051565294U','2018-09-26 12:23:40',0),(1061,'Jetvin Ltd','J0014','0724 879270','P051530415N','2018-09-26 12:23:40',0),(1062,'Crowne Plaza, Nairobi','C0035','020 2746000','P051192432Z','2018-09-26 12:23:40',0),(1063,'Shanghai Janus Grab Company Ltd (Usd)','S0056','+86-21-68855558','','2018-09-26 12:23:40',0),(1064,'Reed Events Management (PTY) Ltd','R0016','011 549 8300','1983/008778/07','2018-09-26 12:23:40',0),(1065,'Fairdeal Furniture Ltd','F0023','020 829051/2/3','P051340082U','2018-09-26 12:23:40',0),(1066,'Antarc Ltd','A0036','','','2018-09-26 12:23:40',0),(1067,'Elegance Technology Ltd','E0023','+254708198586','','2018-09-26 12:23:40',0),(1068,'Canopy  Solutions (K) Limited','C0036','+254712923254','P051558306I','2018-09-26 12:23:40',0),(1069,'Taxwise Africa Consulting LLP','T0038','','P051574842J','2018-09-26 12:23:40',0),(1070,'The KK Group of Companies','T0039','+254 20 4245000','P051119652E','2018-09-26 12:23:40',0),(1071,'Telwise Networks Systems Ltd','T0040','0723 903737','','2018-09-26 12:23:40',0),(1072,'Loxera Advisory Services Ltd','L0014','0700-310906','P051368522F','2018-09-26 12:23:40',0),(1073,'Julius Okoth Francis','J0015','','A001279816U','2018-09-26 12:23:40',0),(1074,'Delta Handling Services','D0026','','P051340954Z','2018-09-26 12:23:40',0),(1075,'Snow Desert (EA) Ltd','S0057','020 2612558','P051400822M','2018-09-26 12:23:40',0),(1076,'Victoria Furnitures Ltd','V0005','020 2650989','P000593928Z','2018-09-26 12:23:40',0),(1077,'Superstar Parcels Ltd','S0058','020 353 5465','P051234295G','2018-09-26 12:23:40',0),(1078,'RSM (Eastern Africa) Consulting Ltd','R0017','+256 (0) 414 342 780/9','1005172863','2018-09-26 12:23:40',0),(1079,'Otieno-Adede Associates','O0015','+254 41 2225172','A001197447T','2018-09-26 12:23:40',0),(1080,'IVK Manuport Logistics LLC-USD','I0031','','','2018-09-26 12:23:40',0),(1081,'Volcan Holdings Ltd','V0006','+254 020 8087305','P051211097V','2018-09-26 12:23:40',0),(1082,'Nisomar Ltd','N0019','','P051627477X','2018-09-26 12:23:40',0),(1083,'Elegance Technology Ltd','E0024','+254 735248000','P051373020N','2018-09-26 12:23:40',0),(1084,'Mali World Ltd','M0045','','','2018-09-26 12:23:40',0),(1085,'MZ Radiators (MSA) Ltd','M0046','','P051650227W','2018-09-26 12:23:40',0),(1086,'Laminate and Interiors Masters','L0015','0795 502697','A003709706B','2018-09-26 12:23:40',0),(1087,'Opal Asia Line India PVT Ltd','O0016','','N/A','2018-09-26 12:23:40',0),(1088,'Tikone Solutions Ltd','T0041','+254735599509','P051585371Q','2018-09-26 12:23:40',0),(1089,'Aviation Cargo Support Ltd','A0037','+254-20-822917/8','P051215067C','2018-09-26 12:23:40',0),(1090,'FinanMark Africa Ltd','F0024','+254 020 3510610','P051201170K','2018-09-26 12:23:40',0),(1091,'OAKWOOD Consulting-USD','O0017','0723726694','N/A','2018-09-26 12:23:40',0),(1092,'OAKWOOD Consulting-KES','O0018','0723726694','N/A','2018-09-26 12:23:40',0),(1093,'Export Trading Company Ltd','E0025','','','2018-09-26 12:23:40',0),(1094,'Grantoh Logistics Ltd','G0009','+254 723457084','P051530778K','2018-09-26 12:23:40',0),(1095,'Traceble Measurement Centre Ltd','T0042','020 2188235','P051434315Q','2018-09-26 12:23:40',0),(1096,'Ivory Software Ltd-Usd','I0032','0720 224918','P051518533J','2018-09-26 12:23:40',0),(1097,'Wilson Kazeni Mkanza','W0011','','TIN 112-165-789','2018-09-26 12:23:40',0),(1098,'TNT Express Worldwide (K) Ltd','T0043','','P051202136L','2018-09-26 12:23:40',0),(1099,'KK Facilities Management Ltd','K0027','','P051119652E','2018-09-26 12:23:40',0),(1100,'Hotel English Point - USD','H0013','041 2147000','P051092905R','2018-09-26 12:23:40',0),(1101,'Aramex Kenya Ltd','A0038','+254 20 5158000','P051139805Z','2018-09-26 12:23:40',0),(1102,'Unifilters Kenya Ltd','U0007','+254 20 6536418/9','P051095256F','2018-09-26 12:23:40',0),(1103,'Busara Logistics Ltd-KES','B0024','0722472240','P051402002E','2018-09-26 12:23:40',0),(1104,'Joweb Graphic Designers','J0016','+254-20-2302017','A003648695T','2018-09-26 12:23:40',0),(1105,'A.D. Design Architects','A0039','041-2220500','A002299132T','2018-09-26 12:23:40',0),(1106,'Tuskys Mattresses Ltd','T0044','+254-20-355-5318','P051091887F','2018-09-26 12:23:40',0),(1107,'Tiensi Enterprises ','T0045','+254 720 711057','A004813216L','2018-09-26 12:23:40',0),(1108,'Reflex Printers Ltd','R0018','','','2018-09-26 12:23:40',0),(1109,'Immaculate initial Services','I0033','+254 721 217 110','','2018-09-26 12:23:40',0),(1110,'Muthaiga Golf Club','M0047','020-2368440/1','P000606864F','2018-09-26 12:23:40',0),(1111,'Lesus Executive Ltd','L0016','0718708771','P051569349W','2018-09-26 12:23:40',0),(1112,'Baraka Fm Ltd','B0025','0790955955','P051529971y','2018-09-26 12:23:40',0),(1113,'Butterfly For Weddings','B0026','0726420119','','2018-09-26 12:23:40',0),(1114,'Parkerflash Creations Ltd','P0027','254721797643','','2018-09-26 12:23:40',0),(1115,'Rollard Tours & Car Rental Ltd','R0020','+ 254-041-2221657','P051159276M','2018-09-26 12:23:40',0),(1116,'Burudika Holdings Ltd','B0027','0707271757','P051559331L','2018-09-26 12:23:40',0),(1117,'Trainconsult Ltd','T0046','','P051454913W','2018-09-26 12:23:40',0),(1118,'Marines Car Hire Ltd','M0048','0722410354','P051342568F','2018-09-26 12:23:40',0),(1119,'Alba Petroleum Ltd','A0040','+254 20 2107990','P000621140B','2018-09-26 12:23:40',0),(1120,'Visualtech Communication Technologies','V0007','041-2008814','','2018-09-26 12:23:40',0),(1121,'Abercrombie & Kent Kenya Ltd','A0041','','P000592730P','2018-09-26 12:23:40',0),(1122,'Galaxy Ventures Services','G0010','','A005140848H','2018-09-26 12:23:40',0),(1123,'Lenga Afri Ltd - USD','L0017','+254 716 304 680','P051667772Z','2018-09-26 12:23:40',0),(1124,'Lenga Afri Ltd - KES','L0018','+254 716 304 680','P051667772Z','2018-09-26 12:23:40',0),(1125,'Mombasa Shipchandlers Ltd','M0049','','P051137078G','2018-09-26 12:23:40',0),(1126,'Kebba Holdings Ltd','K0028','0706 223153','P051437328G','2018-09-26 12:23:40',0),(1127,'Orway Maritime Services - USD','O0019','+254723942023','P051501774C','2018-09-26 12:23:40',0),(1128,'Mac & More Solutions Ltd','M0050','+254 20 4452088','P051213088B','2018-09-26 12:23:40',0),(1129,'African eDevelopment House','A0042','','P051185021Z','2018-09-26 12:23:40',0),(1130,'Anderson Human Capital Ltd','A0043','020-2633926','P051391837Z','2018-09-26 12:23:40',0),(1131,'Kenya Orient Insurance Ltd','K0029','','P000609360C','2018-09-26 12:23:40',0),(1132,'Kenya National Chamber of Commerce & Industry','K0030','0721373373','P000593037R','2018-09-26 12:23:40',0),(1133,'Crown Petroleum (K) Ltd','C0037','0722 203 898','P051149445E','2018-09-26 12:23:40',0),(1134,'Safetrac Ltd','S0059','0716 291 813','P051597426P','2018-09-26 12:23:40',0),(1135,'All World Investment Ltd','A0044','+256701778001','','2018-09-26 12:23:40',0),(1136,'Auto Movers Ltd','A0045','','P051412589J','2018-09-26 12:23:40',0),(1137,'Universal Forwarding International Freight Specialists','U0008','+44 191 214 0800','','2018-09-26 12:23:40',0),(1138,'Soundboard Consulting Associates','S0060','','P051355715Y','2018-09-26 12:23:40',0),(1139,'Roanna Marine Services Limited','R0021','0727738781','P051683017Y','2018-09-26 12:23:40',0),(1140,'Law Society of Kenya ','L0019','','','2018-09-26 12:23:40',0),(1141,'UbiPlus Supply Chain Management Ltd','U0009','031-61047111','','2018-09-26 12:23:40',0),(1142,'Brightermonday.com Limited-USD','B0028','','P051208319X','2018-09-26 12:23:40',0),(1143,'Salmos Auto Garage','S0061','0722849758','A006740024J','2018-09-26 12:23:40',0),(1144,'Sheraton Kampala Hotel','S0062','','TBA','2018-09-26 12:23:40',0),(1145,'Battery World Ltd','B0029','0725827175','P051506194P','2018-09-26 12:23:40',0),(1146,'Cootow & Associates Advocates','C0038','2221243','P051182919S','2018-09-26 12:23:40',0),(1147,'Avoripe International Ltd','A0046','0722517225','P051239979Z','2018-09-26 12:23:40',0),(1148,'Roanna Marine Services Ltd - USD','R0022','0727738781','P051683017Y','2018-09-26 12:23:40',0),(1149,'Perika Logistics','P0028','+254772254723','A005430954Q','2018-09-26 12:23:40',0),(1150,'Kenya Power & Lighting Company Ltd','K0031','','P000591096X','2018-09-26 12:23:40',0),(1151,'Parts Direct Ltd','P0029','0729 656 122','P051397113Y','2018-09-26 12:23:40',0),(1152,'Shake Distributors Ltd - USD','S0063','0728981383','P051194701Z','2018-09-26 12:23:40',0),(1153,'Erimao Royal Transporters','E0026','0724355508','A005427787M','2018-09-26 12:23:40',0),(1154,'Shabbir Brothers Ltd','S0064','','P000621041B','2018-09-26 12:23:40',0),(1155,'Topline Electrical Centre','T0047','','A003260022U','2018-09-26 12:23:40',0),(1156,'Asif Spares & Accessories','A0047','','A000189540P','2018-09-26 12:23:40',0),(1157,'Mayfair Insurance Co. Ltd','M0051','','P051178573M','2018-09-26 12:23:40',0),(1158,'Afrique Suites Hotel  - USD','A0049','','','2018-09-26 12:23:40',0),(1159,'Transonic Logistics Ltd','T0048','','P051171890X','2018-09-26 12:23:40',0),(1160,'ESL Uganda Limited','E0027','+256 200 988811','','2018-09-26 12:23:40',0),(1161,'Hull Marine Enterprises-USD','H0014','','P051244619U','2018-09-26 12:23:40',0),(1162,'Outresources HR Consluting','O0020','','P051602607V','2018-09-26 12:23:40',0),(1163,'Wise & Agile Solutions Ltd','W0012','0711408108','P051422688K','2018-09-26 12:23:40',0),(1164,'Lori Systems-KES','L0020','0797735004','P051607040C','2018-09-26 12:23:40',0),(1165,'Highrise Movers','H0015','0722114433','A004658920D','2018-09-26 12:23:40',0),(1166,'Wira Freight Services Ltd-USD','W0013','0722166576','P051126427U','2018-09-26 12:23:40',0),(1167,'Fasworld Merchantds','F0025','','','2018-09-26 12:23:40',0),(1168,'Water Resources Management Authority','W0014','0723729005','P051170025F','2018-09-26 12:23:40',0),(1169,'Muturi Gakuo & Kibara','M0052','041-2313418','P051123447Q','2018-09-26 12:23:40',0),(1170,'Giant Kenya Freight Forwaders-KES','G0011','0721254498','A003769246K','2018-09-26 12:23:40',0),(1171,'Wira Freight Services Ltd-KES','W0015','','P051126427U','2018-09-26 12:23:40',0),(1172,'Sai Raj Limited','S0065','','P051094899S','2018-09-26 12:23:40',0),(1173,'Sals Sea & Airlift Services Ltd - USD','S0066','','','2018-09-26 12:23:40',0),(1174,'Frontline Safaris Ltd','F0026','','P051173232M','2018-09-26 12:23:40',0),(1175,'Eline Cargo-KES','E0028','0722378242','A002929735L','2018-09-26 12:23:40',0),(1176,'Makini College','M0053','','P051241364S','2018-09-26 12:23:40',0),(1177,'East African Online Transport','E0029','0722900301','P051235351Z','2018-09-26 12:23:40',0),(1178,'Customer Experience Excellence Ltd','C0039','0720693001','P051641146W','2018-09-26 12:23:40',0),(1179,'Rankers Kenya Limited-KES','R0023','0733979341','P051609565W','2018-09-26 12:23:40',0),(1180,'Accenture Logistics (K) Ltd','A0050','+254711335500','P051245579Z','2018-09-26 12:23:40',0),(1181,'Musilli Mutie Garage-KES','M0054','073370550','A004493073V','2018-09-26 12:23:40',0),(1182,'Mackenzie Maritime (EA) Ltd','M0055','254 041 2230234','P051319199V','2018-09-26 12:23:40',0),(1183,'Mwamua Hauliers','M0056','0706-354148','','2018-09-26 12:23:40',0),(1184,'TLC International Ltd','T0049','0788880011','P051349231D','2018-09-26 12:23:40',0),(1185,'Hakika Transpor Services Ltd-KES','H0016','','P000622618K','2018-09-26 12:23:40',0),(1186,'Striedge Solutions Ltd-KES','S0067','0722496625','P051670749J','2018-09-26 12:23:40',0),(1187,'AIMS Logistics EA Ltd','A0051','','','2018-09-26 12:23:40',0),(1188,'Rais Shipping Services Kenya Ltd','R0024','+254 41 2319458','','2018-09-26 12:23:40',0),(1189,'GRE-Equipment Limited-KES','G0012','','P051570317S','2018-09-26 12:23:40',0),(1190,'Frantony Enterprise Ltd','F0027','0726722109','','2018-09-26 12:23:40',0),(1191,'DNA Auto Clinik','D0027','0717920978','','2018-09-26 12:23:40',0),(1192,'Awanad Enterprises Ltd','A0052','','P051152067T','2018-09-26 12:23:40',0),(1193,'VISH Electric Limited-KES','V0008','+254 41 2220332','P051091722L','2018-09-26 12:23:40',0),(1194,'Treasure Cargo Services Ltd-KES','T0050','','P051102852P','2018-09-26 12:23:40',0),(1195,'Ecu Worldwide (K) Ltd','E0030','0722434384','P051115344R','2018-09-26 12:23:40',0),(1196,'Skyline Freight INC-USD','S0068','8008780303','N/A','2018-09-26 12:23:40',0),(1197,'Sage South Africa (Pty) Ltd','S0069','+27 11 304-3400','','2018-09-26 12:23:40',0),(1198,'Charlotte East Africa Ltd','C0040','','P051444663H','2018-09-26 12:23:40',0),(1199,'Master Empex Limited-KES','M0057','0781808080','P051701764E','2018-09-26 12:23:40',0),(1200,'Master Empex Limited-USD','M0058','','','2018-09-26 12:23:40',0),(1201,'Multiship International Ltd','M0059','+254736900990','P051519857Y','2018-09-26 12:23:40',0),(1202,'Glory Car Hire Tours & Safaris MSA Ltd','G0013','0722388729','P051186448F','2018-09-26 12:23:40',0),(1203,'Kenya Association of Manufacturers','K0032','','','2018-09-26 12:23:40',0),(1204,'Pasiaji Enterprise-KES','P0030','','A002084285S','2018-09-26 12:23:40',0);
/*!40000 ALTER TABLE `parts_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'custom',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `online_payable` tinyint(1) NOT NULL DEFAULT '0',
  `available_on_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_payment_amount` double NOT NULL DEFAULT '0',
  `settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Cash','custom','Cash payments',0,0,0,'',0),(2,'Stripe','stripe','Stripe online payments',1,0,0,'a:3:{s:15:\"pay_button_text\";s:6:\"Stripe\";s:10:\"secret_key\";s:6:\"\";s:15:\"publishable_key\";s:6:\"\";}',0),(3,'PayPal Payments Standard','paypal_payments_standard','PayPal Payments Standard Online Payments',1,0,0,'a:4:{s:15:\"pay_button_text\";s:6:\"PayPal\";s:5:\"email\";s:4:\"\";s:11:\"paypal_live\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";}',0);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` tinytext COLLATE utf8_unicode_ci,
  `ipn_hash` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ipn_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petty_cash`
--

DROP TABLE IF EXISTS `petty_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petty_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `petty_cash` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `sage_project_id` int(11) NOT NULL,
  `sage_project` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`sage_project_id`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE,
  CONSTRAINT `petty_cash_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `petty_cash_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petty_cash`
--

LOCK TABLES `petty_cash` WRITE;
/*!40000 ALTER TABLE `petty_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `petty_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petty_cash_types`
--

DROP TABLE IF EXISTS `petty_cash_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petty_cash_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_type` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petty_cash_types`
--

LOCK TABLES `petty_cash_types` WRITE;
/*!40000 ALTER TABLE `petty_cash_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `petty_cash_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planners`
--

DROP TABLE IF EXISTS `planners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `location` mediumtext COLLATE utf8_unicode_ci,
  `share_with` mediumtext COLLATE utf8_unicode_ci,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planners`
--

LOCK TABLES `planners` WRITE;
/*!40000 ALTER TABLE `planners` DISABLE KEYS */;
INSERT INTO `planners` VALUES (1,'Team Buliding','Enashipai Resort','2017-03-25','2017-03-26','12:00:00','16:00:00',6,'Nakuru','all',0,'#d43480'),(2,'fhfghjg','vbcbc','2017-04-15','2017-04-15','14:05:00','19:15:00',6,'ujjgh','',0,'#83c340'),(3,'test1','test1','2017-03-27','2017-03-27','00:00:00','00:00:00',7,'','',0,'#83c340'),(4,'tuesday event','tuesday event checking','2017-04-18','2017-04-19','01:00:00','13:00:00',7,'','',0,'#83c340'),(5,'Testing','Party','2017-04-21','2017-04-21','13:00:00','14:00:00',6,'','all',0,'#83c340'),(6,'another one','sdf','2017-04-21','2017-04-21','00:00:00','00:00:00',6,'','',0,'#83c340'),(7,'Operations Staff','sample text','2018-07-05','2018-07-05','00:00:00','00:00:00',5,'town','',0,'#e18a00'),(8,'simple','simple simply','2018-07-17','2018-07-27','01:00:00','18:00:00',5,'westslands','all',0,'#34495e'),(9,'planner for the day','great','2018-07-20','2018-07-30','01:00:00','14:00:00',5,'here','member:86,member:88',0,'#aab7b7');
/*!40000 ALTER TABLE `planners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_with` text COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preventive_maintainance`
--

DROP TABLE IF EXISTS `preventive_maintainance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preventive_maintainance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sage_item_id` varchar(255) DEFAULT NULL,
  `maintainance_date` date NOT NULL,
  `assigned_id` int(11) NOT NULL,
  `excalation_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `performed_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `purchase_date` varchar(255) DEFAULT NULL,
  `next_maintenance_date` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `matters_arising` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preventive_maintainance`
--

LOCK TABLES `preventive_maintainance` WRITE;
/*!40000 ALTER TABLE `preventive_maintainance` DISABLE KEYS */;
INSERT INTO `preventive_maintainance` VALUES (1,'18','2019-06-08',146,1,0,0,'2019-05-02 12:12:19',NULL,0,'2016-10-01 00:00:00',NULL,NULL,NULL),(2,'62','2019-06-05',202,1,1,5,'2019-05-02 12:12:41','0000-00-00 00:00:00',0,'2012-04-12 00:00:00','2019-07-25',NULL,NULL),(3,'16','2019-05-22',113,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2016-10-01 00:00:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `preventive_maintainance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comments`
--

DROP TABLE IF EXISTS `project_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `customer_feedback_id` int(11) NOT NULL DEFAULT '0',
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comments`
--

LOCK TABLES `project_comments` WRITE;
/*!40000 ALTER TABLE `project_comments` DISABLE KEYS */;
INSERT INTO `project_comments` VALUES (1,100,'2018-04-12 08:14:22','Fencing complete as of now',1,0,1,0,0,'a:0:{}',0),(2,5,'2018-04-12 08:24:58','Test Comment',1,0,0,0,0,'a:0:{}',0),(3,100,'2018-04-12 08:28:48','all materials supplied',1,0,1,0,0,'a:0:{}',0),(4,5,'2018-04-12 08:29:33','thanks',1,0,1,0,0,'a:0:{}',0),(5,5,'2018-04-12 08:46:59','AR',1,0,0,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:70:\"project_comment_file5acf1d034b024-Accounts-Receivable-Transactions.pdf\";s:9:\"file_size\";s:6:\"103563\";}}',0),(6,5,'2018-04-26 13:13:23','gdfsgdfbdf',6,0,7,0,0,'a:0:{}',0),(7,99,'2018-05-07 11:21:30','As discussed Earlier, we need data keyed in the system',11,0,14,0,0,'a:0:{}',0),(8,102,'2018-05-07 12:44:00','System not yet live, pending a few configurations that are meant to make it more accurate.',11,0,17,0,0,'a:0:{}',0),(9,102,'2018-05-07 12:45:51','Process now fully Ok. Apart from LTA. After leave approval, who receives instructions to pay the 10k or rather who initiates it?',11,0,15,0,0,'a:0:{}',0),(10,109,'2018-05-09 10:36:48','Work in progress.',12,0,32,0,0,'a:0:{}',0),(11,92,'2018-05-09 14:00:00','Fabrication of store container completed and awaiting COM who working on getting approval from KPA for the containers to enter the port and be placed at berth no 9 yard.',13,0,46,0,0,'a:0:{}',0),(12,123,'2018-05-10 13:26:34','Peter kindly update',13,0,54,0,0,'a:0:{}',0),(13,123,'2018-05-10 13:26:34','Peter kindly update',13,0,54,0,0,'a:0:{}',0),(14,123,'2018-05-10 13:29:00','Joylinah please update on status',10,0,71,0,0,'a:0:{}',0),(15,102,'2018-05-11 12:59:27','Hello Francis, was this week\'s meeting held? ',10,0,56,0,0,'a:0:{}',0),(16,102,'2018-05-12 08:45:28','The following Evaluations are active on HRIS:\n1. Ships Agency\n2. Sales & marketing - BDM, CSMM & Sales Exec.\n3. Administration\n4. Finance\n5. HRD\n6. Internal Audit',16,0,80,0,0,'a:0:{}',0),(17,5,'2018-06-26 06:37:21','SCas',10,0,59,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"444173\";}}',0),(18,5,'2018-06-26 06:37:25','SCas',10,0,59,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"444173\";}}',0),(19,5,'2018-06-26 06:38:02','zXCasd',10,0,69,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(20,5,'2018-06-26 06:38:05','zXCasd',10,0,69,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(21,5,'2018-07-09 10:09:01','good',10,0,72,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}}',0),(22,5,'2018-07-09 10:09:03','good',10,0,72,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}}',0),(23,5,'2018-07-09 10:09:09','good',10,0,72,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}}',0),(24,5,'2018-07-09 10:09:10','good',10,0,72,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}}',0),(25,5,'2018-07-09 10:09:15','good',10,0,72,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}}',0),(26,5,'2018-07-09 10:09:30','goodsa',10,0,72,0,0,'a:2:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:4:\"7112\";}}',0),(27,5,'2018-07-09 10:09:31','goodsa',10,0,72,0,0,'a:2:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:4:\"7112\";}}',0),(28,5,'2018-07-09 10:09:31','goodsa',10,0,72,0,0,'a:2:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"19841\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:4:\"7112\";}}',0),(29,5,'2018-07-12 11:43:05','wow',15,0,77,0,0,'a:2:{i:0;a:2:{s:9:\"file_name\";s:53:\"project_comment_file5b473ec91b7a2-Kalekye-Laptop.docx\";s:9:\"file_size\";s:6:\"113860\";}i:1;a:2:{s:9:\"file_name\";s:49:\"project_comment_file5b473ec91b8ee-jobcard-(7).pdf\";s:9:\"file_size\";s:4:\"6798\";}}',0),(30,5,'2018-07-12 13:34:55','asdasd',15,0,78,0,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:47:\"project_comment_file5b4758ff8024b-defferals.pdf\";s:9:\"file_size\";s:4:\"7025\";}}',0),(31,5,'2018-09-27 06:30:18','qweqwe',2,0,1,0,0,'a:3:{i:0;a:2:{s:9:\"file_name\";s:83:\"project_comment_file5bac78fae5622-Exercise-01-CreatingandEditingaNewFilewithVim.pdf\";s:9:\"file_size\";s:5:\"40562\";}i:1;a:2:{s:9:\"file_name\";s:62:\"project_comment_file5bac78fae585f-Exercise-03-DeletingText.pdf\";s:9:\"file_size\";s:5:\"64302\";}i:2;a:2:{s:9:\"file_name\";s:61:\"project_comment_file5bac78fae5940-Exercise-04-GettingHelp.pdf\";s:9:\"file_size\";s:5:\"46704\";}}',0),(32,5,'2018-09-27 06:30:22','qweqwe',2,0,1,0,0,'a:3:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"40562\";}i:1;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"64302\";}i:2;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"46704\";}}',0),(33,5,'2019-03-28 12:04:03','e3ew',24,0,153,0,0,'a:0:{}',0);
/*!40000 ALTER TABLE `project_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_files`
--

DROP TABLE IF EXISTS `project_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `file_size` double NOT NULL,
  `created_at` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_files`
--

LOCK TABLES `project_files` WRITE;
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_members`
--

DROP TABLE IF EXISTS `project_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_leader` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_members`
--

LOCK TABLES `project_members` WRITE;
/*!40000 ALTER TABLE `project_members` DISABLE KEYS */;
INSERT INTO `project_members` VALUES (1,5,1,1,0),(2,241,1,0,0),(3,219,1,0,0),(4,94,1,0,0),(5,100,1,0,0),(6,5,2,1,0),(7,94,2,0,0),(8,82,2,0,0),(9,83,2,0,0),(10,5,3,1,0),(11,5,4,1,0),(12,5,5,1,0),(13,5,6,1,0),(14,5,7,1,0),(15,92,8,1,0),(16,5,9,1,0),(17,94,9,0,0),(18,113,9,0,0),(19,102,10,1,0),(20,117,10,0,0),(21,5,11,1,0),(22,123,11,0,0),(23,90,11,0,0),(24,92,11,0,0),(25,102,11,0,0),(26,117,11,0,0),(27,91,11,0,0),(28,116,11,0,0),(29,115,11,0,0),(30,106,11,0,0),(31,86,11,0,0),(32,111,11,0,0),(33,112,11,0,0),(34,99,11,0,0),(35,110,11,0,0),(36,109,12,1,0),(37,5,12,0,0),(38,94,12,0,0),(39,95,12,0,0),(40,152,12,0,0),(41,153,12,0,0),(42,106,12,0,0),(43,141,12,0,0),(44,145,12,0,0),(45,116,12,0,0),(46,128,12,0,0),(47,121,12,0,0),(48,127,12,0,0),(49,140,12,0,0),(50,86,12,0,0),(51,112,12,0,0),(52,111,12,0,0),(53,96,12,0,0),(54,102,13,1,0),(55,123,13,0,0),(56,105,13,0,0),(57,96,13,0,0),(58,99,13,0,0),(59,91,13,0,0),(60,85,13,0,0),(61,106,13,0,0),(62,107,13,0,0),(63,92,13,0,0),(64,112,13,0,0),(65,86,13,0,0),(66,101,13,0,0),(67,104,13,0,0),(68,132,13,0,0),(69,90,13,0,0),(70,87,13,0,0),(71,117,13,0,0),(72,94,13,0,0),(73,100,13,0,0),(74,152,13,0,0),(75,107,10,0,0),(76,91,10,0,0),(77,105,10,0,0),(78,86,10,0,0),(79,116,10,0,0),(80,123,10,0,0),(81,99,10,0,0),(82,88,10,0,0),(83,112,10,0,0),(84,113,10,0,0),(85,96,10,0,0),(86,5,14,1,0),(87,156,14,0,0),(88,92,10,0,0),(89,94,10,0,0),(90,90,10,0,0),(91,100,10,0,0),(92,101,10,0,0),(93,109,15,1,0),(94,116,15,0,0),(95,95,15,0,0),(96,106,15,0,0),(97,121,15,0,0),(98,115,15,0,0),(99,118,15,0,0),(100,141,15,0,0),(101,104,15,0,0),(102,93,15,0,0),(103,103,15,0,0),(104,140,15,0,0),(105,86,15,0,0),(106,112,15,0,0),(107,111,15,0,0),(108,154,15,0,0),(109,152,15,0,0),(110,158,15,0,0),(111,162,15,0,0),(112,163,15,0,0),(113,159,15,0,0),(114,142,15,0,0),(115,102,16,1,0),(116,123,16,0,0),(117,116,16,0,0),(118,94,16,0,0),(119,96,16,0,0),(120,90,16,0,0),(121,91,16,0,0),(122,86,16,0,0),(123,112,16,0,0),(124,99,16,0,0),(125,92,16,0,0),(126,152,10,0,0),(127,5,10,0,0),(128,168,10,0,0),(129,102,17,1,0),(130,117,17,0,0),(131,107,17,0,0),(132,91,17,0,0),(133,105,17,0,0),(134,86,17,0,0),(135,116,17,0,0),(136,123,17,0,0),(137,99,17,0,0),(138,88,17,0,0),(139,112,17,0,0),(140,113,17,0,0),(141,96,17,0,0),(142,92,17,0,0),(143,94,17,0,0),(144,90,17,0,0),(145,100,17,0,0),(146,101,17,0,0),(147,152,17,0,0),(148,5,17,0,0),(149,168,17,0,0),(150,5,18,1,0),(151,94,18,0,0),(152,113,18,0,0),(153,102,19,1,0),(154,117,19,0,0),(155,107,19,0,0),(156,91,19,0,0),(157,105,19,0,0),(158,86,19,0,0),(159,116,19,0,0),(160,123,19,0,0),(161,99,19,0,0),(162,88,19,0,0),(163,112,19,0,0),(164,113,19,0,0),(165,96,19,0,0),(166,92,19,0,0),(167,94,19,0,0),(168,90,19,0,0),(169,100,19,0,0),(170,101,19,0,0),(171,152,19,0,0),(172,5,19,0,0),(173,168,19,0,0),(174,102,21,1,0),(175,117,21,0,0),(176,107,21,0,0),(177,91,21,0,0),(178,105,21,0,0),(179,86,21,0,0),(180,116,21,0,0),(181,123,21,0,0),(182,99,21,0,0),(183,88,21,0,0),(184,112,21,0,0),(185,113,21,0,0),(186,96,21,0,0),(187,92,21,0,0),(188,94,21,0,0),(189,90,21,0,0),(190,100,21,0,0),(191,101,21,0,0),(192,152,21,0,0),(193,5,21,0,0),(194,168,21,0,0),(195,102,23,1,0),(196,117,23,0,0),(197,107,23,0,0),(198,91,23,0,0),(199,105,23,0,0),(200,86,23,0,0),(201,116,23,0,0),(202,123,23,0,0),(203,99,23,0,0),(204,88,23,0,0),(205,112,23,0,0),(206,113,23,0,0),(207,96,23,0,0),(208,92,23,0,0),(209,94,23,0,0),(210,90,23,0,0),(211,100,23,0,0),(212,101,23,0,0),(213,152,23,0,0),(214,5,23,0,0),(215,168,23,0,0),(216,5,24,1,0),(217,5,25,1,0),(218,5,26,1,0),(219,113,24,0,0),(220,156,24,0,0),(221,5,27,1,0),(222,5,28,1,0),(223,113,28,0,0),(224,156,28,0,0),(225,5,29,1,0),(226,5,30,1,0);
/*!40000 ALTER TABLE `project_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_time`
--

DROP TABLE IF EXISTS `project_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('open','logged','approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logged',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_time`
--

LOCK TABLES `project_time` WRITE;
/*!40000 ALTER TABLE `project_time` DISABLE KEYS */;
INSERT INTO `project_time` VALUES (1,1,100,'2018-04-12 08:32:30',NULL,'open',0),(2,9,125,'2018-04-21 09:05:37','2018-04-21 10:52:11','logged',0),(3,13,102,'2018-05-09 14:18:23',NULL,'open',0),(4,10,102,'2018-05-10 07:45:37',NULL,'open',0),(5,16,102,'2018-05-11 09:29:15',NULL,'open',0),(6,15,125,'2018-05-14 08:06:50',NULL,'open',0),(7,10,125,'2018-05-15 07:32:24',NULL,'open',0);
/*!40000 ALTER TABLE `project_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `sage_client_id` int(11) DEFAULT NULL,
  `sage_depertment_id` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `status` enum('open','completed','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `labels` text COLLATE utf8_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (6,'demo','','2018-04-16','2018-04-26',0,0,1,'2018-04-16','open','',0,1),(7,'gcfg','','2018-04-16','2018-04-27',3,3,1,'2018-04-16','open','',0,1),(8,'Mazeras logistics center','','2018-04-16','2018-04-20',0,0,6,'2018-04-16','open','',100000000,0),(9,'MINUTES','MOVING ASSETS TO KAMPALA','2018-04-20','2018-04-26',0,0,3,'2018-04-19','open','',0,0),(10,'Quarterly Management Meeting  Follow-up Tool','','2018-04-23','2018-12-31',0,0,3,'2018-05-09','open','PRIORITY',0,0),(11,'ESL ERP PROJECT','Express Shipping and Logistics ERP Project','2018-05-05','2018-05-31',0,0,8,'2018-05-05','open','PRIORITY',0,0),(12,'GENERAL OPERATIONS MEETING HELD ON 09.05.2018 FROM 9.05 - 9.28AM.','GENERAL OPERATIONS MEETING HELD ON 09.05.2018 FROM 9.05-9.28AM\n\nPresent:\n1. Crispus Kilei.               7. Benson Ierei               13. Grace Mpoya.\n2. Leonard Baya.            8. Moses Shikhonga.\n3. Joseph Matheka.       9. Moses Mangale.\n4. Clifford Nyakundi.    10. Lawrence Amenya.\n5. Salim Sulubu.            11. Collins Pamaba\n6. Dominic Muthui        12. Phides Laura','2018-05-09','2018-05-09',0,0,1,'2018-05-09','open','PRIORITY',0,0),(13,'Monthly Management Meetings Task Tool','This task follow-up tool entails task assignments to different persons as discussed on a monthly basis','2018-05-09','2018-12-31',0,0,3,'2018-05-09','open','PRIORITY',0,0),(14,'DEMO FOR WIZAG DEV TEAM','','0000-00-00','0000-00-00',0,0,8,'2018-05-09','open','',0,1),(15,'GENERAL OPERATIONS MEETING HELD ON 10.05.2018 FROM 8.30 - 9.00 AM','OPERATIONS PLANNING MEETING','2018-05-10','2018-05-10',0,0,5,'2018-05-10','open','',0,0),(16,'HR Projects','This will entail all running HR Projects.','2018-05-11','2018-05-31',0,0,3,'2018-05-11','open','PRIORITY',0,0),(17,'Quarterly Management Meeting  Follow-up Tool','good','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,1),(18,'MINUTES','MOVING ASSETS TO KAMPALA','2018-04-20','2018-04-26',19,NULL,NULL,'2018-07-17','open','PRIORITY',200000000000,0),(19,'Quarterly Management Meeting  Follow-up Tool','nk','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,1),(20,'Quarterly Management Meeting  Follow-up Tool','kk','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,1),(21,'Quarterly Management Meeting  Follow-up Tool','clean code','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,1),(22,'Quarterly Management Meeting  Follow-up Tool','great','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,1),(23,'Quarterly Management Meeting  Follow-up Tool','walalah!','2018-04-23','2018-12-31',19,NULL,NULL,'2018-07-17','open','PRIORITY',0,0),(24,'TestProject1','sdds','2018-09-17','2019-03-08',1,1,1,'2018-09-03','open','',80000,0),(25,'test','zxasx','2018-09-13','2018-10-05',6,6,1,'2018-09-12','open','PRIORITY',80000,0),(26,'test2','test pro','2018-09-13','2018-10-06',19,19,2,'2018-09-12','open','PRIORITY',10000,0),(27,'dfvdf','This is it men.It should work.','2019-03-29','2019-08-30',10,10,1,'2019-03-28','open','HIGHEST',45000,0),(28,'TestProject1','sdds','2018-09-17','2019-03-08',19,NULL,NULL,'2019-03-28','open','',80000,0),(29,'test','zxasx','2018-09-13','2018-10-05',19,NULL,NULL,'2019-03-28','open','PRIORITY',80000,0),(30,'test','zxasx','2018-09-13','2018-10-05',19,NULL,NULL,'2019-03-28','open','PRIORITY',80000,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `telephone_no` mediumint(9) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (2,'Safaricom','All in one',8388607,'10','2018-04-09 05:52:55',0),(3,'Airtel','cheap material',934234,'12','2018-04-09 05:56:02',0),(5,'Tikone','The place to be',8388607,'20','2018-04-09 06:22:22',0),(6,'Cyto','c0009',8388607,'12','2018-04-10 04:32:34',0);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates_perhour`
--

DROP TABLE IF EXISTS `rates_perhour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates_perhour` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `amount` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates_perhour`
--

LOCK TABLES `rates_perhour` WRITE;
/*!40000 ALTER TABLE `rates_perhour` DISABLE KEYS */;
INSERT INTO `rates_perhour` VALUES (1,800,'Flat Rate','2018-03-22 12:15:45',0);
/*!40000 ALTER TABLE `rates_perhour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_assets`
--

DROP TABLE IF EXISTS `return_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_assets` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `asset_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `created_by` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_assets`
--

LOCK TABLES `return_assets` WRITE;
/*!40000 ALTER TABLE `return_assets` DISABLE KEYS */;
INSERT INTO `return_assets` VALUES (1,1,162,'returned','2019-04-30','2019-04-30',0,'Admin User',3),(2,2,114,'issued','2019-04-30','2019-04-30',0,'Admin User',0),(3,3,121,'issued','2019-04-30','2019-04-30',0,'Admin User',1);
/*!40000 ALTER TABLE `return_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrators','a:28:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:9:\"technical\";s:0:\"\";s:14:\"administration\";N;s:8:\"estimate\";s:3:\"all\";s:5:\"legal\";s:0:\"\";s:7:\"finance\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(2,'General Staff','a:108:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:9:\"technical\";N;s:14:\"administration\";N;s:8:\"estimate\";N;s:5:\"legal\";N;s:7:\"expense\";N;s:14:\"can_edit_leads\";N;s:16:\"can_delete_leads\";N;s:24:\"can_edit_legal_documents\";N;s:26:\"can_delete_legal_documents\";N;s:29:\"can_edit_legal_document_types\";N;s:31:\"can_delete_legal_document_types\";N;s:24:\"can_edit_legal_reminders\";N;s:26:\"can_delete_legal_reminders\";N;s:6:\"client\";N;s:23:\"can_edit_trimmer_sheets\";N;s:25:\"can_delete_trimmer_sheets\";N;s:13:\"can_edit_fuel\";N;s:15:\"can_delete_fuel\";N;s:23:\"can_view_assets_reports\";N;s:18:\"can_access_outages\";N;s:25:\"can_access_administration\";s:1:\"1\";s:16:\"can_access_tasks\";N;s:16:\"can_access_leads\";N;s:19:\"can_access_messages\";N;s:18:\"can_access_planner\";N;s:19:\"can_access_projects\";N;s:19:\"can_access_timecard\";N;s:20:\"can_access_attendace\";N;s:23:\"can_access_task_summary\";N;s:22:\"can_access_day_summary\";N;s:18:\"can_access_tickets\";N;s:22:\"can_view_knowledgebase\";N;s:24:\"can_access_knowledgebase\";N;s:21:\"can_add_knowledgebase\";N;s:15:\"can_access_team\";N;s:23:\"can_access_team_members\";N;s:16:\"can_access_legal\";N;s:20:\"can_access_documents\";N;s:20:\"can_access_customers\";N;s:16:\"can_access_cases\";N;s:20:\"can_access_defferals\";N;s:28:\"can_access_project_defferals\";N;s:19:\"can_access_accounts\";N;s:20:\"can_access_technical\";s:1:\"1\";s:21:\"can_access_preventive\";s:1:\"1\";s:19:\"can_access_reactive\";s:1:\"1\";s:21:\"can_access_inpections\";N;s:25:\"can_access_warranty_parts\";N;s:23:\"can_access_requisitions\";N;s:18:\"can_access_fueling\";N;s:24:\"can_access_hiring_assets\";N;s:21:\"can_edit_hired_assets\";N;s:23:\"can_delete_hired_assets\";N;s:25:\"can_access_trimmer_sheets\";N;s:19:\"maintenance_reports\";N;s:23:\"can_access_fuel_reports\";N;s:18:\"can_access_invoice\";N;s:12:\"announcement\";N;s:18:\"can_access_finance\";N;s:19:\"can_access_expenses\";N;s:19:\"can_access_payments\";N;s:26:\"can_access_income_expenses\";N;s:24:\"can_view_support_reports\";N;s:28:\"can_view_third_level_reports\";N;s:19:\"can_view_checklists\";N;s:24:\"can_view_support_tickets\";N;s:27:\"can_view_checklists_reports\";N;s:15:\"can_view_assets\";N;s:27:\"can_view_assets_maintanance\";N;s:35:\"can_view_assets_maintanance_reports\";N;s:25:\"can_view_assets_disposals\";N;s:18:\"can_receive_parcel\";N;s:17:\"can_assign_parcel\";N;s:15:\"can_send_parcel\";N;s:26:\"can_assign_parcel_outwards\";N;s:18:\"can_receive_cheque\";N;s:17:\"can_assign_cheque\";N;s:15:\"can_send_cheque\";N;s:26:\"can_assign_cheque_outwards\";N;s:25:\"can_view_recieved_parcels\";N;s:24:\"can_view_inwards_cheques\";N;s:21:\"can_view_send_cheques\";N;s:25:\"can_view_outwards_cheques\";N;s:25:\"can_view_recieved_cheques\";N;s:24:\"can_view_inwards_parcels\";N;s:21:\"can_view_send_parcels\";N;s:25:\"can_view_outwards_parcels\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:21:\"can_approve_inventory\";s:1:\"1\";s:24:\"can_disapprove_inventory\";s:1:\"1\";s:18:\"can_edit_inventory\";s:1:\"1\";s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}',0),(3,'Legal Staff','a:27:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:9:\"technical\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:5:\"legal\";s:3:\"all\";s:7:\"finance\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(4,'Technical Staff','a:27:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:0:\"\";s:9:\"technical\";s:3:\"all\";s:8:\"estimate\";s:0:\"\";s:5:\"legal\";s:0:\"\";s:7:\"finance\";N;s:7:\"expense\";s:0:\"\";s:6:\"client\";s:0:\"\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:0:\"\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";N;}',0),(5,'Finance Staff','a:31:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:9:\"technical\";s:0:\"\";s:14:\"administration\";s:3:\"all\";s:8:\"estimate\";s:3:\"all\";s:5:\"legal\";s:0:\"\";s:7:\"finance\";s:3:\"all\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";s:1:\"1\";s:21:\"can_approve_inventory\";s:1:\"1\";s:24:\"can_disapprove_inventory\";s:1:\"1\";s:18:\"can_edit_inventory\";N;s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";N;}',0),(6,'Admin Staff','a:113:{s:5:\"leave\";s:0:\"\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:0:\"\";s:19:\"attendance_specific\";s:0:\"\";s:9:\"technical\";N;s:14:\"administration\";N;s:8:\"estimate\";N;s:5:\"legal\";N;s:7:\"expense\";N;s:14:\"can_edit_leads\";N;s:16:\"can_delete_leads\";N;s:24:\"can_edit_legal_documents\";s:1:\"1\";s:24:\"can_schedule_maintenance\";s:1:\"1\";s:26:\"can_delete_legal_documents\";s:1:\"1\";s:29:\"can_edit_legal_document_types\";s:1:\"1\";s:31:\"can_delete_legal_document_types\";s:1:\"1\";s:24:\"can_edit_legal_reminders\";s:1:\"1\";s:26:\"can_delete_legal_reminders\";s:1:\"1\";s:6:\"client\";s:3:\"all\";s:23:\"can_edit_trimmer_sheets\";s:1:\"1\";s:25:\"can_delete_trimmer_sheets\";s:1:\"1\";s:13:\"can_edit_fuel\";s:1:\"1\";s:15:\"can_delete_fuel\";s:1:\"1\";s:23:\"can_view_assets_reports\";s:1:\"1\";s:18:\"can_access_outages\";s:1:\"1\";s:25:\"can_access_administration\";s:1:\"1\";s:16:\"can_access_tasks\";s:1:\"1\";s:16:\"can_access_leads\";s:1:\"1\";s:19:\"can_access_messages\";s:1:\"1\";s:18:\"can_access_planner\";s:1:\"1\";s:19:\"can_access_projects\";s:1:\"1\";s:19:\"can_access_timecard\";s:1:\"1\";s:20:\"can_access_attendace\";s:1:\"1\";s:23:\"can_access_task_summary\";s:1:\"1\";s:22:\"can_access_day_summary\";s:1:\"1\";s:18:\"can_access_tickets\";s:1:\"1\";s:22:\"can_view_knowledgebase\";s:1:\"1\";s:24:\"can_access_knowledgebase\";s:1:\"1\";s:21:\"can_add_knowledgebase\";s:1:\"1\";s:15:\"can_access_team\";s:1:\"1\";s:23:\"can_access_team_members\";s:1:\"1\";s:16:\"can_access_legal\";s:1:\"1\";s:20:\"can_access_documents\";s:1:\"1\";s:20:\"can_access_customers\";s:1:\"1\";s:16:\"can_access_cases\";s:1:\"1\";s:20:\"can_access_defferals\";s:1:\"1\";s:28:\"can_access_project_defferals\";s:1:\"1\";s:19:\"can_access_accounts\";s:1:\"1\";s:20:\"can_access_technical\";s:1:\"1\";s:21:\"can_access_preventive\";s:1:\"1\";s:19:\"can_access_reactive\";s:1:\"1\";s:21:\"can_access_inpections\";s:1:\"1\";s:25:\"can_access_warranty_parts\";s:1:\"1\";s:23:\"can_access_requisitions\";s:1:\"1\";s:18:\"can_access_fueling\";s:1:\"1\";s:24:\"can_access_hiring_assets\";s:1:\"1\";s:21:\"can_edit_hired_assets\";s:1:\"1\";s:23:\"can_delete_hired_assets\";s:1:\"1\";s:25:\"can_access_trimmer_sheets\";s:1:\"1\";s:19:\"maintenance_reports\";s:1:\"1\";s:23:\"can_access_fuel_reports\";s:1:\"1\";s:29:\"can_access_technical_settings\";s:1:\"1\";s:18:\"can_access_invoice\";s:1:\"1\";s:12:\"announcement\";s:3:\"all\";s:18:\"can_access_finance\";s:1:\"1\";s:19:\"can_access_expenses\";s:1:\"1\";s:19:\"can_access_payments\";s:1:\"1\";s:26:\"can_access_income_expenses\";s:1:\"1\";s:24:\"can_view_support_reports\";s:1:\"1\";s:28:\"can_view_third_level_reports\";s:1:\"1\";s:22:\"can_mark_ticket_closed\";s:1:\"1\";s:22:\"can_mark_ticket_solved\";s:1:\"1\";s:20:\"can_mark_ticket_done\";s:1:\"1\";s:19:\"can_view_checklists\";s:1:\"1\";s:24:\"can_view_support_tickets\";s:1:\"1\";s:27:\"can_view_checklists_reports\";s:1:\"1\";s:15:\"can_view_assets\";s:1:\"1\";s:27:\"can_view_assets_maintanance\";s:1:\"1\";s:35:\"can_view_assets_maintanance_reports\";s:1:\"1\";s:25:\"can_view_assets_disposals\";s:1:\"1\";s:18:\"can_receive_parcel\";s:1:\"1\";s:17:\"can_assign_parcel\";s:1:\"1\";s:15:\"can_send_parcel\";s:1:\"1\";s:26:\"can_assign_parcel_outwards\";s:1:\"1\";s:18:\"can_receive_cheque\";s:1:\"1\";s:17:\"can_assign_cheque\";s:1:\"1\";s:15:\"can_send_cheque\";s:1:\"1\";s:26:\"can_assign_cheque_outwards\";s:1:\"1\";s:25:\"can_view_recieved_parcels\";s:1:\"1\";s:24:\"can_view_inwards_cheques\";s:1:\"1\";s:21:\"can_view_send_cheques\";s:1:\"1\";s:25:\"can_view_outwards_cheques\";s:1:\"1\";s:25:\"can_view_recieved_cheques\";s:1:\"1\";s:24:\"can_view_inwards_parcels\";s:1:\"1\";s:21:\"can_view_send_parcels\";s:1:\"1\";s:25:\"can_view_outwards_parcels\";s:1:\"1\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";s:1:\"1\";s:21:\"can_approve_inventory\";s:1:\"1\";s:24:\"can_disapprove_inventory\";s:1:\"1\";s:18:\"can_edit_inventory\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";N;}',0),(7,'Company Admin','a:28:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";N;s:9:\"technical\";s:3:\"all\";s:14:\"administration\";N;s:8:\"estimate\";N;s:5:\"legal\";N;s:7:\"finance\";s:0:\"\";s:7:\"expense\";N;s:6:\"client\";N;s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}',0),(8,'Operations Staff',NULL,0),(9,'ICT Staff','a:28:{s:5:\"leave\";s:3:\"all\";s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";s:3:\"all\";s:19:\"attendance_specific\";s:0:\"\";s:7:\"invoice\";s:3:\"all\";s:9:\"technical\";s:0:\"\";s:14:\"administration\";N;s:8:\"estimate\";s:3:\"all\";s:5:\"legal\";s:0:\"\";s:7:\"finance\";s:0:\"\";s:7:\"expense\";s:3:\"all\";s:6:\"client\";s:3:\"all\";s:6:\"ticket\";s:3:\"all\";s:12:\"announcement\";s:3:\"all\";s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";s:1:\"1\";s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";s:1:\"1\";s:16:\"can_create_tasks\";s:1:\"1\";s:14:\"can_edit_tasks\";s:1:\"1\";s:16:\"can_delete_tasks\";s:1:\"1\";s:20:\"can_comment_on_tasks\";s:1:\"1\";s:21:\"can_create_milestones\";s:1:\"1\";s:19:\"can_edit_milestones\";s:1:\"1\";s:21:\"can_delete_milestones\";s:1:\"1\";s:16:\"can_delete_files\";s:1:\"1\";s:34:\"can_view_team_members_contact_info\";s:1:\"1\";s:34:\"can_view_team_members_social_links\";s:1:\"1\";}',0),(10,'Settings',NULL,1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sage_clients`
--

DROP TABLE IF EXISTS `sage_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sage_clients` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sage_clients`
--

LOCK TABLES `sage_clients` WRITE;
/*!40000 ALTER TABLE `sage_clients` DISABLE KEYS */;
INSERT INTO `sage_clients` VALUES (2,'safcomm','s3456','Ann','0782353456','2018-04-10 10:52:56','2018-04-10 10:01:56',0),(3,'Cash Customer','CASH',NULL,NULL,'2018-04-10 11:00:08',NULL,0),(4,'24Vision Chartering Solution','2001','Jonathan Scheers','+971 52 934 9491','2018-04-10 11:00:08',NULL,0),(5,'30 South Maritime','3001','FRANS DAVIDTZ ','+27 0 716754774','2018-04-10 11:00:08',NULL,0),(6,'ARM Cement  Limited','A001','Manish Mehta','+254 20 3744617/20/22/25','2018-04-10 11:00:08',NULL,0),(7,'EBB - Abe Trans Logistics Ltd','A087','Buffy','+972 3 7958888','2018-04-10 11:00:08',NULL,0),(8,'Avtelco Kenya Limited','A090','GEOFF KHITOME','+254 20 3001785','2018-04-10 11:00:08',NULL,0),(10,'AM Nomikos & Son (UK) Ltd ','A099','Nicholas Fuller ','+ 44  0  20 7591 1800','2018-04-10 11:00:08',NULL,0),(11,'Aeromarine Logistics (K)Ltd','A100','Moses Muriuki ','4362','2018-04-10 11:00:08',NULL,0),(12,'Abyssinia Iron and Steel Ltd','A105','Nelson','720030471','2018-04-10 11:00:08',NULL,0),(13,'A M Nomikos & Sons (UK) Ltd ','A107','','4362','2018-04-10 11:00:08',NULL,0),(14,'Arch Shipping FZ-LLC','A108','Gaurav Sharma ','+91 141 239 8830','2018-04-10 11:00:08',NULL,0),(15,'A.M.Nomikos Aquirius Inc C/O DA Desk','A113','','9.71144E+11','2018-04-10 11:00:08',NULL,0),(16,'Africa Navigation B.V.','A118','','4362','2018-04-10 11:00:08',NULL,0),(17,'Ariston Navigation Corp','A120','Spiros Bouloukos ','+30 210 4293250','2018-04-10 11:00:08',NULL,0),(18,'Alpha Shipping Co. Hamburg','A126','','4362','2018-04-10 11:00:08',NULL,0),(19,'A.M. Nomikos Transworld Maritime Agencies S.A','A128','','+30 210 6155 200','2018-04-10 11:00:08',NULL,0),(20,'AB MARITIME INC.','A133','PANAGIOTIS PAPPAS','3.0211E+11','2018-04-10 11:00:08',NULL,0),(21,'ATLANTIC MARITIME COA INC,','A134','C. MINIC  ','+1  450  678-7676','2018-04-10 11:00:08',NULL,0),(22,'Australian High Commission','A135','','4362','2018-04-10 11:00:08',NULL,0),(23,'Aegeus Shipping','A137','Capt. Viliosis','3.02108E+11','2018-04-10 11:00:08',NULL,0),(24,'AAL Shipping','A138','Ole Boysen','+65 9654 7213','2018-04-10 11:00:08',NULL,0),(25,'Alster Int\'l Shipping Services Inc','A139','Ms Myla Cabuyao','+63 2 8876010 to 12','2018-04-10 11:00:08',NULL,0),(26,'A-One Plastics Limited ','A140','','4362','2018-04-10 11:00:08',NULL,0),(27,'AS Klaveness Chartering ','A141','Elmo Adelwis Kagaoan','4722526825','2018-04-10 11:00:08',NULL,0),(28,'Amnav Limited','A143','Navraj Dhillon','4362','2018-04-10 11:00:08',NULL,0),(29,'Atmus Enterprises Ltd','A144','Mustafa','+254710 111 110','2018-04-10 11:00:08',NULL,0),(30,'Allseas Marine S.A','A145','Costas J. Nomikos','+30 6972866869','2018-04-10 11:00:08',NULL,0),(31,'Asante Capital EPZ Ltd','A146','Evans','703996577','2018-04-10 11:00:08',NULL,0),(32,'Bamburi Cement Limited','B068','Catherine Theuri','020 2710487/8/9','2018-04-10 11:00:08',NULL,0),(33,'Baypamar Fishing SA','B069','','4362','2018-04-10 11:00:08',NULL,0),(34,'IFA - Bati Nakliyat Ve Ticaret','B072','','4362','2018-04-10 11:00:08',NULL,0),(35,'Bannie and Archer Co.Ltd','B073','NASREEN','25423749792','2018-04-10 11:00:08',NULL,0),(36,'Blue Fleet Athens','B074','','+30 2109571595','2018-04-10 11:00:08',NULL,0),(37,'Bernhard Schulte Shipmanagement(Singapore)Pte Ltd','B075','Kin Lin (Ms)','4362','2018-04-10 11:00:08',NULL,0),(38,'Burundi Cement Company','B076','AMELIE FIAT','25722276549','2018-04-10 11:00:08',NULL,0),(39,'Blessing Bulk Carriers Europe Athens Co','B077','Stasinos Sotiris','+30 210 8055 370','2018-04-10 11:00:08',NULL,0),(40,'BTG Pactual Commodities (Switzerland) SA','B080','Adeline Binoche',' +41  0  22 747 75','2018-04-10 11:00:08',NULL,0),(41,'Black Pearl Maritime Security Management Ltd ','B081','Noam Nafusi','+44 7700017748','2018-04-10 11:00:08',NULL,0),(42,'Braville Agencies  Limited.','B082','BIPIN PARMAR','+254  729  403 672','2018-04-10 11:00:08',NULL,0),(43,'Byzantine Maritime Corp','B083','Seti Kontouzoglou','+30 210 6281115','2018-04-10 11:00:08',NULL,0),(44,'Bonfide C & F Company Ltd','B084','','4362','2018-04-10 11:00:08',NULL,0),(45,'BRV  Shipping & Chartering','B085','Hos','+44 20 32 39 60 60  UK ','2018-04-10 11:00:08',NULL,0),(46,'Buzeki Group Ltd','B086','Mr. Bundotich Kiprop','4362','2018-04-10 11:00:08',NULL,0),(47,'BK Shipping Co., Ltd','B087','Ms Jane','-8140','2018-04-10 11:00:08',NULL,0),(48,'Bibby Line Limited (As agents for Owners)','B089','Gill Birchall (Miss)','4362','2018-04-10 11:00:08',NULL,0),(49,'Baliwag Navigation Inc.','B090','Capt. Vicmar C. Calibjo','60.00526122','2018-04-10 11:00:08',NULL,0),(50,'Bollore Logistics','B092','','4362','2018-04-10 11:00:08',NULL,0),(51,'Bulk Marine Limited','B093','Anadi Seth','+9 124 406 7202','2018-04-10 11:00:08',NULL,0),(52,'Bulker Chartering & Management SA','B094','Stefano Magnelli','41919107800','2018-04-10 11:00:08',NULL,0),(53,'Bernhard Schulte Shipmanagement (Cyprus) Ltd','B095','Marina Evripidou ','35725846623','2018-04-10 11:00:08',NULL,0),(54,'BPI Shipping ','B096','','4362','2018-04-10 11:00:08',NULL,0),(55,'Blueseas Shipping S.A','B097','','4362','2018-04-10 11:00:08',NULL,0),(56,'Bulk-Chart','B098','Mohan Nair','+91 80 41144964','2018-04-10 11:00:08',NULL,0),(57,'Biolite Uganda Ltd','B099','Felipe Spath Botero','4362','2018-04-10 11:00:08',NULL,0),(58,'Biolite Holdings (K) Ltd','B100','Felipe Spath Botero','412229784','2018-04-10 11:00:08',NULL,0),(59,'Biolite Holdings (K) Ltd','B101','','4362','2018-04-10 11:00:08',NULL,0),(60,'Bioafriq Energy Ltd','B102','James Nyama','721739494','2018-04-10 11:00:08',NULL,0),(61,'Cargill International S.A','C009','Stephane jaton','41227032696','2018-04-10 11:00:08',NULL,0),(62,'Commodity Trading Co','C022','Gnanam','4362','2018-04-10 11:00:08',NULL,0),(63,'Cement Traders Inc','C048','Lima Goussous','96265685115','2018-04-10 11:00:08',NULL,0),(64,'Chinpo Shipping Co','C049','','4362','2018-04-10 11:00:08',NULL,0),(65,'C.E.G. Bulk Chartering','C051','','00049  0  40 317858 30','2018-04-10 11:00:08',NULL,0),(66,'Cargill Ocean Transportation (Singapore) Pte Ltd','C057','Lee Lijing Belle','Tel: +65-6393 8349','2018-04-10 11:00:08',NULL,0),(67,'Crescent Imports and Exports- USD','C058','Faiza','+61 3 9363 7545','2018-04-10 11:00:08',NULL,0),(68,'Clipper Bulk USA','C061','Gary Lawrence','4362','2018-04-10 11:00:08',NULL,0),(69,'Crown Berger Kenya Ltd (Usd)','C062','Nyalwal Philip','2.54202E+12','2018-04-10 11:00:08',NULL,0),(70,'Cemco Cement Trading S.L.','C063','Alvaro Bonello','4362','2018-04-10 11:00:08',NULL,0),(71,'Citic Ship Management Ltd','C064','Eric wang','13601007962','2018-04-10 11:00:08',NULL,0),(72,'Canmarine Shipbrokers','C065','Hazal Ercin','+90 216 4501566','2018-04-10 11:00:08',NULL,0),(73,'Coastal International Shipping Line Ltd','C066','Abdulla O Issa','+255 777 844755','2018-04-10 11:00:08',NULL,0),(74,'Castleton Commodities Shipping Co. Pte. Ltd.','C067','Christopher Wilson','+65 6692 0354','2018-04-10 11:00:08',NULL,0),(75,'Castor Vali Maritime Ltd','C068','Clemence Leedham','+44  0  207 368 1648','2018-04-10 11:00:08',NULL,0),(76,'Corrugated Sheets Limited','C069','RAI NYONDO','2.54712E+11','2018-04-10 11:00:08',NULL,0),(77,'C Marine Transport Company','C070','Tassos Raissis','+30 210 4584817','2018-04-10 11:00:08',NULL,0),(78,'Cargill Energy, Transportation and Metals','C071','Kristina Yaneva','+359 2 809 9158','2018-04-10 11:00:08',NULL,0),(79,'Castle Royal Hotel','C073','Maureen Omondi','+254 734161197','2018-04-10 11:00:08',NULL,0),(80,'Columbus Maritime Corp.','C074','Sergiy Sitovskyy','+380 951 757 075','2018-04-10 11:00:08',NULL,0),(81,'Cem Asia Trading JLT','C075','Syed Mujeebuddin',' +97144 522 833','2018-04-10 11:00:08',NULL,0),(82,'Citadel Maritime Ltd','C076','','4362','2018-04-10 11:00:08',NULL,0),(83,'Continental Logistics Network Ltd','C078','Wachira','2.54721E+11','2018-04-10 11:00:08',NULL,0),(84,'CMA CGM Kenya Ltd.','C079','STEPHEN  MWAREMA','4362','2018-04-10 11:00:08',NULL,0),(85,'Copenship MPP A/S','C080','Christian Christensen','ianik Bross Shipping Corp','2018-04-10 11:00:08',NULL,0),(86,'CHINA-AFRICA TOTAL LOGISTICS ','C081',' +30 210 4110357 ','','2018-04-10 11:00:08',NULL,0),(87,'Diamond Shipping Services Ltd','D061','','254  41  2228810','2018-04-10 11:00:08',NULL,0),(88,'Devji Meghji & Bros Ltd','D062','','4362','2018-04-10 11:00:08',NULL,0),(89,'DBC Shipping L.L.C','D063','Jahufar Fuad','+97155 5921090','2018-04-10 11:00:08',NULL,0),(90,'Dry Chart Interocean','D064','ANKIT DHAWAN','4362','2018-04-10 11:00:08',NULL,0),(91,'Diaplous Maritime Services','D066','','Tel:+30 210 4131222','2018-04-10 11:00:08',NULL,0),(92,' Dynacom Tankers Management Limited','D067','',' +30 210 891 77 00','2018-04-10 11:00:08',NULL,0),(93,'Dromon Maritime Agency','D068','Richard Kersey','+44 20 7628 0477','2018-04-10 11:00:08',NULL,0),(94,'DND Management Inc','D069','Alexis Doucas','3.02109E+11','2018-04-10 11:00:08',NULL,0),(95,'Dcc Bulk Inc','D070','Capt.Ioannis Malichoutsakis','3.02104E+11','2018-04-10 11:00:08',NULL,0),(96,'Doshi Enterprises Ltd','D071','','+254 2224414, ','2018-04-10 11:00:08',NULL,0),(97,'DNA MARITIME INC.','D072','Apostolis Peppes','TEL:+30 210 9689600 ','2018-04-10 11:00:08',NULL,0),(98,'Decor Hardware (USD)','D073','','4362','2018-04-10 11:00:08',NULL,0),(99,'Decor Hardware ','D074','','4362','2018-04-10 11:00:08',NULL,0),(100,'Densan Shipping Co.Inc.','D075','Melik Okumus','+90 212 2456810    ','2018-04-10 11:00:08',NULL,0),(101,'Dasin Shipping Pte Ltd','D076','Xu Shaoxue','+86 411 83780200','2018-04-10 11:00:08',NULL,0),(102,'Densay Shipping and Trading DMCC ','D077','VOLKAN BALITATn','2.55689E+11','2018-04-10 11:00:08',NULL,0),(103,'Dianik Ship Management LLC','D078','Violetta088','','2018-04-10 11:00:08',NULL,0),(104,'Dragon Citi','D082','','89','2018-04-10 11:00:08',NULL,0),(105,'East African Portland Cement Company','E090','Ngala Oloitiptip','-1518','2018-04-10 11:00:08',NULL,0),(106,'East African Commercial &Shipping Co. Ltd','E093','George Gachanja ','+ 254   722 429 225','2018-04-10 11:00:08',NULL,0),(107,'Emarat Maritime','E094','Ashwin Philip','+971  4  3599955 ','2018-04-10 11:00:08',NULL,0),(108,'Eagle Ship Management LLC','E095','Paula Stancu Giordani','212 785 3335','2018-04-10 11:00:08',NULL,0),(109,'ESC Global Security Ltd','E096','Ms Liisabell Naarits','+372 5146 119','2018-04-10 11:00:08',NULL,0),(110,'Eagle Management Consultancy PTE Ltd','E097','Lorilyn Reylana','+65 6508 6881','2018-04-10 11:00:08',NULL,0),(111,'EAGLE BULK PTE LTD SINGAPORE','E098','SIMON(SUNGMIN)KIM','+65 9106 3990','2018-04-10 11:00:08',NULL,0),(112,'Eagle Shipping International (USA) LLC','E099','Vijay Prasad','4362','2018-04-10 11:00:08',NULL,0),(113,'ED & F MAN SHIPPING','E100','Struan Ridgwell','+65 6922 6716','2018-04-10 11:00:08',NULL,0),(114,'Evalend Shipping Company S.A','E102','Katerina Yfantouda','4362','2018-04-10 11:00:08',NULL,0),(115,'Ecolab EA Kenya Limited','E103','Daniel   O. Apat','020 3540625','2018-04-10 11:00:08',NULL,0),(116,'Export Trading Co Ltd ( Uganda)','E105','Mr Mustan','4362','2018-04-10 11:00:08',NULL,0),(117,'Export Trading Group','E106','Siddique al rashid','Ph: +971 4 386 4551 | Ext','2018-04-10 11:00:08',NULL,0),(118,'Electrical & General Appliances Ltd','E107','','4362','2018-04-10 11:00:08',NULL,0),(119,'Eastern Mediterranean Maritime Ltd','E108','Theofilos Haldezos','3.0211E+11','2018-04-10 11:00:08',NULL,0),(120,'Export Trading Co Ltd','E109','Export Trading Co','254 20 266880','2018-04-10 11:00:08',NULL,0),(121,'ESL Uganda Limited','E110','Merreck Getugi','+256 200 988811','2018-04-10 11:00:08',NULL,0),(122,'Excelzor Logistis Ltd','E111','Royden Ferreira','9.12265E+11','2018-04-10 11:00:08',NULL,0),(123,'Fairseas International Trade & Logistics {Pty} Ltd','F039','Liam McKenzie','27 21 4108819','2018-04-10 11:00:08',NULL,0),(124,'Freightwell Express Ltd- Usd','F040','','4362','2018-04-10 11:00:08',NULL,0),(125,'Freightwell Express Limited','F041','Washington Mwamburi','4362','2018-04-10 11:00:08',NULL,0),(126,'International Exports','F042','Sheen','+91 22 4236 9911  Direct ','2018-04-10 11:00:08',NULL,0),(127,'Fleet Management Ltd','F048','Arun','+852 22988342','2018-04-10 11:00:08',NULL,0),(128,'Freight  Forwarders Kenya Limited','F049','ABDUL BARADIA','+254  041  2227575','2018-04-10 11:00:08',NULL,0),(129,'Fortuna- Seaside Chartering ','F056','Philip Heymans ','4539161200','2018-04-10 11:00:08',NULL,0),(130,'FACTOR 8 SHIPPING','F057','SIMON F. TROWENN','+375 931 061 06','2018-04-10 11:00:08',NULL,0),(131,'FORTIS BULKERS INC.','F058','CAPT. SAKIS MASALAS','+3ranch) ','2018-04-10 11:00:08',NULL,0),(132,'Fortune Global Shipping & Logistics Ltd','F059','Kingsley Ekweariri ','+353 899 G028','2018-04-10 11:00:08',NULL,0),(133,'FOSROC Kenya Limited-USD','F060','Lilian Kariba','2.5470 210 8986160 ','2018-04-10 11:00:08',NULL,0),(134,'Gourdomichalis Maritime.A','G030','','+30 210 4290880','2018-04-10 11:00:08',NULL,0),(135,'Government Clearing Agency','G031','','4362','2018-04-10 11:00:08',NULL,0),(136,'Greenroad Int\'l Logistics Co., LTD','G032','','4362','2018-04-10 11:00:08',NULL,0),(137,'Greenspark (K) Ltd','G033','','+254 701997668','2018-04-10 11:00:08',NULL,0),(138,'Gearbulk Manila','G034','Sandy Gonzales','+63 2 917 8948','2018-04-10 11:00:08',NULL,0),(139,'Hanse International (Kenya) Limited','H001','RITA BOCHERE',' +254-2080-69370','2018-04-10 11:00:08',NULL,0),(140,'Heidelberg East Africa','H002','HENRY FWAYA','734333222','2018-04-10 11:00:08',NULL,0),(141,'Hyundai Glovis Co.Ltd','H003','Ms. S.E. Kim/STAFF','82-2-2054-7611','2018-04-10 11:00:08',NULL,0),(142,'HC Trading Malta Limited','H004','','4362','2018-04-10 11:00:08',NULL,0),(143,'Hermes Maritime Services Pvt.Ltd.','H005','ATTN. TANUJA','4362','2018-04-10 11:00:08',NULL,0),(144,'Handymax Freight Trader,Cargill ETM ','H006','Willem Olde Kalter','-14473','2018-04-10 11:00:08',NULL,0),(145,'Hanbyul Merchant Marine Co Ltd','H007','Andrew Lim ','-3405','2018-04-10 11:00:08',NULL,0),(146,'Handymax Chartering','H009','Hardik Sanghvi','+91 22 28329187','2018-04-10 11:00:08',NULL,0),(147,'HBC Asia Pte. Ltd','H010','Christopher Wilson','+65-6303 9111','2018-04-10 11:00:08',NULL,0),(148,'Hyundai Merchant Marine Co.,Ltd. (HMM)','H011','Ryan Kim','82-2-3706-5679','2018-04-10 11:00:08',NULL,0),(149,'HC-Chartering GmbH  & Co. KG        ','H013','','+49  0 4102 8033 -185','2018-04-10 11:00:08',NULL,0),(150,'HC Trading','H014','Ajith Kumar','+00 971 4 204 55 23','2018-04-10 11:00:08',NULL,0),(151,'Harbour Agency Limited','H016','','4362','2018-04-10 11:00:08',NULL,0),(152,'HMS Bergbau AG','H017','','4362','2018-04-10 11:00:08',NULL,0),(153,'Hydroturf East Africa Ltd','H018','Philip Ochola','742961657','2018-04-10 11:00:08',NULL,0),(154,'Hellas Confidence Shipmanagement S.A','H019','Maria Tsilika','0030 210 9859384','2018-04-10 11:00:08',NULL,0),(155,'Henok Fashion Ltd','H020','Eric','254 715 435 810','2018-04-10 11:00:08',NULL,0),(156,'Hydroturf East Africa Ltd','H021','Philip Ochola','742961657','2018-04-10 11:00:08',NULL,0),(157,'ISK Shipping Limited','I040','','4362','2018-04-10 11:00:08',NULL,0),(158,'Island View Shipping (Singapore)','I041','Stuart Frost','+65 6632 1316','2018-04-10 11:00:08',NULL,0),(159,'Institute of Chartered Ship Brokers (E.A) ','I042','Mercy','-2224609','2018-04-10 11:00:08',NULL,0),(160,'International Shipping and Logistics FZE ','I043','Partha S Pal','+971 4 4508953  Ext 115 ','2018-04-10 11:00:08',NULL,0),(161,'IVK Manuport Logistics LLC','I044','','+971 4 2594884','2018-04-10 11:00:08',NULL,0),(162,'I. Messina (K) Ltd. ','I046','Peter Kwinga','041-2319640/1/2, 020-2434','2018-04-10 11:00:08',NULL,0),(163,'IHB Shipping Co. Ltd','I047','Georgi Sivkov','+359 52 912 968','2018-04-10 11:00:08',NULL,0),(164,'Inspectorate (E.A) Ltd','I048','Kyalo Ilunga','2.54722E+11','2018-04-10 11:00:08',NULL,0),(165,'Interchart Shipping Co Ltd.','I049','Michael Taliotis','+357 25 381560','2018-04-10 11:00:08',NULL,0),(166,'IDC Denizcilik Sanayi Ve Tic. A.S.','I050','Ersan Erdogan',' +90  232  441 50 50','2018-04-10 11:00:08',NULL,0),(167,'Inchcape Shipping Services ','I052','','4362','2018-04-10 11:00:08',NULL,0),(168,'Intercities Freight & Shipping Ltd','I053','Jacob K. Theuri','2.54723E+11','2018-04-10 11:00:08',NULL,0),(169,'IHB Shipping Chartering','I054','K.Gunchev','4362','2018-04-10 11:00:08',NULL,0),(170,'Intermarine Shipping DMCC','I055','','+971 4 4366500','2018-04-10 11:00:08',NULL,0),(171,'Interagro (K) Limited','I056','','4362','2018-04-10 11:00:08',NULL,0),(172,'IMC Shipping Co Pte Ltd','I057','','-6246','2018-04-10 11:00:08',NULL,0),(173,'Insight Maritime DMCC Dubai','I058','Mr. Binu','+97 144430305','2018-04-10 11:00:08',NULL,0),(174,'ISL Dubai ','I059','Partha S Pal','4362','2018-04-10 11:00:08',NULL,0),(175,'IMT International Mining & Trading AG','I060','Gritt Burger','+41 55 220 2000','2018-04-10 11:00:08',NULL,0),(176,'IS-BIR Shipping & Trading Co.','I061','Aysel CETIN','+90216 442 3373','2018-04-10 11:00:08',NULL,0),(177,'Island View Shipping Singapore','I062','Stuart Frost','+65 6632 1316','2018-04-10 11:00:08',NULL,0),(178,'Indoors East Africa Ltd','I064','Mr Omar','733746810','2018-04-10 11:00:08',NULL,0),(179,'Inlaco Japan Co Ltd','I065','Xuan Ha (Mr)','8.18013E+11','2018-04-10 11:00:08',NULL,0),(180,'Iskenderum Ship Management','I066','Berk Bulgan','0090 543 395 54 04','2018-04-10 11:00:08',NULL,0),(181,'Inmar Shipping & Logistics Pvt Ltd','I067','Balraj','+91 44 65515055','2018-04-10 11:00:08',NULL,0),(182,'Icare International Ltd','I068','Augustine','717193863','2018-04-10 11:00:08',NULL,0),(183,'International Materials MEIO','I069','Ibraheem Salahudeen','+971 4 2314181','2018-04-10 11:00:08',NULL,0),(184,'Joru Laboratory Supplies','J029','John ','P.O Box 14296','2018-04-10 11:00:08',NULL,0),(185,'Jamii Telecommunications Limited','J032','Japheth Tirop /Jackson ','P.O Box 47419-00100  Nbi','2018-04-10 11:00:08',NULL,0),(186,'Jacky Line Shipping Ltd','J053','Yuri Rivkin','+ 972 0 3-568-1738','2018-04-10 11:00:08',NULL,0),(187,'Jubilee Jumbo Hardware Ltd','J054','MAUREEN ','254 57 2021162','2018-04-10 11:00:08',NULL,0),(188,'Jewisache General Supply Co. Ltd','J055','JESSICA SAMUEL','+255 786845586','2018-04-10 11:00:08',NULL,0),(189,'Just Essentials Ltd','J059','','4362','2018-04-10 11:00:08',NULL,0),(190,'Joru Laboratory Limited','J060','','4362','2018-04-10 11:00:08',NULL,0),(191,'Jiangsu Far East Shipping Co. Ltd ','J062','ALEX LEE','86 25 84787553/84787530','2018-04-10 11:00:08',NULL,0),(192,'Jenlor International LLC','J063','Daniel  Uzcategui','-9574','2018-04-10 11:00:08',NULL,0),(193,'J. Lauritzen Singapore Pte. Ltd.','J064','Rasmus Christoffer Hansen','+65 6572 9170','2018-04-10 11:00:08',NULL,0),(194,'Johann M.K.  Blumenthal  GMBH & CO. KG','J065','Anastasios Karagiannis ','+49 40 80 90 60 5-90 ','2018-04-10 11:00:08',NULL,0),(195,'Jaldhi Overseas Pte Ltd','J066','Murali','+65 6223 8929','2018-04-10 11:00:08',NULL,0),(196,'Jaldhi Overseas Singapore Pte Ltd','J067','Nur Azan','+ 65 6223 8929','2018-04-10 11:00:08',NULL,0),(197,'Janchart Shipping A/S ','J068','','+45 7554 0099','2018-04-10 11:00:08',NULL,0),(198,'Jiangsu Steamship Company Ltd','J069','Blair Chen','-56360237','2018-04-10 11:00:08',NULL,0),(199,'Jua Letu Renewables Ltd','J070','','4362','2018-04-10 11:00:08',NULL,0),(200,'Jindal Saw Limited','J071','CJ Singh','91-9610077200','2018-04-10 11:00:08',NULL,0),(201,'K.B Saghani ','K028','Babu Sanghani','020 537663','2018-04-10 11:00:08',NULL,0),(202,'Korea Shipping Limited','K039','Mr K.C Kim','4362','2018-04-10 11:00:08',NULL,0),(203,'Kopak Shipping Limited','K053','','9.23123E+11','2018-04-10 11:00:08',NULL,0),(204,'Larus S.A','K054','G. Livanios','2104287315','2018-04-10 11:00:08',NULL,0),(205,'Kalee Limited','K068','','4362','2018-04-10 11:00:08',NULL,0),(206,'Komsol Limited','K069','PETER MAINA','4362','2018-04-10 11:00:08',NULL,0),(207,'Kephis','K070','LEWIS BOR','+254 20 3597201/2/3','2018-04-10 11:00:08',NULL,0),(208,'Kenya Electricity Transmission Company Limited','K071','','4362','2018-04-10 11:00:08',NULL,0),(209,'Ken-Spore Limited','K077','','4362','2018-04-10 11:00:08',NULL,0),(210,'Karlog Shipping ','K078','GEORGE SIMBOURAS','4362','2018-04-10 11:00:08',NULL,0),(211,'Kenya Marine Contractors EPZ','K079','','4362','2018-04-10 11:00:08',NULL,0),(212,'KON-QUEST PIRAEUS ','K081','A.SIROPOULOS','+210 4182025 ','2018-04-10 11:00:08',NULL,0),(213,'Kaf Marine Chartering','K082','DENIZ ALTINGUL','+ 90 324 2390234/23826','2018-04-10 11:00:08',NULL,0),(214,'Kenya General Industries ','K083','Mr.Patel ','2.54722E+11','2018-04-10 11:00:08',NULL,0),(215,'Kensalt Limited','K084','','041-3433004','2018-04-10 11:00:08',NULL,0),(216,'Khetshi Dharamshi & Company Ltd','K085','','4362','2018-04-10 11:00:08',NULL,0),(217,'KB Sanghani and Sons ','K086','Nunu Sanghani','+254 73 519 444','2018-04-10 11:00:08',NULL,0),(218,'Karsan Ramji & Sons Ltd','K088','Kisor Warsani ','+254-750872953.','2018-04-10 11:00:08',NULL,0),(219,'Kingstar Shipping Limited ','K089','Shuring Chan ','+(852) 2576 2611','2018-04-10 11:00:08',NULL,0),(220,'Kalyan Shipping Ltd','K090','Jestine Joseph','97144313501','2018-04-10 11:00:08',NULL,0),(221,'KANSA MARITIME LLP','K091','','Imran Bachoo','2018-04-10 11:00:08',NULL,0),(222,'Louis Dreyfus Commodities Services ','L078','Attn Accounting dept','4362','2018-04-10 11:00:08',NULL,0),(223,'Lauritzen Bulkers','L081','','+ 45 3396 8336 ','2018-04-10 11:00:08',NULL,0),(224,'Laskaridis Shipping Co. Ltd.','L082','','+30 210 6284 204','2018-04-10 11:00:08',NULL,0),(225,'LarfageHolcim Trading Ltd','L083','Jean Jose Pedreira','+41 442 25 62 86','2018-04-10 11:00:08',NULL,0),(226,'LBH Mozambique (Nacala)','L084','Antonie Briel',' +258 26 526 797 ','2018-04-10 11:00:08',NULL,0),(227,'Loxera Advisory Services Ltd','L085','Sammy Kiriru','4362','2018-04-10 11:00:08',NULL,0),(228,'Larus Piraeus PH','L087','','+30 210 4287316','2018-04-10 11:00:08',NULL,0),(229,'Mombasa Cement Limited','M023','Jitendra Shah','020 202420/3862','2018-04-10 11:00:08',NULL,0),(230,'Tata Chemicals Magadi','M037','','254  20  6999000','2018-04-10 11:00:08',NULL,0),(231,'Ocean Maritime','M040','','4362','2018-04-10 11:00:08',NULL,0),(232,'Midwest Ventures Limited','M043','','256 41 4232763','2018-04-10 11:00:08',NULL,0),(233,'Manuchar Kampalaala Cement','M045','Subu ','-404117','2018-04-10 11:00:08',NULL,0),(234,'Marimed Agencies','M055','G. Subudhi','97165263312','2018-04-10 11:00:08',NULL,0),(235,'Manuchar Steel NV','M077','','','2018-04-10 11:00:08',NULL,0),(236,'MUR Shipping','M080','Arzan','+971 4 341 5701','2018-04-10 11:00:08',NULL,0),(237,'ijing ','M082','Xu Bin (??)',' 86 -10-85276986 ','2018-04-10 11:00:08',NULL,0),(238,'Marlow Navigations Co. Ltd','M083','Nicoletta Constantinou','+357 25 882274','2018-04-10 11:00:08',NULL,0),(239,'Mebs International Usd','M085','NICK REIFF','','2018-04-10 11:00:08',NULL,0),(240,'Muranga Forwarders Ltd','M121','','4362','2018-04-10 11:00:08',NULL,0),(241,'Maritime Asset Security and Training (MAST) Ltd','M122','Derek Roberts','+253 77671253','2018-04-10 11:00:08',NULL,0),(242,'Marimed Shipping (India) Pvt. Ltd. ','M129','Dattaram Walvankar ',' +91-98677 60636 ','2018-04-10 11:00:08',NULL,0),(243,'Mediship Limited','M131','Mr. Wang Jiawei','-84585806','2018-04-10 11:00:08',NULL,0),(244,'Meridian Global Consulting LLC','M132','','4362','2018-04-10 11:00:08',NULL,0),(245,'Mahmut Resit Ustun ','M133','','4362','2018-04-10 11:00:08',NULL,0),(246,'Multiple Solutions Ltd A/C Kampala Cement, Uganda','M135','Kennedy Elazia ','4362','2018-04-10 11:00:08',NULL,0),(247,'Multiple ICD Kenya Limited.','M136','','+254 715 546022 ','2018-04-10 11:00:08',NULL,0),(248,'Maritime Freight Co Ltd','M146','','254 41 2220075 ','2018-04-10 11:00:08',NULL,0),(249,'Misuga Kaiun (HK) Limited','M148','Ajay Naik','+ 852  34202340','2018-04-10 11:00:08',NULL,0),(250,'MID-SHIP Group LLC ','M149','','+351.291.098.242 ','2018-04-10 11:00:08',NULL,0),(251,'MEDIBULK SA-PIRAEUS','M150','','4362','2018-04-10 11:00:08',NULL,0),(252,'MEADWAY SHIPPING & TRADING INC.','M151','',' +30211 5007100 ','2018-04-10 11:00:08',NULL,0),(253,'Mirage Shipping SA ','M152','','+41 22 509 1783 ','2018-04-10 11:00:08',NULL,0),(254,'Mandarine Ocean Limited','M153','Marco Zhou','+862 168415818','2018-04-10 11:00:08',NULL,0),(255,'Marbrokers Chartering','M156','Charles Dixey ','30 210 6090 744','2018-04-10 11:00:08',NULL,0),(256,'Modion Maritime Management S.A. ','M158','Cpt. Athanasiadis Dimitris','4362','2018-04-10 11:00:08',NULL,0),(257,'Multiple Solutions Ltd  a/c BUCECO','M163','Kennedy Elazia','4362','2018-04-10 11:00:08',NULL,0),(258,'Mehta Electricals Limited-USD','M165','Nishma B. Mehta','2.54721E+11','2018-04-10 11:00:08',NULL,0),(259,'Mehta Electricals Ltd-KES','M166','Nishma B. Mehta','4362','2018-04-10 11:00:08',NULL,0),(260,'Mercurius Shipping GmbH','M170','Jonas Zukauskas','+49  30  65 66 81 -81','2018-04-10 11:00:08',NULL,0),(261,'Multiship International Ltd','M174','Captain Singh','2.54412E+11','2018-04-10 11:00:08',NULL,0),(262,'Macor Shipping Sdn Bhd','M176','Jacky','+603 6201 0139/0187','2018-04-10 11:00:08',NULL,0),(263,'Multiple Solutions Ltd - KES','M179','Kennedy Elazia','4362','2018-04-10 11:00:08',NULL,0),(264,'Marfin Management S.A.M','M180','Simon Trowel','+377 93 106 106','2018-04-10 11:00:08',NULL,0),(265,'Menengai Oil Refineries Ltd','M181','','512212356','2018-04-10 11:00:08',NULL,0),(266,'Mo Shipping Norway','M186','Marco Zhou','+86 13918201528','2018-04-10 11:00:08',NULL,0),(267,'Muthaiga Golf Club','M187','Michael','722168720','2018-04-10 11:00:08',NULL,0),(268,'Maisha Mabati Mills Ltd','M188','','4362','2018-04-10 11:00:08',NULL,0),(269,'Maisha Packaging Company Ltd','M189','','4362','2018-04-10 11:00:08',NULL,0),(270,'Multiple ICD (K) Limited','M190','Gideon C. Koech','2.54727E+11','2018-04-10 11:00:08',NULL,0),(271,'National Cement Co Ltd-USD','N005','Mr Lokesh','254  20  25 29 553/4/5/6','2018-04-10 11:00:08',NULL,0),(272,'Northern Uganda Auricul Centre','N078','','4362','2018-04-10 11:00:08',NULL,0),(273,'Newport Chartering Ltd','N080','Nikos','+30-210 4111192 ','2018-04-10 11:00:08',NULL,0),(274,'Nordic Bulk Carriers A/S','N081','HENRIK HOLLESEN','+45 3910 0811','2018-04-10 11:00:08',NULL,0),(275,'National Cement Company Ltd','N082','Mr.Chandresh Jagad, F.D','+254  0  733 777 002','2018-04-10 11:00:08',NULL,0),(276,'NYK Global Bulk Corporation','N083','Tatsuya Kitani ','81-90-7251-1360','2018-04-10 11:00:08',NULL,0),(277,'Nirav Agencies ','N084','','4362','2018-04-10 11:00:08',NULL,0),(278,'NORDEN Shipping (Singapore) Pte. Ltd              ','N085','BingZong , Aw','+65 6395 4462','2018-04-10 11:00:08',NULL,0),(279,'Norvic Shipping North America Inc.','N087','','+91 120-482-0200','2018-04-10 11:00:08',NULL,0),(280,'Noble Group Limited - Geneva','N088','VASSILIS XANTHIS','+41 21/331 0890','2018-04-10 11:00:08',NULL,0),(281,'NIOVIS SHIPPING CO. S.A.','N089','Giannis Theodorou','+30 210 4285 831','2018-04-10 11:00:08',NULL,0),(282,'Navig8 Bulk Asia Pte Ltd','N090','CK HAN','+65  6622 0089','2018-04-10 11:00:08',NULL,0),(283,'Natural Operation','N091','BUHARI  KACAN',':+90 216 380 3700','2018-04-10 11:00:08',NULL,0),(284,'Norden India, Handymax Chartering','N092','Hardik Sanghvi','+91 22 28329189','2018-04-10 11:00:08',NULL,0),(285,'Norden Shipping (Shanghai) Representative Office','N093','','4362','2018-04-10 11:00:08',NULL,0),(286,'Navigation Maritime Bulgare','N094','Boris Shabarkov','+359 52 683 284','2018-04-10 11:00:08',NULL,0),(287,'Nordica International Ltd','N095','','4362','2018-04-10 11:00:08',NULL,0),(288,'NG Shipping & Trading Ltd','N096','','+90 216 416 50 38','2018-04-10 11:00:08',NULL,0),(289,'Navision Chartering ','N097','Mads Martedal Poulsen','+45 3977 1193','2018-04-10 11:00:08',NULL,0),(290,'Norden Tankers & Bulkers ','N099','Peter Koch Hansen','+9 22 2832 9188','2018-04-10 11:00:08',NULL,0),(291,'Norvic Shipping India Private Ltd','N100','Shailesh  Dewan','+91 120 482 0200','2018-04-10 11:00:08',NULL,0),(292,'Navina Maritime S.A','N101','','4362','2018-04-10 11:00:08',NULL,0),(293,'Ocean Bulk Shipping LLC','O080','','4362','2018-04-10 11:00:08',NULL,0),(294,'Ocean Marine Shipping','O082','','4362','2018-04-10 11:00:08',NULL,0),(295,'Orion Bulkers gmbh & Co. ','O083','Dirk Hartje','4362','2018-04-10 11:00:08',NULL,0),(296,'Occidental Insurance Co. Ltd','O084','','4362','2018-04-10 11:00:08',NULL,0),(297,'Oras Denizcilik ve Ticaret Ltd (Sti)','O087','Faruk','+90 216 327 44 75','2018-04-10 11:00:08',NULL,0),(298,'Oldendorff Luebeck,Port d/a department','O088','Patrick Eggers','+49 451 15 00 0','2018-04-10 11:00:08',NULL,0),(299,'Ocean Breeze Chartering S.A','O090','Stelios Kamvas - Dry Cargo Cha','+ 30 6944 334032 ','2018-04-10 11:00:08',NULL,0),(300,'Orion Shipmanagement Trading Ltd. Istanbul','O091','Capt. Colakel','+90 532 7010650','2018-04-10 11:00:08',NULL,0),(301,'OVERSEAS MARINE ENT. INC. ','O093','Panayiotis','+30 210 9681322 ','2018-04-10 11:00:08',NULL,0),(302,'Orient shipping Rotterdam B.V','O094','P.W Soet','+31 104116338','2018-04-10 11:00:08',NULL,0),(303,'Orb Energy Private Ltd','O095','Daniel Njoroge','+254 722 924 954','2018-04-10 11:00:08',NULL,0),(304,'One Acre Fund ','O096','JULIA FRANKLIN','4362','2018-04-10 11:00:08',NULL,0),(305,'One Acre Fund','O097','Naomi','2.54722E+11','2018-04-10 11:00:08',NULL,0),(306,'Pendulum Ship management Inc','P057','Capt. A. paburas','4362','2018-04-10 11:00:08',NULL,0),(307,'Protex Epz (K) Limited-KES','P074','Lawrence','045 6622345','2018-04-10 11:00:08',NULL,0),(308,'Parbat Siyani Construction Ltd','P075','','4362','2018-04-10 11:00:08',NULL,0),(309,'PoolShop EA Limited','P076','Joseph','721233079','2018-04-10 11:00:08',NULL,0),(310,'Parbat Siyani Construction Limited-Kes','P080','','4362','2018-04-10 11:00:08',NULL,0),(311,'PETRASCO','P081','Rhonda Reekie ','+ 44  1224  337736 ','2018-04-10 11:00:08',NULL,0),(312,'Pan Afica Chemicals Ltd','P082','VISHAL DAWDA','-726740920','2018-04-10 11:00:08',NULL,0),(313,'Pancoast Trading (Singapore) PTE Ltd','P085','Anders Johannsen','6564115658','2018-04-10 11:00:08',NULL,0),(314,'Pan African Syndicate Limited','P088','','4362','2018-04-10 11:00:08',NULL,0),(315,'Prime Transport Ltd','P089','','4362','2018-04-10 11:00:08',NULL,0),(316,'Packaging Industries','P090','','4362','2018-04-10 11:00:08',NULL,0),(317,'PACMAR SINGAPORE','P092','Nejdet','6562483115','2018-04-10 11:00:08',NULL,0),(318,'Planfreight International ','P093','','4362','2018-04-10 11:00:08',NULL,0),(319,'Phaethon International Limited','P094','YEGOR ROGOVENKO','-799.1369863','2018-04-10 11:00:08',NULL,0),(320,'P.N Mashru Ltd','P095','Francis Mulilli','-291483.7143','2018-04-10 11:00:08',NULL,0),(321,'Poolshop EA Limited ','P096','','4362','2018-04-10 11:00:08',NULL,0),(322,'Pak Mumtaz Uganda Ltd','P097','','256 772 923277','2018-04-10 11:00:08',NULL,0),(323,'P.K.KAKOULIDIS SHIPPING Co. LTD.','P098','THANOS','+ 30-210 4290610 ','2018-04-10 11:00:08',NULL,0),(324,'Pacific Basin Shipping (South Africa) (Pty) Ltd','P099','Chris Martin',' +27  31  764 2670 ','2018-04-10 11:00:08',NULL,0),(325,'Pollen Limited','P100','','4362','2018-04-10 11:00:08',NULL,0),(326,'Pearl k Shipping Company Ltd','P101','Roumen Boyadjiev','+359 888 576784','2018-04-10 11:00:08',NULL,0),(327,'PACMAR - SINGAPORE   ','P102','Nejdet','+65 6248 3115','2018-04-10 11:00:08',NULL,0),(328,'Peter Doehle Schiffahrts - KG','P103','Christian Kotter','49 40 38 108 768','2018-04-10 11:00:08',NULL,0),(329,'Precious Shipping Public Company Limited ','P104','Capt. Nopphong Ratanachaiphorn','-6968748','2018-04-10 11:00:08',NULL,0),(330,'Prote.A.S. Maritime','P106','Iro Karavasili','+30 210 9689977','2018-04-10 11:00:08',NULL,0),(331,'Pacific Basin Shipping Middle East DMCC ','P107','Mukesh Kumar','4362','2018-04-10 11:00:08',NULL,0),(332,'Peakward Enterprises (Holdings) Ltd','P108','Okan BAYER','+90 532 581 9339 ','2018-04-10 11:00:08',NULL,0),(333,'Pacific World Shipping Pte Ltd','P109','Fahad Shamim','97144356964','2018-04-10 11:00:08',NULL,0),(334,'Polimax Services Limited','P110','MR FARAJ ','0727 618869','2018-04-10 11:00:08',NULL,0),(335,'Prime Steel Mills Ltd','P111','Mr. Chandresh Jagad','+254 700 331 175','2018-04-10 11:00:08',NULL,0),(336,'Pacific Ship Managers Malaysia SDN BHD','P112','','4362','2018-04-10 11:00:08',NULL,0),(337,'Pan Ocean Company Ltd','P113','','+82.2.316.5395 ','2018-04-10 11:00:08',NULL,0),(338,'Pro Shipping Inc c/o Portline Bulk International S','P114','MARIO SILVA','+351 21 839 18 28','2018-04-10 11:00:08',NULL,0),(339,'Primebulk Shipmanagement Ltd','P115','Capt. George','+ 30 210 6202849','2018-04-10 11:00:08',NULL,0),(340,'Pan Ocean Co. Ltd','P117','J.H. Kim','8223165362','2018-04-10 11:00:08',NULL,0),(341,'Probulk Shipping & Trading ','P118','Ioakim Xydas','3.0213E+11','2018-04-10 11:00:08',NULL,0),(342,'Pan Ocean Co., Ltd','P119','Mr. Sarang Jung','8223165398','2018-04-10 11:00:08',NULL,0),(343,'Portobello Shipping & Trading','P120','Geir Laupsa','+27 83 2878737','2018-04-10 11:00:08',NULL,0),(344,'Parbat Siyani Interiors Ltd-KES','P121','','2.54203E+11','2018-04-10 11:00:08',NULL,0),(345,'Parbat Siyani Interiors Ltd-USD','P122','','4362','2018-04-10 11:00:08',NULL,0),(346,'Polaris Shipping Co Ltd','P125','Wayne Park ','+82 2 2003 10554','2018-04-10 11:00:08',NULL,0),(347,'Pola Maris NV','P126','Stefan Nys','+30 4758 50923','2018-04-10 11:00:08',NULL,0),(348,'Quest Works Limited','Q001','Anne Muregi','0728-623102','2018-04-10 11:00:08',NULL,0),(349,'Quest Works Limited','Q002','Anne Muregi','0728-623102','2018-04-10 11:00:08',NULL,0),(350,'Quynh Le Do','Q003','Quynh Le Do','4362','2018-04-10 11:00:08',NULL,0),(351,'Riftcot Limited','R008','Vishal Khagram','+ 254 20 445 2270','2018-04-10 11:00:08',NULL,0),(352,'Ryce Southern Sudan Ltd','R009','','4362','2018-04-10 11:00:08',NULL,0),(353,'Red Four Group','R010','Dave','4362','2018-04-10 11:00:08',NULL,0),(354,'Ryce Southern Sudan Ltd','R011','','4362','2018-04-10 11:00:08',NULL,0),(355,'Rubber Products Ltd','R013','','020 557173/2229982','2018-04-10 11:00:08',NULL,0),(356,'Evergreen-Round The World Logistics Corp (M)SDNBHD','R016','','4362','2018-04-10 11:00:08',NULL,0),(357,'Revital Healthcare (EPZ) Ltd','R017','Francisca','4362','2018-04-10 11:00:08',NULL,0),(358,'Roofing Ltd','R018','Krishna Das','4362','2018-04-10 11:00:08',NULL,0),(359,'Ruman Shipcontractors Limited','R019','Mohammed Mansoor ','+722 251 598','2018-04-10 11:00:08',NULL,0),(360,'Reem Maritime Ltd','R020','MOHAMAD ESMAEIL','+963 43 215562/3','2018-04-10 11:00:08',NULL,0),(361,'R K Sanghani ','R021','NUNU SANGHANI','4362','2018-04-10 11:00:08',NULL,0),(362,'Ripe Freight Services Ltd','R022','','4362','2018-04-10 11:00:08',NULL,0),(363,'Reliable Freight Services','R023','','4362','2018-04-10 11:00:08',NULL,0),(364,'Rapid Kate Services Ltd','R024','','4362','2018-04-10 11:00:08',NULL,0),(365,'Regal Freighters ','R025','Issa Odhowa Aden','+254 721 217 655','2018-04-10 11:00:08',NULL,0),(366,'Richstone Hellas Limited','R026','Dimitris Meletis','+30 210 4280343 ','2018-04-10 11:00:08',NULL,0),(367,'Ruman Shipcontractors Ltd (Ksh)','R027','Mr. Mansoor','4362','2018-04-10 11:00:08',NULL,0),(368,'Rana Shipping','R028','','4362','2018-04-10 11:00:08',NULL,0),(369,'Roche Transport & Logistics Ltd','R029','ALi Hussein Shire','4362','2018-04-10 11:00:08',NULL,0),(370,'Rai Cement Limited','R030','RAKESH WATS','4362','2018-04-10 11:00:08',NULL,0),(371,'Reederei Gebr Winter GmbH & Co KG','R031','Malgorzata Mackiewicz-Beker','4362','2018-04-10 11:00:08',NULL,0),(372,'Royal Yatch Services','R032','C/O Captain Mohammed','4362','2018-04-10 11:00:08',NULL,0),(373,'Remi Maritime Corp','R033','Remi','+30 2104283622','2018-04-10 11:00:08',NULL,0),(374,'Bollore Africa Logistics Kenya LTD','S003','','254 41 34 33 821','2018-04-10 11:00:08',NULL,0),(375,'Osman Shipping LLC','S019','Salma A.K','97165559911','2018-04-10 11:00:08',NULL,0),(376,'Setaf Saget ','S031','Hilbert Gregory','4362','2018-04-10 11:00:08',NULL,0),(377,'Solym Carriers Limited','S046','Mr Mike Papalis','3.06937E+11','2018-04-10 11:00:08',NULL,0),(378,'Sea Trade Agencies limited','S060','Gharib','722871208','2018-04-10 11:00:08',NULL,0),(379,'Seaforth Shipping Services','S061','Patrick Mwamisi','733633520','2018-04-10 11:00:08',NULL,0),(380,'Seven Seas Shipping','S062','Jalal','4362','2018-04-10 11:00:08',NULL,0),(381,'SLH Venus Shipping S.A','S063','Silvia Bertamini','3.02E+11','2018-04-10 11:00:08',NULL,0),(382,'Skywards International Freight','S081','','4362','2018-04-10 11:00:08',NULL,0),(383,'Solym Carriers Ltd','S083','','4362','2018-04-10 11:00:08',NULL,0),(384,'Synresins Limited','S084','','4362','2018-04-10 11:00:08',NULL,0),(385,'Sea Trek Trans PTE Ltd','S085','','4362','2018-04-10 11:00:08',NULL,0),(386,'Sekur Holding Inc','S086','Donald Halilaj',' +30  2104594100','2018-04-10 11:00:08',NULL,0),(387,'Sanghani Ltd ','S087','','4362','2018-04-10 11:00:08',NULL,0),(388,'Sea Globe Management & Trading','S088','','4362','2018-04-10 11:00:08',NULL,0),(389,'Steelwool (Africa) Ltd','S089','020-2017719/20','020-2017719','2018-04-10 11:00:08',NULL,0),(390,'Stile Logistics','S090','Tom ','516-374-7400','2018-04-10 11:00:08',NULL,0),(391,'Shreeji Transporters ','S092','Mr Vimal','4362','2018-04-10 11:00:08',NULL,0),(392,'Sturrock Shipping (Kenya) Ltd','S093','Mercy Chomba','4362','2018-04-10 11:00:08',NULL,0),(393,'Star Bulk','S099','','4362','2018-04-10 11:00:08',NULL,0),(394,'Strategic Bulk Carriers','S102','','4362','2018-04-10 11:00:08',NULL,0),(395,'STX Pan Ocean (America)Inc','S103','','4362','2018-04-10 11:00:08',NULL,0),(396,'Sovereign Logistics Ltd-KES','S104','Pauline Karwirwa','4362','2018-04-10 11:00:08',NULL,0),(397,' Sovereign Logistics Ltd-USD','S105','','4362','2018-04-10 11:00:08',NULL,0),(398,'Steel Rolling Mills Ltd ','S106','','4362','2018-04-10 11:00:08',NULL,0),(399,'Seateam Management PTE Ltd','S107','Capt. Maniego','6.39089E+11','2018-04-10 11:00:08',NULL,0),(400,'Signode Packaging Ltd','S109','LUCIA KAVATA','5022487','2018-04-10 11:00:08',NULL,0),(401,'SESAC SAS','S110','Adeline Binoche (Ms) ','+33 155491600','2018-04-10 11:00:08',NULL,0),(402,'Shurie Trucks Ltd','S112','','4362','2018-04-10 11:00:08',NULL,0),(403,'Silk Road Shipping & Trading Co. Ltd','S113','','4362','2018-04-10 11:00:08',NULL,0),(404,'Shun Shing Dubai Group ','S115','Siddiq Ahmed','+97150 5688108','2018-04-10 11:00:08',NULL,0),(405,'Stan Consulting Group Ltd','S117','Ibrahim','4362','2018-04-10 11:00:08',NULL,0),(406,'Savannah Cement  Limited','S118','Samson Shivina','4362','2018-04-10 11:00:08',NULL,0),(407,'Savannah Cement (EPZ) Ltd ','S119','Ibrahim','4362','2018-04-10 11:00:08',NULL,0),(408,'Shreeji Forwarders Ltd','S120','WILLIAM ','+254 786 330 602','2018-04-10 11:00:08',NULL,0),(409,'Sireen Shipping & Trading Co.Ltd','S121','ISM Department','9616217020','2018-04-10 11:00:08',NULL,0),(410,'Seven Seas(Chartering) Ltd - London','S122','','4362','2018-04-10 11:00:08',NULL,0),(411,'LSS Ltd','S123','Nora Salama','Tel: +30 210 3313155','2018-04-10 11:00:08',NULL,0),(412,'SKYDIVE LOGISTICS','S124','Laban N.','4362','2018-04-10 11:00:08',NULL,0),(413,'Skydive Logistics','S125','','4362','2018-04-10 11:00:08',NULL,0),(414,'Silk Road Shipping & Trading Co Ltd ','S126','Ayham Abu Issa','00962 6 5605228','2018-04-10 11:00:08',NULL,0),(415,'SEATRANS MANAGEMENT ENTERPRISES INC.','S127','P.PISSIAS','-4264410','2018-04-10 11:00:08',NULL,0),(416,'SEACAPE LOGISTICS & MANAGEMENT SERVICES INC.','S128','DAVID PEREIRA','786-797-6190','2018-04-10 11:00:08',NULL,0),(417,'Seacape Shipping & Trading,C/O Seacape Logistics A','S129','C/O SEACAPE LOGISTICS AND MANA','-6201','2018-04-10 11:00:08',NULL,0),(418,'Seabridge Chartering, LLC','S130','Peter A. Thanasoulis','+212.742.0077','2018-04-10 11:00:08',NULL,0),(419,'Superfoam Limited','S157','Mr. Mike Fischer','','2018-04-10 11:00:08',NULL,0),(420,'SuperFoam Limited- usd','S158','Mr. Mike Fischer','0202041346/7/8','2018-04-10 11:00:08',NULL,0),(421,'Sealestial Navigation Co.','S160','Cpt.A.Papadakis','3.0211E+11','2018-04-10 11:00:08',NULL,0),(422,'Savannah Cement Limited','S161','Samson Shivina','','2018-04-10 11:00:08',NULL,0),(423,'Swire Bulk ','S163','Kevin Lisboa','+65 6632 9292','2018-04-10 11:00:08',NULL,0),(424,'Saj Ceramics Ltd','S164','Atul Parmar','+254 721 206 671','2018-04-10 11:00:08',NULL,0),(425,'SMT Shipping','S165','John Egan','+203 599 1530','2018-04-10 11:00:08',NULL,0),(426,'Sanergy Limited','S166','Barrack Onyango','+254 20 6005011','2018-04-10 11:00:08',NULL,0),(427,'Schenker LLC','S167','Peter Lwanga','Tel  +971 4 8879292  ext.','2018-04-10 11:00:08',NULL,0),(428,'Stam Shipping S.A ','S168','Nikos Vlachos','+30 210 4295091','2018-04-10 11:00:08',NULL,0),(429,'Sea commercial Shipping Services S.A','S169','Kostas Bessas','+30 2118889000','2018-04-10 11:00:08',NULL,0),(430,'Segal Shipping Services PVT Ltd','S170','Hardik Paun','+91 2836 220999','2018-04-10 11:00:08',NULL,0),(431,' Royal Court Affairs','S171','Zakariya Sulaiman Abdullah ','+00968 24736801','2018-04-10 11:00:08',NULL,0),(432,'Sam Shipping Management S.A','S172','Kristianna Kolitsida','+30 6986400201','2018-04-10 11:00:08',NULL,0),(433,'Seawind Far East Ltd','S173','Mathias Rottstegge','00852 2385 5397','2018-04-10 11:00:08',NULL,0),(434,'Samos Steamship Co. (As Agents Only)','S174','Capt K. Vougioukas','-9466080','2018-04-10 11:00:08',NULL,0),(435,'Tororo Cement Limited','T015','Jitendra Shah','0414-260184','2018-04-10 11:00:08',NULL,0),(436,'TBS Shipping Services','T044','Ruchir Seth','+1 914 216 3271','2018-04-10 11:00:08',NULL,0),(437,'Thorco Shipping','T064','Hasanah Hardi','6563248660','2018-04-10 11:00:08',NULL,0),(438,'Todwill Kenya ','T065','','4362','2018-04-10 11:00:08',NULL,0),(439,'Tata Africa Holding','T066','','4362','2018-04-10 11:00:08',NULL,0),(440,'Trade & Transport Consortium  Ltd S.A.','T067','Ayman El Said','27797601634','2018-04-10 11:00:08',NULL,0),(441,'IFA-TQ Express Limited','T068','','4362','2018-04-10 11:00:08',NULL,0),(442,'Todwil Kenya','T069','JOHNNY LIMB','733339000','2018-04-10 11:00:08',NULL,0),(443,'Techpak Industries Ltd','T070','','020-551625','2018-04-10 11:00:08',NULL,0),(444,'Thoresen & Co.','T071','Hilo Fujimoto','+66 0  2254-8437','2018-04-10 11:00:08',NULL,0),(445,'TYL Limited','T072','ANNASTASIA GIKUNDA','0203751985/6','2018-04-10 11:00:08',NULL,0),(446,'Two Diamond Enterprises','T074','','718766014','2018-04-10 11:00:08',NULL,0),(447,'Transatlantic Maritime','T075','','4362','2018-04-10 11:00:08',NULL,0),(448,'Translink (U) Ltd','T076','','4362','2018-04-10 11:00:08',NULL,0),(449,'Transporte Multimodal S.A DE C.V','T077','Juan Carlos','4362','2018-04-10 11:00:08',NULL,0),(450,'Trendbulk Chartering and Trading Ltd. ','T078','Yigit Sakir','+ 90 216 688 27 77','2018-04-10 11:00:08',NULL,0),(451,'Trade Magnate ','T079','','4362','2018-04-10 11:00:08',NULL,0),(452,'Tamani Construction Company Limited','T080','DANIEL MBURU','+254020 272 4852','2018-04-10 11:00:08',NULL,0),(453,'Tristar Management Ltd ','T081','','+ 30 210 4599111','2018-04-10 11:00:08',NULL,0),(454,'Tania Holdings Limited','T082','Jessica Kesi','4362','2018-04-10 11:00:08',NULL,0),(455,' Master and Owners Mv JS Danube ','T083','C/O V Ships Asia Group Pte Ltd','4362','2018-04-10 11:00:08',NULL,0),(456,'Target Marine S.A','T085','MICHAEL KARRAS','4362','2018-04-10 11:00:08',NULL,0),(457,'TOPSHEEN SHIPPING GROUP LIMITED','T086','Crystal (Gu Xin)','+86 010 84519089','2018-04-10 11:00:08',NULL,0),(458,'TRANSGRAIN SHIPPING B.V','T088','Peter Heezen','+31 10 4301516','2018-04-10 11:00:08',NULL,0),(459,'Tata Africa Holdings (Kenya) Ltd','T089','','4362','2018-04-10 11:00:08',NULL,0),(460,'TKB Chartering ','T090','Anders Svarrer','+45 3946 3642','2018-04-10 11:00:08',NULL,0),(461,'Thoresen Shipping Singapore (Pte) Ltd','T091','Katerina Kanellopoulou','6597778132','2018-04-10 11:00:08',NULL,0),(462,'Transfreight Logistics Ltd','T094','J. Mbuvi','2.54724E+11','2018-04-10 11:00:08',NULL,0),(463,'Triaena Maritime Security Ltd','T095','Vasilis Tzanis','4362','2018-04-10 11:00:08',NULL,0),(464,'TRANSBULK SHIPPING CORPORATION LIMITED  ','T096','JAY CHEN','-50872017','2018-04-10 11:00:08',NULL,0),(465,'Turquoise Trading & Agency','T097','Hasmet ','4362','2018-04-10 11:00:08',NULL,0),(466,'Twyford Ceramics Company Limited','T098','Kevin Ren','4362','2018-04-10 11:00:08',NULL,0),(467,'Totadex Kenya Ltd','T099','Emmanuel M.','+254 700 000 192','2018-04-10 11:00:08',NULL,0),(468,'Trans Power Co Ltd','T100','Oliver Ren','86 592 238 7660','2018-04-10 11:00:08',NULL,0),(469,'Technomar Shipping Inc ','T101','Sophia Pagali','+30210 6233670','2018-04-10 11:00:08',NULL,0),(470,'Thalkat Shipping S.A ','T102','Aristotelis Ypsilantis','3.02109E+11','2018-04-10 11:00:08',NULL,0),(471,'Trident Plumbers Ltd','T103','','4362','2018-04-10 11:00:08',NULL,0),(472,'THOME SHIP MANAGEMENT PTE LTD','T104','MARLYN C. FRANCISCO','6.39209E+13','2018-04-10 11:00:08',NULL,0),(473,'Techbuilding Group Ltd','T105','Wolgang Manfred','25639201400','2018-04-10 11:00:08',NULL,0),(474,'Tsavo Lite Ltd','T106','Peter Kibe','722387469','2018-04-10 11:00:08',NULL,0),(475,'The Paint Depo','T107','','4362','2018-04-10 11:00:08',NULL,0),(476,'Tsavo Litearthick Kannappan','T108','','','2018-04-10 11:00:08',NULL,0),(477,'Triton Navigation B.V.','T109','Toshiyuki Abe','+31-205752650','2018-04-10 11:00:08',NULL,0),(478,'Tropical Healthcare Ltd','T110','James Nyamweya','+44  0  1268286646','2018-04-10 11:00:08',NULL,0),(479,'United Aryan EPZ Limited','U021','','614-491-0001','2018-04-10 11:00:08',NULL,0),(480,'Unique Air Express','U022','Ravi More','+91 206720000','2018-04-10 11:00:08',NULL,0),(481,'Unilever(K) Ltd','U024','Mr David Dickie','+254 71 5061262','2018-04-10 11:00:08',NULL,0),(482,'United Marine Security','U025','Jose Ojeda ','+1201-3 Ltd','2018-04-10 11:00:08',NULL,0),(483,'USL Shipping  DMC EST ','U026','Krishnan','97142667253','2018-04-10 11:00:08',NULL,0),(484,'Ultrabulk Shipholding PL','U027','William Blunck','+65 63763693','2018-04-10 11:00:08',NULL,0),(485,'United Ocean Ship Management (PVT) Ltd','U028','','','2018-04-10 11:00:08',NULL,0),(486,'United Ocean Ship Management Pte Ltd ','U029','Hasan Iftekhar','-68545516','2018-04-10 11:00:08',NULL,0),(487,'Union Marine Management Services PTE Ltd','U030','Sameer Mahashur','+65 6922 0031','2018-04-10 11:00:08',NULL,0),(488,'Univan Man','U031','254(0)713371197 ','','2018-04-10 11:00:08',NULL,0),(489,'W. Bockstiegel Maritime Service GmbH & Co. KG ','W039','Johann Prahm','4362','2018-04-10 11:00:08',NULL,0),(490,'Worldwide Auctioneers (WWA)','W040','Digamber Naswa','+971 4 881 6142 ','2018-04-10 11:00:08',NULL,0),(491,'White Sea Navigation S.A','W041','WHITE SEA NAVIGATION S.A.','WHITE SEA NAVIGATION S.A.','2018-04-10 11:00:08',NULL,0),(492,'Wasan Shipping ','W042','','4362','2018-04-10 11:00:08',NULL,0),(493,'Wm. Miller\'s Nachfolger (GmbH & Co.) KG','W043','','Tel: +49  0 40 / 36 01 ','2018-04-10 11:00:08',NULL,0),(494,'Wilhemsen Procurement Services','W044','Girish','91 98195998','2018-04-10 11:00:08',NULL,0),(495,'Wilhelmsen Ships Services PTE Ltd','W045','Alvin Ong','+65 63954545','2018-04-10 11:00:08',NULL,0),(496,'Weco Bulk A/S','W046','Joakim G. Larsen','4362','2018-04-10 11:00:08',NULL,0),(497,'Western Bulk Chartering, Singapore ','W047','','4362','2018-04-10 11:00:08',NULL,0),(498,'Wadi Degla Investment (K) Ltd','W048','Joseph','0792 888 888','2018-04-10 11:00:08',NULL,0),(499,'West Kenya Sugar Company Ltd','W049','','-6553.733333','2018-04-10 11:00:08',NULL,0),(500,'Western Steel Mills Ltd','W050','','4362','2018-04-10 11:00:08',NULL,0),(501,'Xianglong Shipping Co. Ltd','X002','Mr Vito Guo','+86 185 6110 3527','2018-04-10 11:00:08',NULL,0),(502,'Yentek Shipping Co. Ltd','Y001','Gokhan Soytekin','4362','2018-04-10 11:00:08',NULL,0),(503,'Yayla Shipping , Istanbul','Y002','Capt.Ertugrul Caglayan','+90 212 283 98 55','2018-04-10 11:00:08',NULL,0),(504,'Yara Ltd','Y003','','4362','2018-04-10 11:00:08',NULL,0),(505,'Zelmar Shipping','Z001','Sezen Gurbuz(Ms)','9.02123E+11','2018-04-10 11:00:08',NULL,0),(506,'Zodiac Maritime Agencies Ltd','Z002','VICTOR SORESCU','+44-207 333 2361','2018-04-10 11:00:08',NULL,0),(507,'Zahra Maritime Services Co.','Z003','Captain Asib','+963 43 316778 / 213495','2018-04-10 11:00:08',NULL,0),(508,'D/S NORDEN A/S   ','D060','Jesper Rosenlund','+45  3095 7070','2018-04-10 11:00:08',NULL,0),(509,'Elgon Kenya Limited ','E089','Mr. Ashok Reddy','4362','2018-04-10 11:00:08',NULL,0),(510,'GRECOMAR SHIPPING AGENCY LTD','G029','','+30 210 8986160 ','2018-04-10 11:00:08',NULL,0),(511,'Amer Abdalla','ise Dreyfus C/o Baba','','','2018-04-10 11:00:08',NULL,0),(512,'Lighthouse Navigation PTE Ltd','L076','Amar Deep','6626543100','2018-04-10 11:00:08',NULL,0),(513,'Logistics Three Sixty Five Limited ','L077','Imran Bachoo','+254  0 20 261 6211','2018-04-10 11:00:08',NULL,0),(514,'Mitchell Cotts Freight Kenya Limited','M107','','254   041  2316826;','2018-04-10 11:00:08',NULL,0),(515,'Mer Union NV - Antwerp','M113','','4362','2018-04-10 11:00:08',NULL,0),(516,'Marine Transport','M114','Tassos Raissis','+30 210 4584817','2018-04-10 11:00:08',NULL,0),(517,'Spedag Interfreight K Limited','S131','GODFREY YENGO','2.5473E+11','2018-04-10 11:00:08',NULL,0),(518,'Spear Logistics Kenya Ltd','S133','Robina','+254 720 450 447','2018-04-10 11:00:08',NULL,0),(519,'SIVA Bulk ','S134','Satheesh. J','9.12268E+11','2018-04-10 11:00:08',NULL,0),(520,'SEATREK TRANS PTE LTD.','S135','BH SEO','+65 6692 0089 ','2018-04-10 11:00:08',NULL,0),(521,'Seabulk Shipping Services Ltd','S136','Capt. Abubakar ','254 723786261','2018-04-10 11:00:08',NULL,0),(522,'Starbulk S.A.','S137','Capt. Nikolaos Thomatos','+30 210 61 78 400','2018-04-10 11:00:08',NULL,0),(523,'Si32 9292','S138','','','2018-04-10 11:00:08',NULL,0),(524,'Soni Plant Agencies ','S139','John Soni','','2018-04-10 11:00:08',NULL,0),(525,'SeaStar Chartering','S140','Andreas Chamakiotis','','2018-04-10 11:00:08',NULL,0),(526,'Smit Salvage B.V','S141','Mr J.J Schreurs','','2018-04-10 11:00:08',NULL,0),(527,'Saacke Energy Systems (SHANGHAI) Co. Ltd','S142','Vicky Yang??','+86  0 21 6495 1529 ','2018-04-10 11:00:08',NULL,0),(528,'Sanghi Industries Ltd','S143','AKASH SHAH','','2018-04-10 11:00:08',NULL,0),(529,'SAN VALENCIA LIMITED','S144','','0412312399','2018-04-10 11:00:08',NULL,0),(530,'Swiss Marine Services S.A','S151','SSD','','2018-04-10 11:00:08',NULL,0),(531,'Venturi Fleet Management S.A','V076','Ms Anna Reshetnikova','+30 694201-4846','2018-04-10 11:00:08',NULL,0),(532,'Wilhemsen Ships Services','W016','Daniel Majiba',' +254  41 222 7964 ','2018-04-10 11:00:08',NULL,0),(533,'Worldwide Energy Logistics','W036','Jamie Burt','+44  0 2088670330','2018-04-10 11:00:08',NULL,0),(534,'W.E Tilley (Muthaiga) Ltd','W037','MAUREEN','722649018','2018-04-10 11:00:08',NULL,0),(535,'WCO DTE (Kenya) ','W038','SSgt Grant McFall ','254 0 713371197 ','2018-04-10 11:00:08',NULL,0),(536,'Export Trading Co. Ltd','E087','Danny Chng',' +65 6536 8400 ','2018-04-10 11:00:08',NULL,0),(537,'Equinox Maritime Ltd','E088','GEORGE XIROS','210-6240400','2018-04-10 11:00:08',NULL,0),(538,'Golden Ocean Management Asia PTE. LTD. ','G027','Alex Ku ','6592248188','2018-04-10 11:00:08',NULL,0),(539,'General Cargo Services Ltd','G028','','4362','2018-04-10 11:00:08',NULL,0),(540,'LBH Global Quality Desk ','L073','Eric \'t  Hart','+31 0 10 50 65 038','2018-04-10 11:00:08',NULL,0),(541,'Liebherr-Werk Nenzing GmbH','L074','','4362','2018-04-10 11:00:08',NULL,0),(542,'Louise Dreyfus C/o Baba Shipping Services Ltd','L075','Amer Abdalla','+254 722 897 006','2018-04-10 11:00:08',NULL,0),(543,'Multiple Hauliers (EA) Limited','M103','Shreyesh Dave,General Manager','+254 20 39 44 000','2018-04-10 11:00:08',NULL,0),(544,'Manuchar NV Beijing ','M106','Xu Bin (??)',' 86 -10-85276986 ','2018-04-10 11:00:08',NULL,0),(545,'V. Ships (Ukraine)','V069','Ruslan Tsybin',' +380 48  7340340 ext ','2018-04-10 11:00:08',NULL,0),(546,'Vitol Services Ltd','V070','Capt Rishab Bahl','+ 65 6839 4835','2018-04-10 11:00:08',NULL,0),(547,'VISION CHARTERING S.A.','V071','','+30 210 41 36 685 ','2018-04-10 11:00:08',NULL,0),(548,'VARAMAR LTD','V072','','4362','2018-04-10 11:00:08',NULL,0),(549,'VICTORY SHIPPING PTE. LTD.','V073','Amit Daga','+65 6341 7767','2018-04-10 11:00:08',NULL,0),(550,'V.Ships Asia Group Pte. Ltd.','V074','JOCEV CHONG','4362','2018-04-10 11:00:08',NULL,0),(551,'Victoria Steamship Co. Ltd','V075','Ioanna Liagou','+44 207 977 1710','2018-04-10 11:00:08',NULL,0),(552,'Name','Account','Contact_Person','Telephone','2018-04-10 11:00:08',NULL,0),(553,'V.Ships Asia Group Pte. Ltd.','V074','JOCEV CHONG','4362','2018-04-10 11:00:08',NULL,0),(554,'Victoria Steamship Co. Ltd','V075','Ioanna Liagou','+44 207 977 1710','2018-04-10 11:00:08',NULL,0),(555,'Cargill Ocean Transportation Singapore Pte Ltd','C082','Sachin Matpal','','2018-04-10 11:00:08',NULL,0),(556,'CALTREK FREIGHT','C083','DIMITRIS SPERTOS','','2018-04-10 11:00:08',NULL,0),(557,'COSMOTRANS NAVIGATION S.A. - PIRAEUS/GREECE','C084','','','2018-04-10 11:00:08',NULL,0),(558,'CIMERWA LTD','C085','Sahinkuye Uwizeyimana Déo','','2018-04-10 11:00:08',NULL,0),(559,'Cube Movers Ltd','C096','Davis Muhavi','','2018-04-10 11:00:08',NULL,0),(560,'Cube Movers Ltd','C097','Davis Muhavi','','2018-04-10 11:00:08',NULL,0),(561,'Centuries Global Consulting ','C100','Anne WAnjiku Muregi','','2018-04-10 11:00:08',NULL,0),(562,'Charterbulk Shipping LLC','C101','Miss Richelle G. Fernando','','2018-04-10 11:00:08',NULL,0),(563,'Dava International','D050','Emma','','2018-04-10 11:00:08',NULL,0),(564,'Del-Ray Cargo Services Ltd','D051','Mohamed Ramadhan','','2018-04-10 11:00:08',NULL,0),(565,'Dodhia Packaging Ltd','D052','GRACE','','2018-04-10 11:00:08',NULL,0),(566,'Dune Packaging Ltd','D053','DIMPLE','','2018-04-10 11:00:08',NULL,0),(567,'EBB - Darka Group of Companies','D054','Mohamed A.M. Osman ','','2018-04-10 11:00:08',NULL,0),(568,'DAC Aviation East Africa Ltd','D056','','','2018-04-10 11:00:08',NULL,0),(569,'D Amico Dry Limited, DA-Desk. ','D058','','','2018-04-10 11:00:08',NULL,0),(570,'Dianik Bross Shipping Corp. S.A.','D059','Violetta Samona','','2018-04-10 11:00:08',NULL,0),(571,'Diamond Shipbrokers Ltd','D084','Alexandros K. Gkogkas','','2018-04-10 11:00:08',NULL,0),(572,'D.G.M Shipping & Chartering','D087','Bhusan Bhattacharjee','','2018-04-10 11:00:08',NULL,0),(573,'Dunhill Impex & Trading Company Ltd','D090','Mahesh Panchani','','2018-04-10 11:00:08',NULL,0),(574,'Digital Packaging Innovations Holdings Ltd','D091','Meeraj Shah','','2018-04-10 11:00:08',NULL,0),(575,'Export Trading Co Inputs Kenya Ltd','E006','Mr Kalpesh Patel Mr Ganesh','','2018-04-10 11:00:08',NULL,0),(576,'Expolanka Freight K Limited','E027','Pinus Mokaya','','2018-04-10 11:00:08',NULL,0),(577,'Oerssleffs Eftf A/S','E056','Benn Moreno','','2018-04-10 11:00:08',NULL,0),(578,'Expolanka Freight Limited','E072','Pinus Mokaya','','2018-04-10 11:00:08',NULL,0),(579,'Energy Shipping spa ','E073','','','2018-04-10 11:00:08',NULL,0),(580,'Empower Installation Contractors Ltd','E078','','','2018-04-10 11:00:08',NULL,0),(581,'Elegant Packaging Ltd','E081','AYUB VARWANI','','2018-04-10 11:00:08',NULL,0),(582,'Elegance Packaging Limited','E082','','','2018-04-10 11:00:08',NULL,0),(583,'Eastern Bulk Carriers AS – Norway','E083','','','2018-04-10 11:00:08',NULL,0),(584,'ELB Logistics Gmbh','E084','Sören Möller','','2018-04-10 11:00:08',NULL,0),(585,'Express Chartering & Shipping Ltd ','E085','Aston','','2018-04-10 11:00:08',NULL,0),(586,'Falcon Maritime A/S Copenhagen','F061','Claus Bjarnested','','2018-04-10 11:00:08',NULL,0),(587,'Fresh Life Initiative Ltd','F062','','','2018-04-10 11:00:08',NULL,0),(588,'Fairwind International Shipping Company','F063','Vicky Wang','','2018-04-10 11:00:08',NULL,0),(589,'Fresh Life Initiative Ltd','F064','','','2018-04-10 11:00:08',NULL,0),(590,'Global text Africa Ltd','G013','Mr. Kioko','','2018-04-10 11:00:08',NULL,0),(591,'Global Paper Product Limited','G014','MUSTAFA M ESMAILJI','','2018-04-10 11:00:08',NULL,0),(592,'G Bulk Corp','G015','','','2018-04-10 11:00:08',NULL,0),(593,'Guardian Bank Ltd a/c Eagle Retread Limited','G016','','','2018-04-10 11:00:08',NULL,0),(594,'Gimbco Freight Limited','G017','Mr.Gitonga','','2018-04-10 11:00:08',NULL,0),(595,'Gedenlines','G018','Sai','','2018-04-10 11:00:08',NULL,0),(596,'Goodearth Maritime Ltd ','G019','','','2018-04-10 11:00:08',NULL,0),(597,'Gemini Chartering & Trading Ltd - Turkey ','G020','CAN','','2018-04-10 11:00:08',NULL,0),(598,'Gulf of Aden Group Transits LTD','G021','Kevin  Cerullo','','2018-04-10 11:00:08',NULL,0),(599,'G. D’ALESIO s.a.s.','G022','Capt. Giuseppe Pasciuto','','2018-04-10 11:00:08',NULL,0),(600,'GAC Global Hub Services (DMCC Branch) ','G026','Xavier Vikram ','','2018-04-10 11:00:08',NULL,0),(601,'Kardeniz & Mardeniz Shipping Managemnet','K092','Ercan Kibar','','2018-04-10 11:00:08',NULL,0),(602,'KOG Transport PVT LTD,','K093','Tabrez Bharde','','2018-04-10 11:00:08',NULL,0),(603,'Koch Carbon Wichita','K095','Dodd Carpenter','','2018-04-10 11:00:08',NULL,0),(604,'Kitengela Glass Research & Training Trust','K096','','','2018-04-10 11:00:08',NULL,0),(605,'Kimanthi Ndwiga Muriuki c/o The Paint Depo','K097','Juster','','2018-04-10 11:00:08',NULL,0),(606,'Kansa Maritime LLP','K098','Sasi Kumar J','','2018-04-10 11:00:08',NULL,0),(607,'Leadarrow S.A','L065','','','2018-04-10 11:00:08',NULL,0),(608,'La Griglia Ltd','L066','','','2018-04-10 11:00:08',NULL,0),(609,'Latek Group','L067','Özcan ÇINAR','','2018-04-10 11:00:08',NULL,0),(610,'Labulux Supplies Ltd','L068','','','2018-04-10 11:00:08',NULL,0),(611,'LaGriglia Limited','L069','','','2018-04-10 11:00:08',NULL,0),(612,'L.A.D.M','L070','JENNY BARON','','2018-04-10 11:00:08',NULL,0),(613,'LPL  Shipping S.A.','L071','Cpt John Alexiadis','','2018-04-10 11:00:08',NULL,0),(614,'Lonestar Consultants EA Ltd','L072','PAUL MWAKISHA','','2018-04-10 11:00:08',NULL,0),(615,'Marimed Shipping (Vietnam) Rep. Office','M087','VAN DANG','','2018-04-10 11:00:08',NULL,0),(616,'Meadway Shipping & Trading Inc. - Athens','M088','','','2018-04-10 11:00:08',NULL,0),(617,'Mebs International','M089','Ann George','','2018-04-10 11:00:08',NULL,0),(618,'Mansel Ltd  c/o Vitol SA ','M090','Agnès Bourdet','','2018-04-10 11:00:08',NULL,0),(619,'Manuchar Kenya Limited','M091','Michael Ndenga','','2018-04-10 11:00:08',NULL,0),(620,'Manuchar Steel N.V Ksh','M092','','','2018-04-10 11:00:08',NULL,0),(621,'Millenium GR Ltd','M093','Cpt Chloros Paris','','2018-04-10 11:00:08',NULL,0),(622,'MLB Manfred Lauterjung Befrachtung GmbH & Co. KG','M094','Anika Samus','','2018-04-10 11:00:08',NULL,0),(623,'Meadway Shipping Singapore Pte Ltd','M096','CAPT. NK','','2018-04-10 11:00:08',NULL,0),(624,'Med Star S R L','M099','','','2018-04-10 11:00:08',NULL,0),(625,'Med Brokerage & Managemet Corp.','M101','','','2018-04-10 11:00:08',NULL,0),(626,'Multiple Solutions Ltd A/C Kampala Cement','M102','Subu ','','2018-04-10 11:00:08',NULL,0),(627,'Sea Vision Shipping Inc.','S152','Fotis Varthalis','','2018-04-10 11:00:08',NULL,0),(628,'Sucres & Denrées','S153','','','2018-04-10 11:00:08',NULL,0),(629,'Stealth Maritime Corporation S.A. ','S154','Capt.Giorgos Trachalakis','','2018-04-10 11:00:08',NULL,0),(630,'Samsun Logix Corporation/ Shipping Business Team ','S155','','','2018-04-10 11:00:08',NULL,0),(631,'Sanergy Limited','S156','Barrack Onyango','','2018-04-10 11:00:08',NULL,0),(632,'United Group Limited','U032','Mr Shani','','2018-04-10 11:00:08',NULL,0),(633,'Ultrabulk (Germany) GmbH','U033','','','2018-04-10 11:00:08',NULL,0),(634,'Vision Africa & Mabadiliko care','V065','','','2018-04-10 11:00:08',NULL,0),(635,'Vitol SA ','V066','Agnès Bourdet','','2018-04-10 11:00:08',NULL,0),(636,'V.Ships (Chennai) Private Limited','V067','Karthick Kannappan','','2018-04-10 11:00:08',NULL,0),(637,'Peter Wachira Irungu','P123','','','2018-04-10 11:00:08',NULL,0),(638,'Aspida Maritime Security Corp.','A123','','','2018-04-10 11:00:08',NULL,0),(639,'M184','M184','','','2018-04-10 11:00:08',NULL,0),(640,'M185','M185','','','2018-04-10 11:00:08',NULL,0),(641,'B079','B079','','','2018-04-10 11:00:08',NULL,0),(642,'D092','D092','','','2018-04-10 11:00:08',NULL,0),(643,'M159','M159','','','2018-04-10 11:00:08',NULL,0),(644,'M160','M160','','','2018-04-10 11:00:08',NULL,0),(645,'Jihan Freighters Ltd','J072','','','2018-04-10 11:00:08',NULL,0),(646,'Ms. Cara Spencer','M191','','','2018-04-10 11:00:08',NULL,0),(647,'United (EA) Warehouses Ltd','U034','','','2018-04-10 11:00:08',NULL,0),(648,'SILVESTER MUSOVYA KUTUTA','1','','','2018-04-10 11:00:08',NULL,0),(649,'CATHERINE ANZAZI LEWA','17','','','2018-04-10 11:00:08',NULL,0),(650,'MOURINE ACHIENG MAGERO','34','','','2018-04-10 11:00:08',NULL,0),(651,'FRANCISCA MUENI NZIOKA','40','','','2018-04-10 11:00:08',NULL,0),(652,'WILLINGTONE MICHAEL WARIO','43','','','2018-04-10 11:00:08',NULL,0),(653,'ALOICE MUOKI KUTUTA','47','','','2018-04-10 11:00:08',NULL,0),(654,'MAUREEN ATIENO OPIYO','48','','','2018-04-10 11:00:08',NULL,0),(655,'ISAAC BABU WATKINS','49','','','2018-04-10 11:00:08',NULL,0),(656,'CHRISPUS MAINGI KILEI','51','','','2018-04-10 11:00:08',NULL,0),(657,'EVANS NGALA CHIBUNGU','55','','','2018-04-10 11:00:08',NULL,0),(658,'LEONARD MWARUWA BAYA','56','','','2018-04-10 11:00:08',NULL,0),(659,'MARTIN KARANI IKIARA','57','','','2018-04-10 11:00:08',NULL,0),(660,'LENROD MWAMBURI MGENDI','65','','','2018-04-10 11:00:08',NULL,0),(661,'JOHN KIPCHUMBA LAGAT','69','','','2018-04-10 11:00:08',NULL,0),(662,'JOYLINAH NDUTA NJERI','73','','','2018-04-10 11:00:08',NULL,0),(663,'DANIEL LUKORITO WANIKINA','76','','','2018-04-10 11:00:08',NULL,0),(664,'STEPHEN OKIKI OMONDI','77','','','2018-04-10 11:00:08',NULL,0),(665,'JUSTUS KALII MUTHEMBWA','78','','','2018-04-10 11:00:08',NULL,0),(666,'PATRICK MUKUNDI MBUGUA','79','','','2018-04-10 11:00:08',NULL,0),(667,'RAYMOND JUMA WANGUNDA','80','','','2018-04-10 11:00:08',NULL,0),(668,'FLORENCE CHEPNGETICH TUEI','81','','','2018-04-10 11:00:08',NULL,0),(669,'KENNEDY KIVUVANI','82','','','2018-04-10 11:00:08',NULL,0),(670,'ERIC OLENSI OLENSI OSINYA','86','','','2018-04-10 11:00:08',NULL,0),(671,'CATHERINE NYAMBURA THUO','87','','','2018-04-10 11:00:08',NULL,0),(672,'GRACE MPOYA','88','','','2018-04-10 11:00:08',NULL,0),(673,'PATRICK MURANGIRI MAGIRI','84','','','2018-04-10 11:00:08',NULL,0),(674,'ERIC MULWA KYALO','89','','','2018-04-10 11:00:08',NULL,0),(675,'IRENE ATIENO OTIENO','91','','','2018-04-10 11:00:08',NULL,0),(676,'MERCYLINE MUTHEU MUTUA','92','','','2018-04-10 11:00:08',NULL,0),(677,'ARSHUR LOMO OWANE','90','','','2018-04-10 11:00:08',NULL,0),(678,'COLLINS ONYANGO PAMBA','93','','','2018-04-10 11:00:08',NULL,0),(679,'GULJAN ABUBAKAR RAMADHAN','94','','','2018-04-10 11:00:08',NULL,0),(680,'FRANCIS OUMA OPALO','95','','','2018-04-10 11:00:08',NULL,0),(681,'PETER HAVACY MANGA','97','','','2018-04-10 11:00:08',NULL,0),(682,'LAWRENCE ODHIAMBO AMENYA','98','','','2018-04-10 11:00:08',NULL,0),(683,'MOSES ELIAS MANGALE','99','','','2018-04-10 11:00:08',NULL,0),(684,'MOUREEN WAIRIMU KIAMA','100','','','2018-04-10 11:00:08',NULL,0),(685,'WAYNE DICKSON NDAKALA','T020','','','2018-04-10 11:00:08',NULL,0),(686,'GEORGE ABWAO OMORE','T022','','','2018-04-10 11:00:08',NULL,0),(687,'FREDRICK WAWALA','T023','','','2018-04-10 11:00:08',NULL,0),(688,'AHMED ABDULRAHMAN AHMED','T025','','','2018-04-10 11:00:08',NULL,0),(689,'PAUL NZISSI MUSYOKA','T026','','','2018-04-10 11:00:08',NULL,0),(690,'BILHA AMAGOVE OMUDI','T027','','','2018-04-10 11:00:08',NULL,0),(691,'ERICKSON MWANIKI NGELE','63','','','2018-04-10 11:00:08',NULL,0),(692,'JESINTA NJERI NJOROGE','T028','','','2018-04-10 11:00:08',NULL,0),(693,'','','','','2018-04-10 11:00:08',NULL,0),(694,'Devki Steel Mills Ltd','D093','','','2018-04-10 11:00:08',NULL,0),(695,'Jotun Kenya Ltd','J073','Sreejith','+254720204181','2018-04-10 11:00:08',NULL,0),(696,'Jotun Kenya Ltd','J074','','','2018-04-10 11:00:08',NULL,0),(697,'Jane Muthoni Chege','J075','Jane','254725849476','2018-04-10 11:00:08',NULL,0),(698,'Marine Security International ','M192','Cdr Sakes','','2018-04-10 11:00:08',NULL,0),(699,' Master & Owners Mv Doric Spirit','M194','Master','','2018-04-10 11:00:08',NULL,0),(700,'Two Dots Business Systems Ltd','T111','Daniel Muhoro Githii','0723 938 719 ','2018-04-10 11:00:08',NULL,0),(701,'Asheric Company Ltd','A150','','','2018-04-10 11:00:08',NULL,0),(702,'ARM Cement Limited - Ksh','A096','Manish  Mehta','+254 20 3744617/20/22/25','2018-04-10 11:01:36',NULL,0);
/*!40000 ALTER TABLE `sage_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sage_projects`
--

DROP TABLE IF EXISTS `sage_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sage_projects` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `project_link` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `master_sub_project` varchar(255) DEFAULT NULL,
  `date_created` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1972 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sage_projects`
--

LOCK TABLES `sage_projects` WRITE;
/*!40000 ALTER TABLE `sage_projects` DISABLE KEYS */;
INSERT INTO `sage_projects` VALUES (1204,'4','AGENCY','AGENCY','AGENCY','1','ADMIN>AGENCY',NULL,'2018-09-27 13:57:23',0),(1205,'5','NRB','NAIROBI BRANCH','NAIROBI BRANCH','1','ADMIN>NRB',NULL,'2018-09-27 13:57:23',0),(1206,'6','LGSTS','LOGISTICS','LOGISTICS','1','ADMIN>LGSTS',NULL,'2018-09-27 13:57:23',0),(1207,'7','SALES','SALES & MARKETING','SALES & MARKETING','1','ADMIN>SALES',NULL,'2018-09-27 13:57:23',0),(1208,'8','ADMIN','ADMINISTRATION','ADMINISTRATION','1','ADMIN',NULL,'2018-09-27 13:57:23',0),(1209,'9','HR','HUMAN RESOURCES','HUMAN RESOURCES','1','ADMIN>HR',NULL,'2018-09-27 13:57:23',0),(1210,'10','ACCOUNTS','ACCOUNTS','ACCOUNTS','1','ADMIN>ACCOUNTS',NULL,'2018-09-27 13:57:23',0),(1211,'11','TECH&TRNST','TECH & TRANSPORT','TECH & TRANSPORT','1','ADMIN>TECH&TRNST',NULL,'2018-09-27 13:57:23',0),(1212,'12','EXPOLANKA ','EXPOLANKA ','EXPOLANKA ','1','EXPOLANKA ',NULL,'2018-09-27 13:57:23',0),(1213,'13','Mv SFL Sara','Mv SFL Sara','Mv SFL Sara','1','Mv SFL Sara',NULL,'2018-09-27 13:57:23',0),(1214,'14','MV%^TRE%$#','MV%^TRE%$#','MV%^TRE%$#','1','MV%^TRE%$#',NULL,'2018-09-27 13:57:23',0),(1215,'15','MHIUY&788','MHIUY&788','MHIUY&788','1','MHIUY&788',NULL,'2018-09-27 13:57:23',0),(1216,'16','MV SFL SARA (SS-02)','MV SFL SARA (SS-02)','MV SFL SARA (SS-02)','1','MV SFL SARA (SS-02)',NULL,'2018-09-27 13:57:23',0),(1217,'17','Administration','Administration','Administration','1','ADMIN>Administration',NULL,'2018-09-27 13:57:23',0),(1218,'18','MV COURAGEOUS','MV COURAGEOUS','MV COURAGEOUS','1','MV COURAGEOUS',NULL,'2018-09-27 13:57:23',0),(1219,'19','MV SPAR VIRGO(SP-01)','MV SPAR VIRGO(SP-01)','ATHI RIVER MINING ACCOUNT','1','MV SPAR VIRGO(SP-01)',NULL,'2018-09-27 13:57:23',0),(1220,'20','MV BROTHER GLORY','MV BROTHER GLORY BG-2','BAMBURI CEMENT','0','MV BROTHER GLORY',NULL,'2018-09-27 13:57:23',0),(1221,'21','MV SAN TEODORO','MV SAN TEODORO','PFDA QUOTE','1','MV SAN TEODORO',NULL,'2018-09-27 13:57:23',0),(1222,'22','MV BLIDA','MV BLIDA','MV BLIDA','1','MV BLIDA',NULL,'2018-09-27 13:57:23',0),(1223,'23','Mv SFL KATE','Mv SFL KATE','Mv SFL KATE','1','Mv SFL KATE',NULL,'2018-09-27 13:57:23',0),(1224,'24','PFDA','MV MEDI DUBAI','QUOTATION','0','PFDA',NULL,'2018-09-27 13:57:23',0),(1225,'25','PORT DA','MV MEDI DUBAI','CLIENT QUOTATION','1','PORT DA',NULL,'2018-09-27 13:57:23',0),(1226,'26','MV SFL YUKON','MV SFL YUKON','MV SFL YUKON','1','MV SFL YUKON',NULL,'2018-09-27 13:57:23',0),(1227,'27','IT','IT','IT ','1','IT',NULL,'2018-09-27 13:57:23',0),(1228,'28','MV CB CONFIDENCE','MV CB CONFIDENCE','MV CB CONFIDENCE PFDA','1','MV CB CONFIDENCE',NULL,'2018-09-27 13:57:23',0),(1229,'29','MV AEGEAN FALCON','MV AEGEAN FALCON','MV AEGEAN FALCON QUOTATION','1','MV AEGEAN FALCON',NULL,'2018-09-27 13:57:23',0),(1230,'30','MV GLORIOUS SAWARA','MV GLORIOUS SAWARA','MV GLORIOUS SAWARA','1','MV GLORIOUS SAWARA',NULL,'2018-09-27 13:57:23',0),(1231,'31','MV TBN','MV TBN ','MV TBN PFDA QUOTATION','1','MV TBN',NULL,'2018-09-27 13:57:23',0),(1232,'32','MV CANARSIE PRINCESS','MV CANARSIE PRINCESS','MV CANARSIE PRINCESS PFDA','1','MV CANARSIE PRINCESS',NULL,'2018-09-27 13:57:23',0),(1233,'33','MV TBN TANKER','MV TBN TANKER','MV TBN TANKER PFDA','1','MV TBN TANKER',NULL,'2018-09-27 13:57:23',0),(1234,'34','MV SFL SARA (SS-3)','MV SFL SARA (SS-03)','MV SFL SARA (SS-03) PFDA','1','MV SFL SARA (SS-3)',NULL,'2018-09-27 13:57:23',0),(1235,'35','MV CMB JIALING','MV CMB JIALING','MV CMB JIALING PFDA','1','MV CMB JIALING',NULL,'2018-09-27 13:57:23',0),(1236,'36','MV INDIAN O. EXPL 2','MV INDIAN O. EXPL 2','MV INDIAN O. EXPL 2 PFDA','1','MV INDIAN O. EXPL 2',NULL,'2018-09-27 13:57:23',0),(1237,'37','ESBJERG','ESBJERG','ESBJERG LINER OUT COST','1','ESBJERG',NULL,'2018-09-27 13:57:23',0),(1238,'38','MV C PRINCESS','MV CANARSIE PRINCESS - CPN-3/12','MV CANARSIE PRINCESS - CPN-3/12','1','MV C PRINCESS',NULL,'2018-09-27 13:57:23',0),(1239,'39','MV SFL HUDSON','MV SFL HUDSON','MV SFL HUDSON PFDA','1','MV SFL HUDSON',NULL,'2018-09-27 13:57:23',0),(1240,'40','MV OCEAN DAVID','MV OCEAN DAVID','MV OCEAN DAVID PFDA','1','MV OCEAN DAVID',NULL,'2018-09-27 13:57:23',0),(1241,'41','MV ROYAL ARSENAL','MV ROYAL ARSENAL','MV ROYAL ARSENAL','1','MV ROYAL ARSENAL',NULL,'2018-09-27 13:57:23',0),(1242,'42','MV ALITIS','MV ALITIS- MAY 2012','MV ALITIS-MAY 2012','0','MV ALITIS',NULL,'2018-09-27 13:57:23',0),(1243,'43','MV SFL KATE -SK3-MAY','MV SFL KATE -SK3-MAY/2012','MV SFL KATE -SK3-MAY/2012','1','MV SFL KATE -SK3-MAY',NULL,'2018-09-27 13:57:23',0),(1244,'44','MV SOPHIA','MV SOPHIA','MV SOPHIA MAY2012','1','MV SOPHIA',NULL,'2018-09-27 13:57:23',0),(1245,'45','MV PERUN','MV PERUN(QUOTE)','MV PERUN(QUOTE)','1','MV PERUN',NULL,'2018-09-27 13:57:23',0),(1246,'46','M/V ARIADNE','M/V ARIADNE','M/V ARIADNE','1','M/V ARIADNE',NULL,'2018-09-27 13:57:23',0),(1247,'47','MV STEEL ANNA','MV STEEL ANNA - MAY/JUNE ','MV STEEL ANNA - MAY/JUNE ','1','MV STEEL ANNA',NULL,'2018-09-27 13:57:23',0),(1248,'48','MV SOFIA','MV SOFIA -PFDA','MV SOFIA - PFDA','1','MV SOFIA',NULL,'2018-09-27 13:57:23',0),(1249,'49','MV ALITIS - JUNE','MV ALITIS VOY2 JUNE','MV ALITIS VOY2 JUNE','1','MV ALITIS - JUNE',NULL,'2018-09-27 13:57:23',0),(1250,'50','MV GANT VISION ','MV GANT VISION - JUNE','MV GANT VISION -JUNE','1','MV GANT VISION ',NULL,'2018-09-27 13:57:23',0),(1251,'51','MV QUEEN SAPPHIRE','MV QUEEN SAPPHIRE','MV QUEEN SAPPHIRE PFDA','1','MV QUEEN SAPPHIRE',NULL,'2018-09-27 13:57:23',0),(1252,'52','MV SPAR VIRGO','MV SPAR VIRGO (SV-1/12)','MV SPAR VIRGO (SV-1/12)','1','MV SPAR VIRGO',NULL,'2018-09-27 13:57:23',0),(1253,'53','MV SFL SARA -JUNE','MV SFL SARA - C/O SEABULK','MV SFL SARA - C/O SEABULK','1','MV SFL SARA -JUNE',NULL,'2018-09-27 13:57:23',0),(1254,'54','MV SPAR CETUS','MV SPAR CETUS - JUNE','MV SPAR CETUS - JUNE','1','MV SPAR CETUS',NULL,'2018-09-27 13:57:23',0),(1255,'55','DAR OFFICE','DAR NEW OFFICE - TZ','DAR NEW OFFICE - TZ','1','DAR OFFICE',NULL,'2018-09-27 13:57:23',0),(1256,'56','DAR ES SALAAM QUOTE','DAR ES SALAAM QUOTE','DAR ES SALAAM QUOTE','1','DAR ES SALAAM QUOTE',NULL,'2018-09-27 13:57:23',0),(1257,'57','MV AROSA','MV AROSA - BULK FERTILIZER-JULY\'12','MV AROSA - BULK FERTILIZER-JULY\'12','1','MV AROSA',NULL,'2018-09-27 13:57:23',0),(1258,'58','MV SPA LYRA','MV SPAR LYRA - JULY\'12','MV SPAR LYRA - JULY\'12','1','MV SPA LYRA',NULL,'2018-09-27 13:57:23',0),(1259,'59','MV JS POMEROL','MV JS POMEROL JULY \'12','MV JS POMEROL JULY \'12','1','MV JS POMEROL',NULL,'2018-09-27 13:57:23',0),(1260,'60','MV MARYLISA V','MV MARYLISA V JULY\'12','MV MARYLISA V JULY\'12','1','MV MARYLISA V',NULL,'2018-09-27 13:57:23',0),(1261,'61','MV WESTERN ISLAND','MV WESTERN ISLAND JULY\'12','MV WESTERN ISLAND JULY\'12','1','MV WESTERN ISLAND',NULL,'2018-09-27 13:57:23',0),(1262,'62','MV AFRICAN STAR','MV AFRICAN STAR','MV AFRICAN STAR','1','MV AFRICAN STAR',NULL,'2018-09-27 13:57:23',0),(1263,'63','MV SIREEN B','MV SIREEN B - JULY\'12','MV SIREEN B - JULY\'12','1','MV SIREEN B',NULL,'2018-09-27 13:57:23',0),(1264,'64','MV SPAR VIRGO SV-2/1','MV SPAR VIRGO SV-2/12','MV SPAR VIRGO SV-2/12','1','MV SPAR VIRGO SV-2/1',NULL,'2018-09-27 13:57:23',0),(1265,'65','MV JS AMAZON','MV JS AMAZON SEPT\'12','MV JS AMAZON SEPT\'12','1','MV JS AMAZON',NULL,'2018-09-27 13:57:23',0),(1266,'66','MV W.ISLAND(WI-02/12','MV WESTERN ISLAND ','MV WESTERN ISLAND (WI-02/12)','1','MV W.ISLAND(WI-02/12',NULL,'2018-09-27 13:57:23',0),(1267,'67','MV WESTERN ISLAND 2','MV WESTERN ISLAND (WI-02/12)','MV WESTERN ISLAND (WI-02/12)','1','MV WESTERN ISLAND 2',NULL,'2018-09-27 13:57:23',0),(1268,'68','LEGAL & CONTRACTING','LEGAL & CONTRACTING','LEGAL & CONTRACTING','1','LEGAL & CONTRACTING',NULL,'2018-09-27 13:57:23',0),(1269,'69','MV DANUBE','MV JS DANUBE','MV JS DANUBE','1','MV DANUBE',NULL,'2018-09-27 13:57:23',0),(1270,'70','MV ISKENDERUN M','MV ISKENDERUN M','MV ISKENDERUN M','1','MV ISKENDERUN M',NULL,'2018-09-27 13:57:23',0),(1271,'72','MV TUSCARORA BELLE','MV TUSCARORA BELLE','MV TUSCARORA BELLE','1','MV TUSCARORA BELLE',NULL,'2018-09-27 13:57:23',0),(1272,'73','JS GARONNE','Mv JS GARONNE SEPT 12','JS GARONNE SEPT 12','1','JS GARONNE',NULL,'2018-09-27 13:57:23',0),(1273,'74','MV JS MEUSE','MV JS MEUSE JSM-01/12','MV JS MEUSE JSM-01/12','1','MV JS MEUSE',NULL,'2018-09-27 13:57:23',0),(1274,'75','MV ALITIS AL-03/12','MV ALITIS - AL-03/12','MV ALITIS - AL-03/12','1','MV ALITIS AL-03/12',NULL,'2018-09-27 13:57:23',0),(1275,'76','MV WESTERN ISLAND 3','MV WESTERN ISLAND VOY WI-03/12','MV WESTERN ISLAND VOY WI-03/12','1','MV WESTERN ISLAND 3',NULL,'2018-09-27 13:57:23',0),(1276,'77','MV NAMRUN','MV NAMRUN N-01/12','MV NAMRUN N-01/12','1','MV NAMRUN',NULL,'2018-09-27 13:57:23',0),(1277,'78','MV SIREEN B SB-02/12','MV SIREEN B SB-02/12','MV SIREEN B SB-02/12','1','MV SIREEN B SB-02/12',NULL,'2018-09-27 13:57:23',0),(1278,'79','MV LYCAVITOS','MV LYCAVITOS','MV LYCAVITOS','1','MV LYCAVITOS',NULL,'2018-09-27 13:57:23',0),(1279,'80','MV BEKS HALIL','MV BEKS HALIL VOY - BH-01/12','MV BEKS HALIL VOY - BH-01/12','1','MV BEKS HALIL',NULL,'2018-09-27 13:57:23',0),(1280,'81','MV SFL YUKON 2','MV SFL YUKON ( SFLY-02/12)','MV SFL YUKON ( SFLY-02/12)','1','MV SFL YUKON 2',NULL,'2018-09-27 13:57:23',0),(1281,'82','MV JS DANUBE 2','MV JS DANUBE VOY JSD-02/2012','MV JS DANUBE VOY JSD-02/2012','1','MV JS DANUBE 2',NULL,'2018-09-27 13:57:23',0),(1282,'83','MV JS RHIN 01/2012','MV JS RHIN 01/2012','MV JS RHIN 01/2012','1','MV JS RHIN 01/2012',NULL,'2018-09-27 13:57:23',0),(1283,'84','MV ALITIS 04/2012','MV ALITIS 04/2012','MV ALITIS 04/2012','1','MV ALITIS 04/2012',NULL,'2018-09-27 13:57:23',0),(1284,'85','MV SFL HUDSON 02/12','MV SFL HUDSON 02/2012','MV SFL HUDSON 02/2012','1','MV SFL HUDSON 02/12',NULL,'2018-09-27 13:57:23',0),(1285,'86','MV JS POMEROL (voy2)','MV JS POMEROL -JSP-2/12','MV JS POMEROL -JSP-2/12','1','MV JS POMEROL (voy2)',NULL,'2018-09-27 13:57:23',0),(1286,'87','MV FAR EAST HONESTY ','MV FAR EAST HONESTY - 01/2012','MV FAR EAST HONESTY - 01/2012','1','MV FAR EAST HONESTY ',NULL,'2018-09-27 13:57:23',0),(1287,'88','MV AETOLIA ','MV AETOLIA','MV AETOLIA','1','MV AETOLIA ',NULL,'2018-09-27 13:57:23',0),(1288,'89','MV OCEAN ADVENTURE ','MV OCEAN ADVENTURE','MV OCEAN ADVENTURE','1','MV OCEAN ADVENTURE ',NULL,'2018-09-27 13:57:23',0),(1289,'90','MV SFL HUMBER','MV SFL HUMBER','MV SFL HUMBER','1','MV SFL HUMBER',NULL,'2018-09-27 13:57:23',0),(1290,'91','MV KUKSAN','MV KUKSAN KS-01/12-13','MV KUKSAN KS-01/12-13','1','MV KUKSAN',NULL,'2018-09-27 13:57:23',0),(1291,'92','MV ARKTOS','MV ARKTOS AT-01/12-13','MV ARKTOS AT-01/12-13','1','MV ARKTOS',NULL,'2018-09-27 13:57:23',0),(1292,'93','MV JS COLORADO','MV JS COLORADO JSC-01/13','MV JS COLORADO JSC-01/13','1','MV JS COLORADO',NULL,'2018-09-27 13:57:23',0),(1293,'94','ARMS','MV SFL KATE (ARMS)','MV SFL KATE (ARMS)','1','ARMS',NULL,'2018-09-27 13:57:23',0),(1294,'95','MV JS RHONE V1/2013','MV JS RHONE V1/2013','MV JS RHONE V1/2013','1','MV JS RHONE V1/2013',NULL,'2018-09-27 13:57:23',0),(1295,'96','MV LISSA TOPIC DAR','MV LISSA TOPIC DAR','MV LISSA TOPIC DAR','1','MV LISSA TOPIC DAR',NULL,'2018-09-27 13:57:23',0),(1296,'97','MV TAI HARVEST -DAR','MV TAI HARVEST -DAR','MV TAI HARVEST -DAR','1','MV TAI HARVEST -DAR',NULL,'2018-09-27 13:57:23',0),(1297,'98','MV FAREAST HARMONY','2013 JAN MV FAREAST HARMONY','2013 JAN MV FAREAST HARMONY','1','MV FAREAST HARMONY',NULL,'2018-09-27 13:57:23',0),(1298,'99','MV JS LOIRE','MV JS LOIRE JSL-01/13 JAN','MV JS LOIRE JSL-01/13 JAN','1','MV JS LOIRE',NULL,'2018-09-27 13:57:23',0),(1299,'100','MV SFL SARA FEB 2013','MV SFL SARA -SFLS-01/13 ','MV SFL SARA -SFLS-01/13 ','1','MV SFL SARA FEB 2013',NULL,'2018-09-27 13:57:23',0),(1300,'101','TEO','MV TEO FEB 2013','MV TEO FEB 2013','1','TEO',NULL,'2018-09-27 13:57:23',0),(1301,'102','MV FESCO SMOLENSK','Mv FESCO SMOLENSK','Mv Fesco Smolenks','1','MV FESCO SMOLENSK',NULL,'2018-09-27 13:57:23',0),(1302,'103','MV RAINBOW','MV RAINBOW 01-2013(MAR)','MV RAINBOW 01-2013(MAR)','1','MV RAINBOW',NULL,'2018-09-27 13:57:23',0),(1303,'104','MV AUGUSTE SHULTE','MV AUGUSTE SHULTE - FEB\'13','MV AUGUSTE SHULTE - FEB\'13','1','MV AUGUSTE SHULTE',NULL,'2018-09-27 13:57:23',0),(1304,'105','MV JS CONGO','MV JS CONGO JSC-01/13 MARCH','MV JS CONGO JSC-01/13 MARCH','1','MV JS CONGO',NULL,'2018-09-27 13:57:23',0),(1305,'106','MV AUGUSTE SCHULTE 2','MV AUGUSTE SCHULTE 02/13 MARCH','MV AUGUSTE SCHULTE 02/13 MARCH','1','MV AUGUSTE SCHULTE 2',NULL,'2018-09-27 13:57:23',0),(1306,'107','MV JS POMEROL 01/13','MV JS POMEROL 01/13','MV JS POMEROL 01/13','1','MV JS POMEROL 01/13',NULL,'2018-09-27 13:57:23',0),(1307,'108','MV SFL YUKON 01/13','MV SFL YUKON 01/13','MV SFL YUKON 01/13','1','MV SFL YUKON 01/13',NULL,'2018-09-27 13:57:23',0),(1308,'109','MV JS MEKONG 01/13','MV JS KEKONG 01/13','MV JS MEKONG 01/13','1','MV JS MEKONG 01/13',NULL,'2018-09-27 13:57:23',0),(1309,'110','MV MAORI MAIDEN','MV MAORI MAIDEN 1/2013','MV MAORI MAIDEN 1/2013','1','MV MAORI MAIDEN',NULL,'2018-09-27 13:57:23',0),(1310,'111','MV THOR COMMANDER TC','MV THOR COMMANDER TC-01/2013','MV THOR COMMANDER TC-01/2013','1','MV THOR COMMANDER TC',NULL,'2018-09-27 13:57:23',0),(1311,'112','MV JS DANUBE 01/13','MV JS DANUBE 01/13','MV JS DANUBE 01/13','1','MV JS DANUBE 01/13',NULL,'2018-09-27 13:57:23',0),(1312,'113','MV IVS IBIS','MV IVS IBIS 01/2013','MV IVS IBIS 01/2013','1','MV IVS IBIS',NULL,'2018-09-27 13:57:23',0),(1313,'114','MV SFL HUMBER 01/13 ','MV SFL HUMBER - 01/13','MV SFL HUMBER - 01/13','1','MV SFL HUMBER 01/13 ',NULL,'2018-09-27 13:57:23',0),(1314,'115','MV PEARL K - 01/13','MV PEARL K - 01/13','MV PEARL K - 01/13','1','MV PEARL K - 01/13',NULL,'2018-09-27 13:57:23',0),(1315,'116','MT EUROSIA - 01/13','MT EUROSIA - 01/13','MT EUROSIA - 01/13','1','MT EUROSIA - 01/13',NULL,'2018-09-27 13:57:23',0),(1316,'117','MV IVS IBIS-01/2013','MV IVS IBIS-01/2013','MV IVS IBIS-01/2013','1','MV IVS IBIS-01/2013',NULL,'2018-09-27 13:57:23',0),(1317,'118','MV MINELKAR-01/13','MV MINELKAR- 01/13','MV MINELKAR-01/13','1','MV MINELKAR-01/13',NULL,'2018-09-27 13:57:23',0),(1318,'119','MV AUGUSTE SCHULTE 3','MV AUGUSTE SCHULTE 03/2013','MV AUGUSTE SCHULTE 03/2013','1','MV AUGUSTE SCHULTE 3',NULL,'2018-09-27 13:57:23',0),(1319,'120','MV CAPE MARINE','MV CAPE MARINE 01/2013 -ARMS','MV CAPE MARINE 01/2013 -ARMS','1','MV CAPE MARINE',NULL,'2018-09-27 13:57:23',0),(1320,'121','MV CAPE MARINE 01/13','MV CAPE MARINE 01/13','MV CAPE MARINE 01/13','1','MV CAPE MARINE 01/13',NULL,'2018-09-27 13:57:23',0),(1321,'122','MV WARISA NAREE 1/13','MV WARISA NAREE 01/13','MV WARISA NAREE 01/13','1','MV WARISA NAREE 1/13',NULL,'2018-09-27 13:57:23',0),(1322,'123','MV JS CONGO 2','MV JS CONGO - JSC 02/2013 {MAY}','MV JS CONGO - JSC 02/2013 {MAY}','1','MV JS CONGO 2',NULL,'2018-09-27 13:57:23',0),(1323,'124','MV MASSALIA 01/2013','MV MASSALIA 01/2013','MV MASSALIA 01/2013','1','MV MASSALIA 01/2013',NULL,'2018-09-27 13:57:23',0),(1324,'125','MV CAPE MARINE 02/13','MV CAPE MARINE 02/2013','MV CAPE MARINE 02/2013','1','MV CAPE MARINE 02/13',NULL,'2018-09-27 13:57:23',0),(1325,'126','MV MOON BEAM 01/2013','MV MOON BEAM 01/2013','MV MOON BEAM 01/2013','1','MV MOON BEAM 01/2013',NULL,'2018-09-27 13:57:23',0),(1326,'127','MV JS MISSISSIPI ','MV JS MISSISSIPI 01/2013','MV JS MISSISSIPI 01/2013','1','MV JS MISSISSIPI ',NULL,'2018-09-27 13:57:23',0),(1327,'128','MV COMMON FAITH ','MV COMMON FAITH 01/2013','MV COMMON FAITH 01/2013','1','MV COMMON FAITH ',NULL,'2018-09-27 13:57:23',0),(1328,'129','MV CAPE MOSS 01/2013','MV CAPE MOSS 01/2013','MV CAPE MOSS 01/2013','1','MV CAPE MOSS 01/2013',NULL,'2018-09-27 13:57:23',0),(1329,'130','Mv Western Australia','Mv Western Australia','Mv Western Australia','1','Mv Western Australia',NULL,'2018-09-27 13:57:23',0),(1330,'131','MV CISL LEENE','MV CISL LEENE 01/13','MV CISL LEENE 01/13','1','MV CISL LEENE',NULL,'2018-09-27 13:57:23',0),(1331,'132','ESL TRIMMER','ESL TRIMMER 1 - 2013','ESL TRIMMER 1 - 2013','1','ESL TRIMMER',NULL,'2018-09-27 13:57:23',0),(1332,'133','MV TUSCARORA BELLE 1','MV TUSCARORA BELLE 01/13','MV TUSCARORA BELLE 01/13','1','MV TUSCARORA BELLE 1',NULL,'2018-09-27 13:57:23',0),(1333,'134','MV CAPE MARIN 03/13','MV SFL HUMBER ','MV SFL HUMBER','1','MV CAPE MARIN 03/13',NULL,'2018-09-27 13:57:23',0),(1334,'135','MV FRAGA 01/2013','MV FRAGA 01/2013 {aug \'13}','MV FRAGA 01/2013 {aug \'13}','1','MV FRAGA 01/2013',NULL,'2018-09-27 13:57:23',0),(1335,'136','MV AUGUSTE SCHULTE 4','MV AUGUSTE SCHULTE 04/2013','MV AUGUSTE SCHULTE 04/2013','1','MV AUGUSTE SCHULTE 4',NULL,'2018-09-27 13:57:23',0),(1336,'137','MV JS DANUBE 02/13','MV JS DANUBE 02/13 {JULY}','MV JS DANUBE 02/13','1','MV JS DANUBE 02/13',NULL,'2018-09-27 13:57:23',0),(1337,'138','MV SFL HUMBER 02/13','MV SFL HUMBER 02/13 {ARMS-JUNE}','MV SFL HUMBER 02/13 {ARMS-JUNE}','1','MV SFL HUMBER 02/13',NULL,'2018-09-27 13:57:23',0),(1338,'139','MV UNIVERSAL BANGKOK','MV UNIVERSAL BANGKOK 01/13{AUG}','MV UNIVERSAL BANGKOK 01/13{AUG}','1','MV UNIVERSAL BANGKOK',NULL,'2018-09-27 13:57:23',0),(1339,'140','MV THOR ACHIEVER 01','MV THOR ACHIEVER 01/13 {JULY}','MV THOR ACHIEVER 01/13','1','MV THOR ACHIEVER 01',NULL,'2018-09-27 13:57:23',0),(1340,'141','MV THOR BRAVE 01','MV THOR BRAVE 01/13 {JULY}','MV THOR BRAVE 01/13','1','MV THOR BRAVE 01',NULL,'2018-09-27 13:57:23',0),(1341,'142','MV SFL HUMBER 03','MV SFL HUMBER 03/13 {JULY}','MV SFL HUMBER 03/13','1','MV SFL HUMBER 03',NULL,'2018-09-27 13:57:23',0),(1342,'143','MV CAPE MOSS 02/13','MV CAPE MOSS 02/13{JULY}','MV CAPE MOSS 02/13','1','MV CAPE MOSS 02/13',NULL,'2018-09-27 13:57:23',0),(1343,'144','MV CAPE MARIN 04','MV CAPE MARINE','MV CAPE MARINE','0','MV CAPE MARIN 04',NULL,'2018-09-27 13:57:23',0),(1344,'145','MV CAPE MARINE 04/13','MV CAPE MARINE 04/13{JULY}','MV CAPE MARINE 04/13','1','MV CAPE MARINE 04/13',NULL,'2018-09-27 13:57:23',0),(1345,'146','MV JS MISSOURI 01/13','MV JS MISSOURI 01/13 {JULY}','MV JS MISSOURI 01/13','1','MV JS MISSOURI 01/13',NULL,'2018-09-27 13:57:23',0),(1346,'147','MV EMMANUEL C - 01/1','MV EMMANUEL C - 01/13 {aug 13}','MV EMMANUEL C - 01/13 {aug 13}','1','MV EMMANUEL C - 01/1',NULL,'2018-09-27 13:57:23',0),(1347,'148','MV CISL LEENE COAL','MV CISL LEENE VOY 04/13','MV CISL LEENE VOY 04/13','1','MV CISL LEENE COAL',NULL,'2018-09-27 13:57:23',0),(1348,'149','CHINA ISO SAND','CHINA ISO SAND','CHINA ISO SAND','1','CHINA ISO SAND',NULL,'2018-09-27 13:57:23',0),(1349,'150','MV AUGUSTE SCHULTE 5','MV AUGUSTE SCHULTE 05/13','MV AUGUSTE SCHULTE 05/13','1','MV AUGUSTE SCHULTE 5',NULL,'2018-09-27 13:57:23',0),(1350,'151','MV JS NAMARDA 01/13','MV JS NAMARDA 01/13 {Aug 2013}','MV JS NAMARDA 01/13 {Aug 2013}','1','MV JS NAMARDA 01/13',NULL,'2018-09-27 13:57:23',0),(1351,'152','MV JS BANDOL 01/13','MV JS BANDOL 01/13 {Sept\'13}','MV JS BANDOL 01/13 {Sept\'13}','1','MV JS BANDOL 01/13',NULL,'2018-09-27 13:57:23',0),(1352,'153','MV STAR CAPPELLA ','MV STAR CAPPELLA 01/13 {Aug\'13}','MV STAR CAPPELLA 01/13 {Aug\'13}','1','MV STAR CAPPELLA ',NULL,'2018-09-27 13:57:23',0),(1353,'154','MV PACIFIC GUARDIAN ','MV PACIFIC GUARDIAN 01/13 {Aug\'2013}','MV PACIFIC GUARDIAN 01/13 {Aug\'2013}','1','MV PACIFIC GUARDIAN ',NULL,'2018-09-27 13:57:23',0),(1354,'155','MV CAPE MOSS 03/13','MV CAPE MOSS 03/13 {Aug\'13}','MV CAPE MOSS 03/13 {Aug\'13}','1','MV CAPE MOSS 03/13',NULL,'2018-09-27 13:57:23',0),(1355,'156','MV YAKIMA PRINCESS ','MV YAKIMA PRINCESS 01/13 {Sept\'13}','MV YAKIMA PRINCESS 01/13 {Sept\'13}','1','MV YAKIMA PRINCESS ',NULL,'2018-09-27 13:57:23',0),(1356,'157','MV CISL LEENE {VOY2}','MV CISL LEENE 04/2013 {AUG\'13}','MV CISL LEENE 04/013 {AUG\'13}','1','MV CISL LEENE {VOY2}',NULL,'2018-09-27 13:57:23',0),(1357,'158','MV JS MEKONG','MV JS MEKONG 02/13 {SEPT\'13}','MV JS MEKONG 02/13 {SEPT\'13}','1','MV JS MEKONG',NULL,'2018-09-27 13:57:23',0),(1358,'159','MV MELITUS 01/13','MV MILETUS 01/13 {SEPT\'13}','MV MILETUS 01/13 {SEPT\'13}','1','MV MELITUS 01/13',NULL,'2018-09-27 13:57:23',0),(1359,'160','PILOTAGE BONUS 2013','BONUS ON PILOTAGE 2013','BONUS ON PILOTAGE 2013','1','PILOTAGE BONUS 2013',NULL,'2018-09-27 13:57:23',0),(1360,'161','MV TAI SHINE 01/13','MV TAI SHINE 01/13 {SEPT \'13}','MV TAI SHINE 01/13 {SEPT \'13}','1','MV TAI SHINE 01/13',NULL,'2018-09-27 13:57:23',0),(1361,'162','Mv Cygnus 01/13','MV CYGNUS 01/13 {Sept\'13}','MV CYGNUS 01/13 {Sept\'13}','1','Mv Cygnus 01/13',NULL,'2018-09-27 13:57:23',0),(1362,'163','MV WIKANDA NAREE 01','MV WIKANDA NAREE 01/13 {Sept 2013}','MV WIKANDA NAREE 01/13 {Sept 2013}','1','MV WIKANDA NAREE 01',NULL,'2018-09-27 13:57:23',0),(1363,'164','MV JS SANAGA 01/13','MV JS SANAGA 01/13 {OCT\'13}','MV JS SANAGA 01/13 {OCT\'13}','1','MV JS SANAGA 01/13',NULL,'2018-09-27 13:57:23',0),(1364,'165','MV THOR BREEZE 01/13','MV THOR BREEZE 01/13','MV THOR BREEZE 01/13','1','MV THOR BREEZE 01/13',NULL,'2018-09-27 13:57:23',0),(1365,'166','MV WARISA NAREE 02','MV WARISA NAREE 02/13 {SEPT}','MV WARISA NAREE 02/13 {SEPT}','1','MV WARISA NAREE 02',NULL,'2018-09-27 13:57:23',0),(1366,'167','MV CISL LEENE 08/13A','MV CISL LEENE 08/13A {SEPT\'13}','MV CISL LEENE 08/13A {SEPT\'13}','1','MV CISL LEENE 08/13A',NULL,'2018-09-27 13:57:23',0),(1367,'168','MV ELVIRA BULKER 01 ','MV ELVIRA BULKER 01 /13','MV ELVIRA BULKER 01 /13','1','MV ELVIRA BULKER 01 ',NULL,'2018-09-27 13:57:23',0),(1368,'169','MV CAPE MOSS 04/13','MV CAPE MOSS 04/13 {SEPT\'13}','MV CAPE MOSS 04/13 {SEPT\'13}','1','MV CAPE MOSS 04/13',NULL,'2018-09-27 13:57:23',0),(1369,'170','Mv Star Zetta 01/13','MV STAR ZETTA 01/13 OCT\'13','MV STAR ZETTA 01/13 OCT\'13','1','Mv Star Zetta 01/13',NULL,'2018-09-27 13:57:23',0),(1370,'171','MV STAR EPSILON 01','MV STAR EPSILON 01/13 {OCT\'13}','MV STAR EPSILON 01/13 {OCT\'13}','1','MV STAR EPSILON 01',NULL,'2018-09-27 13:57:23',0),(1371,'172','MV SPAR VEGA OCT 13','MV SPAR VEGA 01/2013 NOV\'13','MV SPAR VEGA 01/2013 NOV\'13','1','MV SPAR VEGA OCT 13',NULL,'2018-09-27 13:57:23',0),(1372,'173','MV SEA MOON 01/13','MV SEA MOON 01/13 {OCT\'13}','MV SEA MOON 01/13 {OCT\'13}','1','MV SEA MOON 01/13',NULL,'2018-09-27 13:57:23',0),(1373,'174','MV ZELLA OLDENDORFF ','MV ZELLA OLDENDORFF 01/13 {NOV\'13}','MV ZELLA OLDENDORFF 01/13 {NOV\'13}','1','MV ZELLA OLDENDORFF ',NULL,'2018-09-27 13:57:23',0),(1374,'175','MV AMALIA C 01/13','MV AMALIA C 01/13 {OCT\'13}','MV AMALIA C 01/13 {OCT\'13}','1','MV AMALIA C 01/13',NULL,'2018-09-27 13:57:23',0),(1375,'176','MV JS VOLGA 01/13','MV JS VOLGA 01/13 {OCT\'13}','MV JS VOLGA 01/13 {OCT\'13}','1','MV JS VOLGA 01/13',NULL,'2018-09-27 13:57:23',0),(1376,'177','MV JS BANDOL 02/13','MV JS BANDOL 02/13 {OCT\'13}','MV JS BANDOL 02/13 {OCT\'13}','1','MV JS BANDOL 02/13',NULL,'2018-09-27 13:57:23',0),(1377,'178','MV BULK NEW PORT 01','MV BULK NEW PORT 01/13 {OCT\'13}','MV BULK NEW PORT 01/13 {OCT\'13}','1','MV BULK NEW PORT 01',NULL,'2018-09-27 13:57:23',0),(1378,'179','MV SOUTH 01/13','MV SOUTH 01/13 {OCT\'13}','MV SOUTH 01/13 {OCT\'13}','1','MV SOUTH 01/13',NULL,'2018-09-27 13:57:23',0),(1379,'180','MV JIMILTA 01/13','MV JIMILTA 01/13 {NOV\'13}','MV JIMILTA 01/13 {NOV\'13}','1','MV JIMILTA 01/13',NULL,'2018-09-27 13:57:23',0),(1380,'181','MV ANASTASIA K 01/13','MV ANASTASIA K 01/13 {OCT\'13}','MV ANASTASIA K 01/13 {OCT\'13}','1','MV ANASTASIA K 01/13',NULL,'2018-09-27 13:57:23',0),(1381,'182','MV NIKOS 01/13','MV NIKOS 01/13 {NOV\'13}','MV NIKOS 01/13 {NOV\'13}','1','MV NIKOS 01/13',NULL,'2018-09-27 13:57:23',0),(1382,'183','MV CISL LEENE 10/13A','MV CISL LEENE 11/13A {NOV\'13}','MV CISL LEENE 11/13A {NOV\'13}','1','MV CISL LEENE 10/13A',NULL,'2018-09-27 13:57:23',0),(1383,'184','MV CISL LEENE 11/13A','MV CISL LEENE 11/13BS {NOV\'13}','MV CISL LEENE 11/13BS {NOV\'13}','1','MV CISL LEENE 11/13A',NULL,'2018-09-27 13:57:23',0),(1384,'185','MV JS YANGTSE 01/13','MV JS YANGTSE 01/13 {DEC\'13}','MV JS YANGTSE 01/13 {DEC\'13}','1','MV JS YANGTSE 01/13',NULL,'2018-09-27 13:57:23',0),(1385,'186','Mv Montecristo 01/13','MV MONTECRISTO 01/13 {DEC\'13}','MV MONTECRISTO 01/13 {DEC\'13}','1','Mv Montecristo 01/13',NULL,'2018-09-27 13:57:23',0),(1386,'187','MV POSIDON VOY 01/13','MV POSIDON VOY 01/13 {NOV\'13}','MV POSIDON VOY 01/13 {NOV\'13}','1','MV POSIDON VOY 01/13',NULL,'2018-09-27 13:57:23',0),(1387,'188','CISL LEENE 11/13BS','MV CISL LEENE 11/13BS {NOV\'13}','MV CISL LEENE 11/13BS {NOV\'13}','1','CISL LEENE 11/13BS',NULL,'2018-09-27 13:57:23',0),(1388,'189','Mv Jo Betula','MV JO BETULA 01/13 {NOV\'13 }','MV JO BETULA 01/13 {NOV\'13 }','1','Mv Jo Betula',NULL,'2018-09-27 13:57:23',0),(1389,'190','Mv Elein K','MV ELENI K 01/13 {DEC\'13}','MV ELENI K 01/13 {DEC\'13}','1','Mv Elein K',NULL,'2018-09-27 13:57:23',0),(1390,'191','MV JS MEUSE 01/13','MV JS MEUSE 01/13 {DEC\'13}','MV JS MEUSE 01/13 {DEC\'13}','1','MV JS MEUSE 01/13',NULL,'2018-09-27 13:57:23',0),(1391,'192','MV CISLLEENE 12/13BS','MV CISL LEENE 12/13 AS{DEC\'13}','MV CISL LEENE 12/13 AS{DEC\'13}','1','MV CISLLEENE 12/13BS',NULL,'2018-09-27 13:57:23',0),(1392,'193','Mv Red Fin ','MV RED FIN 01/13 {DEC\'13}','MV RED FIN 01/13 {DEC\'13}','1','Mv Red Fin ',NULL,'2018-09-27 13:57:23',0),(1393,'194','Mv Seamoon 02/13','Mv Seamoon 02/13','Mv Seamoon 02/13','1','Mv Seamoon 02/13',NULL,'2018-09-27 13:57:23',0),(1394,'195','Mv Eugenia B','MV EUGENIA B 01/13 {NOV\'13}','MV EUGENIA B 01/13 {NOV\'13}','1','Mv Eugenia B',NULL,'2018-09-27 13:57:23',0),(1395,'196','Mv Amalia C - 02/13','MV AMALIA C - 02/13 {DEC\'13}','MV AMALIA C - 02/13 {DEC\'13}','1','Mv Amalia C - 02/13',NULL,'2018-09-27 13:57:23',0),(1396,'197','Mv Redfin 01/13','Mv Redfin 01/13','Mv Redfin 01/13','1','Mv Redfin 01/13',NULL,'2018-09-27 13:57:23',0),(1397,'198','Internal Audit & Ris','Internal Audit & Risk','Internal Audit & Risk','1','Internal Audit & Ris',NULL,'2018-09-27 13:57:23',0),(1398,'199','Mv Moyra 01/13','MV MOYRA 01/13 {DEC\'13}','MV MOYRA 01/13 {DEC\'13}','1','Mv Moyra 01/13',NULL,'2018-09-27 13:57:23',0),(1399,'200','Mv Spar Vega 02/13','Mv Spar Vega 02/13','Mv Spar Vega 02/13','1','Mv Spar Vega 02/13',NULL,'2018-09-27 13:57:23',0),(1400,'201','Mv Thor Achiever 02','MV THOR ACHIEVER 02/12 {DEC\'13}','MV THOR ACHIEVER 02/12 {DEC\'13}','1','Mv Thor Achiever 02',NULL,'2018-09-27 13:57:23',0),(1401,'202','Mv Thor Infinity 01','Mv THOR INFINITY 01/13 {DEC\'13}','Mv THOR INFINITY 01/13 {DEC\'13}','1','Mv Thor Infinity 01',NULL,'2018-09-27 13:57:23',0),(1402,'203','Mv Baltic Wind 01/13','Mv BALTIC WIND 01/13 {DEC\'13}','Mv BALTIC WIND 01/13 {DEC\'13}','1','Mv Baltic Wind 01/13',NULL,'2018-09-27 13:57:23',0),(1403,'204','Mv Thor Harmony 01','Mv THOR HARMONY 01/13 {JAN\'14}','Mv THOR HARMONY 01/13 {JAN\'14}','1','Mv Thor Harmony 01',NULL,'2018-09-27 13:57:23',0),(1404,'205','MV FONTHIDA NAREE ','MV FONTHIDA NAREE 01/14 {JAN\'14}','MV FONTHIDA NAREE 01/14 {JAN\'14}','1','MV FONTHIDA NAREE ',NULL,'2018-09-27 13:57:23',0),(1405,'206','JS AMAZON 01/14','MV JS AMAZON 01/14 {JAN\'14}','MV JS AMAZON 01/14 {JAN\'14}','1','JS AMAZON 01/14',NULL,'2018-09-27 13:57:23',0),(1406,'207','Mv Filia Glory 01/14','Mv FILIA GLORY 01/14 {JAN\'14}','Mv FILIA GLORY 01/14 {JAN\'14}','1','Mv Filia Glory 01/14',NULL,'2018-09-27 13:57:23',0),(1407,'208','Mv Halil Sahin 01/14','MV HALIL SAHIN 01/14 {JAN\'14}','MV HALIL SAHIN 01/14 {JAN\'14}','1','Mv Halil Sahin 01/14',NULL,'2018-09-27 13:57:23',0),(1408,'209','MV JS MEUSE 01/14','MV JS MEUSE 01/14 {JAN\'14 OPA}','MV JS MEUSE 01/14 {JAN\'14 OPA}','1','MV JS MEUSE 01/14',NULL,'2018-09-27 13:57:23',0),(1409,'210','MV HALIL SAHIN 01','xxx','xxx','1','MV HALIL SAHIN 01',NULL,'2018-09-27 13:57:23',0),(1410,'211','CISL LEENE 01/14AS','CISL LEENE 01/14AS','CISL LEENE 01/14AS','1','CISL LEENE 01/14AS',NULL,'2018-09-27 13:57:23',0),(1411,'212','MV COMMON CALYPSO','MV \'COMMON CALYPSO\'','MV \'COMMON CALYPSO\'','1','MV COMMON CALYPSO',NULL,'2018-09-27 13:57:23',0),(1412,'213','MV CISL LEENE 01/14','MV CISL LEENE XXXXXXXX','MV CISL LEENE XXXXXXXX','0','MV CISL LEENE 01/14',NULL,'2018-09-27 13:57:23',0),(1413,'214','Mv Diamond sea','Mv DIAMOND SEA','Mv DIAMOND SEA','1','Mv Diamond sea',NULL,'2018-09-27 13:57:23',0),(1414,'215','MV JS RHONE 01/14','MV JS RHONE 01/14 {JAN\'14}','MV JS RHONE 01/14 {JAN\'14}','1','MV JS RHONE 01/14',NULL,'2018-09-27 13:57:23',0),(1415,'216','MV LSS SUCCESS 01','MV LSS SUCCESS 01/14 {JAN\'14}','MV LSS SUCCESS 01/14 {JAN\'14}','1','MV LSS SUCCESS 01',NULL,'2018-09-27 13:57:23',0),(1416,'217','MV STI HARMONY 01','MV STI HARMONY 01/14 {JAN\'14}','MV STI HARMONY 01/14 {JAN\'14}','1','MV STI HARMONY 01',NULL,'2018-09-27 13:57:23',0),(1417,'218','MV AMINE BULKER 01','MV AMINE BULKER 01/14 {FEB\'14}','MV AMINE BULKER 01/14 {FEB\'14}','1','MV AMINE BULKER 01',NULL,'2018-09-27 13:57:23',0),(1418,'219','MV AMBER L','MV AMBER L01/14 {APRIL\'14}','MV AMBER L01/14 {APRIL\'14}','1','MV AMBER L',NULL,'2018-09-27 13:57:23',0),(1419,'220','MV CISL LEENE 01/14D','MV CISL LEENE 01/14D{FEB\'14}','MV CISL LEENE 01/14D{FEB\'14}','1','MV CISL LEENE 01/14D',NULL,'2018-09-27 13:57:23',0),(1420,'221','Mv Clipper Triton 01','MV CLIPPER TRITON 01/14 {FEB\'14}','MV CLIPPER TRITON 01/14 {FEB\'14}','1','Mv Clipper Triton 01',NULL,'2018-09-27 13:57:23',0),(1421,'222','Mv STI Harmony 01/14','XXX','XXX','1','Mv STI Harmony 01/14',NULL,'2018-09-27 13:57:23',0),(1422,'223','MV MYSTRAS 01/14','MV MYSTRAS 01/14 {MAR\'14}','MV MYSTRAS 01/14 {MAR\'14}','1','MV MYSTRAS 01/14',NULL,'2018-09-27 13:57:23',0),(1423,'224','MV IDC DIAMOND 01/14','MV IDC DIAMOND 01/14 {FEB\'14}','MV IDC DIAMOND 01/14 {FEB\'14}','1','MV IDC DIAMOND 01/14',NULL,'2018-09-27 13:57:23',0),(1424,'225','MV MAORI MAIDEN 1/14','MV MAORI MAIDEN 01/14 {FEB\'14}','MV MAORI MAIDEN 01/14 {FEB\'14}','1','MV MAORI MAIDEN 1/14',NULL,'2018-09-27 13:57:23',0),(1425,'226','LCL CLEARANCE & DEL.','LCL CLEARANCE & DEL{MAR\'14}','LCL CLEARANCE & DEL{MAR\'14}','1','LCL CLEARANCE & DEL.',NULL,'2018-09-27 13:57:23',0),(1426,'227','MV COMMON VENTURE ','MV COMMON VENTURE 01/14 {MARCH\'14}','MV COMMON VENTURE 01/14 {MARCH\'14}','1','MV COMMON VENTURE ',NULL,'2018-09-27 13:57:23',0),(1427,'228','MT ADFINES SEA','MT ADFINES SEA01/14 {FEB\'14}','MT ADFINES SEA01/14 {FEB\'14}','1','MT ADFINES SEA',NULL,'2018-09-27 13:57:23',0),(1428,'229','MV THOR FEARLESS','MV THOR FEARLESS','MV THOR FEARLESS','1','MV THOR FEARLESS',NULL,'2018-09-27 13:57:23',0),(1429,'230','Mt Aegea','Mt AEGEA 01/14 {FEB\'14}','Mt AEGEA 01/14 {FEB\'14}','1','Mt Aegea',NULL,'2018-09-27 13:57:23',0),(1430,'231','MV CISL LEENE 0/14AS','xxxxxxxxxxxxxx','xxxxxxxxxxxxxx','0','MV CISL LEENE 0/14AS',NULL,'2018-09-27 13:57:23',0),(1431,'232','Mv CISL LEENE 02/14','MV CISL LEENE 02/14AS{FEB\'14}','MV CISL LEENE 02/14AS{FEB\'14}','1','Mv CISL LEENE 02/14',NULL,'2018-09-27 13:57:23',0),(1432,'233','Mv Amalia C 01/14','Mv AMALIA C 01/14','Mv AMALIA C 01/14','1','Mv Amalia C 01/14',NULL,'2018-09-27 13:57:23',0),(1433,'234','Mv Star Vivian 01/14','Mv STAR VIVIAN 01/14 {MAR\'14}','Mv STAR VIVIAN 01/14 {MAR\'14}','1','Mv Star Vivian 01/14',NULL,'2018-09-27 13:57:23',0),(1434,'235','Mv Advantage','Mv ADVANTAGE 01/14 {MARCH\'14}','Mv ADVANTAGE 01/14 {MARCH\'14}','1','Mv Advantage',NULL,'2018-09-27 13:57:23',0),(1435,'236','Mv STI Harmony 02/14','Mv STI HARMONY 02/14','Mv STI HARMONY 02/14','1','Mv STI Harmony 02/14',NULL,'2018-09-27 13:57:23',0),(1436,'237','Mv Jo Betula 01/14','Mv JO BETULA 01/14','Mv JO BETULA 01/14','1','Mv Jo Betula 01/14',NULL,'2018-09-27 13:57:23',0),(1437,'238','City of Beijing ','SAVANNAH LCL {MAR\'14}','SAVANNAH LCL {MAR\'14}','1','City of Beijing ',NULL,'2018-09-27 13:57:23',0),(1438,'239','Mv Dawn - 01/14','Mv DAWN - 01/14 {APRIL\'14}','Mv DAWN - 01/14 {APRIL\'14}','1','Mv Dawn - 01/14',NULL,'2018-09-27 13:57:23',0),(1439,'240','Mv Genco Auvergne 01','Mv GENCO AUVERGNE 01/14 {MAY\'14}','Mv GENCO AUVERGNE 01/14 {MAY\'14}','1','Mv Genco Auvergne 01',NULL,'2018-09-27 13:57:23',0),(1440,'241','MV ANNA OLDERNDORFF','MV ANNA OLDERNDORFF 01/14 {APRIL\'14}','MV ANNA OLDERNDORFF 01/14 {APRIL\'14}','1','MV ANNA OLDERNDORFF',NULL,'2018-09-27 13:57:23',0),(1441,'242','Mv Beks Nazik 01/14','Mv BEKS NAZIK 01/14 {APRIL\'14}','Mv BEKS NAZIK 01/14 {APRIL\'14}','1','Mv Beks Nazik 01/14',NULL,'2018-09-27 13:57:23',0),(1442,'243','Mv Mandarin Glory 01','Mv MANDARIN GLORY 01/14{MAY\'14}','Mv MANDARIN GLORY 01/14{MAY\'14}','1','Mv Mandarin Glory 01',NULL,'2018-09-27 13:57:23',0),(1443,'244','MV JS MEKONG 01/14','MV JS MEKONG 01/14 {APRIL\'14}','MV JS MEKONG 01/14 {APRIL\'14}','1','MV JS MEKONG 01/14',NULL,'2018-09-27 13:57:23',0),(1444,'245','Mv CISL Leene Bunker','Mv CISL LEENE MAY\'14 BUNKERS','Mv CISL LEENE MAY\'14 BUNKERS','1','Mv CISL Leene Bunker',NULL,'2018-09-27 13:57:23',0),(1445,'246','Mt Karei 01/14','Mt KAREI 01/14 {APRIL\'14}','Mt KAREI 01/14 {APRIL\'14}','1','Mt Karei 01/14',NULL,'2018-09-27 13:57:23',0),(1446,'247','Mv Juste Trader 01','Mv Juste Trader 01','Mv Juste Trader 01','1','Mv Juste Trader 01',NULL,'2018-09-27 13:57:23',0),(1447,'248','Mv Moyra 02/14','Mv MOYRA 02/14 {APRIL\'14}','Mv MOYRA 02/14 {APRIL\'14}','1','Mv Moyra 02/14',NULL,'2018-09-27 13:57:23',0),(1448,'249','Mv Auguste Schulte 1','Mv AUGUSTE SCHULTE 01/14 {APRIL\'14}','Mv AUGUSTE SCHULTE 01/14 {APRIL\'14}','1','Mv Auguste Schulte 1',NULL,'2018-09-27 13:57:23',0),(1449,'250','MV ALEXANDROS III ','MV ALEXANDROS III ','MV ALEXANDROS III ','1','MV ALEXANDROS III ',NULL,'2018-09-27 13:57:23',0),(1450,'251','Mv Kota Budi','MV KOTA BUDI 01/14 {MAY\'14}','MV KOTA BUDI 01/14 {MAY\'14}','1','Mv Kota Budi',NULL,'2018-09-27 13:57:23',0),(1451,'252','MV JUMME TRADER01/14','MV JUMME TRADER01/14 {APRIL\'14}','MV JUMME TRADER01/14 {APRIL\'14}','1','MV JUMME TRADER01/14',NULL,'2018-09-27 13:57:23',0),(1452,'253','Mv CISL Leene- Disch','Mv CISL Leene- Disch','Mv CISL Leene- Disch','1','Mv CISL Leene- Disch',NULL,'2018-09-27 13:57:23',0),(1453,'254','Mv Anna Oldendorff 2','Mv ANNA OLDENDORFF 02/14 {JUNE\'14}','Mv ANNA OLDENDORFF 02/14 {JUNE\'14}','1','Mv Anna Oldendorff 2',NULL,'2018-09-27 13:57:23',0),(1454,'255','Mv Thor Mercury 1/14','Mv Thor Mercury 01/14','Mv Thor Mercury 01/14','1','Mv Thor Mercury 1/14',NULL,'2018-09-27 13:57:23',0),(1455,'256','Mv Nord Independence','MV NORD INDEPENDENCE 01/14 [MAY\'14}','MV NORD INDEPENDENCE 01/14 [MAY\'14}','1','Mv Nord Independence',NULL,'2018-09-27 13:57:23',0),(1456,'257','Mv Gulf Castle 01/14','Mv GULF CASTLE 01/14 {MAY\'14}','Mv GULF CASTLE 01/14 {MAY\'14}','1','Mv Gulf Castle 01/14',NULL,'2018-09-27 13:57:23',0),(1457,'258','Mv Hugo Schulte 01','Mv Hugo Schulte 01/14','Mv Hugo Schulte 01/14','1','Mv Hugo Schulte 01',NULL,'2018-09-27 13:57:23',0),(1458,'259','Mv Danos Z - 01/14','Mv DANOS Z - 01/14 {JUNE\'14}','Mv DANOS Z - 01/14 {JUNE\'14}','1','Mv Danos Z - 01/14',NULL,'2018-09-27 13:57:23',0),(1459,'260','Mv Ambrosius Tide 01','MV AMBROSIUS TIDE 01/14 {JUNE\'14}','MV AMBROSIUS TIDE 01/14 {JUNE\'14}','1','Mv Ambrosius Tide 01',NULL,'2018-09-27 13:57:23',0),(1460,'261','Mv Atlantica 01','MV ATLANTICA 01/14 {JUNE\'14}','MV ATLANTICA 01/14 {JUNE\'14}','1','Mv Atlantica 01',NULL,'2018-09-27 13:57:23',0),(1461,'262','Mv Ermis 01/14','MV ERMIS 01/14 {JUNE\'14}','MV ERMIS 01/14 {JUNE\'14}','1','Mv Ermis 01/14',NULL,'2018-09-27 13:57:23',0),(1462,'263','Mv IBIS Bulker 01/14','Mv IBIS Bulker 01/14','Mv IBIS Bulker 01/14','1','Mv IBIS Bulker 01/14',NULL,'2018-09-27 13:57:23',0),(1463,'264','Mv HHL Amazon 01/14','Mv HHL Amazon 01/14','Mv HHL Amazon 01/14','1','Mv HHL Amazon 01/14',NULL,'2018-09-27 13:57:23',0),(1464,'265','Mv NAVIOS IONIAN 01','Mv NAVIOS IONIAN 01/14 {JUNE\'14}','Mv NAVIOS IONIAN 01/14 {JUNE\'14}','1','Mv NAVIOS IONIAN 01',NULL,'2018-09-27 13:57:23',0),(1465,'266','MV SVS MONK','MV SVS MONK 01/14 {JUNE\'14}','MV SVS MONK 01/14 {JUNE\'14}','1','MV SVS MONK',NULL,'2018-09-27 13:57:23',0),(1466,'267','Mt JO Kashi 01/14','MT JO KASHI 01/14 {JUNE\'14}','MT JO KASHI 01/14 {JUNE\'14}','1','Mt JO Kashi 01/14',NULL,'2018-09-27 13:57:23',0),(1467,'268','MV VEGA TAURUS 01/14','MV VEGA TAURUS 01/14 {JULY\'14}','MV VEGA TAURUS 01/14 {JULY\'14}','1','MV VEGA TAURUS 01/14',NULL,'2018-09-27 13:57:23',0),(1468,'269','MT Horizon Diana 01','MT HORIZON DIANA 01/14 {JUNE\'14}','MT HORIZON DIANA 01/14 {JUNE\'14}','1','MT Horizon Diana 01',NULL,'2018-09-27 13:57:23',0),(1469,'270','MV MAGNUM FORCE 01','MV MAGNUM FORCE 01/14 {JULY\'14}','MV MAGNUM FORCE 01/14 {JULY\'14}','1','MV MAGNUM FORCE 01',NULL,'2018-09-27 13:57:23',0),(1470,'271','Mv Danos Z 01/14','Mv Danos Z 01/14','Mv Danos Z 01/14','1','Mv Danos Z 01/14',NULL,'2018-09-27 13:57:23',0),(1471,'272','Mv Star Mistral 1/14','Mv STAR MYSTRAL 1/14 {JUNE\'14}','Mv STAR MYSTRAL 1/14 {JUNE\'14}','1','Mv Star Mistral 1/14',NULL,'2018-09-27 13:57:23',0),(1472,'273','Mv SVS Monck 01/14','Mv SVS Monck 01/14','Mv SVS Monck 01/14','1','Mv SVS Monck 01/14',NULL,'2018-09-27 13:57:23',0),(1473,'274','Mv Jo Kashi 01/14','Mv Jo Kashi 01/14','Mv Jo Kashi 01/14','1','Mv Jo Kashi 01/14',NULL,'2018-09-27 13:57:23',0),(1474,'275','MV CISL LEENE 07/14','MV CISL LEENE 07/14 { JULY\'14}','MV CISL LEENE 07/14 { JULY\'14}','1','MV CISL LEENE 07/14',NULL,'2018-09-27 13:57:23',0),(1475,'276','MV SOLDOY 01/14','MV SOLDOY 01/14 {JULY\'14}','MV SOLDOY 01/14 {JULY\'14}','1','MV SOLDOY 01/14',NULL,'2018-09-27 13:57:23',0),(1476,'277','MV ARIETTA 01/14','MV ARIETTA 01/14 {JULY\'14}','MV ARIETTA 01/14 {JULY\'14}','1','MV ARIETTA 01/14',NULL,'2018-09-27 13:57:23',0),(1477,'278','Mv CISL L - Lubrican','Mv CISL L - Lubrican','Mv CISL L - Lubrican','1','Mv CISL L - Lubrican',NULL,'2018-09-27 13:57:23',0),(1478,'279','MV CISL LEENE7/14-02','MV CISL LEENE 07/14-02 {AUG\'14}','MV CISL LEENE 07/14-02 {AUG\'14}','1','MV CISL LEENE7/14-02',NULL,'2018-09-27 13:57:23',0),(1479,'280','Mv Atalanta V.02A','Mv ATALANTA 02/14 {MKE- AUG\'14}','Mv ATALANTA 02/14 {MKE- AUG\'14}','1','Mv Atalanta V.02A',NULL,'2018-09-27 13:57:23',0),(1480,'281','Mv JS Danube 01/14','Mv JS DANUBE 01/14 {SEPT\'14}','Mv JS DANUBE 01/14 {SEPT\'14}','1','Mv JS Danube 01/14',NULL,'2018-09-27 13:57:23',0),(1481,'282','Mv CISL LEENE 03/14','Mv CISL LEENE 03/14','Mv CISL LEENE 03/14','1','Mv CISL LEENE 03/14',NULL,'2018-09-27 13:57:23',0),(1482,'283','MV CISLLEENE 01/14-3','MV CISL LEENE 01/14 - 3 {AUG\'14}','MV CISL LEENE 01/14 - 3 {AUG\'14}','1','MV CISLLEENE 01/14-3',NULL,'2018-09-27 13:57:23',0),(1483,'284','Mv Theoskepasti 1/14','Mv THEOSKEPASTI 01/14 {AUG\'14}','Mv THEOSKEPASTI 01/14 {AUG\'14}','1','Mv Theoskepasti 1/14',NULL,'2018-09-27 13:57:23',0),(1484,'285','Mv MUSKIE 01/14','Mv MUSKIE 01/14 {AUG\'14}','Mv MUSKIE 01/14 {AUG\'14}','1','Mv MUSKIE 01/14',NULL,'2018-09-27 13:57:23',0),(1485,'286','MV HALIL SAHIN 02/14','MV HALIL SAHIN 02/14 {AUG\'14}','MV HALIL SAHIN 02/14 {AUG\'14}','1','MV HALIL SAHIN 02/14',NULL,'2018-09-27 13:57:23',0),(1486,'287','Mt Gulf Coral 01   ','Mt GULF CORAL 01/14 {AUG\'14}   ','Mt GULF CORAL 01/14 {AUG\'14}    ','1','Mt Gulf Coral 01   ',NULL,'2018-09-27 13:57:23',0),(1487,'288','Mt Muskie ','MT MUSKIE 01/14 {AUG\'14}','MT MUSKIE 01/14 {AUG\'14}','1','Mt Muskie ',NULL,'2018-09-27 13:57:23',0),(1488,'289','Mv Thor Endeavour 01','Mv THOR ENDEAVOUR 01/14 {SEPT\'14}','Mv THOR ENDEAVOUR 01/14 {SEPT\'14}','1','Mv Thor Endeavour 01',NULL,'2018-09-27 13:57:23',0),(1489,'290','Mv CISL Leene 7-14/3','Mv CISL Leene 07-14/03','Mv CISL Leene 07-14/03','1','Mv CISL Leene 7-14/3',NULL,'2018-09-27 13:57:23',0),(1490,'291','Mv CISL L. 07/14-04','Mv CISL LEENE 07/14-04{SEPT\'14}','Mv CISL LEENE 07/14-04{SEPT\'14}','1','Mv CISL L. 07/14-04',NULL,'2018-09-27 13:57:23',0),(1491,'292','Mv JS Sanaga 01/14','Mv JS SANAGA 01/14 {OCT\'14}','Mv JS SANAGA 01/14 {OCT\'14}','1','Mv JS Sanaga 01/14',NULL,'2018-09-27 13:57:23',0),(1492,'293','Mv JS Volga 01/14','Mv JS VOLGA 01/14 {SEPT\'14}','Mv JS VOLGA 01/14 {SEPT\'14}','1','Mv JS Volga 01/14',NULL,'2018-09-27 13:57:23',0),(1493,'294','MV UNITED SPIRIT 1','MV UNITED SPIRIT 1 {AUG\'15}','MV UNITED SPIRIT 1 {AUG\'15}','1','MV UNITED SPIRIT 1',NULL,'2018-09-27 13:57:23',0),(1494,'295','Mv Mandarin Phoenix ','Mv Mandarin Phoenix - Loading ','Mv Mandarin Phoenix - Loading','1','Mv Mandarin Phoenix ',NULL,'2018-09-27 13:57:23',0),(1495,'296','Mv Skua 01/14','Mv SKUA 01/14 {SEPT\'14}','Mv SKUA 01/14 {SEPT\'14}','1','Mv Skua 01/14',NULL,'2018-09-27 13:57:23',0),(1496,'297','Mv Aragonit 01/14','Mv ARAGONIT 01/14 {SEPT\'14}','Mv ARAGONIT 01/14 {SEPT\'14}','1','Mv Aragonit 01/14',NULL,'2018-09-27 13:57:23',0),(1497,'298','Mv CISL Leene 8/14-2','Mv CISL LEENE 8/14-04 {NOV\'14}','Mv CISL LEENE 8/14-04 {NOV\'14}','1','Mv CISL Leene 8/14-2',NULL,'2018-09-27 13:57:23',0),(1498,'299','Mv Shanghai Bulker ','Mv SHANGHAI BULKER 01/14{SEPT\'14}','Mv SHANGHAI BULKER 01/14{SEPT\'14}','1','Mv Shanghai Bulker ',NULL,'2018-09-27 13:57:23',0),(1499,'300','Mv Lo Shen 01/14','Mv LO SHEN 01/14 {SEPT\'14}','Mv LO SHEN 01/14 {SEPT\'14}','1','Mv Lo Shen 01/14',NULL,'2018-09-27 13:57:23',0),(1500,'301','MV CISL LEENE 08/14','MV CISL LEENE 08/14-2 {OCT\'14}','MV CISL LEENE 08/14-2 {OCT\'14}','1','MV CISL LEENE 08/14',NULL,'2018-09-27 13:57:23',0),(1501,'302','MV CISL L. 08/14-01','MV CISL LEENE 08/14 -01 {SEPT\'14}','MV CISL LEENE 08/14 -01 {SEPT\'14}','1','MV CISL L. 08/14-01',NULL,'2018-09-27 13:57:23',0),(1502,'303','Mv Gulf Coral 01/14','Mv Gulf Coral 01/14','Mv Gulf Coral 01/14','1','Mv Gulf Coral 01/14',NULL,'2018-09-27 13:57:23',0),(1503,'304','Mv Mycenae ','Mv MYCENAE 01/14 {OCT\'14}','Mv MYCENAE 01/14 {OCT\'14}','1','Mv Mycenae ',NULL,'2018-09-27 13:57:23',0),(1504,'305','Mv GIORGOS 01/14','Mv GIORGOS 01/14 {DEC\'14}','Mv GIORGOS 01/14 {DEC\'14}','1','Mv GIORGOS 01/14',NULL,'2018-09-27 13:57:23',0),(1505,'306','MV SHRIKE 01/14','MV SHRIKE 01/14 {OCT\'14}','MV SHRIKE 01/14 {OCT\'14}','1','MV SHRIKE 01/14',NULL,'2018-09-27 13:57:23',0),(1506,'307','Mv CISL Leene 08.03','Mv CISL LEENE 08/14-03{OCT\'14}','Mv CISL LEENE 08/14-03{OCT\'14}','1','Mv CISL Leene 08.03',NULL,'2018-09-27 13:57:23',0),(1507,'308','Mv Olympic Peace 01','Mv OLYMPIC PEACE 01/14{OCT\'14}','Mv OLYMPIC PEACE 01/14{OCT\'14}','1','Mv Olympic Peace 01',NULL,'2018-09-27 13:57:23',0),(1508,'309','Mv JS Sanaga 02/14 ','Mv JS SANAGA 02/14{DEC\'14} ','Mv JS SANAGA 02/14{DEC\'14} ','1','Mv JS Sanaga 02/14 ',NULL,'2018-09-27 13:57:23',0),(1509,'310','Mv JS Yangtse 01/14','Mv JS YANGTSE 01/14{NOV\'14}','Mv JS YANGTSE 01/14{NOV\'14}','1','Mv JS Yangtse 01/14',NULL,'2018-09-27 13:57:23',0),(1510,'311','Mv Diamond Sky 01/14','Mv DIAMOND SKY 01/14{NOV\'14}','Mv DIAMOND SKY 01/14{NOV\'14}','1','Mv Diamond Sky 01/14',NULL,'2018-09-27 13:57:23',0),(1511,'312','Mv Copenship Europe ','Mv COPENSHIP EUROPE 01/14{NOV\'14}','Mv COPENSHIP EUROPE 01/14{NOV\'14}','1','Mv Copenship Europe ',NULL,'2018-09-27 13:57:23',0),(1512,'313','Mv Captain Livanos ','Mv CAPTAIN LIVANOS 01/14 {OCT\'14}','Mv CAPTAIN LIVANOS 01/14 {OCT\'14}','1','Mv Captain Livanos ',NULL,'2018-09-27 13:57:23',0),(1513,'314','Mv Newseas Jade 01','Mv NEWSEAS JADE 01/14 {NOV\'14}','Mv NEWSEAS JADE 01/14 {NOV\'14}','1','Mv Newseas Jade 01',NULL,'2018-09-27 13:57:23',0),(1514,'315','Mv Star Delta 01/14','Mv STAR DELTA 01/14 {NOV\'14} ','Mv STAR DELTA 01/14 {NOV\'14}  ','1','Mv Star Delta 01/14',NULL,'2018-09-27 13:57:23',0),(1515,'316','Mv V Gannet 01/14','Mv V GANNET 01/14 {NOV\'14}','Mv V GANNET 01/14 {NOV\'14}','1','Mv V Gannet 01/14',NULL,'2018-09-27 13:57:23',0),(1516,'317','MV CISL LEENE 09/14','MV CISL LEENE 09/14 -02 {NOV\'14}','MV CISL LEENE 09/14 -02 {NOV\'14}','1','MV CISL LEENE 09/14',NULL,'2018-09-27 13:57:23',0),(1517,'318','Mv Nikolaos A 01/14','Mv NIKOLAOS A 01/14{OCT\'14}','Mv NIKOLAOS A 01/14{OCT\'14}','1','Mv Nikolaos A 01/14',NULL,'2018-09-27 13:57:23',0),(1518,'319','Mv E. Matsuyama 1/14','Mv E. MATSUYAMA 01/14 {OCT\'14}','Mv E. MATSUYAMA 01/14 {OCT\'14}','1','Mv E. Matsuyama 1/14',NULL,'2018-09-27 13:57:23',0),(1519,'320','Mt Surveta 01/14','MT SURVETA 01/14 {OCT\'14}','MT SURVETA 01/14 {OCT\'14}','1','Mt Surveta 01/14',NULL,'2018-09-27 13:57:23',0),(1520,'321','MV SAINT VASSILIOS','M/V \'SAINT VASSILIOS\' PDA','M/V \'SAINT VASSILIOS\' PDA','1','MV SAINT VASSILIOS',NULL,'2018-09-27 13:57:23',0),(1521,'322','MV KOTA GUNAWAN-FW','MV KOTA GUNAWAN-FW{OCT\'14}','MV KOTA GUNAWAN-FW{OCT\'14}','1','MV KOTA GUNAWAN-FW',NULL,'2018-09-27 13:57:23',0),(1522,'323','Mv Ocean Virgo 01/14','Mv OCEAN VIRGO 01/14 {DEC\'14}','Mv OCEAN VIRGO 01/14 {DEC\'14}','1','Mv Ocean Virgo 01/14',NULL,'2018-09-27 13:57:23',0),(1523,'324','Mv CS Sonoma 01/14','Mv CS SONOMA 01/14 {NOV\'14}','Mv CS SONOMA 01/14 {NOV\'14}','1','Mv CS Sonoma 01/14',NULL,'2018-09-27 13:57:23',0),(1524,'325','MV \"CS SACHA\" 01/14','MV \"CS SACHA\" - 01/14','MV \"CS SACHA\" - 01/14','1','MV \"CS SACHA\" 01/14',NULL,'2018-09-27 13:57:23',0),(1525,'326','Mv Gloria 01/14','Mv GLORIA  01/14','Mv GLORIA  01/14','1','Mv Gloria 01/14',NULL,'2018-09-27 13:57:23',0),(1526,'327','Mv Asali 01/14','Mv Asali 01/15 {JAN\'15}','Mv Asali 01/15 {JAN\'15}','1','Mv Asali 01/14',NULL,'2018-09-27 13:57:23',0),(1527,'1327','Mv JS Rhone 2/14(18)','Mv JS RHONE 02/14 {DEC\'14}','Mv JS RHONE 02/14 {DEC\'14}','1','Mv JS Rhone 2/14(18)',NULL,'2018-09-27 13:57:23',0),(1528,'1328','Mv Lara 01/14','Mv LARA 01/14 {DEC\'14}','Mv LARA 01/14 {DEC\'14}','1','Mv Lara 01/14',NULL,'2018-09-27 13:57:23',0),(1529,'1329','Mv STD 32','Mv STD 32','Mv STD 32','1','Mv STD 32',NULL,'2018-09-27 13:57:23',0),(1530,'1330','Mv Hugo Schulte 02','Mv HUGO SCHULTE 02/14 {NOV\'14}','Mv HUGO SCHULTE 02/14 {NOV\'14}','1','Mv Hugo Schulte 02',NULL,'2018-09-27 13:57:23',0),(1531,'1331','Mt Karei 02/14','Mt KAREI 02/14 {NOV\'14}','Mt KAREI 02/14 {NOV\'14}','1','Mt Karei 02/14',NULL,'2018-09-27 13:57:23',0),(1532,'1332','Mv Florence 01/14','MV FLORENCE D 01/15 {JAN\'15}','MV FLORENCE D 01/15 {JAN\'15}','1','Mv Florence 01/14',NULL,'2018-09-27 13:57:23',0),(1533,'1333','Mv CS Sacha 02/14','Mv CS Sacha 01/15 {FEB\'15}','Mv CS Sacha 01/15 {FEB\'15}','1','Mv CS Sacha 02/14',NULL,'2018-09-27 13:57:23',0),(1534,'1334','MV CISL LEENE12/14','MV CISL LEENE 12/14 {BUNKERS}','MV CISL LEENE 12/14 {BUNKERS}','1','MV CISL LEENE12/14',NULL,'2018-09-27 13:57:23',0),(1535,'1335','Mv Rinia 01/14','Mv RINIA 01/14 {DEC\'14}','Mv RINIA 01/14 {DEC\'14}','1','Mv Rinia 01/14',NULL,'2018-09-27 13:57:23',0),(1536,'1336','MV NAVIOS ASTRA 01','MV NAVIOS ASTRA 01/15 {JAN\'15}','MV NAVIOS ASTRA 01/15 {JAN\'15}','1','MV NAVIOS ASTRA 01',NULL,'2018-09-27 13:57:23',0),(1537,'1337','MV DRAFTSLAYER 01','MV DRAFT SLAYER 01/14','MV DRAFT SLAYER 01/14','1','MV DRAFTSLAYER 01',NULL,'2018-09-27 13:57:23',0),(1538,'1338','Mv Aruna Hulya 01/15','MvARUNA HULYA 01/15{JAN\'15}','MvARUNA HULYA 01/15{JAN\'15}','1','Mv Aruna Hulya 01/15',NULL,'2018-09-27 13:57:23',0),(1539,'1339','Mv Shropshire 01/15','MV SHROPSHIRE 01/14 {FEB\'15}','MV SHROPSHIRE 01/14 {FEB\'15}','1','Mv Shropshire 01/15',NULL,'2018-09-27 13:57:23',0),(1540,'1340','Mv SURVETTA 01/15','Mv SURVETTA 01/15 {JAN\'15}','Mv SURVETTA 01/15 {JAN\'15}','1','Mv SURVETTA 01/15',NULL,'2018-09-27 13:57:23',0),(1541,'1341','Mv Densa Leopard 01','Mv DENSA LEOPARD 01/15 {JAN\'15}','Mv DENSA LEOPARD 01/15 {JAN\'15}','1','Mv Densa Leopard 01',NULL,'2018-09-27 13:57:23',0),(1542,'1342','Mv JS Missouri 01/15','Mv JS MISSOURI 01/15{FEB\'15}','Mv JS MISSOURI 01/15{FEB\'15}','1','Mv JS Missouri 01/15',NULL,'2018-09-27 13:57:23',0),(1543,'1343','Mv Atakama 01/15','Mv ATACAMA 01/15 {FEB\'15}','Mv ATACAMA 01/15 {FEB\'15}','1','Mv Atakama 01/15',NULL,'2018-09-27 13:57:23',0),(1544,'1344','Mv Suvreta 02/14','Mv SURVETTA 02/14','Mv SURVETTA 02/14','1','Mv Suvreta 02/14',NULL,'2018-09-27 13:57:23',0),(1545,'1345','Mv Papillon 01/15','Mv PAPILLON  01/15{JAN\'15}','Mv PAPILLON  01/15{JAN\'15}','1','Mv Papillon 01/15',NULL,'2018-09-27 13:57:23',0),(1546,'1346','Mv Stove Transport 1','Mv STOVE TRANSPORT 01/15 {FEB\'15}','Mv STOVE TRANSPORT 01/15 {FEB\'15}','1','Mv Stove Transport 1',NULL,'2018-09-27 13:57:23',0),(1547,'1347','Mv Agia Filothei 01','Mv AGIA FILOTHEI 01/15{FEB\'15}','Mv AGIA FILOTHEI 01/15{FEB\'15}','1','Mv Agia Filothei 01',NULL,'2018-09-27 13:57:23',0),(1548,'1348','Mv Mycenae 01/15','Mv MYCENAE 01/15 {MAR\'15}','Mv MYCENAE 01/15 {MAR\'15}','1','Mv Mycenae 01/15',NULL,'2018-09-27 13:57:23',0),(1549,'1349','Mv CISL Leene 01/15B','Mv CISL LEENE 01/15B{FEB\'15}','Mv CISL LEENE 01/15B{FEB\'15}','1','Mv CISL Leene 01/15B',NULL,'2018-09-27 13:57:23',0),(1550,'1350','Mv Abyssinian 01/15','Mv ABYSSINIAN 01/15 {MAR\'15}','Mv ABYSSINIAN 01/15 {MAR\'15}','1','Mv Abyssinian 01/15',NULL,'2018-09-27 13:57:23',0),(1551,'1351','Mv Pacific Pride 01','Mv PACIFIC PRIDE 01/15{FEB\'15}','Mv PACIFIC PRIDE 01/15{FEB\'15}','1','Mv Pacific Pride 01',NULL,'2018-09-27 13:57:23',0),(1552,'1352','Mv Tai Harvest 01/15','Mv TAI HARVEST 01/15 {MAR\'15}','Mv TAI HARVEST 01/15 {MAR\'15}','1','Mv Tai Harvest 01/15',NULL,'2018-09-27 13:57:23',0),(1553,'1353','Mv V Gannet 01/15','MV V GANNET 01/15 {MARCH\'15}','MV V GANNET 01/15 {MARCH\'15}','1','Mv V Gannet 01/15',NULL,'2018-09-27 13:57:23',0),(1554,'1354','Mv Pacific Ace 01/15','Mv PACIFIC ACE 01/15{ MAR\'15}','Mv PACIFIC ACE 01/15{ MAR\'15}','1','Mv Pacific Ace 01/15',NULL,'2018-09-27 13:57:23',0),(1555,'1355','Mv Petrel Bulker 01','Mv PETREL BULKER 01/15 {FEB\'15}','Mv PETREL BULKER 01/15 {FEB\'15}','1','Mv Petrel Bulker 01',NULL,'2018-09-27 13:57:23',0),(1556,'1356','Mv Pacific Bright 01','Mv PACIFIC BRIGHT 01/15 {MAR\'15}','Mv PACIFIC BRIGHT 01/15 {MAR\'15}','1','Mv Pacific Bright 01',NULL,'2018-09-27 13:57:23',0),(1557,'1357','Mv Alam Manis 01/15','Mv ALAM MANIS 01/15 {MAR\'15}','Mv ALAM MANIS 01/15 {MAR\'15}','1','Mv Alam Manis 01/15',NULL,'2018-09-27 13:57:23',0),(1558,'1358','Mv Hydrus 01/15','Mv HYDRUS 01/15{APRIL\'15}','Mv HYDRUS 01/15{APRIL\'15}','1','Mv Hydrus 01/15',NULL,'2018-09-27 13:57:23',0),(1559,'1359','MV JS BANDOL 01/15','MV JS BANDOL 01/15 {APRIL\'15}','MV JS BANDOL 01/15 {APRIL\'15}','1','MV JS BANDOL 01/15',NULL,'2018-09-27 13:57:23',0),(1560,'1360','Mv V Petrel  01/15','Mv V PETREL  01/15 {JUNE\'15}','Mv V PETREL  01/15 {JUNE\'15}','1','Mv V Petrel  01/15',NULL,'2018-09-27 13:57:23',0),(1561,'1361','Mv Pyxis 01/15','Mv PYXIS 01/15 {MAR\'15}','Mv PYXIS 01/15 {MAR\'15}','1','Mv Pyxis 01/15',NULL,'2018-09-27 13:57:23',0),(1562,'1362','Mv Pike 01/15','Mv PIKE 01/15 {MAR\'15}','Mv PIKE 01/15 {MAR\'15}','1','Mv Pike 01/15',NULL,'2018-09-27 13:57:23',0),(1563,'1363','Mt Aegea 01/2015','Mt AEGEA 01/15 {MAR\'15}','Mt AEGEA 01/15 {MAR\'15}','1','Mt Aegea 01/2015',NULL,'2018-09-27 13:57:23',0),(1564,'1364','Mv Siena 01/15','Mv SIENA 01/15 {MAR\'15}','Mv SIENA 01/15 {MAR\'15}','1','Mv Siena 01/15',NULL,'2018-09-27 13:57:23',0),(1565,'1365','Pacific Guardian 01','Mv Pacific Guardian 01/15','Mv Pacific Guardian 01/15','1','Pacific Guardian 01',NULL,'2018-09-27 13:57:23',0),(1566,'1366','Mv Agia Filothei 02','Mv AGIA FILOTHEI 02/15 {APRIL\'15}','Mv AGIA FILOTHEI 02/15 {APRIL\'15}','1','Mv Agia Filothei 02',NULL,'2018-09-27 13:57:23',0),(1567,'1367','Mv Man Phoenix 01/15','Mv MANDARIN PHOENIX 01/15{MAY\'15}','Mv MANDARIN PHOENIX 01/15{MAY\'15}','1','Mv Man Phoenix 01/15',NULL,'2018-09-27 13:57:23',0),(1568,'1368','Mv JS Amazon 01/15','Mv JS AMAZON 01/15{APRIL\'15}','Mv JS AMAZON 01/15{APRIL\'15}','1','Mv JS Amazon 01/15',NULL,'2018-09-27 13:57:23',0),(1569,'1369','Mv CISL Leene 02/15','Mv CISL LEENE 02/15{APRIL\'15}','Mv CISL LEENE 02/15{APRIL\'15}','1','Mv CISL Leene 02/15',NULL,'2018-09-27 13:57:23',0),(1570,'1370','Mv Rainbow Ivy 01/15','Mv RAINBOW IVY 01/15{JUNE\'15}','Mv RAINBOW IVY 01/15{JUNE\'15}','1','Mv Rainbow Ivy 01/15',NULL,'2018-09-27 13:57:23',0),(1571,'1371','MV PACIFIC GUARDIAN1','MV PACIFIC GUARDIAN 01/15{APRIL\'15}','MV PACIFIC GUARDIAN 01/15{APRIL\'15}','1','MV PACIFIC GUARDIAN1',NULL,'2018-09-27 13:57:23',0),(1572,'1372','MV HECTOR 01','MV HECTOR 01/15 {MAY\'15}','MV HECTOR 01/15 {MAY\'15}','1','MV HECTOR 01',NULL,'2018-09-27 13:57:23',0),(1573,'1373','MV PACIFIC ACE 02','MV PACIFIC ACE 02/15{APRIL\'15}','MV PACIFIC ACE 02/15{APRIL\'15}','1','MV PACIFIC ACE 02',NULL,'2018-09-27 13:57:23',0),(1574,'1374','Mv Rhodos 01/15','Mv RHODOS 01/15 {APRIL\'15}','Mv RHODOS 01/15 {APRIL\'15}','1','Mv Rhodos 01/15',NULL,'2018-09-27 13:57:23',0),(1575,'1375','Mv Giogiors Dracopos','Mv GIOGIORS DRACOPOS 01/15{APRIL\'15}','Mv GIOGIORS DRACOPOS 01/15{APRIL\'15}','1','Mv Giogiors Dracopos',NULL,'2018-09-27 13:57:23',0),(1576,'1376','Mv JS Danube 01/15','Mv JS DANUBE 01/15{JUNE\'15}','Mv JS DANUBE 01/15{JUNE\'15}','1','Mv JS Danube 01/15',NULL,'2018-09-27 13:57:23',0),(1577,'1377','Mv JS Yukon 01/15','Mv JS YUKON 01/15 {JUNE\'15}','Mv JS YUKON 01/15 {JUNE\'15}','1','Mv JS Yukon 01/15',NULL,'2018-09-27 13:57:23',0),(1578,'1378','Mv Siena 02/15','Mv SIENA 02/15 {APRIL\'15}','Mv SIENA 02/15 {APRIL\'15}','1','Mv Siena 02/15',NULL,'2018-09-27 13:57:23',0),(1579,'1379','MV GEMINI PIONEER 01','MV GEMINI PIONEER 01/15 {MAY\'15}','MV GEMINI PIONEER 01/15 {MAY\'15}','1','MV GEMINI PIONEER 01',NULL,'2018-09-27 13:57:23',0),(1580,'1380','Mv Thrush 01/15','Mv THRUSH 01/15 {MAY\'15}','Mv THRUSH 01/15 {MAY\'15}','1','Mv Thrush 01/15',NULL,'2018-09-27 13:57:23',0),(1581,'1381','Mv Muskie 01/15','Mv MUSKIE 01/15{MAY\'15}','Mv MUSKIE 01/15{MAY\'15}','1','Mv Muskie 01/15',NULL,'2018-09-27 13:57:23',0),(1582,'1382','Mv TBN - Lamu Ops','Mv TBN - Lamu Ops','Mv TBN - Lamu Ops','1','Mv TBN - Lamu Ops',NULL,'2018-09-27 13:57:23',0),(1583,'1383','MV OCEAN VENDOR 01','MV OCEAN VENDOR 01/15 {JUNE\'15}','MV OCEAN VENDOR 01/15 {JUNE\'15}','1','MV OCEAN VENDOR 01',NULL,'2018-09-27 13:57:23',0),(1584,'1384','MV HARRIER 01','MV HARRIER 01/15 {JUNE\'15}','MV HARRIER 01/15 {JUNE\'15}','1','MV HARRIER 01',NULL,'2018-09-27 13:57:23',0),(1585,'1385','Mv Zilos','Mv ZILOS 01/15 {JUNE\'15}','Mv ZILOS 01/15 {JUNE\'15}','1','Mv Zilos',NULL,'2018-09-27 13:57:23',0),(1586,'1386','Mv Bulk Uruguay','XXXXXXXX','XXXXXXXX','1','Mv Bulk Uruguay',NULL,'2018-09-27 13:57:23',0),(1587,'1387','Mv Green Heron 01/15','Mv GREEN HERON 01/15{JUNE\'15}','Mv GREEN HERON 01/15{JUNE\'15}','1','Mv Green Heron 01/15',NULL,'2018-09-27 13:57:23',0),(1588,'1388','Mv Azure Bay 01/15','Mv AZURE BAY 01/15 {JUNE\'15}','Mv AZURE BAY 01/15 {JUNE\'15}','1','Mv Azure Bay 01/15',NULL,'2018-09-27 13:57:23',0),(1589,'1389','Mv Minerva Indiana 1','Mv MINERVA INDIANA 1/15 {JUNE\'15}','Mv MINERVA INDIANA 1/15 {JUNE\'15}','1','Mv Minerva Indiana 1',NULL,'2018-09-27 13:57:23',0),(1590,'1390','Mv Bold Voyager 1/15','Mv Bold Voyager 1/15','Mv Bold Voyager 1/15','1','Mv Bold Voyager 1/15',NULL,'2018-09-27 13:57:23',0),(1591,'1391','Mv Glagship Ivy 1/15','Mv Glagship Ivy 1/15','Mv Glagship Ivy 1/15','1','Mv Glagship Ivy 1/15',NULL,'2018-09-27 13:57:23',0),(1592,'1392','Mv Bulk Uruguay 1/15','Mv BULK URUGUAY 01/15 {JULY\'15}','Mv BULK URUGUAY 01/15 {JULY\'15}','1','Mv Bulk Uruguay 1/15',NULL,'2018-09-27 13:57:23',0),(1593,'1393','Mv Xin Hai Tong 8','Mv XIN HAI TONG 8 01/15{AUG\'15}','Mv XIN HAI TONG 8 01/15{AUG\'15}','1','Mv Xin Hai Tong 8',NULL,'2018-09-27 13:57:23',0),(1594,'1394','Mv Flagship Ivy ','Mv FLAGSHIP IVY 01/15{JULY\'15} ','Mv FLAGSHIP IVY 01/15{JULY\'15} ','1','Mv Flagship Ivy ',NULL,'2018-09-27 13:57:23',0),(1595,'1395','ESL TRIMMER 2','ESL TRIMMER II - KHMA 812G{2015}','ESL TRIMMER II - KHMA 812G{2015}','1','ESL TRIMMER 2',NULL,'2018-09-27 13:57:23',0),(1596,'2395','Mv Thor Menelaus 1','Mv THOR MENELAUS 01/15 {AUG\'15}','Mv THOR MENELAUS 01/15 {AUG\'15}','1','Mv Thor Menelaus 1',NULL,'2018-09-27 13:57:23',0),(1597,'2396','Mv CISL Leene 03/15','Mv CISL LEENE 03/15{JULY\'15}','Mv CISL LEENE 03/15{JULY\'15}','1','Mv CISL Leene 03/15',NULL,'2018-09-27 13:57:23',0),(1598,'2397','Mv JS Yangtse 01/15','Mv JS YANGTSE 01/15{AUG\'15}','Mv JS YANGTSE 01/15{AUG\'15}','1','Mv JS Yangtse 01/15',NULL,'2018-09-27 13:57:23',0),(1599,'2398','Mv Nautical Hilary','Mv NAUTICAL HILARY 01/15 {JULY\'15}','Mv NAUTICAL HILARY 01/15 {JULY\'15}','1','Mv Nautical Hilary',NULL,'2018-09-27 13:57:23',0),(1600,'2399','Mv Oriental Green 01','Mv ORIENTAL GREEN 01/15{JULY\'15}','Mv ORIENTAL GREEN 01/15{JULY\'15}','1','Mv Oriental Green 01',NULL,'2018-09-27 13:57:23',0),(1601,'2400','Mv Eurosky 01/15','MV EUROSKY 01/15{OCT\'15}','MV EUROSKY 01/15{OCT\'15}','1','Mv Eurosky 01/15',NULL,'2018-09-27 13:57:23',0),(1602,'2401','Mv Golden Shiner 01','Mv GOLDEN SHINER 01/15 {JULY\'15}','Mv GOLDEN SHINER 01/15 {JULY\'15}','1','Mv Golden Shiner 01',NULL,'2018-09-27 13:57:23',0),(1603,'2402','Mv Symphony 01/15','Mv SYMPHONY 01/15{ JULY\'15}','Mv SYMPHONY 01/15{ JULY\'15}','1','Mv Symphony 01/15',NULL,'2018-09-27 13:57:23',0),(1604,'2403','Mv Themis 01/15','Mv THEMIS 01/15 {SEPT\'15}','Mv THEMIS 01/15 {SEPT\'15}','1','Mv Themis 01/15',NULL,'2018-09-27 13:57:23',0),(1605,'2404','Mv Skaftafell 01/15','Mv SKAFTAFELLl 01/15 {AUG\'15}','Mv SKAFTAFELLl 01/15 {AUG\'15}','1','Mv Skaftafell 01/15',NULL,'2018-09-27 13:57:23',0),(1606,'2405','Mv Multan 01/15','Mv Multan 01/15','Mv Multan 01/15','1','Mv Multan 01/15',NULL,'2018-09-27 13:57:23',0),(1607,'2406','Mv Ocean Properity 1','MV OCEAN PROSPERITY 01/15{AUG\'15}','MV OCEAN PROSPERITY 01/15{AUG\'15}','1','Mv Ocean Properity 1',NULL,'2018-09-27 13:57:23',0),(1608,'2407','MV SERENE SKY','MV SERENE SKY 01/15 {AUG\'15}','MV SERENE SKY 01/15 {AUG\'15}','1','MV SERENE SKY',NULL,'2018-09-27 13:57:23',0),(1609,'2408','Pacific Guardian 02','Mv Pacific Guardian  02/15','Mv Pacific Guardian  02/15','1','Pacific Guardian 02',NULL,'2018-09-27 13:57:23',0),(1610,'2409','Mv Royal Night 01/15','Mv ROYAL KNIGHT 01/15{AUG\'15}','Mv ROYAL KNIGHT 01/15{AUG\'15}','1','Mv Royal Night 01/15',NULL,'2018-09-27 13:57:23',0),(1611,'2410','Mv JS Amazon 02/15','Mv JS AMAZON 02/15 {AUG\'15}','Mv JS AMAZON 02/15 {AUG\'15}','1','Mv JS Amazon 02/15',NULL,'2018-09-27 13:57:23',0),(1612,'2411','PROPOSAL QUOTE','PROPOSAL QUOTE','PROPOSAL QUOTE','1','PROPOSAL QUOTE',NULL,'2018-09-27 13:57:23',0),(1613,'2412','COAL IMP QUOTATION','COAL IMP QUOTATION','COAL IMP QUOTATION','1','COAL IMP QUOTATION',NULL,'2018-09-27 13:57:23',0),(1614,'2413','MV PACIFIC GUARDIAN2','MV PACIFIC GUARDIAN 02/15{AUG\'15}','MV PACIFIC GUARDIAN 02/15{AUG\'15}','1','MV PACIFIC GUARDIAN2',NULL,'2018-09-27 13:57:23',0),(1615,'2414','Mv Pike 02/15','Mv PIKE 02/15{AUG\'15}','Mv PIKE 02/15{AUG\'15}','1','Mv Pike 02/15',NULL,'2018-09-27 13:57:23',0),(1616,'2415','Mv Nikolaos 01/15','Mv NIKOLAOS 01/15{AUG\'15}','Mv NIKOLAOS 01/15{AUG\'15}','1','Mv Nikolaos 01/15',NULL,'2018-09-27 13:57:23',0),(1617,'2416','Mv Jupiter Ace 01/15','Mv JUPITER ACE 01/15{AUG\'15}','Mv JUPITER ACE 01/15{AUG\'15}','1','Mv Jupiter Ace 01/15',NULL,'2018-09-27 13:57:23',0),(1618,'2417','Mv Privgulf 01/15','Mv PRIVGULF 01/15{AUG\'15}','Mv PRIVGULF 01/15{AUG\'15}','1','Mv Privgulf 01/15',NULL,'2018-09-27 13:57:23',0),(1619,'2418','MV EVER PRECIOUS 01','MV EVER PRECIOUS 01/15 {SEPT\'15}','MV EVER PRECIOUS 01/15 {SEPT\'15}','1','MV EVER PRECIOUS 01',NULL,'2018-09-27 13:57:23',0),(1620,'2419','MV VSC TRITON','MV VSC TRITON 01/15 {SEPT\'15}','MV VSC TRITON 01/15 {SEPT\'15}','1','MV VSC TRITON',NULL,'2018-09-27 13:57:23',0),(1621,'2420','MV ANTHIA','MV ANTHIA 01/15 {SEPT\'15}','MV ANTHIA 01/15 {SEPT\'15}','1','MV ANTHIA',NULL,'2018-09-27 13:57:23',0),(1622,'2421','MV FLAGSHIP PRIVET','MV FLAGSHIP PRIVET 01/15 {SEPT\'15}','MV FLAGSHIP PRIVET 01/15 {SEPT\'15}','1','MV FLAGSHIP PRIVET',NULL,'2018-09-27 13:57:23',0),(1623,'2422','MV SIMGE AKSOY 01','MV SIMGE AKSOY 01/15{SEPT\'15}','MV SIMGE AKSOY 01/15{SEPT\'15}','1','MV SIMGE AKSOY 01',NULL,'2018-09-27 13:57:23',0),(1624,'2423','MV DORIC SPIRIT 01','MV DORIC SPIRIT 01/15','MV DORIC SPIRIT 01/15','1','MV DORIC SPIRIT 01',NULL,'2018-09-27 13:57:23',0),(1625,'2424','Mv Chrina 01/15','MV CHRINA','MV CHRINA','1','Mv Chrina 01/15',NULL,'2018-09-27 13:57:23',0),(1626,'2425','Mv Simge Aksoy 01/15','xxxxxx','xxxxxx','1','Mv Simge Aksoy 01/15',NULL,'2018-09-27 13:57:23',0),(1627,'2426','Mv Pollux Star 01/15','Mv POLLUX STAR 01/15{SEPT\'15}','Mv POLLUX STAR 01/15{SEPT\'15}','1','Mv Pollux Star 01/15',NULL,'2018-09-27 13:57:23',0),(1628,'2427','MV CHRINA 01','MV CHRINA 01/15 {SEPT\'15}','MV CHRINA 01/15 {SEPT\'15}','1','MV CHRINA 01',NULL,'2018-09-27 13:57:23',0),(1629,'2428','MV JS MISSISSIPI 01','MV JS MISSISSIPI 01/15 {SEPT\'15}','MV JS MISSISSIPI 01/15 {SEPT\'15}','1','MV JS MISSISSIPI 01',NULL,'2018-09-27 13:57:23',0),(1630,'2429','MV JS LOIRE 01/15','MV JS LOIRE 01/15{SEPT\'15}','MV JS LOIRE 01/15{SEPT\'15}','1','MV JS LOIRE 01/15',NULL,'2018-09-27 13:57:23',0),(1631,'3428','Mv CISL LEENE 04/15','Mv CISL LEENE 04/15 {SEPT\'15}','Mv CISL LEENE 04/15 {SEPT\'15}','1','Mv CISL LEENE 04/15',NULL,'2018-09-27 13:57:23',0),(1632,'3429','MV JS COLORADO 01/15','MV JS COLORADO 01/15 {OCT\'15}','MV JS COLORADO 01/15 {OCT\'15}','1','MV JS COLORADO 01/15',NULL,'2018-09-27 13:57:23',0),(1633,'3430','Mv Clipper Excelsior','Mv CLIPPER EXCELSIOR 01/15{OCT\'15}','Mv CLIPPER EXCELSIOR 01/15{OCT\'15}','1','Mv Clipper Excelsior',NULL,'2018-09-27 13:57:23',0),(1634,'3431','Mv Spring Sunrise 01','Mv SPRING SUNRISE 01/15 { OCT\'15}','Mv SPRING SUNRISE 01/15 { OCT\'15}','1','Mv Spring Sunrise 01',NULL,'2018-09-27 13:57:23',0),(1635,'3432','Mv JS Meuse 01/15','MV JS MEUSE 01/15 {OCT\'15}','MV JS MEUSE 01/15 {OCT\'15}','1','Mv JS Meuse 01/15',NULL,'2018-09-27 13:57:23',0),(1636,'3433','Mv Star Vivian 01/15','MV STAR VIVIAN 01/15{OCT\'15}','MV STAR VIVIAN 01/15{OCT\'15}','1','Mv Star Vivian 01/15',NULL,'2018-09-27 13:57:23',0),(1637,'3434','MV BAO RUN 01','MV BAO RUN 01/15 {OCT\'15}','MV BAO RUN 01/15 {OCT\'15}','1','MV BAO RUN 01',NULL,'2018-09-27 13:57:23',0),(1638,'3435','MV VSC TRITON 02','MV VSC TRITON 02/15','MV VSC TRITON 02/15','1','MV VSC TRITON 02',NULL,'2018-09-27 13:57:23',0),(1639,'3436','MV PLATON 01','MV PLATON 01/15','MV PLATON 01/15','1','MV PLATON 01',NULL,'2018-09-27 13:57:23',0),(1640,'3437','MV DIMITRIS S 01','MV DIMITRIS S 01/15 {OCT\'15}','MV DIMITRIS S 01/15 {OCT\'15}','1','MV DIMITRIS S 01',NULL,'2018-09-27 13:57:23',0),(1641,'3438','MV BOLERO 01','MV BOLERO 01/15 {OCT\'15}','MV BOLERO 01/15 {OCT\'15}','1','MV BOLERO 01',NULL,'2018-09-27 13:57:23',0),(1642,'3439','MV SKAFTAFELL 02','MV SKAFTAFELL 02/15 ','MV SKAFTAFELL 02/15 ','1','MV SKAFTAFELL 02',NULL,'2018-09-27 13:57:23',0),(1643,'3440','MV CISL LEENE 05','MV CISL LEENE 05/15 DryDock{NOV\'15}','MV CISL LEENE 05/15 DryDock{NOV\'15}','1','MV CISL LEENE 05',NULL,'2018-09-27 13:57:23',0),(1644,'3441','MV RAINBOW 01','MV RAINBOW 01/15 {OCT\'15}','MV RAINBOW 01/15 {OCT\'15}','1','MV RAINBOW 01',NULL,'2018-09-27 13:57:23',0),(1645,'3442','MV JS YUKON 02','MV JS YUKON 02/15 {NOV\'15}','MV JS YUKON 02/15 {NOV\'15}','1','MV JS YUKON 02',NULL,'2018-09-27 13:57:23',0),(1646,'3443','MV JS GARONNE 01','MV JS GARONNE 01/15{NOV\'15}','MV JS GARONNE 01/15{NOV\'15}','1','MV JS GARONNE 01',NULL,'2018-09-27 13:57:23',0),(1647,'3444','MV JS YANGTSE 02','MV JS YANGTSE 02/15','MV JS YANGTSE 02/15','1','MV JS YANGTSE 02',NULL,'2018-09-27 13:57:23',0),(1648,'3445','MV LOWLANDS BREEZE ','MV LOWLANDS BREEZE 01/15 {NOV\'15}','MV LOWLANDS BREEZE 01/15 {NOV\'15}','1','MV LOWLANDS BREEZE ',NULL,'2018-09-27 13:57:23',0),(1649,'3446','MV THRUSH 02','Mv THRUSH 01/15 {NOV\'15}','Mv THRUSH 01/15 {NOV\'15}','1','MV THRUSH 02',NULL,'2018-09-27 13:57:23',0),(1650,'3447','TRANSIT 01/15','TRANSIT 01/15- MAURITIUS EXPORT {OCT\'15}','TRANSIT 01/15- MAURITIUS EXPORT {OCT\'15}','1','TRANSIT 01/15',NULL,'2018-09-27 13:57:23',0),(1651,'3448','MV THOR FEARLESS 01','MV THOR FEARLESS 01/15 {NOV\'15}','MV THOR FEARLESS 01/15 {NOV\'15}','1','MV THOR FEARLESS 01',NULL,'2018-09-27 13:57:23',0),(1652,'3449','MV HILAL BEY 01','MV HILAL BEY 01/15 {DEC\'15}','MV HILAL BEY 01/15 {DEC\'15}','1','MV HILAL BEY 01',NULL,'2018-09-27 13:57:23',0),(1653,'3450','MV JS YANGTSE 02/15','MV JS YANGTSE 02/15{NOV\'15}','MV JS YANGTSE 02/15{NOV\'15}','1','MV JS YANGTSE 02/15',NULL,'2018-09-27 13:57:23',0),(1654,'3451','MV AFRICAN ROBIN 01','MV AFRICAN ROBIN 01/15{ NOV\'15}','MV AFRICAN ROBIN 01/15{ NOV\'15}','1','MV AFRICAN ROBIN 01',NULL,'2018-09-27 13:57:23',0),(1655,'3452','MV NORD HOUSTON 01','MV NORD HOUSTON 01/15 {NOV\'15}','MV NORD HOUSTON 01/15 {NOV\'15}','1','MV NORD HOUSTON 01',NULL,'2018-09-27 13:57:23',0),(1656,'3453','MV AFRICAN KINGFISHE','MV AFRICAN KINGFISHER 01/15{NOV\'15}','MV AFRICAN KINGFISHER 01/15{NOV\'15}','1','MV AFRICAN KINGFISHE',NULL,'2018-09-27 13:57:23',0),(1657,'3454','MV SEA LOYALTY 01/15','MV SEA LOYALTY 01/15 {DEC\'15}','MV SEA LOYALTY 01/15 {DEC\'15}','1','MV SEA LOYALTY 01/15',NULL,'2018-09-27 13:57:23',0),(1658,'3455','MT TURRIS 01','MT TURRIS 01/15 {NOV\'15}','MT TURRIS 01/15 {NOV\'15}','1','MT TURRIS 01',NULL,'2018-09-27 13:57:23',0),(1659,'3456','MV SKAFTAFELL 03','MV SKAFTAFELL 03/15{NOV\'15}','MV SKAFTAFELL 03/15{NOV\'15}','1','MV SKAFTAFELL 03',NULL,'2018-09-27 13:57:23',0),(1660,'3457','MV ORIENTAL PHOENIX ','MV ORIENTAL PHOENIX 01/15 {DEC\'15}','MV ORIENTAL PHOENIX 01/15 {DEC\'15}','1','MV ORIENTAL PHOENIX ',NULL,'2018-09-27 13:57:23',0),(1661,'3458','MV ECO 01','MV ECO 01/15 {DEC\'15}','MV ECO 01/15 {DEC\'15}','1','MV ECO 01',NULL,'2018-09-27 13:57:23',0),(1662,'3459','MT STRESA 01','MT STRESA 01/15 {NOV\'15}','MT STRESA 01/15 {NOV\'15}','1','MT STRESA 01',NULL,'2018-09-27 13:57:23',0),(1663,'3460','MV APJ SHIRIN 01/15','MV APJ SHIRIN 01/15 {DEC\'15}','MV APJ SHIRIN 01/15 {DEC\'15}','1','MV APJ SHIRIN 01/15',NULL,'2018-09-27 13:57:23',0),(1664,'3461','MV GANNET BULKER 01','MV GANNET BULKER 01/15','MV GANNET BULKER 01/15','1','MV GANNET BULKER 01',NULL,'2018-09-27 13:57:23',0),(1665,'4461','MV V SANDERLING 01','MV V SANDERLING 01/15 {DEC\'15}','MV V SANDERLING 01/15 {DEC\'15}','1','MV V SANDERLING 01',NULL,'2018-09-27 13:57:23',0),(1666,'4462','MV SKYWALKER 01','MV SKYWALKER 01/16 {JAN\'16}','MV SKYWALKER 01/16 {JAN\'16}','1','MV SKYWALKER 01',NULL,'2018-09-27 13:57:23',0),(1667,'4463','MV MEGACORE HONAMI ','MV MEGACORE HONAMI 01/15','MV MEGACORE HONAMI 01/15','1','MV MEGACORE HONAMI ',NULL,'2018-09-27 13:57:23',0),(1668,'4464','MV ANGELA 01/16','MV ANGELA 01/16 {JAN\'16}','MV ANGELA 01/16 {JAN\'16}','1','MV ANGELA 01/16',NULL,'2018-09-27 13:57:23',0),(1669,'4465','CISL LEENE 06/15','CISL LEENE 06/15','CISL LEENE 06/15','1','CISL LEENE 06/15',NULL,'2018-09-27 13:57:23',0),(1670,'4466','SKAFTAFELL 03/15','SKAFTAFELL 03/15','SKAFTAFELL 03/15','1','SKAFTAFELL 03/15',NULL,'2018-09-27 13:57:23',0),(1671,'4467','MV CISL L.06','MV CISL LEENE 06/15','MV CISL LEENE 06/15','1','MV CISL L.06',NULL,'2018-09-27 13:57:23',0),(1672,'4468','MV SKAFTAFELL 03/15','MV SKAFTAFELL 03/15','MV SKAFTAFELL 03/15','1','MV SKAFTAFELL 03/15',NULL,'2018-09-27 13:57:23',0),(1673,'4469','MV MSC ALICE 01','MV MSC ALICE 01 {JAN\'16}','MV MSC ALICE 01 {JAN\'16}','1','MV MSC ALICE 01',NULL,'2018-09-27 13:57:23',0),(1674,'4470','MV ALITIS 01','MV ALITIS 01/16 {JAN\'16}','MV ALITIS 01/16 {JAN\'16}','1','MV ALITIS 01',NULL,'2018-09-27 13:57:23',0),(1675,'4471','MV TAI HARVEST 01/16','MV TAI HARVEST 01/16 {JAN\'16}','MV TAI HARVEST 01/16 {JAN\'16}','1','MV TAI HARVEST 01/16',NULL,'2018-09-27 13:57:23',0),(1676,'4472','MV OSPREY 01/16','MV OSPREY 01/16 {JAN\'16}','MV OSPREY 01/16 {JAN\'16}','1','MV OSPREY 01/16',NULL,'2018-09-27 13:57:23',0),(1677,'4473','MV DALIAN STAR 01/16','MV DALIAN STAR D 01/16{JAN\'16}','MV DALIAN STAR D 01/16{JAN\'16}','1','MV DALIAN STAR 01/16',NULL,'2018-09-27 13:57:23',0),(1678,'4474','MV UNITED SPIRIT 01','MV UNITED SPIRIT 01/16 {JAN\'16}','MV UNITED SPIRIT 01/16 {JAN\'16}','1','MV UNITED SPIRIT 01',NULL,'2018-09-27 13:57:23',0),(1679,'4475','MV SKAFTAFELL 01/16','MV SKAFTAFELL 01/16 {JAN\'16}','MV SKAFTAFELL 01/16 {JAN\'16}','1','MV SKAFTAFELL 01/16',NULL,'2018-09-27 13:57:23',0),(1680,'4476','MV MSC LANA 01','MV MSC LANA 01/16 {JAN\'16}','MV MSC LANA 01/16 {JAN\'16}','1','MV MSC LANA 01',NULL,'2018-09-27 13:57:23',0),(1681,'4477','MV AFRICAN HAWK 01','MV AFRICAN HAWK 01/16 {JAN\'16}','MV AFRICAN HAWK 01/16 {JAN\'16}','1','MV AFRICAN HAWK 01',NULL,'2018-09-27 13:57:23',0),(1682,'5477','MV CISL LEENE 01/16','MV CISL LEENE 01/16 {JAN\'16 BUNKERING}','MV CISL LEENE 01/16 {JAN\'16 BUNKERING}','1','MV CISL LEENE 01/16',NULL,'2018-09-27 13:57:23',0),(1683,'5478','MV SERENE SKY 01/16','MV SERENE SKY 01/16 {JAN\'16}','MV SERENE SKY 01/16 {JAN\'16}','1','MV SERENE SKY 01/16',NULL,'2018-09-27 13:57:23',0),(1684,'5479','MV ELIZABETH 01/16','MV ELIZABETH 01/16 {FEB\'16}','MV ELIZABETH 01/16 {FEB\'16}','1','MV ELIZABETH 01/16',NULL,'2018-09-27 13:57:23',0),(1685,'5480','MV AFRICAN SUNBIRD ','MV AFRICAN SUNBIRD 01/16{FEB\'16}','MV AFRICAN SUNBIRD 01/16{FEB\'16}','1','MV AFRICAN SUNBIRD ',NULL,'2018-09-27 13:57:23',0),(1686,'5481','MV CENGIZ BEY 01/16','MV CENGIZ BEY 01/16 {FEB\'16}','MV CENGIZ BEY 01/16 {FEB\'16}','1','MV CENGIZ BEY 01/16',NULL,'2018-09-27 13:57:23',0),(1687,'5482','Mv Glovis Maddona 01','MV GLOVIS MADONNA 01/16{FEB\'16}','MV GLOVIS MADONNA 01/16{FEB\'16}','1','Mv Glovis Maddona 01',NULL,'2018-09-27 13:57:23',0),(1688,'5483','Mv VSC Pollux 01','Mv VSC POLLUX 01/16 { MAR\'16}','Mv VSC POLLUX 01/16 { MAR\'16}','1','Mv VSC Pollux 01',NULL,'2018-09-27 13:57:23',0),(1689,'5484','Mv Ikana Sudip 01/16','MV IKAN SUDIP 01/16 {MAR\'16}','MV IKAN SUDIP 01/16 {MAR\'16}','1','Mv Ikana Sudip 01/16',NULL,'2018-09-27 13:57:23',0),(1690,'5485','Mv Ken Orchid 01/16','Mv KEN ORCHID 01/16 {JULY\'16}','Mv KEN ORCHID 01/16 {JULY\'16}','1','Mv Ken Orchid 01/16',NULL,'2018-09-27 13:57:23',0),(1691,'5486','MV JS LOIRE 01/16','MV JS LOIRE 01/16 {FEB\'16}','MV JS LOIRE 01/16 {FEB\'16}','1','MV JS LOIRE 01/16',NULL,'2018-09-27 13:57:23',0),(1692,'5487','MV SUNBIRD 01/16','MV SUNBIRD 01/16 {FEB\'16}','MV SUNBIRD 01/16 {FEB\'16}','1','MV SUNBIRD 01/16',NULL,'2018-09-27 13:57:23',0),(1693,'5488','MV KING PHILIPPOS 01','MV KING PHILIPPOS 01/16{FEB\'16}','MV KING PHILIPPOS 01/16{FEB\'16}','1','MV KING PHILIPPOS 01',NULL,'2018-09-27 13:57:23',0),(1694,'5489','MT MEGACORE HONAMI ','MV MEGACORE HONAMI 01/16 {FEB\'16}','MV MEGACORE HONAMI 01/16 {FEB\'16}','1','MT MEGACORE HONAMI ',NULL,'2018-09-27 13:57:23',0),(1695,'5490','MV JS BANDOL 01/16','MV JS BANDOL 01/16{MAR\'16}','MV JS BANDOL 01/16{MAR\'16}','1','MV JS BANDOL 01/16',NULL,'2018-09-27 13:57:23',0),(1696,'5491','MV JS LOIRE 02/16','MV JS LOIRE 02/16 {MAR\'16}','MV JS LOIRE 02/16 {MAR\'16}','1','MV JS LOIRE 02/16',NULL,'2018-09-27 13:57:23',0),(1697,'5492','MV AZIZI 01/16','MV AZIZI 01/16 {AUG\'16}','MV AZIZI 01/16 {AUG\'16}','1','MV AZIZI 01/16',NULL,'2018-09-27 13:57:23',0),(1698,'5493','MV SUNRISE JADE 01','MV SUNRISE JADE 01/16{APR\'16}','MV SUNRISE JADE 01/16{APR\'16}','1','MV SUNRISE JADE 01',NULL,'2018-09-27 13:57:23',0),(1699,'5494','MV JS TAMISE 01/16','MV JS TAMISE 01/16 {APRIL\'16}','MV JS TAMISE 01/16 {APRIL\'16}','1','MV JS TAMISE 01/16',NULL,'2018-09-27 13:57:23',0),(1700,'5495','MT LAKE TROUT 01/16','MT LAKE TROUT 01/16 {APRIL\'16}','MT LAKE TROUT 01/16 {APRIL\'16}','1','MT LAKE TROUT 01/16',NULL,'2018-09-27 13:57:23',0),(1701,'5496','MV SIENA 01/16','MV SIENA 01/16','MV SIENA 01/16','1','MV SIENA 01/16',NULL,'2018-09-27 13:57:23',0),(1702,'5497','MV AFRICAN EAGLE 01','MV AFRICAN EAGLE 01/16 {APRIL\'16}','MV AFRICAN EAGLE 01/16 {APRIL\'16}','1','MV AFRICAN EAGLE 01',NULL,'2018-09-27 13:57:23',0),(1703,'5498','MV ARAMIS 01/16','MV ARAMIS 01/16 {APRIL\'16}','MV ARAMIS 01/16 {APRIL\'16}','1','MV ARAMIS 01/16',NULL,'2018-09-27 13:57:23',0),(1704,'5499','MV DRACO 01/16','MV DRACO 01/16{AUG\'16}','MV DRACO 01/16{AUG\'16}','1','MV DRACO 01/16',NULL,'2018-09-27 13:57:23',0),(1705,'5500','Mv ANGELE N 01/16','Mv ANGELE N 01/16{MAY\'16}','Mv ANGELE N 01/16{MAY\'16}','1','Mv ANGELE N 01/16',NULL,'2018-09-27 13:57:23',0),(1706,'5501','MV KMARIN BUSAN 01','MV KMARIN BUSAN 01/16{MAY\'16}','MV KMARIN BUSAN 01/16{MAY\'16}','1','MV KMARIN BUSAN 01',NULL,'2018-09-27 13:57:23',0),(1707,'5502','Mv UNITED SPIRIT02/16','Mv UNITED SPIRIT 02/16{APRIL\'16}','Mv UNITED SPIRIT 02/16{APRIL\'16}','1','Mv UNITED SPIRIT02/16',NULL,'2018-09-27 13:57:23',0),(1708,'5503','MV SKAFTAFELL 02/16','MV SKAFTAFELL 02/16 {MAY\'16}','MV SKAFTAFELL 02/16 {MAY\'16}','1','MV SKAFTAFELL 02/16',NULL,'2018-09-27 13:57:23',0),(1709,'5504','MV JS BANDOL 02/16','MV JS BANDOL 02/16 {APRIL\'16}','MV JS BANDOL 02/16 {APRIL\'16}','1','MV JS BANDOL 02/16',NULL,'2018-09-27 13:57:23',0),(1710,'5505','MV CS JADEN 01/16','MV CS JADEN 01/16 {APRIL\'16}','MV CS JADEN 01/16 {APRIL\'16}','1','MV CS JADEN 01/16',NULL,'2018-09-27 13:57:23',0),(1711,'5506','Mv Julia Oldendorff 1','Mv JULIA OLDENDORFF 01/16{MAY\'16}','Mv JULIA OLDENDORFF 01/16{MAY\'16}','1','Mv Julia Oldendorff 1',NULL,'2018-09-27 13:57:23',0),(1712,'5507','Mv Golden Eagle 01','MV GOLDEN EAGLE 01/16 {MAY\'16}','MV GOLDEN EAGLE 01/16 {MAY\'16}','1','Mv Golden Eagle 01',NULL,'2018-09-27 13:57:23',0),(1713,'5508','MV CISL LEENE 02/16','MV CISL LEENE 02/16 {MAY\'16}','MV CISL LEENE 02/16 {MAY\'16}','1','MV CISL LEENE 02/16',NULL,'2018-09-27 13:57:23',0),(1714,'5509','MV OLGA 01/16','MV OLGA 01/16 {MAY\'16}','MV OLGA 01/16 {MAY\'16}','1','MV OLGA 01/16',NULL,'2018-09-27 13:57:23',0),(1715,'5510','MV KAVO AETOS 01/16','MV KAVO AETOS 01/16 {JUNE\'16}','MV KAVO AETOS 01/16 {JUNE\'16}','1','MV KAVO AETOS 01/16',NULL,'2018-09-27 13:57:23',0),(1716,'5511','MV ALITIS 01/16','MV ALITIS 01/16 {MAY\'16}','MV ALITIS 01/16 {MAY\'16}','1','MV ALITIS 01/16',NULL,'2018-09-27 13:57:23',0),(1717,'6511','MV LETO 01/16','MV LETO 01/16 {JUNE\'16}','MV LETO 01/16 {JUNE\'16}','1','MV LETO 01/16',NULL,'2018-09-27 13:57:23',0),(1718,'6512','MV KAZAK 01/16','MV KAZAK 01/16{MAY\'16}','MV KAZAK 01/16{MAY\'16}','1','MV KAZAK 01/16',NULL,'2018-09-27 13:57:23',0),(1719,'6513','MV JS GARONNE 01/16','MV JS GARONNE 01/16 {JUNE\'16}','MV JS GARONNE 01/16 {JUNE\'16}','1','MV JS GARONNE 01/16',NULL,'2018-09-27 13:57:23',0),(1720,'6514','MV BBC SWITZERLAND 01','MV BBC SWITZERLAND 01/16 {MAY\'16}','MV BBC SWITZERLAND 01/16 {MAY\'16}','1','MV BBC SWITZERLAND 01',NULL,'2018-09-27 13:57:23',0),(1721,'6515','MV AZTECA 01/16','MV AZTECA 01/16{MAY\'16}','MV AZTECA 01/16{MAY\'16}','1','MV AZTECA 01/16',NULL,'2018-09-27 13:57:23',0),(1722,'6516','MV RED COSMOS 01/16','MV RED COSMOS 01/16{JUNE\'16}','MV RED COSMOS 01/16{JUNE\'16}','1','MV RED COSMOS 01/16',NULL,'2018-09-27 13:57:23',0),(1723,'6517','MV RIVA WIND 01/16','MV RIVA WIND 01/16{JULY\'16}','MV RIVA WIND 01/16{JULY\'16}','1','MV RIVA WIND 01/16',NULL,'2018-09-27 13:57:23',0),(1724,'6518','MV GH SEABISCUIT 1/16','MV GH SEABISCUIT 01/16{JULY\'16}','MV GH SEABISCUIT 01/16{JULY\'16}','1','MV GH SEABISCUIT 1/16',NULL,'2018-09-27 13:57:23',0),(1725,'6519','MV EXPLORER 01/16','MV EXPLORER 01/16{JUNE\'16}','MV EXPLORER 01/16{JUNE\'16}','1','MV EXPLORER 01/16',NULL,'2018-09-27 13:57:23',0),(1726,'6520','MV CISL LEENE 03/16','MV CISL LEENE 03/16 {AUG\'16}','MV CISL LEENE 03/16 {AUG\'16}','1','MV CISL LEENE 03/16',NULL,'2018-09-27 13:57:23',0),(1727,'6521','TBA','','TBA','1','TBA',NULL,'2018-09-27 13:57:23',0),(1728,'6522','MV MYRTOS 01/16','MV MYRTOS 01/16{JUNE\'16}','MV MYRTOS 01/16{JUNE\'16}','1','MV MYRTOS 01/16',NULL,'2018-09-27 13:57:23',0),(1729,'6523','PROJECT','KENYA PIPING ','QUOTATION','1','PROJECT',NULL,'2018-09-27 13:57:23',0),(1730,'6524','MV SENANUR CEBI 01/16','MV SENANUR CEBI 01/16 {JULY\'16}','MV SENANUR CEBI 01/16 {JULY\'16}','1','MV SENANUR CEBI 01/16',NULL,'2018-09-27 13:57:23',0),(1731,'6525','MV LIBERTY 01/16','MV LIBERTY 01/16{JULY\'16}','MV LIBERTY 01/16{JULY\'16}','1','MV LIBERTY 01/16',NULL,'2018-09-27 13:57:23',0),(1732,'6526','MV ESPERANZA N 01/16','MV ESPERANZA N 01/16 {JULY\'16}','MV ESPERANZA N 01/16 {JULY\'16}','1','MV ESPERANZA N 01/16',NULL,'2018-09-27 13:57:23',0),(1733,'6527','MV FLAGSHIP VIOLET 01','MV FLAGSHIP VIOLET 01/16{JULY\'16}','MV FLAGSHIP VIOLET 01/16{JULY\'16}','1','MV FLAGSHIP VIOLET 01',NULL,'2018-09-27 13:57:23',0),(1734,'6528','MV CONSOLIDATOR 01/16','MV CONSOLIDATOR 01/16{AUG\'16}','MV CONSOLIDATOR 01/16{AUG\'16}','1','MV CONSOLIDATOR 01/16',NULL,'2018-09-27 13:57:23',0),(1735,'6529','MV TAI HARVEST 02/16','MV TAI HARVEST 02/16{AUG\'16}','MV TAI HARVEST 02/16{AUG\'16}','1','MV TAI HARVEST 02/16',NULL,'2018-09-27 13:57:23',0),(1736,'6530','MV SKAFTAFELL 03/16','MV SKAFTAFELL 03/16 {AUG\'16}','MV SKAFTAFELL 03/16 {AUG\'16}','1','MV SKAFTAFELL 03/16',NULL,'2018-09-27 13:57:23',0),(1737,'6531','MT ECO CORSAIR 01/16','MT ECO CORSAIR 01/16{JULY\'16}','MT ECO CORSAIR 01/16{JULY\'16}','1','MT ECO CORSAIR 01/16',NULL,'2018-09-27 13:57:23',0),(1738,'6532','MV AURELIA K 01/16','MV AURELIA K 01/16','MV AURELIA K 01/16','1','MV AURELIA K 01/16',NULL,'2018-09-27 13:57:23',0),(1739,'6533','MV ITHAKI 01/16','MV ITHAKI 01/16 {AUG\'16}','MV ITHAKI 01/16 {AUG\'16}','1','MV ITHAKI 01/16',NULL,'2018-09-27 13:57:23',0),(1740,'6534','Mv Port Macau','Mv PORT MACAU 01/16{AUG\'16}','Mv PORT MACAU 01/16{AUG\'16}','1','Mv Port Macau',NULL,'2018-09-27 13:57:23',0),(1741,'6535','MV HC NADJA MARIA 01','MV HC NADJA MARIA 01/16 {AUG\'16}','MV HC NADJA MARIA 01/16 {AUG\'16}','1','MV HC NADJA MARIA 01',NULL,'2018-09-27 13:57:23',0),(1742,'6536','MV JS MEKONG 01/16','MV JS MEKONG 01/16 {AUG\'16}','MV JS MEKONG 01/16 {AUG\'16}','1','MV JS MEKONG 01/16',NULL,'2018-09-27 13:57:23',0),(1743,'6537','MV ROWAN 3 01/16','MV ROWAN 3 01/16 {AUG\'16}','MV ROWAN 3 01/16 {AUG\'16}','1','MV ROWAN 3 01/16',NULL,'2018-09-27 13:57:23',0),(1744,'6538','MV ECO CORSAIR 02/16','MV ECO CORSAIR 02/16 {AUG\'16}','MV ECO CORSAIR 02/16 {AUG\'16}','1','MV ECO CORSAIR 02/16',NULL,'2018-09-27 13:57:23',0),(1745,'6539','MV NEW AGE 01/16','MV NEW AGE 01/16 {AUG\'16}','MV NEW AGE 01/16 {AUG\'16}','1','MV NEW AGE 01/16',NULL,'2018-09-27 13:57:23',0),(1746,'6540','MV UNITED SPIRIT1  03','MV UNITED SPIRIT1  03/16{AUG\'16}','MV UNITED SPIRIT1  03/16{AUG\'16}','1','MV UNITED SPIRIT1  03',NULL,'2018-09-27 13:57:23',0),(1747,'6541','MV ARIETTA 01/16','MV ARIETTA 01/16 {AUG\'16}','MV ARIETTA 01/16 {AUG\'16}','1','MV ARIETTA 01/16',NULL,'2018-09-27 13:57:23',0),(1748,'6542','MV ENDLESS HORIZON ','MV ENDLESS HORIZON 01/16 {SEPT\'16}','MV ENDLESS HORIZON 01/16 {SEPT\'16}','1','MV ENDLESS HORIZON ',NULL,'2018-09-27 13:57:23',0),(1749,'6543','Mv Kouju Lily','MV KOUJU LILY 01/16{SEPT\'16}','MV KOUJU LILY 01/16{SEPT\'16}','1','Mv Kouju Lily',NULL,'2018-09-27 13:57:23',0),(1750,'7543','Mv Martha','Mv Martha','Mv Martha','1','Mv Martha',NULL,'2018-09-27 13:57:23',0),(1751,'7544','Mv Norden 2 Pda','Mv Norden 2 Pda','Mv Norden 2 Pda','1','Mv Norden 2 Pda',NULL,'2018-09-27 13:57:23',0),(1752,'8544','Mv Endless Horizon 1','Mv Endless Horizon 1','Mv Endless Horizon 1','1','Mv Endless Horizon 1',NULL,'2018-09-27 13:57:23',0),(1753,'8545','Mv Marine Stars 01','MV MARINE STARS 01/16{SEPT\'16}','MV MARINE STARS 01/16{SEPT\'16}','1','Mv Marine Stars 01',NULL,'2018-09-27 13:57:23',0),(1754,'8546','Mv Corsair 03/16','MV ECO CORSAIR 03/16','MV ECO CORSAIR 03/16','1','Mv Corsair 03/16',NULL,'2018-09-27 13:57:23',0),(1755,'8547','Mv Eco Corsair 04/16','Mv ECO CORSAIR 04/16','Mv ECO CORSAIR 04/16','1','Mv Eco Corsair 04/16',NULL,'2018-09-27 13:57:23',0),(1756,'8548','MV JS YUKON 01/16','MV JS YUKON 01/16 {SEPT\'16}','MV JS YUKON 01/16 {SEPT\'16}','1','MV JS YUKON 01/16',NULL,'2018-09-27 13:57:23',0),(1757,'8549','MT DORIC BREEZE 01/16','MT DORIC BREEZE 01/16','MT DORIC BREEZE 01/16','1','MT DORIC BREEZE 01/16',NULL,'2018-09-27 13:57:23',0),(1758,'8550','Mv Azizi & Draco expo','MV AZIZI & DRACO EXPORT {AUG\'16}','MV AZIZI & DRACO EXPORT {AUG\'16}','1','Mv Azizi & Draco expo',NULL,'2018-09-27 13:57:23',0),(1759,'8551','Mv Tien Fei TBN','Mv Tien Fei TBN','Mv Tien Fei TBN','1','Mv Tien Fei TBN',NULL,'2018-09-27 13:57:23',0),(1760,'8552','Mv Doric Breeze 01/16','Mv DORIC BREEZE 01/16{NOV\'16}','Mv DORIC BREEZE 01/16{NOV\'16}','1','Mv Doric Breeze 01/16',NULL,'2018-09-27 13:57:23',0),(1761,'8553','Mv Eco Corasair 01/16','Mv Eco Corasair 01/16','Mv Eco Corasair 01/16','1','Mv Eco Corasair 01/16',NULL,'2018-09-27 13:57:23',0),(1762,'8554','Mv ECo Corsair 03/16','Mv ECo Corsair 03/16','Mv ECo Corsair 03/16','1','Mv ECo Corsair 03/16',NULL,'2018-09-27 13:57:23',0),(1763,'8555','Mv Peristil FBV17865 ','Mv PERISTIL 01/16 {SEPT\'16}','Mv PERISTIL 01/16 {SEPT\'16}','1','Mv Peristil FBV17865 ',NULL,'2018-09-27 13:57:23',0),(1764,'8556','MV UNIVERSAL BANGKOK1','MV UNIVERSAL BANGKOK 01/16{OCT\'16}','MV UNIVERSAL BANGKOK 01/16{OCT\'16}','1','MV UNIVERSAL BANGKOK1',NULL,'2018-09-27 13:57:23',0),(1765,'8557','Mv Curia CRA-01/16','Mv CURIA CRA-01/16 {OCT\'16}','Mv CURIA CRA-01/16 {OCT\'16}','1','Mv Curia CRA-01/16',NULL,'2018-09-27 13:57:23',0),(1766,'8558','Mv Amis Wisdom 01/16','MV AMIS WISDOM 01/16{OCT\'16}','MV AMIS WISDOM 01/16{OCT\'16}','1','Mv Amis Wisdom 01/16',NULL,'2018-09-27 13:57:23',0),(1767,'8559','Florence','Florence','Florence','1','Florence',NULL,'2018-09-27 13:57:23',0),(1768,'8560','Mv Konstantinos D 01','MV KONSTANTINOS D 01/16{OCT\'16}','MV KONSTANTINOS D 01/16{OCT\'16}','1','Mv Konstantinos D 01',NULL,'2018-09-27 13:57:23',0),(1769,'8561','Mv Skaftafell 03A/16','MV SKAFTAFELL 03A/16 {OCT\'16}','MV SKAFTAFELL 03A/16 {OCT\'16}','1','Mv Skaftafell 03A/16',NULL,'2018-09-27 13:57:23',0),(1770,'8562','MV CHIOS SUNRISE 1/16','MV CHIOS SUNRISE 01/16 {OCT\'16}','MV CHIOS SUNRISE 01/16 {OCT\'16}','1','MV CHIOS SUNRISE 1/16',NULL,'2018-09-27 13:57:23',0),(1771,'8563','Mv Thor Friendship 01','Mv THOR FRIENDSHIP 01/16{NOV\'16}','Mv THOR FRIENDSHIP 01/16{NOV\'16}','1','Mv Thor Friendship 01',NULL,'2018-09-27 13:57:23',0),(1772,'8564','Mv Amis Leader 01/16','MV AMIS LEADER 01/16{NOV\'16}','MV AMIS LEADER 01/16{NOV\'16}','1','Mv Amis Leader 01/16',NULL,'2018-09-27 13:57:23',0),(1773,'8565','Mv Aqua Prosper 01/16','MV AQUAPROSPER 01/16 {NOV\'16}','MV AQUAPROSPER 01/16 {NOV\'16}','1','Mv Aqua Prosper 01/16',NULL,'2018-09-27 13:57:23',0),(1774,'8566','Mv LMZ Vega 01/16','Mv LMZ VEGA 01/16 {DEC\'16}','Mv LMZ VEGA 01/16 {DEC\'16}','1','Mv LMZ Vega 01/16',NULL,'2018-09-27 13:57:23',0),(1775,'8567','Mv Aquaprosper 01/16','Mv xxx','Mv xxx','1','Mv Aquaprosper 01/16',NULL,'2018-09-27 13:57:23',0),(1776,'8568','MV CISL LEENE 04/16','MV CISL LEENE 04/16 {DEC\'16}','MV CISL LEENE 04/16 {DEC\'16}','1','MV CISL LEENE 04/16',NULL,'2018-09-27 13:57:23',0),(1777,'8569','MV MAGIC STRIKER 01/1','MV MAGIC STRIKER 01/16{ NOV\'16}','MV MAGIC STRIKER 01/16{ NOV\'16}','1','MV MAGIC STRIKER 01/1',NULL,'2018-09-27 13:57:23',0),(1778,'8570','MV HAI YANG YOU 01/16','MV HAI YANG YOU 01/16 {NOV\'16}','MV HAI YANG YOU 01/16 {NOV\'16}','1','MV HAI YANG YOU 01/16',NULL,'2018-09-27 13:57:23',0),(1779,'8571','MV JS MEKONG 02/16','MV JS MEKONG 02/16 [DEC\'16}','MV JS MEKONG 02/16 [DEC\'16}','1','MV JS MEKONG 02/16',NULL,'2018-09-27 13:57:23',0),(1780,'8572','MV FANOULA 01/16','MV FANOULA 01/16 {DEC\'16}','MV FANOULA 01/16 {DEC\'16}','1','MV FANOULA 01/16',NULL,'2018-09-27 13:57:23',0),(1781,'8573','Disbursement A/C','Disbursement A/C','Disbursement A/C','1','Disbursement A/C',NULL,'2018-09-27 13:57:23',0),(1782,'8574','MV SKAFTAFELL 04/16','MV SKAFTAFELL 04/16 {DEC\'16}','MV SKAFTAFELL 04/16 {DEC\'16}','1','MV SKAFTAFELL 04/16',NULL,'2018-09-27 13:57:23',0),(1783,'8575','MV STELLAR EAGLE 01/1','MV STELLAR EAGLE 01/17 {JAN\'17}','MV STELLAR EAGLE 01/17 {JAN\'17}','1','MV STELLAR EAGLE 01/1',NULL,'2018-09-27 13:57:23',0),(1784,'8576','Mv Beautriumph','MV BEAUTRIUMPH 0/17 {FEB\'17}','MV BEAUTRIUMPH 0/17 {FEB\'17}','1','Mv Beautriumph',NULL,'2018-09-27 13:57:23',0),(1785,'8577','Mv Alpine Penelope 01','MT ALPINE PENELOPE 01/16{DEC\'16}','MT ALPINE PENELOPE 01/16{DEC\'16}','1','Mv Alpine Penelope 01',NULL,'2018-09-27 13:57:23',0),(1786,'8578','Mv Bulk Paraiso 01/16','XXXXXXX','XXXXXXX','1','Mv Bulk Paraiso 01/16',NULL,'2018-09-27 13:57:23',0),(1787,'8579','Mv Castle 01/17','Mv CASTLE  01/17 {JAN\'17}','Mv CASTLE  01/17 {JAN\'17}','1','Mv Castle 01/17',NULL,'2018-09-27 13:57:23',0),(1788,'8580','Mv Bulk Paraiso 01/17','Mv BULK PARAISO 01/17{JAN\'17}','Mv BULK PARAISO 01/17{JAN\'17}','1','Mv Bulk Paraiso 01/17',NULL,'2018-09-27 13:57:23',0),(1789,'8581','Mv Stellar Eagle 01','Mv STELLAR EAGLE 01/17{ JAN\'17}','Mv STELLAR EAGLE 01/17{ JAN\'17}','1','Mv Stellar Eagle 01',NULL,'2018-09-27 13:57:23',0),(1790,'8582','Mv Beautriumph 01/17','Mv Beautriumph 01/17','Mv Beautriumph 01/17','1','Mv Beautriumph 01/17',NULL,'2018-09-27 13:57:23',0),(1791,'8583','Mv Lucy Oldendorff 01','Mv LUCY OLDENDORFF 01/17{JAN\'17}','Mv LUCY OLDENDORFF 01/17{JAN\'17}','1','Mv Lucy Oldendorff 01',NULL,'2018-09-27 13:57:23',0),(1792,'8584','Mv Halil Sahin 01/17','Mv HALIL SAHIN  01/17 {JAN\'17}','Mv HALIL SAHIN  01/17 {JAN\'17}','1','Mv Halil Sahin 01/17',NULL,'2018-09-27 13:57:23',0),(1793,'8585','MV JS MISSOURI 01/16','MV JS MISSOURI 01/16 {DEC\'16}','MV JS MISSOURI 01/16 {DEC\'16}','1','MV JS MISSOURI 01/16',NULL,'2018-09-27 13:57:23',0),(1794,'8586','MV UNITED SPIRIT 4/16','MV UNITED SPIRIT 4/16 {DEC\'16}','MV UNITED SPIRIT 4/16 {DEC\'16}','1','MV UNITED SPIRIT 4/16',NULL,'2018-09-27 13:57:23',0),(1795,'8587','Fly Ash Clearance','Fly Ash Clearance','Fly Ash Clearance','1','Fly Ash Clearance',NULL,'2018-09-27 13:57:23',0),(1796,'8588','Mv African Jay 01/17','MV AFRICAN JAY 0/17{MAR\'17}','MV AFRICAN JAY 0/17{MAR\'17}','1','Mv African Jay 01/17',NULL,'2018-09-27 13:57:23',0),(1797,'8589','Clearance & Transport','Clearance & Transport','Clearance & Transport','1','Clearance & Transport',NULL,'2018-09-27 13:57:23',0),(1798,'8590','MV MARINE STARS 01/17','MV MARINE STARS 01/17 {MAR\'17}','MV MARINE STARS 01/17 {MAR\'17}','1','MV MARINE STARS 01/17',NULL,'2018-09-27 13:57:23',0),(1799,'8591','Warehousing & Clearin','Warehousing & Clearin','Warehousing & Clearin','1','Warehousing & Clearin',NULL,'2018-09-27 13:57:23',0),(1800,'8592','Mv LMZ Titan','Mv LMZ TITAN 01/17{JAN\'17}','Mv LMZ TITAN 01/17{JAN\'17}','1','Mv LMZ Titan',NULL,'2018-09-27 13:57:23',0),(1801,'8593','Hima Cement Contracts','Hima Cement Contracts','Hima Cement Contracts','1','Hima Cement Contracts',NULL,'2018-09-27 13:57:23',0),(1802,'8594','MV DRAFTVADER 01/17','MV DRAFTVADER 01/17 {FEB\'17}','MV DRAFTVADER 01/17 {FEB\'17}','1','MV DRAFTVADER 01/17',NULL,'2018-09-27 13:57:23',0),(1803,'8595','MV SEA STAR 01/17','MV SEA STAR 01/17 {FEB\'17}','MV SEA STAR 01/17 {FEB\'17}','1','MV SEA STAR 01/17',NULL,'2018-09-27 13:57:23',0),(1804,'8596','MV JS COLUMBIA 01/17','MV JS COLUMBIA 01/17 {FEB\'17}','MV JS COLUMBIA 01/17 {FEB\'17}','1','MV JS COLUMBIA 01/17',NULL,'2018-09-27 13:57:23',0),(1805,'8597','MV PYXIS 1/17 FEB17','MV PYXIS 01/17{FEB\'17}','MV PYXIS 01/17{FEB\'17}','1','MV PYXIS 1/17 FEB17',NULL,'2018-09-27 13:57:23',0),(1806,'8598','MV KAMARI 1/17 FEB 17','MV KAMARI 1/17{MAR\'17}','MV KAMARI 1/17{MAR\'17}','1','MV KAMARI 1/17 FEB 17',NULL,'2018-09-27 13:57:23',0),(1807,'8599','MV SKAFTAFELL 1/17','MV SKAFTAFELL 1/17 {FEB\'17}','MV SKAFTAFELL 1/17 {FEB\'17}','1','MV SKAFTAFELL 1/17',NULL,'2018-09-27 13:57:23',0),(1808,'8600','MV CISL L 01/17{FEB}','MV CISL LEENE  01/17{FEB\'17}','MV CISL LEENE  01/17{FEB\'17}','1','MV CISL L 01/17{FEB}',NULL,'2018-09-27 13:57:23',0),(1809,'8601','Mv Kota Bistari 01/17','MV KOTA BISTARI 01/17{MAR\'17}','MV KOTA BISTARI 01/17{MAR\'17}','1','Mv Kota Bistari 01/17',NULL,'2018-09-27 13:57:23',0),(1810,'8602','MV RED DAISY 01/17','MV RED DAISY 01/17 {MAR\'17}','MV RED DAISY 01/17 {MAR\'17}','1','MV RED DAISY 01/17',NULL,'2018-09-27 13:57:23',0),(1811,'8603','MV UNITED SPIRIT 1/17','MV UNITED SPIRIT1 1/17 {MAR\'17}','MV UNITED SPIRIT1 1/17 {MAR\'17}','1','MV UNITED SPIRIT 1/17',NULL,'2018-09-27 13:57:23',0),(1812,'8604','MV THOR MONADIC 1/17','MV THOR MONADIC 1/17 {APR\'17}','MV THOR MONADIC 1/17 {APR\'17}','1','MV THOR MONADIC 1/17',NULL,'2018-09-27 13:57:23',0),(1813,'8605','MV ALAM MANIS 01/17','MV ALAM MANIS 01/17 {MAR\'17}','MV ALAM MANIS 01/17 {MAR\'17}','1','MV ALAM MANIS 01/17',NULL,'2018-09-27 13:57:23',0),(1814,'8606','MV POAVOSA WISDOM1/17','MV POAVOSA WISDOM 1/17{MAR\'17}','MV POAVOSA WISDOM 1/17{MAR\'17}','1','MV POAVOSA WISDOM1/17',NULL,'2018-09-27 13:57:23',0),(1815,'8607','SSI/17/MSA/067','SSI/17/MSA/067','769514115','1','SSI/17/MSA/067',NULL,'2018-09-27 13:57:23',0),(1816,'8608','MV SFL HUDSON 01/17','MV SFL HUDSON 01/17 {MAR\'17}','MV SFL HUDSON 01/17 {MAR\'17}','1','MV SFL HUDSON 01/17',NULL,'2018-09-27 13:57:23',0),(1817,'8609','MV ANDALUCIA 01/17','MV ANDALUCIA 01/17 [MAR\'17}','MV ANDALUCIA 01/17 [MAR\'17}','1','MV ANDALUCIA 01/17',NULL,'2018-09-27 13:57:23',0),(1818,'8610','MV ECO CORSAIR 01/17','MV ECO CORSAIR 01/17 {APR\'17}','MV ECO CORSAIR 01/17 {APR\'17}','1','MV ECO CORSAIR 01/17',NULL,'2018-09-27 13:57:23',0),(1819,'8611','Mv CISL Leene spares','Mv CISL Leene spares','Mv CISL Leene spares','1','Mv CISL Leene spares',NULL,'2018-09-27 13:57:23',0),(1820,'8612','Mv Tansy 01/17','MV TANSY 01/17 {APR\'17}','MV TANSY 01/17 {APR\'17}','1','Mv Tansy 01/17',NULL,'2018-09-27 13:57:23',0),(1821,'8613','MV KIRAN BOSPHORUS 1 ','MV KIRAN BOSPHORUS 1/17{APR\'17}','MV KIRAN BOSPHORUS 1/17{APR\'17}','1','MV KIRAN BOSPHORUS 1 ',NULL,'2018-09-27 13:57:23',0),(1822,'8614','MV AURELIA K 01/17','MV AURELIA K 01/17 {APR\'17}','MV AURELIA K 01/17 {APR\'17}','1','MV AURELIA K 01/17',NULL,'2018-09-27 13:57:23',0),(1823,'8615','MV GRANDWAY STAR 1/17','MV GRANDWAY STAR 01/17{APR\'17}','MV GRANDWAY STAR 01/17{APR\'17}','1','MV GRANDWAY STAR 1/17',NULL,'2018-09-27 13:57:23',0),(1824,'8616','MV CISL LEENE 2/17','MV CISL LEENE 02/17 {APR\'17}','MV CISL LEENE 02/17 {APR\'17}','1','MV CISL LEENE 2/17',NULL,'2018-09-27 13:57:23',0),(1825,'8617','MV FRIENDLY SEAS 1/17','MV FRIENDLY SEAS 01/17{APRIL\'17}','MV FRIENDLY SEAS 01/17{APRIL\'17}','1','MV FRIENDLY SEAS 1/17',NULL,'2018-09-27 13:57:23',0),(1826,'8618','Mv EVOLUTION 01/17','Mv EVOLUTION 01/17 {APR\'17}','Mv EVOLUTION 01/17 {APR\'17}','1','Mv EVOLUTION 01/17',NULL,'2018-09-27 13:57:23',0),(1827,'8619','MV JAEGAR 01/17','MV JAEGAR 01/17 {APR\'17}','MV JAEGAR 01/17 {APR\'17}','1','MV JAEGAR 01/17',NULL,'2018-09-27 13:57:23',0),(1828,'8620','MV OCEAN HAWK 01/17','MV OCEAN HAWK 01/17 {MAY\'17}','MV OCEAN HAWK 01/17 {MAY\'17}','1','MV OCEAN HAWK 01/17',NULL,'2018-09-27 13:57:23',0),(1829,'8621','MV AEOLOS 01/17','MV AEOLOS 01/17 {MAY\'17}','MV AEOLOS 01/17 {MAY\'17}','1','MV AEOLOS 01/17',NULL,'2018-09-27 13:57:23',0),(1830,'8622','MV THOR MENELAUS 1/17','MV THOR MENELAUS 01/17{MAY\'17}','MV THOR MENELAUS 01/17{MAY\'17}','1','MV THOR MENELAUS 1/17',NULL,'2018-09-27 13:57:23',0),(1831,'8623','MV SKAFTAFELL 02/17','MV SKAFTAFELL 02/17 {MAY\'17}','MV SKAFTAFELL 02/17 {MAY\'17}','1','MV SKAFTAFELL 02/17',NULL,'2018-09-27 13:57:23',0),(1832,'8624','MV MANDARIN FORTUNE 1','MV MANDARIN FORTUNE 01/17{MAY\'17}','MV MANDARIN FORTUNE 01/17{MAY\'17}','1','MV MANDARIN FORTUNE 1',NULL,'2018-09-27 13:57:23',0),(1833,'8625','MV SWANSEA 01/17','MV xxxxxxxxx','MV xxxxxxxxx','1','MV SWANSEA 01/17',NULL,'2018-09-27 13:57:23',0),(1834,'8626','MV SWANSEA','MV SWANSEA 01/17 {JUNE\'17}','MV SWANSEA 01/17 {JUNE\'17}','1','MV SWANSEA',NULL,'2018-09-27 13:57:23',0),(1835,'8627','MV HANNAH S','MV HANNAH S 01/17{JUNE\'17}','MV HANNAH S 01/17{JUNE\'17}','1','MV HANNAH S',NULL,'2018-09-27 13:57:23',0),(1836,'8628','MV EXPLORER 06/17','MV EXPLORER 01/17{JUNE\'17}','MV EXPLORER 01/17{JUNE\'17}','1','MV EXPLORER 06/17',NULL,'2018-09-27 13:57:23',0),(1837,'8629','MV IDSHIP BULKER 1/17','MV IDSHIP BULKER 01/17{ JUNE\'17}','MV IDSHIP BULKER 01/17{ JUNE\'17}','1','MV IDSHIP BULKER 1/17',NULL,'2018-09-27 13:57:23',0),(1838,'8630','MV ROWAN 3 01/17','MV ROWAN3 01/17 {JUNE\'17}','MV ROWAN3 01/17 {JUNE\'17}','1','MV ROWAN 3 01/17',NULL,'2018-09-27 13:57:23',0),(1839,'8631','MV ILIANA 01/17','MV ILIANA 01/17 {JUNE\'17}','MV ILIANA 01/17 {JUNE\'17}','1','MV ILIANA 01/17',NULL,'2018-09-27 13:57:23',0),(1840,'8632','MV DAFTVADER 02/17','MV DAFTVADER 02/17 {JUNE\'17}','MV DAFTVADER 02/17 {JUNE\'17}','1','MV DAFTVADER 02/17',NULL,'2018-09-27 13:57:23',0),(1841,'8633','MV DRAFTVADER 02/17','MV DRAFTVADER 02/17 {JUNE\'17}','MV DRAFTVADER 02/17 {JUNE\'17}','1','MV DRAFTVADER 02/17',NULL,'2018-09-27 13:57:23',0),(1842,'8634','MV AFRICAN ROBIN 1/17','MV AFRICAN ROBIN 01/17{JUNE\'17}','MV AFRICAN ROBIN 01/17{JUNE\'17}','1','MV AFRICAN ROBIN 1/17',NULL,'2018-09-27 13:57:23',0),(1843,'8635','MV V TRE 01/17','MV V TRE 01/17 {JUNE\'17}','MV V TRE 01/17 {JUNE\'17}','1','MV V TRE 01/17',NULL,'2018-09-27 13:57:23',0),(1844,'8636','MV CISL LEENE 02/17','MV CISL LEENE 03/17 {JUNE\'17}','MV CISL LEENE 03/17 {JUNE\'17}','1','MV CISL LEENE 02/17',NULL,'2018-09-27 13:57:23',0),(1845,'8637','MV KIRAN AMERICA 1/17','MV KIRAN AMERICA 01/17{JUNE\'17}','MV KIRAN AMERICA 01/17{JUNE\'17}','1','MV KIRAN AMERICA 1/17',NULL,'2018-09-27 13:57:23',0),(1846,'8638','MV APEX 01/17','MV APEX 01/17{JUNE\'17}','MV APEX 01/17{JUNE\'17}','1','MV APEX 01/17',NULL,'2018-09-27 13:57:23',0),(1847,'8639','Mv MAGIC STAR 1/17','Mv MAGIC STAR 01/17{JUNE\'17}','Mv MAGIC STAR 01/17{JUNE\'17}','1','Mv MAGIC STAR 1/17',NULL,'2018-09-27 13:57:23',0),(1848,'8640','MV VICTORIA 1/17','MV VICTORIA 01/17 {JUNE\'17}','MV VICTORIA 01/17 {JUNE\'17}','1','MV VICTORIA 1/17',NULL,'2018-09-27 13:57:23',0),(1849,'8641','MV MIMI SELMER 1/17','MV MIMI SELMER 01/17{JUNE\'17}','MV MIMI SELMER 01/17{JUNE\'17}','1','MV MIMI SELMER 1/17',NULL,'2018-09-27 13:57:23',0),(1850,'8642','MV AURORA SB 1/17','MV AURORA SB 1/17 {JULY\'17}','MV AURORA SB 1/17 {JULY\'17}','1','MV AURORA SB 1/17',NULL,'2018-09-27 13:57:23',0),(1851,'8643','MV GLOBAL SUCCESS1/17','MV GLOBAL SUCCESS 01/17{JULY\'17}','MV GLOBAL SUCCESS 01/17{JULY\'17}','1','MV GLOBAL SUCCESS1/17',NULL,'2018-09-27 13:57:23',0),(1852,'8644','MV HANNAH S 01/17','MV HANNAH S 01/17 {JUNE\'17}','MV HANNAH S 01/17 {JUNE\'17}','1','MV HANNAH S 01/17',NULL,'2018-09-27 13:57:23',0),(1853,'8645','MV GLOBAL HORIZON1/17','MV GLOBAL HORIZON 1/17{JULY\'17}','MV GLOBAL HORIZON 1/17{JULY\'17}','1','MV GLOBAL HORIZON1/17',NULL,'2018-09-27 13:57:23',0),(1854,'8646','MV UNITED SPIRIT 2/17','MV UNITED SPIRIT 1  02/17 {JULY\'17}','MV UNITED SPIRIT 1  02/17 {JULY\'17}','1','MV UNITED SPIRIT 2/17',NULL,'2018-09-27 13:57:23',0),(1855,'8647','MV DAXIA 01/17','MV DAXIA 01/17 {JULY\'17}','MV DAXIA 01/17 {JULY\'17}','1','MV DAXIA 01/17',NULL,'2018-09-27 13:57:23',0),(1856,'8648','MV ASI-M 01/17','MV ASI-M 01/17 {JULY\'17}','MV ASI-M 01/17 {JULY\'17}','1','MV ASI-M 01/17',NULL,'2018-09-27 13:57:23',0),(1857,'8649','MV ELIAS 01/17','MV ELIAS 01/17 {JULY\'17}','MV ELIAS 01/17 {JULY\'17}','1','MV ELIAS 01/17',NULL,'2018-09-27 13:57:23',0),(1858,'8650','MV CISL LEENE 04/17','MV CISL LEENE 04/17 {JULY\'17}','MV CISL LEENE 04/17 {JULY\'17}','1','MV CISL LEENE 04/17',NULL,'2018-09-27 13:57:23',0),(1859,'8651','MV NANJIN CONFIDENCE ','MV NANJIN CONFIDENCE 01/17 {JULY\'17}','MV NANJIN CONFIDENCE 01/17 {JULY\'17}','1','MV NANJIN CONFIDENCE ',NULL,'2018-09-27 13:57:23',0),(1860,'8652','MV OMICRON WAYS 1/17','MV OMICRON WAYS 1/17 {JULY\'17}','MV OMICRON WAYS 1/17 {JULY\'17}','1','MV OMICRON WAYS 1/17',NULL,'2018-09-27 13:57:23',0),(1861,'8653','MV CORVUS 1/17','MV CORVUS 01/17{JULY\'17}','MV CORVUS 01/17{JULY\'17}','1','MV CORVUS 1/17',NULL,'2018-09-27 13:57:23',0),(1862,'8654','MV BEKS HALIL 01/17','MV BEKS HALIL 01/17 {JULY\'17}','MV BEKS HALIL 01/17 {JULY\'17}','1','MV BEKS HALIL 01/17',NULL,'2018-09-27 13:57:23',0),(1863,'8655','MV SKAFTAFELL 03/17','MV SKAFTAFELL 03/17 {JULY\'17}','MV SKAFTAFELL 03/17 {JULY\'17}','1','MV SKAFTAFELL 03/17',NULL,'2018-09-27 13:57:23',0),(1864,'8656','MV TAMARITA 01','MV TAMARITA 01 {AUG\'17}','MV TAMARITA 01 {AUG\'17}','1','MV TAMARITA 01',NULL,'2018-09-27 13:57:23',0),(1865,'8657','MV EVER PRECIOUS 1/17','MV EVER PRECIOUS 01/17 {AUG \'17}','MV EVER PRECIOUS 01/17 {AUG \'17}','1','MV EVER PRECIOUS 1/17',NULL,'2018-09-27 13:57:23',0),(1866,'8658','MV THOR MONADIC 02/17','MV THOR MONADIC 02/17 {SEPT\'17}','MV THOR MONADIC 02/17 {SEPT\'17}','1','MV THOR MONADIC 02/17',NULL,'2018-09-27 13:57:23',0),(1867,'8659','CRUISE SHIP 01/17','CRUISE SHIP 01/17 {AUG\'17}','CRUISE SHIP 01/17 {AUG\'17}','1','CRUISE SHIP 01/17',NULL,'2018-09-27 13:57:23',0),(1868,'8660','MV DRACO OCEAN 01/17','MV DRACO OCEAN 01/17 {SEPT\'17}','MV DRACO OCEAN 01/17 {SEPT\'17}','1','MV DRACO OCEAN 01/17',NULL,'2018-09-27 13:57:23',0),(1869,'8661','ROYAL YATCH 01/17','MY FULK SALAMAH {OCT\'17}','MY FULK SALAMAH {OCT\'17}','1','ROYAL YATCH 01/17',NULL,'2018-09-27 13:57:23',0),(1870,'8662','MV SUMATRA 01/17','MV SUMATRA 01/17 {SEPT\'17}','MV SUMATRA 01/17 {SEPT\'17}','1','MV SUMATRA 01/17',NULL,'2018-09-27 13:57:23',0),(1871,'8663','SAE/17/BU/162','SAE/17/BU/162','jeremy hopkins','1','SAE/17/BU/162',NULL,'2018-09-27 13:57:23',0),(1872,'8664','MV ECO CORSAIR 02/17','MV ECO CORSAIR 02/17 {SEPT\'17}','MV ECO CORSAIR 02/17 {SEPT\'17}','1','MV ECO CORSAIR 02/17',NULL,'2018-09-27 13:57:23',0),(1873,'8665','MV VOULA SEAS 01/17','MV VOULA SEAS 01/17 {SEPT\'17}','MV VOULA SEAS 01/17 {SEPT\'17}','1','MV VOULA SEAS 01/17',NULL,'2018-09-27 13:57:23',0),(1874,'8666','MV AMOY ACTION 01/17','MV AMOY ACTION 01/17{SEPT\'17}','MV AMOY ACTION 01/17{SEPT\'17}','1','MV AMOY ACTION 01/17',NULL,'2018-09-27 13:57:23',0),(1875,'8667','MV SKAFTAFELL 04/17','MV SKAFTAFELL 04/17 {OCT\'17}','MV SKAFTAFELL 04/17 {OCT\'17}','1','MV SKAFTAFELL 04/17',NULL,'2018-09-27 13:57:23',0),(1876,'8668','MT SEASPEED 01/17','MT SEASPEED 01/17 {OCT\'17}','MT SEASPEED 01/17 {OCT\'17}','1','MT SEASPEED 01/17',NULL,'2018-09-27 13:57:23',0),(1877,'8669','MV GEORGIOS P 01/17','MV GEORGIOS P 01/17 {OCT\'17}','MV GEORGIOS P 01/17 {OCT\'17}','1','MV GEORGIOS P 01/17',NULL,'2018-09-27 13:57:23',0),(1878,'8670','MV STINGRAY 01/17','MV STINGRAY 01/17 {OCT\'17}','MV STINGRAY 01/17 {OCT\'17}','1','MV STINGRAY 01/17',NULL,'2018-09-27 13:57:23',0),(1879,'8671','AI/102/17NBI','AI/102/17NBI','I CARE INTERNATIONAL','1','AI/102/17NBI',NULL,'2018-09-27 13:57:23',0),(1880,'8672','MV AQUAPRIDE 01/17','MV AQUAPRIDE 01/17 {SEPT\'17}','MV AQUAPRIDE 01/17 {SEPT\'17}','1','MV AQUAPRIDE 01/17',NULL,'2018-09-27 13:57:23',0),(1881,'8673','MV TEN YOSHI MARU','MV TEN YOSHI MARU 01/17 {Oct\' 17}','MV TEN YOSHI MARU 01/17 {Oct\' 17}','1','MV TEN YOSHI MARU',NULL,'2018-09-27 13:57:23',0),(1882,'8674','MV CISL LEENE 05/17','MV CISL LEENE 05/17 {OCT\' 17}','MV CISL LEENE 05/17 {OCT\' 17}','1','MV CISL LEENE 05/17',NULL,'2018-09-27 13:57:23',0),(1883,'8675','IMP/309/17MSA','IMP/309/17MSA','MANUCHAR KENYA LTD','1','IMP/309/17MSA',NULL,'2018-09-27 13:57:23',0),(1884,'8676','IMP/296/17MSA','IMP/296/17MSA','DIGITAL PACKAGING INNOVATIONS HOLDINGS ','1','IMP/296/17MSA',NULL,'2018-09-27 13:57:23',0),(1885,'8677','IVS ORCHARDS 01/17','IVS ORCHARDS 01/17 {OCT\'17}','IVS ORCHARDS 01/17 {OCT\'17}','1','IVS ORCHARDS 01/17',NULL,'2018-09-27 13:57:23',0),(1886,'8678','MV CISL LEENE 10/17 ','','MV CISL LEENE 10/17 ','1','MV CISL LEENE 10/17 ',NULL,'2018-09-27 13:57:23',0),(1887,'8679','MV TOKYO BULKER','MV TOKYO BULKER 01/17 {NOV\'17}','MV TOKYO BULKER 01/17 {NOV\'17}','1','MV TOKYO BULKER',NULL,'2018-09-27 13:57:23',0),(1888,'8680','Mv Corvus-02/Sept/17','','Mv Corvus-02/Sept/17','1','Mv Corvus-02/Sept/17',NULL,'2018-09-27 13:57:23',0),(1889,'8681','MV IVS ORCHARD','MV IVS ORCHARD 01/17 {Oct\'17}','MV IVS ORCHARD 01/17 {Oct\'17}','1','MV IVS ORCHARD',NULL,'2018-09-27 13:57:23',0),(1890,'8682','Mv Sea Speed OCT 2017','Mv SEA SPEED {OCT\'17}','Mv SEA SPEED {OCT\'17}','1','Mv Sea Speed OCT 2017',NULL,'2018-09-27 13:57:23',0),(1891,'8683','MV DRAFT DODGER 01/17','MV DRAFT DODGER 01/17 {NOV\'17}','MV DRAFT DODGER 01/17 {NOV\'17}','1','MV DRAFT DODGER 01/17',NULL,'2018-09-27 13:57:23',0),(1892,'8684','IMP/448/17MSA','IMP/448/17MSA','TSAVO LITE LTD','1','IMP/448/17MSA',NULL,'2018-09-27 13:57:23',0),(1893,'8685','MV ALKYONI SB','MV ALKYONI SB 01/17 {NOV\'17}','MV ALKYONI SB 01/17 {NOV\'17}','1','MV ALKYONI SB',NULL,'2018-09-27 13:57:23',0),(1894,'8686','AI/121/17NBI','AI/121/17NBI','AI/121/17NBI','1','AI/121/17NBI',NULL,'2018-09-27 13:57:23',0),(1895,'8687','MY  FULK SALAMAH','MY  FULK SALAMAH & AL MUAZZAR {OCT\'17}','MY  FULK SALAMAH & AL MUAZZAR {OCT\'17}','1','MY  FULK SALAMAH',NULL,'2018-09-27 13:57:23',0),(1896,'8688','MV CAROLYN 01/17','MV CAROLYN 01/17 {DEC\'17}','MV CAROLYN 01/17 {DEC\'17}','1','MV CAROLYN 01/17',NULL,'2018-09-27 13:57:23',0),(1897,'8689','MV SKAFTAFELL 05/17','MV SKAFTAFELL 05/17 {DEC\'17}','MV SKAFTAFELL 05/17 {DEC\'17}','1','MV SKAFTAFELL 05/17',NULL,'2018-09-27 13:57:23',0),(1898,'8690','MV UNITED SPIRIT 3/17','MV UNITED SPIRIT 3/17 {DEC\'17}','MV UNITED SPIRIT 3/17 {DEC\'17}','1','MV UNITED SPIRIT 3/17',NULL,'2018-09-27 13:57:23',0),(1899,'8691','MV CISL LEENE 6/17','MV CISL LEENE 6/17 {DEC\'17}','MV CISL LEENE 6/17 {DEC\'17}','1','MV CISL LEENE 6/17',NULL,'2018-09-27 13:57:23',0),(1900,'8692','MV PAPAYIANNIS 01/18','MV PAPAYIANNIS 01 {JAN\' 18}','MV PAPAYIANNIS 01 {JAN\' 18}','1','MV PAPAYIANNIS 01/18',NULL,'2018-09-27 13:57:23',0),(1901,'8693','MV GLOBAL MAJESTY','MV GLOBAL MAJESTY 01/18 {JAN \'18}','MV GLOBAL MAJESTY 01/18 {JAN \'18}','1','MV GLOBAL MAJESTY',NULL,'2018-09-27 13:57:23',0),(1902,'8694','MV SAM PANTHER','MV SAM PANTHER 1/18{JAN \'18}','MV SAM PANTHER 1/18{JAN \'18}','1','MV SAM PANTHER',NULL,'2018-09-27 13:57:23',0),(1903,'8695','MV CAROLYN 01/18','MV CAROLYN 01/18 {JAN\'18}','MV CAROLYN 01/18 {JAN\'18}','1','MV CAROLYN 01/18',NULL,'2018-09-27 13:57:23',0),(1904,'8696','MV GRANDWAY STAR','MV GRANDWAY STAR 01/18{JAN\'18}','MV GRANDWAY STAR 01/18{JAN\'18}','1','MV GRANDWAY STAR',NULL,'2018-09-27 13:57:23',0),(1905,'8697','MV TRITON SWALLOW01/8','MV TRITON SWALLOW 01/18 {JAN\'18}','MV TRITON SWALLOW 01/18 {JAN\'18}','1','MV TRITON SWALLOW01/8',NULL,'2018-09-27 13:57:23',0),(1906,'8698','MV SKAFTAFELL 01/18','MV SKAFTAFELL 01/18 {JAN\'18}','MV SKAFTAFELL 01/18 {JAN\'18}','1','MV SKAFTAFELL 01/18',NULL,'2018-09-27 13:57:23',0),(1907,'8699','MV OCEAN PHOENIX 1/18','MV OCEAN PHOENIX 1/18 {FEB\'18}','MV OCEAN PHOENIX 1/18 {FEB\'18}','1','MV OCEAN PHOENIX 1/18',NULL,'2018-09-27 13:57:23',0),(1908,'8700','MV MARIA TOPIC 1/18','MV MARIA TOPIC 1/18 {FEB\'18}','MV MARIA TOPIC 1/18 {FEB\'18}','1','MV MARIA TOPIC 1/18',NULL,'2018-09-27 13:57:23',0),(1909,'8701','SAI/18/NRB/036','SAI/18/NRB/036','POOLSHOP','1','SAI/18/NRB/036',NULL,'2018-09-27 13:57:23',0),(1910,'8702','MV ARYBBAS 01/18','MV ARYBBAS 01/18 {MAR\'18}','MV ARYBBAS 01/18 {MAR\'18}','0','MV ARYBBAS 01/18',NULL,'2018-09-27 13:57:23',0),(1911,'8703','MV ER BORDEAUX01/2018','MV ER BORDEAUX 01/2018 {FEB\'2018}','MV ER BORDEAUX 01/2018 {FEB\'2018}','1','MV ER BORDEAUX01/2018',NULL,'2018-09-27 13:57:23',0),(1912,'8704','MV NORD MANATEE 01/18','MV NORD MANATEE 01/18 {MAR\'18}','MV NORD MANATEE 01/18 {MAR\'18}','1','MV NORD MANATEE 01/18',NULL,'2018-09-27 13:57:23',0),(1913,'8705','MV AFRICAN PUFFIN 18','MV AFRICAN PUFFIN 01/18 {MAR\'18}','MV AFRICAN PUFFIN 01/18 {MAR\'18}','1','MV AFRICAN PUFFIN 18',NULL,'2018-09-27 13:57:23',0),(1914,'8706','MV MEL PRIDE 01/18','MV MEL PRIDE 01/18 {MAR\'18}','MV MEL PRIDE 01/18 {MAR\'18}','1','MV MEL PRIDE 01/18',NULL,'2018-09-27 13:57:23',0),(1915,'8707','MV DORIC SPIRIT 01/18','MV DORIC SPIRIT 01/18 {MAR\'18}','MV DORIC SPIRIT 01/18 {MAR\'18}','1','MV DORIC SPIRIT 01/18',NULL,'2018-09-27 13:57:23',0),(1916,'8708','MV DRAFTDODGER 01/18','MV DRAFTDODGER 01/18 {MAR\'18}','MV DRAFTDODGER 01/18 {MAR\'18}','1','MV DRAFTDODGER 01/18',NULL,'2018-09-27 13:57:23',0),(1917,'8709','MV JALMA TOPIC 01/18','MV JALMA TOPIC 01/18 {MAR\'18}','MV JALMA TOPIC 01/18 {MAR\'18}','1','MV JALMA TOPIC 01/18',NULL,'2018-09-27 13:57:23',0),(1918,'8710','MV ELPIS 01/18','MV ELPIS 01/18 {MAR\'18}','MV ELPIS 01/18 {MAR\'18}','1','MV ELPIS 01/18',NULL,'2018-09-27 13:57:23',0),(1919,'8711','MV  SKAFTAFELL 02/18','MV  SKAFTAFELL 02/18{MAR\'18}','MV  SKAFTAFELL 02/18{MAR\'18}','1','MV  SKAFTAFELL 02/18',NULL,'2018-09-27 13:57:23',0),(1920,'8712','MV ALAM MULIA 01/18','MV ALAM MULIA 01/18 {MAR \'18}','MV ALAM MULIA 01/18 {MAR \'18}','1','MV ALAM MULIA 01/18',NULL,'2018-09-27 13:57:23',0),(1921,'8713','MV AYIA MARINA 01/18','MV AYIA MARINA 01/18 {APR\'18}','MV AYIA MARINA 01/18 {APR\'18}','1','MV AYIA MARINA 01/18',NULL,'2018-09-27 13:57:23',0),(1922,'8714','MV GREENER 01/18','MV GREENER 01/18 {APR\'18}','MV GREENER 01/18 {APR\'18}','1','MV GREENER 01/18',NULL,'2018-09-27 13:57:23',0),(1923,'8715','MV SKAFTAFELL 2/18','MV SKAFTAFELL 2/18 {MAR\'18}','MV SKAFTAFELL 2/18 {MAR\'18}','1','MV SKAFTAFELL 2/18',NULL,'2018-09-27 13:57:23',0),(1924,'8716','MV NAVIOS HIOS 01/18','MV NAVIOS HIOS 01/18{MAR\'18}','MV NAVIOS HIOS 01/18{MAR\'18}','1','MV NAVIOS HIOS 01/18',NULL,'2018-09-27 13:57:23',0),(1925,'8717','MV CISL LEENE 1/18','MV CISL LEENE 1/18 {APRIL\'18}','MV CISL LEENE 1/18 {APRIL\'18}','1','MV CISL LEENE 1/18',NULL,'2018-09-27 13:57:23',0),(1926,'8718','MV BOMAR OYSTER 01/18','MV BOMAR OYSTER 01/18 {APR\'18}','MV BOMAR OYSTER 01/18 {APR\'18}','1','MV BOMAR OYSTER 01/18',NULL,'2018-09-27 13:57:23',0),(1927,'8719','MV PAPA JOHN 01/18','MV PAPA JOHN 01/18{APRIL\'18}','MV PAPA JOHN 01/18{APRIL\'18}','1','MV PAPA JOHN 01/18',NULL,'2018-09-27 13:57:23',0),(1928,'8720','MV DA QING 01/18','MV DA QING 01/18 {MAY\'18}','MV DA QING 01/18 {MAY\'18}','1','MV DA QING 01/18',NULL,'2018-09-27 13:57:23',0),(1929,'8721','MV CISL LEENE 02/18','MV CISL LEENE 02/18 {MAY\'18}','MV CISL LEENE 02/18 {MAY\'18}','1','MV CISL LEENE 02/18',NULL,'2018-09-27 13:57:23',0),(1930,'8722','MV ST-CERGUE 01/18','MV ST-CERGUE 01/18 {MAY\'18}','MV ST-CERGUE 01/18 {MAY\'18}','1','MV ST-CERGUE 01/18',NULL,'2018-09-27 13:57:23',0),(1931,'8723','MV NORD BERING 05/18','','','1','MV NORD BERING 05/18',NULL,'2018-09-27 13:57:23',0),(1932,'8724','MV NORD BERING 01/18 ','MV NORD BERING 01/18 {MAY\'18}','MV NORD BERING 01/18 {MAY\'18}','1','MV NORD BERING 01/18 ',NULL,'2018-09-27 13:57:23',0),(1933,'8725','MV CISL LEENE 03/18','MV CISL LEENE 03/18 {MAY\'18}','MV CISL LEENE 03/18 {MAY\'18}','1','MV CISL LEENE 03/18',NULL,'2018-09-27 13:57:23',0),(1934,'8726','MV KIRAN AUSTRALIA1/1','MV KIRAN AUSTRALIA 1/18{MAY\'18}','MV KIRAN AUSTRALIA 1/18{MAY\'18}','1','MV KIRAN AUSTRALIA1/1',NULL,'2018-09-27 13:57:23',0),(1935,'8727','IMP/375/18MSA','IMP/375/18MSA','NCCL','1','IMP/375/18MSA',NULL,'2018-09-27 13:57:23',0),(1936,'8728','AI/090/18NBI','AI/090/18NBI','NCCL','1','AI/090/18NBI',NULL,'2018-09-27 13:57:23',0),(1937,'8729','AI/089/18NBI','AI/089/18NBI','MAISHA MABATI','1','AI/089/18NBI',NULL,'2018-09-27 13:57:23',0),(1938,'8730','MV STELLAR EAGLE 1/18','MV STELLAR EAGLE 1/18 {MAY\'18}','MV STELLAR EAGLE 1/18 {MAY\'18}','1','MV STELLAR EAGLE 1/18',NULL,'2018-09-27 13:57:23',0),(1939,'8731','MV FJ STAR 01/18','MV FJ STAR 01/18 {MAY\'18}','MV FJ STAR 01/18 {MAY\'18}','1','MV FJ STAR 01/18',NULL,'2018-09-27 13:57:23',0),(1940,'8732','MV TAI HEALTH 01/18','MV TAI HEALTH 01/18 {MAY\'18}','MV TAI HEALTH 01/18 {MAY\'18}','1','MV TAI HEALTH 01/18',NULL,'2018-09-27 13:57:23',0),(1941,'8733','MV CLIPPER TRIUMPH 01','MV CLIPPER TRIUMPH 01/18{JUNE\'18}','MV CLIPPER TRIUMPH 01/18{JUNE\'18}','1','MV CLIPPER TRIUMPH 01',NULL,'2018-09-27 13:57:23',0),(1942,'8734','MV TRITON SWAN 01/18','MV TRITON SWAN 01/18 {JUNE\'18}','MV TRITON SWAN 01/18 {JUNE\'18}','1','MV TRITON SWAN 01/18',NULL,'2018-09-27 13:57:23',0),(1943,'8735','MV BULK PHOENIX 01/18','MV BULK PHOENIX 01/18 {JUNE\'18}','MV BULK PHOENIX 01/18 {JUNE\'18}','1','MV BULK PHOENIX 01/18',NULL,'2018-09-27 13:57:23',0),(1944,'8736','MV SEA LAVENDER 1/18','MV SEA LAVENDER 1/18 {JUN \'18}','MV SEA LAVENDER 1/18 {JUN \'18}','1','MV SEA LAVENDER 1/18',NULL,'2018-09-27 13:57:23',0),(1945,'8737','MV SKAFTAFELL 03/18','MV SKAFTAFELL 03/18{JUNE\'18}','MV SKAFTAFELL 03/18{JUNE\'18}','1','MV SKAFTAFELL 03/18',NULL,'2018-09-27 13:57:23',0),(1946,'8738','MV ER BORDEAUX 02/18','MV ER BORDEAUX 02/18{FEB\'18}','MV ER BORDEAUX 02/18{FEB\'18}','1','MV ER BORDEAUX 02/18',NULL,'2018-09-27 13:57:23',0),(1947,'8739','MV ER BORDEAUX 02/201','MV ER BORDEAUX 02/18 {JUNE\'2018}','MV ER BORDEAUX 02/18 {JUNE\'2018}','1','MV ER BORDEAUX 02/201',NULL,'2018-09-27 13:57:23',0),(1948,'8740','MV UNITED SPIRIT 1/18','MV UNITED SPIRIT 1/18{JUNE\'18}','MV UNITED SPIRIT 1/18{JUNE\'18}','1','MV UNITED SPIRIT 1/18',NULL,'2018-09-27 13:57:23',0),(1949,'9740','MV NEW LONDON EAGLE','MV NEW LONDON EAGLE 01/18{JUL\'18}','MV NEW LONDON EAGLE 01/18{JUL\'18}','1','MV NEW LONDON EAGLE',NULL,'2018-09-27 13:57:23',0),(1950,'9741','MV JEWEL OF SHINAS','MV JEWEL OF SHINAS 01/18{JUL\'18}','MV JEWEL OF SHINAS 01/18{JUL\'18}','1','MV JEWEL OF SHINAS',NULL,'2018-09-27 13:57:23',0),(1951,'9742','MV PAN SPIRIT 01/18','MV PAN SPIRIT 01/18 {JULY\' 18}','MV PAN SPIRIT 01/18 {JULY\' 18}','1','MV PAN SPIRIT 01/18',NULL,'2018-09-27 13:57:23',0),(1952,'10742','MV NEW LONDON  1/18','','','0','MV NEW LONDON  1/18',NULL,'2018-09-27 13:57:23',0),(1953,'11742','MV THOR MERCURY 1/18','MV THOR MERCURY 1/18 {JULY\'18}','MV THOR MERCURY 1/18 {JULY\'18}','1','MV THOR MERCURY 1/18',NULL,'2018-09-27 13:57:23',0),(1954,'11743','MV THOR BRAVE 01/18','MV THOR BRAVE 01/18 {JULY\'18}','MV THOR BRAVE 01/18 {JULY\'18}','1','MV THOR BRAVE 01/18',NULL,'2018-09-27 13:57:23',0),(1955,'11744','MV JIN GUANG LIN 1/18','MV JIN GUANG LIN 1/18 {JULY\'18}','MV JIN GUANG LIN 1/18 {JULY\'18}','1','MV JIN GUANG LIN 1/18',NULL,'2018-09-27 13:57:23',0),(1956,'11745','MV ADARA 01/18','MV ADARA 01/18{AUG\'18}','MV ADARA 01/18{AUG\'18}','1','MV ADARA 01/18',NULL,'2018-09-27 13:57:23',0),(1957,'11746','MV ER BRIGHTON 01/18','MV ER BRIGHTON 01/18 {AUG\' 2018}','MV ER BRIGHTON 01/18 {AUG\' 2018}','1','MV ER BRIGHTON 01/18',NULL,'2018-09-27 13:57:23',0),(1958,'11747','MV LMZ PHOEBE 01/18 ','MV LMZ PHOEBE 01/18 {AUG\' 2018}','MV LMZ PHOEBE 01/18 {AUG\' 2018}','1','MV LMZ PHOEBE 01/18 ',NULL,'2018-09-27 13:57:23',0),(1959,'11748','MV NORD EXPRESS 01/18','MV NORD EXPRESS 01/18 [AUG\'18}','MV NORD EXPRESS 01/18 [AUG\'18}','1','MV NORD EXPRESS 01/18',NULL,'2018-09-27 13:57:23',0),(1960,'11749','MV CISL LEENE 04/18','MV CISL LEENE 04/18 {AUG\' 18}','MV CISL LEENE 04/18 {AUG\' 18}','1','MV CISL LEENE 04/18',NULL,'2018-09-27 13:57:23',0),(1961,'11750','MV ELIZABETH 01/18','MV ELIZABETH 01/18 {AUG\'18}','MV ELIZABETH 01/18 {AUG\'18}','1','MV ELIZABETH 01/18',NULL,'2018-09-27 13:57:23',0),(1962,'11751','MV ER MADEN 01/18','MV ER MADEN 01/18 {AUG\'18}','MV ER MADEN 01/18 {AUG\'18}','1','MV ER MADEN 01/18',NULL,'2018-09-27 13:57:23',0),(1963,'11752','MV XI CHANG HI 01/18','MV XI CHANG HAI 01/18{AUG\'18}','MV XI CHANG HAI 01/18{AUG\'18}','1','MV XI CHANG HI 01/18',NULL,'2018-09-27 13:57:23',0),(1964,'11753','MV AFRICAN LEOPARD 01','MV AFRICAN LEOPARD 01/18{SEP\'18}','MV AFRICAN LEOPARD 01/18{SEP\'18}','1','MV AFRICAN LEOPARD 01',NULL,'2018-09-27 13:57:23',0),(1965,'11754','MV LEFKONIKO 01/18','MV LEFKONIKO 01/18 {SEP\'18}','MV LEFKONIKO 01/18 {SEP\'18}','1','MV LEFKONIKO 01/18',NULL,'2018-09-27 13:57:23',0),(1966,'11755','MV BISCAYNE 01/18','MV BISCAYNE LIGHT 01/18 {SEP\'18}','MV BISCAYNE LIGHT 01/18 {SEP\'18}','1','MV BISCAYNE 01/18',NULL,'2018-09-27 13:57:23',0),(1967,'11756','MV STOVE CALEDONIA 01','MV STOVE CALEDONIA 01/18{SEP\'18}','MV STOVE CALEDONIA 01/18{SEP\'18}','1','MV STOVE CALEDONIA 01',NULL,'2018-09-27 13:57:23',0),(1968,'11757','MV SKAFTAFELL 04/18','MV SKAFTAFELL 04/18 {SEPT\'18}','MV SKAFTAFELL 04/18 {SEPT\'18}','1','MV SKAFTAFELL 04/18',NULL,'2018-09-27 13:57:23',0),(1969,'11758','MV AFRICAN SUNBIRD 01','MV AFRICAN SUNBIRD 01/18 {SEPT\'18}','MV AFRICAN SUNBIRD 01/18 {SEPT\'18}','1','MV AFRICAN SUNBIRD 01',NULL,'2018-09-27 13:57:23',0),(1970,'11759','MV MAUD 1/18','MV MAUD 1/18 {SEP\'18}','MV MAUD 1/18 {SEP\'18}','1','MV MAUD 1/18',NULL,'2018-09-27 13:57:23',0),(1971,'11760','WER-01/18','WER-01/18','WER-01/18','1','WER-01/18','2018-09-24 15:08:06.517','2018-09-27 13:57:23',0);
/*!40000 ALTER TABLE `sage_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_types`
--

DROP TABLE IF EXISTS `service_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_types` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `km_range` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_types`
--

LOCK TABLES `service_types` WRITE;
/*!40000 ALTER TABLE `service_types` DISABLE KEYS */;
INSERT INTO `service_types` VALUES (1,'Service A','Service A Maintenance','Every 5000 kms','2018-02-23 19:09:32','0000-00-00 00:00:00',0),(2,'Service B','Service B Maintenance','Every 20000km','2018-02-23 19:09:32',NULL,0),(3,'Service C','Service C Maintenance','Every 40000km','2018-02-23 19:09:43',NULL,0),(4,'250 hrs Service','250hrs maintenance','Every 250hrs','2018-05-09 12:22:11',NULL,0);
/*!40000 ALTER TABLE `service_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `setting_name` (`setting_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('','',0),('accepted_file_formats','jpg,jpeg,doc,png,gif,pdf,docx',0),('add_projects_from_excel','YES',0),('admin_costs','436587',0),('allowed_ip_addresses','',0),('app_title','PRO-KAZI',0),('client_can_add_project_files','1',0),('client_can_comment_on_files','1',0),('client_can_comment_on_tasks','1',0),('client_can_create_tasks','',0),('client_can_edit_tasks','1',0),('client_can_view_project_files','1',0),('client_can_view_tasks','1',0),('client_message_users','',0),('company_address','Express Shipping & Logistics (EA) Ltd\nMoi Avenue, Cannon Towers II – 6th Floor.\nP. O. Box 1922 – 80100, \nMombasa Kenya.',0),('company_email','agency@esl-eastafrica.com',0),('company_name','Express Shipping & Logistics (EA) Ltd',0),('company_phone','+254-41-2229784',0),('company_website','http://www.esl-eastafrica.com/',0),('currency_symbol','Ksh',0),('date_format','d/m/Y',0),('decimal_separator','.',0),('default_currency','KES',0),('disable_client_login','1',0),('disable_client_signup','1',0),('email_protocol','smtp',0),('email_sent_from_address','no-reply@esl-eastafrica.com',0),('email_sent_from_name','Pro-Kazi ERP',0),('email_smtp_host','smtp.mailtrap.io',0),('email_smtp_pass','2176180c5483c4',0),('email_smtp_port','25',0),('email_smtp_security_type','tls',0),('email_smtp_user','e84a71a5ca5cc0',0),('escalation_duration','45',0),('escalation_via_email','1',0),('escalation_via_sms','1',0),('first_day_of_week','0',0),('HR','',0),('HR_sync','off',0),('iAssetTypeNo','3',0),('invoice_logo','default-invoice-logo.png',0),('item_purchase_code','ITEM-PURCHASE-CODE',0),('language','english',0),('module_admin','1',0),('module_adminc','1',0),('module_administrator','1',0),('module_announcement','',0),('module_attendance','',0),('module_clients','1',0),('module_escalation_matrix','1',0),('module_estimate','',0),('module_estimate_request','',0),('module_event','1',0),('module_expense','',0),('module_finance','1',0),('module_invoice','1',0),('module_leave','',0),('module_legal','1',0),('module_message','1',0),('module_note','1',0),('module_parcel','1',0),('module_sage','',0),('module_technical','1',0),('module_ticket','1',0),('module_timeline','1',0),('opening_hours','1:00 AM',0),('order_project_tasks','title',0),('Payroll','on',0),('Payroll_sync','on',0),('product_serial','auto',0),('rows_per_page','50',0),('sage_IDInvJrBatches','1',0),('sage_Inventory_Project','22',0),('sage_petty_cash_account_id','94',0),('sage_petty_cash_batches_id','3',0),('sage_TrCode','37',0),('sage_WarehouseID','1',0),('scrollbar','native',0),('serial_prefix','SN',0),('show_background_image_in_signin_page','yes',0),('show_logo_in_signin_page','yes',0),('site_logo','default-logo.png',0),('time_format','capital',0),('timezone','Africa/Nairobi',0),('working_hours','560',0),('xlsx_logo','excel_logo.png',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `linkedin` text COLLATE utf8_unicode_ci,
  `googleplus` text COLLATE utf8_unicode_ci,
  `digg` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `pinterest` text COLLATE utf8_unicode_ci,
  `instagram` text COLLATE utf8_unicode_ci,
  `github` text COLLATE utf8_unicode_ci,
  `tumblr` text COLLATE utf8_unicode_ci,
  `vine` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spares`
--

DROP TABLE IF EXISTS `spares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spares` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(255) DEFAULT NULL,
  `job_card_id` int(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qnty_out` int(100) NOT NULL,
  `total` int(100) DEFAULT NULL,
  `requisition_no` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `stock_id` varchar(255) DEFAULT NULL,
  `warehouse_id` varchar(255) DEFAULT NULL,
  `code_id` varchar(255) DEFAULT NULL,
  `uom` varchar(255) DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `stocking_id` varchar(255) DEFAULT NULL,
  `avg_cost` double DEFAULT NULL,
  `qnty_in` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spares`
--

LOCK TABLES `spares` WRITE;
/*!40000 ALTER TABLE `spares` DISABLE KEYS */;
INSERT INTO `spares` VALUES (1,'Pens ',2,'Req by: Admin',1,34,'RQ-01','2018-08-15 06:33:08',0,'140','1','PENS01','0',1,'0',33.536585365854,10),(2,'Pens ',5,'Req by: Admin',1,34,'RQ-02','2018-08-15 06:41:25',0,'140','1','PENS01','0',1,'0',33.536585365854,10),(3,'Pens ',6,'Req by: Admin',1,34,'RQ-03','2018-09-10 09:33:41',0,'140','1','PENS01','0',1,'0',33.536585365854,100),(4,'Pens ',8,'Req by: Admin',3,101,'RQ-04','2018-09-11 10:54:03',0,'140','1','PENS01','0',1,'0',33.536585365854,41);
/*!40000 ALTER TABLE `spares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_comments`
--

DROP TABLE IF EXISTS `support_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_comments` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `ticket_id` int(100) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `files` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_comments`
--

LOCK TABLES `support_comments` WRITE;
/*!40000 ALTER TABLE `support_comments` DISABLE KEYS */;
INSERT INTO `support_comments` VALUES (1,'test data',1,'5','2018-07-12 11:27:36','a:0:{}',0),(2,'great',1,'5','2018-07-12 11:28:45','a:1:{i:0;a:2:{s:9:\"file_name\";s:40:\"ticket_file5b47659d5c3d4-jobcard-(9).pdf\";s:9:\"file_size\";s:5:\"12297\";}}',0),(3,'wow',1,'5','2018-07-12 11:40:08','a:1:{i:0;a:2:{s:9:\"file_name\";s:42:\"ticket_file5b4768483958c-defferals-(3).pdf\";s:9:\"file_size\";s:4:\"7112\";}}',0),(4,'great is who is above',2,'5','2018-07-16 06:14:31','a:1:{i:0;a:2:{s:9:\"file_name\";s:42:\"ticket_file5b4c61f76d4ae-defferals-(2).pdf\";s:9:\"file_size\";s:4:\"7030\";}}',0),(5,'my testing',3,'5','2018-07-18 02:56:54','a:1:{i:0;a:2:{s:9:\"file_name\";s:39:\"ticket_file5b4ed6a62f930-PRO-000005.pdf\";s:9:\"file_size\";s:6:\"109778\";}}',0),(6,'this is now great',3,'5','2018-07-18 02:58:08','a:1:{i:0;a:2:{s:9:\"file_name\";s:36:\"ticket_file5b4ed6f09a6a4-phpinfo.pdf\";s:9:\"file_size\";s:6:\"127598\";}}',0),(7,'test content',4,'5','2018-07-19 04:11:03','a:0:{}',0),(8,'Dzsdasd',5,'5','2018-07-20 05:15:12','a:0:{}',0),(9,'wonderful',6,'5','2018-07-23 01:53:35','a:0:{}',0),(10,'teteet',7,'5','2018-07-23 03:58:26','a:0:{}',0),(11,'great',1,'5','2018-07-24 04:51:36','a:0:{}',0),(12,'zc zxc',1,'5','2018-07-24 05:04:09','a:0:{}',0),(13,'tictactoe',1,'5','2018-07-24 05:09:03','a:0:{}',0),(14,'awesome',1,'5','2018-07-24 05:43:51','a:0:{}',0),(15,'marvelous',1,'5','2018-07-24 06:05:08','a:0:{}',0),(16,'ffff',1,'5','2018-07-24 06:06:51','a:1:{i:0;a:2:{s:9:\"file_name\";s:43:\"ticket_file5b56ec2bca887-PRO-000003-(1).pdf\";s:9:\"file_size\";s:6:\"110485\";}}',0),(17,'more testing',8,'82','2018-07-25 03:43:34','a:0:{}',0),(18,'sample content',9,'5','2018-07-31 02:44:07','a:0:{}',0),(19,NULL,10,'5','2018-07-31 02:45:12','a:0:{}',0),(20,'great my son',11,'5','2018-07-31 02:51:35','a:0:{}',0),(21,'Dasd',12,'5','2018-07-31 04:51:35','a:0:{}',0),(22,'zxzc',13,'5','2018-07-31 04:52:34','a:0:{}',0),(23,'asdasdsa',14,'5','2018-09-26 02:59:36','a:0:{}',0),(24,'zxcsdfwqsxacx2edwefergtr dfergr',15,'5','2018-09-26 03:09:00','a:0:{}',0),(25,'z zxcxc zx csc',16,'5','2018-09-26 03:11:25','a:0:{}',0),(26,'this is a test message.',17,'5','2018-09-26 03:12:23','a:0:{}',0),(27,'ascs',14,'5','2018-10-12 09:19:45','a:0:{}',0),(28,'scsdvdfvdf dfvdfv',14,'5','2018-10-12 09:20:03','a:0:{}',0),(29,'asdas',14,'5','2018-10-12 09:23:36','a:0:{}',0),(30,'31dewq',14,'5','2018-10-12 09:49:10','a:0:{}',0),(31,'asd453',14,'5','2018-10-12 11:04:44','a:0:{}',0),(32,'fsd',14,'5','2018-10-12 11:08:49','a:0:{}',0),(33,'walla walla',18,'5','2018-10-25 08:57:09','a:0:{}',0),(34,'zczx',19,'5','2018-10-25 09:13:53','a:0:{}',0),(35,'dasf fsdf',20,'5','2018-10-25 09:19:29','a:0:{}',0),(36,'testing....',21,'5','2018-10-25 10:28:23','a:0:{}',0),(37,'simple description',22,'5','2018-10-30 09:58:11','a:0:{}',0),(38,'asdasf',31,'5','2018-10-30 10:59:40','a:0:{}',0),(39,'czxsdcsd sds sds asda',32,'5','2018-10-30 11:01:59','a:0:{}',0),(40,NULL,1,'5','2018-10-31 03:22:42','a:0:{}',0),(41,NULL,8,'5','2018-10-31 03:46:58','a:0:{}',0),(42,'This is it men....',33,'5','2019-03-26 05:14:28','a:0:{}',0),(43,'wefwef fwefer efr',34,'5','2019-03-26 05:39:48','a:0:{}',0),(44,'d dwec dwede',35,'5','2019-03-26 05:42:35','a:0:{}',0),(45,'rtgrtg t trgtr',36,'5','2019-03-26 05:43:15','a:0:{}',0),(46,'wedwe fdwe wee',37,'5','2019-03-26 05:47:45','a:0:{}',0),(47,'This my testing',38,'5','2019-03-26 06:34:30','a:0:{}',0),(48,'This is system generated..',39,'5','2019-03-26 06:56:49','a:0:{}',0),(49,'this is dummy',40,'5','2019-04-11 05:06:00','a:1:{i:0;a:2:{s:9:\"file_name\";s:40:\"ticket_file5caef5684784a-2017-2018_1.pdf\";s:9:\"file_size\";s:7:\"1366180\";}}',0),(50,'walla',40,'5','2019-04-11 05:09:17','a:1:{i:0;a:2:{s:9:\"file_name\";s:64:\"ticket_file5caef62d44524-Screenshot-from-2018-10-05-11-20-53.png\";s:9:\"file_size\";s:5:\"90410\";}}',0),(51,'This is no joke men!!!!!!!!!',43,'5','2019-04-12 07:11:05','a:0:{}',0),(52,'ttttttttttttttttttttttttttttttt ttttttttttttttttttt ttttttttttt',44,'5','2019-04-12 07:12:47','a:0:{}',0),(53,'this is it bro',45,'Pro-kazi Administrator','2019-04-15 04:28:03','a:0:{}',0),(54,'This is vinn test',46,'Pro-kazi Administrator','2019-04-15 04:32:37','a:0:{}',0),(55,'system gen test',47,'Pro-kazi Administrator','2019-04-15 04:39:24','a:0:{}',0),(56,'so nice ....!',48,'Pro-kazi Administrator','2019-04-15 04:40:30','a:0:{}',0),(57,'this is it my dear',49,'Pro-kazi Administrator','2019-04-15 04:42:02','a:0:{}',0),(58,'12eq edweed',50,'Pro-kazi Administrator','2019-04-15 04:42:58','a:0:{}',0),(59,'wefew wdwedew weed',51,'Pro-kazi Administrator','2019-04-15 04:43:48','a:0:{}',0),(60,'qwdswe wede',52,'Pro-kazi Administrator','2019-04-15 04:56:33','a:0:{}',0),(61,'dummy content',53,'Pro-kazi Administrator','2019-04-15 05:05:49','a:0:{}',0),(62,'dummy content',54,'Pro-kazi Administrator','2019-04-15 05:06:27','a:0:{}',0),(63,'this is more testing',55,'Pro-kazi Administrator','2019-04-15 05:09:37','a:0:{}',0),(64,'great!!!!!!!',56,'Pro-kazi Administrator','2019-04-15 05:12:11','a:0:{}',0),(65,'this is it',57,'Pro-kazi Administrator','2019-04-15 05:56:33','a:0:{}',0),(66,'wdw sdws feswd',58,'Pro-kazi Administrator','2019-04-15 05:59:04','a:0:{}',0),(67,'wallaaaaaaaaaaaaaaaa!',59,'Pro-kazi Administrator','2019-04-15 06:08:34','a:0:{}',0),(68,'this is my test',60,'Pro-kazi Administrator','2019-04-15 07:16:07','a:0:{}',0),(69,'SDadxaw',61,'5','2019-04-15 07:32:19','a:1:{i:0;a:2:{s:9:\"file_name\";s:64:\"ticket_file5cb45db31a905-Screenshot-from-2019-04-09-17-03-00.png\";s:9:\"file_size\";s:6:\"161023\";}}',0),(70,'d3wdw dwed',62,'Pro-kazi Administrator','2019-04-15 08:17:03','2019-04-15-1555327024Screenshot from 2019-03-05 11-30-41.png',0),(71,'d3wdw dwed',63,'Pro-kazi Administrator','2019-04-15 08:17:43','2019-04-15-1555327063Screenshot from 2019-03-05 11-30-41.png',0),(72,'wedxe fercer eer',64,'Pro-kazi Administrator','2019-04-15 08:19:23','2019-04-15-1555327163bmw.jpg',0),(73,'wedxe fercer eer',65,'Pro-kazi Administrator','2019-04-15 08:20:35','2019-04-15-1555327235',0),(74,'wefd efwe fwefyyyyyyyyyyyyyyyyyyy',66,'Pro-kazi Administrator','2019-04-15 08:22:51','2019-04-15-1555327371solid.png',0),(75,'wefd efwe fwefyyyyyyyyyyyyyyyyyyy',67,'Pro-kazi Administrator','2019-04-15 08:25:50','1555327550solid.png',0),(76,'dvdf  vdvdfdvdfvvfdvf  fr',68,'Pro-kazi Administrator','2019-04-15 08:29:05','1555327745_bmw.jpg',0),(77,'werwe rtert fer fre ',69,'Pro-kazi Administrator','2019-04-15 08:30:30','1555327830_bmw.jpg',0),(78,'walla',69,'5','2019-04-15 08:47:59','a:1:{i:0;a:2:{s:9:\"file_name\";s:64:\"ticket_file5cb46f6fcb9ff-Screenshot-from-2019-02-28-18-04-39.png\";s:9:\"file_size\";s:6:\"307124\";}}',0),(79,'tttttttttttttttttttttttttttttttttttttttttt',70,'Pro-kazi Administrator','2019-04-16 06:47:32','1555408052_',0),(80,'yyyyyyyyyyyyyiiiiiiiiiiiii',71,'Pro-kazi Administrator','2019-04-16 06:59:23','1555408763_',0),(81,'qweqwwef',72,'Pro-kazi Administrator','2019-04-16 07:05:20','',0),(82,'hghghgh',73,'Pro-kazi Administrator','2019-04-16 07:53:08','',0),(83,'ooooooooooooooooop',74,'Pro-kazi Administrator','2019-04-16 07:54:18','1555412058_bmw.jpg',0);
/*!40000 ALTER TABLE `support_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_entries`
--

DROP TABLE IF EXISTS `support_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_entries` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `assign_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ticket_id` varchar(255) DEFAULT NULL,
  `last_activity_at` varchar(255) DEFAULT NULL,
  `ticket_type_id` int(100) DEFAULT NULL,
  `labels` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `closed_date` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` varchar(255) DEFAULT NULL,
  `user_ref_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_entries`
--

LOCK TABLES `support_entries` WRITE;
/*!40000 ALTER TABLE `support_entries` DISABLE KEYS */;
INSERT INTO `support_entries` VALUES (1,'test test','5','97','2018-10-31 03:22:42','1','2018-10-31 06:22:42',1,'tests','open',NULL,0,'19','87',NULL),(2,'sample testing','5','99','2018-05-16 06:14:31',NULL,'2018-07-16 09:14:31',3,'tests','open',NULL,0,NULL,NULL,NULL),(3,'teststsing','5',NULL,'2018-06-18 02:56:54',NULL,'2018-07-18 05:58:08',2,'tests','open',NULL,0,NULL,NULL,NULL),(4,'support','5','99','2018-07-19 04:11:03',NULL,'2018-07-19 07:11:03',2,'test','open',NULL,0,NULL,NULL,NULL),(5,'hgfghvj','5',NULL,'2018-07-20 05:15:12',NULL,'2018-07-20 08:15:12',2,'tests','open',NULL,0,NULL,NULL,NULL),(6,'great','5',NULL,'2018-07-23 01:53:35','6','2018-07-23 04:56:19',6,'IMPREST','closed','2018-06-31 05:56:51',0,NULL,NULL,NULL),(7,'asdasrf','5','98','2018-07-23 03:58:26','7','2018-07-23 07:05:15',6,'','closed','2018-07-31 05:56:51',0,NULL,NULL,NULL),(8,'testing','5','97','2018-10-31 03:46:58',NULL,'2018-10-31 06:46:58',1,'IMPREST','open','2018-07-20 05:56:51',0,'17','197',NULL),(9,'sample','5',NULL,'2018-07-31 02:44:07',NULL,'2018-07-31 05:44:07',3,'tests','open',NULL,0,NULL,NULL,NULL),(10,NULL,'5',NULL,'2018-07-31 02:45:12',NULL,'2018-07-31 05:45:12',1,NULL,'open',NULL,0,NULL,NULL,NULL),(11,'zx  ','5','98','2018-07-31 02:51:35',NULL,'2018-07-31 05:52:55',6,'test','closed','2018-07-31 05:52:55',0,NULL,NULL,NULL),(12,'action point','5','98','2018-07-31 04:51:35',NULL,'2018-07-31 07:51:35',2,'tests','open',NULL,0,NULL,NULL,NULL),(13,'blabla','5',NULL,'2018-07-31 04:52:34',NULL,'2018-07-31 07:52:34',3,'tests','open',NULL,0,NULL,NULL,NULL),(14,'testststst','5',NULL,'2018-09-26 02:59:36',NULL,'2018-10-12 14:08:49',1,'IMPREST','open',NULL,0,NULL,NULL,NULL),(15,'zxzc','5',NULL,'2018-09-26 03:09:00',NULL,'2018-09-26 06:09:00',2,'','open',NULL,0,NULL,NULL,NULL),(16,'yumyum','5',NULL,'2018-09-26 03:11:25',NULL,'2018-09-26 06:11:25',3,'','open',NULL,0,NULL,NULL,NULL),(17,'samplesubject','5','88','2018-09-26 03:12:23',NULL,'2018-09-26 06:12:23',6,'','open',NULL,0,NULL,NULL,NULL),(18,'test','5',NULL,'2018-10-25 08:57:09',NULL,'2018-10-25 11:57:09',1,'tests','open',NULL,0,NULL,NULL,NULL),(19,'safsd','5',NULL,'2018-10-25 09:13:53',NULL,'2018-10-25 12:13:53',1,'csd','open',NULL,0,NULL,NULL,NULL),(20,'test','5',NULL,'2018-10-25 09:19:29',NULL,'2018-10-25 12:19:29',1,'IMPREST','open',NULL,0,NULL,NULL,NULL),(21,'test','5',NULL,'2018-10-25 10:28:23',NULL,'2018-10-25 13:28:23',2,'testing','open',NULL,0,NULL,NULL,NULL),(22,'test today','5',NULL,'2018-10-30 09:58:11',NULL,'2018-10-30 12:58:11',2,'tests','open',NULL,0,NULL,NULL,NULL),(23,'asdasdas','5',NULL,'2018-10-30 10:22:00',NULL,'2018-10-30 13:22:00',3,'tests','open',NULL,0,NULL,NULL,NULL),(24,'knkl','5',NULL,'2018-10-30 10:22:46',NULL,'2018-10-30 13:22:46',3,'','open',NULL,0,NULL,NULL,NULL),(25,'Call me now','5',NULL,'2018-10-30 10:28:27',NULL,'2018-10-30 13:28:27',3,'','open',NULL,0,'19',NULL,NULL),(26,'trtrt','5',NULL,'2018-10-30 10:30:45',NULL,'2018-10-30 13:30:45',1,'','open',NULL,0,'17','99',NULL),(27,'mytesting','5',NULL,'2018-10-30 10:38:07',NULL,'2018-10-30 13:38:07',1,'','open',NULL,0,'20','107',NULL),(28,'asdasd','5',NULL,'2018-10-30 10:39:15',NULL,'2018-10-30 13:39:15',2,'','open',NULL,0,'17','196',NULL),(29,'zxzczx fdg','5',NULL,'2018-10-30 10:40:05',NULL,'2018-10-30 13:40:05',6,'','open',NULL,0,'17','109',NULL),(30,'nononono','5',NULL,'2018-10-30 10:41:07',NULL,'2018-10-30 13:41:07',3,'','open',NULL,0,'17','114',NULL),(31,'dasd adsfasd','5',NULL,'2018-10-30 10:59:40',NULL,'2018-10-30 13:59:40',2,'','open',NULL,0,'17','5',NULL),(32,'dr werwe wer','5',NULL,'2018-10-30 11:01:59',NULL,'2018-10-30 14:01:59',6,'','open',NULL,0,'20','191',NULL),(33,'testing...','5',NULL,'2019-03-26 05:14:28',NULL,'2019-03-26 08:14:28',1,'test','open',NULL,0,'19','104',NULL),(34,'walla','5',NULL,'2019-03-26 05:39:48',NULL,'2019-03-26 08:39:48',2,'w','open',NULL,0,'20','195',NULL),(35,'sds','5',NULL,'2019-03-26 05:42:35',NULL,'2019-03-26 08:42:35',3,'IMPREST','open',NULL,0,'20','120',NULL),(36,'rgrtr','5',NULL,'2019-03-26 05:43:15',NULL,'2019-03-26 08:43:15',6,'tests','open',NULL,0,'19','102',NULL),(37,'twtew','5','90','2019-03-26 05:47:45',NULL,'2019-03-26 08:47:45',2,'IMPREST','open',NULL,0,'19','95',NULL),(38,'mytest','5','98','2019-03-26 06:34:30',NULL,'2019-03-26 09:34:30',2,'tests','open',NULL,0,'20','96',NULL),(39,'system generated','5','99','2019-03-26 06:56:49',NULL,'2019-03-26 10:14:18',1,'wdeerf','closed','2019-03-26 10:14:18',0,'17','95',NULL),(40,'tetetetete','5',NULL,'2019-04-11 05:06:00',NULL,'2019-04-11 08:09:17',2,'IMPREST','open',NULL,0,'20','97',NULL),(60,'mytest','Pro-kazi Administrator',NULL,'2019-04-15 07:16:07','system','2019-04-15 10:16:07',NULL,'High','open',NULL,0,'Mombasa','LAWRENCE ODHIAMBO AMENYA','admin@admin.com'),(61,'tetwewe','5',NULL,'2019-04-15 07:32:19',NULL,'2019-04-15 10:32:19',3,'','open',NULL,0,'19','93',NULL),(62,'2wed23 de3','Pro-kazi Administrator',NULL,'2019-04-15 08:17:03','system','2019-04-15 11:17:03',NULL,'High','open',NULL,0,'Mombasa','MERCYLINE MUTHEU MUTUA ','admin@admin.com'),(63,'2wed23 de3','Pro-kazi Administrator',NULL,'2019-04-15 08:17:43','system','2019-04-15 11:17:43',NULL,'High','open',NULL,0,'Mombasa','MERCYLINE MUTHEU MUTUA ','admin@admin.com'),(64,'w2swe wdw wdwe','Pro-kazi Administrator',NULL,'2019-04-15 08:19:23','system','2019-04-15 11:19:23',NULL,'High','open',NULL,0,'Kampala','PATRICK MURANGIRI MAGIRI ','admin@admin.com'),(65,'w2swe wdw wdwe','Pro-kazi Administrator',NULL,'2019-04-15 08:20:35','system','2019-04-15 11:20:35',NULL,'High','open',NULL,0,'Kampala','PATRICK MURANGIRI MAGIRI ','admin@admin.com'),(66,'wefwef','Pro-kazi Administrator',NULL,'2019-04-15 08:22:51','system','2019-04-15 11:22:51',NULL,'High','open',NULL,0,'Kampala','Jesinta Njeri','admin@admin.com'),(67,'wefwef','Pro-kazi Administrator',NULL,'2019-04-15 08:25:50','system','2019-04-15 11:25:50',NULL,'High','open',NULL,0,'Kampala','Jesinta Njeri','admin@admin.com'),(68,'sdf v dvdfv','Pro-kazi Administrator',NULL,'2019-04-15 08:29:05','system','2019-04-15 11:29:05',NULL,'High','open',NULL,0,'Mombasa','IRENE ATIENO OTIENO','admin@admin.com'),(69,'wrwer fer','Pro-kazi Administrator','99','2019-04-15 08:30:30','system','2019-04-15 11:47:59',NULL,'High','open',NULL,0,'Mombasa','GULJAN ABUBAKAR RAMADHAN','admin@admin.com'),(70,'ttttttt','Pro-kazi Administrator',NULL,'2019-04-16 06:47:32','system','2019-04-16 09:47:32',NULL,'High','open',NULL,0,'Nairobi','MOURINE ACHIENG MAGERO','admin@admin.com'),(71,'yyyy','Pro-kazi Administrator',NULL,'2019-04-16 06:59:23','system','2019-04-16 09:59:23',NULL,'High','open',NULL,0,'Nairobi','Phides Laura Mwamkita','admin@admin.com'),(72,'dqwe','Pro-kazi Administrator',NULL,'2019-04-16 07:05:20','system','2019-04-16 10:05:20',NULL,'High','open',NULL,0,'Nairobi','CATHERINE ANZAZI LEWA','admin@admin.com'),(73,'iiiiiiiiiii','Pro-kazi Administrator',NULL,'2019-04-16 07:53:08','system','2019-04-16 10:53:08',NULL,'High','open',NULL,0,'Nairobi','GULJAN ABUBAKAR RAMADHAN','admin@admin.com'),(74,'wakllalalalala','Pro-kazi Administrator',NULL,'2019-04-16 07:54:18','system','2019-04-16 10:54:18',NULL,'High','open',NULL,0,'Mombasa','Clifford Nyakundi','admin@admin.com');
/*!40000 ALTER TABLE `support_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `project_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ticket_id` int(11) DEFAULT NULL,
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL,
  `deadline` date DEFAULT NULL,
  `labels` text COLLATE utf8_unicode_ci,
  `max_hours` int(11) NOT NULL DEFAULT '0',
  `points` tinyint(4) NOT NULL DEFAULT '1',
  `status` enum('to_do - 0%','in_progress - 25%','in_progress - 50%','in_progress - 75%','done - 100%') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'to_do - 0%',
  `hesabu` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `collaborators` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(11) NOT NULL DEFAULT '0',
  `priority` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Normal',
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'','Purchase of fencing materials','refwfwefw',2,0,NULL,1,5,'0000-00-00','',0,1,'to_do - 0%',0,'0000-00-00','',0,'Normal','2018-04-12'),(2,'','FEncing','Fencing To be done ASAP',2,0,NULL,1,94,'2018-05-05','',40,1,'to_do - 0%',0,'2018-04-27','100',0,'Normal','2018-04-09'),(3,'','demo task','',2,0,NULL,0,94,'0000-00-00','',25,1,'in_progress - 25%',0,'0000-00-00','',0,'Normal','2018-04-12'),(4,'','demo 3','',2,0,NULL,0,83,'0000-00-00','',0,1,'to_do - 0%',0,'0000-00-00','',0,'Normal','2018-04-12'),(5,'','Valuation','Valuation of assets',9,0,NULL,0,94,'2018-04-23','',16,1,'to_do - 0%',0,'2018-04-20','113',1,'Normal','0000-00-00'),(6,'','Resolution of Invoicing delay matter','WIP',10,0,NULL,20,107,'2018-05-31','',40,1,'in_progress - 25%',0,'2018-04-12','91',0,'High','0000-00-00'),(7,'','demo task','hgmjghmhmg',6,0,NULL,0,5,'2018-04-28','',0,1,'to_do - 0%',0,'2018-04-26','',0,'Normal','0000-00-00'),(8,'','Payroll Training ','User Training on Payroll',11,0,NULL,0,123,'2018-04-12','',0,5,'done - 100%',0,'2018-04-04','',0,'Normal','0000-00-00'),(9,'','Payroll Processing and Comparison','Process Payroll in Cloudwage and Compare with payroll From Ivory',11,0,NULL,0,123,'2018-05-07','',0,1,'in_progress - 50%',0,'2018-05-05','',0,'Normal','0000-00-00'),(10,'','Pro-Kazi Legal , System Training','Learn How to use Pro-kazi, Legal',11,0,NULL,0,90,'2018-05-07','',0,1,'done - 100%',0,'2018-05-01','',0,'Normal','0000-00-00'),(11,'','Technical MOdule Learning','Learn the Pro-kazi Technical Module System ',11,0,NULL,0,92,'0000-00-00','',0,1,'to_do - 0%',0,'0000-00-00','',0,'Normal','0000-00-00'),(12,'','Technical Module Go-Live','Go-Live on Technical App',11,0,NULL,0,92,'2018-05-07','',0,1,'done - 100%',100,'2018-05-07','',0,'Normal','0000-00-00'),(13,'','HR System, Main System Training','Learn HR System and Manage',11,0,NULL,0,102,'2018-04-30','',0,1,'done - 100%',0,'2018-04-04','117',0,'Normal','0000-00-00'),(14,'','HR System Go-Live','HR Main System Live',11,0,NULL,0,102,'0000-00-00','',0,1,'done - 100%',0,'0000-00-00','117',0,'Normal','0000-00-00'),(15,'','HR- Leave Management','HR- Leave Management, Including Correct Leave Days',11,0,NULL,0,102,'0000-00-00','',0,1,'done - 100%',0,'0000-00-00','117',0,'Normal','0000-00-00'),(16,'','Appraisal - Employee Evaluation Go-Live','Appraisal - Employee Evaluation Go-Live',11,0,NULL,0,102,'0000-00-00','',0,1,'done - 100%',0,'0000-00-00','117',0,'Normal','0000-00-00'),(17,'','HR-Travel Application Go-live','HR-Travel Application Go-live',11,0,NULL,0,102,'0000-00-00','',0,1,'in_progress - 75%',0,'0000-00-00','117',0,'Normal','0000-00-00'),(18,'','Agency System Training','Agency System Training',11,0,NULL,2,5,'0000-00-00','',0,1,'done - 100%',0,'0000-00-00','91,116,115,106',0,'Normal','0000-00-00'),(19,'','Agency System Go-Live','Agency System Go-Live',11,0,NULL,0,91,'2018-05-07','',0,1,'in_progress - 75%',0,'2018-05-01','116,115,106',0,'Normal','0000-00-00'),(20,'','Sage, Go-Live','Sage, Go-Live',11,0,NULL,3,86,'2018-05-07','',0,1,'done - 100%',100,'2018-05-01','111,112',0,'Normal','0000-00-00'),(21,'','ERP System Audit','ERP System Audit',11,0,NULL,0,99,'2018-05-31','',0,1,'in_progress - 75%',0,'2018-04-01','110',0,'Normal','0000-00-00'),(22,'','wrwr','',9,0,NULL,0,5,'0000-00-00','',0,1,'to_do - 0%',0,'0000-00-00','',1,'Normal','0000-00-00'),(23,'','wwew','asfsdfsd',12,0,NULL,4,5,'2018-05-09','',3,1,'to_do - 0%',0,'2018-05-08','94',1,'Normal','0000-00-00'),(24,'','dsvsdfd','sdfsdfsdff',12,0,NULL,0,5,'2018-05-09','',3,1,'to_do - 0%',0,'2018-05-08','94',1,'Normal','0000-00-00'),(25,'','SHIP OPERATIONS','PORT PLANNING MEETING',12,0,NULL,5,116,'2018-05-09','',0,1,'done - 100%',0,'2018-05-09','95,152,153,106,141,145,109',0,'Normal','0000-00-00'),(26,'','CURRENT OPERATIONS','Currently 2 vessels alongside, MV Navios Hios for receiver NCCL  discharging clinker balance ROB approx. 1100mt. Challenges rain/bad weather and truck delays. MV Papa John for receiver Hima cement discharging bugged slug approximately balance ROB approximately 4100mt.           \n ETC 11th/12th agw wp.\nThere has been a shortage of gangs due to lack of enough crane operators.\nWaiters: Mv Bomar Oyster ata 03.05.2018 to discharge bulk clinker, currently drifting awaiting berth opening after departure of MV Navios Hios Transporter will be Shreeji ETC 14th/15th agw.\nExpected: MV St. Cergue for receiver Savannah cement eta today 09.05.2018. Documentation currently in progress. Expected to berth on 13.05.2018 at berth no. 9.\nMV CISL Leene expected over the weekend to load transhipment containers and shipspares.',12,0,NULL,0,128,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','116,106,121,141',0,'High','0000-00-00'),(27,'','FORWARDING OPERATIONS','MTS - CTM 2*40 following up release, 4*20 sorting COC issue with KEBS and Prime steel 1*20 following up release and load.',12,0,NULL,6,153,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(28,'','FORWARDING OPERATIONS','REGIONAL CFS - MKE loading 2 boxes lot of SAL 5*20, 20*20 following up release. IFFCO to load balance 1 box, exited 4 yesterday.',12,0,NULL,0,109,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(29,'','FORWARDING OPERATIONS','Interpel CFS - Following up release 4x20 and load.',12,0,NULL,0,153,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(30,'','FORWARDING OPERATIONS','FFK - Following up release and load shipspares and Savannah cement lcl.',12,0,NULL,0,153,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(31,'','FORWARDING OPERATIONS','GLP - Lodging file at CFS for 2 NCCL shipments and verify.',12,0,NULL,0,153,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(32,'','LOGISTICS OPERATIONS','James Finlay 4*20 to Russia and1*20 to Jeddah documentation in progress. Suman EPZ 4*40 to New york vessel MSC Portugal expected to sail today.',12,0,NULL,0,109,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'High','0000-00-00'),(33,'','TECHNICAL ','All ESL assets Grabs, Hoppers and Trimmers in good working condition. Following up authorization letter from KPA to position the  2 containers to be used as ESL office in port.',12,0,NULL,0,127,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','',0,'Normal','0000-00-00'),(34,'','FINANCE','Ships Operations - PDA funds received for MV ST. Cergue . MV Navios Hios funds received late yesterday, to issue receipt. Savannah cement funds and wharfage payment not received. \nForwarding Operation - Estimates sent to CTM and awaiting remittance for current shipment.',12,0,NULL,0,140,'2018-05-09','',0,1,'to_do - 0%',0,'2018-05-09','86,112,111,96',0,'Normal','0000-00-00'),(35,'','Former staff liability','Follow up on ex-staff loans i.e. Gitau Gachamba  and Alfred Kaburu. A letter to follow up on loan re-payment to both ex-staffs is to be done.',13,0,NULL,7,123,'2018-06-30','',240,5,'to_do - 0%',0,'2018-03-13','105,96,99',0,'High','0000-00-00'),(36,'','Renegotiation of Agency fee with Manuchar Kenya Ltd','The Agency fee for MKE consignments has been static for a while, hence a request to renegotiate higher rate.',13,0,NULL,11,91,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-02-13','96,85,99',0,'High','0000-00-00'),(37,'','Smit Salvage Debt Collection','Follow-up of the debt',13,0,NULL,12,91,'2018-06-30','',240,1,'to_do - 0%',0,'2018-02-13','105,106',0,'High','0000-00-00'),(38,'','Aspida Debt Collection','Follow up & debt collection',13,0,NULL,12,91,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-06-30','105,96',0,'High','0000-00-00'),(39,'','Med Brokerage debt collection','',13,0,NULL,12,91,'2018-06-30','',0,5,'in_progress - 25%',0,'2018-02-13','105,96',0,'High','0000-00-00'),(40,'','Prote AS/Medship/UMS  debt collection','',13,0,NULL,12,91,'2018-06-30','',0,5,'in_progress - 25%',0,'2018-02-13','105,96,99',0,'High','0000-00-00'),(41,'','Citadel Maritime debt collection','',13,0,NULL,12,91,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-01-01','105,96,99',0,'High','0000-00-00'),(42,'','Superfoam debt collection','',13,0,NULL,12,107,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-02-13','105,96,99',0,'High','0000-00-00'),(43,'','Tsavo Lite debt collection','',13,0,NULL,12,107,'2018-06-30','',240,5,'to_do - 0%',0,'2018-02-13','105,96,99',0,'High','0000-00-00'),(44,'','Means of controlling courier cost in Hub Office - Rider approach was given','It was agreed that Stephen should prepare a proposal in liaison with Isaac and submit for approval by management',13,0,NULL,13,102,'2018-06-30','',240,1,'in_progress - 25%',0,'2018-03-13','123,96,99,85,92',0,'High','0000-00-00'),(45,'','Container deposits confirmation','Confirmations for Maersk, Safmarine, Gulf Badr, Wilhemsen and Emirates done. Pending Three.',13,0,NULL,14,112,'2018-06-30','',240,1,'in_progress - 50%',0,'2018-03-13','86,91,96,99',0,'High','0000-00-00'),(46,'','Fabrication of a 2\'20\'\' container into an office & store','As above explained',13,0,NULL,15,101,'2018-05-31','',240,1,'in_progress - 75%',0,'2018-03-13','104,92,112',0,'High','0000-00-00'),(47,'','Two conntainers for Lamu Office','As above',13,0,NULL,16,92,'2018-08-31','',600,1,'to_do - 0%',0,'2018-03-13','85,96,99',0,'High','0000-00-00'),(48,'','Buzeki Debt Collection','Awaiting shareholders directive',13,0,NULL,12,105,'2018-08-31','',600,5,'in_progress - 25%',0,'2018-03-13','96,99,85',0,'High','0000-00-00'),(49,'','Savannah Cement Debt Collection','SOA was submitted by SCL',13,0,NULL,12,105,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-03-13','96,99,85',0,'High','0000-00-00'),(50,'','Stam Shipping Debt Collection','',13,0,NULL,12,91,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-03-13','132,96,99',0,'High','0000-00-00'),(51,'','ARM Debt Collection','Awaiting shareholder directive',13,0,NULL,12,105,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-03-13','96,99,85',0,'High','0000-00-00'),(52,'','Awanad Debt follow-up','',13,0,NULL,12,90,'2018-06-30','',240,5,'in_progress - 25%',0,'2018-03-13','105,96,99',0,'High','0000-00-00'),(53,'','MD/CEO Baggage Delay','Claim was lodged',13,0,NULL,17,90,'2018-06-30','',240,1,'in_progress - 50%',0,'2018-03-13','102,87',0,'High','0000-00-00'),(54,'','Season 5 internship recruitment','Shortlisting on-going',13,0,NULL,18,123,'2018-06-04','',136,1,'in_progress - 50%',0,'2018-03-13','102,117',0,'High','0000-00-00'),(55,'','QMS Audits 1st Leg','Exercise was supposed to be finalized by 3rd May, 2018.',13,0,NULL,19,92,'2018-05-18','',136,5,'to_do - 0%',0,'2018-04-16','123,90,94,100,91,112,86,102,152',0,'High','0000-00-00'),(56,'','Weekly Debtor Meetings','Ongoing activity',10,0,NULL,21,105,'2018-05-31','',40,5,'in_progress - 50%',0,'2018-04-12','86,116,107,91',0,'High','0000-00-00'),(57,'','Driving school training for Operation staff','',10,0,NULL,22,123,'2018-06-30','',40,1,'done - 100%',100,'2018-04-12','102,117,91',0,'High','0000-00-00'),(58,'','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.','Prioritized',10,0,NULL,23,107,'2018-05-31','',40,5,'to_do - 0%',0,'2018-04-12','91,99',0,'High','0000-00-00'),(59,'','Disposal of Assests through CSR','Nearing completion',10,0,NULL,0,91,'2018-05-31','',40,5,'done - 100%',100,'2018-04-12','102,88,86,112,105,113',0,'Normal','0000-00-00'),(60,'','Gensets  - Creating demand/business for Gensets','Need to focus on business before sale',10,0,NULL,24,107,'2018-05-31','',40,1,'to_do - 0%',0,'2018-04-12','91,99,96',0,'High','0000-00-00'),(61,'','Other test','',14,0,NULL,0,5,'0000-00-00','',0,1,'to_do - 0%',0,'0000-00-00','156',1,'Normal','0000-00-00'),(62,'','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers','This is a detailed plan for engaging suppliers on the basis of our service to them, our responsiveness and timelines etc.',10,0,NULL,25,102,'2018-05-31','',40,5,'to_do - 0%',0,'2018-04-12','92,94,90,102,99',0,'Normal','0000-00-00'),(63,'','ESL Logo Copyright Registration','',10,0,NULL,26,90,'2018-09-30','',40,5,'in_progress - 50%',0,'2018-04-12','',0,'Normal','0000-00-00'),(64,'','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.','As above, to enable workplanning',10,0,NULL,27,90,'2018-05-31','',40,1,'in_progress - 50%',0,'2018-04-12','123,96,99',0,'High','0000-00-00'),(65,'','KPLC Power installation at Mariakani Yard','Power installation process',10,0,NULL,28,92,'2018-07-31','',40,1,'in_progress - 75%',0,'2018-04-12','90,96',0,'High','0000-00-00'),(66,'','HR Policies Review','Review of policies and drafting of other relevant policies.',10,0,NULL,29,123,'2018-05-31','',40,1,'in_progress - 50%',0,'2018-04-12','102',0,'High','0000-00-00'),(67,'','ERP Trainings to staff','Sensitization to staff on use of the ERP in all dimensions.',10,0,NULL,30,94,'2018-06-30','',40,1,'in_progress - 25%',0,'2018-04-12','100',0,'High','0000-00-00'),(68,'','ERP Go Live','Go Live!',10,0,NULL,31,102,'2018-06-30','',40,1,'in_progress - 75%',0,'2018-04-12','100',0,'High','0000-00-00'),(69,'','Corporate Support Department Name Change','Change of name to be a bit inspirational',10,0,NULL,32,123,'2018-05-31','',40,1,'done - 100%',0,'2018-04-12','102,90,94',0,'High','0000-00-00'),(70,'','Negotiation Skills Training','Training should proceed if MKE team is not ready',10,0,NULL,33,102,'2018-05-31','',40,1,'in_progress - 75%',0,'2018-04-12','123',0,'High','0000-00-00'),(71,'','Renting of Apartment for visiting staff in Nairobi','Matter should be expedited and a final decision reached',10,0,NULL,34,101,'2018-05-31','',40,1,'in_progress - 50%',0,'2018-04-12','123,102,96,99',0,'High','0000-00-00'),(72,'','Recruitment for Lamu (or reassignment due to impending ERP change)','Manning of  Lamu ',10,0,NULL,35,123,'2018-05-31','',40,1,'to_do - 0%',0,'2018-04-12','91,107',0,'High','0000-00-00'),(73,'','Customer Satisfaction Survey','Incorporation into the ERP ',10,0,NULL,36,91,'2018-05-30','',40,1,'done - 100%',100,'2018-04-12','107,94',0,'High','0000-00-00'),(74,'','SHIPS OPERATION','MV Navios Hios sailed yesterday 09.05.2018. \nVessel alongside: MV Bomar Oyster discharging bulk clinker receiver NCCL discharge in steady progress ETD 17/05 agw.  \nMV Papa John receiver Hima cement  discharging bugged slug discharge in steady progress ETD 14/05 agw. Challenge: Rain and bad weather.\nWaiters: MV St. Cergue receiver SCL documentation in progress awaiting taxes payment.\nExpected: MV Nord Bering  eta 19.05.2018 receiver RAI cement following up documentation.\n                  MV CISL Leene eta 12.05.2018 to load transhipment boxes and shipspares.',15,0,NULL,0,116,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','95,106,121,115',0,'High','0000-00-00'),(75,'','FORWARDING OPERATIONS','REGIONAL CFS - Dominic yesterday exited MKE SAL 6 boxes, to load balance 14 today. IFFCO last 1x40 exited. SAL lot of 5x20 exited last 2 boxes.\nMTS CFS            - Mangale exited Prime Steel 1x20, CTM 2x40 following up verification account.\nINTERPEL CFS   - Shikhonga exited Quest works 4x20.\nFFK CFS              - Casual  exited SCL lcl and verified Maisha Mabati lcl.\nGLP CFS             - Casual to verify NCCL 2 lcl shipments.\nBFT CFS              - Casual Kenagro 1x20 pre-verification. \nUNIFREIGHT CFS: Casual processing ESL UG unit.\nLONGROOM     - Salim following up Asante EPZ messaging',15,0,NULL,0,152,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','118,158,162,163,159,142',0,'High','0000-00-00'),(76,'','LOGISTICS OPERATIONS','1x40 shipment draft BL ammended.\n1x20 shipment to Jebel Ali Container Release Order received, to arrange stuffing.\n2x40 James Finlay shipment SI received.',15,0,NULL,0,109,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','95,106,141',0,'High','0000-00-00'),(77,'','TRANSPORT OPERATIONS','Exited SCL, IFFCO and Quest Works shipments.',15,0,NULL,0,104,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','109,118',0,'Normal','0000-00-00'),(78,'','TECHNICAL','All assets in good condition.Trimming done yesterday for MV Navios Hios.\nFollowing up authorization to position containers for office in Port.\nOn standby for service of the ESL UG unit and delivery to Uganda.',15,0,NULL,0,93,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','103',0,'Normal','0000-00-00'),(79,'','FINANCE','Following up CTM estimates payment. \nPDA funds received.',15,0,NULL,0,140,'2018-05-10','',0,1,'to_do - 0%',0,'2018-05-10','86,112,111,154',0,'Normal','0000-00-00'),(80,'','Q1 2018 Performance Evaluation','Please follow-up on the appraisals by your departmental staff and update.',16,0,NULL,37,102,'2018-05-31','',40,5,'in_progress - 25%',0,'2018-04-01','123,116,94,96,90,91,86,112,99,92',0,'High','0000-00-00'),(81,'','Quality of PPE','',10,0,NULL,38,102,'2018-05-31','',40,1,'in_progress - 25%',0,'2018-05-01','91,152,123',0,'High','0000-00-00'),(82,'','Segmentation of customers (which is corporate etc)','',10,0,NULL,0,107,'2018-05-31','',40,5,'to_do - 0%',0,'2018-05-01','91,99,96',0,'High','0000-00-00'),(83,'','Port infrastructure oportunities','',10,0,NULL,0,107,'2018-05-31','',40,5,'to_do - 0%',0,'2018-05-01','91,96,99',0,'Normal','0000-00-00'),(84,'','Top Steel recovery','',10,0,NULL,0,107,'2018-05-31','',40,5,'to_do - 0%',0,'2018-04-01','105,96',0,'High','0000-00-00'),(85,'','Ecobank South Sudan','',10,0,NULL,0,107,'2018-05-31','',40,5,'to_do - 0%',0,'2018-04-01','96,99',0,'High','0000-00-00'),(86,'','Profit Sharing within group of companies','',10,0,NULL,0,90,'2018-05-31','',40,5,'to_do - 0%',0,'2018-04-01','107,91',0,'High','0000-00-00'),(87,'','Ds','zdasd',10,0,NULL,21,5,'2018-06-12','adxasd',4534,1,'done - 100%',100,'2018-06-19','168',0,'Normal','0000-00-00'),(88,'','Resolution of Invoicing delay matter','WIP',17,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91',0,'High','0000-00-00'),(89,'','Weekly Debtor Meetings','Ongoing activity',17,0,NULL,0,105,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','86,116,107,91',0,'High','0000-00-00'),(90,'','Driving school training for Operation staff','',17,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',100,'0000-00-00','102,117,91',0,'High','0000-00-00'),(91,'','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.','Prioritized',17,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99',0,'High','0000-00-00'),(92,'','Disposal of Assests through CSR','Nearing completion',17,0,NULL,0,91,'0000-00-00','',40,5,'to_do - 0%',100,'0000-00-00','102,88,86,112,105,113',0,'Normal','0000-00-00'),(93,'','Gensets  - Creating demand/business for Gensets','Need to focus on business before sale',17,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(94,'','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers','This is a detailed plan for engaging suppliers on the basis of our service to them, our responsiveness and timelines etc.',17,0,NULL,0,102,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','92,94,90,102,99',0,'Normal','0000-00-00'),(95,'','ESL Logo Copyright Registration','',17,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','',0,'Normal','0000-00-00'),(96,'','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.','As above, to enable workplanning',17,0,NULL,0,90,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,96,99',0,'High','0000-00-00'),(97,'','KPLC Power installation at Mariakani Yard','Power installation process',17,0,NULL,0,92,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','90,96',0,'High','0000-00-00'),(98,'','HR Policies Review','Review of policies and drafting of other relevant policies.',17,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','102',0,'High','0000-00-00'),(99,'','ERP Trainings to staff','Sensitization to staff on use of the ERP in all dimensions.',17,0,NULL,0,94,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(100,'','ERP Go Live','Go Live!',17,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(101,'','Corporate Support Department Name Change','Change of name to be a bit inspirational',17,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','102,90,94',0,'High','0000-00-00'),(102,'','Negotiation Skills Training','Training should proceed if MKE team is not ready',17,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123',0,'High','0000-00-00'),(103,'','Renting of Apartment for visiting staff in Nairobi','Matter should be expedited and a final decision reached',17,0,NULL,0,101,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,102,96,99',0,'High','0000-00-00'),(104,'','Recruitment for Lamu (or reassignment due to impending ERP change)','Manning of  Lamu ',17,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,107',0,'High','0000-00-00'),(105,'','Customer Satisfaction Survey','Incorporation into the ERP ',17,0,NULL,0,91,'0000-00-00','',40,1,'to_do - 0%',100,'0000-00-00','107,94',0,'High','0000-00-00'),(106,'','Quality of PPE','',17,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,152,123',0,'High','0000-00-00'),(107,'','Segmentation of customers (which is corporate etc)','',17,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(108,'','Port infrastructure oportunities','',17,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,96,99',0,'Normal','0000-00-00'),(109,'','Top Steel recovery','',17,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','105,96',0,'High','0000-00-00'),(110,'','Ecobank South Sudan','',17,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','96,99',0,'High','0000-00-00'),(111,'','Profit Sharing within group of companies','',17,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','107,91',0,'High','0000-00-00'),(112,'','Ds','zdasd',17,0,NULL,0,5,'0000-00-00','adxasd',4534,1,'to_do - 0%',100,'0000-00-00','168',0,'Normal','0000-00-00'),(113,'','Resolution of Invoicing delay matter','WIP',21,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91',0,'High','0000-00-00'),(114,'','Weekly Debtor Meetings','Ongoing activity',21,0,NULL,0,105,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','86,116,107,91',0,'High','0000-00-00'),(115,'','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.','Prioritized',21,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99',0,'High','0000-00-00'),(116,'','Gensets  - Creating demand/business for Gensets','Need to focus on business before sale',21,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(117,'','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers','This is a detailed plan for engaging suppliers on the basis of our service to them, our responsiveness and timelines etc.',21,0,NULL,0,102,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','92,94,90,102,99',0,'Normal','0000-00-00'),(118,'','ESL Logo Copyright Registration','',21,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','',0,'Normal','0000-00-00'),(119,'','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.','As above, to enable workplanning',21,0,NULL,0,90,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,96,99',0,'High','0000-00-00'),(120,'','KPLC Power installation at Mariakani Yard','Power installation process',21,0,NULL,0,92,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','90,96',0,'High','0000-00-00'),(121,'','HR Policies Review','Review of policies and drafting of other relevant policies.',21,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','102',0,'High','0000-00-00'),(122,'','ERP Trainings to staff','Sensitization to staff on use of the ERP in all dimensions.',21,0,NULL,0,94,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(123,'','ERP Go Live','Go Live!',21,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(124,'','Negotiation Skills Training','Training should proceed if MKE team is not ready',21,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123',0,'High','0000-00-00'),(125,'','Renting of Apartment for visiting staff in Nairobi','Matter should be expedited and a final decision reached',21,0,NULL,0,101,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,102,96,99',0,'High','0000-00-00'),(126,'','Recruitment for Lamu (or reassignment due to impending ERP change)','Manning of  Lamu ',21,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,107',0,'High','0000-00-00'),(127,'','Quality of PPE','',21,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,152,123',0,'High','0000-00-00'),(128,'','Segmentation of customers (which is corporate etc)','',21,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(129,'','Port infrastructure oportunities','',21,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,96,99',0,'Normal','0000-00-00'),(130,'','Top Steel recovery','',21,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','105,96',0,'High','0000-00-00'),(131,'','Ecobank South Sudan','',21,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','96,99',0,'High','0000-00-00'),(132,'','Profit Sharing within group of companies','',21,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','107,91',0,'High','0000-00-00'),(133,'','Resolution of Invoicing delay matter','WIP',23,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91',0,'High','0000-00-00'),(134,'','Weekly Debtor Meetings','Ongoing activity',23,0,NULL,0,105,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','86,116,107,91',0,'High','0000-00-00'),(135,'','Identification & Mapping of market niche to enable strategic move; identification of most competitive markets in terms of conversion and high GP.','Prioritized',23,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99',0,'High','0000-00-00'),(136,'','Gensets  - Creating demand/business for Gensets','Need to focus on business before sale',23,0,NULL,0,107,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(137,'','Supplier Management Plan - System to have ESL Group to be evaluated by its suppliers','This is a detailed plan for engaging suppliers on the basis of our service to them, our responsiveness and timelines etc.',23,0,NULL,0,102,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','92,94,90,102,99',0,'Normal','0000-00-00'),(138,'','ESL Logo Copyright Registration','',23,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','',0,'Normal','0000-00-00'),(139,'','ESL UG Workplans to be done and submitted to Country Manager Uganda, by ESLKE HODs.','As above, to enable workplanning',23,0,NULL,0,90,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,96,99',0,'High','0000-00-00'),(140,'','KPLC Power installation at Mariakani Yard','Power installation process',23,0,NULL,0,92,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','90,96',0,'High','0000-00-00'),(141,'','HR Policies Review','Review of policies and drafting of other relevant policies.',23,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','102',0,'High','0000-00-00'),(142,'','ERP Trainings to staff','Sensitization to staff on use of the ERP in all dimensions.',23,0,NULL,0,94,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(143,'','ERP Go Live','Go Live!',23,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','100',0,'High','0000-00-00'),(144,'','Negotiation Skills Training','Training should proceed if MKE team is not ready',23,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123',0,'High','0000-00-00'),(145,'','Renting of Apartment for visiting staff in Nairobi','Matter should be expedited and a final decision reached',23,0,NULL,0,101,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','123,102,96,99',0,'High','0000-00-00'),(146,'','Recruitment for Lamu (or reassignment due to impending ERP change)','Manning of  Lamu ',23,0,NULL,0,123,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,107',0,'High','0000-00-00'),(147,'','Quality of PPE','',23,0,NULL,0,102,'0000-00-00','',40,1,'to_do - 0%',0,'0000-00-00','91,152,123',0,'High','0000-00-00'),(148,'','Segmentation of customers (which is corporate etc)','',23,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,99,96',0,'High','0000-00-00'),(149,'','Port infrastructure oportunities','',23,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','91,96,99',0,'Normal','0000-00-00'),(150,'','Top Steel recovery','',23,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','105,96',0,'High','0000-00-00'),(151,'','Ecobank South Sudan','',23,0,NULL,0,107,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','96,99',0,'High','0000-00-00'),(152,'','Profit Sharing within group of companies','',23,0,NULL,0,90,'0000-00-00','',40,5,'to_do - 0%',0,'0000-00-00','107,91',0,'High','0000-00-00'),(153,'','task 5','adasd',24,0,NULL,0,5,'2018-09-27','',40,2,'to_do - 0%',0,'2018-09-19','113',0,'Normal','0000-00-00'),(154,'','mytask','xzcaz',24,0,NULL,0,5,'2018-11-04','',70,2,'in_progress - 50%',0,'2018-09-19','156',0,'Normal','0000-00-00'),(155,'','task 5','adasd',28,0,NULL,0,5,'2018-09-27','',40,2,'to_do - 0%',0,'2018-09-19','113',0,'Normal','0000-00-00'),(156,'','mytask','xzcaz',28,0,NULL,0,5,'2018-11-04','',70,2,'to_do - 0%',0,'2018-09-19','156',0,'Normal','0000-00-00');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percentage` double NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'Tax (16%)',16,0);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_case_procedures`
--

DROP TABLE IF EXISTS `tbl_case_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_case_procedures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_case_procedures`
--

LOCK TABLES `tbl_case_procedures` WRITE;
/*!40000 ALTER TABLE `tbl_case_procedures` DISABLE KEYS */;
INSERT INTO `tbl_case_procedures` VALUES (1,'legalities',0),(2,'Mentioning',0),(3,'Demand Notice',0),(4,'Board Instruction to Commence Suit',0),(5,'wallah',0);
/*!40000 ALTER TABLE `tbl_case_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_case_status`
--

DROP TABLE IF EXISTS `tbl_case_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_case_status` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_case_status`
--

LOCK TABLES `tbl_case_status` WRITE;
/*!40000 ALTER TABLE `tbl_case_status` DISABLE KEYS */;
INSERT INTO `tbl_case_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `tbl_case_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_case_type`
--

DROP TABLE IF EXISTS `tbl_case_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_case_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_case_type`
--

LOCK TABLES `tbl_case_type` WRITE;
/*!40000 ALTER TABLE `tbl_case_type` DISABLE KEYS */;
INSERT INTO `tbl_case_type` VALUES (1,'InWards',0),(2,'Out Wards',0),(3,'outside',1);
/*!40000 ALTER TABLE `tbl_case_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cases`
--

DROP TABLE IF EXISTS `tbl_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `case_procedure` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `case_type` int(11) NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cases`
--

LOCK TABLES `tbl_cases` WRITE;
/*!40000 ALTER TABLE `tbl_cases` DISABLE KEYS */;
INSERT INTO `tbl_cases` VALUES (1,'ESL =VS= BUZEKI ENT. Ltd',0,0,1,'This is a statutory demand notice for outstanding amount of Kshs. 15,867,406.00 for liner out services rendered on the account of EAPC.',2,NULL),(6,'ESL =VS= ARM CEMENT PLC',0,1,7,'Cause of action arose out of ship agency and customs clearance services rendered to the client on various.',2,NULL),(7,'aws',0,0,8,'awesome',1,NULL),(8,'test',0,0,9,'this is testing',1,NULL),(9,'dummy',0,1,10,'dummy content',1,NULL),(10,'yeyye',0,1,11,'this is cool',1,NULL),(11,'gggg7',0,0,12,'good to be part of the team',1,NULL),(12,'waajaja',0,1,13,'sds',2,NULL),(13,'zX',0,1,14,'zx',1,NULL),(14,'mytesstststs',0,0,15,'THis is cool',1,NULL);
/*!40000 ALTER TABLE `tbl_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklist_performed_on`
--

DROP TABLE IF EXISTS `tbl_checklist_performed_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_performed_on` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklist_performed_on`
--

LOCK TABLES `tbl_checklist_performed_on` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_performed_on` DISABLE KEYS */;
INSERT INTO `tbl_checklist_performed_on` VALUES (1,'ICT',0),(2,'Maintenance',0),(4,'Casual',0);
/*!40000 ALTER TABLE `tbl_checklist_performed_on` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklist_status`
--

DROP TABLE IF EXISTS `tbl_checklist_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklist_status`
--

LOCK TABLES `tbl_checklist_status` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_status` DISABLE KEYS */;
INSERT INTO `tbl_checklist_status` VALUES (1,'Submitted',0),(2,'Escalated',0),(3,'Closed',0);
/*!40000 ALTER TABLE `tbl_checklist_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklist_task_checks`
--

DROP TABLE IF EXISTS `tbl_checklist_task_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_task_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` int(11) DEFAULT NULL,
  `check_item` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 passed 0 failed',
  `comment` text,
  `checklist_task` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklist_task_checks`
--

LOCK TABLES `tbl_checklist_task_checks` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_task_checks` DISABLE KEYS */;
INSERT INTO `tbl_checklist_task_checks` VALUES (1,1524660246,1,0,'',1),(2,1524660246,2,1,'',1),(3,1524660246,3,1,'',1),(4,1531214207,1,0,'pending',2),(5,1531214207,2,1,NULL,2),(6,1531214207,3,1,NULL,2),(7,1531214207,5,1,NULL,2),(8,1531214207,6,1,NULL,2),(9,1531214207,7,1,NULL,2),(10,1531214207,8,1,NULL,2),(11,1531214207,9,1,NULL,2),(12,1531214207,10,1,NULL,2),(13,1531214207,11,0,NULL,2),(14,1531214207,12,0,NULL,2),(15,1531984059,1,1,'',3),(16,1531984059,2,1,'',3),(17,1531984059,3,1,'',3),(18,1531984059,5,1,'',3),(19,1531984059,6,1,'',3),(20,1531984059,7,1,'',3),(21,1531984059,8,1,'',3),(22,1531984059,9,1,'',3),(23,1531984059,10,1,'',3),(24,1531984059,11,1,'',3),(25,1531984059,12,0,'',3),(26,1531984059,14,1,'',3),(27,1532178177,1,1,'',4),(28,1532178177,2,1,'',4),(29,1532178177,3,1,'',4),(30,1532178177,5,1,'',4),(31,1532178177,6,1,'',4),(32,1532178177,7,1,'',4),(33,1532178177,8,1,'',4),(34,1532178177,9,1,'',4),(35,1532178177,10,1,'',4),(36,1532178177,11,1,'',4),(37,1532322914,1,1,'',5),(38,1532322914,2,1,'',5),(39,1532322914,3,1,'',5),(40,1532322914,5,1,'',5),(41,1532322914,6,1,'',5),(42,1532322914,7,1,'',5),(43,1532322914,8,1,'',5),(44,1532322914,9,1,'',5),(45,1532322914,10,1,'',5),(46,1532322914,11,1,'',5),(47,1532326122,1,1,'',6),(48,1532326122,2,1,'',6),(49,1532326122,3,1,'',6),(50,1532326122,5,1,'',6),(51,1532326122,6,1,'',6),(52,1532326122,7,1,'',6),(53,1532326122,8,1,'',6),(54,1532326122,9,1,'',6),(55,1532326122,10,1,'',6),(56,1532326122,11,0,'',6),(57,1532326327,1,1,'',7),(58,1532326327,2,1,'',7),(59,1532326327,3,1,'',7),(60,1532326327,5,1,'',7),(61,1532326327,6,1,'',7),(62,1532326327,7,1,'',7),(63,1532326327,8,1,'',7),(64,1532326327,9,1,'',7),(65,1532326327,10,1,'',7),(66,1532326327,11,0,'',7),(67,1532326429,1,1,'',8),(68,1532326429,2,1,'',8),(69,1532326429,3,1,'',8),(70,1532326429,5,1,'',8),(71,1532326429,6,1,'',8),(72,1532326429,7,1,'',8),(73,1532326429,8,1,'',8),(74,1532326429,9,1,'',8),(75,1532326429,10,1,'',8),(76,1532326429,11,0,'',8),(77,1555494196,1,1,NULL,9),(78,1555494196,2,1,NULL,9),(79,1555494196,3,1,NULL,9),(80,1555494196,5,1,NULL,9),(81,1555494196,6,1,NULL,9),(82,1555494196,7,1,NULL,9),(83,1555494196,8,1,NULL,9),(84,1555494196,9,1,NULL,9),(85,1555494196,10,1,NULL,9),(86,1555494196,11,0,'walla',9),(87,1555494740,1,1,NULL,10),(88,1555494740,2,1,NULL,10),(89,1555494740,3,1,NULL,10),(90,1555494740,5,1,NULL,10),(91,1555494740,6,1,NULL,10),(92,1555494740,7,1,NULL,10),(93,1555494740,8,1,'awesome',10),(94,1555494740,9,1,NULL,10),(95,1555494740,10,1,NULL,10),(96,1555494740,11,1,NULL,10);
/*!40000 ALTER TABLE `tbl_checklist_task_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklist_tasks`
--

DROP TABLE IF EXISTS `tbl_checklist_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_no` text NOT NULL,
  `status` int(11) NOT NULL,
  `performed_by` int(11) NOT NULL,
  `performed_on` date NOT NULL,
  `escalate_to` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklist_tasks`
--

LOCK TABLES `tbl_checklist_tasks` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_tasks` DISABLE KEYS */;
INSERT INTO `tbl_checklist_tasks` VALUES (1,'1524660246',2,5,'2018-04-25',113,0),(2,'1531214207',2,5,'2018-07-10',100,0),(3,'1531984059',2,5,'2018-07-19',100,0),(4,'1532178177',1,5,'2018-07-21',0,0),(5,'1532322914',1,5,'2018-07-23',0,0),(6,'1532326122',2,5,'2018-07-23',117,0),(7,'1532326327',2,5,'2018-07-23',117,0),(8,'1532326429',2,5,'2018-07-23',117,0),(9,'1555494196',2,5,'2019-04-17',166,0),(10,'1555494740',1,5,'2019-04-17',0,0);
/*!40000 ALTER TABLE `tbl_checklist_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklist_types`
--

DROP TABLE IF EXISTS `tbl_checklist_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklist_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklist_types`
--

LOCK TABLES `tbl_checklist_types` WRITE;
/*!40000 ALTER TABLE `tbl_checklist_types` DISABLE KEYS */;
INSERT INTO `tbl_checklist_types` VALUES (1,'Daily',0),(2,'Weekly',1),(3,'Monthly',0);
/*!40000 ALTER TABLE `tbl_checklist_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_checklists`
--

DROP TABLE IF EXISTS `tbl_checklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_checklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL,
  `performed_on` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_checklists`
--

LOCK TABLES `tbl_checklists` WRITE;
/*!40000 ALTER TABLE `tbl_checklists` DISABLE KEYS */;
INSERT INTO `tbl_checklists` VALUES (1,'demo',0,1,'to be done'),(2,'Compu',0,2,'spoilt battery'),(3,'Network Peformance',0,1,'Network Peformance'),(4,'oiling',1,2,'urgent please'),(5,'jumbo',0,2,'great'),(6,'test1',0,1,'good good'),(7,'test2',0,1,'fsdfdas'),(8,'test3',0,2,'test3 content'),(9,'test4',0,2,'test 4 content'),(10,'test 5',0,1,'test 5 content'),(11,'test 6',0,2,'test 6 content'),(12,'test 7',1,2,'test 7 content'),(13,'test 9',1,1,'test 9 content'),(14,'test',1,2,'dummy'),(15,'vinn-test',0,4,'This is it');
/*!40000 ALTER TABLE `tbl_checklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cust_supp_checkitems`
--

DROP TABLE IF EXISTS `tbl_cust_supp_checkitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cust_supp_checkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `performed_on` text NOT NULL COMMENT '1 customer and 2 suppliers',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cust_supp_checkitems`
--

LOCK TABLES `tbl_cust_supp_checkitems` WRITE;
/*!40000 ALTER TABLE `tbl_cust_supp_checkitems` DISABLE KEYS */;
INSERT INTO `tbl_cust_supp_checkitems` VALUES (21,'Kra Pin',0,'1,2'),(22,'Account opening form',0,'1,2'),(23,'New item',1,'1,'),(24,'National Identity',1,'1,2'),(25,'First item',1,'');
/*!40000 ALTER TABLE `tbl_cust_supp_checkitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cust_supp_status`
--

DROP TABLE IF EXISTS `tbl_cust_supp_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cust_supp_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cust_supp_status`
--

LOCK TABLES `tbl_cust_supp_status` WRITE;
/*!40000 ALTER TABLE `tbl_cust_supp_status` DISABLE KEYS */;
INSERT INTO `tbl_cust_supp_status` VALUES (1,'Submitted'),(2,'Partially Submitted');
/*!40000 ALTER TABLE `tbl_cust_supp_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cust_supplier_checks`
--

DROP TABLE IF EXISTS `tbl_cust_supplier_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cust_supplier_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1 customer, 2 supplier',
  `cust_supp_id` int(11) NOT NULL,
  `checked_on` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for subitted 1 for partially',
  `checked_by` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `cust_supp_id` (`cust_supp_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cust_supplier_checks`
--

LOCK TABLES `tbl_cust_supplier_checks` WRITE;
/*!40000 ALTER TABLE `tbl_cust_supplier_checks` DISABLE KEYS */;
INSERT INTO `tbl_cust_supplier_checks` VALUES (1,1,2,2019,0,5,0);
/*!40000 ALTER TABLE `tbl_cust_supplier_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cust_supplier_specific_checks`
--

DROP TABLE IF EXISTS `tbl_cust_supplier_specific_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cust_supplier_specific_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `check_item` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for subitted 1 for partially',
  `comment` text,
  `expiry_date` text,
  `customer_id` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cust_supplier_specific_checks`
--

LOCK TABLES `tbl_cust_supplier_specific_checks` WRITE;
/*!40000 ALTER TABLE `tbl_cust_supplier_specific_checks` DISABLE KEYS */;
INSERT INTO `tbl_cust_supplier_specific_checks` VALUES (1,21,0,'','',1,0),(2,22,0,'','',1,0);
/*!40000 ALTER TABLE `tbl_cust_supplier_specific_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_doc_escalation_n_reminders`
--

DROP TABLE IF EXISTS `tbl_doc_escalation_n_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_doc_escalation_n_reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `doc_type` int(10) unsigned NOT NULL,
  `reminder_to` int(11) NOT NULL,
  `duration_before` int(10) unsigned NOT NULL,
  `reminder_every` int(10) unsigned NOT NULL,
  `reminder_for` int(10) unsigned NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_doc_esc_rem_type` (`doc_type`) USING BTREE,
  KEY `fk_esc_rem_esc_to` (`reminder_to`) USING BTREE,
  KEY `fk_esc_rem_rem_every` (`reminder_every`) USING BTREE,
  KEY `fk_esc_rem_reminder_for` (`reminder_for`) USING BTREE,
  KEY `fk_esc_rem_duration_before` (`duration_before`) USING BTREE,
  CONSTRAINT `fk_doc_esc_rem_type` FOREIGN KEY (`doc_type`) REFERENCES `tbl_legal_document_types` (`id`),
  CONSTRAINT `fk_esc_rem_duration_before` FOREIGN KEY (`duration_before`) REFERENCES `tbl_time_durations` (`id`),
  CONSTRAINT `fk_esc_rem_rem_every` FOREIGN KEY (`reminder_every`) REFERENCES `tbl_time_durations` (`id`),
  CONSTRAINT `fk_esc_rem_reminder_for` FOREIGN KEY (`reminder_for`) REFERENCES `tbl_time_durations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_doc_escalation_n_reminders`
--

LOCK TABLES `tbl_doc_escalation_n_reminders` WRITE;
/*!40000 ALTER TABLE `tbl_doc_escalation_n_reminders` DISABLE KEYS */;
INSERT INTO `tbl_doc_escalation_n_reminders` VALUES (1,'test reminder',3,1,3,2,3,0),(2,'Weekly reminder',3,2,2,2,2,0);
/*!40000 ALTER TABLE `tbl_doc_escalation_n_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_escalation_matrix`
--

DROP TABLE IF EXISTS `tbl_escalation_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_escalation_matrix` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `users` varchar(100) NOT NULL,
  `duration` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_escalation_matrix`
--

LOCK TABLES `tbl_escalation_matrix` WRITE;
/*!40000 ALTER TABLE `tbl_escalation_matrix` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_escalation_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_knowledge_base`
--

DROP TABLE IF EXISTS `tbl_knowledge_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_knowledge_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `solution` longtext,
  `hits` int(100) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) DEFAULT '0',
  `image` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE,
  CONSTRAINT `tbl_knowledge_base_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_knowledge_base_types` (`id`),
  CONSTRAINT `tbl_knowledge_base_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_knowledge_base`
--

LOCK TABLES `tbl_knowledge_base` WRITE;
/*!40000 ALTER TABLE `tbl_knowledge_base` DISABLE KEYS */;
INSERT INTO `tbl_knowledge_base` VALUES (1,5,'Replacing A Car Battery','Open The car',4,5,'2018-04-18 14:33:42','2018-08-13 06:43:45',0,''),(2,3,'How to Access Pro-Kazi','Type pro-kazi.com on your Browser.',0,5,'2018-05-18 14:35:36','2018-08-13 08:27:45',0,''),(3,3,'Fixing Phone Error','Buy a new one, simple',3,5,'2018-06-18 14:38:30','2019-03-28 12:16:41',0,''),(4,1,'adas','zSDas',3,5,'2018-06-27 10:28:48','2018-08-13 06:44:02',0,NULL),(9,4,'demo','this is development work',4,5,'2018-07-12 14:21:39','2018-08-13 07:44:39',0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:47:\"knowledgebase_file5b47720392972-jobcard-(9).pdf\";s:9:\"file_size\";s:5:\"12297\";}}'),(10,5,'demo2','what is a wonder',0,5,'2018-07-12 14:22:50',NULL,0,'a:1:{i:0;a:2:{s:9:\"file_name\";s:52:\"knowledgebase_file5b47724a7adb6-KRA-presentation.pdf\";s:9:\"file_size\";s:7:\"1531956\";}}'),(11,4,'walla2','This is dummy',0,5,'2019-03-28 13:05:06',NULL,0,'a:0:{}');
/*!40000 ALTER TABLE `tbl_knowledge_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_knowledge_base_ticket`
--

DROP TABLE IF EXISTS `tbl_knowledge_base_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_knowledge_base_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `solution_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ticket_id` (`ticket_id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE,
  KEY `solution_id` (`solution_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_knowledge_base_ticket`
--

LOCK TABLES `tbl_knowledge_base_ticket` WRITE;
/*!40000 ALTER TABLE `tbl_knowledge_base_ticket` DISABLE KEYS */;
INSERT INTO `tbl_knowledge_base_ticket` VALUES (1,5,4,5,'2018-06-27 10:28:49',NULL,0);
/*!40000 ALTER TABLE `tbl_knowledge_base_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_knowledge_base_types`
--

DROP TABLE IF EXISTS `tbl_knowledge_base_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_knowledge_base_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_knowledge_base_types`
--

LOCK TABLES `tbl_knowledge_base_types` WRITE;
/*!40000 ALTER TABLE `tbl_knowledge_base_types` DISABLE KEYS */;
INSERT INTO `tbl_knowledge_base_types` VALUES (1,'bug',0),(2,'improvement',0),(3,'recomendation',0),(4,'development',0),(5,'Mechanical',0);
/*!40000 ALTER TABLE `tbl_knowledge_base_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_legal_case_procedures`
--

DROP TABLE IF EXISTS `tbl_legal_case_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_legal_case_procedures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `legal_case` int(11) NOT NULL,
  `date` text NOT NULL,
  `assigned` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  `procedure_val` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_legal_case_procedures`
--

LOCK TABLES `tbl_legal_case_procedures` WRITE;
/*!40000 ALTER TABLE `tbl_legal_case_procedures` DISABLE KEYS */;
INSERT INTO `tbl_legal_case_procedures` VALUES (1,1,'2018-04-17',5,1,0),(2,2,'2018-04-18',5,0,0),(3,3,'2018-04-24',82,0,0),(4,4,'2018-04-24',5,0,0),(5,5,'2018-04-17',5,0,0),(6,1,'2018-04-19',90,0,4),(7,6,'2018-04-19',90,0,0),(8,7,'2018-09-20',87,0,0),(9,8,'2018-09-20',84,0,0),(10,9,'2018-09-20',85,0,0),(11,10,'2018-09-20',84,0,0),(12,11,'2018-09-30',91,0,0),(13,12,'2018-09-29',116,0,0),(14,13,'2018-09-26',5,0,0),(15,14,'2019-03-20',83,0,0);
/*!40000 ALTER TABLE `tbl_legal_case_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_legal_docs_items`
--

DROP TABLE IF EXISTS `tbl_legal_docs_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_legal_docs_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sage_item_id` text NOT NULL,
  `legal_doc_id` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `issage` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_legal_docs_items`
--

LOCK TABLES `tbl_legal_docs_items` WRITE;
/*!40000 ALTER TABLE `tbl_legal_docs_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_legal_docs_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_legal_document_types`
--

DROP TABLE IF EXISTS `tbl_legal_document_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_legal_document_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `has_expiry` int(11) NOT NULL DEFAULT '0',
  `can_upload` int(11) NOT NULL DEFAULT '0',
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_legal_document_types`
--

LOCK TABLES `tbl_legal_document_types` WRITE;
/*!40000 ALTER TABLE `tbl_legal_document_types` DISABLE KEYS */;
INSERT INTO `tbl_legal_document_types` VALUES (1,'Legal',1,0,0),(2,'Gazzete Notice',1,0,0),(3,'Insuarance',1,1,0),(4,'Policy',1,0,0),(5,'CONTRACTS',1,1,0);
/*!40000 ALTER TABLE `tbl_legal_document_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_legal_documents`
--

DROP TABLE IF EXISTS `tbl_legal_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_legal_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `document_type` int(10) unsigned NOT NULL,
  `file_document` text NOT NULL,
  `user_responsible` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `covered_from` text NOT NULL,
  `covered_to` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `reminder` int(11) NOT NULL DEFAULT '0',
  `reminder_sent` int(11) NOT NULL DEFAULT '0',
  `completed_escalations` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_doc_type` (`document_type`) USING BTREE,
  KEY `fk_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_legal_documents`
--

LOCK TABLES `tbl_legal_documents` WRITE;
/*!40000 ALTER TABLE `tbl_legal_documents` DISABLE KEYS */;
INSERT INTO `tbl_legal_documents` VALUES (1,'test',1,'a:1:{i:0;a:2:{s:9:\"file_name\";s:39:\"legal_file5b47515bbd58a-jobcard-(7).pdf\";s:9:\"file_size\";s:4:\"6798\";}}',5,1,'2018-07-16','2018-07-21',0,0,0,0,'2018-07-12 13:02:19','0000-00-00 00:00:00'),(2,'test2',1,'a:1:{i:0;a:2:{s:9:\"file_name\";s:35:\"legal_file5b4751ea2410e-jobcard.pdf\";s:9:\"file_size\";s:5:\"19841\";}}',86,1,'2018-07-25','2018-06-15',0,0,0,0,'2018-07-12 13:04:42','0000-00-00 00:00:00'),(3,'test3',1,'a:1:{i:0;a:2:{s:9:\"file_name\";s:120:\"legal_file5b475a0af34d5-kazihtdocs_files_timeline_files_ticket_file5b4345c3e6396-Screenshot-from-2018-07-04-08-02-57.png\";s:9:\"file_size\";s:6:\"161660\";}}',107,1,'2018-07-18','2018-07-27',1,0,0,0,'2018-07-31 07:21:48','0000-00-00 00:00:00'),(4,'test',1,'a:0:{}',5,1,'2018-09-20','2018-09-26',0,0,0,0,'2018-09-18 05:20:36','0000-00-00 00:00:00'),(5,'dummy',3,'a:0:{}',87,1,'','',0,0,0,0,'2018-09-18 07:09:50','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_legal_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_migartions`
--

DROP TABLE IF EXISTS `tbl_migartions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_migartions` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_migartions`
--

LOCK TABLES `tbl_migartions` WRITE;
/*!40000 ALTER TABLE `tbl_migartions` DISABLE KEYS */;
INSERT INTO `tbl_migartions` VALUES (4);
/*!40000 ALTER TABLE `tbl_migartions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_third_party`
--

DROP TABLE IF EXISTS `tbl_third_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_third_party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_third_party`
--

LOCK TABLES `tbl_third_party` WRITE;
/*!40000 ALTER TABLE `tbl_third_party` DISABLE KEYS */;
INSERT INTO `tbl_third_party` VALUES (1,'testuser','065756645534','kituyiv@gmail.com','2018-06-27 05:08:02',NULL,0),(2,'janet','07234234234','jane@jane.com','2018-10-31 08:10:18',NULL,0);
/*!40000 ALTER TABLE `tbl_third_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_time_durations`
--

DROP TABLE IF EXISTS `tbl_time_durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_time_durations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `seconds` int(11) NOT NULL,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_time_durations`
--

LOCK TABLES `tbl_time_durations` WRITE;
/*!40000 ALTER TABLE `tbl_time_durations` DISABLE KEYS */;
INSERT INTO `tbl_time_durations` VALUES (1,'1 day',2723623,0),(2,'3 days',487348,0),(3,'1 Week',120000,0);
/*!40000 ALTER TABLE `tbl_time_durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) DEFAULT NULL,
  `desig_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `members` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=680 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (626,NULL,1,'MD/CEO','',0),(627,NULL,2,'Accounts Manager - Receivable','',0),(628,NULL,3,'Administration Officer',',185',0),(629,NULL,4,'HR & Admin Manager','',0),(630,NULL,5,'Assistant Accountant - Payable',',187,196',0),(631,NULL,6,'Legal Manager',',174',0),(632,NULL,7,'Country Operations Manager','',0),(633,NULL,8,'Technical Manager','',0),(634,NULL,9,'Technical Supervisor',',175',0),(635,NULL,10,'ICT Manager','94',0),(636,NULL,11,'Operations Supervisor',',176',0),(637,NULL,12,'Group Chief Finance Officer','',0),(638,NULL,13,'Machine Operator',',179,193',0),(639,NULL,14,'Group Internal Audit Risk & Compliance Officer','',0),(640,NULL,15,'ICT Assistant',',177',0),(641,NULL,16,'Procurement Officer',',178',0),(642,NULL,17,'HR Assistant','',0),(643,NULL,18,'Transport Clerk',',180,184',0),(644,NULL,19,'Credit Controller',',181',0),(645,NULL,20,'Boarding Clerk','',0),(646,NULL,21,'Country Sales & Marketing Manager','',0),(647,NULL,22,'Business Development Manager',',183',0),(648,NULL,23,'Customer Service Executive - Ops','',0),(649,NULL,24,'Audit Assistant',',186',0),(650,NULL,25,'Assistant Accountant -  Receivable.',',189',0),(651,NULL,26,'Accounts Manager - Payable',',188',0),(652,NULL,27,'Sales Support Executive','',0),(653,NULL,28,'Accounts Receivables','',0),(654,NULL,29,'Customer Service Executive - Agency',',182,190',0),(655,NULL,30,'Port Agency Manager','',0),(656,NULL,31,'HR Clerk','',0),(657,NULL,32,'Operations Officer',',191,194',0),(658,NULL,33,'Finance Intern','',0),(659,NULL,34,'Operations Intern',',169,170,171,195',0),(660,NULL,35,'ICT Intern',',172',0),(661,NULL,36,'Key Accounts Executive',',192',0),(662,NULL,37,'Sales Executive','',0),(663,NULL,38,'Accounts Officer',',197',0),(664,NULL,39,'Administrative Officer',',167,198',0),(665,NULL,40,'Operations Manager','',0),(666,NULL,41,'Declaration Officer','',0),(667,NULL,42,'Operation Supervisor - Forwarding','',0),(668,NULL,43,'Forwarding Officer','',0),(669,NULL,44,'Forwarding Clerk','',0),(670,NULL,45,'Logistics Manager','',0),(671,NULL,46,'Logistics Officer','',0),(672,NULL,47,'Digital Marketing Executive',',168,173,199,200,201',0),(673,NULL,48,'Country Corporate Manager','',0),(674,NULL,49,'HRM - A&R','',0),(675,NULL,50,'HRM - T&D','',0),(676,NULL,51,'Doccumentation Officer',',202',0),(677,NULL,52,'HR Intern',',203',0),(678,NULL,53,'Health Safety & Environmennt Officer','',0),(679,NULL,54,'Legal Assistant','',0);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_member_job_info`
--

DROP TABLE IF EXISTS `team_member_job_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_member_job_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_of_hire` date NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `salary` double NOT NULL DEFAULT '0',
  `working_hours` double NOT NULL DEFAULT '1',
  `hourly_rate` double NOT NULL DEFAULT '1',
  `salary_term` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member_job_info`
--

LOCK TABLES `team_member_job_info` WRITE;
/*!40000 ALTER TABLE `team_member_job_info` DISABLE KEYS */;
INSERT INTO `team_member_job_info` VALUES (4,5,'2016-09-16',0,15000,176,85.227272727273,'Monthly'),(81,82,'2018-01-01',0,0,560,0,'Contract'),(82,83,'2018-01-01',0,0,560,0,'Contract'),(83,84,'2018-03-01',0,0,560,0,'Contract'),(84,85,'2001-05-01',0,0,560,0,'Contract'),(85,86,'2007-04-01',0,0,560,0,'Contract'),(86,87,'2009-12-10',0,0,560,0,'Contract'),(87,88,'2014-07-14',0,0,560,0,'Contract'),(88,89,'2011-01-03',0,0,560,0,'Contract'),(89,90,'2011-11-01',0,0,560,0,'Contract'),(90,91,'2011-10-01',0,0,560,0,'Contract'),(91,92,'2011-04-04',0,0,560,0,'Contract'),(92,93,'2011-07-04',0,0,560,0,'Contract'),(93,94,'2011-12-19',0,0,560,0,'Contract'),(94,95,'2011-12-20',0,0,560,0,'Contract'),(95,96,'2011-12-29',0,0,560,0,'Contract'),(96,97,'2015-08-05',0,0,560,0,'Contract'),(97,98,'2013-05-01',0,0,560,0,'Contract'),(98,99,'2013-11-10',0,0,560,0,'Contract'),(99,100,'2014-10-07',0,0,560,0,'Contract'),(100,101,'2015-07-01',0,0,560,0,'Contract'),(101,102,'2015-06-16',0,0,560,0,'Contract'),(102,103,'2015-09-01',0,0,560,0,'Contract'),(103,104,'2016-02-16',0,0,560,0,'Contract'),(104,105,'2014-08-17',0,0,560,0,'Contract'),(105,106,'2016-01-07',0,0,560,0,'Contract'),(106,107,'2016-01-10',0,0,560,0,'Contract'),(107,108,'2012-03-15',0,0,560,0,'Contract'),(108,109,'2015-11-09',0,0,560,0,'Contract'),(109,110,'2017-01-26',0,0,560,0,'Contract'),(110,111,'2016-06-02',0,0,560,0,'Contract'),(111,112,'2012-06-04',0,0,560,0,'Contract'),(112,113,'2012-04-02',0,0,560,0,'Contract'),(113,114,'2015-01-02',0,0,560,0,'Contract'),(114,115,'2017-05-02',0,0,560,0,'Contract'),(115,116,'2017-07-01',0,0,560,0,'Contract'),(116,117,'2017-08-14',0,0,560,0,'Contract'),(117,118,'2017-10-13',0,0,560,0,'Contract'),(118,119,'2017-10-13',0,0,560,0,'Contract'),(119,120,'2017-11-20',0,0,560,0,'Contract'),(120,121,'2018-03-15',0,0,560,0,'Contract'),(121,122,'2018-03-01',0,0,560,0,'Contract'),(122,123,'2010-05-24',0,0,560,0,'Contract'),(145,146,'2017-10-02',0,0,560,0,'Contract'),(146,147,'2017-09-02',0,0,560,0,'Contract'),(147,148,'2017-09-02',0,0,560,0,'Contract'),(148,149,'2017-09-02',0,0,560,0,'Contract'),(150,151,'2007-11-26',0,0,560,0,'Contract'),(151,152,'2011-11-15',0,0,560,0,'Contract'),(152,153,'2010-11-29',0,0,560,0,'Contract'),(155,156,'2017-09-02',0,0,560,0,'Contract'),(156,157,'2017-09-02',0,0,560,0,'Contract'),(157,158,'2015-07-15',0,0,560,0,'Contract'),(158,159,'2012-10-01',0,0,560,0,'Contract'),(159,160,'2012-08-01',0,0,560,0,'Contract'),(160,161,'2012-08-01',0,0,560,0,'Contract'),(161,162,'2016-02-16',0,0,560,0,'Contract'),(162,163,'2016-06-06',0,0,560,0,'Contract'),(163,164,'2015-07-01',0,0,560,0,'Contract'),(164,165,'2008-08-01',0,0,560,0,'Contract'),(165,166,'2013-04-04',0,0,560,0,'Contract'),(168,169,'2018-07-01',0,10000,560,17.857142857143,'Full-Time Contract'),(169,170,'2018-07-01',0,10000,560,17.857142857143,'Full-Time Contract'),(170,171,'2018-07-01',0,20000,560,35.714285714286,'Full-Time Contract'),(171,172,'2018-07-01',0,10000,560,17.857142857143,'Full-Time Contract'),(173,174,'2011-11-01',0,90000,560,160.71428571429,'Full-Time Contract'),(174,175,'2011-07-04',0,42000,560,75,'Full-Time Contract'),(175,176,'2011-12-20',0,82000,560,146.42857142857,'Full-Time Contract'),(176,177,'2014-10-07',0,40000,560,71.428571428571,'Full-Time Contract'),(177,178,'2015-07-01',0,35000,560,62.5,'Full-Time Contract'),(178,179,'2015-08-05',0,30000,560,53.571428571429,'Full-Time Contract'),(179,180,'2015-09-01',0,35000,560,62.5,'Full-Time Contract'),(180,181,'2014-08-17',0,85000,560,151.78571428571,'Full-Time Contract'),(181,182,'2016-01-07',0,28000,560,50,'Full-Time Contract'),(182,183,'2012-03-15',0,223000,560,398.21428571429,'Full-Time Contract'),(183,184,'2016-02-16',0,20000,560,35.714285714286,'Full-Time Contract'),(184,185,'2014-07-14',0,67000,560,119.64285714286,'Full-Time Contract'),(185,186,'2017-01-26',0,35000,560,62.5,'Full-Time Contract'),(186,187,'2016-06-02',0,45000,560,80.357142857143,'Full-Time Contract'),(187,188,'2012-06-04',0,65000,560,116.07142857143,'Full-Time Contract'),(188,189,'2015-01-02',0,45000,560,80.357142857143,'Full-Time Contract'),(189,190,'2017-05-02',0,33000,560,58.928571428571,'Full-Time Contract'),(190,191,'2017-10-13',0,30000,560,53.571428571429,'Full-Time Contract'),(191,192,'2017-11-20',0,80000,560,142.85714285714,'Full-Time Contract'),(192,193,'2013-05-01',0,35000,560,62.5,'Full-Time Contract'),(193,194,'2018-03-15',0,25000,560,44.642857142857,'Full-Time Contract'),(194,195,'2017-09-02',0,10000,560,17.857142857143,'Part-Time Contract'),(195,196,'2011-01-03',0,0,560,0,'Full-Time Contract'),(196,197,'2018-05-02',0,22000,560,39.285714285714,'Full-Time Contract'),(197,198,'2018-05-02',0,15000,560,26.785714285714,'Full-Time Contract'),(198,199,'2018-06-02',0,22000,560,39.285714285714,'Full-Time Contract'),(199,200,'2018-06-02',0,22000,560,39.285714285714,'Full-Time Contract'),(200,201,'2018-06-02',0,22000,560,39.285714285714,'Full-Time Contract'),(201,202,'2018-10-15',0,85000,560,151.78571428571,'Full-Time Contract'),(202,203,'2019-02-18',0,0,560,0,'Part-Time Contract');
/*!40000 ALTER TABLE `team_member_job_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `third_party_messages`
--

DROP TABLE IF EXISTS `third_party_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `third_party_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `third_p_id` int(100) NOT NULL,
  `sender_id` int(100) NOT NULL,
  `ticket_id` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `third_party_messages`
--

LOCK TABLES `third_party_messages` WRITE;
/*!40000 ALTER TABLE `third_party_messages` DISABLE KEYS */;
INSERT INTO `third_party_messages` VALUES (1,'under testing',1,5,6,'2018-06-29 09:41:33',NULL),(2,'zxXsDxasdasc',1,5,6,'2018-07-23 04:55:10',NULL),(3,'dummy content',1,5,7,'2018-07-23 07:03:59',NULL),(4,'ewcwec wereewe',1,5,27,'2018-10-31 08:07:10',NULL),(5,'walla walla!',2,5,27,'2018-10-31 08:10:42',NULL),(6,'today it shoul be done',2,5,8,'2018-10-31 08:46:54',NULL);
/*!40000 ALTER TABLE `third_party_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_comments`
--

DROP TABLE IF EXISTS `ticket_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_comments`
--

LOCK TABLES `ticket_comments` WRITE;
/*!40000 ALTER TABLE `ticket_comments` DISABLE KEYS */;
INSERT INTO `ticket_comments` VALUES (1,5,'2018-04-19 12:58:47','Ticket Desc',1,'a:1:{i:0;a:2:{s:9:\"file_name\";s:34:\"ticket_file5ad89287b8e95-users.png\";s:9:\"file_size\";s:5:\"82093\";}}',0),(2,125,'2018-04-20 14:29:19','solved',1,'a:0:{}',0),(3,94,'2018-05-08 08:18:30','test test',18,'a:0:{}',0),(4,125,'2018-05-10 10:24:30','test ',19,'a:0:{}',0),(5,125,'2018-05-10 10:27:24','test2',20,'a:0:{}',0),(6,99,'2018-05-11 08:34:26','Give me user view right under operations, i.e. transport, logistics, forwarding',21,'a:0:{}',0),(7,125,'2018-05-11 09:31:37','test3',22,'a:0:{}',0),(8,125,'2018-05-11 09:37:43','Well noted',21,'a:0:{}',0),(9,99,'2018-05-11 11:30:33','Check  my rights, i should only have user rights that allows me to view all imprests ',23,'a:0:{}',0),(10,125,'2018-05-14 08:26:20','Ramona\'s machine not powering on.',24,'a:0:{}',0),(11,125,'2018-05-14 11:36:46','test 4',25,'a:0:{}',0),(12,5,'2018-05-29 08:54:27','sdas',22,'a:0:{}',0),(13,5,'2018-05-29 08:59:45','great',22,'a:0:{}',0),(14,5,'2018-05-29 09:02:01','xas',22,'a:0:{}',0),(15,5,'2018-05-29 09:05:09','xas',22,'a:0:{}',0),(16,5,'2018-05-29 09:05:31','great vinn',22,'a:0:{}',0),(17,5,'2018-05-29 09:11:36','hyhyhy',22,'a:0:{}',0),(18,5,'2018-05-29 09:14:20','tthhhasd',22,'a:0:{}',0),(19,5,'2018-06-25 08:01:48','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(20,5,'2018-06-25 08:01:55','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(21,5,'2018-06-25 08:02:20','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(22,5,'2018-06-25 08:02:21','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(23,5,'2018-06-25 08:02:21','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(24,5,'2018-06-25 08:02:22','cool',18,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(25,5,'2018-06-25 08:03:53','what!',23,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"293296\";}}',0),(26,5,'2018-06-25 08:13:18','scsdcsd',26,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(27,5,'2018-06-25 08:14:26','great',27,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:6:\"371698\";}}',0),(28,5,'2018-06-25 08:31:01','jkznczxmc',28,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"70673\";}}',0),(29,5,'2018-06-25 12:59:19','descriptionate',1,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"70673\";}}',0),(30,5,'2018-06-26 05:45:22','glorious',1,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"70673\";}}',0),(31,5,'2018-06-26 05:45:27','glorious',1,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"70673\";}}',0),(32,5,'2018-06-26 10:36:04','wow',22,'a:0:{}',0),(33,5,'2018-06-26 12:06:48','ndndndnddn',29,'a:0:{}',0),(34,5,'2018-06-26 12:21:07','adasda',30,'a:0:{}',0),(35,5,'2018-06-26 12:30:25','deassxvdfdr',31,'a:0:{}',0),(36,5,'2018-06-26 12:42:22','XX',32,'a:0:{}',0),(37,5,'2018-06-26 12:43:56','Sasdad',33,'a:0:{}',0),(38,5,'2018-06-26 12:44:33','SaS',34,'a:0:{}',0),(39,5,'2018-06-26 12:46:03','SzaSD',35,'a:0:{}',0),(40,5,'2018-06-26 12:52:54','asas',36,'a:0:{}',0),(41,5,'2018-06-26 12:54:32','sdfdf',37,'a:0:{}',0),(42,5,'2018-06-26 13:00:50','sdcs',38,'a:0:{}',0),(43,5,'2018-06-26 13:03:23','adasd',39,'a:0:{}',0),(44,5,'2018-06-26 13:06:49','zxczczzs',40,'a:0:{}',0),(45,5,'2018-06-26 14:02:41','done',45,'a:0:{}',0),(46,5,'2018-06-26 13:11:11','lorem ipsum',42,'a:0:{}',0),(47,5,'2018-06-26 13:13:29','congratulations my son',43,'a:0:{}',0),(48,5,'2018-06-26 13:21:30','demo content',44,'a:0:{}',0),(49,5,'2018-06-26 13:25:31','zxczcz',45,'a:0:{}',0),(50,5,'2018-06-26 13:27:06','nbnbn',46,'a:0:{}',0),(51,5,'2018-06-26 13:31:42','zczxc',47,'a:0:{}',0),(52,5,'2018-06-26 13:36:51','adsds',48,'a:0:{}',0),(53,5,'2018-06-26 13:43:03','desdasdad',49,'a:0:{}',0),(54,5,'2018-06-26 13:44:57','simple demo',50,'a:0:{}',0),(55,5,'2018-06-26 13:46:22','listing test',51,'a:0:{}',0),(56,5,'2018-06-26 13:49:00','expectations',52,'a:0:{}',0),(57,5,'2018-06-26 13:51:27','lorems',53,'a:0:{}',0),(58,5,'2018-06-26 13:54:49','awesome',54,'a:0:{}',0),(59,5,'2018-06-26 13:56:00','xasdsa',55,'a:0:{}',0),(60,5,'2018-06-26 13:57:18','mimicking',56,'a:0:{}',0),(61,5,'2018-06-26 14:00:48','Todo case',57,'a:0:{}',0),(62,5,'2018-06-26 14:03:39','done',45,'a:0:{}',0),(63,5,'2018-06-26 14:04:03','good',47,'a:0:{}',0),(64,5,'2018-06-26 14:06:20','good',47,'a:0:{}',0),(65,5,'2018-06-26 14:06:37','great',37,'a:0:{}',0),(66,5,'2018-06-26 14:08:26','exsadsd',47,'a:0:{}',0),(67,5,'2018-06-26 14:09:27','hsfhsdf',45,'a:0:{}',0),(68,5,'2018-06-26 14:10:50','sdcvsd',38,'a:0:{}',0),(69,5,'2018-06-26 14:51:32','sadsdas',47,'a:0:{}',0),(70,5,'2018-06-27 09:33:29','zsda',45,'a:0:{}',0),(71,5,'2018-06-27 00:00:00','zxcas',45,NULL,0),(72,5,'2018-06-27 00:00:00','awdas',45,NULL,0),(73,5,'2018-07-09 10:15:04','sw',47,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"12181\";}}',0),(74,5,'2018-07-09 10:15:07','sw',47,'a:1:{i:0;a:2:{s:9:\"file_name\";b:0;s:9:\"file_size\";s:5:\"12181\";}}',0),(75,5,'2018-10-12 13:35:24','sa',37,'a:0:{}',0),(76,5,'2018-10-12 13:39:52','x',37,'a:0:{}',0),(77,5,'2018-10-12 13:40:05','x',37,'a:0:{}',0),(78,5,'2018-10-12 13:40:22','x',37,'a:0:{}',0),(79,5,'2018-10-12 13:40:36','xasx',37,'a:0:{}',0),(80,5,'2018-10-12 13:41:09','zx',37,'a:0:{}',0),(81,5,'2018-10-12 13:42:29','px',37,'a:0:{}',0),(82,5,'2018-10-12 13:44:03','der',37,'a:0:{}',0);
/*!40000 ALTER TABLE `ticket_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_types`
--

DROP TABLE IF EXISTS `ticket_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_types`
--

LOCK TABLES `ticket_types` WRITE;
/*!40000 ALTER TABLE `ticket_types` DISABLE KEYS */;
INSERT INTO `ticket_types` VALUES (1,'System',0),(2,'Email',0),(3,'Call',0),(6,'Visit',0),(7,'Slow Internet',1);
/*!40000 ALTER TABLE `ticket_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `external_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `ticket_type_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('new','client_replied','open','closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'new',
  `last_activity_at` datetime DEFAULT NULL,
  `assigned_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `escalation_matrix` int(11) NOT NULL,
  `team_id` int(11) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (17,0,'',1,'amolo',5,'2018-04-30 08:37:27','new','2018-04-30 08:37:27','',0,3,'tydytr',1),(18,0,'',1,'test',94,'2018-05-08 08:18:30','open','2018-06-25 08:02:22','',0,3,'test',0),(19,0,'',1,'test',125,'2018-05-10 10:24:30','new','2018-05-10 10:24:30','',0,3,'',0),(20,0,'',1,'test2',125,'2018-05-10 10:27:24','new','2018-05-10 10:27:24','',0,3,'',1),(21,0,'',1,'Access rights',99,'2018-05-11 08:34:26','open','2018-05-11 09:37:43','',0,3,'tests',0),(22,0,'',1,'test3',125,'2018-05-11 09:31:37','open','2018-06-26 10:36:04','',0,3,'',0),(23,0,'',1,'imprest module',99,'2018-05-11 11:30:33','open','2018-06-25 08:03:53','',0,3,'IMPREST',0),(24,0,'',3,'Laptop Power issue',125,'2018-05-14 08:26:20','new','2018-05-14 08:26:20','',0,3,'',0),(25,0,'',2,'test',125,'2018-05-14 11:36:46','new','2018-05-14 11:36:46','',0,3,'',0),(26,0,'',2,'sdcs',5,'2018-06-25 08:13:18','new','2018-06-25 08:13:18','',0,0,'IMPREST',0),(27,0,'',1,'testing',5,'2018-06-25 08:14:26','new','2018-06-25 08:14:26','',0,0,'tests',0),(28,0,'',3,'adminTest',5,'2018-06-25 08:31:01','new','2018-06-25 08:31:01','',0,0,'tests',0),(29,11,'z54657',6,'blabla',5,'2018-06-26 12:06:48','new','2018-06-26 12:06:48','90',1,0,'IMPREST',0),(30,15,'asasd',1,'ada',5,'2018-06-26 12:21:07','new','2018-06-26 12:21:07','135',1,0,'IMPREST',0),(31,11,'dwweeqwewqee',1,'asdasdsf',5,'2018-06-26 12:30:25','new','2018-06-26 12:30:25','113',1,0,'',0),(32,11,'SaSD',1,'Dasd',5,'2018-06-26 12:42:22','new','2018-06-26 12:42:22','90',1,0,'tests',0),(33,11,'SSxX',2,'asrwer',5,'2018-06-26 12:43:56','new','2018-06-26 12:43:56','135',1,0,'IMPREST',0),(34,11,'',2,'asad',5,'2018-06-26 12:44:33','new','2018-06-26 12:44:33','166',0,0,'',0),(35,11,'',1,'asds',5,'2018-06-26 12:46:03','new','2018-06-26 12:46:03','150',0,0,'',0),(36,15,'',3,'test',5,'2018-06-26 12:52:54','new','2018-06-26 12:52:54','98',0,0,'',0),(37,11,'zasdas',1,'adadas',5,'2018-06-26 12:54:32','open','2018-10-12 13:44:03','103',1,0,'',0),(38,11,'yuutfterr',6,'oeoeoe',5,'2018-06-26 13:00:50','new','2018-06-26 13:00:50','126',0,0,'',0),(39,11,'asSD',1,'iooo',5,'2018-06-26 13:03:23','new','2018-06-26 13:03:23','93',0,0,'',0),(40,11,'ASD',3,'kdfgikdfgif',5,'2018-06-26 13:06:49','new','2018-06-26 13:06:49','166',0,0,'',0),(41,11,'1324456',1,'srsrse',5,'2018-06-26 13:09:19','new','2018-06-26 13:09:19','',0,0,'',0),(42,11,'0df0f0ff',1,'action point',5,'2018-06-26 13:11:11','new','2018-06-26 13:11:11','142',0,0,'',0),(43,11,'GLGL',1,'test',5,'2018-06-26 13:13:29','new','2018-06-26 13:13:29','94',1,0,'',0),(44,11,'rwerewrwe',1,'ghghgh',5,'2018-06-26 13:21:30','new','2018-06-26 13:21:30','126',0,0,'',0),(45,11,'zxczxc',1,'srer',5,'2018-06-26 13:25:31','closed','2018-06-26 13:25:31','126',1,0,'',0),(46,11,'sdasdasdf',1,'asdasd',5,'2018-06-26 13:27:06','new','2018-06-26 13:27:06','90',1,0,'',0),(47,11,'zczxc',1,'sdsad',5,'2018-06-26 13:31:42','open','2018-07-09 10:15:07','126',0,0,'',0),(48,11,'xXzsCDas',1,'zczsc',5,'2018-06-26 13:36:51','new','2018-06-26 13:36:51','138',0,0,'',0),(49,13,'23435erertr',3,'callling...',5,'2018-06-26 13:43:03','new','2018-06-26 13:43:03','150',1,0,'',0),(50,11,'adsf',2,'susdfsdf',5,'2018-06-26 13:44:57','new','2018-06-26 13:44:57','101',1,0,'tests',0),(51,11,'deeqwq',6,'rururur',5,'2018-06-26 13:46:22','new','2018-06-26 13:46:22','113',1,0,'',0),(52,11,'gwerweew',1,'excellent',5,'2018-06-26 13:49:00','new','2018-06-26 13:49:00','129',1,0,'',0),(53,11,'asdasd',1,'weew',5,'2018-06-26 13:51:27','new','2018-06-26 13:51:27','164',1,0,'',0),(54,11,'5054',1,'tech',5,'2018-06-26 13:54:49','new','2018-06-26 13:54:49','113',0,0,'',0),(55,11,'89',1,'3534',5,'2018-06-26 13:56:00','new','2018-06-26 13:56:00','164',0,0,'',0),(56,11,'mi890',2,'mimick',5,'2018-06-26 13:57:18','new','2018-06-26 13:57:18','139',0,0,'',0),(57,11,'to90',1,'Todo',5,'2018-06-26 14:00:48','new','2018-06-26 14:00:48','113',1,0,'',0);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimmer_sheets`
--

DROP TABLE IF EXISTS `trimmer_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trimmer_sheets` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `trimmer` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `time_in` varchar(255) DEFAULT NULL,
  `time_out` varchar(255) DEFAULT NULL,
  `rate` float DEFAULT '0',
  `total` float DEFAULT '0',
  `delayed_hours` float DEFAULT '0',
  `delayed_minutes` float DEFAULT '0',
  `project_id` int(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimmer_sheets`
--

LOCK TABLES `trimmer_sheets` WRITE;
/*!40000 ALTER TABLE `trimmer_sheets` DISABLE KEYS */;
INSERT INTO `trimmer_sheets` VALUES (1,'vessel1','3','07/24/2018','07/24/2018','00:59','13:59',60,1080,4,45,4,'2018-07-30 06:07:47',NULL,0);
/*!40000 ALTER TABLE `trimmer_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimmers`
--

DROP TABLE IF EXISTS `trimmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trimmers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimmers`
--

LOCK TABLES `trimmers` WRITE;
/*!40000 ALTER TABLE `trimmers` DISABLE KEYS */;
INSERT INTO `trimmers` VALUES (1,'Trimmer1',50,'2018-04-25 23:46:55',NULL,0),(3,'Trimmer2',60,'2018-04-25 23:47:57',NULL,0),(4,'Trimmer3',80,'2018-04-25 23:48:11',NULL,0);
/*!40000 ALTER TABLE `trimmers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('staff','client') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `location_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `message_checked_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification_checked_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `is_primary_contact` tinyint(1) NOT NULL DEFAULT '0',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Untitled',
  `disable_login` tinyint(1) NOT NULL DEFAULT '0',
  `note` mediumtext COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `alternative_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `sticky_note` mediumtext COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `enable_web_notification` tinyint(1) NOT NULL DEFAULT '1',
  `enable_email_notification` tinyint(1) NOT NULL DEFAULT '1',
  `landing_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT '/dashboard',
  `created_at` datetime NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `user_permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_type` (`user_type`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `client_id` (`client_id`) USING BTREE,
  KEY `deleted` (`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Admin','User','staff','NBO',1,6,'admin@teamkazi.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Developer',0,NULL,'','','0700000000','','1900-12-21','','male',NULL,'',1,1,'/dashboard','2016-12-07 09:48:20',0,'a:110:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:9:\"technical\";N;s:14:\"administration\";N;s:8:\"estimate\";N;s:5:\"legal\";N;s:7:\"expense\";N;s:14:\"can_edit_leads\";N;s:16:\"can_delete_leads\";N;s:24:\"can_edit_legal_documents\";N;s:24:\"can_schedule_maintenance\";N;s:26:\"can_delete_legal_documents\";N;s:29:\"can_edit_legal_document_types\";N;s:31:\"can_delete_legal_document_types\";N;s:24:\"can_edit_legal_reminders\";N;s:26:\"can_delete_legal_reminders\";N;s:6:\"client\";N;s:23:\"can_edit_trimmer_sheets\";N;s:25:\"can_delete_trimmer_sheets\";N;s:13:\"can_edit_fuel\";N;s:15:\"can_delete_fuel\";N;s:23:\"can_view_assets_reports\";N;s:18:\"can_access_outages\";N;s:25:\"can_access_administration\";N;s:16:\"can_access_tasks\";N;s:16:\"can_access_leads\";N;s:19:\"can_access_messages\";N;s:18:\"can_access_planner\";N;s:19:\"can_access_projects\";s:1:\"1\";s:19:\"can_access_timecard\";N;s:20:\"can_access_attendace\";N;s:23:\"can_access_task_summary\";s:1:\"1\";s:22:\"can_access_day_summary\";N;s:18:\"can_access_tickets\";N;s:22:\"can_view_knowledgebase\";N;s:24:\"can_access_knowledgebase\";N;s:21:\"can_add_knowledgebase\";N;s:15:\"can_access_team\";N;s:23:\"can_access_team_members\";N;s:16:\"can_access_legal\";N;s:20:\"can_access_documents\";N;s:20:\"can_access_customers\";N;s:16:\"can_access_cases\";N;s:20:\"can_access_defferals\";N;s:28:\"can_access_project_defferals\";N;s:19:\"can_access_accounts\";N;s:20:\"can_access_technical\";s:1:\"1\";s:21:\"can_access_preventive\";N;s:19:\"can_access_reactive\";N;s:21:\"can_access_inpections\";N;s:25:\"can_access_warranty_parts\";N;s:23:\"can_access_requisitions\";N;s:18:\"can_access_fueling\";N;s:24:\"can_access_hiring_assets\";N;s:21:\"can_edit_hired_assets\";N;s:23:\"can_delete_hired_assets\";N;s:25:\"can_access_trimmer_sheets\";N;s:19:\"maintenance_reports\";N;s:23:\"can_access_fuel_reports\";N;s:29:\"can_access_technical_settings\";N;s:18:\"can_access_invoice\";s:1:\"1\";s:12:\"announcement\";N;s:18:\"can_access_finance\";N;s:19:\"can_access_expenses\";N;s:19:\"can_access_payments\";N;s:26:\"can_access_income_expenses\";N;s:24:\"can_view_support_reports\";N;s:28:\"can_view_third_level_reports\";N;s:19:\"can_view_checklists\";N;s:24:\"can_view_support_tickets\";N;s:27:\"can_view_checklists_reports\";N;s:15:\"can_view_assets\";N;s:27:\"can_view_assets_maintanance\";N;s:35:\"can_view_assets_maintanance_reports\";N;s:25:\"can_view_assets_disposals\";s:1:\"1\";s:18:\"can_receive_parcel\";N;s:17:\"can_assign_parcel\";N;s:15:\"can_send_parcel\";N;s:26:\"can_assign_parcel_outwards\";N;s:18:\"can_receive_cheque\";N;s:17:\"can_assign_cheque\";N;s:15:\"can_send_cheque\";N;s:26:\"can_assign_cheque_outwards\";N;s:25:\"can_view_recieved_parcels\";N;s:24:\"can_view_inwards_cheques\";N;s:21:\"can_view_send_cheques\";N;s:25:\"can_view_outwards_cheques\";N;s:25:\"can_view_recieved_cheques\";N;s:24:\"can_view_inwards_parcels\";N;s:21:\"can_view_send_parcels\";N;s:25:\"can_view_outwards_parcels\";N;s:19:\"can_create_projects\";s:1:\"1\";s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";N;s:30:\"can_add_remove_project_members\";N;s:21:\"can_approve_inventory\";s:1:\"1\";s:24:\"can_disapprove_inventory\";N;s:18:\"can_edit_inventory\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}'),(82,'Pato','Mark','staff','NBO',0,6,'karukurobert@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'IT : Pragramming',0,NULL,NULL,NULL,'0727869468',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-03-27 00:00:00',0,NULL),(83,'Rob','Kim','staff','MSA',0,2,'bscnrb128917@spu.ac.ke','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'IT : Pragramming',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-03-27 00:00:00',0,NULL),(84,'caro','kim','staff','MSA',0,6,'r.karuku@wizag.biz','25d55ad283aa400af464c76d713c07ad',NULL,'active','','2018-09-11 13:11:33',0,0,'IT : Pragramming',0,NULL,NULL,NULL,'0727869468',NULL,'1998-03-10',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-03-27 00:00:00',0,NULL),(85,'SILVESTER','KUTUTA','staff','Mstr',1,0,'silvester@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Corporate Support : MD/CEO',0,NULL,NULL,NULL,'',NULL,'1966-01-10',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(86,'CATHERINE','LEWA','staff','MSA',0,5,'catherine.lewa@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Accountant Receivable',0,NULL,NULL,NULL,'',NULL,'1980-07-06',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,'a:110:{s:5:\"leave\";N;s:14:\"leave_specific\";s:0:\"\";s:10:\"attendance\";N;s:19:\"attendance_specific\";s:0:\"\";s:9:\"technical\";N;s:14:\"administration\";N;s:8:\"estimate\";N;s:5:\"legal\";N;s:7:\"expense\";N;s:14:\"can_edit_leads\";N;s:16:\"can_delete_leads\";N;s:24:\"can_edit_legal_documents\";N;s:24:\"can_schedule_maintenance\";N;s:26:\"can_delete_legal_documents\";N;s:29:\"can_edit_legal_document_types\";N;s:31:\"can_delete_legal_document_types\";N;s:24:\"can_edit_legal_reminders\";N;s:26:\"can_delete_legal_reminders\";N;s:6:\"client\";s:3:\"all\";s:23:\"can_edit_trimmer_sheets\";N;s:25:\"can_delete_trimmer_sheets\";N;s:13:\"can_edit_fuel\";N;s:15:\"can_delete_fuel\";N;s:23:\"can_view_assets_reports\";N;s:18:\"can_access_outages\";N;s:25:\"can_access_administration\";N;s:16:\"can_access_tasks\";N;s:16:\"can_access_leads\";N;s:19:\"can_access_messages\";N;s:18:\"can_access_planner\";N;s:19:\"can_access_projects\";N;s:19:\"can_access_timecard\";s:1:\"1\";s:20:\"can_access_attendace\";s:1:\"1\";s:23:\"can_access_task_summary\";s:1:\"1\";s:22:\"can_access_day_summary\";N;s:18:\"can_access_tickets\";s:1:\"1\";s:22:\"can_view_knowledgebase\";N;s:24:\"can_access_knowledgebase\";N;s:21:\"can_add_knowledgebase\";N;s:15:\"can_access_team\";N;s:23:\"can_access_team_members\";N;s:16:\"can_access_legal\";N;s:20:\"can_access_documents\";N;s:20:\"can_access_customers\";N;s:16:\"can_access_cases\";N;s:20:\"can_access_defferals\";N;s:28:\"can_access_project_defferals\";N;s:19:\"can_access_accounts\";N;s:20:\"can_access_technical\";N;s:21:\"can_access_preventive\";N;s:19:\"can_access_reactive\";N;s:21:\"can_access_inpections\";N;s:25:\"can_access_warranty_parts\";N;s:23:\"can_access_requisitions\";N;s:18:\"can_access_fueling\";N;s:24:\"can_access_hiring_assets\";N;s:21:\"can_edit_hired_assets\";N;s:23:\"can_delete_hired_assets\";N;s:25:\"can_access_trimmer_sheets\";N;s:19:\"maintenance_reports\";N;s:23:\"can_access_fuel_reports\";N;s:29:\"can_access_technical_settings\";N;s:18:\"can_access_invoice\";N;s:12:\"announcement\";N;s:18:\"can_access_finance\";N;s:19:\"can_access_expenses\";N;s:19:\"can_access_payments\";N;s:26:\"can_access_income_expenses\";N;s:24:\"can_view_support_reports\";N;s:28:\"can_view_third_level_reports\";N;s:19:\"can_view_checklists\";N;s:24:\"can_view_support_tickets\";N;s:27:\"can_view_checklists_reports\";N;s:15:\"can_view_assets\";N;s:27:\"can_view_assets_maintanance\";N;s:35:\"can_view_assets_maintanance_reports\";N;s:25:\"can_view_assets_disposals\";N;s:18:\"can_receive_parcel\";N;s:17:\"can_assign_parcel\";N;s:15:\"can_send_parcel\";N;s:26:\"can_assign_parcel_outwards\";N;s:18:\"can_receive_cheque\";N;s:17:\"can_assign_cheque\";N;s:15:\"can_send_cheque\";N;s:26:\"can_assign_cheque_outwards\";N;s:25:\"can_view_recieved_parcels\";N;s:24:\"can_view_inwards_cheques\";N;s:21:\"can_view_send_cheques\";N;s:25:\"can_view_outwards_cheques\";N;s:25:\"can_view_recieved_cheques\";N;s:24:\"can_view_inwards_parcels\";N;s:21:\"can_view_send_parcels\";N;s:25:\"can_view_outwards_parcels\";N;s:19:\"can_create_projects\";N;s:17:\"can_edit_projects\";N;s:19:\"can_delete_projects\";s:1:\"1\";s:30:\"can_add_remove_project_members\";N;s:21:\"can_approve_inventory\";N;s:24:\"can_disapprove_inventory\";s:1:\"1\";s:18:\"can_edit_inventory\";N;s:16:\"can_create_tasks\";N;s:14:\"can_edit_tasks\";N;s:16:\"can_delete_tasks\";N;s:20:\"can_comment_on_tasks\";N;s:21:\"can_create_milestones\";N;s:19:\"can_edit_milestones\";N;s:21:\"can_delete_milestones\";N;s:16:\"can_delete_files\";N;s:34:\"can_view_team_members_contact_info\";N;s:34:\"can_view_team_members_social_links\";N;}'),(87,'MOURINE','MAGERO','staff','NBO',0,2,'mourine.magero@esl-eastafrica.com','a1865fe9424dc3b2726681dedb55f21e',NULL,'active','',NULL,0,0,'Corporate Support : Administration Officer',0,NULL,NULL,NULL,'',NULL,'1984-01-24',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(88,'CATHERINE','THUO','staff','NBO',0,9,'catherine.thuo@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Corporate Support : Administration Officer',0,NULL,NULL,NULL,'',NULL,'1976-01-11',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(89,'WILLINGTONE','WARIO','staff',NULL,0,2,'wario@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Accounts Payables',0,NULL,NULL,NULL,'',NULL,'1985-05-05',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(90,'ALOICE','KUTUTA','staff',NULL,0,9,'aloice@esl-eastfarica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Corporate Support : Legal Manager',0,NULL,NULL,NULL,'',NULL,'1981-01-06',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(91,'MAUREEN','OPIYO','staff',NULL,0,2,'maurine.atieno@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Country Operations Manager',0,NULL,NULL,NULL,'',NULL,'1984-06-26',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(92,'ISAAC','WATKINS','staff',NULL,1,2,'watkins@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Technical : Technical Manager',0,NULL,NULL,NULL,'',NULL,'1961-08-16',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(93,'CHRISPUS','KILEI','staff',NULL,0,2,'chrispus.kilei@esl-east africa.co','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Technical : Technical Supervisor',0,NULL,NULL,NULL,'',NULL,'1970-04-24',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(94,'EVANS','CHIBUNGU','staff',NULL,1,0,'evans.ngala@esl-eastafrica.com','d09212be54ca49542b2a98d4615d2ad1','_file5add73880ceb5-avatar.png','active','',NULL,0,0,'Corporate Support : ICT Manager',0,NULL,'P. O. Box 2920 - 80100\nMombasa, Kenya','','+254 722 954119','','1985-09-22','','male',NULL,'evans.ngala',1,1,'/petty_cash','2018-04-12 00:00:00',0,NULL),(95,'LEONARD','BAYA','staff',NULL,0,2,'bayamleonard@gmail.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Supervisor',0,NULL,NULL,NULL,'',NULL,'1974-03-06',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(96,'MARTIN','IKIARA','staff',NULL,0,2,'martin.karani@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Finance : Group Chief Finance Officer',0,NULL,NULL,NULL,'',NULL,'1979-06-05',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(97,'DANIEL','WANIKINA','staff',NULL,0,9,'3transport@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Technical : Machine Operator',0,NULL,NULL,NULL,'',NULL,'1988-06-22',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(98,'ERICKSON','NGELE','staff',NULL,0,9,'1transport@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Technical : Machine Operator',0,NULL,NULL,NULL,'',NULL,'1979-03-02',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(99,'LENROD','MGENDI','staff',NULL,1,9,'lenrod.mwamburi@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Audit, Risk and Compliance : Group Internal Audit Risk & Compliance Officer',0,NULL,NULL,NULL,'',NULL,'1979-06-13',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(100,'JOHN','LAGAT','staff',NULL,0,2,'it.support@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e','_file5acf61ea82a24-avatar.png','active','',NULL,0,0,'Corporate Support : ICT Assistant',0,NULL,NULL,NULL,'',NULL,'1981-11-27',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(101,'JOYLINAH','NJERI','staff',NULL,0,2,'joylinah.nduta@esl-eastafica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Corporate Support : Procurement Officer',0,NULL,NULL,NULL,'',NULL,'1986-10-20',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(102,'STEPHEN','OMONDI','staff',NULL,0,2,'stephen.okiki@esl-eastafrica.com','d36df1f218c0dc716e09f9436c6d31a4','_file5af2ed85758eb-avatar.png','active','',NULL,0,0,'Corporate Support : HR Assistant',0,NULL,NULL,NULL,'',NULL,'1988-03-20',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(103,'JUSTUS','MUTHEMBWA','staff',NULL,0,2,'2transport@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Technical : Transport Clerk',0,NULL,NULL,NULL,'',NULL,'1975-10-11',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(104,'ERIC OLENSI','OSINYA','staff',NULL,0,2,'erick.osinya@esl','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Transport Clerk',0,NULL,NULL,NULL,'',NULL,'1994-03-12',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(105,'PATRICK','MBUGUA','staff',NULL,0,2,'patrick.mbugua.esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Credit Controller',0,NULL,NULL,NULL,'',NULL,'1987-08-11',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(106,'RAYMOND','WANGUNDA','staff',NULL,0,2,'ops@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Boarding Clerk',0,NULL,NULL,NULL,'',NULL,'1987-08-07',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(107,'FLORENCE','TUEI','staff',NULL,0,2,'florence.tuei@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Country Sales & Marketing Manager',0,NULL,NULL,NULL,'',NULL,'1977-08-20',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(108,'KENNEDY','KIVUVANI','staff',NULL,0,2,'kennedy.kivuvani@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Business Development Manager',0,NULL,NULL,NULL,'',NULL,'1966-12-23',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(109,'GRACE','MPOYA','staff',NULL,0,2,'grace.mpoya@esl-eastafrica.com','2fc5b0ed2f35bc8372917841f43fe61c',NULL,'active','',NULL,0,0,'Operations : Customer Service Executive - Ops',0,NULL,NULL,NULL,'',NULL,'1977-12-12',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(110,'ERIC','KYALO','staff',NULL,0,2,'audit@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Audit, Risk and Compliance : Audit Assistant',0,NULL,NULL,NULL,'',NULL,'1994-01-12',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(111,'IRENE','OTIENO','staff',NULL,0,2,'irene.atieno@esl-eastarica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Accounts Payales',0,NULL,NULL,NULL,'',NULL,'1987-05-28',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(112,'MERCYLINE','MUTUA','staff',NULL,0,2,'mercyline.mutua@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Accountant Payable',0,NULL,NULL,NULL,'',NULL,'1987-12-14',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(113,'ARSHUR','OWANE','staff',NULL,0,2,'lomo.owane@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Sales Support Executive',0,NULL,NULL,NULL,'',NULL,'1985-10-15',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(114,'COLLINS','PAMBA','staff',NULL,0,2,'collinspamba@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Accounts Receivables',0,NULL,NULL,NULL,'',NULL,'1986-04-02',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(115,'GULJAN','RAMADHAN','staff',NULL,0,2,'1ops@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Customer Service Executive - Agency',0,NULL,NULL,NULL,'',NULL,'1992-05-04',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(116,'FRANCIS','OPALO','staff',NULL,0,2,'francis.opalo@esl-eastafrica.com','d0ab7fe6c314f4fe5b6c18a0157c96b4',NULL,'active','',NULL,0,0,'Operations : Port Agency Manager',0,NULL,NULL,NULL,'',NULL,'1972-06-12',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(117,'PETER','MANGA','staff',NULL,0,2,'peter.manga@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Corporate Support : HR Clerk',0,NULL,NULL,NULL,'',NULL,'1994-10-30',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(118,'LAWRENCE','AMENYA','staff',NULL,0,2,'lawrence.amenya@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Officer',0,NULL,NULL,NULL,'',NULL,'1991-02-27',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(119,'MOSES','MANGALE','staff',NULL,0,2,'1kennedy.kivuvani@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Officer',0,NULL,NULL,NULL,'',NULL,'1986-01-01',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(120,'MOUREEN','KIAMA','staff',NULL,0,2,'mourine.kiama@esl-eastafrica','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Key Accounts Executive',0,NULL,NULL,NULL,'',NULL,'1991-09-18',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(121,'Benson','Ireri','staff',NULL,0,2,'agency@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(122,'FANUEL','ONYANGO','staff',NULL,0,2,'fanuel.onyango@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Key Accounts Executive',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-12 00:00:00',0,NULL),(123,'FRANCISCA','NZIOKA','staff',NULL,0,2,'francisca@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Corporate Support : HR & Admin Manager',0,NULL,NULL,NULL,'',NULL,'1974-04-16',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-13 00:00:00',0,NULL),(146,'JESINTA','NJOROGE','staff','MSA',0,2,'intern@esl.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : ICT Intern',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-23 00:00:00',0,NULL),(147,'WAYNE','NDAKALA','staff',NULL,0,2,'wayne@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Finance Intern',0,NULL,NULL,NULL,'',NULL,'1992-10-03',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-23 00:00:00',0,NULL),(148,'GEORGE','OMORE','staff',NULL,0,2,'intern@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Intern',0,NULL,NULL,NULL,'',NULL,'1995-12-08',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-23 00:00:00',0,NULL),(149,'BILHA','OMUDI','staff',NULL,0,2,'internEsl@intern.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Finance : Finance Intern',0,NULL,NULL,NULL,'',NULL,'1994-04-12',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-04-23 00:00:00',0,NULL),(151,'PATRICK','MAGIRI','staff',NULL,0,2,'patrick.murangiri@esl-eastafica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Sales & Marketing : Business Development Manager',0,NULL,NULL,NULL,'',NULL,'1977-12-01',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-23 00:00:00',0,NULL),(152,'WASHINGTONE','MASEGHE','staff',NULL,0,2,'washingtone.mwamburi@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Administration Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-26 00:00:00',0,NULL),(153,'JOSEPH','MATHEKA','staff',NULL,0,2,'joseph.matheka@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Administration Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-04-26 00:00:00',0,NULL),(156,'AHMED','AHMED','staff',NULL,0,1,'2intern@esl-eastafrica.com','e10adc3949ba59abbe56e057f20f883e',NULL,'active','',NULL,0,0,'Corporate Department : ICT Intern',0,NULL,NULL,NULL,'',NULL,'1994-11-23',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-07 00:00:00',0,NULL),(157,'PAUL','MUSYOKA','staff',NULL,0,2,'3intern@esl-eastafrica.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operations Intern',0,NULL,NULL,NULL,'',NULL,'1994-10-14',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-07 00:00:00',0,NULL),(158,'SALIM','CHARO','staff',NULL,0,2,'salim.sulubu@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Declaration Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(159,'MOSES','SHIKHONGA','staff',NULL,0,2,'moses.shikhonga@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Forwarding Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(160,'RODGERS','WEKESA','staff',NULL,0,2,'rodgers.wekesa@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Forwarding Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(161,'CHRISTINE','GEMA','staff',NULL,0,2,'christine.gema@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Operation Supervisor - Forwarding',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(162,'DOMINIC','MUTHUI','staff',NULL,0,2,'dominic.muthui@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Forwarding Clerk',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(163,'PHIDES','MWAMKITA','staff',NULL,0,2,'phides.laura@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Forwarding Clerk',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-05-10 00:00:00',0,NULL),(164,'ALOIS','DAVID','staff',NULL,0,2,'aloise.mutua@freightwell.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Forwarding Clerk',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-11 00:00:00',0,NULL),(165,'PAULINE','KARWIRWA','staff',NULL,0,2,'pauline.karwirwa@sovereinlog.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Logistics Manager',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-05-11 00:00:00',0,NULL),(166,'CLIFFORD','NYAKUNDI','staff',NULL,0,2,'clifford.nyakundi@sovereignlog.com','25d55ad283aa400af464c76d713c07ad',NULL,'active','',NULL,0,0,'Operations : Logistics Officer',0,NULL,NULL,NULL,'',NULL,NULL,NULL,'male',NULL,NULL,1,1,'/dashboard','2018-05-11 00:00:00',0,NULL),(169,'JACKLINE','WAWERU','staff',NULL,0,2,'intern@sovereignlog.om','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Intern (Operations) ',0,NULL,NULL,NULL,'04122297846',NULL,'1994-10-29',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-03 00:00:00',0,NULL),(170,'PHANICE','OMUNANJE','staff',NULL,0,2,'intern@freightwell.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Intern (Operations) ',0,NULL,NULL,NULL,'0412224822',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-03 00:00:00',0,NULL),(171,'RUKHSAR','MULJI','staff',NULL,0,2,'lega.intern@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Intern (Corporate Department) ',0,NULL,NULL,NULL,'0412224822',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-03 00:00:00',0,NULL),(172,'SALOME','ACHOLA','staff',NULL,0,2,'ict.intern@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'ICT Intern (Corporate Department) ',0,NULL,NULL,NULL,'0412224822',NULL,NULL,NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-03 00:00:00',0,NULL),(174,'ALOICE','KUTUTA','staff',NULL,0,2,'aloice@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Legal Manager (Corporate Department) ',0,NULL,NULL,NULL,'0722443845',NULL,'1981-01-06',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(175,'CHRISPUS','KILEI','staff',NULL,0,2,'chrispus.kilei@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Technical Supervisor (Operations) ',0,NULL,NULL,NULL,'0722603899',NULL,'1970-04-24',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(176,'LEONARD','BAYA','staff',NULL,0,2,'leonard.baya@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Supervisor (Operations) ',0,NULL,NULL,NULL,'0722268547',NULL,'1974-03-06',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(177,'JOHN','LAGAT','staff',NULL,0,2,'john.lagat@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'ICT Assistant (Corporate Department) ',0,NULL,NULL,NULL,'0721861177',NULL,'1981-11-27',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(178,'JOYLINAH','NJERI','staff',NULL,0,2,'joylinah.nduta@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Procurement Officer (Corporate Department) ',0,NULL,NULL,NULL,'0733427472',NULL,'1986-10-20',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(179,'DANIEL','WANIKINA','staff',NULL,0,2,'daniel.lukorito@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Machine Operator (Operations) ',0,NULL,NULL,NULL,'788762439',NULL,'1988-06-22',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(180,'JUSTUS','MUTHEMBWA','staff',NULL,0,2,'justus.muthembwa@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Transport Clerk (Operations) ',0,NULL,NULL,NULL,'0720660139',NULL,'1975-10-11',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(181,'PATRICK','MBUGUA','staff',NULL,0,2,'patrick.mbugua@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Credit Controller (Finance) ',0,NULL,NULL,NULL,'0729394422',NULL,'1987-08-11',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(182,'RAYMOND','WANGUNDA','staff',NULL,0,2,'raymond.wangunda@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Customer Service Executive - Agency (Operations) ',0,NULL,NULL,NULL,'0713801118',NULL,'1987-08-07',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(183,'KENNEDY','KIVUVANI','staff',NULL,0,2,'kennedy.kivuvani@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Business Development Manager (Sales & Marketing) ',0,NULL,NULL,NULL,'0736350109',NULL,'1966-12-23',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(184,'ERIC','OSINYA','staff',NULL,0,2,'erick.osinya@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Transport Clerk (Operations) ',0,NULL,NULL,NULL,'0701907620',NULL,'1994-03-12',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(185,'CATHERINE','THUO','staff',NULL,0,2,'catherine.thuo@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Administration Officer (Corporate Department) ',0,NULL,NULL,NULL,'0723063257',NULL,'1976-01-11',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(186,'ERIC','KYALO','staff',NULL,0,2,'eric.mulwa@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Audit Assistant (Audit, Risk and Compliance) ',0,NULL,NULL,NULL,'0713044993',NULL,'1994-01-12',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(187,'IRENE','OTIENO','staff',NULL,0,2,'irene.atieno@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Assistant Accountant - Payable (Finance) ',0,NULL,NULL,NULL,'0705050089',NULL,'1987-05-28',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(188,'MERCYLINE','MUTUA','staff',NULL,0,2,'mercyline.mutua@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Accounts Manager - Payable (Finance) ',0,NULL,NULL,NULL,'0726987322',NULL,'1987-12-14',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(189,'COLLINS','PAMBA','staff',NULL,0,2,'collins.pamba@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Assistant Accountant -  Receivable. (Finance) ',0,NULL,NULL,NULL,'0704494471',NULL,'1986-04-02',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(190,'GULJAN','RAMADHAN','staff',NULL,0,2,'guljan.abubakar@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Customer Service Executive - Agency (Operations) ',0,NULL,NULL,NULL,'0708817771',NULL,'1992-05-04',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(191,'MOSES','MANGALE','staff',NULL,0,2,'moses.mangale@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Officer (Operations) ',0,NULL,NULL,NULL,'0724332994',NULL,'1986-01-01',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(192,'MOUREEN','KIAMA','staff',NULL,0,2,'wairimu.kiama@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Key Accounts Executive (Sales & Marketing) ',0,NULL,NULL,NULL,'0721868010',NULL,'1991-09-18',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(193,'ERICKSON','NGELE','staff',NULL,0,2,'erickson.mwaniki@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Machine Operator (Operations) ',0,NULL,NULL,NULL,'0702497636',NULL,'1979-03-02',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(194,'BENSON','IRERI','staff',NULL,0,2,'benson.ireri@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Officer (Operations) ',0,NULL,NULL,NULL,'0412229784',NULL,'1992-12-29',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(195,'GEORGE','OMORE','staff',NULL,0,2,'1intern@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Operations Intern (Operations) ',0,NULL,NULL,NULL,'',NULL,'1995-12-08',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(196,'WILLINGTONE','WARIO','staff',NULL,0,2,'willingtone.wario@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Assistant Accountant - Payable (Finance) ',0,NULL,NULL,NULL,'',NULL,'1985-05-05',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(197,'BILHA','OMUDI','staff',NULL,0,2,'bilha.amagove@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Accounts Officer (Finance) ',0,NULL,NULL,NULL,'041-2228794/6',NULL,'1994-12-04',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(198,'JESINTA','NJOROGE','staff',NULL,0,2,'jesinta.njeri@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Administrative Officer (Corporate Department) ',0,NULL,NULL,NULL,'0412229784',NULL,'1996-03-10',NULL,'female',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(201,'AHMED','AHMED','staff',NULL,0,2,'ahmed.abdulrahman@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Digital Marketing Executive (Sales & Marketing) ',0,NULL,NULL,NULL,'041-2228794/6',NULL,'1994-11-23',NULL,'male',NULL,NULL,1,1,'/dashboard','2018-09-25 00:00:00',0,NULL),(202,'NEOFETAH','KAMANGE','staff',NULL,0,2,'neofetah.kamange@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'Doccumentation Officer (Operations) ',0,NULL,NULL,NULL,'041-2228794/6',NULL,'1990-05-19',NULL,'female',NULL,NULL,1,1,'/dashboard','2019-03-28 00:00:00',0,NULL),(203,'RUQEYA','JUSAB','staff',NULL,0,2,'hr@esl-eastafrica.com','d41d8cd98f00b204e9800998ecf8427e',NULL,'active','',NULL,0,0,'HR Intern (Corporate Department) ',0,NULL,NULL,NULL,'0412229784',NULL,'1996-11-09',NULL,'female',NULL,NULL,1,1,'/dashboard','2019-03-28 00:00:00',0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_details`
--

DROP TABLE IF EXISTS `vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_details`
--

LOCK TABLES `vehicle_details` WRITE;
/*!40000 ALTER TABLE `vehicle_details` DISABLE KEYS */;
INSERT INTO `vehicle_details` VALUES (1,'NISSAN','KVW 567Y','brand new','2018-02-22 01:36:30',NULL,0),(2,'PRADO','KCA 679P','MODERN','2018-02-22 01:36:30',NULL,0);
/*!40000 ALTER TABLE `vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warranties`
--

DROP TABLE IF EXISTS `warranties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warranties` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `part_no` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `warranty_period` varchar(255) NOT NULL,
  `asset` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warranties`
--

LOCK TABLES `warranties` WRITE;
/*!40000 ALTER TABLE `warranties` DISABLE KEYS */;
/*!40000 ALTER TABLE `warranties` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-03 14:59:12
