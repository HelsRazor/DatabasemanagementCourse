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
-- Table structure for table `admitted`
--

DROP TABLE IF EXISTS `admitted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admitted` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `patientId` int NOT NULL,
  `roomNumber` int NOT NULL,
  `startDateTime` timestamp NOT NULL,
  `endDateTime` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `patientId` (`patientId`),
  KEY `roomNumber` (`roomNumber`),
  CONSTRAINT `admitted_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`ID`),
  CONSTRAINT `admitted_ibfk_2` FOREIGN KEY (`roomNumber`) REFERENCES `room` (`roomNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admitted`
--

LOCK TABLES `admitted` WRITE;
/*!40000 ALTER TABLE `admitted` DISABLE KEYS */;
/*!40000 ALTER TABLE `admitted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `patient` int NOT NULL,
  `prepNurse` int DEFAULT NULL,
  `physician` int NOT NULL,
  `startDateTime` timestamp NOT NULL,
  `endDateTime` timestamp NOT NULL,
  `examRoom` int NOT NULL,
  `cost` decimal(7,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `patient` (`patient`),
  KEY `physician` (`physician`),
  KEY `prepNurse` (`prepNurse`),
  KEY `examRoom` (`examRoom`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`ID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`physician`) REFERENCES `physician` (`employeeId`),
  CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`prepNurse`) REFERENCES `nurse` (`employeeId`),
  CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`examRoom`) REFERENCES `room` (`roomNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `head` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `head` (`head`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`head`) REFERENCES `physician` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'General Medicine',21),(2,'Surgery',2),(3,'Psychiatry',9),(4,'Pediatrics',10),(5,'Intensive Care Unit',11),(6,'Emergency',16),(7,'Oncology',4),(8,'Cardiology',5),(9,'Neurology',12),(10,'Materinity',23);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `companyName` (`companyName`),
  UNIQUE KEY `companyName_2` (`companyName`)
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
  PRIMARY KEY (`code`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
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
  PRIMARY KEY (`code`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
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
  `position` int NOT NULL,
  `registered` tinyint NOT NULL,
  `ssn` char(9) NOT NULL,
  PRIMARY KEY (`employeeId`),
  UNIQUE KEY `ssn` (`ssn`),
  UNIQUE KEY `ssn_2` (`ssn`),
  KEY `position` (`position`),
  CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`position`) REFERENCES `position` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (100,'Espinosa','Carla',1,1,'888226666'),(101,'Forman','Kitty',1,1,'000112222'),(102,'Houlihan','Margaret',1,1,'999551111'),(103,'Roberts','Laverne',2,1,'777553333'),(104,'Flowers','Paul',1,0,'559852222'),(105,'Hathaway','Carol',2,1,'885231478'),(106,'Taggart','Samantha',2,1,'357951478'),(107,'Lockhart','Abby',2,1,'336541598'),(108,'Petrelli','Peter',2,0,'225649874'),(109,'Peyton','Jackie',2,1,'441523698'),(110,'Perkins','Ann',2,0,'665412398'),(111,'Parker','Dell',2,1,'554789632'),(112,'Chapel','Christine',2,1,'885213647'),(113,'Hardy','Audrey',2,1,'112365874'),(114,'Spenser','Bobbie',2,1,'998745622'),(115,'Alden','Terri',2,1,'775889632'),(116,'Young','Mary',2,1,'159753684'),(117,'Fairhead','Charlie',2,0,'987654321'),(118,'Seabrook','Tina',2,1,'123456789');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oncall`
--

DROP TABLE IF EXISTS `oncall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oncall` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nurse` int NOT NULL,
  `blockFloor` int NOT NULL,
  `blockCode` int NOT NULL,
  `startDateTime` timestamp NOT NULL,
  `endDateTime` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `nurse` (`nurse`),
  CONSTRAINT `oncall_ibfk_1` FOREIGN KEY (`nurse`) REFERENCES `nurse` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oncall`
--

LOCK TABLES `oncall` WRITE;
/*!40000 ALTER TABLE `oncall` DISABLE KEYS */;
INSERT INTO `oncall` VALUES (1,100,1,1,'2020-03-01 12:00:00','2020-03-02 00:00:00'),(2,101,1,2,'2020-03-02 00:00:00','2020-03-02 12:00:00'),(3,102,1,3,'2020-03-02 12:00:00','2020-03-03 00:00:00'),(4,103,2,1,'2020-03-03 00:00:00','2020-03-03 12:00:00'),(5,104,2,2,'2020-03-03 12:00:00','2020-03-04 00:00:00'),(6,105,2,3,'2020-03-04 00:00:00','2020-03-04 12:00:00'),(7,106,3,1,'2020-03-04 12:00:00','2020-03-05 00:00:00'),(8,107,3,2,'2020-03-05 00:00:00','2020-03-05 12:00:00'),(9,108,3,3,'2020-03-05 12:00:00','2020-03-06 00:00:00'),(10,109,1,1,'2020-03-06 00:00:00','2020-03-06 12:00:00'),(11,110,1,2,'2020-03-06 12:00:00','2020-03-07 00:00:00'),(12,111,1,3,'2020-03-07 00:00:00','2020-03-07 12:00:00'),(13,112,2,1,'2020-03-07 12:00:00','2020-03-08 00:00:00'),(14,113,2,2,'2020-03-08 00:00:00','2020-03-08 11:00:00'),(15,114,2,3,'2020-03-08 11:00:00','2020-03-08 23:00:00'),(16,115,3,1,'2020-03-08 23:00:00','2020-03-09 11:00:00'),(17,116,3,2,'2020-03-09 11:00:00','2020-03-09 23:00:00'),(18,117,3,3,'2020-03-09 23:00:00','2020-03-10 11:00:00'),(19,118,1,1,'2020-03-10 11:00:00','2020-03-10 23:00:00');
/*!40000 ALTER TABLE `oncall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ssn` char(9) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` char(10) NOT NULL,
  `insuranceId` int DEFAULT NULL,
  `insuranceAct` int DEFAULT NULL,
  `pcp` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ssn` (`ssn`),
  KEY `insuranceId` (`insuranceId`),
  KEY `pcp` (`pcp`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`insuranceId`) REFERENCES `insurance` (`ID`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`pcp`) REFERENCES `physician` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (100,'100000001','Smith','John','42 Foobar Lane','1235550256',1000,68476213,24),(101,'100000002','Ritchie','Grace','37 Snafu Drive','1235550512',1011,36546321,23),(102,'100000003','Patient','Random','101 Omgbbq Street','1235551204',1018,65465421,21),(103,'100000004','Doe','Dennis','1100 Foobaz Avenue','1235552048',1005,68421879,22);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
  `position` int DEFAULT NULL,
  `ssn` char(9) NOT NULL,
  PRIMARY KEY (`employeeId`),
  UNIQUE KEY `ssn` (`ssn`),
  KEY `position` (`position`),
  CONSTRAINT `physician_ibfk_1` FOREIGN KEY (`position`) REFERENCES `position` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physician`
--

LOCK TABLES `physician` WRITE;
/*!40000 ALTER TABLE `physician` DISABLE KEYS */;
INSERT INTO `physician` VALUES (1,'Dorian','John',3,'111111111'),(2,'Reid','Elliot',4,'222222222'),(3,'Turk','Christopher',5,'333333333'),(4,'Cox','Percival',6,'444444444'),(5,'Kelso','Bob',7,'555555555'),(6,'Quinlan','Todd',5,'666666666'),(7,'Wen','John',5,'777777777'),(8,'Dudemeister','Keith',8,'888888888'),(9,'Clock','Molly',9,'999999999'),(10,'Ross','Doug',10,'951159951'),(11,'Chase','Robert',11,'753357753'),(12,'House','Gregory',12,'852258852'),(13,'Greene','Mark',4,'123321123'),(14,'Carter','John',13,'456654456'),(15,'Wilson','James',14,'789987789'),(16,'McCoy','Leonard',14,'741147741'),(17,'McIntyre','John',15,'963369963'),(18,'Foreman','Eric',16,'369963369'),(19,'Shepherd','Derek',16,'147741147'),(20,'Philip','Buck',17,'111223333'),(21,'Apostol','Robert',17,'222334444'),(22,'Badola','Jesus',17,'333445555'),(23,'Altino','Rosa',17,'444556666'),(24,'Hamilton','Ann',17,'555667777');
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
  PRIMARY KEY (`ID`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (10,'Attending Pediatrician'),(4,'Attending Physician'),(9,'Attending Psychiatrist'),(13,'ER Attending'),(14,'ER Resident'),(17,'General Medicine'),(7,'Head Chief of Medicine'),(1,'Head Nurse'),(12,'Head of Diagnostic Medicine'),(11,'Intensive Care Surgeon'),(8,'MD Resident'),(16,'medical Student'),(2,'Nurse'),(6,'Senior Attending Physician'),(3,'Staff Internist'),(5,'Surgical Attending Physician'),(15,'Surgical Intern');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `physicianId` int NOT NULL,
  `patientId` int NOT NULL,
  `medicationId` int NOT NULL,
  `prescribeDate` date NOT NULL,
  `appointmentId` int NOT NULL,
  `dose` int NOT NULL,
  PRIMARY KEY (`physicianId`,`patientId`,`medicationId`,`prescribeDate`),
  KEY `patientId` (`patientId`),
  KEY `medicationId` (`medicationId`),
  KEY `appointmentId` (`appointmentId`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`ID`),
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`physicianId`) REFERENCES `physician` (`employeeId`),
  CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`medicationId`) REFERENCES `medication` (`code`),
  CONSTRAINT `prescription_ibfk_4` FOREIGN KEY (`appointmentId`) REFERENCES `appointment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomNumber` int NOT NULL,
  `roomtype` int NOT NULL,
  `blockFloor` int NOT NULL,
  `blockcode` int NOT NULL,
  `available` tinyint NOT NULL,
  PRIMARY KEY (`roomNumber`),
  KEY `roomtype` (`roomtype`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomtype`) REFERENCES `roomtype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,1,1,1,1),(102,1,1,1,1),(103,1,1,1,1),(110,1,1,2,0),(111,1,1,2,1),(112,1,1,2,1),(113,1,1,2,0),(121,1,1,3,1),(122,1,1,3,1),(123,1,1,3,0),(140,4,1,4,0),(141,4,1,4,1),(142,4,1,4,0),(143,4,1,4,0),(144,4,1,4,1),(145,4,1,4,0),(146,4,1,4,1),(147,4,1,4,0),(148,4,1,4,1),(149,4,1,4,0),(201,2,2,1,0),(202,2,2,1,1),(203,2,2,1,1),(210,2,2,2,0),(211,2,2,2,1),(212,2,2,2,1),(213,2,2,2,0),(221,2,2,3,1),(222,2,2,3,0),(223,2,2,3,1),(301,3,3,1,0),(302,3,3,1,1),(303,3,3,1,1),(310,3,3,2,0),(311,3,3,2,1),(312,3,3,2,1),(313,3,3,2,0),(321,3,3,3,1),(322,3,3,3,1),(323,3,3,3,0),(401,3,3,1,0),(402,3,3,1,0),(403,3,3,1,0),(410,3,3,2,0),(411,3,3,2,0),(412,3,3,2,1),(413,3,3,2,1),(421,3,3,3,1),(422,3,3,3,1),(423,3,3,3,1);
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
  `cost` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `roomDesc` (`roomDesc`),
  UNIQUE KEY `roomDesc_2` (`roomDesc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'Critical',3528.00),(2,'Private',1791.00),(3,'Semi-Private',895.50),(4,'Exam',0.00);
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undergoes`
--

DROP TABLE IF EXISTS `undergoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `undergoes` (
  `patientId` int NOT NULL,
  `procedureCode` int NOT NULL,
  `admittedId` int NOT NULL,
  `procedureDate` timestamp NOT NULL,
  `physicianId` int NOT NULL,
  `nurseId` int NOT NULL,
  PRIMARY KEY (`patientId`,`procedureCode`,`procedureDate`),
  KEY `physicianId` (`physicianId`),
  KEY `admittedId` (`admittedId`),
  KEY `nurseId` (`nurseId`),
  KEY `procedureCode` (`procedureCode`),
  CONSTRAINT `undergoes_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`ID`),
  CONSTRAINT `undergoes_ibfk_2` FOREIGN KEY (`physicianId`) REFERENCES `physician` (`employeeId`),
  CONSTRAINT `undergoes_ibfk_3` FOREIGN KEY (`admittedId`) REFERENCES `admitted` (`ID`),
  CONSTRAINT `undergoes_ibfk_4` FOREIGN KEY (`nurseId`) REFERENCES `nurse` (`employeeId`),
  CONSTRAINT `undergoes_ibfk_5` FOREIGN KEY (`procedureCode`) REFERENCES `medicalprocedure` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undergoes`
--

LOCK TABLES `undergoes` WRITE;
/*!40000 ALTER TABLE `undergoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `undergoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-05 22:28:06
