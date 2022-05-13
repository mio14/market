-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: marketplace
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.16.04.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubkey` text COLLATE utf8mb4_unicode_ci,
  `coin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('840e0180-28a5-11ea-a685-9921e29ac997','8c2b7280-266d-11ea-9110-87d18817bd6d','2MwMVjByhXtYPF4vKUWSdJp9uxpD57LWw6z',NULL,'btc','2019-12-27 12:36:33','2019-12-27 12:36:33'),('8679d500-28a5-11ea-b3df-5f3ed61b7c9c','baaa2c80-2789-11ea-acb2-4110865c362e','2MtFRWUpxhU6YXZrTgkkjCLhuyC2TbdkRud',NULL,'btc','2019-12-27 12:36:37','2019-12-27 12:36:37'),('c6b28250-28a1-11ea-952d-5f377109371f','6395bda0-27ab-11ea-a4fb-dfef405b6816','n4SyXuSpLG3pPGa26X12AWY88vYy3kSRgF',NULL,'btc','2019-12-27 12:09:47','2019-12-27 12:09:47');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `admins_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('6395bda0-27ab-11ea-a4fb-dfef405b6816','2019-12-26 06:46:05','2019-12-26 06:46:05');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balances` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `btcAddress` text,
  `amount` varchar(255) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `Totalamount` varchar(255) DEFAULT NULL,
  `paymentType` varchar(255) DEFAULT NULL,
  `Currentbalance` varchar(255) DEFAULT NULL,
  `SellBalance` varchar(255) DEFAULT NULL,
  `BuyBalance` varchar(255) DEFAULT NULL,
  `withdrawalsBalance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES ('77d8b420-3d17-11ea-afbd-c3dfec555a65','2020-01-22 13:02:39','2020-01-31 07:00:28','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8',NULL,'baaa2c80-2789-11ea-acb2-4110865c362e','0.0034','BTC','0.0032706099999999998','0.00011324','0.00024263000000000003',NULL),('552270a0-3d19-11ea-ae10-9907e86b6e03','2020-01-22 13:16:00','2020-01-31 04:28:20','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW',NULL,'954937d0-3b7f-11ea-b750-310488e4b060','0.0053','BTC','0.00183082',NULL,'0.00046918','0.003'),('88f7c790-3d30-11ea-aa2a-cf493a94a85a','2020-01-22 16:02:05','2020-01-29 07:18:25','2N8jzUexMpytnPLLpHzfszDBYoREy69kesg',NULL,'bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','0.0071','BTC','0.00164277',NULL,'0.00045723','0.005'),('147fc680-3e04-11ea-b8d0-2f2731f50921','2020-01-23 17:16:23','2020-01-30 08:32:14','2N6GTWPbyQNLZq4hAE1yoRW74K1KaotnDCQ',NULL,'6395bda0-27ab-11ea-a4fb-dfef405b6816','0','BTC','0.0002214','0.0002214',NULL,NULL),('98520180-40d5-11ea-a8ad-0b537cfc5670','2020-01-27 07:21:11','2020-01-31 07:00:28','2NEfcfRD4YbMvAnvLLQs5ff6AczAUTUmqkZ',NULL,'3dec9ee0-39c8-11ea-a240-6f630e9c5404','0.00001','BTC','0.00001',NULL,NULL,NULL),('3028aa20-40e7-11ea-b3e0-b350b18d4f17','2020-01-27 09:27:07','2020-01-31 07:00:28','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d',NULL,'bd49b450-40e6-11ea-a0f2-c7291a5ebca3','0.03931969','BTC','0.03945501999999998','0.04278076','0.00043852','0.042206910000000014'),('2ffb14a0-410b-11ea-ac02-99a3bcec8190','2020-01-27 13:44:49','2020-01-30 06:52:20','2Mva89dKjvup1knHDZe3G9v7bBHs2cZZD5r',NULL,'592effc0-2913-11ea-9ed0-3fca0cfc0b17','0','BTC','0.00278034',NULL,'-0.00278034',NULL),('9551f550-423c-11ea-97cb-f79a69feddad','2020-01-29 02:10:55','2020-01-31 07:00:28','2Mt1muaNCptdEFwRynyGUgVGU83FDrbNRZ8',NULL,'556b63d0-423c-11ea-b78b-f774d6cc9e09','0.01991452','BTC','0.001041540000000004',NULL,'0.00808715','0.01078583'),('b3e1a9e0-4295-11ea-9151-078c3e040744','2020-01-29 12:48:52','2020-01-29 12:48:52','2N6uQk8cQjTtkGUQxT9pxwJKRN156GDL7Q9',NULL,'46665650-4295-11ea-b806-8dbfa6cf7ea8','0','BTC','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `until` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bans_user_id_foreign` (`user_id`),
  CONSTRAINT `bans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('077fba10-42ca-11ea-a7f8-19c7518f06d2',NULL,'Drugs => Benzodiazepines','2020-01-29 19:03:26','2020-01-29 19:03:26'),('07dd5270-42c6-11ea-aaa4-7d997f599d54','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Hashish','2020-01-29 18:34:49','2020-01-29 18:34:49'),('07f93580-42c7-11ea-946c-f3181286eb11','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Seeds','2020-01-29 18:41:58','2020-01-29 18:41:58'),('0c8fc910-42cb-11ea-9bdd-4bcead4c89f4','ff990eb0-42ca-11ea-8d64-29eaf3e07aea','Tobacco','2020-01-29 19:10:44','2020-01-29 19:10:44'),('11677ea0-42ca-11ea-8d82-7bd2130aea9b','077fba10-42ca-11ea-a7f8-19c7518f06d2','Pills','2020-01-29 19:03:43','2020-01-29 19:03:43'),('13dfcf60-42cb-11ea-b604-b15d53e3fcbb','ff990eb0-42ca-11ea-8d64-29eaf3e07aea','Weight loss','2020-01-29 19:10:56','2020-01-29 19:10:56'),('15662d00-42c7-11ea-995f-99cdeca9ac44','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Shake','2020-01-29 18:42:21','2020-01-29 18:42:21'),('1ae851b0-42ca-11ea-a1fa-972857506826','077fba10-42ca-11ea-a7f8-19c7518f06d2','Powder','2020-01-29 19:03:59','2020-01-29 19:03:59'),('1e2d5f20-42c7-11ea-bfbc-8b5c6f9c6841','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Synthetic','2020-01-29 18:42:36','2020-01-29 18:42:36'),('216af5a0-42ca-11ea-8078-5fdfc52e48e8','077fba10-42ca-11ea-a7f8-19c7518f06d2','RC','2020-01-29 19:04:09','2020-01-29 19:04:09'),('29073c10-42c9-11ea-8c49-b3bcd8e0e20a','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Pressed Pills','2020-01-29 18:57:13','2020-01-29 18:57:46'),('2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff',NULL,'Drugs Stimulants / Speed','2020-01-29 18:50:06','2020-01-29 18:50:06'),('2dfa9700-42ca-11ea-97ca-33f175520050',NULL,'Drugs => Psychedelic','2020-01-29 19:04:31','2020-01-29 19:04:31'),('357b86c0-42ca-11ea-b82e-5d7cfafafdde','2dfa9700-42ca-11ea-97ca-33f175520050','LSD','2020-01-29 19:04:43','2020-01-29 19:04:43'),('373dcaf0-42c7-11ea-a8c4-d5e63abce333','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Prerolls','2020-01-29 18:43:18','2020-01-29 18:43:18'),('3bb76350-42ca-11ea-85a7-4d066b23baea','2dfa9700-42ca-11ea-97ca-33f175520050','DMT','2020-01-29 19:04:54','2020-01-29 19:04:54'),('481933e0-42c9-11ea-8546-0bd834c81621','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Altro RCs','2020-01-29 18:58:05','2020-01-29 18:58:05'),('48c8e340-42c7-11ea-90fc-cd2929c6b3f7','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Topicals','2020-01-29 18:43:47','2020-01-29 18:43:47'),('509e9fe0-42ca-11ea-83a1-15d339769468','2dfa9700-42ca-11ea-97ca-33f175520050','Mescaline','2020-01-29 19:05:29','2020-01-29 19:05:29'),('53d8c260-42c8-11ea-9b3e-8b30b6242125','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Cocaine','2020-01-29 18:51:15','2020-01-29 18:51:15'),('5a4b3140-42c7-11ea-b6c5-577c56341d6c','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Altros','2020-01-29 18:44:16','2020-01-29 18:44:16'),('5bcda280-42c8-11ea-ba1e-678bcf75c302','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Speed','2020-01-29 18:51:28','2020-01-29 18:51:28'),('5f610f10-42c9-11ea-95ba-333918cd35a2',NULL,'Drugs => Ecstasy','2020-01-29 18:58:44','2020-01-29 18:58:44'),('5fd44640-42ca-11ea-9f15-b3c568156df0','2dfa9700-42ca-11ea-97ca-33f175520050','LSA','2020-01-29 19:05:54','2020-01-29 19:05:54'),('63653b20-42c8-11ea-b685-cdbaa1b99612','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Meth','2020-01-29 18:51:41','2020-01-29 18:51:41'),('6a790910-42ca-11ea-99fe-75427441c701','2dfa9700-42ca-11ea-97ca-33f175520050','DMA / DOX','2020-01-29 19:06:12','2020-01-29 19:06:12'),('6a990500-42c8-11ea-84b9-95680c6903ee','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Crack','2020-01-29 18:51:53','2020-01-29 18:51:53'),('734f8e70-42c9-11ea-9719-15765b796640','5f610f10-42c9-11ea-95ba-333918cd35a2','Pills','2020-01-29 18:59:17','2020-01-29 18:59:17'),('73f73150-42ca-11ea-acf1-5baf5ede5c7c','2dfa9700-42ca-11ea-97ca-33f175520050','NBOME','2020-01-29 19:06:28','2020-01-29 19:06:28'),('7b252520-42c9-11ea-b8e4-0dac709a38dc','5f610f10-42c9-11ea-95ba-333918cd35a2','MDMA','2020-01-29 18:59:31','2020-01-29 18:59:31'),('8082db00-42ca-11ea-9527-f37abf4b6501','2dfa9700-42ca-11ea-97ca-33f175520050','2C-B','2020-01-29 19:06:49','2020-01-29 19:06:49'),('90891ab0-42c9-11ea-aa91-2d79246b6bbb','5f610f10-42c9-11ea-95ba-333918cd35a2','MDA','2020-01-29 19:00:06','2020-01-29 19:00:06'),('97b19320-42c9-11ea-91aa-4d2414f8b969','5f610f10-42c9-11ea-95ba-333918cd35a2','Methylone','2020-01-29 19:00:18','2020-01-29 19:00:18'),('9b59ddb0-42ca-11ea-85f9-ef9d246e6c59','2dfa9700-42ca-11ea-97ca-33f175520050','Mushrooms','2020-01-29 19:07:34','2020-01-29 19:07:34'),('a0c8b6e0-42c8-11ea-a594-31337b5c0584','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','Adderal / Vyvanse','2020-01-29 18:53:24','2020-01-29 18:53:49'),('ac497b20-42ca-11ea-97c9-a577e714206d',NULL,'Drugs => Prescriptions','2020-01-29 19:08:02','2020-01-29 19:08:02'),('b21f1780-42c9-11ea-baf9-fb3d545acac4',NULL,'Drugs => Opiates','2020-01-29 19:01:03','2020-01-29 19:01:03'),('bfcc5fb0-42ca-11ea-b661-1959a48f8a98','ac497b20-42ca-11ea-97c9-a577e714206d','Steroids','2020-01-29 19:08:35','2020-01-29 19:08:35'),('c31d3a00-42c8-11ea-8b9e-39e32af38d37','2ad14c90-42c8-11ea-b89e-cb20e9cbe6ff','2-FA','2020-01-29 18:54:22','2020-01-29 18:54:22'),('cb87ca00-42ca-11ea-8ac7-25c4e731a44b',NULL,'Drugs => Disassociatives','2020-01-29 19:08:55','2020-01-29 19:08:55'),('cbfe2560-42c6-11ea-9bc4-53e7ab9cae0b','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Buds','2020-01-29 18:40:18','2020-01-29 18:40:18'),('d1eda8e0-42c9-11ea-8f40-f962d9487119','b21f1780-42c9-11ea-baf9-fb3d545acac4','Pills','2020-01-29 19:01:56','2020-01-29 19:01:56'),('d213dc50-42ca-11ea-a446-b5f6a9cc4f14','cb87ca00-42ca-11ea-8ac7-25c4e731a44b','Ketamine','2020-01-29 19:09:06','2020-01-29 19:09:06'),('d28f68e0-42c6-11ea-97f2-7511f6b08544','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Flowers','2020-01-29 18:40:29','2020-01-29 18:40:29'),('da6c6ed0-42ca-11ea-b521-6d28b17e5c65','cb87ca00-42ca-11ea-8ac7-25c4e731a44b','MXE','2020-01-29 19:09:20','2020-01-29 19:09:20'),('e4de3ce0-42ca-11ea-bdd9-9b04bc136eb2','cb87ca00-42ca-11ea-8ac7-25c4e731a44b','GHB','2020-01-29 19:09:37','2020-01-29 19:09:37'),('e50c3d70-42c5-11ea-8d64-c3177f1b4211',NULL,'Drugs Cannabis / Hashish','2020-01-29 18:33:50','2020-01-29 18:50:28'),('eb4164a0-42c6-11ea-aa0c-1b8e357d0d24','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Concentrates','2020-01-29 18:41:10','2020-01-29 18:41:10'),('ebd005c0-42c9-11ea-bf28-49df47dc495d','b21f1780-42c9-11ea-baf9-fb3d545acac4','Heroin','2020-01-29 19:02:40','2020-01-29 19:02:40'),('f0ba9dc0-42ca-11ea-aaca-bfea1ba8f553','cb87ca00-42ca-11ea-8ac7-25c4e731a44b','Other','2020-01-29 19:09:57','2020-01-29 19:09:57'),('f2a91b60-42c9-11ea-9650-33e2e0205203','b21f1780-42c9-11ea-baf9-fb3d545acac4','RCs','2020-01-29 19:02:51','2020-01-29 19:02:51'),('fc7a5e80-42c6-11ea-b780-0de422b741ff','e50c3d70-42c5-11ea-8d64-c3177f1b4211','Edibles','2020-01-29 18:41:39','2020-01-29 18:41:39'),('ff990eb0-42ca-11ea-8d64-29eaf3e07aea',NULL,'Drugs => Accessories','2020-01-29 19:10:22','2020-01-29 19:10:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversations_sender_id_foreign` (`sender_id`),
  KEY `conversations_receiver_id_foreign` (`receiver_id`),
  CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES ('89278110-425e-11ea-9b84-dd908f9ed732','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','baaa2c80-2789-11ea-acb2-4110865c362e','2020-01-29 06:13:58','2020-01-30 03:14:38'),('a13d4ce0-4260-11ea-8919-63fd94f20ca0','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','954937d0-3b7f-11ea-b750-310488e4b060','2020-01-29 06:28:57','2020-01-30 03:14:55');
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_products`
--

DROP TABLE IF EXISTS `digital_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autodelivery` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `digital_products_id_foreign` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_products`
--

