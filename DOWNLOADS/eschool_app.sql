/*
SQLyog Ultimate v8.82 
MySQL - 5.5.5-10.1.16-MariaDB : Database - eschool_app
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eschool_app` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eschool_app`;

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(10) unsigned NOT NULL,
  `city_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_country_foreign` (`country`),
  CONSTRAINT `cities_country_foreign` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cities` */

insert  into `cities`(`id`,`city_name`,`country`,`city_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'AHMEDABAD',99,1,'admin','admin',NULL,NULL),(2,'ALLEPPEY',99,1,'admin','admin',NULL,NULL),(3,'ANAND',99,1,'admin','admin',NULL,NULL),(4,'AURANGABAD',99,1,'admin','admin',NULL,NULL),(5,'BACHELI',99,1,'admin','admin',NULL,NULL),(6,'BANGALORE',99,1,'admin','admin',NULL,NULL),(7,'BANNERGHATTA',99,1,'admin','admin',NULL,NULL),(8,'BELLARY',99,1,'admin','admin',NULL,NULL),(9,'BHAVNAGAR',99,1,'admin','admin',NULL,NULL),(10,'BHILAI',99,1,'admin','admin',NULL,NULL),(11,'BHUBANESHWAR',99,1,'admin','admin',NULL,NULL),(12,'BILASPUR',99,1,'admin','admin',NULL,NULL),(13,'CALICUT',99,1,'admin','admin',NULL,NULL),(14,'CHANDIGARH',99,1,'admin','admin',NULL,NULL),(15,'CHENNAI',99,1,'admin','admin',NULL,NULL),(16,'CHITOOR',99,1,'admin','admin',NULL,NULL),(17,'CITY',99,1,'admin','admin',NULL,NULL),(18,'COCHIN',99,1,'admin','admin',NULL,NULL),(19,'COIMBATORE',99,1,'admin','admin',NULL,NULL),(20,'CUTTACK',99,1,'admin','admin',NULL,NULL),(21,'DAVANGREE',99,1,'admin','admin',NULL,NULL),(22,'DEHRADUN',99,1,'admin','admin',NULL,NULL),(23,'DURGAPUR',99,1,'admin','admin',NULL,NULL),(24,'ERNAKULAM',99,1,'admin','admin',NULL,NULL),(25,'ERODE',99,1,'admin','admin',NULL,NULL),(26,'FARIDABAD',99,1,'admin','admin',NULL,NULL),(27,'GHAZIABAD',99,1,'admin','admin',NULL,NULL),(28,'GOA',99,1,'admin','admin',NULL,NULL),(29,'GORAKHPUR',99,1,'admin','admin',NULL,NULL),(30,'GULBARGA',99,1,'admin','admin',NULL,NULL),(31,'GURGAON',99,1,'admin','admin',NULL,NULL),(32,'HARIDWAR',99,1,'admin','admin',NULL,NULL),(33,'HUBLI',99,1,'admin','admin',NULL,NULL),(34,'HYDERABAD',99,1,'admin','admin',NULL,NULL),(35,'INDORE',99,1,'admin','admin',NULL,NULL),(36,'JAIPUR',99,1,'admin','admin',NULL,NULL),(37,'JALANDHAR',99,1,'admin','admin',NULL,NULL),(38,'JAMNAGAR',99,1,'admin','admin',NULL,NULL),(39,'KAKINADA',99,1,'admin','admin',NULL,NULL),(40,'KANCHEEPURAM',99,1,'admin','admin',NULL,NULL),(41,'KANNUR',99,1,'admin','admin',NULL,NULL),(42,'KARAIKUDI',99,1,'admin','admin',NULL,NULL),(43,'KARIMNAGAR',99,1,'admin','admin',NULL,NULL),(44,'KARNATAKA',99,1,'admin','admin',NULL,NULL),(45,'KARUR',99,1,'admin','admin',NULL,NULL),(46,'KOCHI',99,1,'admin','admin',NULL,NULL),(47,'KOLHAPUR',99,1,'admin','admin',NULL,NULL),(48,'KOLKATA',99,1,'admin','admin',NULL,NULL),(49,'KOLLAM',99,1,'admin','admin',NULL,NULL),(50,'KOTTAYAM',99,1,'admin','admin',NULL,NULL),(51,'KOVALAM',99,1,'admin','admin',NULL,NULL),(52,'KOZHENCHERRY',99,1,'admin','admin',NULL,NULL),(53,'KOZHIKODE',99,1,'admin','admin',NULL,NULL),(54,'KRISHNAGIRI',99,1,'admin','admin',NULL,NULL),(55,'LUCKNOW',99,1,'admin','admin',NULL,NULL),(56,'LUDHIANA',99,1,'admin','admin',NULL,NULL),(57,'MADURAI',99,1,'admin','admin',NULL,NULL),(58,'MALAKPET',99,1,'admin','admin',NULL,NULL),(59,'MALAPPURAM',99,1,'admin','admin',NULL,NULL),(60,'MANGALORE',99,1,'admin','admin',NULL,NULL),(61,'MARGAO',99,1,'admin','admin',NULL,NULL),(62,'MEERUT',99,1,'admin','admin',NULL,NULL),(63,'MOHALI',99,1,'admin','admin',NULL,NULL),(64,'MUMBAI',99,1,'admin','admin',NULL,NULL),(65,'MYSORE',99,1,'admin','admin',NULL,NULL),(66,'NAGPUR',99,1,'admin','admin',NULL,NULL),(67,'NASHIK',99,1,'admin','admin',NULL,NULL),(68,'NAVI MUMBAI',99,1,'admin','admin',NULL,NULL),(69,'NEDUMBASSERY',99,1,'admin','admin',NULL,NULL),(70,'NELLORE',99,1,'admin','admin',NULL,NULL),(71,'NEW DELHI',99,1,'admin','admin',NULL,NULL),(72,'NOIDA',99,1,'admin','admin',NULL,NULL),(73,'ONGOLE',99,1,'admin','admin',NULL,NULL),(74,'PALAKKAD',99,1,'admin','admin',NULL,NULL),(75,'PALANI',99,1,'admin','admin',NULL,NULL),(76,'PANAJI',99,1,'admin','admin',NULL,NULL),(77,'PANCHKULA',99,1,'admin','admin',NULL,NULL),(78,'PATHANAMTHITTA',99,1,'admin','admin',NULL,NULL),(79,'PATIALA',99,1,'admin','admin',NULL,NULL),(80,'PITAMPURA',99,1,'admin','admin',NULL,NULL),(81,'PONDICHERRY',99,1,'admin','admin',NULL,NULL),(82,'PORDENONE',99,1,'admin','admin',NULL,NULL),(83,'PUDUKKOTAI',99,1,'admin','admin',NULL,NULL),(84,'PUNE',99,1,'admin','admin',NULL,NULL),(85,'RAIPUR',99,1,'admin','admin',NULL,NULL),(86,'RAJAHMUNDRY',99,1,'admin','admin',NULL,NULL),(87,'RANCHI',99,1,'admin','admin',NULL,NULL),(88,'RANIPET',99,1,'admin','admin',NULL,NULL),(89,'REWARI',99,1,'admin','admin',NULL,NULL),(90,'ROHINI',99,1,'admin','admin',NULL,NULL),(91,'SALEM',99,1,'admin','admin',NULL,NULL),(92,'SALT LAKE',99,1,'admin','admin',NULL,NULL),(93,'SECUNDERABAD',99,1,'admin','admin',NULL,NULL),(94,'SHIMOGA',99,1,'admin','admin',NULL,NULL),(95,'SIVAKASI',99,1,'admin','admin',NULL,NULL),(96,'SOMAJIGUDA',99,1,'admin','admin',NULL,NULL),(97,'SURAT',99,1,'admin','admin',NULL,NULL),(98,'THANE',99,1,'admin','admin',NULL,NULL),(99,'THIRUVANANTHAPURAM',99,1,'admin','admin',NULL,NULL),(100,'THRISSUR',99,1,'admin','admin',NULL,NULL),(101,'TIRUPATI',99,1,'admin','admin',NULL,NULL),(102,'TIRUVANNAMALAI',99,1,'admin','admin',NULL,NULL),(103,'TRICHY',99,1,'admin','admin',NULL,NULL),(104,'TRIVANDRAM',99,1,'admin','admin',NULL,NULL),(105,'TUMKUR',99,1,'admin','admin',NULL,NULL),(106,'TUTICORIN',99,1,'admin','admin',NULL,NULL),(107,'VADODRA',99,1,'admin','admin',NULL,NULL),(108,'VARANASI',99,1,'admin','admin',NULL,NULL),(109,'VELLORE',99,1,'admin','admin',NULL,NULL),(110,'VIJAYAWADA',99,1,'admin','admin',NULL,NULL),(111,'VISHAKHAPATNAM',99,1,'admin','admin',NULL,NULL);

/*Table structure for table `classes` */

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `classes` */

insert  into `classes`(`id`,`class_name`,`class_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'Pre-KG',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(2,'LKG',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(3,'UKG',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(4,'I',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(5,'II',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(6,'III',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(7,'IV',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(8,'V',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(9,'VI',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(10,'VII',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(11,'VIII',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(12,'IX',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(13,'X',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(14,'XI',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(15,'XII',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42');

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phonecode` int(11) NOT NULL,
  `country_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`code`,`name`,`phonecode`,`country_status`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,'AF','AFGHANISTAN',93,1,'Admin','Admin',NULL,NULL),(2,'AL','ALBANIA',355,1,'Admin','Admin',NULL,NULL),(3,'DZ','ALGERIA',213,1,'Admin','Admin',NULL,NULL),(4,'AS','AMERICAN SAMOA',1684,1,'Admin','Admin',NULL,NULL),(5,'AD','ANDORRA',376,1,'Admin','Admin',NULL,NULL),(6,'AO','ANGOLA',244,1,'Admin','Admin',NULL,NULL),(7,'AI','ANGUILLA',1264,1,'Admin','Admin',NULL,NULL),(8,'AQ','ANTARCTICA',0,1,'Admin','Admin',NULL,NULL),(9,'AG','ANTIGUA AND BARBUDA',1268,1,'Admin','Admin',NULL,NULL),(10,'AR','ARGENTINA',54,1,'Admin','Admin',NULL,NULL),(11,'AM','ARMENIA',374,1,'Admin','Admin',NULL,NULL),(12,'AW','ARUBA',297,1,'Admin','Admin',NULL,NULL),(13,'AU','AUSTRALIA',61,1,'Admin','Admin',NULL,NULL),(14,'AT','AUSTRIA',43,1,'Admin','Admin',NULL,NULL),(15,'AZ','AZERBAIJAN',994,1,'Admin','Admin',NULL,NULL),(16,'BS','BAHAMAS',1242,1,'Admin','Admin',NULL,NULL),(17,'BH','BAHRAIN',973,1,'Admin','Admin',NULL,NULL),(18,'BD','BANGLADESH',880,1,'Admin','Admin',NULL,NULL),(19,'BB','BARBADOS',1246,1,'Admin','Admin',NULL,NULL),(20,'BY','BELARUS',375,1,'Admin','Admin',NULL,NULL),(21,'BE','BELGIUM',32,1,'Admin','Admin',NULL,NULL),(22,'BZ','BELIZE',501,1,'Admin','Admin',NULL,NULL),(23,'BJ','BENIN',229,1,'Admin','Admin',NULL,NULL),(24,'BM','BERMUDA',1441,1,'Admin','Admin',NULL,NULL),(25,'BT','BHUTAN',975,1,'Admin','Admin',NULL,NULL),(26,'BO','BOLIVIA',591,1,'Admin','Admin',NULL,NULL),(27,'BA','BOSNIA AND HERZEGOVINA',387,1,'Admin','Admin',NULL,NULL),(28,'BW','BOTSWANA',267,1,'Admin','Admin',NULL,NULL),(29,'BV','BOUVET ISLAND',0,1,'Admin','Admin',NULL,NULL),(30,'BR','BRAZIL',55,1,'Admin','Admin',NULL,NULL),(31,'IO','BRITISH INDIAN OCEAN TERRITORY',246,1,'Admin','Admin',NULL,NULL),(32,'BN','BRUNEI DARUSSALAM',673,1,'Admin','Admin',NULL,NULL),(33,'BG','BULGARIA',359,1,'Admin','Admin',NULL,NULL),(34,'BF','BURKINA FASO',226,1,'Admin','Admin',NULL,NULL),(35,'BI','BURUNDI',257,1,'Admin','Admin',NULL,NULL),(36,'KH','CAMBODIA',855,1,'Admin','Admin',NULL,NULL),(37,'CM','CAMEROON',237,1,'Admin','Admin',NULL,NULL),(38,'CA','CANADA',1,1,'Admin','Admin',NULL,NULL),(39,'CV','CAPE VERDE',238,1,'Admin','Admin',NULL,NULL),(40,'KY','CAYMAN ISLANDS',1345,1,'Admin','Admin',NULL,NULL),(41,'CF','CENTRAL AFRICAN REPUBLIC',236,1,'Admin','Admin',NULL,NULL),(42,'TD','CHAD',235,1,'Admin','Admin',NULL,NULL),(43,'CL','CHILE',56,1,'Admin','Admin',NULL,NULL),(44,'CN','CHINA',86,1,'Admin','Admin',NULL,NULL),(45,'CX','CHRISTMAS ISLAND',61,1,'Admin','Admin',NULL,NULL),(46,'CC','COCOS (KEELING) ISLANDS',672,1,'Admin','Admin',NULL,NULL),(47,'CO','COLOMBIA',57,1,'Admin','Admin',NULL,NULL),(48,'KM','COMOROS',269,1,'Admin','Admin',NULL,NULL),(49,'CG','CONGO',242,1,'Admin','Admin',NULL,NULL),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE',242,1,'Admin','Admin',NULL,NULL),(51,'CK','COOK ISLANDS',682,1,'Admin','Admin',NULL,NULL),(52,'CR','COSTA RICA',506,1,'Admin','Admin',NULL,NULL),(53,'CI','COTE D\'IVOIRE',225,1,'Admin','Admin',NULL,NULL),(54,'HR','CROATIA',385,1,'Admin','Admin',NULL,NULL),(55,'CU','CUBA',53,1,'Admin','Admin',NULL,NULL),(56,'CY','CYPRUS',357,1,'Admin','Admin',NULL,NULL),(57,'CZ','CZECH REPUBLIC',420,1,'Admin','Admin',NULL,NULL),(58,'DK','DENMARK',45,1,'Admin','Admin',NULL,NULL),(59,'DJ','DJIBOUTI',253,1,'Admin','Admin',NULL,NULL),(60,'DM','DOMINICA',1767,1,'Admin','Admin',NULL,NULL),(61,'DO','DOMINICAN REPUBLIC',1809,1,'Admin','Admin',NULL,NULL),(62,'EC','ECUADOR',593,1,'Admin','Admin',NULL,NULL),(63,'EG','EGYPT',20,1,'Admin','Admin',NULL,NULL),(64,'SV','EL SALVADOR',503,1,'Admin','Admin',NULL,NULL),(65,'GQ','EQUATORIAL GUINEA',240,1,'Admin','Admin',NULL,NULL),(66,'ER','ERITREA',291,1,'Admin','Admin',NULL,NULL),(67,'EE','ESTONIA',372,1,'Admin','Admin',NULL,NULL),(68,'ET','ETHIOPIA',251,1,'Admin','Admin',NULL,NULL),(69,'FK','FALKLAND ISLANDS (MALVINAS)',500,1,'Admin','Admin',NULL,NULL),(70,'FO','FAROE ISLANDS',298,1,'Admin','Admin',NULL,NULL),(71,'FJ','FIJI',679,1,'Admin','Admin',NULL,NULL),(72,'FI','FINLAND',358,1,'Admin','Admin',NULL,NULL),(73,'FR','FRANCE',33,1,'Admin','Admin',NULL,NULL),(74,'GF','FRENCH GUIANA',594,1,'Admin','Admin',NULL,NULL),(75,'PF','FRENCH POLYNESIA',689,1,'Admin','Admin',NULL,NULL),(76,'TF','FRENCH SOUTHERN TERRITORIES',0,1,'Admin','Admin',NULL,NULL),(77,'GA','GABON',241,1,'Admin','Admin',NULL,NULL),(78,'GM','GAMBIA',220,1,'Admin','Admin',NULL,NULL),(79,'GE','GEORGIA',995,1,'Admin','Admin',NULL,NULL),(80,'DE','GERMANY',49,1,'Admin','Admin',NULL,NULL),(81,'GH','GHANA',233,1,'Admin','Admin',NULL,NULL),(82,'GI','GIBRALTAR',350,1,'Admin','Admin',NULL,NULL),(83,'GR','GREECE',30,1,'Admin','Admin',NULL,NULL),(84,'GL','GREENLAND',299,1,'Admin','Admin',NULL,NULL),(85,'GD','GRENADA',1473,1,'Admin','Admin',NULL,NULL),(86,'GP','GUADELOUPE',590,1,'Admin','Admin',NULL,NULL),(87,'GU','GUAM',1671,1,'Admin','Admin',NULL,NULL),(88,'GT','GUATEMALA',502,1,'Admin','Admin',NULL,NULL),(89,'GN','GUINEA',224,1,'Admin','Admin',NULL,NULL),(90,'GW','GUINEA-BISSAU',245,1,'Admin','Admin',NULL,NULL),(91,'GY','GUYANA',592,1,'Admin','Admin',NULL,NULL),(92,'HT','HAITI',509,1,'Admin','Admin',NULL,NULL),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS',0,1,'Admin','Admin',NULL,NULL),(94,'VA','HOLY SEE (VATICAN CITY STATE)',39,1,'Admin','Admin',NULL,NULL),(95,'HN','HONDURAS',504,1,'Admin','Admin',NULL,NULL),(96,'HK','HONG KONG',852,1,'Admin','Admin',NULL,NULL),(97,'HU','HUNGARY',36,1,'Admin','Admin',NULL,NULL),(98,'IS','ICELAND',354,1,'Admin','Admin',NULL,NULL),(99,'IN','INDIA',91,1,'Admin','Admin',NULL,NULL),(100,'ID','INDONESIA',62,1,'Admin','Admin',NULL,NULL),(101,'IR','IRAN, ISLAMIC REPUBLIC OF',98,1,'Admin','Admin',NULL,NULL),(102,'IQ','IRAQ',964,1,'Admin','Admin',NULL,NULL),(103,'IE','IRELAND',353,1,'Admin','Admin',NULL,NULL),(104,'IL','ISRAEL',972,1,'Admin','Admin',NULL,NULL),(105,'IT','ITALY',39,1,'Admin','Admin',NULL,NULL),(106,'JM','JAMAICA',1876,1,'Admin','Admin',NULL,NULL),(107,'JP','JAPAN',81,1,'Admin','Admin',NULL,NULL),(108,'JO','JORDAN',962,1,'Admin','Admin',NULL,NULL),(109,'KZ','KAZAKHSTAN',7,1,'Admin','Admin',NULL,NULL),(110,'KE','KENYA',254,1,'Admin','Admin',NULL,NULL),(111,'KI','KIRIBATI',686,1,'Admin','Admin',NULL,NULL),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF',850,1,'Admin','Admin',NULL,NULL),(113,'KR','KOREA, REPUBLIC OF',82,1,'Admin','Admin',NULL,NULL),(114,'KW','KUWAIT',965,1,'Admin','Admin',NULL,NULL),(115,'KG','KYRGYZSTAN',996,1,'Admin','Admin',NULL,NULL),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC',856,1,'Admin','Admin',NULL,NULL),(117,'LV','LATVIA',371,1,'Admin','Admin',NULL,NULL),(118,'LB','LEBANON',961,1,'Admin','Admin',NULL,NULL),(119,'LS','LESOTHO',266,1,'Admin','Admin',NULL,NULL),(120,'LR','LIBERIA',231,1,'Admin','Admin',NULL,NULL),(121,'LY','LIBYAN ARAB JAMAHIRIYA',218,1,'Admin','Admin',NULL,NULL),(122,'LI','LIECHTENSTEIN',423,1,'Admin','Admin',NULL,NULL),(123,'LT','LITHUANIA',370,1,'Admin','Admin',NULL,NULL),(124,'LU','LUXEMBOURG',352,1,'Admin','Admin',NULL,NULL),(125,'MO','MACAO',853,1,'Admin','Admin',NULL,NULL),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF',389,1,'Admin','Admin',NULL,NULL),(127,'MG','MADAGASCAR',261,1,'Admin','Admin',NULL,NULL),(128,'MW','MALAWI',265,1,'Admin','Admin',NULL,NULL),(129,'MY','MALAYSIA',60,1,'Admin','Admin',NULL,NULL),(130,'MV','MALDIVES',960,1,'Admin','Admin',NULL,NULL),(131,'ML','MALI',223,1,'Admin','Admin',NULL,NULL),(132,'MT','MALTA',356,1,'Admin','Admin',NULL,NULL),(133,'MH','MARSHALL ISLANDS',692,1,'Admin','Admin',NULL,NULL),(134,'MQ','MARTINIQUE',596,1,'Admin','Admin',NULL,NULL),(135,'MR','MAURITANIA',222,1,'Admin','Admin',NULL,NULL),(136,'MU','MAURITIUS',230,1,'Admin','Admin',NULL,NULL),(137,'YT','MAYOTTE',269,1,'Admin','Admin',NULL,NULL),(138,'MX','MEXICO',52,1,'Admin','Admin',NULL,NULL),(139,'FM','MICRONESIA, FEDERATED STATES OF',691,1,'Admin','Admin',NULL,NULL),(140,'MD','MOLDOVA, REPUBLIC OF',373,1,'Admin','Admin',NULL,NULL),(141,'MC','MONACO',377,1,'Admin','Admin',NULL,NULL),(142,'MN','MONGOLIA',976,1,'Admin','Admin',NULL,NULL),(143,'MS','MONTSERRAT',1664,1,'Admin','Admin',NULL,NULL),(144,'MA','MOROCCO',212,1,'Admin','Admin',NULL,NULL),(145,'MZ','MOZAMBIQUE',258,1,'Admin','Admin',NULL,NULL),(146,'MM','MYANMAR',95,1,'Admin','Admin',NULL,NULL),(147,'NA','NAMIBIA',264,1,'Admin','Admin',NULL,NULL),(148,'NR','NAURU',674,1,'Admin','Admin',NULL,NULL),(149,'NP','NEPAL',977,1,'Admin','Admin',NULL,NULL),(150,'NL','NETHERLANDS',31,1,'Admin','Admin',NULL,NULL),(151,'AN','NETHERLANDS ANTILLES',599,1,'Admin','Admin',NULL,NULL),(152,'NC','NEW CALEDONIA',687,1,'Admin','Admin',NULL,NULL),(153,'NZ','NEW ZEALAND',64,1,'Admin','Admin',NULL,NULL),(154,'NI','NICARAGUA',505,1,'Admin','Admin',NULL,NULL),(155,'NE','NIGER',227,1,'Admin','Admin',NULL,NULL),(156,'NG','NIGERIA',234,1,'Admin','Admin',NULL,NULL),(157,'NU','NIUE',683,1,'Admin','Admin',NULL,NULL),(158,'NF','NORFOLK ISLAND',672,1,'Admin','Admin',NULL,NULL),(159,'MP','NORTHERN MARIANA ISLANDS',1670,1,'Admin','Admin',NULL,NULL),(160,'NO','NORWAY',47,1,'Admin','Admin',NULL,NULL),(161,'OM','OMAN',968,1,'Admin','Admin',NULL,NULL),(162,'PK','PAKISTAN',92,1,'Admin','Admin',NULL,NULL),(163,'PW','PALAU',680,1,'Admin','Admin',NULL,NULL),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED',970,1,'Admin','Admin',NULL,NULL),(165,'PA','PANAMA',507,1,'Admin','Admin',NULL,NULL),(166,'PG','PAPUA NEW GUINEA',675,1,'Admin','Admin',NULL,NULL),(167,'PY','PARAGUAY',595,1,'Admin','Admin',NULL,NULL),(168,'PE','PERU',51,1,'Admin','Admin',NULL,NULL),(169,'PH','PHILIPPINES',63,1,'Admin','Admin',NULL,NULL),(170,'PN','PITCAIRN',0,1,'Admin','Admin',NULL,NULL),(171,'PL','POLAND',48,1,'Admin','Admin',NULL,NULL),(172,'PT','PORTUGAL',351,1,'Admin','Admin',NULL,NULL),(173,'PR','PUERTO RICO',1787,1,'Admin','Admin',NULL,NULL),(174,'QA','QATAR',974,1,'Admin','Admin',NULL,NULL),(175,'RE','REUNION',262,1,'Admin','Admin',NULL,NULL),(176,'RO','ROMANIA',40,1,'Admin','Admin',NULL,NULL),(177,'RU','RUSSIAN FEDERATION',70,1,'Admin','Admin',NULL,NULL),(178,'RW','RWANDA',250,1,'Admin','Admin',NULL,NULL),(179,'SH','SAINT HELENA',290,1,'Admin','Admin',NULL,NULL),(180,'KN','SAINT KITTS AND NEVIS',1869,1,'Admin','Admin',NULL,NULL),(181,'LC','SAINT LUCIA',1758,1,'Admin','Admin',NULL,NULL),(182,'PM','SAINT PIERRE AND MIQUELON',508,1,'Admin','Admin',NULL,NULL),(183,'VC','SAINT VINCENT AND THE GRENADINES',1784,1,'Admin','Admin',NULL,NULL),(184,'WS','SAMOA',684,1,'Admin','Admin',NULL,NULL),(185,'SM','SAN MARINO',378,1,'Admin','Admin',NULL,NULL),(186,'ST','SAO TOME AND PRINCIPE',239,1,'Admin','Admin',NULL,NULL),(187,'SA','SAUDI ARABIA',966,1,'Admin','Admin',NULL,NULL),(188,'SN','SENEGAL',221,1,'Admin','Admin',NULL,NULL),(189,'CS','SERBIA AND MONTENEGRO',381,1,'Admin','Admin',NULL,NULL),(190,'SC','SEYCHELLES',248,1,'Admin','Admin',NULL,NULL),(191,'SL','SIERRA LEONE',232,1,'Admin','Admin',NULL,NULL),(192,'SG','SINGAPORE',65,1,'Admin','Admin',NULL,NULL),(193,'SK','SLOVAKIA',421,1,'Admin','Admin',NULL,NULL),(194,'SI','SLOVENIA',386,1,'Admin','Admin',NULL,NULL),(195,'SB','SOLOMON ISLANDS',677,1,'Admin','Admin',NULL,NULL),(196,'SO','SOMALIA',252,1,'Admin','Admin',NULL,NULL),(197,'ZA','SOUTH AFRICA',27,1,'Admin','Admin',NULL,NULL),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS',0,1,'Admin','Admin',NULL,NULL),(199,'ES','SPAIN',34,1,'Admin','Admin',NULL,NULL),(200,'LK','SRI LANKA',94,1,'Admin','Admin',NULL,NULL),(201,'SD','SUDAN',249,1,'Admin','Admin',NULL,NULL),(202,'SR','SURINAME',597,1,'Admin','Admin',NULL,NULL),(203,'SJ','SVALBARD AND JAN MAYEN',47,1,'Admin','Admin',NULL,NULL),(204,'SZ','SWAZILAND',268,1,'Admin','Admin',NULL,NULL),(205,'SE','SWEDEN',46,1,'Admin','Admin',NULL,NULL),(206,'CH','SWITZERLAND',41,1,'Admin','Admin',NULL,NULL),(207,'SY','SYRIAN ARAB REPUBLIC',963,1,'Admin','Admin',NULL,NULL),(208,'TW','TAIWAN, PROVINCE OF CHINA',886,1,'Admin','Admin',NULL,NULL),(209,'TJ','TAJIKISTAN',992,1,'Admin','Admin',NULL,NULL),(210,'TZ','TANZANIA, UNITED REPUBLIC OF',255,1,'Admin','Admin',NULL,NULL),(211,'TH','THAILAND',66,1,'Admin','Admin',NULL,NULL),(212,'TL','TIMOR-LESTE',670,1,'Admin','Admin',NULL,NULL),(213,'TG','TOGO',228,1,'Admin','Admin',NULL,NULL),(214,'TK','TOKELAU',690,1,'Admin','Admin',NULL,NULL),(215,'TO','TONGA',676,1,'Admin','Admin',NULL,NULL),(216,'TT','TRINIDAD AND TOBAGO',1868,1,'Admin','Admin',NULL,NULL),(217,'TN','TUNISIA',216,1,'Admin','Admin',NULL,NULL),(218,'TR','TURKEY',90,1,'Admin','Admin',NULL,NULL),(219,'TM','TURKMENISTAN',7370,1,'Admin','Admin',NULL,NULL),(220,'TC','TURKS AND CAICOS ISLANDS',1649,1,'Admin','Admin',NULL,NULL),(221,'TV','TUVALU',688,1,'Admin','Admin',NULL,NULL),(222,'UG','UGANDA',256,1,'Admin','Admin',NULL,NULL),(223,'UA','UKRAINE',380,1,'Admin','Admin',NULL,NULL),(224,'AE','UNITED ARAB EMIRATES',971,1,'Admin','Admin',NULL,NULL),(225,'GB','UNITED KINGDOM',44,1,'Admin','Admin',NULL,NULL),(226,'US','UNITED STATES',1,1,'Admin','Admin',NULL,NULL),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS',1,1,'Admin','Admin',NULL,NULL),(228,'UY','URUGUAY',598,1,'Admin','Admin',NULL,NULL),(229,'UZ','UZBEKISTAN',998,1,'Admin','Admin',NULL,NULL),(230,'VU','VANUATU',678,1,'Admin','Admin',NULL,NULL),(231,'VE','VENEZUELA',58,1,'Admin','Admin',NULL,NULL),(232,'VN','VIET NAM',84,1,'Admin','Admin',NULL,NULL),(233,'VG','VIRGIN ISLANDS, BRITISH',1284,1,'Admin','Admin',NULL,NULL),(234,'VI','VIRGIN ISLANDS, U.S.',1340,1,'Admin','Admin',NULL,NULL),(235,'WF','WALLIS AND FUTUNA',681,1,'Admin','Admin',NULL,NULL),(236,'EH','WESTERN SAHARA',212,1,'Admin','Admin',NULL,NULL),(237,'YE','YEMEN',967,1,'Admin','Admin',NULL,NULL),(238,'ZM','ZAMBIA',260,1,'Admin','Admin',NULL,NULL),(239,'ZW','ZIMBABWE',263,1,'Admin','Admin',NULL,NULL);

/*Table structure for table `job_position` */

DROP TABLE IF EXISTS `job_position`;

CREATE TABLE `job_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `job_position` */

insert  into `job_position`(`id`,`position_name`,`position_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'Principal',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(2,'Senior Staff',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(3,'Junior Staff',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42');

/*Table structure for table `job_type` */

DROP TABLE IF EXISTS `job_type`;

CREATE TABLE `job_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `job_type` */

insert  into `job_type`(`id`,`type_name`,`type_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'Teaching Staff',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(2,'Non-Teaching Staff',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(3,'Office Staff',1,'admin','admin','2018-02-14 06:12:42','2018-02-14 06:12:42');

/*Table structure for table `manager_info` */

DROP TABLE IF EXISTS `manager_info`;

CREATE TABLE `manager_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name_manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` int(10) unsigned DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_photo` text COLLATE utf8_unicode_ci,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `manager_info` */

insert  into `manager_info`(`id`,`user_id`,`name_manager`,`name_person`,`address`,`city`,`state`,`country`,`telephone`,`mobile`,`email`,`manager_code`,`manager_photo`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,2,'Myskoo','Vinoth',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ADMIN','ADMIN','2018-02-14 06:12:42','2018-02-14 06:12:42');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_08_05_102148_create_roles_table',1),('2016_08_05_102326_create_role_user_table',1),('2016_08_05_103313_create_countries_table',1),('2016_08_05_103336_create_cities_table',1),('2016_08_05_120352_create_hospital_table',1),('2016_08_08_092422_create_doctor_table',1),('2016_08_08_093459_create_pharmacy_table',1),('2016_08_08_094006_create_lab_table',1),('2016_08_08_094831_create_patient_table',1),('2016_08_08_095420_create_hospital_doctor_table',1),('2016_08_08_095650_create_hospital_pharmacy_table',1),('2016_08_08_100320_create_hospital_lab_table',1),('2016_08_08_100736_create_hospital_patient_table',1),('2016_08_08_101802_create_lab_tests_table',1),('2016_08_08_102210_create_drugs_table',1),('2016_08_08_104312_create_patient_prescription_table',1),('2016_08_08_105105_create_prescription_details_table',1),('2016_08_08_105715_create_patient_labtest_table',1),('2016_08_08_111408_create_labtest_details_table',1),('2016_08_09_084345_add_lab_patient_foreign_key',1),('2016_08_11_080538_create_doctor_appointment_table',1),('2016_08_21_103219_create_lab_labtest_table',1),('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_08_05_102148_create_roles_table',1),('2016_08_05_102326_create_role_user_table',1),('2016_08_05_103313_create_countries_table',1),('2016_08_05_103336_create_cities_table',1),('2016_08_05_120352_create_hospital_table',1),('2016_08_08_092422_create_doctor_table',1),('2016_08_08_093459_create_pharmacy_table',1),('2016_08_08_094006_create_lab_table',1),('2016_08_08_094831_create_patient_table',1),('2016_08_08_095420_create_hospital_doctor_table',1),('2016_08_08_095650_create_hospital_pharmacy_table',1),('2016_08_08_100320_create_hospital_lab_table',1),('2016_08_08_100736_create_hospital_patient_table',1),('2016_08_08_101802_create_lab_tests_table',1),('2016_08_08_102210_create_drugs_table',1),('2016_08_08_104312_create_patient_prescription_table',1),('2016_08_08_105105_create_prescription_details_table',1),('2016_08_08_105715_create_patient_labtest_table',1),('2016_08_08_111408_create_labtest_details_table',1),('2016_08_09_084345_add_lab_patient_foreign_key',1),('2016_08_11_080538_create_doctor_appointment_table',2),('2016_08_21_103219_create_lab_labtest_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permission_role` */

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `permissions` */

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_user_user_id_role_id_unique` (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role_user` */

insert  into `role_user`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`) values (1,1,1,NULL,NULL),(2,2,2,NULL,NULL);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`description`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,'admin','admin','admin','Admin','Admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(2,'manager','manager','manager','Admin','Admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(3,'school','school','school','Admin','Admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(4,'staff','staff','staff','Admin','Admin','2018-02-14 06:12:42','2018-02-14 06:12:42'),(5,'student','student','student','Admin','Admin','2018-02-14 06:12:42','2018-02-14 06:12:42');

/*Table structure for table `school_classes` */

DROP TABLE IF EXISTS `school_classes`;

CREATE TABLE `school_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `class_section_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_section_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `school_classes` */

/*Table structure for table `school_info` */

DROP TABLE IF EXISTS `school_info`;

CREATE TABLE `school_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name_school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` int(10) unsigned DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school_photo` text COLLATE utf8_unicode_ci,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iec_code` (`school_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `school_info` */

/*Table structure for table `staff_info` */

DROP TABLE IF EXISTS `staff_info`;

CREATE TABLE `staff_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `school_id` int(10) NOT NULL,
  `firstname_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  `job_position` int(11) DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouse_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` int(10) unsigned NOT NULL,
  `state` int(10) NOT NULL,
  `country` int(10) unsigned NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `section_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `section` */

insert  into `section`(`id`,`section_name`,`section_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'A',1,'admin','admin',NULL,NULL),(2,'B',1,'admin','admin',NULL,NULL),(3,'C',1,'admin','admin',NULL,NULL),(4,'D',1,'admin','admin',NULL,NULL),(5,'E',1,'admin','admin',NULL,NULL),(6,'F',1,'admin','admin',NULL,NULL),(7,'G',1,'admin','admin',NULL,NULL),(8,'H',1,'admin','admin',NULL,NULL),(9,'I',1,'admin','admin',NULL,NULL),(10,'J',1,'admin','admin',NULL,NULL),(11,'K',1,'admin','admin',NULL,NULL),(12,'L',1,'admin','admin',NULL,NULL);

/*Data for the table `staff_info` */

insert  into `staff_info`(`id`,`user_id`,`school_id`,`firstname_person`,`lastname_person`,`job_type`,`job_position`,`dob`,`gender`,`blood_group`,`marital`,`spouse_name`,`nationality`,`address`,`city`,`state`,`country`,`pincode`,`telephone`,`mobile`,`email`,`photo`,`degree`,`experience`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,15,7,'Vimal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Villivakkam',15,31,99,'600049','','9841486644','vimal@gmail.com',NULL,NULL,NULL,'User','User','2017-12-15 00:00:00','2017-12-15 00:00:00');

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(10) unsigned NOT NULL,
  `state_status` tinyint(4) NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_country_foreign` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `states` */

insert  into `states`(`id`,`state_name`,`country`,`state_status`,`created_by`,`modified_by`,`created_at`,`updated_at`) values (1,'Andaman and Nicobar Islands',99,1,'admin','admin',NULL,NULL),(2,'Andhra Pradesh',99,1,'admin','admin',NULL,NULL),(3,'Arunachal Pradesh',99,1,'admin','admin',NULL,NULL),(4,'Assam',99,1,'admin','admin',NULL,NULL),(5,'Bihar',99,1,'admin','admin',NULL,NULL),(6,'Chandigarh',99,1,'admin','admin',NULL,NULL),(7,'Chhattisgarh',99,1,'admin','admin',NULL,NULL),(8,'Dadra and Nagar Haveli',99,1,'admin','admin',NULL,NULL),(9,'Daman and Diu',99,1,'admin','admin',NULL,NULL),(10,'Delhi',99,1,'admin','admin',NULL,NULL),(11,'Goa',99,1,'admin','admin',NULL,NULL),(12,'Gujarat',99,1,'admin','admin',NULL,NULL),(13,'Haryana',99,1,'admin','admin',NULL,NULL),(14,'Himachal Pradesh',99,1,'admin','admin',NULL,NULL),(15,'Jammu and Kashmir',99,1,'admin','admin',NULL,NULL),(16,'Jharkhand',99,1,'admin','admin',NULL,NULL),(17,'Karnataka',99,1,'admin','admin',NULL,NULL),(18,'Kerala',99,1,'admin','admin',NULL,NULL),(19,'Lakshadweep',99,1,'admin','admin',NULL,NULL),(20,'Madhya Pradesh',99,1,'admin','admin',NULL,NULL),(21,'Maharashtra',99,1,'admin','admin',NULL,NULL),(22,'Manipur',99,1,'admin','admin',NULL,NULL),(23,'Meghalaya',99,1,'admin','admin',NULL,NULL),(24,'Mizoram',99,1,'admin','admin',NULL,NULL),(25,'Nagaland',99,1,'admin','admin',NULL,NULL),(26,'Orissa',99,1,'admin','admin',NULL,NULL),(27,'Pondicherry',99,1,'admin','admin',NULL,NULL),(28,'Punjab',99,1,'admin','admin',NULL,NULL),(29,'Rajasthan',99,1,'admin','admin',NULL,NULL),(30,'Sikkim',99,1,'admin','admin',NULL,NULL),(31,'Tamil Nadu',99,1,'admin','admin',NULL,NULL),(32,'Telungana',99,1,'admin','admin',NULL,NULL),(33,'Tripura',99,1,'admin','admin',NULL,NULL),(34,'Uttaranchal',99,1,'admin','admin',NULL,NULL),(35,'Uttar Pradesh',99,1,'admin','admin',NULL,NULL),(36,'West Bengal',99,1,'admin','admin',NULL,NULL);

/*Table structure for table `student_info` */

DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `school_id` int(10) NOT NULL,
  `firstname_person` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` int(11) DEFAULT NULL,
  `class_section_name` int(11) DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` int(10) unsigned NOT NULL,
  `state` int(10) NOT NULL,
  `country` int(10) unsigned NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `student_info` */

insert  into `student_info`(`id`,`user_id`,`school_id`,`firstname_person`,`lastname_person`,`class_name`,`class_section_name`,`dob`,`gender`,`blood_group`,`language`,`religion`,`nationality`,`address`,`city`,`state`,`country`,`pincode`,`telephone`,`mobile`,`email`,`photo`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,15,7,'Vimal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Villivakkam',15,31,99,'600049','','9841486644','vimal@gmail.com',NULL,'User','User','2017-12-15 00:00:00','2017-12-15 00:00:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(4) DEFAULT NULL,
  `delete_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`confirmation_code`,`confirmed`,`delete_status`,`created_at`,`updated_at`) values (1,'admin','admin@myskoo.com','e10adc3949ba59abbe56e057f20f883e','',NULL,1,1,NULL,'2017-11-29 09:31:51'),(2,'manager','vinoth.dhinakaran@myskoo.com','e10adc3949ba59abbe56e057f20f883e','',NULL,1,1,NULL,'2017-11-29 09:31:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*Table structure for table `class_section` */

DROP TABLE IF EXISTS `class_section`;

CREATE TABLE `class_section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned DEFAULT NULL,
  `section_id` int(10) unsigned DEFAULT NULL,
  `staff_id` int(10) unsigned DEFAULT NULL,
  `school_id` int(10) unsigned DEFAULT NULL,
  `num_of_students` int(11) DEFAULT NULL,
  `class_section_status` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `class_section` */
insert  into `class_section`(`id`,`class_id`,`section_id`,`staff_id`,`school_id`,`num_of_students`,`class_section_status`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (2,1,2,8,4,25,0,'K V School','K V School','2018-04-17 21:53:49','2018-03-19 00:00:00'),(3,1,1,8,4,25,1,'K V School','K V School','2018-03-20 23:12:27','2018-03-19 00:00:00'),(4,4,1,10,4,40,1,'K V School','K V School','2018-04-08 22:20:27','2018-03-20 00:00:00'),(5,4,2,10,4,38,1,'K V School','K V School','2018-04-08 22:20:32','2018-03-20 00:00:00'),(6,5,1,10,4,42,1,'K V School','K V School','2018-03-20 00:00:00','2018-03-20 00:00:00'),(7,1,8,14,4,20,1,'K V School','K V School','2018-04-17 00:00:00','2018-04-17 00:00:00');


/*Table structure for table `group_info` */

DROP TABLE IF EXISTS `group_info`;

CREATE TABLE `group_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `school_id` int(10) unsigned NOT NULL,
  `mobile_num` varchar(255) DEFAULT NULL,
  `group_info_status` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) DEFAULT 'Admin',
  `updated_by` varchar(255) DEFAULT 'Admin',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `group_info` */
insert  into `group_info`(`id`,`group_id`,`user_id`,`school_id`,`mobile_num`,`group_info_status`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,2,25,4,'9841486644',1,NULL,NULL,'2018-05-16 16:24:15','0000-00-00 00:00:00'),(2,2,40,4,'9444295429',1,NULL,NULL,'2018-05-16 16:08:19','0000-00-00 00:00:00'),(3,3,13,4,'9444295427',1,'Admin','Admin','2018-05-16 16:22:53','0000-00-00 00:00:00'),(4,3,21,4,'9444295429',1,'Admin','Admin','2018-05-16 16:22:35','0000-00-00 00:00:00');


/*Table structure for table `group_master` */

DROP TABLE IF EXISTS `group_master`;

CREATE TABLE `group_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_type` varchar(255) NOT NULL,
  `group_status` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `group_master` */
insert  into `group_master`(`id`,`group_name`,`group_type`,`group_status`,`created_by`,`updated_by`,`created_at`,`updated_at`) values (1,'Staffs','Staffs',1,NULL,NULL,'2018-05-16 15:39:54','0000-00-00 00:00:00'),(2,'Parents of Students of PreKG(A)','Parents',1,NULL,NULL,'2018-05-16 15:40:16','0000-00-00 00:00:00'),(3,'Parents of Students of PreKG(B)','Parents',1,NULL,NULL,'2018-05-16 15:40:25','0000-00-00 00:00:00'),(4,'Parents of Students of LKG(A)','Parents',1,NULL,NULL,'2018-05-16 15:40:45','0000-00-00 00:00:00'),(5,'Parents of Students of LKG(B)','Parents',1,NULL,NULL,'2018-05-16 15:41:02','0000-00-00 00:00:00'),(6,'Parents of Students of UKG(A)','Parents',1,NULL,NULL,'2018-05-16 15:41:12','0000-00-00 00:00:00'),(7,'Parents of Students of UKG(B)','Parents',1,NULL,NULL,'2018-05-16 15:41:35','0000-00-00 00:00:00');

