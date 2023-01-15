-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_248980a844888ba
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `dolls`
--

DROP TABLE IF EXISTS `dolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dolls` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HEIGHT` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BRAND` varchar(100) DEFAULT NULL,
  `PRICE` float DEFAULT NULL,
  `PICTURE` varchar(500) DEFAULT NULL,
  `WEIGHT` varchar(100) DEFAULT NULL,
  `MEASUREMENTS` varchar(900) DEFAULT NULL,
  `MATERIAL_TYPE` varchar(100) DEFAULT NULL,
  `ETHNICITY` varchar(100) DEFAULT NULL,
  `CATEGORY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolls`
--

LOCK TABLES `dolls` WRITE;
/*!40000 ALTER TABLE `dolls` DISABLE KEYS */;
INSERT INTO `dolls` VALUES (24,'158cm','Samantha','SYSINN',1500,'http://www.sexsharp.com/image/cache/data/148/158/3926-500x700.jpg','36kg','Height:158cm Body Height:140cm Top Bust:85.50cm Lower Bust:68cm Waist:60.50cm Hipline:86cm Hand Length:16.50cm Arm Length:66cm Shoulder Width:36cm Leg Length:76cm Thigh Perimeter:45.50cm Crus Perimeter:27.50cm Feet Length:21.50cm Package Size:146*43*33(cm) Net Weight:36KGS.','TPE','Asian','Fit'),(34,'158cm','Jasmine','SYSINN',1500,'http://www.sexsharp.com/image/cache/data/158/+CCBF%20(1)-500x700.jpg','36kg','Height:158cm Body Height:140cm Top Bust:85.50cm Lower Bust:68cm Waist:60.50cm Hipline:86cm Hand Length:16.50cm Arm Length:66cm Shoulder Width:36cm Leg Length:76cm Thigh Perimeter:45.50cm Crus Perimeter:27.50cm Feet Length:21.50cm Package Size:146*43*33(cm) Net Weight:36KGS.','TPE','Asian','Fit'),(44,'165cm','Coco','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/165/01/qy14-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','Asian','Curvy'),(54,'165cm','Melanie','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/165/++00%20(3)-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','European','Busty'),(64,'158cm','Violet','SYSINN',1500,'http://www.sexsharp.com/image/cache/data/158/160cm%20small%20breast%20(4)-500x700.jpg','36kg','Height:158cm Body Height:140cm Top Bust:85.50cm Lower Bust:68cm Waist:60.50cm Hipline:86cm Hand Length:16.50cm Arm Length:66cm Shoulder Width:36cm Leg Length:76cm Thigh Perimeter:45.50cm Crus Perimeter:27.50cm Feet Length:21.50cm Package Size:146*43*33(cm) Net Weight:36KGS.','TPE','European','Fit'),(74,'158cm','Ashley','SYSINN',1500,'http://www.sexsharp.com/image/cache/data/158/1/155babee-500x700.jpg','36kg','Height:158cm Body Height:140cm Top Bust:85.50cm Lower Bust:68cm Waist:60.50cm Hipline:86cm Hand Length:16.50cm Arm Length:66cm Shoulder Width:36cm Leg Length:76cm Thigh Perimeter:45.50cm Crus Perimeter:27.50cm Feet Length:21.50cm Package Size:146*43*33(cm) Net Weight:36KGS.','TPE','Latina','Busty'),(84,'158cm','Maya','SYSINN',1500,'http://www.sexsharp.com/image/cache/data/148/158/IMG_1264-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','Latina','Curvy'),(94,'165cm','Clarisa','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/165/IMG_0336-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','European','Busty'),(104,'165cm','Christina','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/165/1/13-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','Asian','Fit'),(114,'165cm','Lara','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/00%20DSC_0599-500x700.jpg','35kg','Height:165cm Top Bust:78cm Lower Bust:57cm Waist:53cm Hipline:77cm Arm Length:62cm Top Arm Perimeter:18.50cm Shoulder Width:30cm Leg Length:82cm Thigh Perimeter:42cm Crus Perimeter:27cm Feet Length:21cm Package Size:160*43*28(cm) Net Weight:35KGS.','TPE','Latina','Fit'),(124,'165cm','Sophie','SYSINN',1550,'http://www.sexsharp.com/image/cache/data/165/2/real19042017-1a-500x700.jpg','35kg','Height:158cm Body Height:140cm Top Bust:85.50cm Lower Bust:68cm Waist:60.50cm Hipline:86cm Hand Length:16.50cm Arm Length:66cm Shoulder Width:36cm Leg Length:76cm Thigh Perimeter:45.50cm Crus Perimeter:27.50cm Feet Length:21.50cm Package Size:146*43*33(cm) Net Weight:36KGS.','TPE','Latina','Curvy'),(154,'125cm','Scarlett','SYSINN',1200,'https://cdn.shopify.com/s/files/1/0019/3164/0883/products/100cm-wm-scarlett-sex-doll-c01-72363_800x.jpg?v=1638403464','14kg','31 lbs Breast Cup: D Bust: 25\" Waist: 15\" Hip: 24\" Anal Depth: 7\" Vaginal Depth: 7\"','TPE','European','Mini Sex Doll'),(164,'169cm','Sarah','STARPERY',2800,'https://ueeshop.ly200-cdn.com/u_file/UPAL/UPAL715/2006/products/18/479de3779d.jpg.640x640.jpg?x-oss-process=image/format,webp','29.8kg','Height:169cm Cup: C-cup Head: Sarah Skin: Color: As picture show Material:TPE(TPE body+silicone head)/Full silicone Shoulder: 35.6cm B-W-H: 84-58-93cm Thigh: 51cm Calf:  30cm Leg: 80cm Feet: 24cm Doll body weight: 28.8kg(TPE)/29kg(silicone) Head weight: 1.5kg+_0.5kg Carton:156x40x30cm','TPE','European','Curvy'),(174,'174cm','IRIS','STARPERY',2800,'https://ueeshop.ly200-cdn.com/u_file/UPAL/UPAL715/2106/products/08/927081e64d.jpg.640x640.jpg?x-oss-process=image/format,webp','27kg','Height: 174cm Head: IRIS Shoulder width: 35cm B-W-H: 77-53-83cm Under bust: 60cm Breasts: C-cup Thigh circumference: 44cm Arm circumference:21cm Feet: 22.5cm Body weight: 26kg(TPE)/30.8kg(Silicone) Head weight:1.5-1.8kg','TPE','European','Fit'),(184,'171cm','HEDY','STARPERY',2800,'https://ueeshop.ly200-cdn.com/u_file/UPAL/UPAL715/2105/products/18/3c6102a98c.jpg.640x640.jpg?x-oss-process=image/format,webp','33.5kg','Material(picture): TPE Height: 171cm Head: Hedy Cup: A Shoulder: 36cm B-W-H =78-65-93cm Feet: 23cm Reduced Body weight(TPE/Silicone): 32.5/33.5kg Head weight: 1.5kg+_0.5kg Package: 160x40x28cm','TPE','European','Fit'),(194,'158cm','Kathy','SYSINN',8878,'http://www.sexsharp.com/image/cache/data/AR_sex_doll_robot_05-500x700.jpg','33.5kg','(1).The doll can talk/chat with you directly, when she talk,her eye,eyebrow and lip,mouth can move, her head also can turn if she dont agree with you; (2).Remember what you said before, then can remind or talk with you about his/her memoried content, which is relative to your talking topics; (3).It has all functions of sex doll, such as vagina sex,anus sex,breast sex is available; (4).Animated eyes that move and blink; (5).Can tell stories,jokes,sing song; (6).Moan response according to excitement level during sex her.','TPE','European','Busty');
/*!40000 ALTER TABLE `dolls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 16:19:48