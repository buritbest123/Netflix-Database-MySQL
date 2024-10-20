-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `Actor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Actor`),
  KEY `FK_Actor_ContentID` (`ContentID`),
  CONSTRAINT `FK_Actor_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES ('Athena Karkanis','ACT@456SS'),('Josh Dallas','ACT@456SS'),('Melissa Roxburgh','ACT@456SS'),('Anya Forger','AD@15FO88'),('Lold Forger','AD@15FO88'),('Yor Forger','AD@15FO88'),('Kang Ki-young','AKD@58F21'),('Kang Tae-oh','AKD@58F21'),('Park Eun-bin','AKD@58F21'),('Brown','AKD@621S8'),('David Harbour','AKD@621S8'),('Millie Bobby','AKD@621S8'),('Winona Ryder','AKD@621S8'),('Aaron Hilmer','KOE@H54BI'),('Albrecht Schuch','KOE@H54BI'),('Felix Kammerer','KOE@H54BI'),('Álvaro Morte','KOP@548DD'),('Itziar Ituño','KOP@548DD'),('Pedro Alonso','KOP@548DD'),('Úrsula Corberó','KOP@548DD'),('Cillian Murphy','OIF@548SD'),('Helen McCrory','OIF@548SD'),('Sam Neill','OIF@548SD'),('Jum Parsons','OIF@577SD'),('Matt Bomer','OIF@577SD'),('Zachary Quinto','OIF@577SD'),('Fengxi','SOA@SS225'),('Hei','SOA@SS225'),('Roju','SOA@SS225'),('Wuxian','SOA@SS225'),('Bhuripat Vejvongsatechavat','YAO@FF334'),('Kittipat Samarntragulchai','YAO@FF334'),('Kunatip Pinpradub','YAO@FF334');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `ID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TrailerURL` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CountryRelease` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Title` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rating` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LastUpDate` datetime NOT NULL,
  `yearOfPublication` int NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Status` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES ('ACC@4L5B2','https://www.netflix.com/browse/genre/34399?jbv=81487620','Laos','The long walk','16+','2019-09-04 00:00:00',2019,'In a rural Laotian village, an old farmer haunted by trauma and past choices encounters a ghost that can transport him back in time.',_binary ''),('ACT@456SS','https://www.netflix.com/search?q=Manifest&jbv=80241318','USA','Manifest','13+','2022-01-21 00:00:00',2018,'Flight 828 arrives in New York with passengers who are unaware they have been missing for years as a mysterious phenomenon influences their behavior.',_binary ''),('AD@15FO88','https://www.netflix.com/search?q=spy&jbv=81511410','Japan','Spy x Family','13+','2022-11-05 00:00:00',2022,'Tasked with getting close to a high-ranking politician in a neighboring country, an elite spy adopts a young girl to strengthen his cover.',_binary ''),('AKD@58F21','https://www.netflix.com/search?q=Extraordinar&jbv=81518991','Korean','Extraordinary Attorney Woo','16+','2022-10-13 00:00:00',2022,'On her first day at a new job, Woo Young-woo meets an ally, a skeptic and an old acquaintance. She takes on an assault case involving an elderly couple.',_binary ''),('AKD@621S8','https://www.netflix.com/search?q=Stranger%20Things&jbv=80057281','USA','Stranger Things','16+','2022-09-23 00:00:00',2016,'Nancy has sobering visions, and El passes an important test. Back in Hawkins, the gang gathers supplies and prepares for battle.',_binary ''),('BB@ILUQ12','https://www.netflix.com/browse?jbv=80133543','China','The Great Wall','13+','2016-12-06 00:00:00',2016,'Searching for gunpowder in Song dynasty China, European mercenaries discover an epic war being waged between the countrys heroes and savage monsters.',_binary ''),('CSV@AAD55','https://www.netflix.com/browse?jbv=70035186','USA','The Da Vinci Code','13+','2006-05-17 00:00:00',2006,'A harvard professor must untangle a web of deceit linked to the works of Leonardo da Vinci after a mysterious killing at the Louvre Museum.',_binary ''),('DAB@112AD','https://www.netflix.com/search?q=penguin&jbv=80013941','USA','Penguin of Madagascar: The movie','7+','2014-11-25 00:00:00',2014,'Elite penguin spies Skipper, Kowalski, Rico and Private join forces with the suave agents of the North Wind to defeat power-mad genius Octavius Brine',_binary ''),('DIY@61A4K','https://www.netflix.com/search?q=the%20median&jbv=80991313','UK','No one gets out alive','16+','2021-09-29 00:00:00',2021,'Desperate and without documentation, a woman from Mexico moves into a rundown Cleveland boardinghouse. Then the unsetting cries and eerie visions begin.',_binary ''),('FAT@HAI78','https://www.netflix.com/search?q=penguin&jbv=81018682','USA','The Sea Beast','7+','2022-06-24 00:00:00',2022,'When a young girl stows away on the ship of a legendary sea monster hunter, they launch an epic jouney into uncharted waters - and make history to boot.',_binary ''),('GAL@LA5GD','https://www.netflix.com/browse?jbv=81071055','USA','Midsommar','18+','2019-07-03 00:00:00',2019,'A grieving woman accompanies her boyfriend and his grad-school colleagues to a remote Swedish village that is not the idyllic commune it appears to be.',_binary ''),('IQE@OPA35','https://www.netflix.com/search?q=the%20median&jbv=81497415','Thailand','The medium','16+','2021-07-11 00:00:00',2021,'When a woman displays increasingly disturbing behavior, a shaman priestess must uncover dark secrets - and face an unsettling ancient family curse.',_binary ''),('JAB@ZD76S','https://www.netflix.com/search?q=the%20median&jbv=81049260','Malaysia','Munafik 2','16+','2018-08-30 00:00:00',2018,'Haunted by terrifying visions, a muslim healer finds his faith tested when he help a woman locked in battle, body and soul, with diabolical leader.',_binary ''),('JAJ@NOV11','https://www.netflix.com/browse?jbv=922448','Hong Kong','Royal Tramp','13+','1992-07-30 00:00:00',1992,'Comical storyteller Wai Siu Bo goes from rags to riches when he saves a rebel leader at his sisters brothel. Soon everyone is eager for his help.',_binary ''),('KAK@445DB','https://www.netflix.com/browse?jbv=70305903','USA','Interstellar','13+','2014-10-26 00:00:00',2014,'With humanity teetering on the brink of extinction, a group of astronauts travels through a wormhole in search of another inhabitable planet.',_binary ''),('KJJ@936SX','https://www.netflix.com/search?q=the%20median&jbv=70101697','USA','Ninja assassin','18+','2009-11-25 00:00:00',2009,'A former assassin must protect himself and a Europol agent from a ruthless band of assassins who wish to exist in secrecy.',_binary ''),('KOE@H54BI','https://www.netflix.com/search?q=All%20Quiet%20on%20the%20Western%20Front&jbv=81260280','USA','All Quiet on the Western Front','16+','2022-11-11 00:00:00',2022,'When 17-year-old Paul joins the Western Front in World War I, his initial excitement is soon shattered by the grim reality of life in the trenches.',_binary ''),('KOP@548DD','https://www.netflix.com/search?q=Money%20Heist&jbv=80192098','Span','Money Heist','16+','2021-05-05 00:00:00',2017,'Hostage negotiator Raquel makes initial contact with the Professor. One of the hostages is a crucial part of the thieves plans.',_binary ''),('MNM@75TYT','https://www.netflix.com/browse?jbv=80161352','USA','The Mummy','16+','2017-05-22 00:00:00',2017,'A treasure-hunting soldier reawakens an ancient Egyptian princess who has waited for centuries to take revenge on a world that wronged her.',_binary ''),('MNN@49TYT','https://www.netflix.com/browse?jbv=81622849','China','Love between fairy and devil','13+','2022-08-29 00:00:00',2022,'When a low-ranking fairy accidentally resurrects a powerful demon, their fates become cosmically entangled as the world is thrown into turmoil.',_binary ''),('OIF@548SD','https://www.netflix.com/search?q=Peaky%20Blinders&jbv=80002479','US','Peaky Blinders','16+','2022-05-13 00:00:00',2013,'A brutal, working-class gang, named for the razor blades they sewed into their caps to slash enemies, vies for power in Birmingham, England.',_binary ''),('OIF@577SD','https://www.netflix.com/search?q=The%20Boys&jbv=81000365','USA','The Boys','16+','2022-11-02 00:00:00',2019,'At a birthday party in 1968 New York, a surprise guest and a drunken game leave seven gay friends reckoning with unspoken feelings and buried truths.',_binary ''),('OUT@888WQ','https://www.netflix.com/browse/genre/34399?jbv=81280352','India','Gangubai Kathiawadi','16+','2022-02-16 00:00:00',2022,'Duped and sold to a brothel, a young woman fearlessly reclaims her power, using underworld connections to preside over the world she was once a pawn in.',_binary ''),('OUY@ASD12','https://www.netflix.com/browse?jbv=81091393','Japan','Demon Slayer','16+','2016-02-15 00:00:00',2016,'After a demon attack leaves his family slain and his sister cursed, tanjiro embarks upon a perilous journey to find a cure and avenge those he is lost.',_binary ''),('POP@V33A5','https://www.netflix.com/browse/genre/31574?bc=34399&jbv=80085566','USA','The other side of the wind','16+','2018-08-31 00:00:00',2018,'On the last day of his life, a legendary director struggles to complete a new project and contemplates his legacy in this layered film by Orson Welles.',_binary ''),('PP@5A33DQ','https://www.netflix.com/search?q=the%20median&jbv=81237994','South Korea','All of us are dead','16+','2022-01-28 00:00:00',2022,'A high school becomes grouind zero for zombie virus outbreak. Trappped students must fight their way out - or turn into one of the rabid infected',_binary ''),('QES@7674B','https://www.netflix.com/search?q=the%20median&jbv=81224632','Taiwan','The Bridge Curse','16+','2020-02-27 00:00:00',2020,'A group of university students decides to test an urban legend about the ghost of female student that haunts a campus bridge.',_binary ''),('SAS@7A8AS','https://www.netflix.com/search?q=the%20median&jbv=80996532','USA','Resident Evil','18+','2022-07-14 00:00:00',2022,'Years after viral outbreak caused a global apocalypse, Jade Wesker vows to bring down those responsible while fighting to survive against the Infected.',_binary ''),('SOA@SS225','https://www.netflix.com/browse/genre/34399?jbv=81427481','China','The Batman','13+','2019-06-29 00:00:00',2022,'When humans destroy his forest habitat, a shape-shifting cat spirit sets out to reclaim what was lost as he searches for identity in a changing world.',_binary ''),('YAO@FF334','https://www.netflix.com/browse/genre/34399?jbv=81211593','Thailand','Dangerous Boys','13+','2014-12-25 00:00:00',2014,'A high school gang leader clashes with his longtime rival and must navigate his pride, a broken home, feelings for a girl and a shot at rock band glory.',_binary '');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `Director` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Director`),
  KEY `FK_Director_ContentID` (`ContentID`),
  CONSTRAINT `FK_Director_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES ('Jeff Rake','ACT@456SS'),('Tatsuya Endo','AD@15FO88'),('Yoo In-shik','AKD@58F21'),('The Duffer Brothers','AKD@621S8'),('Edward Berger','KOE@H54BI'),('Álex Pina','KOP@548DD'),('Otto Bathurst','OIF@548SD'),('Joe Mantello','OIF@577SD'),('Mtjj Mutou','SOA@SS225'),('Poj Arnon','YAO@FF334');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dublang`
--

DROP TABLE IF EXISTS `dublang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dublang` (
  `Dublang` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Dublang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dublang`
