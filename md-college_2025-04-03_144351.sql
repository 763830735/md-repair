-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: md-college
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `app_list`
--

DROP TABLE IF EXISTS `app_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_list` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Name` varchar(255) DEFAULT NULL,
  `IconBase64` text COMMENT 'app的图标',
  `ClassName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_list`
--

/*!40000 ALTER TABLE `app_list` DISABLE KEYS */;
INSERT INTO `app_list` VALUES (11,'报修','data:image/png;base64,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','Repair');
/*!40000 ALTER TABLE `app_list` ENABLE KEYS */;

--
-- Table structure for table `job_email`
--

DROP TABLE IF EXISTS `job_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_email` (
  `Id` int NOT NULL,
  `Job` varchar(255) DEFAULT NULL COMMENT '职责',
  `Email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_email`
--

/*!40000 ALTER TABLE `job_email` DISABLE KEYS */;
INSERT INTO `job_email` VALUES (1,'后勤维修员','md_college_hqgly@163.com'),(2,'机房管理员','md_college_jfgly@163.com'),(3,'电教管理员','md_college_djgly@163.com'),(4,'网络管理员','md_college_wlgly@163.com'),(5,'电工','md_college_dg@163.com'),(6,'系统管理员','19825085432@163.com');
/*!40000 ALTER TABLE `job_email` ENABLE KEYS */;

--
-- Table structure for table `job_list`
--

DROP TABLE IF EXISTS `job_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_list` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL COMMENT '职业名称',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_list`
--

/*!40000 ALTER TABLE `job_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_list` ENABLE KEYS */;

--
-- Table structure for table `repair_list`
--

DROP TABLE IF EXISTS `repair_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_list` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` int DEFAULT NULL COMMENT '用户id',
  `Name` varchar(255) DEFAULT NULL COMMENT '保修单中的姓名',
  `Tel` varchar(255) DEFAULT NULL COMMENT '报修单中的联系方式 可以多些 用空格隔开',
  `Detail` varchar(255) DEFAULT NULL COMMENT '报修详情',
  `Image` longtext COMMENT '多张照片的base64格式,用|拼接起来',
  `ToUserId` int DEFAULT NULL COMMENT '处理报修的师傅id',
  `CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '报修单创建时间',
  `KnowTime` datetime DEFAULT NULL COMMENT '师傅看到的时间',
  `CompleteTime` datetime DEFAULT NULL COMMENT '处理完成或者搁置时间',
  `IsComplete` int DEFAULT '0' COMMENT '0-未处理,1-师傅已经看到,2-用户撤回,3-已经处理完成,4-无法处理报修搁置',
  `Result` varchar(255) DEFAULT NULL COMMENT '故障原因,最终处理结果等等',
  PRIMARY KEY (`Id`),
  KEY `UserId` (`UserId`,`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_list`
--

/*!40000 ALTER TABLE `repair_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `repair_list` ENABLE KEYS */;

--
-- Table structure for table `repair_message`
--

DROP TABLE IF EXISTS `repair_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_message` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `ToUserId` int NOT NULL,
  `Content` text,
  `IsRead` tinyint(1) DEFAULT '0',
  `CreateTime` timestamp NULL DEFAULT NULL,
  `Image` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_message`
--

/*!40000 ALTER TABLE `repair_message` DISABLE KEYS */;
INSERT INTO `repair_message` VALUES (2,1,2,'sad',0,'2025-03-09 10:32:59',''),(3,1,2,'zxc',0,'2025-03-09 12:00:00',NULL),(5,1,3,'112',0,'2025-03-09 04:00:03',NULL),(6,3,1,'zxcsa',0,'2025-03-10 04:00:00',NULL),(7,3,4,NULL,0,NULL,NULL),(8,-1,-1,'故障归属：电教管理员  \n\n原因：该故障发生在教学楼2栋103教室，属于教室内的多媒体设备故障，应由电教管理员负责处理。/n教室2-103电脑打不开/n阿萨德/n阿萨德',0,NULL,''),(9,-1,-2,'电教管理员/n教室106电脑坏了/n阿萨德/n阿萨德',0,NULL,''),(10,-1,-2,'网络管理员\n办公室没网\n阿萨德\n阿萨德',0,NULL,''),(11,-1,-2,'网络管理员\n办公室没网\n阿萨德\n阿萨德',0,NULL,NULL),(12,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,NULL),(13,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,NULL),(14,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,NULL),(15,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,''),(16,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,''),(17,-1,-2,'后勤维修员\n教室椅子坏了\n阿萨德\n阿萨德',0,NULL,NULL),(18,-1,-2,'系统管理员\n我的文具在教室里丢了,申请查看监控\n阿萨德\n19825085432',0,NULL,'');
/*!40000 ALTER TABLE `repair_message` ENABLE KEYS */;

--
-- Table structure for table `responsibility`
--

DROP TABLE IF EXISTS `responsibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsibility` (
  `UserId` int NOT NULL COMMENT '用户id',
  `Res` varchar(255) DEFAULT NULL COMMENT '职责',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsibility`
--

/*!40000 ALTER TABLE `responsibility` DISABLE KEYS */;
INSERT INTO `responsibility` VALUES (1,'信息中心部门,电教管理员,具体负责管理多媒体教室内的电子设备,包括电脑投影功放音响话筒等等,还管理教室内的电脑软件和电脑网络'),(2,'信息中心部门,机房管理员,具体负责机房内的大多数事务,例如电脑设施的软硬件,机房卫生,地板门窗桌椅等等'),(3,'信息中心部门,网络管理员,具体负责校园内的大多数网络维护,例如教师办公室网络,学生宿舍网络'),(4,'后勤部门,电工,负责校园内的电力问题'),(5,'后勤部门,管理者,负责处理各种生活物品的问题,例如教室的门窗破损,教室宿舍的门打不开等等');
/*!40000 ALTER TABLE `responsibility` ENABLE KEYS */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `UserId` int NOT NULL COMMENT '用户id',
  `Role` varchar(255) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

--
-- Table structure for table `to_not_see`
--

DROP TABLE IF EXISTS `to_not_see`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `to_not_see` (
  `id` int NOT NULL,
  `UserId` int DEFAULT NULL,
  `RepairId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_not_see`
--

/*!40000 ALTER TABLE `to_not_see` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_not_see` ENABLE KEYS */;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `UserId` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `Name` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `Tel` varchar(255) DEFAULT NULL COMMENT '用户联系方式(可以多写,中间用空格隔开)',
  `IconBase64` text COMMENT '用户的头像',
  `Job` int DEFAULT NULL COMMENT '用户是教师还是学生',
  `Department` int DEFAULT NULL COMMENT '用户所属部门,如果是学生则是学院',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;

--
-- Table structure for table `user_log_info`
--

DROP TABLE IF EXISTS `user_log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_log_info` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `Account` varchar(16) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `account` (`Account`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户的账户名与密码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log_info`
--

/*!40000 ALTER TABLE `user_log_info` DISABLE KEYS */;
INSERT INTO `user_log_info` VALUES (1,'md106','Amorww2121'),(2,'md107','asd');
/*!40000 ALTER TABLE `user_log_info` ENABLE KEYS */;

--
-- Table structure for table `user_not_see`
--

DROP TABLE IF EXISTS `user_not_see`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_not_see` (
  `id` int NOT NULL,
  `UserId` int DEFAULT NULL,
  `RepairId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_not_see`
--

/*!40000 ALTER TABLE `user_not_see` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_not_see` ENABLE KEYS */;

--
-- Dumping routines for database 'md-college'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03 14:43:54
