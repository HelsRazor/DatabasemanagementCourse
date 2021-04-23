-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) NOT NULL,
  `phone` char(10) NOT NULL,
  `inNetwork` tinyint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1000,'Unitedhealth Group','8002587412',1),(1001,'Wellpoint Inc. Group','8008529632',1),(1002,'Kaiser Foundation Group','8003336666',1),(1003,'Humana Group','8001114444',1),(1004,'Aetna Group','8004447777',0),(1005,'HCSC Group','8007778888',1),(1006,'Cigna Health Group','8009996666',1),(1007,'Highmark Group','8006669999',1),(1008,'Coventry Corp. Group','8002225555',0),(1009,'HIP Insurance Group','8005558888',1),(1010,'Independence Blue Cross Group','8002228888',1),(1011,'Blue Cross Blue Shield','8008885555',0),(1012,'Physicians Service','8008882222',1),(1013,'Health Net','8007771111',1),(1014,'Centene Corp Group','8009993333',1),(1015,'Carefirst Inc Group','8001597532',0),(1016,'Wellcare Group','8009514789',1),(1017,'UHC','8003578963',1),(1018,'Lifetime Healthcare Group','8007536987',0);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalprocedure`
--

DROP TABLE IF EXISTS `medicalprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalprocedure` (
  `code` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cost` float(7,2) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalprocedure`
--

LOCK TABLES `medicalprocedure` WRITE;
/*!40000 ALTER TABLE `medicalprocedure` DISABLE KEYS */;
INSERT INTO `medicalprocedure` VALUES (1,'Reverse Rhinopodoplasty',1500.00),(2,'Obtuse Pyloric Recombobulation',3750.00),(3,'Folded Demiophtalmectomy ',4500.00),(4,'Complete Walletectomy',10000.00),(5,'Obfuscated Dermogastrotomy',4899.00),(6,'Reversible Pancreomyoplasty',5600.00),(7,'Follicular Demiectomy',250.00),(8,'Cardiac dysrhythmias',7178.00),(9,'Biliary tract disease',4722.00),(10,'Fracture of neck of femur (hip),',4861.00),(11,'Heart valve disorders',5151.00),(12,'Pneumonia',2501.00),(13,'Septicemia',23663.00),(14,'Osteoarthritis',16520.00),(15,'Liveborn',13287.00),(16,'Congestive heart failure',10218.00),(17,'Coronary atherosclerosis',9003.00),(18,'Acute cerebrovascular disease',8840.00),(19,'Mood disorders',5246.00),(20,'Acute myocardial infarction',12092.00);
/*!40000 ALTER TABLE `medicalprocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `code` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `cost` float(7,2) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
INSERT INTO `medication` VALUES (1,'Acetaminophen','Gemini Pharmaceuticals',69.80,'pain reliever and a fever \nreducer'),(2,'Adderall','Shire Pharmaceuticals',71.90,'treat attention deficit hyperactivity \ndisorder (ADHD) and narcolepsy'),(3,'Ciprofloxacin','Pfizer',19.95,'treat different types of bacterial infections'),(4,'Clonazepam','Watson Pharmaceuticals',35.56,'treat seizures and certain types of\nanxiety disorders'),(5,'Doxycycline','Pfizer',81.50,'treat many different bacterial infections'),(6,'Gabapentin','Pfizer',68.67,'treat neuropathic pain (nerve pain)'),(7,'Hydrochlorothiazide','Jubilant Cadista Pharmaceuticals',16.77,'used to treat \nfluid retention (edema)'),(8,'Lexapro','Forest Laboratories',260.00,'used to treat anxiety in adults'),(9,'Meloxicam','Boehringer Ingelheim Pharmaceuticals',50.00,'used to treat pain or \ninflammation caused by rheumatoid arthritis and osteoarthritis'),(10,'Omeprazole','Kremers Urban Pharmaceuticals',60.00,'used to treat symptoms of \ngastroesophageal reflux disease (GERD)'),(11,'Oxycodone','Purdue Pharma',80.50,'used to treat moderate to severe pain'),(12,'Pantoprazole','Pfizer',68.84,'used to treat erosive esophagitis (damage to the \nesophagus from stomach acid)'),(13,'Trazodone','PubChem',14.63,'used to treat major depressive disorder'),(14,'Zoloft','Pfizer',34.99,'used to treat depression, obsessive-compulsive \ndisorder, panic disorder, anxiety disorders');
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `registered` tinyint NOT NULL,
  `ssn` char(9) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (100,'Espinosa','Carla','Head Nurse',1,'888226666'),(101,'Forman','Kitty','Head Nurse',1,'000112222'),(102,'Houlihan','Margaret','Head Nurse',1,'999551111'),(103,'Roberts','Laverne','Nurse',1,'777553333'),(104,'Flowers','Paul','Head Nurse',0,'559852222'),(105,'Hathaway','Carol','Nurse',1,'885231478'),(106,'Taggart','Samantha','Nurse',1,'357951478'),(107,'Lockhart','Abby','Nurse',1,'336541598'),(108,'Petrelli','Peter','Nurse',0,'225649874'),(109,'Peyton','Jackie','Nurse',1,'441523698'),(110,'Perkins','Ann','Nurse',0,'665412398'),(111,'Parker','Dell','Nurse',1,'554789632'),(112,'Chapel','Christine','Nurse',1,'885213647'),(113,'Hardy','Audrey','Nurse',1,'112365874'),(114,'Spenser','Bobbie','Nurse',1,'998745622'),(115,'Alden','Terri','Nurse',1,'775889632'),(116,'Young','Mary','Nurse',1,'159753684'),(117,'Fairhead','Charlie','Nurse',0,'987654321'),(118,'Seabrook','Tina','Nurse',1,'123456789');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physician`
--

DROP TABLE IF EXISTS `physician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physician` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `ssn` char(9) NOT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
/*!40000 ALTER TABLE `physician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Head Nurse'),(2,'Nurse');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomNumber` int NOT NULL,
  `roomType` varchar(30) NOT NULL,
  `blockFloor` int NOT NULL,
  `blockcode` int NOT NULL,
  `available` tinyint NOT NULL,
  `cost` float(7,2) DEFAULT NULL,
  PRIMARY KEY (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,'Critical',1,1,1,3528.00),(102,'Critical',1,1,1,3528.00),(103,'Critical',1,1,1,3528.00),(110,'Critical',1,2,0,3528.00),(111,'Critical',1,2,1,3528.00),(112,'Critical',1,2,1,3528.00),(113,'Critical',1,2,0,3528.00),(121,'Critical',1,3,1,3528.00),(122,'Critical',1,3,1,3528.00),(123,'Critical',1,3,0,3528.00),(201,'Private',2,1,0,1791.00),(202,'Private',2,1,1,1791.00),(203,'Private',2,1,1,1791.00),(210,'Private',2,2,0,1791.00),(211,'Private',2,2,1,1791.00),(212,'Private',2,2,1,1791.00),(213,'Private',2,2,0,1791.00),(221,'Private',2,3,1,1791.00),(222,'Private',2,3,0,1791.00),(223,'Private',2,3,1,1791.00),(301,'Semi-Private',3,1,0,895.50),(302,'Semi-Private',3,1,1,895.50),(303,'Semi-Private',3,1,1,895.50),(310,'Semi-Private',3,2,0,895.50),(311,'Semi-Private',3,2,1,895.50),(312,'Semi-Private',3,2,1,895.50),(313,'Semi-Private',3,2,0,895.50),(321,'Semi-Private',3,3,1,895.50),(322,'Semi-Private',3,3,1,895.50),(323,'Semi-Private',3,3,0,895.50),(401,'Semi-Private',3,1,0,895.50),(402,'Semi-Private',3,1,0,895.50),(403,'Semi-Private',3,1,0,895.50),(410,'Semi-Private',3,2,0,895.50),(411,'Semi-Private',3,2,0,895.50),(412,'Semi-Private',3,2,1,895.50),(413,'Semi-Private',3,2,1,895.50),(421,'Semi-Private',3,3,1,895.50),(422,'Semi-Private',3,3,1,895.50),(423,'Semi-Private',3,3,1,895.50);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `roomDesc` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'Critical'),(2,'Private'),(3,'Semi-Private');
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-02 19:15:03