--

LOCK TABLES `dublang` WRITE;
/*!40000 ALTER TABLE `dublang` DISABLE KEYS */;
INSERT INTO `dublang` VALUES ('Arabic'),('Bengali'),('English'),('Hindi'),('Japanese'),('Mandarin'),('Portuguese'),('Russian'),('Spanish'),('Vietnamese');
/*!40000 ALTER TABLE `dublang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epinfo`
--

DROP TABLE IF EXISTS `epinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epinfo` (
  `ID` int NOT NULL,
  `VideoURL` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `VideoLength` varchar(14) COLLATE utf8mb3_unicode_ci NOT NULL,
  `EPStatus` bit(1) NOT NULL,
  `EPDownloaded` bit(1) NOT NULL,
  `Title` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Season` int DEFAULT NULL,
  `Collection` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EPInfo_Collection` (`Collection`),
  CONSTRAINT `FK_EPInfo_Collection` FOREIGN KEY (`Collection`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epinfo`
--

LOCK TABLES `epinfo` WRITE;
/*!40000 ALTER TABLE `epinfo` DISABLE KEYS */;
INSERT INTO `epinfo` VALUES (1,'https://www.netflix.com/watch/81511413?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC_p_1668155996837%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Operation Strix','Tasked with getting close to a high-ranking politician in a neighboring country, an elite spy adopts a young girl to strengthen his cover.',1,'AD@15FO88'),(2,'https://www.netflix.com/watch/81511414?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Secure a Wife','Needing someone to act as Anyas mother for an interview at Eden College, Loid searches for a wife. He meets a beautiful young lady in a boutique.',1,'AD@15FO88'),(3,'https://www.netflix.com/watch/81511415?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Prepare for the Entrance Exam','After Yor moves into the Forger house, Loid takes her and Anya on an outing so they can all learn how to conduct themselves as an upper-class family.',1,'AD@15FO88'),(4,'https://www.netflix.com/watch/81511416?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','An Interview at a Prestigious School','As Loid and his family arrive at Eden College for Anyas interview, the exacting housemaster Henderson observes and judges their behavior from afar.',1,'AD@15FO88'),(5,'https://www.netflix.com/watch/81511417?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Pass or Fail?','Feeling dejected after viewing the results of the entrance exam, Loid and his family run into Henderson, who gives them some encouraging information.',1,'AD@15FO88'),(6,'https://www.netflix.com/watch/81511418?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','The Friendship Scheme','Loid visits a safe house for a briefing with his handler. After an excited Anya receives her school uniform, some ruffians set their sights on her.',1,'AD@15FO88'),(7,'https://www.netflix.com/watch/81511419?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Target: The Second Son','Anya tries to work up the courage to apologize to Damian for hitting him. A worried Loid infiltrates Eden College to encourage her from the shadows.',1,'AD@15FO88'),(8,'https://www.netflix.com/watch/81511420?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','The Counter-Secret Police Cover Operation','Yors brother secretly works for the State Security Service, an organization that hunts spies and monitors citizens. One day, he visits the Forgers.',1,'AD@15FO88'),(9,'https://www.netflix.com/watch/81511421?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','Show Off How in Love You Are','Yor gives herself some liquid courage before attempting to fulfill Yuris request. The next morning, Loid secretly places a listening device on her.',1,'AD@15FO88'),(10,'https://www.netflix.com/watch/81511422?trackId=14170289&tctx=2%2C0%2C3bd4f607-72fd-4f56-921f-8495f29dc1a2-32678216%2CNES_BC10D938AF2DF9CFA93713A4FA0FFC-994911DC4F528C-9544D3D2B9_p_1668155996837%2C%2C%2C%2C%2C81511410','24m',_binary '',_binary '\0','The Great Dodgeball Plan','After Anya hears a rumor that students who excel in gym class can earn a Stella, she trains with Yor in preparation for a dodgeball competition.',1,'AD@15FO88');
/*!40000 ALTER TABLE `epinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `Genres` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Genres`),
  KEY `FK_Genres_ContentID` (`ContentID`),
  CONSTRAINT `FK_Genres_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES ('Drama Anime','AD@15FO88'),('Japanese','AD@15FO88'),('TV Shows Based on Manga','AD@15FO88'),('Courtroom TV Shows','AKD@58F21'),('Korean','AKD@58F21'),('Social Issue TV Dramas','AKD@58F21'),('British','OIF@548SD'),('Crime TV Shows','OIF@548SD'),('LGBTQ Movies','OIF@548SD'),('Period Pieces','OIF@548SD');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `Keyword` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Keyword`),
  KEY `FK_Keyword_ContentID` (`ContentID`),
  CONSTRAINT `FK_Keyword_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES ('anya','AD@15FO88'),('family','AD@15FO88'),('family anime','AD@15FO88'),('forger','AD@15FO88'),('loid','AD@15FO88'),('operating','AD@15FO88'),('spy','AD@15FO88'),('telepathy','AD@15FO88'),('Warmth','AD@15FO88'),('yor','AD@15FO88');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Sequel` int DEFAULT NULL,
  KEY `FK_Movies_ContentID` (`ContentID`),
  CONSTRAINT `FK_Movies_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES ('GAL@LA5GD',2),('JAJ@NOV11',1),('BB@ILUQ12',1),('CSV@AAD55',2),('OUT@888WQ',1),('ACC@4L5B2',2),('IQE@OPA35',2),('KOE@H54BI',1),('YAO@FF334',1),('SOA@SS225',2);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newarrival`
--

DROP TABLE IF EXISTS `newarrival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newarrival` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LatestUpdate` datetime DEFAULT NULL,
  KEY `FK_NewArrival_ContentID` (`ContentID`),
  CONSTRAINT `FK_NewArrival_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newarrival`
--

LOCK TABLES `newarrival` WRITE;
/*!40000 ALTER TABLE `newarrival` DISABLE KEYS */;
INSERT INTO `newarrival` VALUES ('AD@15FO88','2022-11-05 00:00:00'),('AKD@58F21','2022-10-13 00:00:00'),('OIF@548SD','2022-05-13 00:00:00'),('OIF@577SD','2022-11-02 00:00:00'),('AKD@621S8','2022-07-01 00:00:00'),('KOP@548DD','2021-12-03 00:00:00'),('ACT@456SS','2022-11-04 00:00:00'),('KOE@H54BI','2022-09-29 00:00:00'),('YAO@FF334','2021-10-22 00:00:00'),('SOA@SS225','2022-03-03 00:00:00');
/*!40000 ALTER TABLE `newarrival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `No` int NOT NULL,
  `FName` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LName` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1000709,'Odysseus','Coke'),(1073405,'Misaki','Ayers'),(1105260,'Yelena','Penn'),(1126850,'Ildi','Németh'),(1129374,'Ruth','Moore'),(1228509,'Vishnu','Maguire'),(1367350,'Mike','Smith'),(1367357,'Anthony','Hofmeister'),(1548242,'Gerard','Way'),(1861704,'Ada','Campbell'),(2514879,'Young','Woo'),(2863605,'Neilos','Abrahams'),(2891001,'Dorota','Waterman'),(2961855,'Marie','Brennan'),(4576509,'Akua','Abeln'),(4739674,'Bogdan','Costantini'),(5258460,'Thomas','Shelby'),(5417895,'Stacey','Ryan'),(6047345,'Adam','Brown'),(6374426,'Pravin','Romijnsen'),(6960673,'Mandawuy','Tse'),(7061658,'Jovan','Matsubara'),(7179323,'Madhukar','Houston'),(8293521,'Grosvenor','Naaji'),(8341842,'Remus','Honeycutt'),(8445297,'Elon','Musk'),(8880203,'Hariwald','Lachapelle'),(8945457,'Tyler','Delaney'),(8993393,'Roelof','Moretti'),(9237241,'Jonathan','Doe');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problemtype`
--

DROP TABLE IF EXISTS `problemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problemtype` (
  `ProblemType` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `reportID` bigint NOT NULL,
  PRIMARY KEY (`reportID`),
  CONSTRAINT `FK_ProblemType_ReportID` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problemtype`
--

LOCK TABLES `problemtype` WRITE;
/*!40000 ALTER TABLE `problemtype` DISABLE KEYS */;
INSERT INTO `problemtype` VALUES ('Order',1002549878),('Volume Level',1234567890),('Crash',4785125414),('Volume Level',5005874651),('Crash',5487962548),('Order',5487965213),('Translation Error',5698632104),('Buffering',5874136598),('Translation Error',5874963201),('Crash',8457962333);
/*!40000 ALTER TABLE `problemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranks` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  KEY `FK_Ranks_ContentID` (`ContentID`),
  KEY `FK_Ranks_UserID` (`UserID`),
  CONSTRAINT `FK_Ranks_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`),
  CONSTRAINT `FK_Ranks_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
INSERT INTO `ranks` VALUES ('AD@15FO88',36915248),('AKD@58F21',74185296),('OIF@548SD',48579625),('OIF@577SD',79461357),('AKD@621S8',96136516),('KOP@548DD',79548654),('ACT@456SS',34854761),('KOE@H54BI',12312312),('YAO@FF334',78927486),('SOA@SS225',12345678),('DAB@112AD',54089841),('FAT@HAI78',78973866),('KAK@445DB',90686089),('OUY@ASD12',58662757),('MNM@75TYT',66725966),('MNN@49TYT',29913417),('GAL@LA5GD',85579665),('JAJ@NOV11',58410496),('BB@ILUQ12',15802550),('CSV@AAD55',68775762),('OUT@888WQ',56466916),('ACC@4L5B2',44947596),('IQE@OPA35',75072060),('KJJ@936SX',41131929),('QES@7674B',88463260),('PP@5A33DQ',55839904),('JAB@ZD76S',33266262),('SAS@7A8AS',51815921),('DIY@61A4K',97769483),('POP@V33A5',42801442);
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  KEY `FK_Recommend_ContentID` (`ContentID`),
  KEY `FK_Recommend_UserID` (`UserID`),
  CONSTRAINT `FK_Recommend_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`),
  CONSTRAINT `FK_Recommend_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES ('AD@15FO88',36915248),('AKD@58F21',74185296),('OIF@548SD',48579625),('OIF@577SD',79461357),('AKD@621S8',96136516),('KOP@548DD',79548654),('ACT@456SS',34854761),('KOE@H54BI',12312312),('YAO@FF334',78927486),('SOA@SS225',12345678),('DAB@112AD',54089841),('FAT@HAI78',78973866),('KAK@445DB',90686089),('OUY@ASD12',58662757),('MNM@75TYT',66725966),('MNN@49TYT',29913417),('GAL@LA5GD',85579665),('JAJ@NOV11',58410496),('BB@ILUQ12',15802550),('CSV@AAD55',68775762),('OUT@888WQ',56466916),('ACC@4L5B2',44947596),('IQE@OPA35',75072060),('KJJ@936SX',41131929),('QES@7674B',88463260),('PP@5A33DQ',55839904),('JAB@ZD76S',33266262),('SAS@7A8AS',51815921),('DIY@61A4K',97769483),('POP@V33A5',42801442);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportID` bigint NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  PRIMARY KEY (`reportID`),
  KEY `FK_Report_ContentID` (`ContentID`),
  KEY `FK_Report_UserID` (`UserID`),
  CONSTRAINT `FK_Report_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`),
  CONSTRAINT `FK_Report_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1002549878,'SOA@SS225',12345678),(1234567890,'AD@15FO88',36915248),(1347052609,'OUT@888WQ',56466916),(1533962400,'BB@ILUQ12',15802550),(2357504075,'CSV@AAD55',68775762),(2576830767,'FAT@HAI78',78973866),(2673034339,'QES@7674B',88463260),(2762159952,'MNM@75TYT',66725966),(2877256611,'JAB@ZD76S',33266262),(3231900785,'KJJ@936SX',41131929),(3743616967,'JAJ@NOV11',58410496),(3818244103,'MNN@49TYT',29913417),(4261874482,'IQE@OPA35',75072060),(4379995058,'ACC@4L5B2',44947596),(4403733900,'KAK@445DB',90686089),(4785125414,'OIF@577SD',79461357),(5005874651,'YAO@FF334',78927486),(5487962548,'ACT@456SS',34854761),(5487965213,'AKD@58F21',74185296),(5698632104,'AKD@621S8',96136516),(5874136598,'OIF@548SD',48579625),(5874963201,'KOP@548DD',79548654),(6597919770,'DIY@61A4K',97769483),(6773869983,'DAB@112AD',54089841),(7844506944,'GAL@LA5GD',85579665),(8007571056,'SAS@7A8AS',51815921),(8457962333,'KOE@H54BI',12312312),(8863766680,'PP@5A33DQ',55839904),(9570892914,'OUY@ASD12',58662757),(9642061174,'POP@V33A5',42801442);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporttype`
--

DROP TABLE IF EXISTS `reporttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporttype` (
  `ReportType` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `reportTID` bigint NOT NULL,
  PRIMARY KEY (`reportTID`),
  CONSTRAINT `FK_Reportype_ReportID` FOREIGN KEY (`reportTID`) REFERENCES `report` (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporttype`
--

LOCK TABLES `reporttype` WRITE;
/*!40000 ALTER TABLE `reporttype` DISABLE KEYS */;
INSERT INTO `reporttype` VALUES ('Content',1002549878),('Content',1234567890),('Content',1347052609),('Content',1533962400),('Content',2357504075),('Content',2576830767),('Content',2673034339),('Content',2762159952),('Technical',2877256611),('Technical',3231900785),('Technical',3743616967),('Content',3818244103),('Technical',4261874482),('Content',4379995058),('Technical',4403733900),('Technical',4785125414),('Content',5005874651),('Technical',5487962548),('Content',5487965213),('Content',5698632104),('Technical',5874136598),('Content',5874963201),('Content',6597919770),('Content',6773869983),('Technical',7844506944),('Technical',8007571056),('Technical',8457962333),('Content',8863766680),('Technical',9570892914),('Content',9642061174);
/*!40000 ALTER TABLE `reporttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  KEY `FK_Search_ContentID` (`ContentID`),
  KEY `FK_Search_UserID` (`UserID`),
  CONSTRAINT `FK_Search_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`),
  CONSTRAINT `FK_Search_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES ('AD@15FO88',36915248),('AKD@58F21',74185296),('OIF@548SD',48579625),('OIF@577SD',79461357),('AKD@621S8',96136516),('KOP@548DD',79548654),('ACT@456SS',34854761),('KOE@H54BI',12312312),('YAO@FF334',78927486),('SOA@SS225',12345678),('DAB@112AD',54089841),('FAT@HAI78',78973866),('KAK@445DB',90686089),('OUY@ASD12',58662757),('MNM@75TYT',66725966),('MNN@49TYT',29913417),('GAL@LA5GD',85579665),('JAJ@NOV11',58410496),('BB@ILUQ12',15802550),('CSV@AAD55',68775762),('OUT@888WQ',56466916),('ACC@4L5B2',44947596),('IQE@OPA35',75072060),('KJJ@936SX',41131929),('QES@7674B',88463260),('PP@5A33DQ',55839904),('JAB@ZD76S',33266262),('SAS@7A8AS',51815921),('DIY@61A4K',97769483),('POP@V33A5',42801442);
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subeditor`
--

DROP TABLE IF EXISTS `subeditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subeditor` (
  `SubEditor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`SubEditor`),
  KEY `FK_SubEditor_ContentID` (`ContentID`),
  CONSTRAINT `FK_SubEditor_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subeditor`
--

LOCK TABLES `subeditor` WRITE;
/*!40000 ALTER TABLE `subeditor` DISABLE KEYS */;
INSERT INTO `subeditor` VALUES ('Cole Taylor','ACT@456SS'),('Nana Onishi','AD@15FO88'),('Hyun-soo Cho','AKD@58F21'),('Zara Kyle','AKD@621S8'),('Cole Thomas','KOE@H54BI'),('Pedro White','KOP@548DD'),('Oscar Smith','OIF@548SD'),('Luis Lewis','OIF@577SD'),('Warren Owen','SOA@SS225'),('Sean Walker','YAO@FF334');
/*!40000 ALTER TABLE `subeditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sublang`
--

DROP TABLE IF EXISTS `sublang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sublang` (
  `Sublang` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Sublang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sublang`
--

LOCK TABLES `sublang` WRITE;
/*!40000 ALTER TABLE `sublang` DISABLE KEYS */;
INSERT INTO `sublang` VALUES ('Arabic'),('Bengali'),('English'),('Hindi'),('Japanese'),('Mandarin'),('Portuguese'),('Russian'),('Spanish'),('Vietnamese');
/*!40000 ALTER TABLE `sublang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_shows`
--

DROP TABLE IF EXISTS `tv_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_shows` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Episode` int DEFAULT NULL,
  KEY `FK_TVShows_ContentID` (`ContentID`),
  CONSTRAINT `FK_TVShows_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_shows`
--

LOCK TABLES `tv_shows` WRITE;
/*!40000 ALTER TABLE `tv_shows` DISABLE KEYS */;
INSERT INTO `tv_shows` VALUES ('AD@15FO88',18),('AKD@58F21',16),('OIF@548SD',36),('MNN@49TYT',12),('AKD@621S8',34),('KOP@548DD',48),('ACT@456SS',52),('KAK@445DB',30),('OUY@ASD12',12),('MNM@75TYT',16);
/*!40000 ALTER TABLE `tv_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PhoneNo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `FName` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MName` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LName` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `PicURL` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Country` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `DateOfBirth` date NOT NULL,
  `PaymentNo` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_User_PaymentNo` (`PaymentNo`),
  CONSTRAINT `FK_User_PaymentNo` FOREIGN KEY (`PaymentNo`) REFERENCES `payment` (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12312312,'abrown@gmail.com','1-123-789-1155','Adam','Marcus','Brown','Adam','https://netflix.profile.picture=01.com','7819 Garden Ln Justice, Illinois(IL), 60458','USA','1984-12-12',6047345),(12345678,'mikes@gmail.com','1-212-456-7890','Mike','Robert','Smith','Mike','https://netflix.profile.picture=01.com','2494 Moore Way La Vergne, Tennessee(TN), 37086','USA','1984-05-29',1367350),(15802550,'fred.fon@gmail.com','66-987-654-1251','Freddie',NULL,'Fontana','Fred','https://netflix.profile.picture=01.com','Via Firenze 82','Italy','1953-06-17',6374426),(29913417,'p.taylor@gmail.com','1-874-878-987','Peter',NULL,'Taylor','Peter','https://netflix.profile.picture=01.com','283 Rose Street','USA','1999-02-17',6960673),(33266262,'richardmorgan@gmail.com','1-333-351-5566','Richard',NULL,'Morgan','Rick','https://netflix.profile.picture=01.com','4147 Monroe Avenue','USA','1997-07-07',8293521),(34854761,'tylerdelaney@gmail.com','1-789-151-1652','Tyler',NULL,'Delaney','Ei_Ei','https://netflix.profile.picture=01.com','314 Hillview Dr Nazareth, Pennsylvania(PA), 18064','USA','2003-03-03',8945457),(36915248,'elonm@gmail.com','1-412-456-6591','Elon','Reeve','Musk','Elon','https://netflix.profile.picture=01.com','412 Rr 2 Pearson, Georgia(GA), 31642','USA','1997-04-24',8445297),(41131929,'henrypeterson@gmail.com','1-123-321-9999','Henry',NULL,'Peterson','Henry','https://netflix.profile.picture=01.com','3826 Junior Avenue','USA','1966-10-10',8880203),(42801442,'sean.p@gmail.com','1-328-351-3214','Sean',NULL,'Parker','Sean_goi','https://netflix.profile.picture=01.com','1430 Timbercrest Road','USA','1997-07-07',2961855),(44947596,'collyhoover@gmail.com','1-123-321-1717','Colleen',NULL,'Hoover','Colly','https://netflix.profile.picture=01.com','4473 Golden Street','USA','1979-12-11',8341842),(48579625,'staceyryan@gmail.com','1-891-457-1478','Stacey',NULL,'Ryan','Stacey','https://netflix.profile.picture=01.com','99 Arcadia Rd Hope Valley, Rhode Island(RI), 02832','USA','1992-12-03',5417895),(51815921,'tyler.h@gmail.com','1-333-351-1212','Tyler',NULL,'Hoover','Tyler_Tylor','https://netflix.profile.picture=01.com','3701 Barnes Avenue','USA','1987-08-17',1105260),(54089841,'xjp@qq.com','86-194-123-1234','Jin','Ping','Xi','Jin Ping','https://netflix.profile.picture=01.com','174 Chang an Avenue, Xicheng District, Beijing','China','1953-06-15',1367357),(55839904,'harryabioye@gmail.com','1-123-321-1111','Harry',NULL,'Abioye','FlowerFul','https://netflix.profile.picture=01.com','4184 Lowes Alley','USA','1976-05-09',1129374),(56466916,'ethantan@gmail.com','66-9854-5254','Ethan','Jun Jie','Tan','Ethan','https://netflix.profile.picture=01.com','Blk 190 Bt Batok West Ave 6 ,13-33','Singapore','2000-04-28',7061658),(58410496,'brooks@gmail.com','1-925-732-958','Brook',NULL,'Tingtong','Brook','https://netflix.profile.picture=01.com','19/4 Gp 7 Highway Sai 345 Klong Koi Pak Kret','Thailand','1987-06-26',1126850),(58662757,'serg.s@gmail.com','1-555-988-954','Sergey','Ibrahimovic','Sidorov','Sergey','https://netflix.profile.picture=01.com','K.myagotina, bld. 111, appt. 14','Russia','1987-06-25',4576509),(66725966,'hansmartin@gmail.com','1-585-988-653','Hans',NULL,'Martin','Hans','://netflix.profile.picture=01.com','Bayreuther Strasse 80','Germany','1953-06-16',2863605),(68775762,'mjw@gmail.com','1-123-555-1717','Mary','Jane','Watson','MJ','https://netflix.profile.picture=01.com','2782 Romines Mill Road','USA','2003-03-14',1000709),(74185296,'gway@gmail.com','1-398-456-1234','Gerard','Arthur','Way','Gerard','https://netflix.profile.picture=03.com','3014 Vance Ave Texas City, Texas(TX), 77590','USA','1988-06-13',1548242),(75072060,'billgates@gmail.com','1-123-321-9797','William','Henry','Gates','Bill','https://netflix.profile.picture=01.com','1083 Denver Avenue','USA','1955-10-28',1073405),(78927486,'adacb@gmail.com','1-447-554-4457','Ada','Charlotte','Campbell','Ada','https://netflix.profile.picture=01.com','10 N 2nd St Woodsboro, Maryland(MD), 21798','USA','2002-04-20',1861704),(78973866,'marklemont@hotmail.com','1-521-895-854','Mark',NULL,'LeMont','Mark','https://netflix.profile.picture=01.com','81 Rue de Verdun','France','1999-02-16',1228509),(79461357,'tommyshelby@gmail.com','1-175-451-1478','Thomas',NULL,'Shelby','Tommy','https://netflix.profile.picture=02.com','1206 1st St SW Cedar Rapids, Iowa(IA), 52404','USA','1992-05-14',5258460),(79548654,'johndoe@gmail.com','1-348-451-7954','Jonathan','Damian','Doe','John','https://netflix.profile.picture=04.com','619 E Scenic St Apache Junction, Arizona(AZ), 85219','USA','2004-04-04',9237241),(85579665,'wmc@gmail.com','1-969-666-536','William',NULL,'McCrory','Willy','https://netflix.profile.picture=01.com','Mill st Baltinglass','Ireland','2000-03-18',7179323),(88463260,'andreas.c@gmail.com','89-254-8889','Andreas',NULL,'Cepelluti','Andy','https://netflix.profile.picture=01.com','Via Goffredo Mameli 83','Italy','1988-04-03',8993393),(90686089,'frankkow@gmail.com','1-623-987-654','Frank',NULL,'Kowalski','Frank','https://netflix.profile.picture=01.com','ul. Legnicka 136','Poland','2000-03-17',4739674),(96136516,'wyw@gmail.com','82-12-1234-1234','Young','Wei','Woo','Young_Woo','https://netflix.profile.picture=01.com','2105 Regency Dr Flower Mound, Texas(TX), 75028','USA','1992-04-23',2514879),(97769483,'ethanpark@gmail.com','1-111-351-1212','Seung','Won','Park','Ethan','https://netflix.profile.picture=01.com','1047 Cody Ridge Road','USA','1990-05-06',2891001);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinput`
--

DROP TABLE IF EXISTS `userinput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinput` (
  `UserInput` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `reportID` bigint NOT NULL,
  PRIMARY KEY (`reportID`),
  CONSTRAINT `FK_UserInput_ReportID` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinput`
--

LOCK TABLES `userinput` WRITE;
/*!40000 ALTER TABLE `userinput` DISABLE KEYS */;
INSERT INTO `userinput` VALUES ('Season 1 of Breaking Bad is swapped with Season 3',1002549878),('The volume of this episode is too loud, much louder than other episodes.',1234567890),('Every time I try to watch \"The Matrix\" my client crashes',4785125414),('I can barely hear the content I am watching even though its fully turned up',5005874651),('My Netflix app crashes when I open it.',5487962548),('Episodes 5 and 6 of Spy x Family Season 1 are in incorrect order.',5487965213),('The French dub of \"Peaky Blinders\" occasionally uses Spanish instead',5698632104),('The video doesnt play, it keeps on spinning...',5874136598),('The English subtitles for Spy x Family sometimes contain what appears to be Chinese characters',5874963201),('My Netflix app freezes when I try to watch content',8457962333);
/*!40000 ALTER TABLE `userinput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voiceactor`
--

DROP TABLE IF EXISTS `voiceactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voiceactor` (
  `VoiceActor` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`VoiceActor`),
  KEY `FK_VoiceActor_ContentID` (`ContentID`),
  CONSTRAINT `FK_VoiceActor_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voiceactor`
--

LOCK TABLES `voiceactor` WRITE;
/*!40000 ALTER TABLE `voiceactor` DISABLE KEYS */;
INSERT INTO `voiceactor` VALUES ('Athena Karkanis','ACT@456SS'),('Josh Dallas','ACT@456SS'),('Melissa Roxburgh','ACT@456SS'),('Atsumi Tanezaki','AD@15FO88'),('Saori Hayami','AD@15FO88'),('Takuya Eguchi','AD@15FO88'),('Brick Patrick','AKD@58F21'),('Ezra Weisz','AKD@58F21'),('Brown','AKD@621S8'),('David Harbour','AKD@621S8'),('Millie Bobby','AKD@621S8'),('Winona Ryder','AKD@621S8'),('Aaron Hilmer','KOE@H54BI'),('Albrecht Schuch','KOE@H54BI'),('Felix Kammerer','KOE@H54BI'),('Álvaro Morte','KOP@548DD'),('Itziar Ituño','KOP@548DD'),('Pedro Alonso','KOP@548DD'),('Úrsula Corberó','KOP@548DD'),('Cillian Murphy','OIF@548SD'),('Helen McCrory','OIF@548SD'),('Sam Neill','OIF@548SD'),('Jum Parsons','OIF@577SD'),('Matt Bomer','OIF@577SD'),('Zachary Quinto','OIF@577SD'),('Hao Xianghai','SOA@SS225'),('Liu Mingyue','SOA@SS225'),('Wang Youji','SOA@SS225'),('Bhuripat Vejvongsatechavat','YAO@FF334'),('Kittipat Samarntragulchai','YAO@FF334'),('Kunatip Pinpradub','YAO@FF334');
/*!40000 ALTER TABLE `voiceactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watch`
--

DROP TABLE IF EXISTS `watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch` (
  `ContentID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  KEY `FK_Watch_ContentID` (`ContentID`),
  KEY `FK_Watch_UserID` (`UserID`),
  CONSTRAINT `FK_Watch_ContentID` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ID`),
  CONSTRAINT `FK_Watch_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch`
--

LOCK TABLES `watch` WRITE;
/*!40000 ALTER TABLE `watch` DISABLE KEYS */;
INSERT INTO `watch` VALUES ('AD@15FO88',36915248),('AKD@58F21',74185296),('OIF@548SD',48579625),('OIF@577SD',79461357),('AKD@621S8',96136516),('KOP@548DD',79548654),('ACT@456SS',34854761),('KOE@H54BI',12312312),('YAO@FF334',78927486),('SOA@SS225',12345678),('AD@15FO88',12345678),('AKD@58F21',78927486),('OIF@548SD',12312312),('OIF@577SD',34854761),('AKD@621S8',79548654),('KOP@548DD',96136516),('ACT@456SS',79461357),('KOE@H54BI',48579625),('YAO@FF334',74185296),('SOA@SS225',36915248),('AD@15FO88',48579625),('AKD@58F21',36915248),('OIF@548SD',74185296),('OIF@577SD',79461357),('AKD@621S8',96136516),('KOP@548DD',79548654),('ACT@456SS',34854761),('KOE@H54BI',12312312),('YAO@FF334',78927486),('SOA@SS225',12345678);
/*!40000 ALTER TABLE `watch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-30 17:28:23