LOCK TABLES `digital_products` WRITE;
/*!40000 ALTER TABLE `digital_products` DISABLE KEYS */;
INSERT INTO `digital_products` VALUES ('6097a7b0-4328-11ea-a3c4-1f09b43c1ec4',1,'igital product','2020-01-30 06:20:46','2020-01-30 08:23:14');
/*!40000 ALTER TABLE `digital_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dispute_messages`
--

DROP TABLE IF EXISTS `dispute_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispute_messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispute_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dispute_messages_author_id_foreign` (`author_id`),
  KEY `dispute_messages_dispute_id_foreign` (`dispute_id`),
  CONSTRAINT `dispute_messages_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dispute_messages_dispute_id_foreign` FOREIGN KEY (`dispute_id`) REFERENCES `disputes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispute_messages`
--

LOCK TABLES `dispute_messages` WRITE;
/*!40000 ALTER TABLE `dispute_messages` DISABLE KEYS */;
INSERT INTO `dispute_messages` VALUES ('1da637b0-429a-11ea-bfd8-f31b9c2e0994','Salut jai pas recue ma commande','556b63d0-423c-11ea-b78b-f774d6cc9e09','1da60fe0-429a-11ea-99b0-d134d04c6b44','2020-01-29 13:20:27','2020-01-29 13:20:27'),('45e9d660-3dc7-11ea-9dd0-f1144fc88e6d','No any issue','6395bda0-27ab-11ea-a4fb-dfef405b6816','45e9bd30-3dc7-11ea-b829-0ba53715b279','2020-01-23 10:01:06','2020-01-23 10:01:06'),('4705f020-4268-11ea-afe1-a15ed8e11a30','not good quality','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','4705af20-4268-11ea-aac6-a70804c6a16c','2020-01-29 07:23:42','2020-01-29 07:23:42'),('61f5cdb0-42d2-11ea-b798-7538d3bc11ad','problem adress','556b63d0-423c-11ea-b78b-f774d6cc9e09','61f5b5a0-42d2-11ea-825c-a1ce386dcc32','2020-01-29 20:03:14','2020-01-29 20:03:14'),('646a62d0-4256-11ea-a1c1-dd248ff0eb30','invalid user','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','646a4b20-4256-11ea-8b85-895823e0dd67','2020-01-29 05:15:40','2020-01-29 05:15:40'),('c8665fe0-430d-11ea-afcf-4f89dc21ffbb','kdnjfgfygyfgygyfgfygfsy','592effc0-2913-11ea-9ed0-3fca0cfc0b17','c865f0b0-430d-11ea-8250-4f559dc6e49a','2020-01-30 03:08:26','2020-01-30 03:08:26'),('cbb6be00-31ae-11ea-ba4e-a36aa886971b','hello test','592effc0-2913-11ea-9ed0-3fca0cfc0b17','cbb68af0-31ae-11ea-aee3-837bb3c6126b','2020-01-08 00:35:40','2020-01-08 00:35:40'),('d18702d0-4339-11ea-b025-a9500b7f37ce','fake product','954937d0-3b7f-11ea-b750-310488e4b060','d186eb10-4339-11ea-a9f5-2be928c5682e','2020-01-30 08:23:39','2020-01-30 08:23:39'),('dccd0b80-430d-11ea-a9c8-9bd7158ad9e2','hsvhfvhvshvfhsvfhf','6395bda0-27ab-11ea-a4fb-dfef405b6816','c865f0b0-430d-11ea-8250-4f559dc6e49a','2020-01-30 03:09:00','2020-01-30 03:09:00'),('e3509100-3de1-11ea-9c7e-21f3151968e1','no any issue just for testing','6395bda0-27ab-11ea-a4fb-dfef405b6816','e34ff4f0-3de1-11ea-96c1-d9ce734f01de','2020-01-23 13:11:37','2020-01-23 13:11:37');
/*!40000 ALTER TABLE `dispute_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disputes`
--

DROP TABLE IF EXISTS `disputes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disputes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `winner_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disputes_winner_id_foreign` (`winner_id`),
  CONSTRAINT `disputes_winner_id_foreign` FOREIGN KEY (`winner_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disputes`
--

LOCK TABLES `disputes` WRITE;
/*!40000 ALTER TABLE `disputes` DISABLE KEYS */;
INSERT INTO `disputes` VALUES ('1da60fe0-429a-11ea-99b0-d134d04c6b44',NULL,'2020-01-29 13:20:27','2020-01-29 13:20:27'),('45e9bd30-3dc7-11ea-b829-0ba53715b279','6395bda0-27ab-11ea-a4fb-dfef405b6816','2020-01-23 10:01:06','2020-01-23 17:16:23'),('4705af20-4268-11ea-aac6-a70804c6a16c',NULL,'2020-01-29 07:23:42','2020-01-29 07:23:42'),('61f5b5a0-42d2-11ea-825c-a1ce386dcc32',NULL,'2020-01-29 20:03:14','2020-01-29 20:03:14'),('646a4b20-4256-11ea-8b85-895823e0dd67',NULL,'2020-01-29 05:15:40','2020-01-29 05:15:40'),('c865f0b0-430d-11ea-8250-4f559dc6e49a',NULL,'2020-01-30 03:08:26','2020-01-30 03:08:26'),('cbb68af0-31ae-11ea-aee3-837bb3c6126b',NULL,'2020-01-08 00:35:40','2020-01-08 00:35:40'),('d186eb10-4339-11ea-a9f5-2be928c5682e','baaa2c80-2789-11ea-acb2-4110865c362e','2020-01-30 08:23:39','2020-01-30 08:46:11'),('e34ff4f0-3de1-11ea-96c1-d9ce734f01de','6395bda0-27ab-11ea-a4fb-dfef405b6816','2020-01-23 13:11:37','2020-01-23 13:42:56');
/*!40000 ALTER TABLE `disputes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_value` decimal(16,2) NOT NULL,
  `type` enum('positive','neutral','negative') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality_rate` tinyint(4) NOT NULL,
  `communication_rate` tinyint(4) NOT NULL,
  `shipping_rate` tinyint(4) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_vendor_id_foreign` (`vendor_id`),
  KEY `feedback_product_id_foreign` (`product_id`),
  KEY `feedback_buyer_id_foreign` (`buyer_id`),
  CONSTRAINT `feedback_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `feedback_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  CONSTRAINT `feedback_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('3b632bd0-4268-11ea-8ece-b50fa0143963','baaa2c80-2789-11ea-acb2-4110865c362e','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c',NULL,'Test Product',1.02,'positive',4,3,3,'Its good','2020-01-29 07:23:22','2020-01-29 07:23:22'),('783d3af0-28ab-11ea-8fb9-63f818106c7b','baaa2c80-2789-11ea-acb2-4110865c362e','8c2b7280-266d-11ea-9110-87d18817bd6d',NULL,'Test Product',1.02,'positive',5,5,5,'service','2019-12-27 13:19:11','2019-12-27 13:19:11'),('868a60c0-4298-11ea-aa1b-b1ec65512a26','baaa2c80-2789-11ea-acb2-4110865c362e','bd49b450-40e6-11ea-a0f2-c7291a5ebca3',NULL,'Test Product',1.02,'neutral',1,1,1,'test','2020-01-29 13:09:04','2020-01-29 13:09:04'),('bff30910-430d-11ea-abfb-9daebd3813fa','6395bda0-27ab-11ea-a4fb-dfef405b6816','592effc0-2913-11ea-9ed0-3fca0cfc0b17','30ffd140-430d-11ea-80cc-51ea9a802df7','new',1.01,'positive',5,4,5,'Perfect','2020-01-30 03:08:12','2020-01-30 03:08:12');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_product_id_foreign` (`product_id`),
  CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('222df5d0-42cf-11ea-91e9-255eb55305fc','222a0a20-42cf-11ea-bf92-019ec6993384','products/jsn5idgtvfckocaxrf4zsyndxsciksb9.jpg',0,'2020-01-29 19:39:58','2020-01-29 19:39:58'),('7c7ba610-430d-11ea-ad1c-8fe4e7a0cf63','511a9a30-430d-11ea-9283-b5212b0560fe','products/bURD6emc1oS1ARqKOzHHsSdFlIB21FkhPKKEtjXg.jpeg',1,'2020-01-30 03:07:09','2020-01-30 03:07:09'),('7f766520-430d-11ea-9d16-5194e46fe4ca','30ffd140-430d-11ea-80cc-51ea9a802df7','products/iZvwvBOQxOBLqJOHBL20BpEl1tiLLiIca8T8Hp2I.jpeg',1,'2020-01-30 03:06:30','2020-01-30 03:06:30'),('9bda52d0-4328-11ea-85ad-1fc6d26b3ad6','6097a7b0-4328-11ea-a3c4-1f09b43c1ec4','products/jAz8kztJIji1YKsHCA2ggTHRK2FpyvfvnaHK72Xy.jpeg',1,'2020-01-30 06:20:46','2020-01-30 06:20:46'),('a4066550-42ce-11ea-ba83-9b6aac1d47c4','1413f410-42ce-11ea-9c23-cb232019b04a','products/sVMqLasNJSy4I4O713IjtQmdnWJflbAQb9A5jz7s.jpeg',0,'2020-01-29 19:36:32','2020-01-29 19:36:32'),('f33cca60-430b-11ea-81a3-87503e679798','51951790-430b-11ea-b481-8d7a7859f946','products/aaIiP7nidZ7fCEqGplBSq7Pxs2Gw0IlDnwJg8YjS.jpeg',1,'2020-01-30 02:55:29','2020-01-30 02:55:29');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `performed_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performed_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logs_user_id_foreign` (`user_id`),
  CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES ('7c1cf850-42c5-11ea-9063-6fd34cecb45c','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','6395bda0-27ab-11ea-a4fb-dfef405b6816','App\\User','Deleted product [Baseball T-Shirt] owned by [Kingdom]','2020-01-29 18:30:54','2020-01-29 18:30:54'),('7e371bc0-42c5-11ea-9853-f78fa8f4a47d','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','6395bda0-27ab-11ea-a4fb-dfef405b6816','App\\User','Deleted product [chocolate cake] owned by [Kingdom]','2020-01-29 18:30:58','2020-01-29 18:30:58'),('7f276150-42c5-11ea-a220-11de189de6b9','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','6395bda0-27ab-11ea-a4fb-dfef405b6816','App\\User','Deleted product [MobilE] owned by [Kingdom]','2020-01-29 18:30:59','2020-01-29 18:30:59'),('804b4f90-42c5-11ea-80d2-dd47a0110a52','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','baaa2c80-2789-11ea-acb2-4110865c362e','App\\User','Deleted product [Test Product] owned by [Trupti]','2020-01-29 18:31:01','2020-01-29 18:31:01'),('81538800-42c5-11ea-bffc-bdc877fbae09','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','592effc0-2913-11ea-9ed0-3fca0cfc0b17','App\\User','Deleted product [Test] owned by [CocoParis]','2020-01-29 18:31:03','2020-01-29 18:31:03'),('8298e160-42c5-11ea-aa31-5518c9440805','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','6395bda0-27ab-11ea-a4fb-dfef405b6816','App\\User','Deleted product [Mobile touch] owned by [Kingdom]','2020-01-29 18:31:05','2020-01-29 18:31:05'),('854ebc40-42c5-11ea-8d61-c912e43ea479','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','592effc0-2913-11ea-9ed0-3fca0cfc0b17','App\\User','Deleted product [Test (Clone)] owned by [CocoParis]','2020-01-29 18:31:10','2020-01-29 18:31:10'),('8667d860-42c5-11ea-8148-31ba1ad6ab29','6395bda0-27ab-11ea-a4fb-dfef405b6816','remove','6395bda0-27ab-11ea-a4fb-dfef405b6816','App\\User','Deleted product [chocolate cake (Clone)] owned by [Kingdom]','2020-01-29 18:31:11','2020-01-29 18:31:11');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sender` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_sender` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_receiver` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_receiver` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversation_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_conversation_id_foreign` (`conversation_id`),
  KEY `messages_sender_id_foreign` (`sender_id`),
  KEY `messages_receiver_id_foreign` (`receiver_id`),
  CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES ('6c73b9c0-425f-11ea-ba13-2f700f2a8d4e','eyJpdiI6IkdsNklyaUQ4MzNtM0JNSGpsbEFCXC9nPT0iLCJ2YWx1ZSI6IkIzVHBsYmxSdlBjZVwvUzdidzJ6cHlQOE1rdnEzSUtLM092TEV5SEc0ciswampzWkNSR0ljVHp3blNqNE5wNEVpIiwibWFjIjoiYjA1MGQ2MTU2Y2QwZWNiNDI4OWU5ZDc5ZTk1OWZiMjIwNGNkMDFlMTRhOGZiZjBmOTMzNjY1Y2VjNDQxNjA5OSJ9','eyJpdiI6IjJKSktnR2VkTDZ2cXJncXhmNVl5SGc9PSIsInZhbHVlIjoidVhDcTJyTTF2XC9mdERvdDB1OW5WQmxCZm4ydUhMa2o0cGxYSGhxTTZXeHo0M1ZubmtPZUFYU09MN1ZyRCtyTGwiLCJtYWMiOiI1YjE3ZTVlNmY0NWM3ZDFiOTJlNjZlN2EzOWY5MjM0MWZlYThiMTAzZjFhMGVlNTIwNDczY2Q2ZGUxZWNiNWRkIn0=','eyJpdiI6Ing1NWp1VDZUNDJGbnBtWFpEWTF5Rmc9PSIsInZhbHVlIjoiKzRsemtnN1M4QWF3TXlJVTV2aUR2TUVWNmhTNWpGRXRhcVZDcTBhWGE2NlBWMEhzV1FvdXl0cFllVlBCMm14KyIsIm1hYyI6IjM5YzgwMmUwZDAzYWI2Y2VhNDgyY2YyNTlmN2FhYWI2NjRjYzk4NmI2MjRjOTNiYzU5ZWU4ZDg1MDRkNTU1ZTUifQ==','eyJpdiI6IlBVZUM1dzgzMmZibm9TdmhGRVZZcUE9PSIsInZhbHVlIjoibzJCWnNXYWtJcjluSTZsakFxNkgra092Q1E5Y2piMlkxbDhRNzZNNTZiNnFYWmNiU2ZXcnZYcEljZ25uMlJLQSIsIm1hYyI6ImIyYjM2MzhhYzljNDgxOTI1NmI1ZjNjOTM2ZDMwN2NjYTM5NTdkYjNmZGJhZmJlYTVlMDkyNDJhYTYzZmFkYWMifQ==','89278110-425e-11ea-9b84-dd908f9ed732','baaa2c80-2789-11ea-acb2-4110865c362e','bd49b450-40e6-11ea-a0f2-c7291a5ebca3',1,'2020-01-29 06:20:19','2020-01-29 06:28:14'),('894d8700-425e-11ea-8afe-5954fad89405','eyJpdiI6IlhGSldCdVJhWHBpbFlyQnpGNGZmT3c9PSIsInZhbHVlIjoiMytoSW1BRnRvUFZCOUxNcm15OU5xY1VBelwvU29ET3lhaStsdTdoSU1GdUU9IiwibWFjIjoiY2VmN2U5NmE0YWRhNjVlZmE1NzI3Njg4NGU0MTgwOWZiMWY5MWUyODAyNWZhZTg3YTg3NzkyZDRkOTQ2NmQzNCJ9','eyJpdiI6ImIyd1FzcUtPM2cwQXZ6SlFnUEVUOUE9PSIsInZhbHVlIjoiS1RYdmRTNVNPYTdcL2gwenF5N0JpMDFnQjA5TFA0SnBLbFRuUmVETkxHR3pENGRId0hkbGZyS25OZWpSVGJwNVoiLCJtYWMiOiI4MWJhMjNiNTRmYzlkYjI5YWNiYzY2NjU0M2ZhMWRlOTQ1ZWI5MDkwNDdiNjE5NjM0MzA5ZDgzMzI5YmYzY2FmIn0=','eyJpdiI6IjBmT0tBK0NYM3pwV2xvaHdCT3JOOEE9PSIsInZhbHVlIjoibXp2b2FMaXVSdEsrT0tZUUlmeHJGNHVwcnI4bHAxQWoyNmhYenlhYlFHZz0iLCJtYWMiOiIwMWE2YTQyOTJhODBkMDNkMGRlMzJmYmFiNzAxYzliMjFkODc1NWM4MTk3YzU5MzcyZmYyOTc2MjZjOGFlZjVhIn0=','eyJpdiI6InZyMlJEOWJ6QStCUWowSjdMSWgxdGc9PSIsInZhbHVlIjoiN0VKbGozbm9uYkJlbERSWFRoaEdGXC9TM0FGS20wNWxOeGJcLzhxdjVDeGxwVWM2Vmo2aWFWcjhZbUoxZ3kzZXlFIiwibWFjIjoiZjM1NWExN2UzOWViYmRhZWFhYzgzOWQ3ZjI5MTg4N2E0N2VkZGJhZmMzMGIyZjRiYWE0YzgxOTIwODllZTEzYyJ9','89278110-425e-11ea-9b84-dd908f9ed732','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','baaa2c80-2789-11ea-acb2-4110865c362e',1,'2020-01-29 06:13:58','2020-01-29 06:19:55'),('a162ec70-4260-11ea-89fb-1f9030cbd251','eyJpdiI6IjhvUW50VFFtdGVkMEJ5NzJmQ25QYlE9PSIsInZhbHVlIjoiMXBxeUJWdGdTVGRZVUpBMHFSeFVlM3k0elVVclR3NDBGWFZCR2NZQXB4eGFIMVAyOHo4dmxacHNHVTdOTTQ0eSIsIm1hYyI6ImMwYzZlNTMzYTYzOTQ3OWQzYmJmN2MyZjUwYWQ0MWYyYmYzZWVjN2Y4ODM4Yjg0M2FlOTU3YmZmYjdjMjE0NWQifQ==','eyJpdiI6ImUrb2lrTStSREZNN1lJOVZrV1lSOEE9PSIsInZhbHVlIjoieU9kclVLdWJOeFRZQmRjd0kzNEZLU0dRcUc2aWFTZGRYdmpWUFBOR2Y2dGhPUWt4WlZac09hdHpWcDJvYm93QiIsIm1hYyI6IjliNDRkNTgyMTdjMDczMTcwYjljZjVmMjkxYzEzOWZmNTI4Y2U4ZDUyZWMwNTc5ZDkwNGQxNGE0ODk5OTAzZjkifQ==','eyJpdiI6IjIycEJEQzNmOEdqRGpvcXlnM01OTEE9PSIsInZhbHVlIjoiZE5lM0ZaUTJ0eFwvVm4xOENDUnQyTUJ6ejV2WFh2elgzUWs5TFFpdFwvSngwb2tVWTBDRWFScVdBRjlMYVVKY2ZqIiwibWFjIjoiYWQ1NzhmMjAzNGVjMWJmNjZmYjgzODMxZGRmZWM3MjkzNjFmODNhMjMyN2Q4OTBkNDg1Y2YyNWFmYTdiYzg0OSJ9','eyJpdiI6ImNGdUkwZWpXa2EzWFI2Qitxb3pGdWc9PSIsInZhbHVlIjoiak1qTlZOZ2dWQkVyMCtkZzZXSEhOK0hNWXF3QlFlZHFuMVV3V2c3QytKTldGYW5JakN0ZlVmR1F1WHpRZk45aiIsIm1hYyI6IjA3MzdjMTdjYTNhNWU2MmNjZDFjN2I1ZjRjY2E5NjhkNzkwM2Q0NWUzYzdiZDg1NmE1ZjNjYWVmYWUxMTNmNDcifQ==','a13d4ce0-4260-11ea-8919-63fd94f20ca0','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','954937d0-3b7f-11ea-b750-310488e4b060',1,'2020-01-29 06:28:58','2020-01-29 06:37:02'),('a6442fc0-430e-11ea-b221-47dab5563267','eyJpdiI6IkRqOHVIMUlNWXl0a3RzclJoUll1WGc9PSIsInZhbHVlIjoidTd1dUxWSkpuSmpXN3oyU1MxYmdQbWsxQ05qSDB3N0pKb0lxNHNCdlRDND0iLCJtYWMiOiI3NjQ1ZmFjZjY1ZmMyMTYwYTdlOGE3Y2NjMTM1OWMzZmFmZjk3ODFiY2Y2N2JmNTMyN2U1MTk1NzAyYzI1ODA0In0=','eyJpdiI6IkdPZkZFazBwTERXK3VWYXlkM1c1RWc9PSIsInZhbHVlIjoieko2eTk1KzhaVUo2eW1zV1lXZTNiazdtbEQrVkx3dG1raWNxcXA0SWxFd2NSek9HU2NSVTJxb3B0bkJaWEJOVyIsIm1hYyI6Ijk2OWE5OTJkNWUxOTdkY2QxNjZmMzI4MDQwNDNlZjhjNzljZDNjYjViZDFkNzQ3NmJiMzJiMTY4YTZlZGM1YWQifQ==','eyJpdiI6InhYZ3ZcL3ZEQ3V5WTRLUHFwR2MrUWhRPT0iLCJ2YWx1ZSI6IlVOMXJ1TDR3XC9wWWQzSis1K1F1UW9Xd1cyRm8rSk4yK1pGVzFPMVJUQUhBPSIsIm1hYyI6IjI2ZTAzZDc0YWZmYWMwZjM4NjkxYTk2M2I1YWIxMTBkZTI5M2JkNTgxOWQ4N2M5YjRlYTUyMzk1ZDVmMWM0YzYifQ==','eyJpdiI6ImhHYjhpXC9LV3l1V2RtZFNLUmJHcHdnPT0iLCJ2YWx1ZSI6ImUzYWZ6S1B3cmRQSktEa3VOcXcxMFIzbzN4aGdCcDFBZlYrQlVYNXhoYXArNE1qZ0lLXC9JenB2a1QwNmMwSzM2IiwibWFjIjoiYTlmYzA1YWE0Yjg0ZTdhZjMwYTVkMzNlNjIwOGY1ODM2ODYwNDEwYjhhM2Y2NGVmOTFlNWJiNTEwZjM4OTcwMSJ9','89278110-425e-11ea-9b84-dd908f9ed732','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','baaa2c80-2789-11ea-acb2-4110865c362e',0,'2020-01-30 03:14:38','2020-01-30 03:14:38'),('b02c69d0-430e-11ea-9a1c-213cf7eec1c4','eyJpdiI6Ik1JZGY2c0NwWlI4c1h3OTFZd3J4MWc9PSIsInZhbHVlIjoiWTJcL3ZUZnlJRWRhNEdlVVhvVDdkZ2ZjNnlQaXlmMU9HUk5oS3VaRDdNa3c9IiwibWFjIjoiZTBkMWU2MzVlM2RkZGU3MmFiNzQ5Y2Q5OGQ0MWUwMzMwZWQ4Y2RkN2VlOTI5MTRjZmI4MGIxYzVmNWY5MGY3ZCJ9','eyJpdiI6IlB2QWxLVzFUZDhIYVp5UEhFUnBRUVE9PSIsInZhbHVlIjoia1wvdHNxOUZrUlVYNWtYK3hjOGhvUXhzQTlJdzg5SjBKamNsQlFoWGlCMU1iVE1vNjFFZUlCOExDRFhBaGkybEMiLCJtYWMiOiIzOGI0NDdkYWFkNmVhMjQ3NzFhZmIwNzdmZGIyNWJiY2ExOTY5MzU4MDViM2UxNzZlY2IzNGYxMWRmM2IzODdlIn0=','eyJpdiI6IkRReXdCaTVqc1JHOFFjRXpDTzJJaGc9PSIsInZhbHVlIjoiaWdcL0FWNWM4OEFabjRBbFFCbDhDXC9Vc091UUx5WW1qc3BcL2R5RVNqSm56VT0iLCJtYWMiOiI5ZjYxMWNjNjRjZThhM2QxMDAzYmNmNjcxZjM1NGUzYjJmODEwYmQ2YjhmNDFhOWU3MWI5ZTlmYTUxMzBkMDE2In0=','eyJpdiI6IlVzTzczME9uN1JSNGJWbm8xWnRBOGc9PSIsInZhbHVlIjoieThkYmF6cEdtV3MyRlNxUHZ6c0Jsb05nV2NnSGxyeVBoYTUydmFGdXJucE9xOUpCbWtQdUhrRnFGWHJtWlJTSSIsIm1hYyI6Ijk5NTlmZjE3ZTYxMzg1OWFjZGJiNzkwMjNjOWE5ZDlmMjg2ZjMwYzU0MDU0MmYzYTVmZDc3MmRiZGIyOTAzNDYifQ==','a13d4ce0-4260-11ea-8919-63fd94f20ca0','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','954937d0-3b7f-11ea-b750-310488e4b060',0,'2020-01-30 03:14:55','2020-01-30 03:14:55');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_08_28_103514_create_p_g_p_keys_table',1),(4,'2018_08_30_104044_create_vendors_table',1),(5,'2018_08_30_204259_create_categories_table',1),(6,'2018_08_30_204840_create_admins_table',1),(7,'2018_08_31_121912_create_products_table',1),(8,'2018_08_31_122620_create_physical_products_table',1),(9,'2018_08_31_122628_create_digital_products_table',1),(10,'2018_08_31_182733_create_offers_table',1),(11,'2018_08_31_192727_create_shippings_table',1),(12,'2018_09_01_203115_create_images_table',1),(13,'2018_09_06_132015_create_wishlists_table',1),(14,'2018_09_07_112831_create_feedback_table',1),(15,'2018_09_24_101728_create_purchases_table',1),(16,'2018_10_01_100924_create_disputes_table',1),(17,'2018_10_01_101836_create_dispute_messages_table',1),(18,'2018_10_12_144436_create_conversations_table',1),(19,'2018_10_12_144542_create_messages_table',1),(20,'2018_10_27_205143_create_logs_table',1),(21,'2018_11_15_113419_create_addresses_table',1),(22,'2019_01_05_140832_create_notifications_table',1),(23,'2019_01_11_214222_create_vendor_purchases_table',1),(24,'2019_02_13_101528_create_permissions_table',1),(25,'2019_02_16_185709_create_tickets_table',1),(26,'2019_02_16_190336_create_ticket_replies_table',1),(27,'2019_03_25_133234_create_bans_table',1),(28,'2019_05_11_205112_create_shipping_offers_deleted',1),(29,'2019_05_12_220221_create_purchases_cancelation',1),(30,'2019_05_26_221922_create_product_purchase_types',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `route_name` text COLLATE utf8mb4_unicode_ci,
  `route_params` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('00456b80-2e31-11ea-90c6-b55bce734e2c','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"f0c15a10-2e30-11ea-a839-7b097126cb51\";}','2020-01-03 13:57:38','2020-01-08 04:30:35'),('0b8ebb20-430f-11ea-99df-932431129dfd','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been marked delivered by buyer [Mbappe2019]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"850550c0-430e-11ea-8f8c-db8db276626d\";}','2020-01-30 03:17:28','2020-01-30 08:32:26'),('0c0901d0-4268-11ea-b4fa-a5487559b670','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been marked delivered by buyer [Swapnilboss]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"739a3ac0-4267-11ea-8d25-21f8f43734e1\";}','2020-01-29 07:22:03','2020-01-29 09:19:03'),('0c14eca0-3dd2-11ea-8bbc-010208e52492','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your sale has been canceled.',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 11:18:14','2020-01-23 17:15:13'),('0c154c70-3dd2-11ea-9ae8-c9f4c5d6e54f','baaa2c80-2789-11ea-acb2-4110865c362e','Your purchase has been canceled.',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 11:18:14','2020-01-28 03:41:05'),('0d629210-4180-11ea-b618-9d14780ad400','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Trupti]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"0b2c1280-4180-11ea-96a4-41fa47f7183f\";}','2020-01-28 03:41:22','2020-01-29 02:47:53'),('147e14e0-3e04-11ea-9730-31ef4df7308b','baaa2c80-2789-11ea-acb2-4110865c362e','Dispute for your purchase is now resolved',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 17:16:23','2020-01-28 03:41:05'),('147e7400-3e04-11ea-b8aa-f7ec95c652bd','6395bda0-27ab-11ea-a4fb-dfef405b6816','Dispute for your sale is now resolved',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 17:16:23','2020-01-29 02:47:53'),('17bf52c0-2df6-11ea-a5a3-8d7010fc40c8','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been sent by vendor [Kingdom]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"7cc73060-28aa-11ea-9a8c-45f882b8acdc\";}','2020-01-03 06:55:57','2020-01-08 10:50:10'),('1babb0e0-43e2-11ea-9e6f-47767ab38c0a','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"161d7f00-43e2-11ea-b7aa-fb5e7373a167\";}','2020-01-31 04:28:19','2020-01-31 04:29:41'),('22897e80-40ec-11ea-bedd-6bdd0265d0fc','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Swapnilboss]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"07aede00-40ec-11ea-a34b-f547d3f21d00\";}','2020-01-27 10:02:32','2020-01-29 02:47:53'),('2fc91b60-3cca-11ea-8db0-a382bded17f2','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Trupti]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"296ce6c0-3cca-11ea-8628-1fb75a8342ee\";}','2020-01-22 03:49:27','2020-01-23 09:21:33'),('316f9650-4356-11ea-947a-c53454d52f6b','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"2e219a50-4356-11ea-9880-4be8b7141486\";}','2020-01-30 11:46:46','2020-01-31 04:29:41'),('3dffef10-431c-11ea-b34b-cbf75698a30f','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"341d6ed0-431c-11ea-8fb7-3df6291806d5\";}','2020-01-30 04:51:56','2020-01-30 04:52:21'),('43042680-3de6-11ea-b444-ad525b3ac71b','baaa2c80-2789-11ea-acb2-4110865c362e','Dispute for your purchase is now resolved',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 13:42:56','2020-01-28 03:41:05'),('43049a50-3de6-11ea-aecb-a1ec5f9a192f','6395bda0-27ab-11ea-a4fb-dfef405b6816','Dispute for your sale is now resolved',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 13:42:56','2020-01-23 17:15:13'),('45eae4c0-3dc7-11ea-8620-917d86abe35f','baaa2c80-2789-11ea-acb2-4110865c362e','Purchase for a product you bought is being disputed',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 10:01:06','2020-01-28 03:41:05'),('4706e600-4268-11ea-9a00-1fa580d0b942','baaa2c80-2789-11ea-acb2-4110865c362e','Purchase for a product you sold is being disputed',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"739a3ac0-4267-11ea-8d25-21f8f43734e1\";}','2020-01-29 07:23:42','2020-01-29 09:19:03'),('49150350-28ab-11ea-a187-e1461f3e2b37','8c2b7280-266d-11ea-9110-87d18817bd6d','Your product has been sent by vendor [Trupti]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"0ef5b9a0-28aa-11ea-a2e0-f1150d1d97cc\";}','2019-12-27 13:17:51','2019-12-27 13:18:08'),('4dd58770-4297-11ea-9cee-7b2913b975df','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Chhaya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"4b763710-4297-11ea-81d5-2b37c8b726d8\";}','2020-01-29 13:00:20','2020-01-29 13:10:04'),('5420cb30-431c-11ea-a6ab-5d8830bfd7e5','954937d0-3b7f-11ea-b750-310488e4b060','Your product has been sent by vendor [Trupti]',0,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"341d6ed0-431c-11ea-8fb7-3df6291806d5\";}','2020-01-30 04:52:33','2020-01-30 04:52:33'),('5a854f70-28ab-11ea-92dc-4f1459713b45','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been marked delivered by buyer [akshay]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"0ef5b9a0-28aa-11ea-a2e0-f1150d1d97cc\";}','2019-12-27 13:18:21','2020-01-08 10:50:10'),('5bb9d190-4298-11ea-adc9-314c3172d9f0','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Chhaya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"5a14e870-4298-11ea-b082-590a66942576\";}','2020-01-29 13:07:52','2020-01-30 03:15:52'),('5c470860-4278-11ea-ba58-27a868da16f4','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"5940ee70-4278-11ea-a3d6-45fd262e9924\";}','2020-01-29 09:18:49','2020-01-29 09:19:03'),('5ddf2f50-2dfc-11ea-9215-21bd3a77ace5','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [newuser]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"430c3410-2dfc-11ea-a4a1-7d0fd718913a\";}','2020-01-03 07:40:51','2020-01-08 04:30:35'),('66c78890-4296-11ea-820d-bdc227cf516a','954937d0-3b7f-11ea-b750-310488e4b060','Your product has been sent by vendor [Trupti]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"5940ee70-4278-11ea-a3d6-45fd262e9924\";}','2020-01-29 12:53:52','2020-01-29 12:54:17'),('695c6120-31cf-11ea-a794-9d698aaabd53','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"6311bb30-31cf-11ea-84df-47e2c2a6edf8\";}','2020-01-08 04:29:08','2020-01-08 04:30:35'),('6f0e6520-3dd5-11ea-821b-d92a6f064b12','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your sale has been canceled.',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 11:42:28','2020-01-23 17:15:13'),('6f0ed870-3dd5-11ea-a249-99b71808f8b7','baaa2c80-2789-11ea-acb2-4110865c362e','Your purchase has been canceled.',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 11:42:28','2020-01-28 03:41:05'),('712c0d60-4298-11ea-89a3-b36c3b539db8','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Your product has been sent by vendor [Trupti]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"5a14e870-4298-11ea-b082-590a66942576\";}','2020-01-29 13:08:28','2020-01-30 03:01:37'),('72cedc50-3dc1-11ea-a603-0bfb491da024','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Trupti]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 09:19:25','2020-01-23 09:21:33'),('767a9200-4298-11ea-aca1-bf351b11474c','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been marked delivered by buyer [Chhaya]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"5a14e870-4298-11ea-b082-590a66942576\";}','2020-01-29 13:08:37','2020-01-30 03:15:52'),('78308040-31ce-11ea-93c1-47ea3b315a06','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"745b0140-31ce-11ea-9f22-e5799caa84ab\";}','2020-01-08 04:22:23','2020-01-08 04:30:35'),('7c952dd0-2df3-11ea-b640-0153684a16df','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"7037f650-2df3-11ea-bb29-c3f48d751d1e\";}','2020-01-03 06:37:17','2020-01-03 06:54:24'),('81477400-4296-11ea-8338-91dba0fc2634','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been marked delivered by buyer [Priya]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"5940ee70-4278-11ea-a3d6-45fd262e9924\";}','2020-01-29 12:54:36','2020-01-29 13:03:21'),('8166e700-28aa-11ea-b0d5-3111d398c469','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Trupti]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"7cc73060-28aa-11ea-9a8c-45f882b8acdc\";}','2019-12-27 13:12:16','2019-12-28 01:24:27'),('894eeff0-425e-11ea-9113-19177f8077fb','baaa2c80-2789-11ea-acb2-4110865c362e','You have received new message from [Chhaya]',1,'profile.messages','a:1:{s:12:\"conversation\";s:36:\"89278110-425e-11ea-9b84-dd908f9ed732\";}','2020-01-29 06:13:58','2020-01-29 06:19:33'),('89900630-4267-11ea-ab7b-f3cb0f707201','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Swapnilboss]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"739a3ac0-4267-11ea-8d25-21f8f43734e1\";}','2020-01-29 07:18:24','2020-01-29 09:19:03'),('8bd2a7b0-28aa-11ea-a401-894da201979f','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [akshay]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"0ef5b9a0-28aa-11ea-a2e0-f1150d1d97cc\";}','2019-12-27 13:12:34','2019-12-27 13:17:31'),('8d2cd180-4244-11ea-a339-c51c3bfb68f7','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your sale has been canceled.',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"8d9c8b40-3217-11ea-aa65-ad76e3486c26\";}','2020-01-29 03:07:58','2020-01-29 13:10:04'),('918f2160-31d4-11ea-9127-b3cf8b464b1e','02f9b430-2dfc-11ea-be1c-63b91459cf7e','Your product has been sent by vendor [CocoParis]',0,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"380e76a0-2dfc-11ea-b33b-0b819f71dc56\";}','2020-01-08 05:06:03','2020-01-08 05:06:03'),('96b967f0-3217-11ea-8db3-794bfdeed8fc','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"8d9c8b40-3217-11ea-aa65-ad76e3486c26\";}','2020-01-08 13:05:48','2020-01-21 08:42:44'),('9f4129a0-430d-11ea-bc6c-e19263adc02a','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"991e0a10-430d-11ea-b713-e18f7f384010\";}','2020-01-30 03:07:17','2020-01-30 03:11:23'),('a16378e0-4260-11ea-91ca-13e698598b02','954937d0-3b7f-11ea-b750-310488e4b060','You have received new message from [Chhaya]',1,'profile.messages','a:1:{s:12:\"conversation\";s:36:\"a13d4ce0-4260-11ea-8919-63fd94f20ca0\";}','2020-01-29 06:28:58','2020-01-29 06:36:23'),('a644c6c0-430e-11ea-a5e2-f5a398be9fae','baaa2c80-2789-11ea-acb2-4110865c362e','You have received new message from [Chhaya]',1,'profile.messages','a:1:{s:12:\"conversation\";s:36:\"89278110-425e-11ea-9b84-dd908f9ed732\";}','2020-01-30 03:14:38','2020-01-30 03:15:52'),('ac1222c0-3145-11ea-b613-b1ce19db67f1','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"9dc2f5f0-3145-11ea-8337-8ba991526a8e\";}','2020-01-07 12:03:09','2020-01-08 04:30:35'),('ac44e8f0-4297-11ea-a402-bd589270ce4f','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Chhaya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"a8e484f0-4297-11ea-993e-e1ce65d6696b\";}','2020-01-29 13:02:58','2020-01-29 13:10:04'),('ac93d860-312c-11ea-87f3-4f146f995b66','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"a3c8ea40-312c-11ea-9c6a-c7921e1f69d1\";}','2020-01-07 09:04:13','2020-01-08 04:30:35'),('af815300-4363-11ea-ab7e-f7e047471655','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"a1c031e0-4363-11ea-890b-73ca10024acf\";}','2020-01-30 13:23:21','2020-01-31 04:29:41'),('afe780c0-430d-11ea-ae51-c7e9e39f7186','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been marked delivered by buyer [CocoParis]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"991e0a10-430d-11ea-b713-e18f7f384010\";}','2020-01-30 03:07:45','2020-01-30 03:11:23'),('b02d22d0-430e-11ea-a564-81635b2b2beb','954937d0-3b7f-11ea-b750-310488e4b060','You have received new message from [Chhaya]',1,'profile.messages','a:1:{s:12:\"conversation\";s:36:\"a13d4ce0-4260-11ea-8919-63fd94f20ca0\";}','2020-01-30 03:14:55','2020-01-30 04:50:44'),('b6bbc5c0-31cd-11ea-b1e3-8f4899680f16','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [CocoParis]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"b14180e0-31cd-11ea-acbc-432d874cda5b\";}','2020-01-08 04:16:59','2020-01-08 04:30:35'),('bc4662c0-430e-11ea-8dd2-5bbd7955f22b','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Mbappe2019]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"850550c0-430e-11ea-8f8c-db8db276626d\";}','2020-01-30 03:15:15','2020-01-30 03:17:02'),('bc4adbc0-430e-11ea-b6ad-27ec5040862d','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Mbappe2019]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"a1639b10-430e-11ea-8724-fb2c6addeab5\";}','2020-01-30 03:15:15','2020-01-30 03:15:52'),('c28ce720-4339-11ea-bd0e-7dff7db0e663','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"96b7a130-4339-11ea-acd1-81efeca9b44e\";}','2020-01-30 08:23:14','2020-01-31 04:29:41'),('c39011c0-40ec-11ea-8bf1-dda97c8db4ab','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"84fbb840-40ec-11ea-925a-23e0a32dd15e\";}','2020-01-27 10:07:02','2020-01-29 02:47:53'),('c52cbe60-3dc7-11ea-a35c-61fdc0d1e20f','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Trupti]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 10:04:40','2020-01-23 17:15:13'),('c8674d40-430d-11ea-bee5-4758d1d1d079','6395bda0-27ab-11ea-a4fb-dfef405b6816','Purchase for a product you sold is being disputed',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"991e0a10-430d-11ea-b713-e18f7f384010\";}','2020-01-30 03:08:26','2020-01-30 03:11:23'),('cb9a3d50-42b1-11ea-ad51-7594192226cc','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your product has been purchased by [Priya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"bfb17440-42b1-11ea-9c21-b59a4074632c\";}','2020-01-29 16:09:58','2020-01-29 17:23:09'),('cbb7fae0-31ae-11ea-b843-69174f898cc5','6395bda0-27ab-11ea-a4fb-dfef405b6816','Purchase for a product you sold is being disputed',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"9dc2f5f0-3145-11ea-8337-8ba991526a8e\";}','2020-01-08 00:35:40','2020-01-08 04:30:35'),('d0403a40-4297-11ea-9b4e-afb953e5e0eb','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been purchased by [Chhaya]',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"cec46a20-4297-11ea-969b-8f073c493ef5\";}','2020-01-29 13:03:58','2020-01-30 03:15:52'),('d187fb80-4339-11ea-91b3-7bd9290ca7ff','baaa2c80-2789-11ea-acb2-4110865c362e','Purchase for a product you sold is being disputed',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"96b7a130-4339-11ea-acd1-81efeca9b44e\";}','2020-01-30 08:23:39','2020-01-31 04:29:41'),('d42eb9d0-428f-11ea-b161-1536d9ba3d28','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Your product has been sent by vendor [CocoParis]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"2c34a080-424f-11ea-84f3-7535304c6fd4\";}','2020-01-29 12:06:49','2020-01-29 13:05:59'),('dac6b660-4297-11ea-b75a-6f4be25a5b07','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Your product has been sent by vendor [Trupti]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"cec46a20-4297-11ea-969b-8f073c493ef5\";}','2020-01-29 13:04:16','2020-01-29 13:05:59'),('e22da3f0-4297-11ea-ac1a-89622296f4cd','baaa2c80-2789-11ea-acb2-4110865c362e','Your product has been marked delivered by buyer [Chhaya]',1,'profile.sales.single','a:1:{s:5:\"sales\";s:36:\"cec46a20-4297-11ea-969b-8f073c493ef5\";}','2020-01-29 13:04:29','2020-01-30 03:15:52'),('e3517090-3de1-11ea-99d8-2761dd55a680','baaa2c80-2789-11ea-acb2-4110865c362e','Purchase for a product you bought is being disputed',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"be6cd4a0-3dc7-11ea-9118-27e5d268cd19\";}','2020-01-23 13:11:37','2020-01-28 03:41:05'),('e40f3060-4244-11ea-8155-d9fea86c5e83','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your sale has been canceled.',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"6311bb30-31cf-11ea-84df-47e2c2a6edf8\";}','2020-01-29 03:10:23','2020-01-29 13:10:04'),('eefa1590-3dc5-11ea-b9e0-67ea3fe14584','6395bda0-27ab-11ea-a4fb-dfef405b6816','Your sale has been canceled.',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 09:51:31','2020-01-23 09:58:44'),('eefc7660-3dc5-11ea-9717-2bc45055356d','baaa2c80-2789-11ea-acb2-4110865c362e','Your purchase has been canceled.',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"34e05780-3dbc-11ea-8b86-b7310af0e4a4\";}','2020-01-23 09:51:31','2020-01-28 03:41:05'),('f71373b0-433c-11ea-bd53-13630746b636','954937d0-3b7f-11ea-b750-310488e4b060','Dispute for your purchase is now resolved',0,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"96b7a130-4339-11ea-acd1-81efeca9b44e\";}','2020-01-30 08:46:11','2020-01-30 08:46:11'),('f713da20-433c-11ea-a91e-7142d599eaf8','baaa2c80-2789-11ea-acb2-4110865c362e','Dispute for your sale is now resolved',1,'profile.sales.single','a:1:{s:4:\"sale\";s:36:\"96b7a130-4339-11ea-acd1-81efeca9b44e\";}','2020-01-30 08:46:11','2020-01-31 04:29:41'),('fbabfe70-4267-11ea-b742-4b6933558b03','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','Your product has been sent by vendor [Trupti]',1,'profile.purchases.single','a:1:{s:8:\"purchase\";s:36:\"739a3ac0-4267-11ea-8d25-21f8f43734e1\";}','2020-01-29 07:21:35','2020-01-29 07:21:52');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_quantity` int(11) NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `offers_product_id_foreign` (`product_id`),
  CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES ('02d4ace0-42cf-11ea-bc3b-1b6a6a564cc0','1413f410-42ce-11ea-9c23-cb232019b04a',1,40.00,'2020-01-29 19:39:06','2020-01-29 19:40:41',1),('10541a20-42f3-11ea-b23b-358edeca39f4','222a0a20-42cf-11ea-bf92-019ec6993384',100000,10.00,'2020-01-29 23:57:10','2020-01-29 23:57:10',0),('1d75bf50-42ce-11ea-afa1-336c648a58be','1413f410-42ce-11ea-9c23-cb232019b04a',1,77.00,'2020-01-29 19:36:32','2020-01-29 19:38:29',1),('222d8900-42cf-11ea-9d91-d1933732fa63','222a0a20-42cf-11ea-bf92-019ec6993384',1,40.00,'2020-01-29 19:39:58','2020-01-29 23:57:15',1),('3a6b70e0-42cf-11ea-b104-d78b897a9e80','1413f410-42ce-11ea-9c23-cb232019b04a',1,80.00,'2020-01-29 19:40:39','2020-01-29 19:40:41',1),('46a9f800-430d-11ea-89a7-e95aee554916','30ffd140-430d-11ea-80cc-51ea9a802df7',1,1.00,'2020-01-30 03:06:30','2020-01-30 03:06:30',0),('4a8bf8c0-42cf-11ea-a988-632dff065df8','1413f410-42ce-11ea-9c23-cb232019b04a',1,80.00,'2020-01-29 19:41:06','2020-01-29 19:41:06',0),('5dcc5240-430b-11ea-b919-f9c91da03de1','51951790-430b-11ea-b481-8d7a7859f946',1,0.01,'2020-01-30 02:55:29','2020-01-30 02:55:29',0),('5f59d780-430d-11ea-9f0a-5b632d6b4a68','511a9a30-430d-11ea-9283-b5212b0560fe',1,0.01,'2020-01-30 03:07:09','2020-01-30 03:07:09',0),('6a2a7bb0-4328-11ea-b91c-ffc659bb3707','6097a7b0-4328-11ea-a3c4-1f09b43c1ec4',1,0.01,'2020-01-30 06:20:46','2020-01-30 06:20:46',0),('af1da930-430b-11ea-8590-f150545ad4f5','51951790-430b-11ea-b481-8d7a7859f946',1,0.01,'2020-01-30 02:55:29','2020-01-30 02:55:29',0),('eb282400-42ce-11ea-994d-b1e9aa0dd8e8','1413f410-42ce-11ea-9c23-cb232019b04a',1,40.00,'2020-01-29 19:38:26','2020-01-29 19:38:29',1),('f13f00b0-42f3-11ea-9b17-b9d6b2089fac','222a0a20-42cf-11ea-bf92-019ec6993384',1,10.00,'2020-01-30 00:03:28','2020-01-30 00:03:28',0);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_user_id_foreign` (`user_id`),
  CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgpkeys`
--

DROP TABLE IF EXISTS `pgpkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pgpkeys` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pgpkeys_user_id_foreign` (`user_id`),
  CONSTRAINT `pgpkeys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pgpkeys`
--

LOCK TABLES `pgpkeys` WRITE;
/*!40000 ALTER TABLE `pgpkeys` DISABLE KEYS */;
INSERT INTO `pgpkeys` VALUES ('3150da50-307e-11ea-b560-8f1f4cd3de1c','8c2b7280-266d-11ea-9110-87d18817bd6d','-----BEGIN PGP PUBLIC KEY BLOCK-----\r\n\r\n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\r\n=9AUh\r\n-----END PGP PUBLIC KEY BLOCK-----','2020-01-06 12:15:13','2020-01-06 12:15:13'),('ab3aeea0-31d1-11ea-a819-9987be1bfd79','592effc0-2913-11ea-9ed0-3fca0cfc0b17','-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: OpenPGP v2.0.8\r\nComment: https://sela.io/pgp/\r\n\r\n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\r\nrfjdnb9V21JzApRmr4W0\r\n=6cJC\r\n-----END PGP PUBLIC KEY BLOCK-----\r\n\r\nPrivate key\r\n\r\n\r\n-----BEGIN PGP PRIVATE KEY BLOCK-----\r\nVersion: OpenPGP v2.0.8\r\nComment: https://sela.io/pgp/\r\n\r\nxcaGBF4O6n8BEADOtV5nqP+JPapa0F93TvdLgpbBeKvoPHcMWFMyqrufsrekyObN\r\nZbpbcT+u4GgSby5iBNbYrbb1Uz/fhMjtTs0b53ACh4y3Aq+qRq3IfFO3VNKISNwu\r\nB5ee3VBo2KAfv5YeMyMm9mZ4SWOMq4sjcgze63+HGkUB/wJxeDoHwJpm9QQ6LNrw\r\nMvMsGoPohSPoat+0Cu7ygGp8JYrHo+ySFbs9GC+FFhzsphGk4/RIRMGEuD8bhGu8\r\n6eox1MrULtTehGZ+di1yUQWwvxDe6ZJRMkoDYDCRnYbAdJS9/aTdEwFNI/Op8YXq\r\nhxpJVQNLWokyr4A6g/GcdLgFJNrT8zeAS5/rZSLjkVgBHSIeIAglZiNyGwTPVEJC\r\no1dOvY2/G0rs6Y7tuprMmX+lXwvOxqVD1ChlzpPz4BbdlnCoij1zm2MbqefkJrIF\r\nL9PkaN6DsMEjr3mq9jzAA80jna/qoMb8rcTdt7s7Hr7g2BHhi/vDY7UChxjzthF9\r\nBIErvOtApjSf0DMWHrpM0b+jn8HHiJn/CoIiCm9MW7+K4yUUAv3qzKAZeAvjCE3D\r\n6SgT04K/bif/0lBz9+EHn//YVcnD1hVBswDhC4zvrMmREITUPt3EnDl1ar51q9it\r\nUxdA1pPh9gghQKl/TRWh/NjpbxRA+S9/OrMKtVb4EtMjHm05Adw5WEfiuQARAQAB\r\n/gkDCBMv1yqsIfNkYI54lSVp34IWw8YpH3pBKpAhaTzZ8MFQY4AoUzafOnP1D3aO\r\nbYqMXhttYN88fkRV19HJgDoouavzWpq6dGus83Ze5EzSkYP998T5UMKw77XuZTgF\r\nrh1RqOYfXfblPCo+z6HQOVatOjra//siIzpdZX0KXjCID21TAnNy/eG4qaQCjydj\r\nLGYyFwH3gLg7yPotlJwS5+bClWLl+6ePf9mY8YHtQsNG+3ObNvJBtu5TQu4zmV1t\r\nJobOQeu7gzLz86o3K+6LPF4hsS/fz+RwdVpHw/ezaVipfjO58RlQkw3YuER63PuM\r\nYWQtNxPKty87T5GZq/IT1nfMTvcSq5y50TqkgA8zaC9/HN5bz4zKCNieN6JWAalK\r\nwamkQ8+5I42dG2D71PzTDCsl4psbNn7zjl6MNLDAhzsPkzLyiJka2rPGFo2VRxoI\r\n7rPMyK6uzdgdohIKrs8dH+6JnD/DFA8ch3Loh3zdvdZ2o8RhHxM3WphdLbbluaNo\r\nTBIeqefSH5xviMV/bMoiWTnkySphmYUnBy02fGudrADdEyZvv5EerE8QYbR9xJco\r\n2UAMTc1ILTWuzCSLbfY29vJoy4tLG0pVECIhgtFhzoC2T+zx0tlkOaNXMPtLS/qo\r\nq8HfDm4LGCHceKAhOGK6DvfNqpz367iHxZIhwtLZLoTh8RcRR4iLZf95zvxAKJfr\r\n+IrCWP5XCroOFui+rJKGAyKawtbmZHVIbtgi/ujwFIqzpe4BAoaP9ZtXHmDheA7Q\r\nrukI8dDcyY6w/i5kBACFezxfxTvI8dWJ3cQekXJYxcdI3Lto1ZBhk2G6M0hqK8Al\r\nbBR9vPV4w8XlzKIoKTHC2einWaVeqiakWvVA+7wQAXSfpF0S/Yd8U8Sf75fNIiBW\r\n13lQtM9hO8aQGB8+aaJrfPI9S5MSGQEy6LxmCpunnUJyMvuwgbQ1H40T+g5Sn+e+\r\n/szcAs76WDIiVcoULTnYA9Cay2DRjrs7OhVHIxLvm/FvEPXHEAa3TK8k0xoUarbe\r\nH38HKwmQh7WDUXQLIkn73mm04/8siDtf14cgjhrpmL7wNfUo98sDBBKk+Y8Rhd/e\r\nvwI5mzmzL5NZYXH4WjKZTuJvc/s6zq2TmIxxjUv6+HCabG9MqfKUJaaNg2nR5xEx\r\nY0+JqpFiw4sb/Q70rggI+Xwr3ORjbCdDRAL6lrLF/rwWczaG4m9UF2HktH+FmPBU\r\n+K6eMb3rmMN6H7M6987YzdVopF/WB3diQT7qGCqUZuuFyu4MY7PIAvwha3vFglzG\r\nvk7GoX6jJFzVQ4u2SNl9/kJ5Uf3d084kJ6KyccTuNavin7aDQiWjJXvRyjH0Ngoy\r\nuKuBmUtH2JGL01+7gEK+qFuGunmEbnSIrllbFxPKxJ8okRys3puSIlNaPB66ifMr\r\nvmlD0eEjHDoJd2Sft+CKNWJP7URnVf5+zIFdhiV2vJpWGavfMSMutrpAxhQ752Uw\r\njMT5PG5pmsRo5MRolK/O5T+tW1e/Hslv/WBIfV0RCLBMl2atV3ovhTII4X7XvQwo\r\nuSjSQGDCVahyJGIr1r1/r6y5YdMZTORgiw8pQ1/MW/48GDNsYnRSvp8s27LVUbY1\r\nxGV2r3OsJydX3XOmpLtFW4lQYFOumlB0LGpVvUopKrfcIkGtiFU6i5xsbw6lzrVa\r\noXi9cEqJcGHlOnco6H59vE3Ux59/uU0mrv0kkuAoMLqCEKfVZ+e0wyWL4Ozi00xX\r\nhWzbEm0wxn3155I/KJlcszH4mpP7KA7ZEHZGLrjNJHdDGxSkcFLaUgvNDGNvY29A\r\nYWJjLmNvbcLBcAQTAQoAGgUCXg7qfwIbLwMLCQcDFQoIAh4BAheAAhkBAAoJEP1G\r\ntmlwCogp0BYQAJdMurqTRkniXQZYlaFVTao9s/Z3MnS4WWLAXDo8x+jsF4x/OuKk\r\nmbQCu6SS1gdcWHwOn05bDGKSGWpUvJg/bNRl6DfUTIzFvSmkDnjR4URIHh/YXMVn\r\nxlc4G5QBfcOum0pnf3HQpO+x68zbk4i3d/Zf+uDtQu5WfK3TF3cciss7gm7VcefO\r\nX7z2I3tRs4mEjc0zz2apmtfa3p9vXJqqN8PTpTOx9CZHn2mkML1wNQd6QMGb+n20\r\n1MSm/fDYdGJoMbjHGLVvKNkOknEAkZLYBS+2m9e2gOLjsIjkF6zXj/mrdlWWZpSO\r\nRZZk64exwZCj6fYHfOUajPhHZ/9l6MFYVzK79wiFPR1XbEDmCvGVSxlPvUk2CmMT\r\nQnF4okCNzkizH5bDWJnuT25N4pYRKyOqp1X1cR8F2JyjGjlYMZ1o5B6r1c4Aob65\r\n6va6rxD71rt9uBLjQIusjMukQGsdyKvuLBqSSfgPJJAuCCBAAswG9ZNy/I81JBfa\r\nn6+oi4fWxwkuZlPRMUhDwDhAK2MCcSXdprq0RLRBqTpGu1wgInxsePy5h8FMJpzC\r\nGQsougON96TDBAsg1sWN9ITMP0vB62lK4DOJ5a4QBh5Wlfs9jvLxIAtoDYNufGI0\r\nCU+vqiExt+uUQej0gELPA3sOx9anuqGStptVXUHrurATsd0M7+iYxNysx8MGBF4O\r\n6n8BCADiBb7W/AMuMNWX4+kaFXJ1VmpKGzec19Phbhs9/9+elh+gC5Y/Td3zDKNV\r\nREzWB7aYIR4A/ms6qSUrwp9oRS/ABI2kxF9mOSbhiQqe78yi7DadpJRCY+OqJqjz\r\nLxvzPOObCq7I6bj00LSSfcbp1szzpmNjoxnlz3z+KogE+gom0LDonwGuIzQ9Pghe\r\nNpmaYjxij6FMjR2GIkgd3EAydTEiEScg1fmQKtlqlYkvyZi6E28p4IE/1uh4/WAq\r\nLJQCYWTcKLb8UFobRjHzqxpX3uSSV0F1RYrqIexTjlfGaUmiWAGkP1rSIhLWUeQK\r\nY2L0KKQzobkEcLQEFNGyXz0r3tJnABEBAAH+CQMImz2wE45rCGpgDs/OAemflM6E\r\nHK46y0cdGZMFyaIHBR2aXcII4lnVr283RV+BW8g/EFjxxW75oFttlKLydLRTT77x\r\nxyD0qITfdfZQ6MHPnEAS/tBhkqEGS3xpRw993oEpMz1DJE7CQUXgX/bqubI52+8A\r\nwF9WPluC/XD6Ic0hdHhTXcmq1Ae6bsyc/rGlph8bQ4MXivglYXa15MqUMirGjL6c\r\nFHNUwV+Y0LeDKlxJmqafY2PdDq6+n/MS2HBGIzjCBKkkQP4HCZI8F8KRTGmuw/av\r\nORYvVn+QeTvFoNBye/c4Q+tEyQs0y/z4rdNtWdwXQ+SUEwLfGCNTss90nVThMa8N\r\n9EApXSxf+fVS8kFwJDUXoxVCKcxRrjIJG1tn3ZkKxv6dMKPkVadKE1nU8cwVOLRU\r\nugB7cNq618/sYvSRRO+VqG+HBfFwlw7CzzyD1tX++FRV55p0siB955BYDDH6jSki\r\n4buVOtAujZtAxzNTWpMmJJPckH85h2kPEslMQ1d9eD6tq9KbDGrtUW81bHNxs+M/\r\nHIyYDkjTzfjPZL+4QAzfks2O0hUp+D0PzkbKoYhylRnMLcj89enNtBPF3msdHtms\r\n3CAGfS1uLkQdfN+Vdaim+/npPWIPy3DD/e9y84eIdI4NCcZqKYDiCvS+5wDfwB2b\r\ngNlYOqboEDAFmdnQEe3tLlQdqSGOgE3nSGxmvk7ELU3heUYQTe45YmD6tLVBk05X\r\ndlCrf+yeIdbHuWJ4OaCdZ964WZcLjWeqr8TNKF7l/bhzSXxNQq89IsIOq8mkKZmc\r\nKIz707TRwmA4kneVQUEOUKIqhSrvupPt3VwXiMahWJJDnmcsugDPaFzpesJKwL9f\r\nGuiiR1ERKknXEac40enf/BDGGx6nCTuSSt+Lk+xI1gUpaxUKD2xtvP3hFGTfSB/2\r\nJ8EuwsKEBBgBCgAPBQJeDup/BQkPCZwAAhsuASkJEP1GtmlwCogpwF0gBBkBCgAG\r\nBQJeDup/AAoJEMLQQ97u+1R1OE4IAJx52ovt+TN3J28gbGlfbBpDcjI8e5cbmzmH\r\ny6Qf7ii0Qm+YDmVjPwYfYw1f0XURpw06CqylQo8aJEeGBbf9iJvx99RBedeT5G6V\r\nbU4AyltgNCy1hgjbK7M/CKLJupQtOnMlfNGxBvwyFgKDUn3r9i475PXSVPW/0z+b\r\nalEXsGs//vqQmTpQacJBL+WqW6NzgXQUFHiL5uE7TmPfdEdPxlHdYsiiHRIxQODe\r\nH9NYcEsfFUBEntCq8HIyuiMQnG9AE4gJaMdxL4UthWApByRjtQ4xEUapACc0Dgd4\r\nkKiqBA20xAsDt2uFAJ33iUJ3c8SHc3DFPbBMZO0V/CHkxEy3e7L9tQ//cew9Lp39\r\nuNyMv7PuMsPQ6/nVy+77e3qrE/j+fABTQ/iIHpnrQOu3tm6Ud/P0etnKR5CxMbBi\r\n08tH9n2Fktynv1tRGwHWz0EwXrodXsFaZQ5yspy2KmAxpMndAHzKev311IldrKi+\r\nOMcvRKhb3ydCeAK13hJWXL6m4xgjB6Hanmn0k9mAU6NOkXgFeOijHSzAEVdhu6+c\r\neIfaBwaw88MOccbI5t6129pLmWqKu5c+k7H7g5Q5zbTjaJJ4zvYYy3cc0VpNDwuB\r\nlDgN/5T6z5y//yr0mk9jbp7HcmSJvy0quhYvMW9Y1y/TRxkk1nDyTg9Ev4eoHia5\r\nD1zm1uWF1qAMIAacJ+V4pwwoJABsFacUwlCurb4QpZOrw3fjzMhpmWgYox90Sd4a\r\n1omeyztAfwUhWn0+wOGnw/Zqko7n6gp4+FI4gzb0C/uDJX3s8/7UyD2SOAWooAPO\r\nzE5r4PYd5mJU7+skuj4D04jOqw9oRjUPMHz/3tsATHBa7oeH2x6iecnAekv+A3gN\r\naR7FGLrylDxx8AEL7iEUbiODaPcTzQMxZtD29LbSAp8dwL60Awdtx8fpfWiqn9yK\r\njhLlf+hZ9tMnditwAEmIl2REaQI3Ad/8jtqxGDylZJo9jNOUmHfVZ17ksgu/As59\r\nZSrAICy7QXMy6pHsWWMjnlKHLHat2swu9sPHwwYEXg7qfwEIAO+02NfEK+YT5Z0J\r\nLDygjnUUwJld8mhUwio4RRxqqGYMbFxJl1aJfhjHE0nP9nniE0LOJmjp90Kp3mPU\r\nbmPKk7ATLm4d8fZUfSs2BtekcMQt/j7d0wR3nlAlPfgSFF0d+ZL0qs4dPzfGXY5x\r\nkOm0vr7Xy9ii2rX9sZhiAD8m3LBlx3CvXdjLlIUkfwiJzRV0V75+H9zPvKMmSM5U\r\nrMnb7mqNX1BNNwZ8kshNXge6Dn/oEX2ljZC7D9KJA2lTe7EqOnO5UgQhh03cl34q\r\n6LxdG3tPSeFMIz57T1FcoHD86mkq+Acy4Y/c+1NMiZUcvTe0Sy1ISkD7/aLKzKw3\r\n7DsrKSMAEQEAAf4JAwgB0g3P8cMKBmD3Fw6/UlJ6W+HRAr2c8qilYW0ahr9btnCg\r\nfK6vCaTAXXo10AtPMckioR/LFp1t5AIY32RR3MMFNigI1iPLFJf/cpVd/wv4f7cv\r\n0wzGu1dmA5GKsZB0u2Q626upaEhcnospGldTdyKQZTPx3+PijZXs3zGDLkfZzDii\r\nZCVpYE35CITdU5ADnBKjKHnlHPsbk5z29QXt49XncIq/kFcGdPF/tULcKPOsnUyl\r\nxFd7orNgv+wyFGyHevvO0ebZhrnO6rwCRzeQrs6CgL2heGNULCEz+vAgxd19voPb\r\nCAwtba8xejY/TV8Z1PfulUwetHgLW1d/2/YY6rKRJncBp9/sGEmoBpemUJbY8ROq\r\nUT7QFuqap4IBlfMj+g8nCsVeXN0DcBHExrkMwkl6DDJbwL5yXapZt/jOzGWuUyRi\r\nMc4yn0GIRwileHAbQ2Cgyqx6qCVjGQCIN+UqTMXp2sOtc5BrIg3mQSrhKqzPOAGW\r\ntE8IFd/XAiuhwJqA2UPWcTbbE+NI4T/SwCzkBtPUCKdkooZBXNZWxZzx/gR2A3IU\r\nzKsI3bTacYCLl89NfRzP+0bGO2ycupOKR9DPNlUQJpnqhW9mZO2O+tkPxnhLGiXh\r\n/tUbRMGKHpTmazgBWOLtdTYDQ3i9lWr6ivfOMKaTdmQQJkpGxZ1t59JRHB9GDBkm\r\nrGnET8YUbP5tSGhjxY2GG69ynoYbxa0yxBWTvMDtooMk6lIfegdjVSrSvs5+kfE1\r\n575ruo8SFnMISI+Y6L/QBswrNchslNHrZankO1wzm9piLJkqvqRUdbJNK0VP9NPh\r\nZZcBudVQdmstFZW3L4wxuyM9c70Pf5OuS6QwSNKneVROe/mOgUC4f3w1QQ4Dx+nO\r\n5tZF5I5RFg0tZY/tgk0IQUaS/SLWik8sQsz6/AM0kFwYfIHCwoQEGAEKAA8FAl4O\r\n6n8FCQ8JnAACGy4BKQkQ/Ua2aXAKiCnAXSAEGQEKAAYFAl4O6n8ACgkQtHc5J+YH\r\nxvOIAwf/YMe0lmssQ06f0WfFq/i4AFNRkE15jr3jbORdlDk8k1BAYIo0AcC51xdA\r\nsNMI0NKddHrLjMBCCNmo1vLvdimd8OAafANhcYekbDwfAJS+t5p9Hm6bZrWKP1wn\r\nfSI8UOlml9r9kuQ2Vxz6VB7WPDPlpyXJAGO1tSKHThEJEKBpsdLzFHf7cPeTgRgt\r\nW31h21/g7Vc/yQ3VvGNXwyqpzN07cQH4jZVJyfd0zmiMWQxei7t3f+h6zf/JeOzm\r\nYHKZ9LdO2S7mj06Sd7EaWxvwHzTbiZOA4cThLvOnQUE2uRU8bYrS/5RCgcSBc1z/\r\nKACKLKIklrKzotQUBaaYBTkEDoc8ZZAND/95CEyKf/sC8yB+NcQNPl9/pBn5TAno\r\ng0KpNdhCC5wAzzXL3vNp4f1uDpmLaoJGf1F4VnkmZ1akO6jfgMtttUmo5jWiKmfH\r\nzt/JcGDSICaj3+Z1RaV7JGhxkw4hQ/C4YgXww3+0m26xQ7jF6c2+vX6hX+gvvVTL\r\nEDn3VzLAM+rJAVCwdY0O2LI29GkUOJOt7U5H5Zlip7eQfpEKaen7ml0YnXqibXz6\r\n2FpKNv0zieitZjHBbQzMp6PRckfoEU8p4oZJRwVt68Tzy3esGZTiredYNjjzVjmS\r\nnw0ZCsCvJkzTWWO6JU8PHUslkCfrUhe6bayRtvnrGYNTZOyMV1UzHwys7O+IUMiE\r\nqJAIwOnlZdUDWWyMjrS4hglPZ8M9h8gdhJ+nhrQz/oHsAJFm/qd+nzuAjJ+mqCTs\r\n/V/gL+qgr5WxVgQ2l48kJDvqJCW4GbQmqWnNtaj4AD0e9Bsyn+kqiDPV/lK456nx\r\nDMiUKBads52hQ1AVEH4zD9OJmznGUHxyBjIgFd9oDPfFtAq4RfzWsZGcpDGjA7eR\r\n/ZPFarjI9j2nq1bXKaVnKLMJd8lQ0JstbGco7AG3LCdLJdpEF94IBPb/ABIbnAvK\r\nzYqklJ7w82x5WJ64T5wJ+TzHWL0f3/4zzBR3bZDDLgPlqMOi37fZO5CjEq343Z2/\r\nVdtScwKUZq+FtA==\r\n=HLTf\r\n-----END PGP PRIVATE KEY BLOCK-----','2020-01-08 04:45:17','2020-01-08 04:45:17');
/*!40000 ALTER TABLE `pgpkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical_products`
--

DROP TABLE IF EXISTS `physical_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physical_products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_option` enum('all','include','exclude') COLLATE utf8mb4_unicode_ci DEFAULT 'all',
  `countries` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `physical_products_id_foreign` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_products`
--

LOCK TABLES `physical_products` WRITE;
/*!40000 ALTER TABLE `physical_products` DISABLE KEYS */;
INSERT INTO `physical_products` VALUES ('1413f410-42ce-11ea-9c23-cb232019b04a','include','FRA','FRA','2020-01-29 19:36:32','2020-01-29 19:36:32'),('222a0a20-42cf-11ea-bf92-019ec6993384','include','FRA','FRA','2020-01-29 19:39:58','2020-01-29 19:39:58'),('30ffd140-430d-11ea-80cc-51ea9a802df7','include','FRA','FRA','2020-01-30 03:06:30','2020-01-30 03:06:30'),('511a9a30-430d-11ea-9283-b5212b0560fe','all','','AFG','2020-01-30 03:07:09','2020-01-30 03:07:09'),('51951790-430b-11ea-b481-8d7a7859f946','include','FRA','FRA','2020-01-30 02:55:29','2020-01-30 02:55:29');
/*!40000 ALTER TABLE `physical_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `mesure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `coins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('1413f410-42ce-11ea-9c23-cb232019b04a','20G MDMA CHAMPAGNE  sent - 24 h','Hello Good product','Colis non recue = Refund ou reship',100000,'1G',1,'btc','7b252520-42c9-11ea-b8e4-0dac709a38dc','592effc0-2913-11ea-9ed0-3fca0cfc0b17','2020-01-29 19:36:32','2020-01-29 23:58:38','normal'),('222a0a20-42cf-11ea-bf92-019ec6993384','10G MDMA CHAMPAGNE  sent - 24 h (Clone)','Hello Good product','Colis non recue = Refund ou reship',999998,'1G',1,'btc','7b252520-42c9-11ea-b8e4-0dac709a38dc','592effc0-2913-11ea-9ed0-3fca0cfc0b17','2020-01-29 19:39:58','2020-01-30 02:44:58','normal'),('30ffd140-430d-11ea-80cc-51ea9a802df7','new','hufudgufg','88euhfeugfe',99998,'gram',1,'btc','c31d3a00-42c8-11ea-8b9e-39e32af38d37','6395bda0-27ab-11ea-a4fb-dfef405b6816','2020-01-30 03:06:30','2020-01-30 03:15:15','normal'),('511a9a30-430d-11ea-9283-b5212b0560fe','Lenovo V130 81HNA01AIH 2019 15.6-inch Laptop (I3-7020UN/4GB/1TB/DOS/Integrated Graphics), Gray','2.3GHz Intel I3-7020UN processor\r\n4GB DDR4 RAM\r\n1TB 5400rpm hard drive\r\n15.6-inch screen, Intel UHD Graphics 620 Graphics\r\nDOS operating system\r\n1.80kg laptop','BTC',9995,'item',1,'btc','13dfcf60-42cb-11ea-b604-b15d53e3fcbb','baaa2c80-2789-11ea-acb2-4110865c362e','2020-01-30 03:07:09','2020-01-31 04:28:19','normal'),('51951790-430b-11ea-b481-8d7a7859f946','jygvvygfdyfgy','ygyfgyfgy','uuhguggu',0,'gram',1,'btc','c31d3a00-42c8-11ea-8b9e-39e32af38d37','592effc0-2913-11ea-9ed0-3fca0cfc0b17','2020-01-30 02:55:29','2020-01-30 02:56:31','normal'),('6097a7b0-4328-11ea-a3c4-1f09b43c1ec4','Mobile','test','BTC',1,'item',1,'btc','3bb76350-42ca-11ea-85a7-4d066b23baea','baaa2c80-2789-11ea-acb2-4110865c362e','2020-01-30 06:20:46','2020-01-30 08:23:14','normal');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dispute_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_pay` decimal(24,12) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('purchased','sent','delivered','disputed','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'purchased',
  `type` enum('fe','normal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `coin_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'btc',
  `marketplace_address` text COLLATE utf8mb4_unicode_ci,
  `multisig_address` text COLLATE utf8mb4_unicode_ci,
  `redeem_script` text COLLATE utf8mb4_unicode_ci,
  `private_key` text COLLATE utf8mb4_unicode_ci,
  `hex` text COLLATE utf8mb4_unicode_ci,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `delivered_product` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_offer_id_foreign` (`offer_id`),
  KEY `purchases_shipping_id_foreign` (`shipping_id`),
  KEY `purchases_buyer_id_foreign` (`buyer_id`),
  KEY `purchases_vendor_id_foreign` (`vendor_id`),
  KEY `purchases_feedback_id_foreign` (`feedback_id`),
  CONSTRAINT `purchases_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchases_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchases_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchases_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  CONSTRAINT `purchases_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES ('161d7f00-43e2-11ea-b7aa-fb5e7373a167','5f59d780-430d-11ea-9f0a-5b632d6b4a68','9aa8f130-430d-11ea-808b-a328e71b4c9d','954937d0-3b7f-11ea-b750-310488e4b060','baaa2c80-2789-11ea-acb2-4110865c362e',NULL,NULL,1,'2NFrLyARXehaouP7DJzTfe5ZLnJa1eL5mFr',0.000002130000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAyA5l7o3Yf9KAQf9ETuzt8RLmOh0L2yoW7qSAtWap1TJOp+gNHUNU9D4NOmY/mKNdUH62ampK8CEcMMQeUHLHOFYJTgO+L39T++2aOhjE1WyjdGQ3aHmp3gxVBrN9+4bZkCOILM6ZmaQNIWY34c3gwvi030QSXgQusfkGJyzm0EC1NMgMoSyTSySgJmNlvV+xGSQHabDjHPMequgDgSA9NIzzCDC1GljztGNl8acVafm55iu4R6SVLWcFd7fzRuz5tYYVuK0JsrR/L1QOeeSVRf7rjd8sHaWT2XpAEV/vem9L96JdwRsigjmGE1f/fKEzYN83DpkEEaWbeWmPMsLfGViRab01ENv7s2H/sH/AAABDAPqR7MWmgI4IgEIAKaZUzcuagZUz1hbt/Pt9mgVbomX+cQ8W7GKcouCTqOgdTbX7eqvjFGzLscnFu8YsE+pqhmqDO5kqEOIQuWSwXlc3pQZopI9Ims8NN88xjnJPRqb50iXKPIchKWo9DYvyDt6IDkxgQoacJGeOj0RVYk6xjgRn2ULVI3mv9te6bANpXeAsZhmMWqEmFvQG1KHhtkM5QQ2bICGySdXQTppG63YE2rdSkuS53+P3rAtAHiQrPqzllHTRDaSrUJs9to4zXfxBmLRKjASB77VHd9LFr/Q/YvoTrs9OS/KU2gpwzHauhUhY2H/qDsGfxGE+s6rW6dSnbb3IjKNUEW3pnlY7o/B/wAAAgwD3nwgXD0ccIoBD/92CASSQvJ/reFtZAQOS/SRKmv8N3NPFJ0Qmjn5qxqc9ouYPbwRdbBRJPPEpDg7DKHLkF2jH7227oKNzl8Xq7fNDitwp/ZxJtxbWXh0UI6XE75Be10gdgm5fB0xLnxPvNqkF50jogHRPvbUnsdwS+H5hgKB8VyKOzKRqdsZusNh/60JvZD1M4BPamWsLg6Rj1nth4efdN3l8596HcevEIXw1N67JQ1iaHWZJAojYxPdTrZnN8TILudF68b+LFVfZqEiD7+yBnoiUHXqhuhgwExdadkJz++IIWR04ujRBmyc3xZL8/U0H1K8U06x2W1vw37fOJYAi2X+Fq0XauxaUzEHLFfNa/sKlONvT611os9IXZRmeKZHaQhmavSQYjWBt3RMkVs9xDbl9SezLSVV62on2mqMXqZMI7bV/yydp9TeYfNJrL1jhdPtVLyzoBhspXQAC9dtfbcVbLz5+wPX5OIRRnlrCp8Sf2ildCdSXuMdQ/mPnP1ENWL0/knS3m+U9rNdJXl9aAuITMyiQi+wFT8unovWdX6/ud5zojghuJc9UAUbvr3llA3F6OglxcYxfLKv1XhKOW5+EUHygzQaRUKEnGhfuKWnIdeG0m8W5lva2EBto94HzzpZNFVZFtiFkvhYYdxxZpz0pEPwBG+DiszLV6mT5vnw4Yvj02D6IaYe/NL/AAAAPQEAbcIqndvA5G/tMXAXQHJMGJulUMJoYe9AER5GqI7/8QgUBs63asfD0r2MEmXsk7lsFws/riUB8f8s+M8=\n=LGGy\n-----END PGP MESSAGE-----\n','purchased','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-31 04:28:19','2020-01-31 04:29:26'),('1a0837e0-430c-11ea-b1a9-2955aacdd25c','5dcc5240-430b-11ea-b919-f9c91da03de1','f94acd90-430b-11ea-92d2-257ce3c372df','556b63d0-423c-11ea-b78b-f774d6cc9e09','592effc0-2913-11ea-9ed0-3fca0cfc0b17',NULL,NULL,1,'2ND9ahaAQe6bedyg13udLBVz2CiZoSoBUHX',0.000002160000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAzvsI/dFeq8QAQf6A1ew+yulJ+34Z58JsDNTwIos5UDz/UKnOJOzOsxgYjk5ZJSWj33TYxs5QP1s99fJWjj/hLmM2uS6lzuqHtIwkgVYMLxKku3GNj6gSyk5Nc9K+5bczg0PGXCRO4XqvM9fUMmck1RIjuRIIXCfWiM7UOasgmvm5oQmdtQfqKir3kQ2/jnEvSvgJa66H4Co2/fo6BtnxIxAC4Ay5O+WOKfZQsly/AMCOO1et/7d43JcB+MlSGUPnoBU8skTg8w5bULRnKwJtHWCxmTzUCThUxi4dxmpphK8jRTd41j1KiyxKSxdEM9WH5Cj9Lbcvr+7MfSJQ05+Lju3RaFK/sC4RtKpm8H/AAABDAN8Tt09FjgQqQEH/3ElK42wf5JTYCy+5SZHERTdqlrJGMbymC+6nHTRcpI0091G0+Pl7intTmiFx6Iro2Ay4tS13OR/2Ioqc+Apq820cWxVncj/3BD6F7t14LPmQa04CgrJxRqIknyuCwtlG4UajUbtMNCDK9iiaA/g7m+DbBkqA7ATyQNKrO8hhpriiwtPgB9UyKn60qNxPbNsCENmqEQcbQ4OY1IxqaMj6m0VtPSNa19u5iX1owVt2rmdmatRsGJRxLiBTyTY6X7BIt9yBdNMUrYwVJy9DFFplzmrUlOfTDS/pvv1jTfH3bq5bkdIr6yniVkT+RTQWVoQfjapjeq6YROOXM6lJ4DW8/HS/wAAAEcB5mtQ54/YKx3Hy+MXLuRXmTis0qhqh5v/bVxqayHGS/KfajWU/41s6SW77XDtCYavKp/UFVG2EAcyKEv4jAF2MAtZ2ctl6w==\n=vktj\n-----END PGP MESSAGE-----\n','sent','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 02:56:31','2020-01-30 02:57:50'),('20911a10-42f4-11ea-9ba1-bd9a8b9a1a31','f13f00b0-42f3-11ea-9b17-b9d6b2089fac','222cffe0-42cf-11ea-8c1b-e5cd2f1d02ff','556b63d0-423c-11ea-b78b-f774d6cc9e09','592effc0-2913-11ea-9ed0-3fca0cfc0b17',NULL,NULL,1,'2NFUDhBHoo4bD1pvBDWzpmekKNPFzVKw5dh',0.001087140000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAzvsI/dFeq8QAQf/Rk4e9at3LkoqCcLc3VK3AcUQfuE4jA1qxvEAT2xOKoHroCz/cPJwcjJ+tVGyInTNDCSOF02S22g9ncvwS2spgs3wA7WI0GjUtGm9Y2SNLkWmhXTrF7PdN/ez4szONb4Fc2xjWe03bCrKytpUV4iSNW7Yy4ZGIpUnTkm1EP/o7HC3YVMLGl++YWlF5+m8N65v09UaoV9hfe1wRdKaDoowC+Pwl4jTy/Aiw+Qn5bhpVJNoe/7zih5A3NrbS1Xa8zX3nkiVW235ha9M2zBwpZ/X3XsnRWp+SlEqZ6Mz/ybWnxiume8PfOrNj/F3aj/vKw12GmpDY6qsZKnhg92Ir5503sH/AAABDAN8Tt09FjgQqQEIAOdWTnxWK1bWbDH5GPGl1De0bcganDwTz0HdgZ7ftZXU7BlYCuCenfdutHjU+4lFSNlGkpjA37vWFwLXMp30WqehYhboZosffJJs7eWpPl5E8vHTHtSsd6wiq4TWl/BzbD/SpeTVtER0qKRk1TtoKWhF/XI+rqs8EFoIgjtYEQLRsOGpY2hkweHZAeenybtdY8tgyHm12Rs41LBQV24QeHrdWwI+BrFoA275sH/viLu/RCcVWfuGZLjw7K7Qew2ieNugw3KlX+8Bp0OOGVEBYoIquqXRjCtutKicOdHrrbESX6+/eKRFw5snLuWFnPqvtjMgqfY470fnaRY3AUP4MpPS/wAAAFkBeRnjvx4aVVrowuGd4+Ig5avx9Evm+RHyyjqN2BMVfDwDRyAPbFDXhdzwJLyDBdT83qlREYp5uPfvE+X9Mz0e7UhZBWJWqBZ7RpQfy6TkPf0J6ehE4SyUNA==\n=8/Em\n-----END PGP MESSAGE-----\n','sent','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 00:04:55','2020-01-30 00:06:30'),('2e219a50-4356-11ea-9880-4be8b7141486','5f59d780-430d-11ea-9f0a-5b632d6b4a68','9aa8f130-430d-11ea-808b-a328e71b4c9d','954937d0-3b7f-11ea-b750-310488e4b060','baaa2c80-2789-11ea-acb2-4110865c362e',NULL,NULL,1,'2MyxUsbDKZuXcUgAJShzk28eEMwyeFMA54E',0.000002140000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAyA5l7o3Yf9KAQf/XCdcDmu8YM7DPJ60Wqq3QCdxPA98Ywp+WU9s5KlLDr/JwyYw2QbeYBWTNSDdyTln3VHBsnhQpT90aPlSEL83P4JQyoFmuFE57kIcdYmR+At6YLy8Y/2y0Hr/+9K1xtmVIUvWWlE21AguAMBo7t5UIsUzfdK30V1qhdiRu2uSi0nn6SyRI1I0nXN5BXRBLC5bgFPByxyozj/ZdhpE2prUsv8anfde8fjFQRbZz2Irx0IleJOXRrjbP5W6ddXRMPMijF38x3ISPufIs9DcQAc4uDFUx9APueS+UTEZ5KBGmPTHmtmq8NrovfARN3kbmCibn/9ZaCFKH7Nvttawzi4Ug8H/AAABDAPqR7MWmgI4IgEIAJAReWNszeOC7vTr38YJR1WSWJpYpbPegGKfh1BdiQOWJs9ZZ3nsNK6Pcu2AWmLMoB52fAGJxxtYhRoLPxjEBsyFuC1P1Q0B9bCL4arKD/wzQMgd4y3953aBrKOjTd5QdwJvwGxnw5V0lGI4JWidVOpgSW9AkIyD1N7Ogfmz+J4SvZc7E3wZDVyYsR/QXZ4xUuYKdrDpMpOHaizHCp1UfqFxlWCi08+oiXzgAbUZLCaajYTKJPi2a/iJ3UOFLC+FHJBHsekh16ovYKC+VO0iaWjCT3NZURpUAwdQ3iPsnTL+/bu4VxuBEk/anoD33pGRZd64eyCVt2zTEcYN2U34GnTB/wAAAgwD3nwgXD0ccIoBD/9QRY6JORcuvg8VquOtXyhaczBBAe2/DKYQ3yfQPvPa8pixLdGSaREXQa6LWQQUJlGmYhM1X5230pb5d3xoZomVtzAXPJCfENdclb7NXHbl/BAvUbYqY/s8SAbxV72GtBCGhHgu3OSlqqTINeH8fxDz3D2O7VtjdodKgezd+JqqdV/piLiCPCjvGEIsZ6gdzusYORYGG6Nx8i76BYJP1phHWsTflZ/odisEFA4geQv7HaVllPwpu2F7f3Ij3xPH6Z5wYakn8iymx/g7S/o9vDjI9nD/AWF1hl4DWl+MPtp5+FTiyaR6a/TzQaSsByIwvwjxhr5bxRhkaq897WoDTQD4u987kL+f8zWooayRqSHhBxMN0T0Cj1Y86aS8d6CXf2MPwQ9l4g0OkApFd7/qeb72LZkngKXQE/yRdyQauvRUFPcUgzENEDxQK3vTUALYgfoDzkZyXWFStGUsqDWUMDnifeeMJrw4FEfOC9boLcb+72BhBWAIq781gSqLQ/AycOYB2j4VwGXlbHPxA40nBhEhJ6USzMuplUSRDBu0HUE1wJavFtfwbwwdHUSO46qiRLTOPH59vOV4FLYOzZ9cI66otCi4NqKUzoeREl/yzm5gNE+TjBR+JIWmGTmslcXgpyEgzYZXfs99Aylv4tNCJMBTKfGxMvn23s7hoTXTtTLfv9L/AAAAPQHxPbwLydSUVSLi3EZBNjXyKEFllk+6hO5OAKB5DdPKK5gswMeOe/cw+chUTjX2hUfBWOz8jFnLLpPyFeg=\n=0M6G\n-----END PGP MESSAGE-----\n','purchased','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 11:46:46','2020-01-31 03:23:35'),('341d6ed0-431c-11ea-8fb7-3df6291806d5','5f59d780-430d-11ea-9f0a-5b632d6b4a68','9aa8f130-430d-11ea-808b-a328e71b4c9d','954937d0-3b7f-11ea-b750-310488e4b060','baaa2c80-2789-11ea-acb2-4110865c362e',NULL,NULL,1,'2NBiMnZdsm56eEPciV85YMqTfTVghQkQKEP',0.000002150000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAyA5l7o3Yf9KAQf+NE2hpqOj0iJou137OLPgBPPGX/rBBmQIN6hu572L2/Ksinbk+QFuYT2E3zTRsDDrm83fjrBKySGpW1J/HFJy5G0VlUS6OvlyFmDKBqAxJGlQrIBT3hT8DNWRI0zj3Mqv7Btprl6j6jShmaPT6Gtvf1FCE3x9zaq5+IBC8y5dhtRgY44Qj+pc5nOBTJWj2GSBqbgO0aDkY4xvX4yF0VY+vv59rmLY9PNt2iZIeehpUxTHdqnEVfcLNvqojDuRXhjZoDtMVu4vJjLI6mBgd7UbHHLDf/BnG+qft1D9PBAWI1U5ILkm32jN4Nz4nZhhM68oTrTLxQY4M6k9ORe2AMp+lcH/AAABDAPqR7MWmgI4IgEH/As0ZLfaoYnvBCf2I6klC8U7rs+IC7Njmb8JUPGO7N1iDeqCFaD+Oq4yew8Zd0aXlAolQ4rYu96Oo0AYKd9CoULADwOav9xJEA43hRR6FUX9tCZ77zW4kyqu/WHi2HmuMhEKQIy8ZysAdPIdslk/G4jbsa9/ogZER4ZAyCaeW/2cc4y/erfsM71m1aJv5VL/BwRFppph2IZFsaZ5Hda33w/fiftszdXh8iNgWr32i0Bk/GRtwo1UD44jYZ2b8gXfd8HsfrkpPZJs6+WmkSw2hnMjY9hE7JpNMevDJ1zW9cbHePTOPmTVu6xf7in45laUeY5P1V8i2NjXmAxHxAXXJzPB/wAAAgwD3nwgXD0ccIoBD/9TWufzDJfLPt9su0UEnbsomLa4+C6c1yMvJoPOzHl2xAfIRh2fLuqvOnD43OXaxGs1yHp9M4uD86plQlCgPR/0/k8GGDpC7zVBDnQqyDEEsJi6TRUatJ4u0cFaMjxG/Je2YxaLFsrhDpVa8piiI49AAqahDCD5wmWbKp1OEe3ZTTTdvvGKTdT1GDwTpFJs64JIQJGZ/nraFDcz0oMHNVagWhEh6i9woJm0XgnPTMmGVmuD7rgw1oXLxBFcACG+j4+yu7TDK+csa2vNICRY8JZiF/iTG8vTyappVPyLOW3v2aIP2v1CubisQiLxuH7ADMAUf7+VYb6jTZMQP9fzLxVUXNb28buHfi1HZFTIQUTWL1+i5BsJovjm+7HHB5umw0NafRBlRERxWYKeQRIlgPsdYUqvp67gd5brYV/SuW/XAbv8MXrqzYQdk3GvvNtlJOWEQNLNcsCFi5IvJaCy9jg0twCvdy0A2sj11U+ZTDfAzlzqKn10g3qCo2TmwrodyMCN3rxmMKQI7vCaDfP6dDIRAma2YqqlQt262Fe+VoitoegE7vTdGv9CmkMiUvoT/ffZ3/DdF2wAvLV6Mhp8o3GCKcl+zCu4fj3iPmFmvE/CEAZXbcm52dAHZZ0BIeycFm06e2+pEEdbOIhwuozufwukuWQvCoQdm7Lb10RqTH/BMNL/AAAAPQFEJqAvtQFh+VMkxc21YO6o6AynJAA8uGSP537n8IXmnQv9C2z8Z9NVOv1At5+QxN4QM2Rs2Dv3fsdd/Fs=\n=DjWD\n-----END PGP MESSAGE-----\n','delivered','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 04:51:56','2020-01-30 08:24:42'),('772d9040-430a-11ea-8ac9-efef61f6ec96','f13f00b0-42f3-11ea-9b17-b9d6b2089fac','222cffe0-42cf-11ea-8c1b-e5cd2f1d02ff','556b63d0-423c-11ea-b78b-f774d6cc9e09','592effc0-2913-11ea-9ed0-3fca0cfc0b17',NULL,NULL,1,'2N92XDweH9iLXrRHjPk17DuCc7wgQr895kV',0.001092910000,'','sent','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 02:44:58','2020-01-30 02:47:55'),('850550c0-430e-11ea-8f8c-db8db276626d','46a9f800-430d-11ea-89a7-e95aee554916','835f8bc0-430d-11ea-83d7-2d4876c918a0','556b63d0-423c-11ea-b78b-f774d6cc9e09','6395bda0-27ab-11ea-a4fb-dfef405b6816',NULL,NULL,1,'2MuJ7udZEFcVfdbm1LMuo7DWmxCPwThZ5mJ',0.000109520000,'','delivered','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 03:15:15','2020-01-30 08:32:36'),('96b7a130-4339-11ea-acd1-81efeca9b44e','6a2a7bb0-4328-11ea-b91c-ffc659bb3707',NULL,'954937d0-3b7f-11ea-b750-310488e4b060','baaa2c80-2789-11ea-acb2-4110865c362e','d186eb10-4339-11ea-a9f5-2be928c5682e',NULL,1,'2N975a5zSYqFWdmf7W9gCE9osSHEYhdLXob',0.000001070000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAyA5l7o3Yf9KAQf/c9PAhtdARI0jtM38jUv1D2LINBrpO7VhRq9ubfAj9gnjeUUykuzCMLIqxM3p6DMjRCQFm8IL2/QCTxFPHeO2QYCGD4KP0NrymnGsSWpZ6uUGTueJQ/vpfhUORwwviRQW6ynxJpNp64YT7Pfxx4I++wlBzx9UE5S73SyOiy/JZ8erJavFct51nWrbF/8Y2B9gvZjxoU/X3iuFHAIFRuUglVHuXoAXHNWgZRqYxU47MLwypqZDRa2fHgNY7xr2ZgnVcGZ7EBexwIYB4UbsV0ihbr7BHCnbnhj0N8YdJQ++btSc/BuAqup1Hs462Cywv18kFuVqxQrR+xBYBGfk+/yNcMH/AAABDAPqR7MWmgI4IgEH/1wAg7n0G2lq5/gIcK4csaaTvN/0SVFdpfm/CvUjKz9CSPnlq1J/QyEfrfrMCTfIJb6Ligf/f9wYv5/vIscj+/vY23as+0Ii4+jMsygW1TwgUZLT6fqeF7BmSiBGpbAeXy9IXXkdIZMz7kOg9ohg2tO6pLzEHxikUFByy/LM9vUuhIo4QrRYQt0ej3uI8OhbGXLkDdvGFyaPesJWAFeF6BkFxM+YB/8IMEKK7bEGTsvsHDkU7ABz40akj9Wf3vEc0t1Sr+u7I9eb32y84VkQQatw1InOlepNLOshGTNVjQcHIop0tFr+3f+TLve7f6GEC33XQ3DWebWyREOMYOVTbBrB/wAAAgwD3nwgXD0ccIoBEAC0J+aHLDiyfg5oaAlweADhHov0g2r2hY57Rlz6aValJGgnUtcB/9glSbyk7bH/FBxJ8I9xrjw/sb0TMmwUJ8iZepn65X0fYN7z6FtBRoydwx6tl272T518GGvy3X9oUO83aRmM9c5WthNx+vUMhwi6a+RN2IgmTWBCRFhTCb02MR68oogDKjLcmuXnaUjJ/8YFs8AkTMUAP8RRgvu+zB4XOt/c02aZI2902MOXtfu5onRVYAmjsaAB+gd5AAfA8672qZx0v5bnUv3cqZX+KS9bC2O4B0veFCD3fejgcIWchZXwplw04DeZH9g1MCJKvzh5LCpP1T5afqRIhh+atiZPB5EdpXKhY14aLJdGv/+OeUS56TnrTXErpL0r4APXcrTRaGRn5S3Z9D9bKAlbSCy/FeDU8Qpz/ygCm4dWct205Ip0nrufZE/N+HPXrIyrH3GZP78UhlGZ7oQGNKCiuRw46nDT2Ogpwqu3qAvJWlyr3uWgZSad2Gxa5hm/KY/9wbOFLEzh4tpF1YUWFy7Y8DVlVEUHicZO4yVYStVAfbrH2+kKeNQHLUUmSwCbuKBbS3zOo8hCDQdqc0d4MoAG6hlk650+0vbgpuiXxWMUdNCw8c5EU1ZuwR06XlNXI2/YmU2b5Qdh1W0cKvGjlXH5nqtVYzK2jerkxALUXrQRZsUuINL/AAAAPQGvXwtjXYIMyciHaHi5rrgSIL80SGlxET1mdlA0AUMBkJhhDwdhfXzwqaY45HKIbgeHI0M2QzBHSyomqOA=\n=i2vV\n-----END PGP MESSAGE-----\n','disputed','normal','btc',NULL,NULL,NULL,NULL,NULL,1,'','2020-01-30 08:23:14','2020-01-30 08:24:42'),('991e0a10-430d-11ea-b713-e18f7f384010','46a9f800-430d-11ea-89a7-e95aee554916','835f8bc0-430d-11ea-83d7-2d4876c918a0','592effc0-2913-11ea-9ed0-3fca0cfc0b17','6395bda0-27ab-11ea-a4fb-dfef405b6816','c865f0b0-430d-11ea-8250-4f559dc6e49a','bff30910-430d-11ea-abfb-9daebd3813fa',1,'2NDQjHN6TVvv7uMTVJ8dj4AwjBpjLEQ7eiq',0.000109520000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMA23PzvryHSMKAQgAqLp4PToNtuGZFLkb5j8mExbtGQc5/c6hb8KbkIwlhudYdeqmPOFPaw8t0AD4CLQurFwbmcnAs5KK0tEDuKnVjoazQM4guRC74+Wf/mT3yZveRmANx2B67v4+DBlnqnz/qS9Nsa13WRTX2cPsTWUr3zx3hnZrtm/CG3XfClQ6W0lGmL66E0G7H60nX0jr8RIzwZXEJaJ58ywHhmyOEogHMM/+WV/c+4qZFTAUIV+iR5wP9a1fYYEL+uPcNvbP2ow+xF2r1IqBBD/tIUDkNdBTozXByGcQWN4hcr9R0m1fVXX4KMqzIj2kpYiR0vqEQ1xokOnswT9dayx+IES6vMZxzsH/AAABDAO1NI3QX4jK5gEH/RpW5MpQIGb9agmsHnBKRpN2oCFtjxpygamYE0ScKni0841ILSazdJfNT4RH7rpqFmfymSH6flJbWEuDZAKnWFSiMEiShypenrjJdrDN2Uv1UEW/HBtaLoqpof6kx9TqEtZgw05orbFKZlo24mRlwwXPCo4Opi6wgPAF+Yta56llFb7y08bYPonRLFNEqcUzntqMrwjqN4e/z1v/yzmPO6QFz+A/gNB4yvV1rlEbmiAVadElRS6qZfTlFtrdbLbsUFOwj+oB0Brv/7CNvPZkWRWPw7IZwGrq3dc3ftfhvPEHPfJ3qtUu+eQze6YZDSaTkNQ6Xb9gViLg23mvOkdNrKLB/wAAAgwDKmUoVDyl3iMBEAC8ixCj+FUUVK0jNIH71bNqYU8ZF1Gsw1A6swHD4n6vd8X6Id7237Xj1OuYS0a++KBjefEcgdt0u3Ecmi1QOqnCCaeTgb4NP3HH3W6YNi6Qo5OOHzJayvGneqEyr3vroR3+TRXdggAD/05xnkyZd1rSrA7J5cCqwBujYla/SUFD7xQ7KXldWU4PBCjKC1aHW4DrLLejkm2G/vwgDcHsYLsyyJUov8fba50fkNxXlqr6eVzO2CcjMntY1GAP1JpX+irRKj20hFj4cPKG5QVT5QoIsdjDbpuvBQ5VGrWrxvzyxq184ADW9Ufk/iob01UV29b1TxARkMj/UtviyaQbCZS/Y1MXmwltiS1dH0BlvCzQ5zyRDeU4/wtExSNQYhzv7obI7aElSL4b2VN+mNofCbL2ECXrbjVmLVVAOGsVAc9zw98L1QM+9DGx0Y9yyBWVJhj7OUP8zVAqOI8Xv6uOwgkiGU7MKeZvdIT6d1YESp1Zsn4S5gvYUD5wR/hzm3S6TL396iAY43rdo9kSeir509zSHW6qVfbs43zAyWBFo/13gdLopTjx0emCWMq8YEfYdTf7fvKRMaXctHfQ8+VvwfAXjzFNJx1Sc+EaZ5CLssQLgU670qPz5s4cXuYqEXzohzljFhLMIXoWm7TQAZTzDcUtnhcpdWw8rhM4B59AAbx+MdL/AAAARAHijaxk0mbJ8e5kETUyDAEa5KhISuEp7Hz2GActGr+zuQCk2dddsPlXd64PTX+5/TNuDkcZL2B/Vc2cSq7gO9r2Ht8i\n=prAi\n-----END PGP MESSAGE-----\n','disputed','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 03:07:17','2020-01-30 03:08:26'),('a1639b10-430e-11ea-8724-fb2c6addeab5','5f59d780-430d-11ea-9f0a-5b632d6b4a68','9aa8f130-430d-11ea-808b-a328e71b4c9d','556b63d0-423c-11ea-b78b-f774d6cc9e09','baaa2c80-2789-11ea-acb2-4110865c362e',NULL,NULL,1,'2N46ftVCspWgd3cj7ee8BSqXRRy1fvWJWNX',0.000002170000,'','sent','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 03:15:15','2020-01-30 03:18:02'),('a1c031e0-4363-11ea-890b-73ca10024acf','5f59d780-430d-11ea-9f0a-5b632d6b4a68','9aa8f130-430d-11ea-808b-a328e71b4c9d','954937d0-3b7f-11ea-b750-310488e4b060','baaa2c80-2789-11ea-acb2-4110865c362e',NULL,NULL,1,'2NCEuWMnsuAQugVjDDqcdPhzLyFBkqvNTDM',0.000002140000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAyA5l7o3Yf9KAQf+KGqf4dWO9mzYq9hrTipwVFKEkVNK+O9hGN6oEgvszuQ4BdRaK/8julBsIY2gbJsViTEd4AUrextYiGa9FicDfPbi9qwBKH0RttJBavyTvwaHBgz+BJUbN1LCkS6MlzmH1CtHsZPyTteUDkWku2jSQHtPnZ4CHJIGqtskMUGIdgwCH6bYOXRJsRql1xQ1Eahm9JwU74aB/z4o9yMhgFcbKzmRan9WTEsbkuz3PUU9+YXZz7OTP4EHZwcRC5jP5ySe4IHyIHqoq0DefNusy/exPQ1c6XTfEiVg1q19k/sFPYDJXBdfOTTcnTE0mJR2i+2vPtEnBmAqmp6CTD512H0Hf8H/AAABDAPqR7MWmgI4IgEH+QF3d5YcktnwVNTWIgH917ZccItSA/f8S56ziA3uE1ZVbwz+BzxUuaXZsFy+lWX0gr6c4/W0nSnWDWO/c+LhcPeUOANbTWQL2FnpUYCoQbsKRQhN8COArSsSS4knVRDQcU+KLPElkzObBMlSp9rWutkomgYy1aUE+jp4/RVT1M5F5Tl+wZMHZZsZIljjsnCY6gpiMzECYz53f0l5U938lEXPhLQmCNL3k7ePd1q/RoX4nkl4pex4qm3+RgzhZ5oRXUpcU/bjzhPWO4Qeh7fo7/alAAiSYbhd8FrCvBQsuIkUyzz9BxW+G3CIqURFBuZJjrqL6r6d129mIRY5qlspjP7B/wAAAgwD3nwgXD0ccIoBEACAKyDYzNXN9hzE8YgpRhP3UzYYggTkm67ulz8lfijUwtkzbiuq0iAFTnL3oh78Fg0dQNTdO8xhVbw/MhssCwDG/hDIr4FcXPTH1S95g1TKNpEqikeRQRl362Ik/J7v0rJ/mIClRd+lc5j2oZ+A7+/PLOtibTA9dUkPLt/rEHU58t5EU4hBaW+/VCQ5TEL/pq7mCqTGGKkFhadfBkBDc5m33l4jNAY6eMvuz74KK97/GPTcEf19rS1pzGsRwuOgGDWGXE+/ML8JezQA4W7A2EVMHSLOyEjlArKqj8nmuC7a7ixd0sefpWxp7MBor7A5ZRgTYIikCpdmsUBd1X/HYPGvDcQj1U+jVN4/KMYmuunuGeAYwsRYvnc0o47qpvmvkkcGYG9J0BmHSKYxh9jCOIlDEdVQvyse7OT6+JFyl8a/NtK5cX+dNYVXruOK+ylIsHtRmMu3wZXs2+VlXy6EuH2BSL/Wag3ocQ90N6n/3l70fc9IKdx9L9hP+VyuHm1zREOhoDkH7Iv289EZ7s67SHDbTTOR2w75ZZJkXicP0znb9lAUtZfFjTkh9QvFPhoGa7Ds8AKi5wEP/KCC4BV8GmPLeNjErI/QKRB+KqQkidrJlXy5O1A3l5npaIKaSngp0kv7sTrbjEvyoBuGimuV4RQz4bbDfffJ2lenQK5075SljtL/AAAAPQHtGPTqZibORQ0pNjvQP+faimhf8WcfawphAiWVMUluTk6MypTvnzdvY56/8nNM2pMnUJ/98t/JfECVLN8=\n=a2gM\n-----END PGP MESSAGE-----\n','purchased','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 13:23:21','2020-01-31 03:23:35'),('c65d9fc0-42cf-11ea-b95b-fd6eab5cb20f','222d8900-42cf-11ea-9d91-d1933732fa63','222cffe0-42cf-11ea-8c1b-e5cd2f1d02ff','556b63d0-423c-11ea-b78b-f774d6cc9e09','592effc0-2913-11ea-9ed0-3fca0cfc0b17','61f5b5a0-42d2-11ea-825c-a1ce386dcc32',NULL,1,'2N9aXMtAPSbDDGTUxoK5sY6VUcgXdseYF9i',0.004276130000,'','disputed','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-29 19:50:16','2020-01-29 20:03:14'),('e0e55ed0-42f4-11ea-8262-59274cf0f3de','f13f00b0-42f3-11ea-9b17-b9d6b2089fac','222cffe0-42cf-11ea-8c1b-e5cd2f1d02ff','556b63d0-423c-11ea-b78b-f774d6cc9e09','592effc0-2913-11ea-9ed0-3fca0cfc0b17',NULL,NULL,1,'2My6SiHynCtCfGnAkETMAVtxXKq7ZD954Mu',0.001087140000,'-----BEGIN PGP MESSAGE-----\n\nwf8AAAEMAzvsI/dFeq8QAQf9FOsPA59ViLoTXe3r7O2zQjfLi3xq8DGiZ7q3+ruw5aImnWKPi4TSZLZTbymNdFd5TDz8xV5L23m6Ik5YWi7QZyn3xSbk41JHtNGMzLXc6HiKCZ6kjt/clWQehljEvP7uZbx3fTZZHD4d0oRYV4tQIivMe+3IvnOLfi3UpOhjmQEhfV1kbtyeNN7yBLuYUBMpBm/subDB9tVR8NRyBDSTWE3qf4adQv60kIMbgw2zbEuqLD8c2zvi9xprnCtrtAu0iqaCcVZA6W2BpEtVUBU6PYAvbAd2iDvpA2UVjOBrM5JX09ZPQ4QtkNrZU32qn0cXjEC67Qja8qPQfZ/GV6Q56cH/AAABDAN8Tt09FjgQqQEH/2pnlg3WGdbFAokQvydlMwdWn8MKh951flmPw9uSDqVe59HEimPAkTHS19ih5H4zSiSV3KloVslGmhJU0eaeReD6UNNmnSEpO1tDLL4rLSF1k+eP7fkivcqTXxf7aJlxyhZVVf4J0o74WihH3RQp2tbwag5UmhlqOzLyEEA0524tFZFB5rbhfSrumupU40qX2R+3ZcPdSBS5Nv5qH6T2B12uAFw3CU7qU8SKHasEQ0jV/8mAKXtEB5sy0G/ZSoVTzjg4IDCHcUcSMWDDYTiEEeqbhr6F9EwJlDUXGdak0PONmaQyaB2oXIOOQQotLPip6lt1d3vifb1L41z9MvMyliLS/wAAAEIB4dXLPkp/yxC7bG7XCoKZwbx8SMCSBADo+yorQRiUQGEAOtCFUJgtEpLBn7Jnowq1ahuxn/KzyVYe6xaP8J6NI7A=\n=G6jw\n-----END PGP MESSAGE-----\n','sent','normal','btc',NULL,NULL,NULL,NULL,NULL,1,NULL,'2020-01-30 00:10:27','2020-01-30 00:13:15');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(16,2) NOT NULL,
  `duration` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_quantity` int(11) NOT NULL,
  `to_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shippings_product_id_foreign` (`product_id`),
  CONSTRAINT `shippings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES ('222cffe0-42cf-11ea-8c1b-e5cd2f1d02ff','222a0a20-42cf-11ea-bf92-019ec6993384','FREE',0.10,'2',1,20,'2020-01-29 19:39:58','2020-01-29 19:39:58',0),('835f8bc0-430d-11ea-83d7-2d4876c918a0','30ffd140-430d-11ea-80cc-51ea9a802df7','DHL',0.01,'1 Day',1,10,'2020-01-30 03:06:30','2020-01-30 03:06:30',0),('9aa8f130-430d-11ea-808b-a328e71b4c9d','511a9a30-430d-11ea-9283-b5212b0560fe','Varsha',0.01,'1 week',1,1,'2020-01-30 03:07:09','2020-01-30 03:07:09',0),('a783d1b0-42ce-11ea-86bd-5969ef4f2593','1413f410-42ce-11ea-9c23-cb232019b04a','FREE',0.10,'2',1,20,'2020-01-29 19:36:32','2020-01-29 19:36:32',0),('a783e340-42ce-11ea-a658-73661365d841','1413f410-42ce-11ea-9c23-cb232019b04a','Cocaine 1G sent - 24 h',77.00,'2',1,20,'2020-01-29 19:36:32','2020-01-29 19:39:15',1),('f94acd90-430b-11ea-92d2-257ce3c372df','51951790-430b-11ea-b481-8d7a7859f946','DHL',0.01,'2 days',1,10,'2020-01-30 02:55:29','2020-01-30 02:55:29',0);
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_replies`
--

DROP TABLE IF EXISTS `ticket_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_replies` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_replies_user_id_foreign` (`user_id`),
  KEY `ticket_replies_ticket_id_foreign` (`ticket_id`),
  CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_replies`
--

LOCK TABLES `ticket_replies` WRITE;
/*!40000 ALTER TABLE `ticket_replies` DISABLE KEYS */;
INSERT INTO `ticket_replies` VALUES ('7c450200-4265-11ea-b38b-c78300510a46','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','7c446e70-4265-11ea-aea2-01943754cc91','how it works?','2020-01-29 07:03:43','2020-01-29 07:03:43'),('ead2f2a0-429a-11ea-8013-c30eb4484927','556b63d0-423c-11ea-b78b-f774d6cc9e09','ead26f90-429a-11ea-9407-f1232b67ac61','test bro','2020-01-29 13:26:12','2020-01-29 13:26:12');
/*!40000 ALTER TABLE `ticket_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answered` tinyint(1) NOT NULL DEFAULT '0',
  `solved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_user_id_foreign` (`user_id`),
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES ('7c446e70-4265-11ea-aea2-01943754cc91','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','Wallet',0,0,'2020-01-29 07:03:43','2020-01-29 07:03:43'),('ead26f90-429a-11ea-9407-f1232b67ac61','556b63d0-423c-11ea-b78b-f774d6cc9e09','hello guy',0,1,'2020-01-29 13:26:12','2020-01-29 13:26:44');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `btcAddress` text,
  `amount` varchar(255) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `txids` text,
  `confirmations` varchar(255) DEFAULT NULL,
  `delete_status` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES ('80eadcd0-3d17-11ea-b702-4f5c2d04646c',NULL,'2020-01-22 13:02:54','2020-01-29 13:39:38','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.0005','baaa2c80-2789-11ea-acb2-4110865c362e','9cd5169bc94085142dd77309a69f8968fa86858234cbca2978e3c06487bdbb7a','32','1'),('80eb7ea0-3d17-11ea-a129-a10ae1c38404',NULL,'2020-01-22 13:02:54','2020-01-29 13:39:38','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.0009','baaa2c80-2789-11ea-acb2-4110865c362e','6b0c16ce57ad408e573bdced865e499d76b4b146ef6d0f2ee2ef9300ca1e212a','16','1'),('556d51f0-3d19-11ea-9b65-b3994a1a5b55',NULL,'2020-01-22 13:16:00','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.0005','954937d0-3b7f-11ea-b750-310488e4b060','dce5ca95c4bc1bbef0bb2b2b28ac6ffcfc9f6268167f84701c020bb2536bec83','0','1'),('57e12fb0-3d19-11ea-9aa7-8399a08b0761',NULL,'2020-01-22 13:16:04','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.0004','954937d0-3b7f-11ea-b750-310488e4b060','617f8961bfd8452d7502ca747671474b4b9674b45f089f5739a102d6184e5ce3','0','1'),('5d11c460-3d1b-11ea-bf4d-1bace7051df9',NULL,'2020-01-22 13:30:32','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.0004','954937d0-3b7f-11ea-b750-310488e4b060','d90e1740606fdaa89d389b55fb96d50bb81f9607460b994b6a0e0c558470103e','0','1'),('bda48f40-3d1c-11ea-8d9d-edcaacde5662',NULL,'2020-01-22 13:40:23','2020-01-29 13:39:38','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.0005','baaa2c80-2789-11ea-acb2-4110865c362e','b2d8f6cb3dea4f5b2613801b397c6e696b1e7b47da0621db1d53f2beb2151928','0','1'),('88f61900-3d30-11ea-9a84-7d918c07bcdf',NULL,'2020-01-22 16:02:05','2020-01-29 13:39:38','2N8jzUexMpytnPLLpHzfszDBYoREy69kesg','0.007','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','aa354a4247241d2a2530a20179d7ea0b708cf9d68a298a38d55c2b0289152944','0','1'),('01a8a9c0-3d35-11ea-a71f-f330b6998899',NULL,'2020-01-22 16:34:05','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.0025','954937d0-3b7f-11ea-b750-310488e4b060','b07383dd332a9f5d5069c63cba84fa79436287365d9af795d6f80770ece4d840','0','1'),('3c530aa0-3d8c-11ea-a326-912d4b1d5dd9',NULL,'2020-01-23 02:58:30','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.0015','954937d0-3b7f-11ea-b750-310488e4b060','5fb27f5b2143be03d1973109d409a7547d06f87062c6309d198c3a8f4ab9fdb0','0','1'),('9fbce120-40dc-11ea-b55b-8df6373742ae',NULL,'2020-01-27 08:11:30','2020-01-29 13:39:38','2NEfcfRD4YbMvAnvLLQs5ff6AczAUTUmqkZ','0.00001','3dec9ee0-39c8-11ea-a240-6f630e9c5404','0b062556b1f46cb1540b66ce4512104ea346acb0cdfa0fab4614fd63348f14d0','0','1'),('724de5e0-423d-11ea-8190-556c5cafa2f6',NULL,'2020-01-29 02:17:06','2020-01-29 02:17:06','2Mt1muaNCptdEFwRynyGUgVGU83FDrbNRZ8','0.01991452','556b63d0-423c-11ea-b78b-f774d6cc9e09','9ea4ec20155531cb5945874a797a306ac0a628ad6c8837f3623a59f79debb84c','0','0'),('bd59b940-4248-11ea-b129-47aa8543e99a',NULL,'2020-01-29 03:37:57','2020-01-29 03:37:57','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.01567422','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','6a57c10712011b9ee706a15d6f3d84613ac78172953eca019aac72f03032efef','0','0'),('dce0d9a0-4265-11ea-88cf-fffd94eaf1de',NULL,'2020-01-29 07:06:25','2020-01-29 07:06:25','2N8jzUexMpytnPLLpHzfszDBYoREy69kesg','0.0001','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','9d83c3654ba94bc1b901837607b7863740f9ca05989106849ad24b4fe54736c5','0','0'),('44b348b0-427d-11ea-9e4e-11f62c8256eb',NULL,'2020-01-29 09:53:57','2020-01-29 09:53:57','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.0015','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','d0bdcd23bc28bd43d19cbf2c1215e354bac0789a72cc4508aa9d6b05cbe4f112','0','0'),('829bede0-427d-11ea-bab3-a304d38aaeff',NULL,'2020-01-29 09:55:41','2020-01-29 09:55:41','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.0015','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','73916eec46a210b0cdf4b5c004050544429e7f9bc580323249c0611a7c6f79e3','0','0'),('03b81870-4283-11ea-90b5-f19546230ba9',NULL,'2020-01-29 10:35:05','2020-01-29 10:35:05','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.0015','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','03867c1da4dc4da11b02477b2ca5a3d0a0e7676d656f3455bfb38058048d2c29','0','0'),('79372060-4283-11ea-9ae7-5d5f4476dd78',NULL,'2020-01-29 10:38:23','2020-01-29 10:38:23','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.0015','baaa2c80-2789-11ea-acb2-4110865c362e','ffa40c8d837e85b0414e568a2714cb1a26f474ea761c35be1f8bffd7c7d9321c','0','0'),('c68b1420-428e-11ea-85a1-7d56aaf91e94',NULL,'2020-01-29 11:59:17','2020-01-29 11:59:17','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.0015','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','e6cb038045d05a08b67560b49837b45e65054edbda7734f54f9711a595b3b8f4','0','0'),('132e61c0-430e-11ea-a403-2d3b0dfd069f',NULL,'2020-01-30 03:10:31','2020-01-30 03:10:31','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.01764547','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','39a24cada09b45bc85c2ddf138f217947caa6a21c0181ddf934b9995b9b99923','0','0');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mnemonic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address` text COLLATE utf8mb4_unicode_ci,
  `last_seen` timestamp NULL DEFAULT NULL,
  `login_2fa` tinyint(1) NOT NULL DEFAULT '0',
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bitmessage_address` text COLLATE utf8mb4_unicode_ci,
  `pgp_key` text COLLATE utf8mb4_unicode_ci,
  `msg_public_key` longtext COLLATE utf8mb4_unicode_ci,
  `msg_private_key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `btcAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CurrentBTCbalance` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_referred_by_foreign` (`referred_by`),
  CONSTRAINT `users_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('00dd9000-39c9-11ea-ad7b-07806766d24e','shlok','$2y$10$J94keHByiZsiGuOLMwHoJeqCDQPL0T55vwn5EzvE6I/j1PDHS3T.u',NULL,'$2y$10$/HiOLTv/.0APSuXVFMAd4.TRodc6twnZGdN7AzYF5As4PMNOar0d6',NULL,'2020-01-18 08:56:20',0,'GP3GOU',NULL,NULL,NULL,'eyJpdiI6Iit3S1lxYkNVcWN6ck1Ralc4MnNjWlE9PSIsInZhbHVlIjoiNXRzd3BScTh2SkFMc2IzMmY5TGN0WDh1OE9OZ3d1enVGdjRGd1wvUzlKTjdqZ1BtdGZSZ0czRDgyQ1pJcWhlWlZPeFVKclFCc2s3Vyszb3Uyc1R0QVNvazYyQ1NHdnlGZjhsd004N3FIZ2ZOUXNycVpsdjdjSVVWaXNyWmZmUjBFbHVQU0dYQUpyQ2JWVGllYUlvMHFBUTYyeVBnZ1lsZG9Pd1JEQnJuSHJBK2xPcGdOelwvU3BBUUk0WEdVTTRyUVwvUDVjVUdyYjV3blhTdjNqV2dnaTRWa082eng3b09RZThmdDJBWjllQ0Rad2NCYzE3T3ZoSUNHQzk2OWdqXC9xQ3lxeTBZXC9MNzY2ZElwMjZBR1I5VkFacTNpY0piSmhHbnQ2TGtDR3plWkhtZjVmbnhIRzczdkVYRENzTU9RcHFMVXhJbjluVWo0M1B2a1BpN0h6d2VQaEE9PSIsIm1hYyI6IjNjYTkxNWE5MDI3NDIxNzViN2UxMDIzZmMxMTU3ODQ3MDc4OTAyNjlhN2VmZGYxZmVlNmZiMDcyNzlkMGNkM2IifQ==','eyJpdiI6IlBtOURwUGNqdStjTGxcL2hFNHpnMTJBPT0iLCJ2YWx1ZSI6ImNUc2tOMFNyMGMwcDdHY0NCMmc2VGJ0dm8rbTVYMnJlWENoUFFieitDQzdvY2FUcGNjQlwvY0J2b25hS05RajlTcStnZ2RoM3VPRXpJemhPeGVGUjdKSjNBeU9ra1ZzK2k4SkdVaDl0aFwvcHo1eGZWbnFpd216TlFQQ1wvS1hoVnQwSWQxR0tlTFdGK0U5T2haWWtsQ0U4Y3FGZDViMWFBREYyMUdFR09CeHVRUVFQeDJSNEhMdG1TTnFSQnU5N0lORU1XMTJ4emZJVmVsSkxieVhtZCtnTjAwTGhaZytwdlU3bEp6RFwvcjJEOVRybzZDQXpwQ0JmVkh5TnBkeXVNQTV1dzlucVo4MWdmbVdnWFFocU1TNlROaEJoOEJoMEY0dldVY0FFRFV2WG5jbFZubWE1ZlpxazRuNEhDMWJlMjlSSWtrcFhNekd6blhmKyt1ajlWN3RCZUE9PSIsIm1hYyI6IjA2M2YxMGM4MGFlNGEzNGI3YTAwODZlMGU3NjlhYmQzMDVmMWRlZGZhMDc0MGNlMGFkMjBmNjZhZmNjNWE5YzUifQ==','2020-01-18 08:03:25','2020-01-18 08:56:20','2N4jR55s3SpT6QhJvCE1M4KwqLX65rpzGD8',NULL,NULL),('02f9b430-2dfc-11ea-be1c-63b91459cf7e','newuser','$2y$10$DhlXlpq4t132qg/TPLBrQeOEC5134mb7sDzjiiTW09xyZlECBrCyK',NULL,'$2y$10$HZf/Sue2SOywsBB5.WE7ROV5Ph4G8yI5/sUGCprdE9XmGiMSGg38e',NULL,'2020-01-03 07:39:25',0,'WUZ0EV',NULL,NULL,NULL,'eyJpdiI6Ikh0dmZ1Z3Z3NDBXTnlaMEtoN1JJTkE9PSIsInZhbHVlIjoiUkVENEZIemZyRUxCOG5uSjdNbDlzMTV2R2JjM3M0TGJ3QXRiWEZtNVNrVzFYeGE5cWZZQW9ldVc5RCs5OXI2YUwyN0Z4dnZ3TEJkSGw3cHNVUnhcL0tUbXJ3d25HdG9FK0MyOUVaeDdZZXhpSUN5SSszbktJVGJGc3doK1NzOGpiVDh6alhKakcrbUZxM09TNXg0Zmh6XC91aUJYQ2YzVXE5TjJ5NjRUTDl1VzNEMU1aREF1S3ZGWjVnVWdoY0FsWmJCTWRTTG5TWVhVNW10UkU1K2NYYTRoZkpVYlpRcTlzcTVqZGozMmlUcVowNVNMaGp1K1FcL3NKY1JWZWttSWVpcjhCVzR1VlJOUlZYRld6N3BqK1lZVGswVStyTzg2c3dmWnA0OHYrbjBiNWFXM0JJb3NSelRPSUp6cTRUZVJmWnpBWUdnMEp2ZW53WkppN2JyQ3RkbWFHdEwzbGUxVERNY0JLeXFnTFRQeEVRPSIsIm1hYyI6ImU2MWQ3NDk4ZTgyMTk0OTFiZmM1NGU3OTIzMWVlODFkZGZmZWFlZDdmZTFkYWFhY2E5MDFlMzg5YzkyZTFmZGQifQ==','eyJpdiI6Ik1Pb3FaRjBkSVhsaDBcL1NuNmdKSlZBPT0iLCJ2YWx1ZSI6IlVcL1dQYVFIMDZjdGxCMVREQndpam1ubnd2NmlYc25zYkx5dDhOQVZZbzRCQlJwcnV0S2hvbjJXWlcrR1FZeWhkcTRNYjVNQ1J4aFViUmJFTlJJc2FtWDZIdjVLUHBWOFlJVGxcL0JIeXg1aFVmVUNVcTNQcjZ0K0lrR3NuRjgzb2Rwa2htaE1hSTJibGJBMDhvek9BOFlnb1dBeGk2SmdyeU9EcGJ5NlkwXC8xc1hFWFZqNWNNaGxKRVdvY0R0RkF4SHd4TjVHanZ0empPcmY4VG1yOWQ5MjJTaUhVTXhRMVwvQkhpSHJCV1pUSGVjM29oWkJ6VDMxT3BiWmVtTWZKTjk0K25WR0FSNm81a0xyV2JubkR4RWF6dkdTeWF0Q0YzNXpaV1wvRlN5THpMZkpEb05pSXdVQm9GaG5wRitHUmY2dnF2dCtReGNXRDQxK1kwNlwveGhZbW1yZz09IiwibWFjIjoiY2ZkYTU2NWI2OWM4NzlkOTI1NzU1MjUxMDJjNTNhM2FmOTE4NGJmZmE3NWI3YmVhMjMxNjU3ZDk0YTM3MmU4NCJ9','2020-01-03 07:38:19','2020-01-03 07:39:25',NULL,NULL,NULL),('3dec9ee0-39c8-11ea-a240-6f630e9c5404','Pravin','$2y$10$qJ6pXXvBqByPRFQb4SsW/unlXeoh00pIVT34PBDM4BrtIQ8mcLn/.',NULL,'$2y$10$DqkPZZGxPnR5XbCpk/tC.OGK2f8AuN7eE2aGGwMi09JADBRrr8FaS','2NEfcfRD4YbMvAnvLLQs5ff6AczAUTUmqkZ','2020-01-27 08:28:13',0,'XQDSHV',NULL,NULL,NULL,'eyJpdiI6IkdjSmd3R0MwRjR3dUk2aEJQN1BIWVE9PSIsInZhbHVlIjoiWWJWM3Uyd21WbzlrU3BHMzVyaDlnaksyeVRxUGM3Vmhtb0dmUFwvd1RhQ1p6SkZrT2YrZmZrMHA4VUJSZ1pRSkprNFNEaDBqUllZRGRPcjY4ZUtUN2lxd1hKbTlOTmxXblIwMUM4M3VUSWMzQjkzWDNHNXZ6M09LeXFaV3Jacm9RN2xLeTh1UEJvUEFnb3ZZQzZWOEszR0VnaWljV3JXQ3VCSWF0eCsxejZXRXVRU09YM2ZpY1hcL2N0QXk1ak83Z3h4WThFcDErMFkrVFFzYzBWMXpjMnRZQkdjYVNFN01Ycno5OWpHMmNWM1pNXC92aEJTM0VGMzdLOVBvM3ZrK1RMbCtrWlFEdE1mbXhlQWpcL28rN3FYYVpxcWx5ZjhUYzV2RElXVHdpNnNwVzl5Q09WVnd3cCtcL1lyQlk2ZnhvSkJSTUhzczQxcGZTVmxZVkhFS2xjS0IyYVE9PSIsIm1hYyI6ImZhZWFkN2JjODllNDMyNDAxYjUzOWM1ZjcwYmQxNWQyOTcyNTRhMGQ1MmRiY2M1YWVjMjI4NjE2NmFmMGExMTgifQ==','eyJpdiI6IkR0eThSOTlpbUNMd0F6K210QzlRaFE9PSIsInZhbHVlIjoiSXBSYVRtS0VFTkxXMmQ4eWhjeXZqNWw5bGNtVVRORnp3bVRYSFVBalV5YlREOTVncnFCQW96UjlucFZUU1dITE9rVkZvVW8yUlFtSXRwZEdHZlJJU3pTOERmRlJYNUJBeE9wNGI2T1NsciszR1N2elhwcFliS0hBS0ZNV1haMkV0MVFzZEU0RkU1eXpnWTV4YVgwSU85K1N2dll4SGVnXC9kT2ZYNUZucWYxeEpqaXBUZ1c3WWRsOFRvZVlCWVI4Qk42em5QOTQxWVFoU2xRd1R6UFlWXC9LXC9vRTZEU1J6OUxDK1dUSGk2TVZCS2JORjBYall6R01sSWh6NFJzeW9LUU5zSDM4QW9MSGNYcmE2Q05CUXBncGY2REk4N1JVNjYwT01VNHQ4OWpCOGFcLzFGSnJcL0NSSnRLelIzQW5mblwvNFJ2NStFZzdISXByMk1NVytqZlMwZmZBPT0iLCJtYWMiOiI2Zjk0MzUwM2ZkMGFlMTgyZjRlNmU2YjJiZjdlYWMwOWJmMmE4NjNlYzhlOTA3YjNjYTZhYWVmMjQzODQxOGQ4In0=','2020-01-18 07:57:58','2020-01-27 08:28:13','2NEfcfRD4YbMvAnvLLQs5ff6AczAUTUmqkZ',NULL,NULL),('46665650-4295-11ea-b806-8dbfa6cf7ea8','RonaldoCR7','$2y$10$qP.waxhtUt27AY05aVdsuO4TG0g1NlMgvz6D.idvW3MNfi.wvaS1W',NULL,'$2y$10$ignay5k5n7bTthmkIIp/uu6LV0H.5jeRoK34Dfg61nnz/dgl6gHdq','2N6uQk8cQjTtkGUQxT9pxwJKRN156GDL7Q9','2020-01-29 12:48:52',0,'HPIOVV',NULL,NULL,NULL,'eyJpdiI6Ik4zZGFMeVpFSWlnVnJZT29ua0NKTVE9PSIsInZhbHVlIjoiYllLdURWakNLQ1d6Y1NQaWMzOWxlNTcyMzdQYjlDSXRCWFNDVXM1K1RndUdINWxZUmFvd3hwSUpaQUVReThKbEtDYWk0STY5M3RIOHZiSHpnXC93SVQyejBFMTl6T1lNVUN4QnNcL084blwvNVN2UTBFUUNTXC9WbGNmMUdoTlwvbkFcLzN4eUZQVlZZUCtMWWVHeVoxc0lvdVBvVVphUTloZGpvakdJMW5LQ0hzaG1VQUw1UmhjSTdJdEZoWXdNRGVIbDhZSytkbkZxeEdOY3I3N3dcL0hEOHluTzNpTnNDZCtNY05jVFJSemRxQnN4SGpCM3ExXC9CdXZZYUs2SDNNUDhPTkVFRU1VNWlSRVNnK3hpQVZJdFN5RnZWRjZVK1loQ3JQU2RnalQweUc1c2tmUmVEZWxIY2RLQTNmaXdTcVwvTGJnWWxcL05ZbVNWYmNJcW96Um5CaTVFbkVJZz09IiwibWFjIjoiZTYwMjgzOTA1YzJkYzg0ZGI0MTY4NTlmNDQ1Yjg4MDRkM2FhYzNmOTI0ZGU0ZTJiYWIwNTdiMWFiZmNlODRiNyJ9','eyJpdiI6IjE5bEF5cU0xRHZvdVZpRnJHMXczNWc9PSIsInZhbHVlIjoicW93N2F6V2wreFRiRGg4QkUxb05XeHZZWHlcL0lNd1FvZTc2TGlJd2FscnRlSEZubGZRSVV1SGZjZTZ3dE0xV1wvVjg0MG5ZckVRTUpDcHN1QWlqYUlWVHNnZWc1RnJhazFBSmRjZ0ZBbTJBUUtCODhUN3lZdTkwN1VrRmswaTJocTMrQW5jdEYyaHhWQUR0MXhoNDNISHUwYVNTMk9uN0M4RW1Tck45c3lJd2Nka0NFMjVoUTA1eTRPVzRJYTExektxRzF3dkdURDdGUmRwYnNzWFpcL0k5eVEwUEU1Zjk1ZzlFb1hSUDlLcmdVb0d6U3Z5djZaREhNUlR0RWRWaW9BWXJSbDJnOGE1YUxyXC9ZS09iWElHNjJocGFOam1Hd0JweE1ISzBENnpLMlFYQWVEWVVlbGdLdVorTHFkSEtWeFdScWxyeFp0S3ZUQm9mNE52T0x2UkV4dz09IiwibWFjIjoiMWNjNjYwMzVmZjVmODY0MDViYzFjNmQ5MDVjNjM5MzY4MTdjNzYxYjdkZTQ5ZWVmMmFkMzIxMzhkYTI2YTQwMCJ9','2020-01-29 12:45:48','2020-01-29 12:48:52','2N6uQk8cQjTtkGUQxT9pxwJKRN156GDL7Q9','$2y$10$e.KLQ.ZrEAOk.ZDImQikI.BWrltYPCVKxMTlrLYbd5YB3FNJqVz6.',NULL),('4e07c3e0-39ca-11ea-afee-c377e381033b','Kavya','$2y$10$DkWntwvBx8etvt6AKxY2NeAPrO8uCEzcNPvRerH9voQvI3O3.qwjq',NULL,'$2y$10$/1HFXqAo3ULDQKlNCFxyEumbGHvIvpLuLUxvneFfPndODJ0c6I/XO',NULL,NULL,0,'L1FBAR',NULL,NULL,NULL,'eyJpdiI6Ik5jR1VmSyszcHZVS1FlSkdoWFJpYkE9PSIsInZhbHVlIjoiMG8zV1JSRWNCQVwvRDFpRFJGeWpsa1dZMTlRanhZSER2SWNYUDMzdDhld0VXelY0OFQya0Q1Yzc4aUZLZ2N4NkxUQ205bGFJRTZuT2k2QXBqYkVZTFhOUWpZNXptN1doSm9GdWE2VjRJdG44TUZHTmNCREJ0ekwyZUl2ckwyTmtEQ3VRN0h5UUpvYkVmXC9YUjF0OWJwN0NFZlZPck5Ud3lxSjRFZ2o5d0R1WVJWRjNqTFpiNm9iMW05a1wvMFo1UTBNcnJPdDZPU2s1cVo2dThqTnJnNG1CWlFVS3JTYVE5XC8wMzhcL2E3WnlKS3dDZ3hpM0dza012Z1hpUUxQYWx1MUw3RW9nbXRHbEpsUUl3OVNuUFpKRHRnMUk5ZG56SW1IT0Q5VXI3dnlIWlRvb0JlbzJBSG5aRDMzQkthMnpkVHpEM2NSRStIK1Q3bU5xaGU2Y1RnTXVYalE9PSIsIm1hYyI6IjM0NTU3ZjkwMjdjNWFmOTU5MzFiMWU0YWQyMDM4OTdiNDFlMGNmYjRlMzc4YWQ5NzFjYjAyOTU2NWM0MzgwYjgifQ==','eyJpdiI6ImJFSDZ4TVF0UjQySjUyeXo2TzVXZkE9PSIsInZhbHVlIjoiYytxWWNGOENNcW1vck9CK1JZTGZYSmJQQVNhMkxXMHpTbTlxNmk3NGNWVDlRVmo0NFF1SHA0MkFUcW1UMjZ5alVYTlwvbXN4RGJoRG5MYUpSYk5YNmpYdHFDQ0I3cjRtK0Z4OWNIbkI1TGRjUWFoQzVWYUFjRndcL2ZmcFFhRGZlVGVCZ09DSlFjKzYza0Z4cjFDOGFNaERBeHh4Rkd1eEl3RVJOZmJIOEJTemZyblwvRkRBcisxWmNPaHBVdUJua3lZNmNIckRCUDVETFVQcmtYbG54MkRuUGtKdCtYVFhiMDdCamZcL3BhS1FjYU00UUljdVpXeXVGbndBT1pMa3MzVURoNlJLRnRncmllUWZQQjZmT3hYT1ROQ3VJeklyT1orSUozUnNFR3FZQWpoSlFsWGRxVCtjdFJIQUdYcnNUZ0tvd1I2WFViQkQ2ZlR6TUh0ZHNcL1ZzaUE9PSIsIm1hYyI6IjBmOTM5NWQ5MGE2ZTkxZTA5Yjk1ODEwNDAzYTVlYzU2ZDUzZDcxZTdhYTViMDI4YjhkYjNkMTFlN2E5M2RkNGUifQ==','2020-01-18 08:12:44','2020-01-18 08:12:44','2MxEzjZjhBwUt2611PLAGs42UHyt86WyYNX',NULL,NULL),('4f008200-39cb-11ea-9938-b77c9da27b82','alan','$2y$10$DNhJxiwcj8wB5vBgG9XKtOdoPr3zCIth2eBhwbM5jgwqrFG9Qd0M.',NULL,'$2y$10$4mEDq0y6OATjShOAMzqqeekHXirYi8nmRloFu5gSSahdAurOxPCZ2',NULL,NULL,0,'O0Q5XO',NULL,NULL,NULL,'eyJpdiI6IkJKdVUxSnU1M3hXSFdQSFNJUUduTWc9PSIsInZhbHVlIjoiUUo4NVBqMnVyUzVBRWVGak05dU41cmF4SmNMRkRlRUF6UDBDMFRDd1hLRDZJUGd2NGNMZzk3dUx3ZkZlSURZeTJYc2xTS0xXTzNsUCtmUVBpcitxZE1xRHpGVXdIMEk0cnorNWxveHdPeVlnZ2lqUnpkeEptbWNqaWRpTXFITWZaQnhZdTZVcFY0T1k0VjNYQk1xQnZwMzBsZmpDUnJoM0RvRmtNeXYrcU5mQTd0NDRRc3F1WUZLTXc0em5vODdaOHJFTVY4eU00VnU2VGZvazdScnlKYkdmSGRONDJDS3pucWF1ZUp5UTNURlY1WlNVRFlcL2puUGVCMytGdGN2VUZTUlVMem1Ed1VPUXlhcGc1NnpnK0FCNFJ3UGJ4cTNBMzlzbjFoS1RFSUxYMTlcLzd3NjJsUWszVHhMbkNqR2NBc1F0Rmk4b2I2M3V0SkM0TWcxNHlGcnc9PSIsIm1hYyI6Ijg5MGJkMDEzNjk2ZDIxN2NhMGZhZDFkYzU5MzllYzI3OWRjYzY1MTkzYWE0ZGMwNzE2NDljYWMwNjg3MjllMWYifQ==','eyJpdiI6IkNneVQ5WE5pM0xsVmpBekdJc2FuRUE9PSIsInZhbHVlIjoiSUZJUU8wWldiUDB2VnlYZjN1M2h0SDJ3eDBySG1wZm4weXRDNXdPbDd5dnNWSXViSitwaUY3cWwyR2tKNk9PQ05KXC85ZEdPMHJHcWxkSUg2ZndqTnR0MlkyVWdHTVwvQXNFV2FzMU1qaktMQmE2TGU4elVTNVhHYWpOME9WdmZZeUlyM1RhMGtcL0YwQXhPRlBVN2kwXC9Nc2F3aXBuTWFPak9RM3FzRFAxdGpqeE5WMCtxTjNQcnNCNlVqcUZabnVFUnd1RitKaTU4bHlQVU5IQkNHOFwvQnE5dGJRT3dDKzVtVk0xMUlZXC9rN05JbFwvdWI1bmNmVzF6eEtmWmZBRVNXRGNVMDRNcnlCVUhoRXVucEJFbERWYmlmdGRhNHBOcnhlbEdjQ0NEdHpvMnl6bGN6U25salRrXC9qRmFBS2h6UHJsb3ZuMUw0TUg4XC9MazA4aWw3YzZKYTRRPT0iLCJtYWMiOiJlYjUyY2QzZDgxMGY4MjY2NGFlMzk2MzE3MjdkYzk4Yzk1MDUyMTljODdhZTQxOTNmZTI5YWIxMmNiNmY4ZmI4In0=','2020-01-18 08:19:55','2020-01-18 08:19:55','2MwfXWdUpQ7XHUtkocPUs5yRZjfkgZbV2RA',NULL,NULL),('556b63d0-423c-11ea-b78b-f774d6cc9e09','Mbappe2019','$2y$10$qREJ5515TC34JNK0zosp.ucxpqq0pJ1zksiO2KUFbXd7pZQkS6Hfe',NULL,'$2y$10$uYhIx9nimRrRlErcnf67sOyoO86KIq06IG2iCHa71nXk.JKqnNMau','2Mt1muaNCptdEFwRynyGUgVGU83FDrbNRZ8','2020-01-30 06:50:15',1,'6CCEBE',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: GnuPG v1\r\n\r\nmQENBF4xxXwBCAC1Rm2IQqib0L88Ja9oGgFrChct43o5fb1batfLmmeKWPbXs7rt\r\nCv6gjbaIM4nlyKc8U9dpNiQmJ8245PsxnwU0kjczNWU6lTfGmbSUHFR1pUhgWQw7\r\nvRw5+VvAtdhfUZJ5z7N53vCWOk8vy/4Gyt7UieRuSf8J547mgAV4EU9sIHbpOGsp\r\nj83ambXROQBwtTgfwC0KiTdXzAuaK/ScYZIooD1k/2ACT2jy8WgcBSXub1RQypvY\r\nVYaUjbiifyrbf/Ct99K7BoWhlQnAAWCKA2SOGuEx0twnTYdt7fX6J6sUw0sKeUJC\r\n+mSOULvb+BOhdJCDHrEK28dLuyB+Mk9Wxo0jABEBAAG0CUNyaXN0aWFub4kBPAQT\r\nAQoAJgUCXjHFfAIbAwUJCWeb9AULCQgHAwUVCgkICwQWAgEAAh4BAheAAAoJELzc\r\nQ6oVDtDDDwIIAIcjHJ/CKtBbQi3r32kAdxnjincY+gSE6fjlG8rXWsVzYaENuuu2\r\n4TqpHnTp6yrWPTcIfdGwaiKkWMsMTos5tvzxvllOacX/lKksKVpmCwJHYzK16Wv+\r\n9qgpbu4/378krFu9CG5Cd9s8sOUl5zcyHWG/cC9H+PpRA1Hny6Oh7NXJrn6lGsOz\r\nVTjMiwrKjScu6H1MwnKkGptPCKq0wXsN4xCWuqQ4R/ijbmGUKCvouBkqwUtR4C0j\r\nQpWWN6U5d31Dt+4h07IeN28M/FQRr7QCCYPyg+xH9WBByVL3JEHZwsF5qJdcNcF1\r\nZrw8vsSWu/Fh3x9shAfx33eng0shhnpm16C5AQ0EXjHFfAEIAOrFEihI07HseNsJ\r\nRozei6AF4nTsjJQpN5kyDkm6fkBGntFrFU+v67O/wpuoW3ovPbvZwvg161mqc9ZN\r\nX4+lh5yJZ8wODRnFX4xsSDwT9w+aA+ykxk4y+p+GtzSwhrtgSdCDpE91RnCpyRHu\r\nnFZ+Py/06pSgcYmrAxi68yErkkaRFF4l011twGEC1QlsG8KK7OSRezdVgcgGOBIY\r\nxdOBHE1cIGPmOulxgsQRdnME5Q+ZnSiNP/hwmFkdVEpz9wHGPD3nwLoN7YxTw3gc\r\nZHflJqIu5PVpMBSHe1/GLkCQqt/GxkwYt6xC5O4EVwX81sbRlt/55LRHqHYmzXQF\r\n/y+aNhsAEQEAAYkBJQQYAQoADwUCXjHFfAIbDAUJCWeb9AAKCRC83EOqFQ7Qw8L0\r\nCACrNxCGDOmmtwaggRXAjZbNIdUoONxj/c8BUu1mKDrCzjxDs5nMJINnqspICY8b\r\nHHIeC7ebutwRax7FNthcpT2OtkqF6GPliOFfwwLCLZNmcGrGyeJSoYG/JqeGbd5M\r\n8/vVbFk8D9Em3mX8MWlen8Irfp+MSw3LdPc14NXvo7OigWeoEGEjwBiaAWLyqQ6V\r\nQpeq6nxrgFu22lZKwRtu10nE0nY8+d5+l9PGyH59BLRK+f+DRRgYddOqWKrdeZ0u\r\nhZjoMzQAE47/vO1dWjAVlHZjNwFU1NuFzHgc7h+oLFyiFITXJ7+DXO7d6lYtdQuQ\r\n2kMrzT3IQFePGtwARQlLd0Fz\r\n=oI0G\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6IlY4VjNIUEVBV1FEWjNWcWtnbGwranc9PSIsInZhbHVlIjoianpSRStaTHd1TUdSdUdGV2IzV1U1Uk52dk9oRXdtakZCQmFxNHRNclZDS2FiNlBidjhXSnFnNEVFSFBiQ3FjUnRRdXZlVld0YUx3bzMxY1VVWGcza3RPamJWUVJKVjdcL2NWeEt0TVU1ZUhKaXdETEFWc0dhRXB5QWs0OVJLTWxKdmZPMkR5WVdMdnE3SXVjYnlVMnJQc1ZJdTlJOFBzdUtDeitqMTRjSE5lQVhDRml3SXFjUHQ4cVdoMGFCQWVcL29SQ3RwRTFBNThqaVR6bzF0MlExMlNCNHk4RnJlR0dXUG4yTXA3dkpBb3c2UlVCanJzOW40UnhCT3dReXZBN3JlVVN2akhLTVJnZEhWeEtCTVRHT1VJanF2XC9nTllNbjVZTDFaRnArK3JCak9ab0drZUorXC82UytqdkVpM0dpTUFJMGpHZFc2Ylh5ZTRwVlNhUlZsWTR0dz09IiwibWFjIjoiZTQ2MTM4NjNkODVhZTZiNTNiN2Y2Nzk5ODcwMzY2ZmJmMzk1MDM5ZWI3ODk1ODQ5YWYwZjViZWY3NmI0YjE0NCJ9','eyJpdiI6InY0VmdPUGhkZmMxd25xVUtSb2tyVkE9PSIsInZhbHVlIjoibTBSZ2E4alp5aldLeXNcL1lVZFlMXC9hRkttYnRIWEozWUFzZkFBMzBBTUFPaklwTUxjUGlETER6UVM0VGZ4Q2lFOHdpaDJsSEpzbmxMVCt1T05LY3JkWGhRclJhM3VwTVwvRjlyNXVQSnB5SHFxZEYyUUlCaXo0XC9GbEsxdWR0Q2NSRGtRdkx5Z0FKdEl5OHFtQm05UnVRUFwvcEZlejV4c25QbGExWVVPXC9NeTlTbk04elNDNlIxNGpZQTJZWWwrWHZiWEtHeHBUTUFcL09FVkpsYTRTbWRzVzAwTU04OW1zXC9TMGVWbVJOa2FFOGxpdDA3c084VVhzWGhCblB5MTdxb0Mrd2xtOTkySFFPVzZUeUJqUXRUemZ0UU1VY1RGaEIyQmZocTR1VE9FdndMS3RFMjRUSWZIWmdSamQ4U0ZOUHVTcWRqZW5nYlwvUVZ5MmYwTlZaTnVGQmVnPT0iLCJtYWMiOiJhMDA1ZjY2N2RmMDU1M2VjODJkY2NlOTdiOWI2Njc4YjQ0OWZhZDdlNWQ1MDgzNTI3ZTdkOTI2Mjk1MzNmMWRkIn0=','2020-01-29 02:09:08','2020-01-30 06:50:15','2Mt1muaNCptdEFwRynyGUgVGU83FDrbNRZ8','$2y$10$rXP4xasZ8OIz8vnVwqVMC.Jfv/4RYr5.pBvyExW/gAA/zZu4YNcT.',NULL),('592effc0-2913-11ea-9ed0-3fca0cfc0b17','CocoParis','$2y$10$VtsZ8CrSx7Uy.RdErf/7jeoAbpk2OV5vyNTcd4Tj.tysV.1RxRemS',NULL,'$2y$10$amMS2.fLuhgy/8njT4j1X.dA/nOp00rHW5TZwNLLXABSRLbBpq/p2','2Mva89dKjvup1knHDZe3G9v7bBHs2cZZD5r','2020-01-31 04:53:12',1,'A1CGQZ',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: GnuPG v1\r\n\r\nmQENBF1+qPkBCADqUW3570sdeKFWZ4JL8SjQVujZl56HzjZ30oGW/ExsU5kNvGZ5\r\nji2siFghdUe4RlctkojAp9sxKa75KcrqoveIANFR3ICVfIhBNRABw/JPIBZJYGz+\r\nry9eCfNOQLq1k7efk2w9pNu8arDBoMxkDscyLREfLguwLsHwteYnpNpwfmIoiC7b\r\ny0yLLrtPVJlIU2ri3SaEMlHkfA8k07R0MrNVbn9allGAj8kt8UKNjz1jOcIJSHo5\r\ntP9tVFHbokvXfM4ez/3A31ZeVQOAtCJySQbL9JcemM0ax72LCCI8LmlmEDIAG9hd\r\nm8M3FVP1W/781MW+v6GIJPfBzIZGrEjtviVJABEBAAG0DXBlYWt5YmxpbmRlcnOJ\r\nATYEEwEKACAFAl1+qPkCGwMFCwkIBwMFFQoJCAsEFgIBAAIeAQIXgAAKCRB8Tt09\r\nFjgQqVKvCADBYtoStrofG2nLFSyx9Y8wOvFjK0i4xNKqyyhRO5ekKzHb5AM5lXoY\r\nMkY1eRa+v7B6elBMmB8msTdds+1xOK+JNBvLyvaOMHd6XLSI6PTC75+OMxbddBpY\r\nvjwm8xR+W6NObxtKMvb185+jB6Jfq/pJq+hjcsgR9qBizdlykVB/JlqHy8r3k5mw\r\nFVYgwQRaFG0TEjmGwd4NG0AhuZKnc7gQ3syEwYL1ng6EX3gxU334vq2erSESAJ3/\r\neQ/j/igCW7xkkNiSUtRcQF8dkh9OcdpImb2dUxRNc7VJNyUinN5JdbN7pBSDOxtx\r\nJ/kpLmB8DQifBVDQa394UD9cruHGllLPuQENBF1+qPkBCADALWpQmBiJA8Teawgl\r\n6ZLiRr6urBXlAny7K3ybeBTPhUKE0smWfKzGb+5dxVYvEOm4UKzru+H5crSvkhQE\r\n4rMmnPTnhrhtZDZOAbfaH1nrbiMZXGOu42MtozWSOGBglA2RZYe4ahStWpypqf47\r\nBSejB1tGi/bstGtTz6vukWHQWfxuwqvERGBqI4/aIJUI5k5mWAfislLFCIzyxxNw\r\n6dytVTSEFvBi+zP2Ni1rrH9gIcrvuyBoZWURDzeEA1oh1iz7f3KcLlpMF9XYrtMn\r\n6PYyrbj12yL+MY5+AWkHvAjNFfSD04y7FHNTw50iET2TjGeROWvbkjgnfWWDqSP9\r\nDBfPABEBAAGJAR8EGAEKAAkFAl1+qPkCGwwACgkQfE7dPRY4EKlrLQf/ZNcBhAOB\r\n0IUV+pmWXKi5DUKbYGx3x8gC+jUi4/Hn3DPWnkje1sALfSiRgEvYaTocGmaRv855\r\nO06/nsyVKGhLAtxhv5RH4a0SOr8LTwB0zAqjdV876mjx/b9wrKPccGZSAIUv4qWT\r\ncWB7l84pbNj8rfAZcQx8s819tIedyrKhrZXxx9iT6jNc/WH4XuwW+crPvTywHYWP\r\n48Nf0513XAdjRQnSyGBqUfAYUZ7KjVhMCXgtKuzqh0CO4CB/TCpCJ3FmNl+u2m0l\r\nqq1XzzBqnku2terEFScSEnd/VvOOpDTzjv6PfT6BbTXDKcKHoEbj06FuocGgGRKr\r\nUjgtoCJ66BqIsw==\r\n=gAb3\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6InBPaWpjVEhqVThsSlhadkFrUkdmVXc9PSIsInZhbHVlIjoiMVJMQWhcL3FKXC9PejVBeWdybzVpUHVEUTJYcVRyXC9Ua2FWbEc3NWl6KzlEVjBsUHFcL3FuVFVVU1UyMFZ6bDNtTUc2cGQzN2dwQkExeE9XaTJGSnpCQW4ydnJYU29idGprWHVkOFNHNzFYV3VqMmpTb0s3dEY1UWtoWExhaWY5UlJUWndmRzJIdG5rMEdDcDE0N0JZSkVIUm1XRUVvZ2VvU0FiN3NVMWFcL0xZXC9DXC9SbjRNWDR1T0sxNUphdlRhMFNteUJ6QytZekd3Nk5ucDVXYkV0UUtMZm9WbWZjOElRaG1Ba21qNk45cUZDVnVnc3FkdEFoa0oxTFVReThBaFwvZjJsZzhJR24rWWpmcEErUGpLS3BqZEJ1RUdcL1VsZTVQaXhYYUIrTTExZ0hvVWhoNytmd3RCd29mWHZwZHZNdFNWVisxU2VzRllvODFQdkwxODJEcGNERkxRPT0iLCJtYWMiOiI0OWI4ZGRhMDU0MDQ5Y2JhYThhNzYyYmEyODZmOTYwY2ZkYTI3OTM5YTMxMGRjMjNlM2ZmM2I2YzQ5M2QwZjI3In0=','eyJpdiI6ImxqRWZ4bkRNWm05anMyWWlhaDc2T2c9PSIsInZhbHVlIjoibkxnY2h5NnFpZUd3SG9MaDdrUFBWV3d0R3FsUjRSNHN3b2daZDNIOHJIcjhZR0YyVUs1S0djQXRScHhUekNHQ3BzRlhJU2JaUXJnaStvSkJ4clFjVnd0WlFiSEZpMmhwV0IxZG0xSXVtaHczamM2OXNjSGo4QklXMHdJY29yd2tMKzlXWm9KcDVpelZ4R2Z5OGNkWjJJTDB6ekpGU1l2RW9MNllWNFVhek1sY3lGYUJkUjdTVTZWemhcL2FJdXZzU2h3bzNOempsdlFkTzZrY1I3RkN5SmErdm16YWJ5Wk5SVDV3V0JHWlNMb3FBUmxGNzcrMHlMVTQrdjkxVWs2UE1aRG5ET2Z2czVKRmpvR2ozMGpCRUZwcHZ6VG1zVVpsR2dGSG9oYjZ2Z2xcL0xlXC9PVVBpQ2VDTVNOaHJoZkdxTm95Nzlac2Rjak13WDFvYWhhXC9raFNudz09IiwibWFjIjoiMDg1NzY4OTNkZWI5NWI0OWQ5NmNmMjQ0ZjQ3NDY2ZjdlN2I3ODIxYzRiYWNkODBjMTU0ZjY3NTJkODY5ZWY0MSJ9','2019-12-28 01:42:46','2020-01-31 04:53:12','2Mva89dKjvup1knHDZe3G9v7bBHs2cZZD5r',NULL,'0.00278034'),('6395bda0-27ab-11ea-a4fb-dfef405b6816','Kingdom','$2y$10$2k7GA0ZDJ/GnFvzq2uAHruUi2OB49Cu/UPHcRTPJsw1qVKGXG.832',NULL,'$2y$10$WbrTIc5qZfH.KVfOEhlqBe9mZYfA4WE8iUaKOZ/tE8fTBNNsRJXPi','2N6GTWPbyQNLZq4hAE1yoRW74K1KaotnDCQ','2020-01-31 03:57:15',0,'ALFUCQ',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: OpenPGP v2.0.8\r\nComment: https://sela.io/pgp/\r\n\r\n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\r\ntJJETuXMdk0RAy79haxBy2JRuWtsrg==\r\n=/LGr\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6IlBaYlNDZU5lSUU0c0Vaa3pqcEluK1E9PSIsInZhbHVlIjoiNlFLOStYN2UyelBHSXNyVUtYK3haSm5sbkFGWEFTdklkUTJrVDJkS011V2dpRDIzMzg0QkpPd28rU0wyWTRWUDBwSXNsTDc2N0h6TUNcL1wvOXlyRDJSQVk4K1p1ZjV3REs2UHZwVTNFQUxKVUtxQjhQbitVXC84WDY4XC9vc29tVWxkTGh0Sm8xdmlUeFZuUEdVblRmRVNDb0pSakNKUVFcL0Q3WFIrbXhcLzZ1TlRcLzZVbHd1YlhMOGdcL1NCd1drcHJxbXpxUHZ5VTdNQnAxMU1kaHN0dVkxSHJYMkMzXC9tSUpkZjJ2V3FIWFVBc0gxOVFcL1F5M1lXZUY1d3c1bFYwMjNMNWR4d2QwamNzaWxSWStocnlINVJEbitHMHFua2FkcmZUV3p1ZGFQM3czQ1wvcGF0NWlCbkpTTXpzelV5OXp0VDdaTmlNNWYxQ0ZmUUdsUjFmN2xkUm9yRUE9PSIsIm1hYyI6ImM0MTE2MGViMWMxMDQ3OTBiNWZlY2U4MGI4YjZmOTI4MWYyNmZhYjZlMjU5MWFlOTc0MjIzYzA3ODY5MTFkZjIifQ==','eyJpdiI6IkMyemFNVFM5VEVzVlBoVEdaZ1dtTlE9PSIsInZhbHVlIjoicEtNQk5OMzJFZ1wvcm1GRzB4bXpUWG5JUERkalNsRk9QUzZ2TzlaSzA2VXJzTFwvQWQrZk91VmVpbEl6djdnbllrMDRoWm1TZ1ZRZm5Ma0NiZTNIM05TTUoxR3M4bnkzVEZGbGlNcksrRkZKQ0RUQmk2ZHV3UlpwWHpENlpsY1BQaHE1cmd5TEo0dDh4YURNYlwvRFd0QXdjS2FrbjhvTmtUR1lBTjhmc0VJNjQ2eWs1YkxlUGVXTkdNUnlCTHVRemxUNjlZdkVSK3lDNktZWkVqYThCb3NQUkIxbGJHd09SRjlNbWU4V2JUOWhpenRYSEQzWkdGM1U2REM1d0hieDdpZzZpMEpyZ3VYXC9LYXNGVk1PUDh6RDRYTG1WZWJ5MVhNZTJydlwvNXZKUTdzaDhMSmtTTVdjc0ljV2hZVThTWlNWeUc3U2dCcHdKekJwaHMwOFZuVmpQV1E9PSIsIm1hYyI6IjUwYjVlOWYwOTYxMjgxZjdjNmM3YmIzM2FlYTA4NjMyYjRhN2JhMDE3ODFmNDYxNGJiNGFiMTg2OTBlZTU4ZmEifQ==','2019-12-26 06:46:05','2020-01-31 03:57:15','2N6GTWPbyQNLZq4hAE1yoRW74K1KaotnDCQ',NULL,'0.0002214'),('7e55ec30-2a0e-11ea-abd7-b306e3eec190','Varsha','$2y$10$lbZmad/jEn79DSedyxLbDuOYv15Yrpb9xKBLy/aWIRcaCEtqgyQNC',NULL,'$2y$10$FE6g7waJNdtoYZiDBRbHOuirwmjrpJ.WvU6W/Gb5y1NGUai6iB77m',NULL,NULL,0,'MAQHLS',NULL,NULL,NULL,'eyJpdiI6IitpT1RLZUJGcVM1M2hMVXZKYVVNYnc9PSIsInZhbHVlIjoidnlLY1B1MmtuT2lJaWtMOEtxUngwbW5WQjhjREl6eXpjNTJDdlRia01iNTR5RjlXZHlmbGJEUnpKR0hhSlwvbUo5K2p5M2RzSlNycnVITzdQSXVMZFVHVktRQm5iWWJzbWlyb2pRRVhCSnlCMUErTDZEZ3pvVnNncE82V2VJcHBxV09mQ2xYVktkTDJOckJFazNCN0ltNElFREdGblJ3aWFEZmpaaWk5Q1RoN01PQVhMa3VkaHRGRGx4akxoazJHSjJaMnRHMlNQV2tYY0xyUmVWVDgwcVl5XC8xdFEyZ09sV1dPNnZBN1lsQjA0M1ZGaTRGRjV1QW1kMGJoMlhBM3BMZ1RPUFZjUlpFQSszd0Z3bThLbE0xWkg2SjlEYnV1MTd2OEJmbFBnU2txN3gyTnR1YnRVVzdRZWpkeGRSRFpMemVsVFU4SU5iVGNvK3BFVEtyaUlBVUE9PSIsIm1hYyI6ImVjODNhNDlhMDNkNWY1MjBkNTU0OTIyNjYwZDY3YWI1ODQ1OGJiNWQxYjZmZDRkZTJhZTViZDdkMzNhMDRlODcifQ==','eyJpdiI6InMxRHZJUUFlUG1sQWliQWZRaTBGXC93PT0iLCJ2YWx1ZSI6ImRCY2lvWjliMlllZENlekwzaDFxOVM0ZExZNnZMXC9nVUJHRE1aaGJud0hoK1lkdENBeGRuZFpUektyblNHVFB4UFlzWG8waEFvZnRwcmxleWl6TjI3UTVFZ1VVeTNRbzJTenhBeGpja3ZVeGxVdldROFh6b3dJSlNqT1lRU3dBV1B4eVpoWU9QZnVSYnFsdnppeDBPQ1FWR0o3UHVKN1pYUWFRb3B5ajBPSkc4MnVjM3daQkhBVTJyUW1TR0lzQW4xb1VlWExjcjNQVG8wK3lVR1N4d0c5WW9cLzVJZmVqNUZkSWNuYVlYTWU2TzJsamRHUWdQZlNrRHNPQnR4K3BUb1NlejI5dnpUcHhvamM2WTBLYlBcL2xzNUg3SnVlendlZlNOYml5MGdKT1RLZmhQdXUyMUh4M1lad2x0MTQyeXhpdlNBbEJvdHViNmoraUtOdHVCcUIwZz09IiwibWFjIjoiZDViMzMzMWNjYjQyZDNhYjJhZTY0MWMxNzAxZmNhNmIxM2VhOWQ3ODU4NDkzZjlkMWZiOWZlODY4YTY2NTM0MSJ9','2019-12-29 07:40:32','2019-12-29 07:40:32',NULL,NULL,NULL),('8c2b7280-266d-11ea-9110-87d18817bd6d','akshay','$2y$10$3.lgDcKGG44HEO0sh.shLuVfXIPhdyFPnmZ3yTwvf.QbfFZBGKuI2',NULL,'$2y$10$JBNCjqswjGhnlK9obvPiBOHjtsI3Qj/k//xr7dz/3rup4yH35fATO',NULL,'2020-01-07 06:21:51',0,'83MOE2',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\n\r\n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\r\nSD1DIiYMz6IwHtAY\r\n=mTKh\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6IjI4dmNTNWtjQzJZcG85R052ZUpkR2c9PSIsInZhbHVlIjoiOHR1NnNoSjFVMkRBMXdvdGFFZ1lrWk0xRmNEd1wvMDM0OHZJc1hOeW53SUt3RDZIXC84cGVWZzNyVUVUK0orZ2hGRCtjd2Y1WVNFK2lcL1NyN04rTzN3ZGFxY1JRamJNNVhMUkVYTktRcmxMMFhIcVB1aXo1czd1R05wVGNYM2Jwa3J3NXFNWDhhejhDSzBhR0V2d1ZreTBjMzQ0OFU0OXNRUTBnZmxzZ1lyT29IcnEyNElRS21JS2dtdWZBZ0pGMitKRFdyRWZpblF6TDVybitPWWpHV2xqaFZ5eW1HdmxIMkxyXC9ieEhQMU5KaFI1N2I5ZlNlNjdSSTdWdjJTSFF4RzRKSzMyR2R2NzV0VVZBUjlrTnFpSWl2NldRd2xsckhabDcyQ0EwVEd3aHZmQTFrRHNHZUVwYlNQTmFQd2h2REVrY1B5NlhicDV5ZWFKM1FLMER2Zk5iUT09IiwibWFjIjoiMzhjZDk2ODhmMzFmZDRhNTA3OTE5N2JmOTY5MWJjMDMxNzYzNmZhZWQ1MzgwZTFjOTAyZTM0MGMyMWJkMzc3YyJ9','eyJpdiI6IjB1Q0NQQVwvTzA4MGVzbW9oZFBKTnRRPT0iLCJ2YWx1ZSI6IktXdjJXTW83M2dBMGk2dzJvZVE1R252NVVpU1NDT2dsTzhXT1Jnb0dxRHdhM2dVZ0dLNmtwaGFUZ3lxenE0SkphbGU0WDNsc1kzSm1VWjFqRFBSUk0zSDIzeDZldU9MM0ZPRTlOeGY3QmhPbW1VeGhOenIydEV4VnQzbzNnV0JnM29iUXI5ZkRBMnNRenVDTFpyWUVcLzJxMVlLZnlZcGF2ZVVScVFQQVE4RjlqeVUraDdSZkR1YlA3d2VzZWoxbkJCOUVzNG9SYTltTmJHNlJaN3JFOHEzWFAzazdrR09yclJwbjV0TTNjUG5meTF6YlFvXC9kcDV0SnBKcXZEZjBXcU5jcythSE5uTkg1RkJ6YXdQY0dxVk1CZmt1ME1YZUJVVFpcL1wvQkdqWW4wczR3OEI1c1RpSlpzSDJCTnk3T0lsRFVINlBQVXVQNDNiU1wvNlY4SjAxMzBBPT0iLCJtYWMiOiI2NWQ4NDEwMDRlMzUwMWU1NmRlYThlMTI2NzYzY2VkNTg5MDc3OTRhYzU1ZGViMDU2NWVjODMyZDljNWE5NDRmIn0=','2019-12-24 16:50:53','2020-01-07 06:21:51',NULL,NULL,NULL),('954937d0-3b7f-11ea-b750-310488e4b060','Priya','$2y$10$GcwYwRwBZTObFfOUwqTuju9oUFRE6oO1GO7GA/Jt2967rjNMb9p8K',NULL,'$2y$10$PKeSkbcxXqpddDx0Vl/Khu1dIkRArVxTxByCfNbtFYwLi6ZpPq5ae','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','2020-01-31 04:27:29',0,'BTHRFP',NULL,NULL,NULL,'eyJpdiI6Imt0XC82aFZHZjdHem9pREZLajJRdE13PT0iLCJ2YWx1ZSI6IlRJMmZzQ3pnaEVmR3NVZWRrYlNVRlNnd2k2amRyWjhSdVZ1VmlOdkpVWURJZktiYmRtb3lXSVwvZWpGSU8xbjUybHhIejJtVXZ5TFVnSWpoWllxaTV6cndcL09paDFGWEZiMkRnN2NmR2dhSElCY2NOVnlPSitVdkRjRlRLRHRxZHFZTzBIMUxrc0t5cUd5QUw2ZklQYURHUkJIWVZ2aUVKMDBWajZuSU43VkNxbWVsN2s4NTlZR1dWdHlPYW9VdTVhbjY4UnNPTzhQbTc4Nkd1Y1hldnhDalF6bm92ZXhYdFZCaG1zdWMwZWJcL1hwNE90UjU2Zlwvb041ZGtGRVFTU1oxdUZPeklNclwvMnBIK0FrT3ozQWQ4Y2syOHJnT0FHWWtrYVh5a1QxY3VaNXRrN2lFcjBLZkQ1ZUMyMW1hTUlTSWxtSEM4a24rMHRBQnA3VmJTcWk1U09RPT0iLCJtYWMiOiIxYjBhNDNlYjY4NmRkZGIyYTE1YWY2NWU2ODZjYzM1NjU1MDVlNzc2NGRjMzg2OGVjM2VhMGNmMjgwYmE1NTMyIn0=','eyJpdiI6Ijk1ZXR0N1JKNHc4WEdZdzYyMEZMUWc9PSIsInZhbHVlIjoiUE5FN3lpNW5TNkxkV213c0JPK01KUE1NZVRTTVwvTTFscG5JT1ZndDFEVnRXVGc1WHBRTFcrenN0THpza3VrQTZvRWt3VlBFaFg1M2N5QnBjZ3Z3eHhEUktYU2lOZmFtSThtc3pmdm1NeHZKRlluVzFibVo5enN6bUZWSU5QQ1p1bXVhTjlrR0hQWm93eFhRYUFJem9tV0NINjV5MUlDekQyWmpkbklRUW0yNWxBSGJJYW1MRXpPU1pRTnVwaWRjdzRWdUhMUHVSMmEreENLSkRtTnhCQXNMck9wOTBwQVJMS1NmS3NrSDBFc004NlM5dU1YS01vSDZrbVpiOFhTXC95eXVqQ3JiMlFmQnBOTXJ0RUZCVFpjRG9VXC83Q21ybTJoVXRCbktESEhsdTEyNitublRaYW9UYk1SQ3BsaHBRcnRcL1liZW1DQ0xYbXpPeHpGTXVTMFVKUT09IiwibWFjIjoiMTBkZWI0MTI1MjY1Y2NkM2E0OTc2MWVkZjIwNGM0NTlmM2MwMzY4M2FmZDEzYWZiMzI0NzA0MzVlNzJlOWVlOCJ9','2020-01-20 12:22:53','2020-01-31 04:27:29','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','$2y$10$QmMkzz8XFzwM6QWinjWPxOYRLRo1I/XtNAAvc5y/iwgHVechFVxym','0.0018329499999999999'),('95f7fc50-3b74-11ea-a52e-b535f7551c7f','Sonam','$2y$10$xLsk47hdlrH/1wXW3J/otewLuIUj1IjVFbsyRTlN02mqgtfPatJH.',NULL,'$2y$10$9SdMzp0YlZF99jIhODoqju0OIUXSXnYwG2IOa3XUMI7StIpBwQuYu',NULL,'2020-01-21 05:17:09',0,'WPLGIB',NULL,NULL,NULL,'eyJpdiI6IjR0WkVGQnJGRXBiRmdUQmdYRGRmTlE9PSIsInZhbHVlIjoicVlscVhCMWV5Z2tvTTEzamVQeFR5emh0dDdWYjFPU1JabHlwd2ZKdlwvVFp0RldcL1l5WFZwTk1LZ1JJYkNUS0RsQnRpZW5XSG4waHg4YTI1R2ZncGUzZGNjc3Jzb2dtUkptRTZMOWxwa2FzY25aSWdWUGpadTJDQ0pKVEM1U2h3bVV1aHFjMWtpWGVTdFREXC92SStMMnpCUlVGS2o3UUpGQjdZS2NnZDNjN1pBeVVpMm1QdDBzNkk3cFVHNERtMjAzVDVrcDlQUVdQeEtaU0IwWUJ1WTBZUTRVeWZYVFJya2FTb1pkcjMxT2Q5bk01a1JvbzNMSWhmRkVENjRZbE1NWWFuelFjc3dSXC9kTzRCWFQ1ZkxLTFZyRk5xVTc3amRxQmppUFwvSHBzWEI0Z05kWmRvRnAyOUJTM3F2WjBUSmNkZEQ3WjRkUm85TURWUjEwVXNCaWZwdEE9PSIsIm1hYyI6IjU2MTFiMTcyZmY5YWUzZGEzNTAyNDk1YTdkNmQzZmYyNGViZjkxMWZiMzRlMzI1ZTA3MDZiZmI5ZmNhOTgwNjkifQ==','eyJpdiI6IkRpYWdiRnZcL24zXC9ieXU2b1pEbjJLQT09IiwidmFsdWUiOiJ5akNCTmFzTG5SSzR3NFFQUHB6bm1cL0c5ZkpHaGtLNThueW9MdGo2d3pkN2hFd1p3XC9kWm4zMkRkcjlLVHprTjN6TE1TNUVYSUJKc2FvNGR3NVh0UUtBZmJjMU9PeWpNRTJcL20yY2piZGRlSDdVK3Q2alZScmNDODRrWndYQndCeFhcLzBYVkRZcktUb0hwZksxbDg3dnFqRmJ4MEMwTnpUVVRxYTBNc2ttWHc2MlAyQ0FFS3F1dmdzcUt0eHo1K2xPc3o1NTB1ZlNnZHdoRzA3c3VSY004ZUhqUkNzbGFkZUtwS3lCaDBQa2drQWd6U01tY1wvUCszXC9rUW14TnJHWldWMVZIT1laY0lwWVVzYXMyWjk1TFhrU0g0TmN3cDl0bDJMSWQzQTduRTFzdm1ENFY1czhBcEtObTJxQzRKXC9BNTFNZ05IRjlDbnZvcG9ORjNPQUlNRFwvUT09IiwibWFjIjoiYTM3MGZhNjFmNDNlZTUwZDQxNTM3ZDBkNTI5ZDg4OTZlNzU0OWE0NmJjZDQxOWUyYTQyYWQ1MjRmNjM2MTJkYiJ9','2020-01-20 11:04:10','2020-01-21 05:17:09','2N8X52rtmuPmgDBDnmY712Hpr3buFNEFGA9','$2y$10$/aWcs6/RGG0CFeWch6F7mupePAPB8U40ww60PZ7chn6cIUDZz64rG',NULL),('baaa2c80-2789-11ea-acb2-4110865c362e','Trupti','$2y$10$7pGlt2GzxmMoDiZR8tL2yeSky.sZXmotYI2UQE/iMZsLnoQ76Kz0a',NULL,'$2y$10$IF4NztpKCLxPavG38Zgi0eAGyHkQUTqnKfbMdj9DgHhwk/EL02REG','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','2020-01-31 03:21:34',0,'3G0TJT',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: OpenPGP v2.0.8\r\nComment: https://sela.io/pgp/\r\n\r\n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\r\nHtaw0Bbu28pKNXqMjZs2bxNS/gjJ\r\n=QvkT\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6ImttUk5Hc3ByT3M1aUsyZGhtYTN3OGc9PSIsInZhbHVlIjoiNWZQTmZFQ2k4cXZnQThWUStVR0tmRWZUSHlKV3c3cFZFZnJLd0RadUFWXC9LaXpiVWwySXRuckZVczcwcjlsTnRtcjJkMXd6ZGp4cVwvVFZ1N1ZEeXcwT3VXdzNJRk9kaCsxYlpGZXZib09DNU1nWGhjdk9yM2xJbWJuOWlCa3JpMDF6RFd6Q0gwN3lCVDBOMGRuWDNUOGx4WFVjYjUrak5YbzhFMG1NczQ0RitjTU1aMks1ektjaENZMUhYb3l6aUZoZnRsdnVzaWtNSDd3akRVdE5iNENkWkRVZVJ5Y1Z4Zm5HUm1GNWV5N3RVemxJd0VYdDJCUmtvb2gyY0dwVGdFdmtrMHhkV0VWUER0RXBKQjRpdWFZZTlIT3FcL1wvUGdCdVZkb3AwZ2tWVVR3anV6Mk00TjFPY3JVXC9EWHlSNzk1end6XC9rNXArZWltdDlJdXBwNXJcL0xvdz09IiwibWFjIjoiMmNjOTg4ZjM2YjVkMjFlZDBiODRjNWUxMzY2YWU0MTEzNDQ5NGJmNGIyNzk4OTg3N2IzYmM3Mjc0MGViNjhlNyJ9','eyJpdiI6ImpPd0RNZW5yczJaNHFibDlWUWVUMFE9PSIsInZhbHVlIjoiWkhSMDJ1QnBBQVluR2l4NWQrYldTUXFyTEQwaHJNQ254Y01uM1lwSkpWNThyeFprNGJpOWdnSWNVNWRsT1wvVFBYMXorSk5kTEFVa0VKVW1sV2N6Z2ZRQmt1UmRyYTJOSm94U0dnUGxYcGZcL0srV2lvTktpNGp0QzhkYnZnNCtTaDROQ1l5cTdIMnFQZUpMQXdUV2h3RUI2b1Q0aUtMWlBcLzRlNVlWZHQ3UVVsRWdKNU5GSUtxNmozRkc2c2tiQldOT1JEXC9ick9GVEw4cnN0VmNWYlwvd25YdThuRTBNUENTeVFoRyswd3h3ZGNwbFU0ZlRmZXpiMG8wdVNLdTJ5ZkRrdkJpQnlBUVlcL1hJbzNKK3Z4RWM5a3R1NmhTaWNhVzFxOVVuMjhYdjFZWVZJTmcwMXpCeXRtQTZhVkRMQm1WcVhiYmJcL1F5cnpwVWdBN2hPVHYyaEpVQT09IiwibWFjIjoiY2I1NjhjZWJiNjRjZTk3YmJkZDJmNDhiNDk2YWU5YjIxYjFhMjMwZGNkMTNhODFiMjEwYWExMTQxNTgyYWUyOCJ9','2019-12-26 02:45:08','2020-01-31 03:21:34','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8',NULL,'0.0032706099999999998'),('bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Chhaya','$2y$10$If9kzEZRb5l.d1CRYpFG1uDwBX9bWHWW.q182XoKysWUkxSf41vfe',NULL,'$2y$10$8.CB2xqxkjhGc7liE1TGmODI1tif4AbXBH0747h3aeYZfNOaTEO1a','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','2020-01-30 11:09:24',0,'HZYA7I',NULL,NULL,'-----BEGIN PGP PUBLIC KEY BLOCK-----\r\nVersion: OpenPGP v2.0.8\r\nComment: https://sela.io/pgp/\r\n\r\nxsFNBF4xMQ0BEACx6jwNsBsNmqN1QOPd7YsxCEJCoEWTeskaVdWQX2wHoctJ/3oU\r\nmrGsxnyOX+UBjSRf2Z1Yk6ZFFotMQmJtSDEhz4oLlBEb1yh3kAvSwc+aUbDEhMlQ\r\nF7Tr7FQgOoelLGtZTnJgwgRmKWF5Zlw4ObyoK21K/75TFEfwYE09X6Y38lQyro/p\r\n26OjrRMJHFKfxkU4qOP66A3hLdbnij77hYWrOsA80uvOsM9LdvQJUkiOTriEHRJC\r\nrHjhpKPOuj6NgjTDhUWJFXdHggQRVJrzwrPr7SWCS8Ixqn+lK0M0bk0Enql1wvXu\r\nQZeYeF4bEdRiqAx7/GJZA1kUsCx8fMBrZ7dd9RJ4Cuy+ywiY5lijKiKerk2QfJUf\r\nDLODXKrD6exs/xusJrMiHHgZcUS4sCt5JbX+JLnTh1TK9q/qpEgKAIKu/BgPuJG2\r\nApl709zn9n9Kpk4hPx2Pfr04fNxSP7UQR4M5iA2MENg4nyOerxU8BZAABEqV9dCf\r\n9Bhf6OmA9A08Z0w6mAYNTlyT6jNW2QWkXtgAtXt+FURUZqtYY42hLfxJC5pzMORK\r\nRsBJAp2SH0YqA2KHNr6d9N5L5l2D3ksmWkKVe0Bgpb+RmVr1kaGLQJF2XOeemZUs\r\nl6knWNlLiEb5iLdk6BnVeLwI5gLqWENXY6XU8+fnXblXR5Y4lmuZouulOQARAQAB\r\nzQZDaGhheWHCwXAEEwEKABoFAl4xMQ0CGy8DCwkHAxUKCAIeAQIXgAIZAQAKCRBF\r\n4QFjv1Kyrt9XD/0fRNVnZYg/9uG9GDMjMYLYYHyFIMQRNZhnx1wdAwDLXBC/f1tx\r\neN4P09OOfKxzQrNb+LMuI5Yfff8hkHL6QbwRvf/+Io1Nd6rS6aOM2kQ3ODPUjea9\r\nBofCI0RQWIxNwIn+aMZGIs726DF8J3HL9uZgGSD4u6P78fHW4EY+5S7GfBy1Y7+7\r\nSqh9KLriYt+enN9A8M9IURJ9kP7GyYMZnkJ4aLlzlBi+qA47FS3A/ctlVBnpvyNH\r\nSZzKD2P56Zy4nafJcLBpX6It3w90kMhZCevKUbWJQEfeYZObd35yr2VnmWaqXJFf\r\nNeyC1apOlpCzyIokJlH77+LVHDpuFdpKaP2ajaGa+I05f/3RE3BTAWdNfU82dILl\r\n1XI4sgW5XzQmM7vPIFC1Qs6DiuPAwZBZiQqBQWjcDb741GS+Pryq306qxaF/yntr\r\nRQENKzRRKpmE21x1DT9QziyKe/aB1dYG8xn1ykCJfg+1FsX0RceuH1Yzjj/AospK\r\nL0TAlp3ch1+Sjh0lWuAttCvQDcdmI+mqtbStw5lLTnh3dDy3Pak6zzTiiI0/feRT\r\ncqWVlKt/dzZLnBmzRyK7da3Mrwwm3tXlOe+WK9LzMS15YB4RMjXJD5bTILrhlPyQ\r\nCcJkvc/ogJRBnrEFZriJ2jmKdNTeKwzSRhKI0GaQ5mYziapl3ItjfSnXWs7ATQRe\r\nMTENAQgA5hHkTX3x5Z8zEPPFklmfiJLH0AxBAyV9wAfMZmAo+lhmORkQDPQ3Un//\r\neGDEUAsAS58mboUosKfPemL5dHSjFTSjoZdJOvBccYbGPixMPUgAba/GEjjjNOyd\r\n1srKtBs9DxbeKa9fXUx5T5VTKSw/wBiRj2vMWP14A5oXOOOSnyMIZYLvJBpAOpSL\r\nbjtrWtbPPb6/pl57QGulXwPGPAeMyUSlMj1mD//36IwUcrE3wpih7kDBs+cHXD0t\r\nw4NR4UxDdjxUYNqyxOMSG5PNC65Yym9ODeG66G8SdZ/QYFUpZgQ8whUmU23VfB3m\r\nAbTmu1j9yb60585u234FFpvLRAUNlQARAQABwsKEBBgBCgAPBQJeMTENBQkPCZwA\r\nAhsuASkJEEXhAWO/UrKuwF0gBBkBCgAGBQJeMTENAAoJELtjRu5CBRjukwEIAIAR\r\nKjjEr+QTJjy4OnFFLgiMnC9faXdjvMqa3eqoIeQsv14W1AkRJxmNLL8R8N8JQAJF\r\nQZDmmm8K1+wcwsQKO2+yCC63+JVxoQSxULjbxAUdRpDBCyctxYE/PrVY+kOH5mev\r\nsJh0ygxkoqY2923dgRTCPtJCsUqdvU9byCFGKVB+s2OLpaIF61hlb8jyO2lljoOw\r\nHYldJEHY8BgXCAIW+nnN/UflddyQP7N+Jqu06SVtcAyTBMOLMFjBsXm0PBco8w9k\r\nJCzB9fo6Nm72C/iX4uSr1/BaEASk1qEFf1gg9d6ORL4eoYCDEAg4G5N04IYPmouU\r\nkIGYPQJAPLycWZvC+qa2dw//f0/pGAajChB5igcok5H9JsRy5UerGD7+yy4PMF3B\r\nnuVICq41llhSpxTDgxFgfQtt9hiorDxSDy7cgCLynPAQWvG0PlFKMSrHNbwbB7al\r\nSQmIQE1TLLWx7F4VXM8n16codYEeWwx4NfgxM/IwfS23wy6SIzYxBfppWKoo+sB5\r\nAZqlZ+aWSCwXur5oxam8Y7MNJJzPMLrXH65dTZnE0ifudCFxHXxosPxG2cl2hRE4\r\npCATSOewyNGw0hW93LWsDgH3hivz17m6IuxM7T4F6jLtJaDQ+LAHihHg7qKDM0DQ\r\nglr696scYCNi7fq2tImOtHryHFTuETJ1uKM1v95YvHm5q8tq+4TpiENAjzAo7Ie/\r\n/ToTY5sQ1zDIOwb32PkUj/Vvc8wM/I6qRe76BmI4IWlQv2NUBztmyqamo080r8ec\r\nCuffi/0UMRSgLNoY452iRlEk4IZhohWj1LtAQoa15S5z7uKPkdKf6xtYW2XhvUYT\r\nC/K5Vq86HLPYP+KJTVMMMGvvAanuAvTVC7Ibgh5tqfomRlEQZBtsVbf6E15Q1wUb\r\n0mOecy57J0AQl7Kv0sYABXebuQihtOFUTfXLXIFA2aCp8OKYDHedd6OOuSpY2u0j\r\nszyEek3nCRb+K5rmWaA4WayHDXfDcwV1T98b9ZHnoseO7qual8oxH5tpZd4n7Vp2\r\nOt/OwE0EXjExDQEIAKSThkmKa6+PAIq3v8Q1VNxC+htbIEEFbscbf3ADijl1Cgk4\r\n7flDWexUufGa8HZEWQ3LFs/oTje8s3FNoErXQsOwKMRmBF9yHzluQD4ZPwIl2nLZ\r\nnetB3+MVzYx4Pja4s/waGETe4EVRX7tg7Fp30LiT5ygrEV+Z6UvgqCRTFfNWtgUw\r\nXhEVTgRl/KQSmjpsinZz4aYD0A/XmNx7XkPgm6YVL/IAWIvQmhjnQo6ZdDxIMXDX\r\nqg5Zfe5zIdsGA3HfRk07rDGcvUeu4fCZcemwycDZ5Jka0w5Sr51to7qpoSluvm7N\r\nBY+DjblbrKzSHMJW5vEWqXabp1E1P5nnPAfci8cAEQEAAcLChAQYAQoADwUCXjEx\r\nDQUJDwmcAAIbLgEpCRBF4QFjv1KyrsBdIAQZAQoABgUCXjExDQAKCRAornSAIJ5d\r\nmwHcB/98uOTulWmd4o9Qt6OOAe63zjKh1CFZjk2B/J085M842xVm8MDiot9rsnwm\r\nApj4+ENTDcE4MLYbdlFBUqShJFZDOjHfuzGdKunw5lbPuxVJ3yz2sRHjopXC38RO\r\nWCNi+f8fyts2nw7UW3dIIRxo2f6vgtfibucbB5k2OqUb7KgVr6vQ1mueEAVXp+zg\r\ndq1i8thbdz9+rrmRfV/4p2eRVm2xOZIO3Z/jGEU1QpZQ9c0E+FCc3yVISbDBu/U+\r\nPGvsToGI6JQfqTxV/zUbZ70s9xskTPuRVkmzeOrQ/dQ2ER0QeblATiS7rvqu3Z71\r\nSYOr7mfTxb8RiOFWgPha8eBRjaVj6o8P/2LBSNdtuj6DJl6lnpGSwbM6wDHIKMw+\r\n3ZodG2lAoKNRQ1yjvoivANVklcSYMqwp5qssBHIfOaeOx80MU/miryJ4S+g56W2H\r\nCn8G5KkRQuz6+0hz/AfTqgohND8rzyE3uyJ710MMH36afpMy+jZJZtKuhh80GtzZ\r\nyhFUtTXh0Bc2LbpcmoH4CMLLs5NptT91hWqK0p9fJ2qpXXN202ZXzVZSPDVin0ri\r\nuujKgNZdyyXQdKAhWZ86YCi9dRN2KIFrUhMfe0V0Fy5W9jxaQchbsN8zboEB2eJP\r\nSjdoNSHjDdkvZvMncFJ+T7QAwFdWpxJflVeY9AiP/lovureLapUlTxYRvd55u/Zf\r\nT/mgE1vaNiDu9OVQ2XAIXWME3Jzw31cmAMRWZPqv+wj7hCrPU07n4gw3rwBIjrdF\r\nVVnfPi7A4vqcvHmwqbPjdnGjWgXjoGpqYX5Z+ZdPYNbhCwIs7JzZJ/YkkdLa18Li\r\nIyEBQpzALKjOlej5F2hUk1G/1K239EQ0tynl3MZrxAAVKuXshl+Z0DABaMLzA1Ux\r\nA04Llx345KosgktMBe7hhZsYwMdbSNSC1wiQIP12GtrOd7KO2kJaWwgn4Lg1nCpc\r\nO5CfMWVrDqA9MwG35EkQVGqxgYk8Uhu4+VBWltZ+3yJVhTvfkCGArSGG/lQ2Ncxi\r\nRVU6Eoreyty3\r\n=gWSM\r\n-----END PGP PUBLIC KEY BLOCK-----','eyJpdiI6InZaNU1HcDZCOGdsSHFWVW9pYTRVekE9PSIsInZhbHVlIjoiajJZelwvWHkyTWxxb2JuMnJ1M1VwVjRBZlFrWlptY1dSQmo0a3lISDg5WjlwZ082N0s2Wm5XUCtEcW03RU1IbTVRdGpNR3M2NzZhRkRxOElNd0IwWm5ZUkEzYXZLT1pWN1dHSzhIMlpyVXlNcUUyQUNvTkM4NUJ3eVg4QzlJZW84bXpsa05BZmQ4Y3V5Y3NCZ2ZcLzlrMFdyZGxBcXNmQUM0YjExRlg3MVNlcCtIbmFZUFhUdlJsMVRPNUsraFQ4UDc2S0lJM21YclNBSVwvWWgxdHhNM1VCZVFJSVBPc21rSlwvNDhiYU1FZWh0UnlJWThHa3BBakdXZHU5V3Bydk02ZHYyY0VSSEM4a3NDRGh3dnE1RkRaaVwvTTZCenJ4QURQbjdTRVA0aHJ5elhQRzRRUmNVUXpLNnk5ZEpFWStcLzNMclpOWnNmekFcL0NcL0w0WlZTMHZlZ2Fhd0E9PSIsIm1hYyI6IjIzMzJlYmYxYWRkMWRmMTQwNmFmNjI0ZDQ1NDNmNTkxMzUyMGM2MzdiOGZiMTUyNjMwOTcxMTU3MDNjNjFjMzkifQ==','eyJpdiI6ImgzRW52QU9oY0ZPUFwva1wvS2pFekhCdz09IiwidmFsdWUiOiJVQlRDNDhQalJqWW1ZMUkwMUJoR2ZZeFwvTzNEM1lMZEVPMEo2Wjl1NFRqeE1qaVJseHkxUzFKV2NuWmU1Nmx0VUk4dk40eStDUEJxR1wvMk1NMmhtOXhnQVZteFIzQ0ZKSnNyOEg5TUhBM2xxWGlNTUdkam1GTkxZZjY2a1Y2U0gzQUUyZFlhSkVyOFVmazJEZllOUDdsRUdwM1NYcmlCRkJcL0UxeW9lOTJpbTJabERqSVVOQmRyWXZlZjBDUWMwNEtPSkNESGVuMXlBYjFsK3QrT0toVUpIOEJNbzlZcTk1Vk0xdzVrVU9wQTlCdU9FV3JZTHFtN2pOWnRjZXBaYzM5RXBVMzZ2Mnlzd0VqS0tXV0IraGhNRlcwcDA3bWdVRzhVNnhvbXkxY1RoNzM2OXZSdERPU2laN1VwcEhzK3UwXC93V0Nibk4yN2JzZzRwVlR3d0xSXC9EQT09IiwibWFjIjoiZDA2ZDkwMTZlNTI4MWRkYjA2Mzc0NTZlNmVmNDA0NTFmMDQ5YjM5MjIyYzg1ZTNiYTc3NzM5MDZmOGE2OWE0YiJ9','2020-01-27 09:23:55','2020-01-30 11:09:24','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','$2y$10$qUJ.Hq9wcYUHtCrogX43zOggESne3ME.9VdM1Npjjx0J/PYF4.a0S',NULL),('bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','Swapnilboss','$2y$10$DYOtbHZDmAtxRzRctUPcpeT80/Ijpykp1MbKxMYAE9956tKGu3SVS',NULL,'$2y$10$6O2x4BBlxow/KCeZ93qD9.Iy2m9Oa5AOyxUg4ll6pjfFjapaxwMIG','2N8jzUexMpytnPLLpHzfszDBYoREy69kesg','2020-01-30 02:40:19',0,'QJI5QL',NULL,NULL,NULL,'eyJpdiI6Im1IcTFpdzRGaEF5cWpDc2h6dW54MFE9PSIsInZhbHVlIjoiU1Y3dTVFXC9XTWQzNEhKeVwvN3JpcDM3b2dCYW5BSEdpWjRDM2FYazZDVW1meUJSNEg2TzlzdzVMUmd0SWNRWVVTNHNvNkVBT3ljRWNTRDNra0d5RHdCZHc3b0lHMmdSTzFzeEVVV2lzWDJEQ2R5UFhRcDc0YmU5NXROT20xdzAzK0w4XC9peGhweDUrMmEyOGJxeTVsYmlVc2ttTjlxMStoRjdtbjVRZnBleHhnYmU4XC8zWVBIZTBic1d1MHVHYXdKcVdtRVJac0pVRmNcLzF5QzlwOU5vbVU4UGRQN1hIZEd1b1wvb0ZFK0FyYzQxYnN2Mys2U0cwcDd1dEU5WmJxeDB2aEVZOVI4MTY0RG5jN0xyQjdnbWpXVXJyaDgyek56OFJmQjZQOHV0VE5hWEw0d1VnTXlHOHU2OE1hZWhCN3dibUlOMXJQYzl2TTVMYWM0UmhGNWw3ZHRnPT0iLCJtYWMiOiIwMGVlNjhjNTFkYTZmODY5NmYxMzE4NmJhNmIwODYzOWU1NzRhYTdkMWYwZDAwOGZkODVmYzc2MzNmNzM3ZTc5In0=','eyJpdiI6InMwQ1ROdUZzbTFsY2JhcVduajVaN3c9PSIsInZhbHVlIjoiNFNZYnhOOXRyWXRnTUZmXC9nZ2J6SE9tK1ZPTDdhcVFYS05tV0hNRXAydUg2TGhNdzJha1JUa2xXVUZIUHJGSkxDYmRETHIxa3VxZ0tcLzJzTFwvODBJYTlsYnpyZU9LTnFaSVY4ZFhwUFhsVmFTa2owXC9WeUpzVXVwUmI3eWd4SEpmRk1OVUloUTI1K2dMQW8zQlBkOFlRVEdcL0lJVXE4eFA1WmV3bVRBZlhKTnp1OFJNb3dBOE9DMThNVEF1M1BSQUY3TVZ2NDRuZTNGY09oT0JiZWN4UUpxWVVnVU8xaHR2aE9yRjdXMkpiSDlnbGFPR3RiK0JVbDJTTnFFSXZmaWg1bEdQWWNkTGY4WGEra21SOG1DWU9ZSThWYXMxRGtjeTFZXC83S2pWREJ1a2J6TGFJS3psZG02dklQN2JMaGZzZG5PMkRxSTdiN1pXYktLXC9rR3N2Yk9GUT09IiwibWFjIjoiZmUxMGFlMmI4NDM1MDA5YTkwZTcyNGU2NDY4YzU1NmM4YTNmZTcxZDVlNzM5ZDhkMzQwYTBjNzhjNDk4N2I4YiJ9','2020-01-22 15:56:25','2020-01-30 02:40:19','2N8jzUexMpytnPLLpHzfszDBYoREy69kesg','$2y$10$qIf8CP8eHTuDxlBo9Q29wuhhCVXIJlMGwoLyRvFTAqG8XZ52Zmj/i',NULL),('ebc4f450-2a0c-11ea-a203-2f00b133b4fd','swapnil','$2y$10$kbKYkxwoQVGwUfpeGx0ax./7xqLitGdtk/TDH.yBUU1GrMvgO2qwi',NULL,'$2y$10$tBF.qM7bvzDUzDtqBuLILuDmuTQQZmWN8AnXb2fL.VZ0G.bl8ns42',NULL,NULL,0,'FNDDYY',NULL,NULL,NULL,'eyJpdiI6IlwvTjdwajZHRU5hdUJhbjlXTysweXRRPT0iLCJ2YWx1ZSI6IndhZ1lJdzRiSjhBemUxR0xqUTlOZmpMSFwvbFZMeVczczBRZ0oyQmZlblliNDBjVHh1Z01TVitEYXVVeXVpZUF3TFhreUpwMTJla1kwOFZGbEh1WXVLSWE5SEZHbFg0WVlFbDNJdGpGbEZ6N1wva2JaYk9nMCtFTEkxSmo3cFhuU01ONnNLYitWblwvbjJxcjkwR3Jrc01mQzdyNXZHdVFYQVhrMlU2b1lUT3V0UnI3c1JhWFJqb0R2RzNDYW5tT1dSaDEraHkwMHE3MXZnRjk2eTM2cFdUMmIyekM5Z1FndFpqUnUyQVl6UENiS09FRERIanJ4YndpakRmTVwvbUpRUFg1eTNsYWIrbkxMMVd6NXVDZmdGR1Vza1BSa214ZTRsd1lBMkxyWXZiZVBNQWhyUW5WdXZnKytvZ1FLTUFlT0xxMDZKOWFPME5za0hSb2Z1YUsycFwvSk9IRFwvMVBHOWlqZ2NVTXpWalFyeENuTT0iLCJtYWMiOiJjY2ZiZTczNTdiOGUzMWE1NmI5OTUyMmViOWViZTcxNjM2ZjBlNjQxMzUxZDQ5YjNiZjU5YWM5MDQzNzgzZjcyIn0=','eyJpdiI6IlRTNExBNUN5bWVyNytzbjB6bUZmMmc9PSIsInZhbHVlIjoiSnlvbnRMcXBkQlI1MmtNRitLOXlIbVwvV0ZKNDN5djZMNzlXTExYdWxCXC8wVmloMmt1MGZqcW4wTEY3dGcraVwvXC8xMmhGWHdFOXEyYWZWbE9rS3d1U09Pc1RUelh4SzY1bytjV25MS2xFYWRVM3RRSWxrU0xPYnZpNDZQOUhUeEdFWGF4b28weWRQOXZDRXhvaVwvUzlwWDNoZXBDU0lwUk03QXM4NmZnN1RZdnRRSHJUTHUyaHpZR29oXC8xc3lkVm14R2NsUlN4MXlaeFc0NGU4empYcW5lXC9WcW52enZmS3NqVDZxdFVVcjIrQnNZMjRuWXh1RTNtbEtzeFwvUURRUnFUUENoVDl5U2FzMWxHY1U4d3hvN0FMcTh5TXRMcWxEd0dSZjdoaEpVY2xxZ0Q2TW1KVDgzYnpXdDBaUTl4MWpvK1JydmNnNlVxSWZBVldzZkpnclpqRUE9PSIsIm1hYyI6IjVmZDY0NzljYWYzMzg1MTJmMDc4MDI5YzExYTY0NjM1OGVjMTI0YmM4YzRiN2RiZjI4N2E1NDZhNDM0ZjQ1YzQifQ==','2019-12-29 07:29:17','2019-12-29 07:29:17',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_purchases`
--

DROP TABLE IF EXISTS `vendor_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_purchases` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(24,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vendor_purchases_user_id_foreign` (`user_id`),
  CONSTRAINT `vendor_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_purchases`
--

LOCK TABLES `vendor_purchases` WRITE;
/*!40000 ALTER TABLE `vendor_purchases` DISABLE KEYS */;
INSERT INTO `vendor_purchases` VALUES ('00df9560-39c9-11ea-a9a4-ffec02c876b4','00dd9000-39c9-11ea-ad7b-07806766d24e','2Mv3HW9xbBgo5bB8apg5MZ2V5tuCmfMa1Ey','btc',0.000000000000,'2020-01-18 08:03:25','2020-01-18 08:03:25'),('00e01120-39c9-11ea-8395-77ccaa78b474','00dd9000-39c9-11ea-ad7b-07806766d24e','addressStub#231488','stb',0.000000000000,'2020-01-18 08:03:25','2020-01-18 08:03:25'),('02fc76f0-2dfc-11ea-8c59-c97823b8b178','02f9b430-2dfc-11ea-be1c-63b91459cf7e','2N7UdS1LnmKgr1kGYynALurUrvM2sd7XvwU','btc',0.000000000000,'2020-01-03 07:38:19','2020-01-03 07:38:19'),('02fcf590-2dfc-11ea-82eb-538fe53d8003','02f9b430-2dfc-11ea-be1c-63b91459cf7e','addressStub#61865','stb',0.000000000000,'2020-01-03 07:38:19','2020-01-03 07:38:19'),('3deee8e0-39c8-11ea-a8ce-93df5f66037a','3dec9ee0-39c8-11ea-a240-6f630e9c5404','2N5yvmvz8GHcZH3bguQv6qTgtnb3UwsrhLS','btc',0.000000000000,'2020-01-18 07:57:58','2020-01-18 07:57:58'),('3def6300-39c8-11ea-b69f-adcc1bf57cba','3dec9ee0-39c8-11ea-a240-6f630e9c5404','addressStub#857318','stb',0.000000000000,'2020-01-18 07:57:58','2020-01-18 07:57:58'),('467e0d80-4295-11ea-bed8-5b027286827d','46665650-4295-11ea-b806-8dbfa6cf7ea8','2N6WCCTht3CeWJhDkajrzBDW5JGU4BkaDTR','btc',0.000000000000,'2020-01-29 12:45:48','2020-01-29 12:45:48'),('467e8840-4295-11ea-80c3-f3f9f5582e23','46665650-4295-11ea-b806-8dbfa6cf7ea8','addressStub#653294','stb',0.000000000000,'2020-01-29 12:45:48','2020-01-29 12:45:48'),('4e09fea0-39ca-11ea-947e-43914ca23855','4e07c3e0-39ca-11ea-afee-c377e381033b','2MuY3bUndW5ee3NsLmVQEibh6LST8uEFuz9','btc',0.000000000000,'2020-01-18 08:12:44','2020-01-18 08:12:44'),('4e0a6b20-39ca-11ea-9e01-d7e57313fdf3','4e07c3e0-39ca-11ea-afee-c377e381033b','addressStub#89073','stb',0.000000000000,'2020-01-18 08:12:44','2020-01-18 08:12:44'),('4f027660-39cb-11ea-a5cc-01c553fa40d0','4f008200-39cb-11ea-9938-b77c9da27b82','2N3bmKoQeguQ97HQGiomvMDLEbxie3wtLyM','btc',0.000000000000,'2020-01-18 08:19:55','2020-01-18 08:19:55'),('4f02ed40-39cb-11ea-9032-152b09999d94','4f008200-39cb-11ea-9938-b77c9da27b82','addressStub#87416','stb',0.000000000000,'2020-01-18 08:19:55','2020-01-18 08:19:55'),('556d6a80-423c-11ea-a212-d1b891e6c1e4','556b63d0-423c-11ea-b78b-f774d6cc9e09','2MwB8jx6ePKrHVtcWWuTo7UxHEFHgCqtbTS','btc',0.000000000000,'2020-01-29 02:09:08','2020-01-29 02:09:08'),('556e0cc0-423c-11ea-964a-ed0a5bb09757','556b63d0-423c-11ea-b78b-f774d6cc9e09','addressStub#902160','stb',0.000000000000,'2020-01-29 02:09:08','2020-01-29 02:09:08'),('593218d0-2913-11ea-8a17-4570d583a22a','592effc0-2913-11ea-9ed0-3fca0cfc0b17','2N1NWMSenx3cZSAfFAXzmDysVhTuWdaXyBM','btc',0.000000000000,'2019-12-28 01:42:46','2020-01-03 07:32:15'),('593296e0-2913-11ea-bc4b-5304ed30d325','592effc0-2913-11ea-9ed0-3fca0cfc0b17','addressStub#691890','stb',101.000000000000,'2019-12-28 01:42:46','2020-01-03 07:32:15'),('63bd4010-27ab-11ea-b0b5-e72873b858fa','6395bda0-27ab-11ea-a4fb-dfef405b6816','addressStub#763163','stb',101.000000000000,'2019-12-26 06:46:05','2019-12-26 07:16:43'),('7e58c2f0-2a0e-11ea-9a7c-e7d00ffe9f7a','7e55ec30-2a0e-11ea-abd7-b306e3eec190','2N9Y6Q7wryXN9W6PcUwWX2kMWaN2J3aaqz7','btc',0.000000000000,'2019-12-29 07:40:32','2019-12-29 07:40:32'),('7e594a40-2a0e-11ea-8a20-c799a60ed7b2','7e55ec30-2a0e-11ea-abd7-b306e3eec190','addressStub#98418','stb',0.000000000000,'2019-12-29 07:40:32','2019-12-29 07:40:32'),('8c2d6760-266d-11ea-9cbd-c3a13d428b31','8c2b7280-266d-11ea-9110-87d18817bd6d','addressStub#743247','stb',101.000000000000,'2019-12-24 16:50:53','2020-01-07 06:22:19'),('954b69e0-3b7f-11ea-9ec4-39624ef147d2','954937d0-3b7f-11ea-b750-310488e4b060','2N1EvA5tR4DaxDJLaCfNKMsMcxNfrnmQF2C','btc',0.000000000000,'2020-01-20 12:22:53','2020-01-20 12:22:53'),('954bdec0-3b7f-11ea-832f-c707d8b49647','954937d0-3b7f-11ea-b750-310488e4b060','addressStub#759957','stb',0.000000000000,'2020-01-20 12:22:53','2020-01-20 12:22:53'),('95fa42a0-3b74-11ea-980b-459308214fe7','95f7fc50-3b74-11ea-a52e-b535f7551c7f','2NF1WBEsrQDf1okomFaGMEXNiNTrRyDXzXc','btc',0.000000000000,'2020-01-20 11:04:10','2020-01-20 11:04:10'),('95fadf20-3b74-11ea-a3a4-4db15c4edb41','95f7fc50-3b74-11ea-a52e-b535f7551c7f','addressStub#796631','stb',0.000000000000,'2020-01-20 11:04:10','2020-01-20 11:04:10'),('bad2a400-2789-11ea-9ad4-3b3f58bf8ef4','baaa2c80-2789-11ea-acb2-4110865c362e','addressStub#938710','stb',101.000000000000,'2019-12-26 02:45:08','2019-12-26 05:56:16'),('bd4bdfa0-40e6-11ea-8eee-3bbaa76cd05c','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','2N3jVRK1K6zpsvQKBrGBzHUad6dXdT4u7d2','btc',0.000000000000,'2020-01-27 09:23:55','2020-01-30 03:15:19'),('bd4c5e90-40e6-11ea-8594-7fd2f83c7f16','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','addressStub#743054','stb',101.000000000000,'2020-01-27 09:23:55','2020-01-30 03:15:19'),('bea59950-3d2f-11ea-a9b9-aba0c00a28b7','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','2MxnAvK4E5UxQAKusuCAXgZG6yz8L6Q4XyS','btc',0.000000000000,'2020-01-22 15:56:25','2020-01-22 15:56:25'),('bea61a90-3d2f-11ea-b2ab-7ffe66d7cb4b','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','addressStub#924345','stb',0.000000000000,'2020-01-22 15:56:25','2020-01-22 15:56:25'),('ebc82230-2a0c-11ea-99f0-d5592e862964','ebc4f450-2a0c-11ea-a203-2f00b133b4fd','2MtsLPGKG3VBYafCVS8zTYZYkLb7ozMM8sR','btc',0.000000000000,'2019-12-29 07:29:17','2019-12-29 07:29:17'),('ebc8a1e0-2a0c-11ea-952b-173bdfbeb67c','ebc4f450-2a0c-11ea-a203-2f00b133b4fd','addressStub#59384','stb',0.000000000000,'2019-12-29 07:29:17','2019-12-29 07:29:17');
/*!40000 ALTER TABLE `vendor_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_level` int(10) unsigned NOT NULL,
  `experience` int(11) NOT NULL DEFAULT '0',
  `about` text COLLATE utf8mb4_unicode_ci,
  `profilebg` text COLLATE utf8mb4_unicode_ci,
  `trusted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `vendors_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES ('592effc0-2913-11ea-9ed0-3fca0cfc0b17',0,0,'','profile-bg-checkerboard',0,'2020-01-03 07:32:15','2020-01-03 07:32:15'),('6395bda0-27ab-11ea-a4fb-dfef405b6816',0,173,'','profile-bg-paper',0,'2019-12-26 07:16:43','2020-01-30 03:17:28'),('8c2b7280-266d-11ea-9110-87d18817bd6d',0,0,'','profile-bg-starrynight',0,'2020-01-07 06:22:19','2020-01-07 06:22:20'),('baaa2c80-2789-11ea-acb2-4110865c362e',0,110,NULL,'profile-bg-bricks',0,'2019-12-26 05:56:16','2020-01-29 13:08:37'),('bd49b450-40e6-11ea-a0f2-c7291a5ebca3',0,0,'','profile-bg-weave',0,'2020-01-30 03:15:19','2020-01-30 03:15:20');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES ('bd49b450-40e6-11ea-a0f2-c7291a5ebca3','6b77ea30-2dfb-11ea-af48-0592162593dc','2020-01-28 03:14:37','2020-01-28 03:14:37');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdrawals` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `btcAddress` text,
  `amount` varchar(255) DEFAULT NULL,
  `PaymentType` varchar(255) DEFAULT NULL,
  `UserId` varchar(255) DEFAULT NULL,
  `PaymentStatus` varchar(255) DEFAULT NULL,
  `txids` text,
  `delete_status` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
INSERT INTO `withdrawals` VALUES ('bd49c7b0-3d1c-11ea-845e-81cb3fc50328',NULL,'2020-01-22 13:40:23','2020-01-29 13:39:38','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.001','BTC','954937d0-3b7f-11ea-b750-310488e4b060','Paid','b2d8f6cb3dea4f5b2613801b397c6e696b1e7b47da0621db1d53f2beb2151928','1'),('0173d190-3d35-11ea-8603-3ff7fb2471d5',NULL,'2020-01-22 16:34:05','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.003','BTC','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','Paid','b07383dd332a9f5d5069c63cba84fa79436287365d9af795d6f80770ece4d840','1'),('3beded50-3d8c-11ea-bca1-6f5ecf63558c',NULL,'2020-01-23 02:58:29','2020-01-29 13:39:38','2NBsQ5LHPnc3S1tCUiSs4biQXZFSrHskmtW','0.002','BTC','954937d0-3b7f-11ea-b750-310488e4b060','Paid','5fb27f5b2143be03d1973109d409a7547d06f87062c6309d198c3a8f4ab9fdb0','1'),('71f52240-4266-11ea-9e2b-45f80b9c9c3e',NULL,'2020-01-29 07:10:35','2020-01-29 07:10:35','2NGZrVvZG92qGYqzTLjCAewvPZ7JE8S8VxE','0.002','BTC','bea39730-3d2f-11ea-99e6-0bf8c2b3f71c','Paid','fb826209a393ca41bb0f18c2a97cdb72a92a4d092a42342e0c54fef01d44e4a4','0'),('44444420-427d-11ea-a8f4-357052084e46',NULL,'2020-01-29 09:53:57','2020-01-29 09:53:57','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.002','BTC','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Paid','d0bdcd23bc28bd43d19cbf2c1215e354bac0789a72cc4508aa9d6b05cbe4f112','0'),('82080990-427d-11ea-b6a7-39be5345fd21',NULL,'2020-01-29 09:55:40','2020-01-29 09:55:40','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.002','BTC','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Paid','73916eec46a210b0cdf4b5c004050544429e7f9bc580323249c0611a7c6f79e3','0'),('03a0fd80-4283-11ea-a260-1f2aa2bcd837',NULL,'2020-01-29 10:35:05','2020-01-29 10:35:05','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.002','BTC','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Paid','03867c1da4dc4da11b02477b2ca5a3d0a0e7676d656f3455bfb38058048d2c29','0'),('79121910-4283-11ea-9465-fd7544107f96',NULL,'2020-01-29 10:38:22','2020-01-29 10:38:22','2MzqT5BJPNf8qzrwKZjU1yQEnkApFfZukP8','0.002','BTC','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Paid','ffa40c8d837e85b0414e568a2714cb1a26f474ea761c35be1f8bffd7c7d9321c','0'),('c62a2380-428e-11ea-bba4-5ba31fae4d17',NULL,'2020-01-29 11:59:16','2020-01-29 11:59:16','2MsT6f5ZHqQDpZCeisrTrz5fMnJcYpMMz5d','0.002','BTC','bd49b450-40e6-11ea-a0f2-c7291a5ebca3','Paid','e6cb038045d05a08b67560b49837b45e65054edbda7734f54f9711a595b3b8f4','0');
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-31  7:00:29
