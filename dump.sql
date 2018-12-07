-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: netjobs
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `benutzerdaten`
--

DROP TABLE IF EXISTS `benutzerdaten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benutzerdaten` (
  `benutzer_id` int(11) NOT NULL,
  `benutzername` varchar(45) NOT NULL,
  `passwort` varchar(45) NOT NULL,
  `vorname` varchar(45) NOT NULL,
  `nachname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`benutzer_id`),
  CONSTRAINT `benutzer-dokumente` FOREIGN KEY (`benutzer_id`) REFERENCES `dokumente` (`benutzer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benutzerdaten`
--

LOCK TABLES `benutzerdaten` WRITE;
/*!40000 ALTER TABLE `benutzerdaten` DISABLE KEYS */;
INSERT INTO `benutzerdaten` VALUES (1,'guy46','f5bdb7d06f63a38428b3d162c758aa5a3dd5cf9e','Halle','Beahan','candice85@example.com'),(2,'jchristiansen','e8b9b1858c76b3f5fd95aed38e049e4dceb6ebd4','Tyrese','Kohler','hudson.barbara@example.com'),(3,'margaretta.nicolas','c5593f937101f5ce01095dac2266a9a80c1da552','Lew','Koelpin','shomenick@example.net'),(4,'carmine86','dd3848384007be24610e03ec2127bbeefeb2a978','Allan','Bayer','wayne86@example.net'),(5,'ledner.hershel','29dfb4728874901934c9700f4245448de5ad6822','Margret','Wolf','orn.bertram@example.org'),(6,'ytremblay','b8d43871ed974d2eaeca0c9cde7cee8d31fa7a92','Rita','Johns','ldonnelly@example.com'),(7,'margarete.koepp','9942bb93af3023c632c50f4fbda066ea9d11e8d9','Savion','Littel','zackary.hammes@example.org'),(8,'laurel17','0ba8970ed12f084342f102e5187ba934e5e7b580','Isaac','Trantow','dfadel@example.com'),(9,'sshields','8554204194ea88f829dc9e5a455738dd4d895398','Royce','Ratke','ccorkery@example.net'),(10,'dkihn','7a7196b01d39cb567b844ee64867ab073e107946','Adelbert','Runolfsdottir','rice.efren@example.org'),(11,'mckenzie.mckenna','5d8f3b29309d826cd6c2ad49cc526c006b477473','Valerie','Hammes','hamill.bernie@example.com'),(12,'johnathan.larson','57078ea9634edc0b735740341fdccdb9221b83ec','Wilbert','Altenwerth','magnolia.cremin@example.org'),(13,'beatty.freida','5ffc5bb57e7383a7ac3c47f1dd94e64c7c32765f','Gretchen','Goyette','thiel.ramiro@example.com'),(14,'runolfsson.gabriella','b6c27f9d3b2de400da2ff1405bba376af4600df3','Porter','Mertz','zokuneva@example.com'),(15,'jalyn02','31e638036c5fe4d91a144466da48ca8246614bac','Ora','Little','murphy54@example.net'),(16,'therese57','cd7fcf7a735c7dd96a444c43e1071cdf8cdc3e1a','Jazmyne','Pfannerstill','victor.gerhold@example.com'),(17,'ciara23','28afd0a798c21c468bf48dd0de0a6d34b34414b1','Natasha','Wyman','kemmer.palma@example.com'),(18,'ssimonis','86b78e57c109cf40012af1c875c098ab41a52c32','Naomi','Lebsack','abbott.beryl@example.net'),(19,'kiehn.norma','bf16311b3876e783457d455fee7dbc74282e79a2','Mekhi','Hirthe','blanche63@example.org'),(20,'anibal.medhurst','d2b4e6e522359360c335781d60985cddfe77b6b5','Wilford','Labadie','francesco.osinski@example.com'),(21,'hokuneva','36afe6ca5bdd94f0b5ed134385223b57c3f3a606','Mike','Klein','louvenia.d\'amore@example.com'),(22,'mariah01','6a3f565721e8a810900f3e15621b0ffe6ddc8840','Santina','Keeling','lpaucek@example.com'),(23,'jocelyn.ernser','708b790bf34483bf81d3003f9d79e760ae6fdc73','Dean','Rice','lucie48@example.net'),(24,'berge.ole','48a0043210366d108a6ee81822dd21d7a9e5090c','Mckenzie','Hoeger','macie21@example.net'),(25,'kara25','d222d92e74871c414602bf19a8b748529360de3b','Ruth','Kautzer','toney.gleichner@example.net');
/*!40000 ALTER TABLE `benutzerdaten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokumente`
--

DROP TABLE IF EXISTS `dokumente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokumente` (
  `dokument_id` int(11) NOT NULL,
  `benutzer_id` int(11) NOT NULL,
  `kategorie_id` int(11) NOT NULL,
  `file` varchar(45) NOT NULL,
  PRIMARY KEY (`dokument_id`),
  KEY `benutzer_id` (`benutzer_id`,`kategorie_id`),
  KEY `kateogrie_id` (`kategorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumente`
--

LOCK TABLES `dokumente` WRITE;
/*!40000 ALTER TABLE `dokumente` DISABLE KEYS */;
INSERT INTO `dokumente` VALUES (1,10,4,'word'),(2,24,22,' excel'),(3,17,16,'word'),(4,10,4,' pdf'),(5,3,11,' excel'),(6,22,13,' pdf'),(7,10,1,' excel'),(8,3,21,' excel'),(9,6,23,' pdf'),(10,5,23,' pdf'),(11,20,14,'word'),(12,22,5,'word'),(13,20,12,' pdf'),(14,5,14,' excel'),(15,20,7,' pdf'),(16,8,13,'word'),(17,16,18,' excel'),(18,10,9,'word'),(19,22,24,'word'),(20,2,6,'word'),(21,4,8,' excel'),(22,19,3,' pdf'),(23,7,18,' pdf'),(24,3,4,'word'),(25,4,2,' excel');
/*!40000 ALTER TABLE `dokumente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorien`
--

DROP TABLE IF EXISTS `kategorien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategorien` (
  `katgorie_id` int(11) NOT NULL,
  `kategorienname` varchar(45) NOT NULL,
  PRIMARY KEY (`katgorie_id`),
  CONSTRAINT `kategorien-dokumente` FOREIGN KEY (`katgorie_id`) REFERENCES `dokumente` (`kategorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorien`
--

LOCK TABLES `kategorien` WRITE;
/*!40000 ALTER TABLE `kategorien` DISABLE KEYS */;
INSERT INTO `kategorien` VALUES (1,' zertifikate'),(2,' zertifikate'),(3,' zertifikate'),(4,'arbeitszeugnis'),(5,' zertifikate'),(6,'arbeitszeugnis'),(7,' zertifikate'),(8,' zertifikate'),(9,'arbeitszeugnis'),(10,' zertifikate'),(11,' zertifikate'),(12,' zertifikate'),(13,'arbeitszeugnis'),(14,' zertifikate'),(15,'arbeitszeugnis'),(16,' zertifikate'),(17,' zertifikate'),(18,' zertifikate'),(19,' zertifikate'),(20,'arbeitszeugnis'),(21,' zertifikate'),(22,'arbeitszeugnis'),(23,' zertifikate'),(24,'arbeitszeugnis'),(25,' zertifikate');
/*!40000 ALTER TABLE `kategorien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07 10:56:13
