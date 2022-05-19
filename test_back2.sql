-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: test.crwx1himfqyb.ap-northeast-2.rds.amazonaws.com    Database: test
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `num` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` mediumtext,
  `id` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'12','122345',NULL,'2022-05-07',NULL,0),(4,'aiaksjdjdjsjsksskzkskejejsjejejejk','',NULL,'2022-05-07',NULL,0),(5,'asdd','123',NULL,'2022-05-07',NULL,1),(6,'wua','12733','','2022-05-07',NULL,0),(7,'qysya','12263','aaa','2022-05-07',NULL,0),(8,'27272','171717','aaa','2022-05-07',NULL,0),(9,'22w','22','aaa','2022-05-08',NULL,3),(10,'asdasd','1233','aaa','2022-05-09',NULL,3),(13,'ajajsjdjdjdkdjdjdjdjddorididjdjdjqqq','123','bbb','2022-05-12',NULL,18),(15,'fjfjd','dhdh','bbb','2022-05-15','19:48:19',30),(16,'wiwiw','ajsjsjdjd','ccc','2022-05-16','16:49:11',97),(17,'uuu','uwuw','ccc','2022-05-16','16:58:11',0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_1`
--

DROP TABLE IF EXISTS `board_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_1` (
  `num` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_1`
--

LOCK TABLES `board_1` WRITE;
/*!40000 ALTER TABLE `board_1` DISABLE KEYS */;
INSERT INTO `board_1` VALUES (2,'sisjdkrk','aaa','2022-05-15',NULL),(3,'ssss','aaa','2022-05-15',NULL),(4,'aiaksjdjdjsjsksskzkskejej sjejejejkskskskdkdkdkq','aaa','2022-05-15',NULL),(5,'sjsjs','bbb','2022-05-15','20:00:33');
/*!40000 ALTER TABLE `board_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hit`
--

DROP TABLE IF EXISTS `hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hit` (
  `num` int NOT NULL,
  `id` varchar(20) NOT NULL,
  `hit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num`,`id`),
  CONSTRAINT `FK_hit_board` FOREIGN KEY (`num`) REFERENCES `board` (`num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hit`
--

LOCK TABLES `hit` WRITE;
/*!40000 ALTER TABLE `hit` DISABLE KEYS */;
INSERT INTO `hit` VALUES (5,'ccc','1'),(7,'bbb','1'),(8,'bbb','1'),(8,'ccc','1'),(9,'','1'),(9,'bbb','1'),(9,'ccc','1'),(10,'','1'),(10,'bbb','1'),(10,'ccc','1'),(13,'','1'),(13,'aaa','1'),(13,'bbb','1'),(13,'ccc','1');
/*!40000 ALTER TABLE `hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memo` (
  `id` varchar(20) NOT NULL,
  `restaurant` varchar(50) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `memo` mediumtext,
  PRIMARY KEY (`id`,`restaurant`,`menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memo`
--

LOCK TABLES `memo` WRITE;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
INSERT INTO `memo` VALUES ('aaa','','','4456');
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `restaurant` varchar(50) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`restaurant`,`menu`),
  CONSTRAINT `FK_menu_restaurant` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`restaurant`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('rest1','1','1000','img/2Q.png'),('rest1','2','2000','img/2Q.png'),('rest1','3','1000','img/2Q.png'),('rest1','4','6000','img/2Q.png'),('rest1','5','6000','img/2Q.png'),('rest1','6','3000','img/2Q.png'),('rest1','7','3000','img/2Q.png'),('겐코','게살크림코로케','6000',NULL),('겐코','규동L','10500',NULL),('겐코','규동M','8500',NULL),('겐코','대왕새우튀김','6000',NULL),('겐코','대창L','14000',NULL),('겐코','대창덮밥M','10000',NULL),('겐코','돈코츠라멘L','9500',NULL),('겐코','돈코츠라멘M','8500',NULL),('겐코','미소라멘L','9500',NULL),('겐코','미소라멘M','8500',NULL),('겐코','부타동L','8500',NULL),('겐코','부타동M','7500',NULL),('겐코','새우장동L','12000',NULL),('겐코','새우장동M','8500',NULL),('겐코','소유라멘L','9500',NULL),('겐코','소유라멘M','8500',NULL),('겐코','스테이크L','14000',NULL),('겐코','스테이크M','9500',NULL),('겐코','시오버터라멘L','9500',NULL),('겐코','시오버터라멘M','8500',NULL),('겐코','연어덮밥L','14000',NULL),('겐코','연어덮밥M','9000',NULL),('겐코','연어사시미','12000',NULL),('겐코','연어장동L','14500',NULL),('겐코','연어장동M','9500',NULL),('겐코','육회동L','12000',NULL),('겐코','육회동M','7500',NULL),('겐코','차슈동L','8500',NULL),('겐코','차슈동M','7500',NULL),('겐코','차슈라멘L','10000',NULL),('겐코','차슈라멘M','9000',NULL),('겐코','치킨가라아게','6000',NULL),('글고만식당','닭볶음탕','25000',NULL),('글고만식당','돼지김치찜','20000',NULL),('글고만식당','물총조개탕','17000',NULL),('글고만식당','연어사시미','25000',NULL),('글고만식당','오징어볶음','21000',NULL),('글고만식당','육사시미','18000',NULL),('글고만식당','이탈리안돈까스','18000',NULL),('글고만식당','크림파스타','18000',NULL),('글고만식당','후라이드치킨','17000',NULL),('금성반점','가지덮밥','7000',NULL),('금성반점','고급양갈비','24000',NULL),('금성반점','대하','13000',NULL),('금성반점','마파두부덮밥','7000',NULL),('금성반점','새우볶음밥','6000',NULL),('금성반점','생양꼬치','13000',NULL),('금성반점','양갈비살','15000',NULL),('금성반점','양고기덮밥','10000',NULL),('금성반점','양고기마라탕','10000',NULL),('금성반점','양꼬치','13000',NULL),('금성반점','양목심','20000',NULL),('금성반점','어향육사덮밥','8000',NULL),('금성반점','옥수수면','7000',NULL),('금성반점','잡채덮밥','7000',NULL),('도모다찌','가이바시라 버터구이','15000',NULL),('도모다찌','계란찜','5000',NULL),('도모다찌','꼬치구이','10000',NULL),('도모다찌','노가리구이','10000',NULL),('도모다찌','단호박 해물찜','16000',NULL),('도모다찌','닭날개 구이','7000',NULL),('도모다찌','돼지고기야채 볶음','9000',NULL),('도모다찌','마구로야끼 샐러드','13000',NULL),('도모다찌','메로 소금구이','19000',NULL),('도모다찌','모단야끼','15000',NULL),('도모다찌','모듬생선구이','12000',NULL),('도모다찌','미친불닭','12000',NULL),('도모다찌','버섯구이','10000',NULL),('도모다찌','새우구이','15000',NULL),('도모다찌','소고기야채볶음','9000',NULL),('도모다찌','소시지 구이','12000',NULL),('도모다찌','스테이크','15000',NULL),('도모다찌','시사모 구이','9000',NULL),('도모다찌','알탕','12000',NULL),('도모다찌','야끼메시','5000',NULL),('도모다찌','야끼우동','5000',NULL),('도모다찌','연어 스테이크','15000',NULL),('도모다찌','연어훈제 샐러드','15000',NULL),('도모다찌','오뎅탕','6000',NULL),('도모다찌','오코노미야키','15000',NULL),('도모다찌','우나기야끼','22000',NULL),('도모다찌','우동','5000',NULL),('도모다찌','유동 골뱅이','12000',NULL),('도모다찌','은행','10000',NULL),('도모다찌','조개탕','9000',NULL),('도모다찌','참치회','9000',NULL),('도모다찌','치즈계란말이','5000',NULL),('도모다찌','타코 와사비','10000',NULL),('도모다찌','한치구이','12000',NULL),('돈돈이네','김치찜(대)','30000',NULL),('돈돈이네','김치찜(중)','25000',NULL),('돈돈이네','낙지볶음','30000',NULL),('돈돈이네','냉면','7000',NULL),('돈돈이네','돼지불백','8000',NULL),('돈돈이네','돼지불백(특)','12000',NULL),('돈돈이네','등갈비찜(대)','35000',NULL),('돈돈이네','등갈비찜(중)','25000',NULL),('돈돈이네','부대찌개','8000',NULL),('돈돈이네','수육(대)','28000',NULL),('돈돈이네','수육(중)','23000',NULL),('돈돈이네','열무국수','7000',NULL),('돈돈이네','쭈삼볶음(대)','30000',NULL),('돈돈이네','쭈삼볶음(중)','25000',NULL),('돈돈이네','해물전','13000',NULL),('민속식당','가정식백반','7000',NULL),('민속식당','간장제육볶음+순두부','18000',NULL),('민속식당','갈치조림','20000',NULL),('민속식당','김치주물럭+순두부','18000',NULL),('민속식당','김치찌개','7000',NULL),('민속식당','꽁치찌개','14000',NULL),('민속식당','닭볶음탕','30000',NULL),('민속식당','동태찌개','20000',NULL),('민속식당','된장찌개','7000',NULL),('민속식당','삼겹살','12000',NULL),('민속식당','순두부','7000',NULL),('민속식당','오삼볶음+순두부','20000',NULL),('민속식당','오징어볶음+순두부','20000',NULL),('민속식당','제육볶음+순두부','18000',NULL),('민속식당','청국장','7000',NULL),('본도시락','갈릭 새우 샐러드','10900',NULL),('본도시락','곤드레밥불고기\n 한상','13400',NULL),('본도시락','광양식바싹불고기\n 반상','8200',NULL),('본도시락','궁중 전복소갈비찜\n 한정식','28900',NULL),('본도시락','궁중떡갈비 반상','7400',NULL),('본도시락','낙지버섯불고기\n 한상','16400',NULL),('본도시락','닭강정','7500',NULL),('본도시락','로제떡볶이','6400',NULL),('본도시락','리코타 치즈 샐러드','9900',NULL),('본도시락','매콤오징어볶음 반상','9600',NULL),('본도시락','묵은지두부찌개','8100',NULL),('본도시락','바싹 불고기 샐러드','9500',NULL),('본도시락','바싹불고기닭구이\n 한상','11400',NULL),('본도시락','바싹불고기오징어\n 한상','12400',NULL),('본도시락','바싹불고기제육\n 한상','10400',NULL),('본도시락','버섯소불고기 반상','8900',NULL),('본도시락','베지 샐러드','8900',NULL),('본도시락','봄냉이된장\n제육덮밥','5900',NULL),('본도시락','봄냉이우삼겹\n된장찌개','8900',NULL),('본도시락','부추제육볶음 반상','8400',NULL),('본도시락','수비드 닭가슴살\n 샐러드','10400',NULL),('본도시락','수작돈까스 반상','8600',NULL),('본도시락','스팸 김치볶음밥','5800',NULL),('본도시락','얼큰소고기\n가마솥국밥','8400',NULL),('본도시락','여수꼬막불고기\n 반상','9400',NULL),('본도시락','오리구이 샐러드','11000',NULL),('본도시락','우렁강된장삼겹쌈밥\n 한상','14900',NULL),('본도시락','일품 낙지불고기\n 한정식','20900',NULL),('본도시락','잘차린 생일상','22000',NULL),('본도시락','주꾸미꽈리닭\n 한상','14400',NULL),('본도시락','주꾸미볶음삼겹살\n 한상','15900',NULL),('본도시락','춘천식닭구이 반상','8400',NULL),('본도시락','치킨마요','5200',NULL),('본도시락','특선LA갈비구이\n 한정식','24900',NULL),('본도시락','핫윙콤보','8200',NULL),('소미랑','고추전','15000',NULL),('소미랑','굴전','16000',NULL),('소미랑','김치전','10000',NULL),('소미랑','깻잎전','18000',NULL),('소미랑','녹두전','15000',NULL),('소미랑','동태전','15000',NULL),('소미랑','두부김치','10000',NULL),('소미랑','메밀전병','13000',NULL),('소미랑','모듬전','20000',NULL),('소미랑','부추전','11000',NULL),('소미랑','완자전','15000',NULL),('소미랑','잔치국수','4000',NULL),('소미랑','해물김치전','12000',NULL),('소미랑','해물파전','18000',NULL),('소미랑','호박전','12000',NULL),('신의한컵','Noodle','4200',NULL),('신의한컵','Rice','4200',NULL),('신의한컵','김치고기마요','4200',NULL),('신의한컵','만두국','2800',NULL),('신의한컵','불고기마요','4200',NULL),('신의한컵','불고기알밥','4800',NULL),('신의한컵','불닭마요','4200',NULL),('신의한컵','비빔만두','3800',NULL),('신의한컵','새싹김치','4400',NULL),('신의한컵','새싹불고기','4400',NULL),('신의한컵','새싹불닭','4400',NULL),('신의한컵','새싹제육','4400',NULL),('신의한컵','제육알밥','4800',NULL),('신의한컵','참치김치/참치마요','4200',NULL),('신의한컵','참치알밥','4800',NULL),('싱싱회천국','감성돔','50000',NULL),('싱싱회천국','개불','15000',NULL),('싱싱회천국','광어(소)','15000',NULL),('싱싱회천국','광어(중)','26000',NULL),('싱싱회천국','광어+도다리','28000',NULL),('싱싱회천국','광어+숭어','26000',NULL),('싱싱회천국','광어+연어','28000',NULL),('싱싱회천국','광어+우럭','26000',NULL),('싱싱회천국','광어+우럭+도다리','34000',NULL),('싱싱회천국','광어+우럭+숭어','34000',NULL),('싱싱회천국','광어+우럭+연어','34000',NULL),('싱싱회천국','광어+줄돔','30000',NULL),('싱싱회천국','농어','49000',NULL),('싱싱회천국','도다리','35000',NULL),('싱싱회천국','도미','49000',NULL),('싱싱회천국','매운탕','5000',NULL),('싱싱회천국','멍게','10000',NULL),('싱싱회천국','반반튀김','10000',NULL),('싱싱회천국','방어','30000',NULL),('싱싱회천국','산낙지','18000',NULL),('싱싱회천국','삼식이탕','18000',NULL),('싱싱회천국','새우튀김','9000',NULL),('싱싱회천국','생우럭탕','16000',NULL),('싱싱회천국','소라','15000',NULL),('싱싱회천국','숭어(소)','15000',NULL),('싱싱회천국','숭어(중)','26000',NULL),('싱싱회천국','숭어+도다리','28000',NULL),('싱싱회천국','알탕','12000',NULL),('싱싱회천국','연어(대)','35000',NULL),('싱싱회천국','연어(소)','15000',NULL),('싱싱회천국','연어(중)','25000',NULL),('싱싱회천국','오징어튀김','8000',NULL),('싱싱회천국','우럭(대)','38000',NULL),('싱싱회천국','우럭+도다리','28000',NULL),('싱싱회천국','우럭+숭어','26000',NULL),('싱싱회천국','우럭+연어','28000',NULL),('싱싱회천국','우럭+줄돔','30000',NULL),('싱싱회천국','줄돔(대)','50000',NULL),('싱싱회천국','줄돔(중)','35000',NULL),('싱싱회천국','해삼','15000',NULL),('아토','간장새우초밥','18000',NULL),('아토','돈까스+치킨가라아\n게+새우튀김+초밥','12000',NULL),('아토','모듬초밥','17000',NULL),('아토','모듬회(대)','50000',NULL),('아토','모듬회(중)','35000',NULL),('아토','모듬회(특대)','65000',NULL),('아토','모듬회(혼술용)','18000',NULL),('아토','민물장어초밥','18000',NULL),('아토','새우깡','7000',NULL),('아토','생새우초밥','13000',NULL),('아토','아토특모듬초밥','25000',NULL),('아토','연어덮밥','17000',NULL),('아토','연어덮밥L','22000',NULL),('아토','연어초밥','18000',NULL),('아토','연어회(대)','50000',NULL),('아토','연어회(중)','35000',NULL),('아토','연어회(특대)','65000',NULL),('아토','연어회(혼술용)','18000',NULL),('아토','오꼬노미야끼','15000',NULL),('아토','오꼬노미야끼\n(고기, 치즈토핑추가)','17000',NULL),('아토','와규스테이크초밥','18000',NULL),('아토','왕새우튀김','12000',NULL),('아토','쯔라시덮밥','12000',NULL),('아토','쯔라시덮밥L','15000',NULL),('아토','참치초밥','16000',NULL),('아토','참치회(대)','48000',NULL),('아토','참치회(중)','33000',NULL),('아토','참치회(특대)','62000',NULL),('아토','참치회(혼술용)','17000',NULL),('아토','초새우초밥','12000',NULL),('아토','치즈돈까스+초밥','12000',NULL),('아토','타코와사비','8000',NULL),('아토','활어초밥','17000',NULL),('아토','활어회(대)','50000',NULL),('아토','활어회(중)','35000',NULL),('아토','활어회(특대)','65000',NULL),('아토','활어회(혼술용)','18000',NULL),('아토','황새치뱃살초밥','20000',NULL),('아토','회덮밥','9000',NULL),('아토','회덮밥+새우튀김','12000',NULL),('알촌','갈릭알밥','4700',NULL),('알촌','매콤알밥','4300',NULL),('알촌','순한알밥','4100',NULL),('알촌','짜장알밥','4700',NULL),('알촌','카레알밥','4700',NULL),('엉터리분식','고구마치즈돈까스','8000',NULL),('엉터리분식','고등어조림','7500',NULL),('엉터리분식','공기밥','1500',NULL),('엉터리분식','김치김밥','3500',NULL),('엉터리분식','김치볶음밥','7000',NULL),('엉터리분식','김치찌개','7500',NULL),('엉터리분식','내장탕','7500',NULL),('엉터리분식','돈까스','7500',NULL),('엉터리분식','돈까스김밥','4000',NULL),('엉터리분식','돈까스냉면','8500',NULL),('엉터리분식','돈까스우동정식','8500',NULL),('엉터리분식','돌솥비빔밥','7500',NULL),('엉터리분식','땡초멸치김밥','4000',NULL),('엉터리분식','떡국','6500',NULL),('엉터리분식','떡만두국','6500',NULL),('엉터리분식','떡볶이','4500',NULL),('엉터리분식','뚝배기불고기','7500',NULL),('엉터리분식','매콤돈까스','8000',NULL),('엉터리분식','모듬오뎅','5000',NULL),('엉터리분식','모듬왕김밥','4500',NULL),('엉터리분식','물냉면','7500',NULL),('엉터리분식','부대찌개','7500',NULL),('엉터리분식','비빔냉면','7500',NULL),('엉터리분식','소갈비탕','7500',NULL),('엉터리분식','순대','4500',NULL),('엉터리분식','순대국밥','7500',NULL),('엉터리분식','순두부찌개','7500',NULL),('엉터리분식','야채김밥','3000',NULL),('엉터리분식','얼큰해물짬뽕수제비','7500',NULL),('엉터리분식','오므라이스','7500',NULL),('엉터리분식','오징어덮밥','7500',NULL),('엉터리분식','우거지갈비탕','7500',NULL),('엉터리분식','육개장','7500',NULL),('엉터리분식','제육김치볶음','7500',NULL),('엉터리분식','제육덮밥','7500',NULL),('엉터리분식','짜장덮밥','7000',NULL),('엉터리분식','쫄면','7500',NULL),('엉터리분식','찐만두','4500',NULL),('엉터리분식','참치김밥','4000',NULL),('엉터리분식','참치찌개','7500',NULL),('엉터리분식','청국장','7500',NULL),('엉터리분식','치즈김밥','4000',NULL),('엉터리분식','치즈돈까스','8000',NULL),('엉터리분식','치즈라볶이','6500',NULL),('엉터리분식','치즈쌀떡볶이','6500',NULL),('엉터리분식','치즈쌀라볶이','6500',NULL),('엉터리분식','카레덮밥','7000',NULL),('엉터리분식','콩국수','7500',NULL),('엉터리분식','튀김','4500',NULL),('엉터리분식','해물된장찌개','7500',NULL),('엉터리분식','해물떡볶이','6500',NULL),('전주식당','갈비탕','8000',NULL),('전주식당','김치찌개','6000',NULL),('전주식당','냉면','6000',NULL),('전주식당','닭볶음탕','30000',NULL),('전주식당','돌솥비빔밥','7000',NULL),('전주식당','된장찌개','6000',NULL),('전주식당','뚝배기불고기','7000',NULL),('전주식당','뼈해장국','7000',NULL),('전주식당','삼계탕','10000',NULL),('전주식당','소내장탕','8000',NULL),('전주식당','순두부찌개','6000',NULL),('전주식당','오징어볶음','7000',NULL),('전주식당','육개장','7000',NULL),('전주식당','전주콩나물해장국','6000',NULL),('전주식당','제육덮밥','7000',NULL),('전주식당','제육볶음','6000',NULL),('전주식당','제육치즈돌솥','7000',NULL),('전주식당','참치찌개','6000',NULL),('전주식당','청국장','6000',NULL),('포크포크','돈냉면','7000',NULL),('포크포크','매콤돈가스','8000',NULL),('포크포크','불 물냉면','6000',NULL),('포크포크','불 비빔냉면','6000',NULL),('포크포크','칡 물냉면','5500',NULL),('황궁짜장','간짜장','6000',NULL),('황궁짜장','고추덮밥','8000',NULL),('황궁짜장','고추잡채','23000',NULL),('황궁짜장','깐쇼새우','25000',NULL),('황궁짜장','깐쇼새우+짜장+짬뽕','21000',NULL),('황궁짜장','깐풍기','23000',NULL),('황궁짜장','깐풍기+짜장+짬뽕','19000',NULL),('황궁짜장','깐풍육','23000',NULL),('황궁짜장','냉면','6500',NULL),('황궁짜장','만두','4500',NULL),('황궁짜장','물만두','4500',NULL),('황궁짜장','볶음밥','6500',NULL),('황궁짜장','볶음짬뽕','7500',NULL),('황궁짜장','비냉','6500',NULL),('황궁짜장','사천창면','8000',NULL),('황궁짜장','사천창수육+짜장+짬뽕','18000',NULL),('황궁짜장','사천탕수육','17000',NULL),('황궁짜장','삼선간짜장','7000',NULL),('황궁짜장','삼선볶음밥','7500',NULL),('황궁짜장','삼선우동','8000',NULL),('황궁짜장','삼선짬뽕','8000',NULL),('황궁짜장','삼선짬뽕밥','8500',NULL),('황궁짜장','새우볶음밥','7500',NULL),('황궁짜장','순두부짬뽕밥','8000',NULL),('황궁짜장','양장피','23000',NULL),('황궁짜장','우동','7000',NULL),('황궁짜장','유산슬','25000',NULL),('황궁짜장','유산슬밥','10000',NULL),('황궁짜장','잡채','13000',NULL),('황궁짜장','잡채밥','7000',NULL),('황궁짜장','잡탕밥','10000',NULL),('황궁짜장','쟁반짜장','7000',NULL),('황궁짜장','짜장면','5000',NULL),('황궁짜장','짜장밥','6500',NULL),('황궁짜장','짬뽕','7000',NULL),('황궁짜장','짬뽕밥','7500',NULL),('황궁짜장','찹쌀탕수육(대)','23000',NULL),('황궁짜장','찹쌀탕수육(소)','16000',NULL),('황궁짜장','찹쌀탕수육(중)','19000',NULL),('황궁짜장','탕수육(대)','21000',NULL),('황궁짜장','탕수육(소)','13000',NULL),('황궁짜장','탕수육(중)','16000',NULL),('황궁짜장','탕수육+짜장+짬뽕','17000',NULL),('황궁짜장','탕수육+짜장2','16000',NULL),('황궁짜장','팔보채','25000',NULL),('황제곱창','막창구이','12000',NULL),('황제곱창','순대국','8000',NULL),('황제곱창','야채곱창','12000',NULL),('황제곱창','양념구이','12000',NULL),('황제곱창','치즈곱창','13000',NULL),('회스시','(광어회(특)','30000',NULL),('회스시','광어+명태양념구이\n+매운탕(대)','35000',NULL),('회스시','광어+명태양념구이\n+매운탕(중)','24000',NULL),('회스시','광어회(대)','24000',NULL),('회스시','광어회(중)','12000',NULL),('회스시','도미','50000',NULL),('회스시','매운탕','8000',NULL),('회스시','멍게','12000',NULL),('회스시','명태양념구이','10000',NULL),('회스시','모듬초밥','10000',NULL),('회스시','모듬회(대)','24000',NULL),('회스시','모듬회(중)','12000',NULL),('회스시','모듬회(특)','30000',NULL),('회스시','모듬회+초밥\n+명태양념구이(대)','36000',NULL),('회스시','모듬회+초밥\n+명태양념구이(중)','25000',NULL),('회스시','새우장','10000',NULL),('회스시','새우초밥','8000',NULL),('회스시','새우튀김','10000',NULL),('회스시','생새우초밥','10000',NULL),('회스시','연어(대)','24000',NULL),('회스시','연어(중)','12000',NULL),('회스시','연어(특)','30000',NULL),('회스시','연어+명태양념구이\n+매운탕(대)','35000',NULL),('회스시','연어+명태양념구이\n+매운탕(중)','24000',NULL),('회스시','연어머리구이','8000',NULL),('회스시','연어초밥','10000',NULL),('회스시','우럭(대)','24000',NULL),('회스시','우럭(중)','12000',NULL),('회스시','우럭(특)','30000',NULL),('회스시','우럭탕','20000',NULL),('회스시','전복','20000',NULL),('회스시','참치(대)','24000',NULL),('회스시','참치(중)','12000',NULL),('회스시','참치(특)','30000',NULL),('회스시','참치+초밥\n+새우튀김(대)','37000',NULL),('회스시','참치+초밥\n+새우튀김(중)','26000',NULL),('회스시','해물모듬','20000',NULL),('회스시','활어초밥','12000',NULL),('회스시','회덮밥','8000',NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec`
--

DROP TABLE IF EXISTS `rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rec` (
  `restaurant` varchar(50) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `id` varchar(20) NOT NULL,
  `recommend` varchar(50) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`restaurant`,`menu`,`id`),
  CONSTRAINT `FK_rec_menu` FOREIGN KEY (`restaurant`, `menu`) REFERENCES `menu` (`restaurant`, `menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec`
--

LOCK TABLES `rec` WRITE;
/*!40000 ALTER TABLE `rec` DISABLE KEYS */;
INSERT INTO `rec` VALUES ('rest1','1','aaa','1',NULL),('rest1','1','abc','1',NULL),('rest1','1','aqw','1',NULL),('rest1','1','bbb','1','2022-05-02'),('rest1','2','aaa','1',NULL),('rest1','2','abc','1',NULL),('rest1','3','aaa','1',NULL),('rest1','3','abc','1',NULL),('rest1','3','aqw','1',NULL),('rest1','3','asd','1',NULL),('rest1','3','bbb','1','2022-05-02'),('rest1','3','ccc','1','2022-05-02'),('rest1','3','ddd','1','2022-05-02'),('rest1','3','wer','1',NULL),('rest1','4','aaa','1',NULL),('rest1','5','aaa','1',NULL),('rest1','5','ccc','1','2022-05-02'),('rest1','5','wer','1',NULL),('rest1','6','ddd','1','2022-05-02'),('rest1','6','wer','1','2022-05-02');
/*!40000 ALTER TABLE `rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `re_num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(20) DEFAULT NULL,
  `reply` varchar(50) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`re_num`),
  KEY `FK_reply_board` (`num`),
  CONSTRAINT `FK_reply_board` FOREIGN KEY (`num`) REFERENCES `board` (`num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'bbb','asd',15,'2022-05-15','20:08:20'),(2,'bbb','qaa',15,'2022-05-15','20:10:13'),(3,'bbb','sss',13,'2022-05-15','21:36:05'),(7,'aaa','qww',16,'2022-05-16','18:44:37');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_1`
--

DROP TABLE IF EXISTS `reply_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_1` (
  `re_num` int NOT NULL AUTO_INCREMENT,
  `re_id` varchar(20) DEFAULT NULL,
  `reply` varchar(50) DEFAULT NULL,
  `bo_num` int DEFAULT NULL,
  `re_date` varchar(20) DEFAULT NULL,
  `re_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`re_num`),
  KEY `FK_reply_1_board_1` (`bo_num`),
  CONSTRAINT `FK_reply_1_board_1` FOREIGN KEY (`bo_num`) REFERENCES `board_1` (`num`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_1`
--

LOCK TABLES `reply_1` WRITE;
/*!40000 ALTER TABLE `reply_1` DISABLE KEYS */;
INSERT INTO `reply_1` VALUES (1,'bbb','fggh',5,'2022-05-15','22:27:36'),(2,'bbb','jtktk',5,'2022-05-15','22:27:43'),(3,'bbb','aa',5,'2022-05-15','22:27:54');
/*!40000 ALTER TABLE `reply_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `restaurant` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `businesshours` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`restaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES ('257의정부 부대찌개','한식',NULL),('bhc',NULL,'매일 12:00 - 24:00 '),('rest1',NULL,NULL),('via 246','스파케티, 파스타전문','화-일 11:30 - 21:00'),('가츠야','일식','월-금 11:00 - 20:00'),('감초식당','한식','월-금 10:00 - 22:30 / 일 10:00 - 22:30'),('겐코','일식','월-목, 토, 11:00-21:00 / 금, 일, 11:00-20:30'),('국수미가','국수','매일 11:00 - 20:00'),('귀한족발','한식','매일 15:00 - 23:30'),('글고만식당','한식','매일, 15:00-22:00'),('금성반점','중식','월-토, 12:00-23:00'),('노브랜드버거','패스트푸드','매일 10:00 - 22:00'),('도모다찌','주점','매일, 18:00-02:00'),('돈돈이네','한식','매일, 10:00-00:00'),('등촌샤브칼국수','한식','매일 10:00 - 23:00'),('마라킹마라탕','중식당','월-토 10:30 - 21:30'),('만나고쪽갈비','한식','매일 16:00 - 01:00'),('맘스터치 동서울대점','치킨, 닭강정, 햄버거','월-금 10:00 - 22:00 / 토-일 11:00 - 21:00'),('몽둥이부리또','멕시코,남미음식       ','월-토 10:00 - 21:00 / 매주 일요일 정기휴무, 마지막주 토요일 휴무'),('민속식당','한식','매일, 10:00-21:00'),('밥은화','한식','월-금 11:00 - 21:00'),('백채김치찌개 복정점','찌개, 전골','매일 11:00 - 22:30'),('복정고을','한식','월-토 10:30 - 23:30'),('복정랍스터','바닷가재','월-금 10:00 - 22:00'),('복정식당','한식','월-일 11:00 - 21:00'),('본도시락','도시락, 컵밥','월-금, 10:00-20:00 / 토, 10:00-15:00'),('봉구통닭',NULL,'매일 15:30 - 03:00'),('북경성반점','중식당','월-일 11:00 - 22:30'),('뿅의전설','중식당','월-일 10:30 - 00:00'),('생선한마리','한식','월-토 11:00 - 21:00'),('생태한마리&생돼지김치찌개','해물, 생선요리','매일 10:00 - 22:00'),('서경꼬마김밥','한식','화-일 10:00 - 22:00'),('서정가야밀면','한식','월-금 11:30 - 17:30 / 토 11:30 - 13:30'),('소미랑','주점','매일, 16:00-02:00'),('솥뚜껑파전','한식','월-토 18:00 - 24:30'),('수국집','한식','월-금 11:00 - 24:00'),('스타동',NULL,'월-금 11:00 - 20:30'),('스파게티올리브','양식','월-토 11:30 - 20:30'),('신의한컵','도시락, 컵밥','월-금, 08:30-21:30'),('싱싱회천국','회',NULL),('쌈마을촌밥','한식','매일 11:00 - 24:00'),('아토','일식',NULL),('알랑치킨','패스트푸드','매일 11:00 - 02:00'),('알촌','퓨전음식','월-금, 09:00-21:00 / 토-일, 10:00-21:00'),('엉터리분식','분식','매일, 08:30-23:00'),('연식당','한식','월-토 11:00 - 22:00'),('옛날통닭부뚜막치킨','한식','매일 12:00 - 24:00 '),('우짜돈','중식','월-일 09:30 - 21:30'),('원조대구허가네막창','한식','월-일 16:00 - 20:30'),('윤가네갈비이야기','한식','매일 17:00 - 23:00'),('은하','이자카야','월-금 17:30 - 00:00 / 토-일 17:30 - 02:00'),('응암역소문난순대국','한식','매일 24시간'),('이가네명동찌개마을','한식','매일 10:30 - 22:00'),('일공공샤브','한식','월-일 11:00 - 22:00'),('장박사참숯꼼장어','한식','월-목 17:00 - 24:00'),('전주식당','한식','매일, 07:00-19:00'),('제주생삼겹살부대찌개','한식','월-금 11:00 - 21:15'),('종로할머니칼국수 성남복정점','칼국수, 만두',NULL),('중림','중식','매일 11:00 - 21:30'),('진명족발손칼국수','한식','월-금, 일 10:00 - 22:00'),('찌마기','한식','월-일 16:00 - 23:30'),('착한정육점식당','한식',NULL),('참새방앗간','종합분식',NULL),('참진해물짜장짬뽕','중식','월-금 10:30 - 22:30 '),('처갓집양념치킨 복정점','치킨, 닭강정','매일 14:00 - 01:00'),('철뚝집','한식','월-일 11:00 - 22:00'),('친친','한식',NULL),('카츠선','일식','월-토 11:00 ~ 20:00'),('코코후라이드치킨','치킨, 닭강정','매일 14:00 - 01:00'),('포크포크','돈가스','매일, 10:00-21:00'),('포트리스쌀국수','아시안','월-일 10:00 - 21:00'),('피자스쿨','양식',NULL),('한솥도시락 성남복정동점','도시락,컵밥','월-금 08:00 - 20:30 / 토-일 08:00 - 19:00'),('할매순대국','순대, 순대국','매일 24시간'),('행복로드마라탕 동서울대점','중식당','매일 11:00 - 22:00'),('현짜장','중식당','월-토 11:30 - 21:00 '),('황궁짜장','중식',NULL),('황제곱창','곱창','월-토, 12:00-23:00'),('회스시','회','매일, 15:00-01:00');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star` (
  `restaurant` varchar(50) NOT NULL,
  `id` varchar(20) NOT NULL,
  `star` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`restaurant`,`id`),
  CONSTRAINT `FK_star_restaurant` FOREIGN KEY (`restaurant`) REFERENCES `restaurant` (`restaurant`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star`
--

LOCK TABLES `star` WRITE;
/*!40000 ALTER TABLE `star` DISABLE KEYS */;
INSERT INTO `star` VALUES ('rest1','wer','2');
/*!40000 ALTER TABLE `star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `registday` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aaa','123','asd','@123','2022-03-27 14:17'),('abc','123','asd','qwe@asd','2022-03-27 14:56'),('aqw','123','qww','@edd','2022-03-27 14:18'),('asd','123','asd','@123','2022-03-27 14:25'),('bbb','123','bbb','bbb@bbb','2022-05-02 09:15'),('ccc','123','ccc','ccc@ccc','2022-05-02 09:17'),('ddd','123','ddd','ddd@ddd','2022-05-02 09:18'),('dfg','123','zxc','zxc@123','2022-03-27 14:26'),('eee','123','eee','eee@eee','2022-05-02 09:20'),('fff','123','fff','fff@fff','2022-05-02 09:23'),('mj1006','mj1006','유민정','ymj1006ymj@naver.com','2022-03-28 05:15'),('wer','123','ddd','@ert','2022-03-27 14:19');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19  9:35:03
