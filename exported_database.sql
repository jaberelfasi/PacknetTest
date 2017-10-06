-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: sandbox.dev    Database: packnet
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1-log

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
-- Table structure for table `Family_albums`
--

DROP TABLE IF EXISTS `Family_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Family_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_tracks` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_issued` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `genres` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchased_by` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Family_albums`
--

LOCK TABLES `Family_albums` WRITE;
/*!40000 ALTER TABLE `Family_albums` DISABLE KEYS */;
INSERT INTO `Family_albums` VALUES (1,'title1','artist1','31','2005','hiphop\n techno\n house\n','2005-10-06','Jaber\n',87),(2,'title2','artist2','27','2002','hiphop\n rap\n techno\n','2015-11-10','sis\n',84),(3,'title3','artist3','176','2000','rock\n country\n house\n','2001-01-02','Jaber\n',96),(4,'title4','artist4','9','2008','rock\n pop\n rap\n','2008-04-08','Jaber\n',67),(5,'title5','artist5','62','2009','pop\n hiphop\n country\n','2000-08-16','mom\n',58),(6,'title6','artist6','173','2008','rock\n rap\n house\n','2002-12-02','bro\n',70),(7,'title7','artist7','41','2016','rap\n techno\n house\n','2014-10-23','Ibra\n',90),(8,'title8','artist8','200','2003','pop\n techno\n country\n','2002-11-16','Ibra\n',59),(9,'title9','artist9','182','2001','hiphop\n rap\n house\n','2010-08-03','Ibra\n',36),(10,'title10','artist10','99','2017','pop\n hiphop\n rap\n','2013-04-09','dad\n',40),(11,'title11','artist11','29','2005','hiphop\n country\n house\n','2009-12-01','bro\n',80),(12,'title12','artist12','117','2008','pop\n techno\n country\n','2000-09-05','sis\n',74),(13,'title13','artist13','6','2013','rock\n techno\n house\n','2005-06-30','mom\n',33),(14,'title14','artist14','159','2003','rock\n hiphop\n house\n','2012-08-05','mom\n',21),(15,'title15','artist15','136','2014','rock\n hiphop\n techno\n','2013-03-05','Ibra\n',21),(16,'title16','artist16','115','2005','rock\n pop\n techno\n','2017-06-27','mom\n',73),(17,'title17','artist17','188','2001','pop\n techno\n country\n','2012-02-25','dad\n',5),(18,'title18','artist18','64','2016','rock\n rap\n techno\n','2000-08-17','mom\n',33),(19,'title19','artist19','42','2002','rock\n pop\n country\n','2009-11-28','mom\n',77),(20,'title20','artist20','81','2009','pop\n techno\n house\n','2013-08-07','Jaber\n',59),(21,'title21','artist21','40','2012','rap\n techno\n country\n','2008-04-30','dad\n',43),(22,'title22','artist22','69','2010','rock\n hiphop\n rap\n','2013-10-12','bro\n',52),(23,'title23','artist23','3','2005','pop\n techno\n country\n','2016-02-29','Ibra\n',57),(24,'title24','artist24','17','2005','rap\n country\n house\n','2014-12-29','sis\n',79),(25,'title25','artist25','83','2007','rock\n pop\n country\n','2007-07-31','dad\n',42),(26,'title26','artist26','191','2012','rock\n pop\n country\n','2001-12-19','sis\n',30),(27,'title27','artist27','195','2007','rock\n rap\n house\n','2014-03-21','Jaber\n',62),(28,'title28','artist28','85','2004','rock\n techno\n country\n','2015-07-23','mom\n',8),(29,'title29','artist29','46','2005','pop\n rap\n country\n','2007-12-12','dad\n',75),(30,'title30','artist30','70','2008','pop\n hiphop\n rap\n','2002-03-22','Jaber\n',95),(31,'title31','artist31','132','2010','rap\n country\n house\n','2016-05-17','Ibra\n',33),(32,'title32','artist32','109','2001','hiphop\n rap\n country\n','2000-01-25','Ibra\n',18),(33,'title33','artist33','5','2009','pop\n techno\n country\n','2007-12-28','mom\n',46),(34,'title34','artist34','75','2001','hiphop\n rap\n house\n','2004-10-13','Jaber\n',38),(35,'title35','artist35','148','2017','hiphop\n techno\n house\n','2016-01-16','Ibra\n',50),(36,'title36','artist36','34','2012','rock\n hiphop\n country\n','2001-06-22','Jaber\n',28),(37,'title37','artist37','164','2007','hiphop\n rap\n country\n','2013-02-08','dad\n',76),(38,'title38','artist38','33','2007','pop\n country\n house\n','2012-10-18','Jaber\n',37),(39,'title39','artist39','160','2000','rap\n techno\n house\n','2014-04-01','dad\n',8),(40,'title40','artist40','183','2007','pop\n rap\n techno\n','2001-06-16','Jaber\n',30),(41,'title41','artist41','61','2001','rock\n hiphop\n house\n','2001-12-11','dad\n',29),(42,'title42','artist42','40','2016','rock\n pop\n country\n','2007-07-02','Jaber\n',55),(43,'title43','artist43','161','2014','rock\n hiphop\n rap\n','2005-04-09','Jaber\n',69),(44,'title44','artist44','51','2003','rock\n pop\n country\n','2008-04-08','mom\n',6),(45,'title45','artist45','92','2013','pop\n country\n house\n','2006-09-05','Jaber\n',99),(46,'title46','artist46','66','2017','rock\n hiphop\n country\n','2001-09-28','mom\n',39),(47,'title47','artist47','134','2008','rock\n techno\n country\n','2004-07-20','Ibra\n',22),(48,'title48','artist48','89','2000','techno\n country\n house\n','2012-08-28','Jaber\n',16),(49,'title49','artist49','64','2015','rock\n pop\n rap\n','2017-02-06','dad\n',5),(50,'title50','artist50','99','2015','hiphop\n techno\n country\n','2006-05-28','Ibra\n',25),(51,'title51','artist51','156','2000','hiphop\n rap\n techno\n','2005-03-04','Ibra\n',58),(52,'title52','artist52','192','2015','pop\n hiphop\n rap\n','2005-04-08','sis\n',92),(53,'title53','artist53','198','2017','pop\n techno\n house\n','2015-12-09','Jaber\n',98),(54,'title54','artist54','195','2017','rock\n rap\n house\n','2009-11-06','Ibra\n',98),(55,'title55','artist55','32','2009','techno\n country\n house\n','2000-02-20','Ibra\n',15),(56,'title56','artist56','164','2012','rock\n techno\n country\n','2004-11-02','Ibra\n',60),(57,'title57','artist57','120','2006','pop\n rap\n house\n','2015-08-03','Jaber\n',30),(58,'title58','artist58','85','2007','rock\n hiphop\n techno\n','2011-02-19','Jaber\n',78),(59,'title59','artist59','111','2009','rock\n pop\n house\n','2006-10-29','bro\n',88),(60,'title60','artist60','33','2007','hiphop\n rap\n techno\n','2007-04-11','mom\n',50),(61,'title61','artist61','166','2002','pop\n country\n house\n','2008-09-12','mom\n',5),(62,'title62','artist62','48','2004','rock\n pop\n techno\n','2017-03-04','bro\n',33),(63,'title63','artist63','61','2012','rock\n hiphop\n rap\n','2013-05-25','bro\n',47),(64,'title64','artist64','48','2011','rap\n techno\n country\n','2000-07-23','Ibra\n',65),(65,'title65','artist65','57','2013','hiphop\n rap\n country\n','2015-08-27','sis\n',78),(66,'title66','artist66','129','2003','pop\n country\n house\n','2010-12-31','Ibra\n',69),(67,'title67','artist67','155','2007','rock\n rap\n techno\n','2010-05-11','dad\n',71),(68,'title68','artist68','105','2001','pop\n techno\n house\n','2016-10-11','bro\n',28),(69,'title69','artist69','139','2000','rap\n country\n house\n','2002-12-04','sis\n',57),(70,'title70','artist70','113','2003','rock\n hiphop\n rap\n','2008-09-22','dad\n',77),(71,'title71','artist71','119','2008','rock\n pop\n hiphop\n','2005-02-01','Ibra\n',6),(72,'title72','artist72','4','2017','pop\n techno\n house\n','2009-07-09','Jaber\n',45),(73,'title73','artist73','28','2015','pop\n hiphop\n country\n','2009-07-03','mom\n',36),(74,'title74','artist74','29','2008','pop\n techno\n country\n','2012-02-07','sis\n',31),(75,'title75','artist75','123','2014','hiphop\n rap\n techno\n','2014-07-17','sis\n',33),(76,'title76','artist76','84','2009','rock\n pop\n hiphop\n','2004-11-28','sis\n',96),(77,'title77','artist77','129','2013','rock\n techno\n country\n','2011-05-09','Jaber\n',63),(78,'title78','artist78','65','2013','rock\n pop\n country\n','2016-05-30','Ibra\n',50),(79,'title79','artist79','1','2016','pop\n hiphop\n house\n','2001-07-22','Ibra\n',30),(80,'title80','artist80','34','2015','techno\n country\n house\n','2016-11-18','sis\n',50),(81,'title81','artist81','88','2015','rap\n techno\n country\n','2015-11-17','mom\n',72),(82,'title82','artist82','19','2017','rock\n techno\n house\n','2002-08-09','sis\n',76),(83,'title83','artist83','126','2004','hiphop\n rap\n country\n','2002-04-21','Ibra\n',83),(84,'title84','artist84','109','2005','rock\n rap\n house\n','2004-07-21','Ibra\n',32),(85,'title85','artist85','79','2008','pop\n hiphop\n rap\n','2014-06-20','sis\n',93),(86,'title86','artist86','126','2004','pop\n rap\n techno\n','2013-07-18','Ibra\n',42),(87,'title87','artist87','147','2008','rap\n techno\n house\n','2006-10-31','Ibra\n',55),(88,'title88','artist88','119','2010','rock\n rap\n house\n','2004-03-06','mom\n',83),(89,'title89','artist89','31','2001','rap\n country\n house\n','2007-10-14','mom\n',38),(90,'title90','artist90','49','2011','rock\n techno\n country\n','2014-12-17','Jaber\n',92),(91,'title91','artist91','34','2016','pop\n techno\n country\n','2007-03-29','sis\n',48),(92,'title92','artist92','138','2017','hiphop\n rap\n techno\n','2008-09-07','Ibra\n',94),(93,'title93','artist93','5','2000','hiphop\n rap\n country\n','2003-11-03','Jaber\n',49),(94,'title94','artist94','90','2011','hiphop\n country\n house\n','2015-10-08','Jaber\n',9),(95,'title95','artist95','179','2004','rock\n hiphop\n rap\n','2012-10-24','sis\n',8),(96,'title96','artist96','142','2016','pop\n rap\n house\n','2009-12-31','Ibra\n',85),(97,'title97','artist97','18','2008','rock\n pop\n rap\n','2012-02-10','Jaber\n',31),(98,'title98','artist98','46','2014','pop\n techno\n house\n','2010-03-07','sis\n',68),(99,'title99','artist99','196','2005','rap\n country\n house\n','2009-02-24','Jaber\n',42),(100,'title100','artist100','193','2003','rap\n country\n house\n','2007-09-07','mom\n',33);
/*!40000 ALTER TABLE `Family_albums` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 14:55:26
