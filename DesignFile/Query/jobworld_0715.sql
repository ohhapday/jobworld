/*
SQLyog Community v12.2.6 (64 bit)
MySQL - 5.6.24 : Database - jobworld
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jobworld` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jobworld`;

/*Table structure for table `ci_sessions` */

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values 
('0141a748220c926de518560b2d7026f02a1e6297','::1',1500097021,'__ci_last_regenerate|i:1500096187;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('082e289b64869022c5127515c58edc06a42a27c8','::1',1500092272,'__ci_last_regenerate|i:1500091972;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('0fbe5b2c9865448160aaf36947f10570c759526c','::1',1500094073,'__ci_last_regenerate|i:1500094073;'),
('120b10a3621aa44bb4093850a86b88ca7bf6af62','::1',1500095885,'__ci_last_regenerate|i:1500095585;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('1d642cdf84c09ef973803157dd0a813278a71008','::1',1500095886,'__ci_last_regenerate|i:1500095886;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('32d3828e25e2712925e81a04a69ebfb847fd428d','::1',1500097453,'__ci_last_regenerate|i:1500096158;'),
('340aa236f9079a04f2864d50491ba9e35e70a5de','::1',1500094080,'__ci_last_regenerate|i:1500093779;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('36541d5de4a5ba65928b67def57fa10a949f94a7','::1',1500092567,'__ci_last_regenerate|i:1500092267;'),
('39d398b4d201b2b84a88017702a75d59c1bd1027','::1',1500095284,'__ci_last_regenerate|i:1500094983;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('3da5f0e2231106f94385c22217a209dad681782e','::1',1500094374,'__ci_last_regenerate|i:1500094074;'),
('3dc42a6b6d8fe53cc71073daefbcd6842593ef20','::1',1500097326,'__ci_last_regenerate|i:1500097025;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('3dca4a1159d97c861aa0ff5f082f02cfd98f7ca1','::1',1500095554,'__ci_last_regenerate|i:1500095254;'),
('5164eec3c2ad6bfaddf666c1c443d0c5c9536b96','::1',1500092868,'__ci_last_regenerate|i:1500092568;'),
('54e8007a16f19f55d73ee65a665b979fe8a7101c','::1',1500091671,'__ci_last_regenerate|i:1500091370;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('55f8003f37f7ba51126fb58d2465321089fa44c3','::1',1500092573,'__ci_last_regenerate|i:1500092273;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('5d2cefc7b739808de97cb191494531033f8c6e85','::1',1500096186,'__ci_last_regenerate|i:1500095886;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('5d370359c0d957e782a40519693827088120a7ae','::1',1500094952,'__ci_last_regenerate|i:1500094652;'),
('5e0e0acc236478dcae7b9bdef28bedec3e36fe9a','::1',1500095855,'__ci_last_regenerate|i:1500095555;'),
('6a3399a10e51b8b443997dbd8e99de28848c90ae','::1',1500092875,'__ci_last_regenerate|i:1500092575;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('79f0cd059e2be2af05c143825f82f21d5451e38f','::1',1500091971,'__ci_last_regenerate|i:1500091671;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('7cffb733a9e44cca69448e8137c88229e3c80030','::1',1500094681,'__ci_last_regenerate|i:1500094381;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('7f1363b2b971b1c6ce58908e93621ab82896f4a1','::1',1500093469,'__ci_last_regenerate|i:1500093170;'),
('822a55721e9f0ddd9cdd4a25259930592ae5d00d','::1',1500096156,'__ci_last_regenerate|i:1500095856;'),
('872fd13790e7a623a1b0bffc06f7ab4f3edf4385','::1',1500095253,'__ci_last_regenerate|i:1500094953;'),
('8bf5a32ce05c7f00098436454d5f7dcf4a671971','::1',1500092266,'__ci_last_regenerate|i:1500091966;'),
('90c37ef01d81f7960eeb1af432cc935097d9145f','::1',1500094983,'__ci_last_regenerate|i:1500094682;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('9153737074e8e07cf10cb8bc0203ae1c1d342c30','::1',1500093176,'__ci_last_regenerate|i:1500092876;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('9e1054341354e24d0991d49c873ae537dd493c2a','::1',1500097554,'__ci_last_regenerate|i:1500097326;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('a020dff4ef40ce46f37ace330f24663a522e7ded','::1',1500092575,'__ci_last_regenerate|i:1500092575;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('a0b23550bcd6f744002608b2b42f0884097e7c60','::1',1500093771,'__ci_last_regenerate|i:1500093471;'),
('a224ee79e2fb9e1054d022c0ad23f96d30c7f33b','::1',1500094650,'__ci_last_regenerate|i:1500094650;'),
('b6c12e0347a256ef26d45e63db330a40e1fb0560','::1',1500093778,'__ci_last_regenerate|i:1500093478;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('c8e65f85667daa69ceb0dc8acbb974d21059c928','::1',1500091965,'__ci_last_regenerate|i:1500091665;'),
('cd7d31e7cd187808654785ffeb926c7e823bdc14','::1',1500093478,'__ci_last_regenerate|i:1500093177;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('d9e2304a199729d51162bbd8fe8a2b2b8b49117d','::1',1500091664,'__ci_last_regenerate|i:1500091364;'),
('da26c7ac1c815d051dbcffd074ed0237a9e69e64','::1',1500097554,'__ci_last_regenerate|i:1500097453;'),
('da5e1839ebff19de2e0b48e4411b5e74f49d6228','::1',1500094380,'__ci_last_regenerate|i:1500094080;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('f4f4c7218b3bac9f09c140ecaec5cd5c9c28db65','::1',1500094073,'__ci_last_regenerate|i:1500093772;'),
('fca6a5fbeb0f5a5b10bbf9db7c99169fd627e2a5','::1',1500095584,'__ci_last_regenerate|i:1500095284;EMPL_KEY|i:2;EMPL_NAME|s:5:\"teata\";MF_FG|s:1:\"M\";'),
('ffbcf158a5fd66fa8a12d8c2d86d05f784df234b','::1',1500093169,'__ci_last_regenerate|i:1500092869;');

/*Table structure for table `job010` */

DROP TABLE IF EXISTS `job010`;

CREATE TABLE `job010` (
  `STATUS` varchar(64) NOT NULL COMMENT '체험순서',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job010` */

insert  into `job010`(`STATUS`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
('{\"fund_STATUS\":\"0\",\"bond_STATUS\":\"0\",\"stock_STATUS\":\"1\"}','서정석','2017-04-14 11:06:37',NULL,NULL);

/*Table structure for table `job011` */

DROP TABLE IF EXISTS `job011`;

CREATE TABLE `job011` (
  `PG_LOCK` tinyint(1) NOT NULL DEFAULT '0' COMMENT '사용제한',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`PG_LOCK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job011` */

insert  into `job011`(`PG_LOCK`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(0,'서정석','2017-04-14 15:57:07',NULL,NULL);

/*Table structure for table `job012` */

DROP TABLE IF EXISTS `job012`;

CREATE TABLE `job012` (
  `DATA_TYPE` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '체험데이터',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`DATA_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job012` */

insert  into `job012`(`DATA_TYPE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
('','','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `job013` */

DROP TABLE IF EXISTS `job013`;

CREATE TABLE `job013` (
  `KOS_CODE` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '종합주가코드',
  `KOS_NAME` enum('KOSPI','KOSDAQ','KOSPI200') NOT NULL DEFAULT 'KOSPI' COMMENT '종합지수명',
  `KOS_DATE` int(11) NOT NULL COMMENT '종합지수일자',
  `KOS_RATE` float NOT NULL COMMENT '종합지수값',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job013` */

insert  into `job013`(`KOS_CODE`,`KOS_NAME`,`KOS_DATE`,`KOS_RATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
('1','KOSPI',1,2152,NULL,NULL,NULL,NULL),
('1','KOSPI',2,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',3,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',4,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',5,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',6,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',7,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',8,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',9,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',10,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',11,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',12,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',13,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',14,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',15,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',16,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',17,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',18,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',19,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',20,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',21,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',22,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',23,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',24,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',25,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',26,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',27,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',28,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',29,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',30,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',31,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',32,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',33,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',34,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',35,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',36,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',37,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',38,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',39,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',40,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',41,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',42,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',43,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',44,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',45,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',46,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',47,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',48,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',49,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',50,2153.98,NULL,NULL,NULL,NULL),
('2','KOSDAQ',1,633,NULL,NULL,NULL,NULL),
('2','KOSDAQ',2,631,NULL,NULL,NULL,NULL),
('2','KOSDAQ',3,629,NULL,NULL,NULL,NULL),
('2','KOSDAQ',4,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',5,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',6,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',7,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',8,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',9,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',10,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',11,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',12,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',13,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',14,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',15,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',16,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',17,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',18,625,NULL,NULL,NULL,NULL),
('2','KOSDAQ',19,628,NULL,NULL,NULL,NULL),
('2','KOSDAQ',20,630,NULL,NULL,NULL,NULL),
('2','KOSDAQ',21,632,NULL,NULL,NULL,NULL),
('2','KOSDAQ',22,635,NULL,NULL,NULL,NULL),
('2','KOSDAQ',23,640,NULL,NULL,NULL,NULL),
('2','KOSDAQ',24,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',25,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',26,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',27,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',28,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',29,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',30,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',31,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',32,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',33,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',34,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',35,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',36,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',37,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',38,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',39,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',40,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',41,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',42,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',43,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',44,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',45,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',46,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',47,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',48,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',49,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',50,625,NULL,NULL,NULL,NULL),
('3','KOSPI200',1,279,NULL,NULL,NULL,NULL),
('3','KOSPI200',2,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',3,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',4,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',5,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',6,285,NULL,NULL,NULL,NULL),
('3','KOSPI200',7,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',8,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',9,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',10,276,NULL,NULL,NULL,NULL),
('3','KOSPI200',11,278,NULL,NULL,NULL,NULL),
('3','KOSPI200',12,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',13,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',14,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',15,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',16,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',17,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',18,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',19,286,NULL,NULL,NULL,NULL),
('3','KOSPI200',20,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',21,294,NULL,NULL,NULL,NULL),
('3','KOSPI200',22,289,NULL,NULL,NULL,NULL),
('3','KOSPI200',23,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',24,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',25,285,NULL,NULL,NULL,NULL),
('3','KOSPI200',26,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',27,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',28,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',29,276,NULL,NULL,NULL,NULL),
('3','KOSPI200',30,278,NULL,NULL,NULL,NULL),
('3','KOSPI200',31,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',32,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',33,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',34,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',35,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',36,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',37,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',38,286,NULL,NULL,NULL,NULL),
('3','KOSPI200',39,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',40,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',41,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',42,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',43,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',44,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',45,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',46,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',47,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',48,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',49,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',50,291,NULL,NULL,NULL,NULL);

/*Table structure for table `job013_copy` */

DROP TABLE IF EXISTS `job013_copy`;

CREATE TABLE `job013_copy` (
  `KOS_CODE` enum('1','2','3') NOT NULL DEFAULT '1' COMMENT '종합주가코드',
  `KOS_NAME` enum('KOSPI','KOSDAQ','KOSPI200') NOT NULL DEFAULT 'KOSPI' COMMENT '종합지수명',
  `KOS_DATE` int(11) NOT NULL COMMENT '종합지수일자',
  `KOS_RATE` float NOT NULL COMMENT '종합지수값',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job013_copy` */

insert  into `job013_copy`(`KOS_CODE`,`KOS_NAME`,`KOS_DATE`,`KOS_RATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
('1','KOSPI',1,2152.03,NULL,NULL,NULL,NULL),
('1','KOSPI',2,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',3,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',4,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',5,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',6,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',7,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',8,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',9,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',10,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',11,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',12,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',13,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',14,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',15,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',16,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',17,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',18,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',19,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',20,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',21,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',22,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',23,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',24,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',25,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',26,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',27,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',28,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',29,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',30,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',31,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',32,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',33,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',34,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',35,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',36,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',37,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',38,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',39,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',40,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',41,2153,NULL,NULL,NULL,NULL),
('1','KOSPI',42,2130,NULL,NULL,NULL,NULL),
('1','KOSPI',43,2132,NULL,NULL,NULL,NULL),
('1','KOSPI',44,2140,NULL,NULL,NULL,NULL),
('1','KOSPI',45,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',46,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',47,2157,NULL,NULL,NULL,NULL),
('1','KOSPI',48,2151,NULL,NULL,NULL,NULL),
('1','KOSPI',49,2150,NULL,NULL,NULL,NULL),
('1','KOSPI',50,2153.98,NULL,NULL,NULL,NULL),
('2','KOSDAQ',1,630,NULL,NULL,NULL,NULL),
('2','KOSDAQ',2,631,NULL,NULL,NULL,NULL),
('2','KOSDAQ',3,629,NULL,NULL,NULL,NULL),
('2','KOSDAQ',4,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',5,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',6,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',7,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',8,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',9,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',10,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',11,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',12,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',13,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',14,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',15,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',16,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',17,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',18,625,NULL,NULL,NULL,NULL),
('2','KOSDAQ',19,628,NULL,NULL,NULL,NULL),
('2','KOSDAQ',20,630,NULL,NULL,NULL,NULL),
('2','KOSDAQ',21,632,NULL,NULL,NULL,NULL),
('2','KOSDAQ',22,635,NULL,NULL,NULL,NULL),
('2','KOSDAQ',23,640,NULL,NULL,NULL,NULL),
('2','KOSDAQ',24,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',25,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',26,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',27,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',28,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',29,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',30,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',31,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',32,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',33,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',34,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',35,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',36,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',37,618,NULL,NULL,NULL,NULL),
('2','KOSDAQ',38,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',39,619,NULL,NULL,NULL,NULL),
('2','KOSDAQ',40,599,NULL,NULL,NULL,NULL),
('2','KOSDAQ',41,580,NULL,NULL,NULL,NULL),
('2','KOSDAQ',42,590,NULL,NULL,NULL,NULL),
('2','KOSDAQ',43,592,NULL,NULL,NULL,NULL),
('2','KOSDAQ',44,600,NULL,NULL,NULL,NULL),
('2','KOSDAQ',45,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',46,608,NULL,NULL,NULL,NULL),
('2','KOSDAQ',47,610,NULL,NULL,NULL,NULL),
('2','KOSDAQ',48,615,NULL,NULL,NULL,NULL),
('2','KOSDAQ',49,620,NULL,NULL,NULL,NULL),
('2','KOSDAQ',50,625,NULL,NULL,NULL,NULL),
('3','KOSPI200',1,279,NULL,NULL,NULL,NULL),
('3','KOSPI200',2,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',3,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',4,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',5,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',6,285,NULL,NULL,NULL,NULL),
('3','KOSPI200',7,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',8,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',9,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',10,276,NULL,NULL,NULL,NULL),
('3','KOSPI200',11,278,NULL,NULL,NULL,NULL),
('3','KOSPI200',12,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',13,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',14,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',15,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',16,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',17,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',18,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',19,286,NULL,NULL,NULL,NULL),
('3','KOSPI200',20,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',21,294,NULL,NULL,NULL,NULL),
('3','KOSPI200',22,289,NULL,NULL,NULL,NULL),
('3','KOSPI200',23,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',24,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',25,285,NULL,NULL,NULL,NULL),
('3','KOSPI200',26,287,NULL,NULL,NULL,NULL),
('3','KOSPI200',27,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',28,280,NULL,NULL,NULL,NULL),
('3','KOSPI200',29,276,NULL,NULL,NULL,NULL),
('3','KOSPI200',30,278,NULL,NULL,NULL,NULL),
('3','KOSPI200',31,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',32,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',33,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',34,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',35,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',36,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',37,288,NULL,NULL,NULL,NULL),
('3','KOSPI200',38,286,NULL,NULL,NULL,NULL),
('3','KOSPI200',39,281,NULL,NULL,NULL,NULL),
('3','KOSPI200',40,283,NULL,NULL,NULL,NULL),
('3','KOSPI200',41,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',42,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',43,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',44,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',45,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',46,291,NULL,NULL,NULL,NULL),
('3','KOSPI200',47,295,NULL,NULL,NULL,NULL),
('3','KOSPI200',48,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',49,290,NULL,NULL,NULL,NULL),
('3','KOSPI200',50,291,NULL,NULL,NULL,NULL);

/*Table structure for table `job014` */

DROP TABLE IF EXISTS `job014`;

CREATE TABLE `job014` (
  `SECT_KEY` int(11) NOT NULL COMMENT '업종KEY',
  `SECT_CODE` varchar(2) DEFAULT NULL COMMENT '업종코드',
  `SECT_NAME` varchar(32) DEFAULT NULL COMMENT '업종명',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `CREDIT` varchar(5) DEFAULT NULL COMMENT '신용도',
  `NEWS_01` varchar(1024) DEFAULT NULL COMMENT '관련뉴스 1',
  `NEWS_01_CON` text,
  `NEWS_01_TAIL` varchar(1024) DEFAULT NULL,
  `NEWS_02` varchar(1024) DEFAULT NULL COMMENT '관련뉴스 2',
  `NEWS_02_CON` text,
  `NEWS_02_TAIL` varchar(1024) DEFAULT NULL,
  `NEWS_03` varchar(1024) DEFAULT NULL COMMENT '관련뉴스 3',
  `NEWS_03_CON` text,
  `NEWS_03_TAIL` varchar(1024) DEFAULT NULL,
  `NEWS_04` varchar(1024) DEFAULT NULL COMMENT '관련뉴스 4',
  `NEWS_04_CON` text,
  `NEWS_04_TAIL` varchar(1024) DEFAULT NULL,
  `NEWS_05` varchar(1024) DEFAULT NULL COMMENT '관련뉴스 5',
  `NEWS_05_CON` text,
  `NEWS_05_TAIL` varchar(1024) DEFAULT NULL,
  `COM_01` varchar(64) DEFAULT '회사영문명' COMMENT '회사영문명',
  `COM_02` varchar(64) DEFAULT '공시회사명' COMMENT '공시회사명',
  `COM_03` varchar(64) DEFAULT '대표자명' COMMENT '대표자명',
  `COM_04` varchar(64) DEFAULT '법인구분' COMMENT '법인구분',
  `COM_05` varchar(64) DEFAULT '법인등록번호' COMMENT '법인등록번호',
  `COM_06` varchar(64) DEFAULT '사업자등록번호' COMMENT '사업자등록번호',
  `COM_07` varchar(64) DEFAULT '주소' COMMENT '주소',
  `COM_08` varchar(64) DEFAULT '홈페이지' COMMENT '홈페이지',
  `COM_09` varchar(64) DEFAULT 'IR홈페이지' COMMENT 'IR홈페이지',
  `COM_10` varchar(64) DEFAULT '전화번호' COMMENT '전화번호',
  `COM_11` varchar(64) DEFAULT '팩스번호' COMMENT '팩스번호',
  `COM_12` varchar(64) DEFAULT '업종명' COMMENT '업종명',
  `COM_13` varchar(64) DEFAULT '설립일' COMMENT '설립일',
  `COM_14` varchar(64) DEFAULT '결산월' COMMENT '결산월',
  PRIMARY KEY (`SECT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job014` */

insert  into `job014`(`SECT_KEY`,`SECT_CODE`,`SECT_NAME`,`COMP_CODE`,`COMP_NAME`,`CREDIT`,`NEWS_01`,`NEWS_01_CON`,`NEWS_01_TAIL`,`NEWS_02`,`NEWS_02_CON`,`NEWS_02_TAIL`,`NEWS_03`,`NEWS_03_CON`,`NEWS_03_TAIL`,`NEWS_04`,`NEWS_04_CON`,`NEWS_04_TAIL`,`NEWS_05`,`NEWS_05_CON`,`NEWS_05_TAIL`,`COM_01`,`COM_02`,`COM_03`,`COM_04`,`COM_05`,`COM_06`,`COM_07`,`COM_08`,`COM_09`,`COM_10`,`COM_11`,`COM_12`,`COM_13`,`COM_14`) values 
(1,'01','제약','009290','광동제약','AA','광동제약, 지난해 매출 1조564억원…1조 클럽 가입','광동제약이 지난해 연결기준 매출액 1조원을 달성해 국내 제약업계 \'1조클럽\'에 이름을 올린다.\r\n광동제약은 27일 정기 주주총회에 앞서 공개하는 참고서류를 통해 지난해 연결 기준 매출액이 1조564억원으로 전년 대비 약 10.6% 증가했다고 공시했다. \r\n같은 기간 영업이익은 443억8900만원, 순이익은 279억원으로 집계됐다. \r\n광동제약은 다음 달 17일 정기주주총회를 열어 재무제표 및 연결재무제표를 승인한다.\r\n회사 측은 \"2015년에 인수한 소모성자재구매대행(MRO) 업체 코리아이플랫폼이 전체 실적 개선을 이끌었다\"고 밝혔다.','[ 머니투데이 ㅣ 최동수 기자 ]','광동제약 매출 1조 클럽 가입','광동제약이 종합 헬스케어 기업으로 발빠르게 변신하고 있다. \r\n의약품 중심에서 음료, 기업소모성자재(MRO) 등으로 사업을 다각화하면서 성장 속도를 끌어 올리고 있다. \r\n지난해 매출 1조원을 넘기며 제약업계 3위에 올라섰다. \r\n비제약 부문으로 영역을 넓혀 수익 기반을 탄탄하게 다지고 이를 토대로 제약 사업을 강화한다는 전략이다.','[한국경제 ㅣ 김근희 기자]','광동제약 생수시장 점유율 1위','유한양행과 녹십자, 한미약품으로 대변되는 \'제약 빅3\'의 멤버가 바뀔 것으로 보인다.\r\n제약업계에 따르면 유한양행과 녹십자는 \'빅3\' 자리를 유지할 것으로 보인다. \r\n지난 2015년 매출 1위를 기록했던 한미약품은 지난해 전년 대비 33% 급감한 8827억원의 매출을 올려 4위로 내려앉을 전망이다. \r\n사노피와의 당뇨 신약 기술수출 계약이 수정돼 계약금 2500억원을 반환하는 것이 결정적 요인이다. \r\n다만 기술료 수입을 제외한 나머지 매출은 8550억원으로 전년 대비 6.2% 개선된 것이 위안거리다. \r\n한미약품이 빠진 \'제약 빅3\'의 빈 자리는 광동제약이 차지할 것으로 전망된다.  광동제약은 주주총회 약 일주일 전인 다음달 10일 전후에야 지난해 실적을 발표할 계획이다. ','[매일경제 ㅣ 윤호 기자]','광동제약 비타500 신화 재 도약으로 성장','비타민C의 항산화작용이 스트레스 억제에 효과가 있는 것으로 연구를 통해 확인됐다.\r\n광동제약은 고려대학교 식품영양학과의 서형주 교수팀이 진행한 \'비타민C 음료와 카페인 음료의 초파리 수명연장 및 산화스트레스 제거효능 비교활성 분석\' 연구에서 비타민C가 산화스트레스로부터 보호효과를 나타냈으며 생체리듬 안정성 유지, 체내 활성을 증가시키는 효과가 있음을 확인했다고 밝혔다. \r\n이번 연구 결과는 관련 국외 전문 학술지에 논문으로 발표될 예정이다.','[한국경제 ㅣ 한민수 기자] ','광동제약 사업구조 개선으로 실적 기대',NULL,NULL,'KWANGDONG PHARMACEUTICAL CO.,LTD','광동제약㈜\r\n','최성원\r\n','유가증권시장','110111-0152134','113-81-08888','서울특별시 서초구 서초중앙로 85 가산빌딩','www.ekdp.com','','02-6006-7777\r\n','02-6006-7021\r\n','한의약품 제조업\r\n','1963-10-16\r\n','12월\r\n'),
(2,'01','제약','249420','일동제약','BB','당뇨병 치료 신약 \'제미글로\', 월 처방액 60억 돌파','대웅제약은 국내에서 개발한 최초의 당뇨병 치료 신약 \'제미글로\'가 월 처방액 60억원을 돌파 했다고 5일 밝혔다.\r\n의약품 조사기관 유비스트에 따르면 LG화학 제미글로의 원외처방액은 월 60억원을 넘어섰다. \r\n지난해 1월 대웅제약과 공동영업 계약을 체결한 이후 처방액이 급증하기 시작했다는 설명이다.\r\n제미글로의 월 처방액은 지난 5월 62억원을 기록하며 지난해 1월 31억원보다 2배 성장했다.\r\n제미글로의 성장은 우수한 제품성과 대웅제약의 강력한 영업력의 시너지 효과라고 회사 측은 전했다. \r\n대웅제약은 과거에도 제미글로와 같은 \'DDP-4\' 억제제 계열 약물을 1000억원대 대형 품목으로 키운 바 있다.','[한국경제 ㅣ한민수 기자]','메디톡스, 미국서 대웅제약에 소송 제기…대웅제약 7%↓','대웅제약 주가가 급락하고 있다. 메디톡스가 미국에서 대웅제약이 이 회사의 보툴리눔 균주를 도용했다는 내용의 소송을 제기했기 때문이다. \r\n대웅제약은 전날보다 7.70% 내린 가격에 거래되고 있다. \r\n이번 소송의 진행 여부에 따라 대웅제약의 보툴리눔 톡신 제제인 \'나보타\'의 미국 출시가 늦어질 수 있다는 우려 때문으로 풀이된다. \r\n업계에 따르면 메디톡스는 미국 캘리포니아주 오렌지카운티 법원에 대웅제약과 대웅제약의 미국 협력사 알페온 등에 지적재산권 반환 민사소송을 제기했다. \r\n만약 소송에서 대웅제약이 패소한다면, 나보타의 미국 허가가 지연될 수 있다는 관측이 나온다. ','[한경닷컴 ㅣ 한민수 기자]','대웅제약, 올 전망치 하향..목표가↓','대우증권은 대웅제약에 대해 향후 실적 추정치를 하향수정하고 목표주가도 낮췄다. \r\n김현태 연구원은 “올메텍 및 신제품 제품 매출 전망이 당초보다 낮고, 신제품에 의한 제품 믹스 개선 효과가 낮아질 것”이라며 실적 전망치를 낮췄다.\r\n올해 실적의 경우 매출은 종전 7582억원에서 7410억원으로, 영업이익은 824억원에서 727억원으로 하향조정했다. \r\n그는 다만 “고마진의 코프로모션 매출 호조, 자체 개발 제품 나보타, 올로스타 등의 신규 매출 본격화 등으로 제품 믹스가 개선되면서 내년 이익 개선이 가능할 것”이라며\r\n“나보타의 해외 판권계약 확대 및 미국 임상 개발 진전으로 상위 제약사와의 밸류에이션 갭 축소가 가능하다”고 덧붙였다.\"','[이데일리 ㅣ 김세형 기자]','대웅제약의 추락은 2위의 저주?','공격적 영업력을 바탕으로 업계 2위까지 올랐던 대웅제약이 약가인하 악재에 허무하게 무너지는 모양새다. 3분기 연속 마이너스 성장에, 업계 순위는 4위까지 내려갔다.\r\n제약업계에 따르면 대웅제약의 매출액은 1733억원으로 전년 동기 대비 -2.4%를 기록했다. \r\n영업이익도 95%나 감소해 1일까지 잠정실적을 발표한 10대 제약사 중 최악의 성적을 냈다. \r\n이 같은 추세는 벌써 3분기째 지속 중이다. 지난해 4분기 -0.9%, 올 1분기 -0.4%에 이어 3분기 연속 마이너스 성장이다. \r\n대웅제약의 고전은 약가인하 조치가 논의되던 지난해부터 예견됐다. 외국약 판매대행 사업 비중이 커 약가인하에 취약하고 원가비중이 높다는 특징 때문이다. \r\n경쟁사들이 사업 영역을 넓혀 매출을 소폭 상승시키고 있으나, 대웅제약은 눈에 띄는 신사업도 없다. ','[아시아경제 ㅣ 신범수 기자]','일종제걍 미국 제약회사와 계약 실패',NULL,NULL,'IL DONG PHARMACEUTICAL CO., LTD.','일동제약','윤웅섭','유가증권시장','110111-6139277','803-88-00431','서울특별시 서초구 바우뫼로27길 2','www.ildong.com','','02-526-3114','02-526-3045','완제 의약품 제조업','2016/08/01','12월'),
(3,'02','석유화학','011170','롯데케미칼','B','롯데케미칼, 롯데손해보험과 80억원 규모 계약 체결','롯데케미칼은 계열사인 롯데손해보험과 80억2900만원 규모 재산종합보험 계약을 체결했다고 27일 공시했다. 약정기간은 오는 7월1일부터 1년간이다.\r\n롯데케미칼 측은 “사업장의 화재 등 사고로 인한 재물손실위험, 기계위험, 기업휴지손해, 법률상 제3자 배상책임위험 등 제반 기업위험을 예방하기 위해 손해보험에 가입한 것”이라고 설명했다.','[ 이데일리ㅣ 성문재 기자 ] ','화학업종 장밋빛','업황이 개선되고 있는 화학업종에 대한 증권사의 추천이 이어지고 있다. \r\n본격적인 성수기를 맞아 제품가격 상승의 영향이 화학주 주가를 끌어올리는데다 석유수출기구(OPEC)의 감산도 긍정적이라는 분석이다. \r\n하반기 미국 경기 둔화와 경쟁업체의 증산 등이 우려되지만 당분간 화학업종이 주가 상승을 주도할 것이라는 기대감이 큰 상황이다.\r\n원유가격이 상승하고 하락했던 화학제품 가격이 정상화되자 주요 종목들의 주가가 오름세를 탔기 때문이다.\r\n삼성증권은 “OPEC이 감산을 연장할 가능성이 높아져 화학제품에 대한 투자심리 호조세가 지속될 것”이라며 롯데케미칼(011170)·대한유화(006650)를 우선 추천종목으로 지목했다.','[ 서울경제 ㅣ 김광수 기자 ]','롯데케미칼, 中 수요 부진에 실적 악화···목표가 ↓','롯데케미칼이 올해 중국수요 감소로 부진한 실적을 나타낼 전망이다. \r\n신한금융투자는 롯데케미칼에 대해 “연초 중국의 과도한 재고 확충 후유증으로 수요가 부진해 2·4분기 영업이익이 20% 이상 감소할 것”며 목표주가를 45만원으로 하향 조정했다. \r\n투자의견은 현 주가를 바닥 수준이라고 판단해 ‘매수’를 유지했다. \r\n이응주 연구원은 “주가는 2월 고점 대비 17%하락했다”며 “하반기 경기 회복이 가시화 하면 주가는 상승 반전이 가능하다”고 말했다. \r\n또한 “미국발 공급 과잉으로 2019년까지 시황이 하강할 수 있지만 롯데케미칼이 지속적으로 공장을 증설하고 있어 성장주로 인식되고 있다”고 말했다. ','[서울경제 ㅣ 서지혜 기자]','롯데케미칼·포스코, 실적 1등인데 주가는 영 ~','올해 1분기 화학과 철강 업종 1등 종목인 롯데케미칼과 포스코의 주가가 최근 오히려 하락해 주식시장의 궁금증이 커지고 있다. \r\n전문가들은 이익 급증을 이끈 핵심 제품 가격이 최근 하락세를 보이면서 이것이 주가 부진으로 연결되고 있다는 분석을 내놓는다. \r\n롯데케미칼은 올 1분기 8152억원의 영업이익을 올렸다고 지난달 공시했다. 분기 기준 사상 최대 실적이며 같은 기간 LG화학의 영업이익(7969억원)을 뛰어넘는 화학 업계 1위 기록이다. \r\n이 같은 \'깜짝 실적\'은 주력제품 중 하나인 부타디엔 가격이 지난 2월 t당 2931달러까지 급등하며 작년 2월에 비해 무려 3.3배나 올랐기 때문이다. \r\n부타디엔은 타이어 원료로 기초화학 제품을 뜻하는 올레핀 계열에 속한다. 롯데케미칼 전체 영업이익에서 올레핀 부문 이익 기여도는 65%에 달한다. \r\n이런 \'효자제품\'인 부타디엔 가격이 지지난달 하락하기 시작했고 지난달 t당 1375달러 선으로 2개월 새 반 토막이 난 것이다. \r\n','[매일경제 ㅣ 문일호 기자]','롯데케미칼 자금난으로 합병 추진',NULL,NULL,'LOTTE CHEMICAL CORPORATION','롯데케미칼㈜','김교현','유가증권시장','110111-0193196','118-81-15012','서울특별시 동작구 보라매로5길 51 롯데타워 11층','www.lottechem.com','','02-829-4114','09)843-1010','석유화학계 기초화학물질 제조업\r\n','1976-03-16\r\n','12월'),
(4,'02','석유화학','009830','한화케미칼','A ','한화케미칼, 올해 사상최대 실적 전망에 주가 ‘들썩’','한화케미칼이 올해 사상 최대 실적을 낼 것으로 기대되면서 5일 장 초반 강세다.\r\n유가증권시장에서 한화케미칼은 전날보다 2.08% 오른 가격에 거래되고 있다.\r\n이응주 신한금융투자 연구원은 “2017년 영업이익은 8294억원으로 사상 최고 수준이었던 전년도 수치(8171억원)을 능가할 것”이라고 말했다.\r\n이어 “PVC(폴리염화비닐)의 경우 공급 과잉인 중국의 구조조정, 인도의 수요 증가로 구조적 호황이 기대된다”며 “가성소다(수산화나트륨) 역시 수요증가와 중국 공급 감소로 가격이 상승 \r\n추세로 돌아서고 있고, TDI(연성 폴리우레탄 원료) 가격도 급등했다”고 말했다.\"','\r\n[헤럴드경제 ㅣ이은지 기자] ','한화케미칼, 차세대 친환경 가소제 생산\r\n','한화케미칼이 인체에 해로운 물질을 제거한 차세대 친환경 가소제인 \'에코 데치\' 생산을 시작한다고 밝혔다. 가소제는 플라스틱을 유연하게 만들기 위해 첨가하는 물질이다.  \r\n그러나 프탈레이트 성분의 유해성 논란으로 벽지, 바닥재, 완구류 등 일부 제품에는 사용이 제한됐다. \r\n대안으로 DOTP(디옥틸테레프탈레이트) 제품이 사용되고 있지만 품질이 떨어지는 단점을 가지고 있다. \r\n이에 한화케미칼은 8년 간의 연구 끝에 친환경 가소제를 독자 개발했다. \r\n신제품은 수소첨가 기술을 적용해 프탈레이트 성분 없이 품질을 개선한 것이 특징이다. \r\nDOTP에 비해 적은 량으로도 가공이 가능하고, 흡수가 빨라 가공이 쉽다. 자외선 안정성이 우수해 외부에 설치되는 제품에도 사용이 적합하며 내한성을 개선해 낮은 온도에서 얼지 않는다는 것이 회사 측의 설명이다.','[세계일보 ㅣ 정지혜 기자]','한화케미칼, 웅진에 폴리실리콘 공급','한화케미칼이 웅진에너지에 3250억원어치의 폴리실리콘(태양전지 소재)을 공급한다. \r\n또 웅진에너지에 100억원을 투자해 이 회사 2대 주주에 오른다. 한화케미칼은 웅진에너지에 올해부터 4년간 총 3250억원어치의 폴리실리콘을 공급하는 계약을 맺었다고 밝혔다. \r\n지난해 한화케미칼 매출의 3.5% 규모다. 또 웅진에너지가 추진하는 제3자배정 유상증자에 100억원을 투자해 지분 8.04%를 확보할 예정이다. \r\n이렇게 되면 한화케미칼은 22% 지분을 가진 (주)웅진에 이어 웅진에너지 2대 주주가 된다.\r\n이번 거래는 폴리실리콘 내수 판매처를 확보하려는 한화케미칼과 시설투자 자금을 확보하려는 웅진에너지의 이해관계가 맞아떨어지면서 이뤄졌다. \r\n한화케미칼은 폴리실리콘 생산물량의 70% 이상을 중국에 팔고 있다. ','[한국경제 ㅣ 주용석 기자]','주춤한 화학주.. 반등은 언제쯤','업황 호조로 올 상반기 잘나가던 \'화학주\'들이 3.4분기 실적발표 시즌을 지나면서 주춤거리고 있다. \r\n주요 화학사들중 롯데케미칼을 제외한 한화케미칼, 롯데정밀화학, 금호석유화학 등은 3.4분기에 모두 부진한 실적을 기록했다.\r\n증권사들은 이번분기에 저점을 확인한 주요 화학사들의 4.4분기를 지나면서 회복 국면에 접어들수 있을지에 주목하고 있다.','[파이낸셜뉴스 ㅣ안승현 기자]','한화케미칼 그룹 실적 전년도와 동일',NULL,NULL,'HanwhaChemical','한화케미칼㈜','김창범','유가증권시장','110111-0360935','202-81-16577','서울특별시 중구 청계천로 86 한화빌딩','hcc.hanwha.co.kr','','02-729-2700','02-729-2731','석유화학계 기초화학물질 제조업','1974-04-27','12월'),
(5,'03','식품/유통','007310','오뚜기','A','\"오뚜기, 전 사업부 고른 성장 기대\"…목표가 ↑','IBK투자증권은 오뚜기에 대해 전 사업부가 고르게 성장하면서 안정적 실적을 거둘 것으로 예상했다. \r\n김태현 IBK투자증권 연구원은 \"2분기 연결 기준 매출액은 전년 동기 대비 3.7% 증가한 \r\n5059억원, 영업이익은 5.1% 늘어난 425억원을 기록할 것\"이라며 이같이 밝혔다.\r\n3분 요리 식품과 즉석밥, 냉동피자 등 가정간편식 부문이 실적을 끌어올린 것으로 예상됐다. \r\n면제품류 \'함흥비빔면\', \'콩국수 라면\' 등 신제품을 출시하면서 취약했던 여름상품군을 보완할 것으로 기대됐다. \r\n두 신제품의 월평균 매출액은 15억원, 3억원 수준으로 집계됐다.\r\n김 연구원은 \"라면 업황 호조에 따라 하반기 면류 부문의 실적이 증가할 것\"이라며 \"지난해 부진했던 소스와 유지 부문도 올 들어 회복세가 나타났다\"고 말했다. \r\n이어\"사업 포트폴리오의 안정성이 중장기 성장을 견인할 것\"이라고 내다봤다.','[디지털뉴스국 이가희 기자]','오뚜기, 여름철 대표 음식 \'콩국수 라면\' 출시','오뚜기(007310)는 신제품 ‘콩국수 라면’을 출시했다고 26일 밝혔다.\r\n콩국수라면은 여름철 대표적인 음식인 콩국수의 맛을 그대로 느낄 수 있으며, 콩국수의 식감을 재현한 쫄깃하고 찰진 면발과 진하고 고소한 콩국물이 특징으로 전문점 콩국수의 맛을 가정에서도 간편하게 맛볼 수 있는 제품이다. \r\n콩국수라면은 매운 비빔면 일색인 다른 여름철 라면들과 차별화된 제품으로, 무더운 여름 시원한 국물이 생각날 때 먹기 좋은 제품이다.\r\n진한 콩국물의 고소한 맛을 재현한 분말스프에 볶은 참깨와 볶은 검은깨를 넣어 보임성을 향상 시켰으며, 쫄깃한 면과 함께 참깨가 씹히면서 한층 더 깊은 콩국수의 고소함을 느낄 수 있다.','[ 이데일리ㅣ 김태현 기자 ]','오뚜기 꾸준한 성장...음식료 대형주로 \'쑥\'','오뚜기가 케첩·마요네즈 등 음식료 니치마켓의 강자에서 가정간편식(HMR)·라면·피자 등으로 사업 영역을 넓히며 음식료 업종 대형주로 업그레이드하고 있다. \r\n소비자들 사이에서 ‘갓뚜기(신을 뜻하는 갓(God)과 오뚜기의 합성어)’로 불리며 ‘착한 기업’ 이미지를 구축한 오뚜기는 실적에서도 안정적인 성장으로 투자자들의 관심이 집중되고 있다.\r\n13일 한국거래소에 따르면 올 초 대비 오뚜기의 주가 상승률은 33.38%로 음식료 업종 가운데서 가장 두드러진다. 같은 기간 음식료 대장주인 CJ제일제당은 4.04%, 농심은 10.75% 오르는 데 그쳤다. 주당 가격에서 이미 경쟁업체들을 멀찌감치 따돌린 데 이어 주가 상승률에서도 압도적인 모습을 보여줬다. 시장 전문가들은 오뚜기의 가장 큰 매력으로 지속성을 꼽는다.','/서민우기자 ingaghi@sedaily.com','혼밥 수혜주 오뚜기, 주가는 먹구름','대표적인 혼밥(혼자먹는 밥) 수혜주인 오뚜기 주가가 연일 하락세다. \r\n올초까지만 해도 고공행진을 이어온 오뚜기 주가는 최근 고점 대비 반토막 이상 하락한 상태다. \r\n27일 한국거래소에 따르면 올해 2월까지만해도 황제주로 군림한  오뚜기는 주가는 최고가 대비 53.69% 하락했다.\r\n한때 기관들의 러브콜을 받은 종목이지만 최근 6개월간은 기관 매도세가 끊이질 않고 있다. \r\n일종의 인스턴트식품인 가정식대체식품(HMR) 시장의 강자라는 점, 진짬뽕 등 프리미엄 라인을 보유한 라면 2위 업체라는 점도 주가 상승 동력이 되지 못하고 있다.\r\n증권사 리서치센터에서도 오뚜기 목표주가를 내리는 추세다. ','[뉴스핌 Newspim ㅣ 백현지 기자]','오뚜기 기업가치 1분기와 동일',NULL,NULL,'OTTOGI CORPORATION','㈜오뚜기','함영준, 이강훈','유가증권시장','134111-0002258','138-81-03238','경기도 안양시 동안구 흥안대로 405','www.ottogi.co.kr','','031-421-2122','02)528-1970','기타 식품 첨가물 제조업','1971-06-03','12월'),
(6,'03','식품/유통','028260','한국맥널티','AA','\"한국맥널티, 커피·제약 사업부 순항 중\n\"','HMC투자증권은 25일 한국맥널티에 대해 \"양대 사업부인 커피·제약CMO 사업 모두 주가의 시세가 내리지 않고 높은 상태를 유지하고 있다.\"고 평가했다.\r\n조용선 HMC투자증권 연구원은 \"한국맥널티는 초미세분쇄 기술과 급속동결 기술에 기반해 양대 사업부에 다른 업체와 차별화된 강점을 갖고 있다\"며 \"니치마켓(수요가 비어있는 시장)을 공략해 거래선을 점진적으로 확대할 수 있을 것\"이라고 말했다. \r\n그는 \"커피사업부의 경우 오랜 노하우로 극저온·초미세 공법을 가미한 브랜드 라인업을 구축하고 있어 프리미엄 원두커피 고성장세와 더불어 직접적 수혜가 부각될 것\"이라고 말했다. \r\n\"해당 사업부에서는 커피 제조에 쓰이는 급속동결 FD 기술과 초미세분쇄 기술에 기반한 신제품과 건기식 품목군으로도 사업을 확장할 계획을 갖고 있어 중단기적으로 실적 증가로 주가 재평가가 가능할 것\"이라고도 내다봤다.','[머니투데이 ㅣ 백지수 기자]','\"한국맥널티, 커피·제약 다 좋네\n\"','커피 및 의약품 제조업체인 한국맥널티 주가가 연일 오름세다.\r\n올해 실적 개선세가 뚜렷할 것이라는 전망이 상승 재료로 작용했다. 김승 SK증권 연구원은 “커피 판매 유통망 다변화와 이전을 완료한 제약공장 정상화에 따른 실적 개선 등으로 올해 본격적인 성장기에 진입할 것”이라고 말했다. 이어 “액상커피와 아이스커피 녹차 홍삼 등으로 제품 다변화를 꾀하고 있다는 점도 긍정적”이라고 덧붙였다. \r\n유진투자증권은 한국맥널티가 올해 본격적으로 해외 수출을 늘릴 것으로 예상했다.\r\n박종선 유진투자증권 연구원은 “최근 한국맥널티의 주가 조정 기간을 매수 기회로 포착한 기관투자가들이 대거 주식을 사들이면서 주가가 반등했다”며 “미국 대만 싱가포르 등에 진출한 데 이어 올해는 중국 판매망이 크게 늘어날 것”이라고 내다봤다.','[한국경제 ㅣ 민지혜 기자]','한국맥널티, 건강식품 관련 신규사업 본격화','국내 원두커피 대표기업인 한국맥널티(대표:이은정)는 주력사업인 커피 관련사업, 제약사업에 이어 건강식품 관련 신규사업을 본격화한다고 19일 밝혔다.\r\n한국맥널티가 보유중인 CMGT공법은 영양소 파괴 없이 원물의 영양과 맛을 그대로 살려 분말을 만들어내는 기법이다. 극저온초미세기법의 제품은 바쁜 현대인을 위한 간편식 및 식사대용식의 방안으로 특히 미래 식량 분야의 핵심적인 기술로 알려졌다.\r\n이에 한국맥널티 이은정 대표는 \"1인 가족이 27％를 넘어서는 핵가족시대, 여성의 사회활동 증가 등 여러 시대적 상황으로 풍부한 영양 성분을 갖춘 간편식 건강식품이 주목받고 있다\"고 말했다.\r\n또한, 이은정 대표는 \"전형주 교수와의 공동연구와 차별화된 CMGT공법을 통한 건강식품 출시로 기존의 안정적인 커피 사업부, 미래성장동력인 제약사업과 함께 회사의 미래성장비젼과 더불어 매출과 수익성을 극대화할 것\"이라고 포부를 밝혔다.','[연합뉴스]','한국맥널티_주가와 투자심리는 약세, 거래량은 침체\r\n','전일대비 1.2% 하락한 한국맥널티는 지난 1개월간 7.87% 하락했다. \r\n이는 식품업종내에서 주요종목들과 비교해볼 때 한국맥널티의 월간 변동성은 작았지만, 주가가 마이너스를 기록하면서 주가등락률도 주요종목군 내에서 가장 낮은 수준을 유지했다는 것이다. \r\n최근 1개월을 기준으로 한국맥널티의 위험을 고려한 수익률은 -7.1을 기록했는데, 변동성은 상대적으로 낮지만 주가가 약세를 보였기 때문에 위험대비 수익률은 가장 저조한 모습을 나타냈다. 하지만 음식료,담배업종의 위험대비수익률인 -8.3보다는 높기 때문에 업종대비 성과는 좋았다고 할 수 있다. \r\n다음으로 업종과 시장을 비교해보면 한국맥널티가 속해 있는 음식료,담배업종은 코스닥지수 보다 변동성은 높고, 등락률은 낮은 모습이다. 하락할 때 지수보다 탄력을 받고 있다는 의미이다.','[ ET투자뉴스 ㅣ 증시분석 전문기자 ]','삼성물산 사흘째 상승 고공 행진중',NULL,NULL,'SAMSUNG C&T CORPORATION','삼성물산㈜','최치훈, 김신, 김봉영','유가증권시장','110111-0015762','202-81-45975','서울특별시 송파구 올림픽로35길 123-','www.samsungcnt.com','','02-2145-5114','','기타 전문 도매업','1963-12-23','12월'),
(7,'04','건설/조선','000720','현대건설','B','현대건설, 하반기 해외 수주 증가 기대...목표가↑','HMC투자증권은 현대건설에 대해 올 하반기 해외 수주가 늘어날 것이라며 목표주가를 상향 조정했다. \r\n투자의견은 ‘매수’를 유지했다. \r\nHMC투자증권 연구원은 “현대건설 1분기 영업이익은 2286억원으로 지난해 같은 때보다 10.4% 증가했다”며 “시장 기대치에 부합하는 양호한 실적”이라고 설명했다. \r\n연구원은 “하반기 중동과 아시아에서 오일·가스, 석탄화력발전소 등 수주를 기대한다”며 “신흥시장에서도 인프라 및 정유공장 수주 기대감이 유효하다”고 분석했다.\r\n이어 그는 “하반기 해외 수주 기대감과 실적의 안정적인 개선을 고려하면 현대건설의 주가는 우상향할 것”이라고 덧붙였다.','[이데일리 박정수 기자] ','현대건설 싱가포르 매립공사 잇달아 수주','현대건설이 싱가포르에서 2700억원 규모의 해상 매립공사 2건을 잇달아 수주하는 성과를 올렸다. \r\n현대건설은 싱가포르에서 1억6200만 달러(원화 1840억원) 규모의 \'투아스 지역 서부 매립공사\'와 7400만 달러(원화 840억원) 규모의 \'창이 지역 동부 매립공사\'를 수주했다고 21일 밝혔다. 이번에 수주한 투아스 지역 서부 매립공사는 싱가포르 주롱타운공사(JTC)가 발주한 해상 매립공사다. 공기는 올해 7월중 착공해 향후 57개월간 진행될 예정이다.\r\n창이 지역 동부 매립공사는 공공주택청(HDB)이 발주해 창이공항 확장 및 관련 도로 이설을 위한 창이공항 남동쪽 부지 매립공사다. 공기는 24개월이다.\r\n현대건설은 지난 1981년 풀라우 테콩 매립공사를 시작으로 싱가포르에 진출한 이래 국토의 6%에 해당하는 부지를 성공 매립했다. 공사 규모는 총 55건, 98억 달러에 달한다.','[파이낸셜뉴스 ㅣ 임광복 기자]','현대건설, 금감원 감리 착수 소식에 ‘하락세’','금융감독원이 현대건설과 외부감사인인 딜로이트안진회계법인에 대한 감리에 착수했다는 소식에 현대건설 주가가 하락세를 보이고 있다.\r\n이날 한 언론은 금감원이 지난 4일 현대건설에 ‘미청구 공사대금, 공사 원가 추정치 등과 관련된 모든 자료를 제출하라’고 통보했다고 보도했다. \r\n동시에 딜로이트안진회계법인에 대해서도 최근 5년치 현대건설 감사 보고서의 감사를 담은 자료를 제출해달라고 요청했다고 전했다.','[아시아경제 ㅣ 권성회 기자]','현대건설, 실적 양호하지만 수주 부진-하나','하나금융투자는 현대건설에 대해 올 3분기 실적이 양호하지만 수주 측면에서 부진했다며 목표주가를 하향조정했다. 투자의견은 \'매수\'를 유지했다.\r\n현대건설은 올 영업이익이 2664억원으로 전년동기 대비 14.6% 증가했다고 공시했다. \r\n같은 기간 매출은 4조7000억원, 지배지분순이익은 1052억원으로 각각 10.6%, 17.8% 늘어났다.\r\n다만 누적 수주 규모는 15조원으로 지난해보다 감소했고, 본사의 합산수주가 전년누적 11조원에서 5조5000억원으로 감소했다. \r\n이에대해 연구원은 \"해외건설 수주 총액이 지난해 대비 최소 25%이상 줄어들 것으로 예상된다\"며 \"향후 해외수주 감소에 따른 매출감소가 있을 것\"이라고 예상했다.','[머니투데이 ㅣ 김평화 기자]','현대건설 미분양 아파트 속출',NULL,NULL,'HYUNDAI ENGINEERING & CONSTRUCTION CO.,LTD\r\n','현대건설㈜\r\n','정수현','유가증권시장','110111-0007909','101-81-16293','서울특별시 종로구 율곡로 75','www.hdec.co.kr','','02-746-1114','02-746-4846','도로 건설업','1950-01-10','12월'),
(8,'04','건설/조선','042660','두산엔진','AA','두산엔진, 선박엔진 수주 규모 증가에 상승세','하나금융투자 연구원은 \"두산엔진의 올해 2분기 선박엔진 수주실적은 약 1000억원으로 전망된다\"며 \"이는 전분기 290억원에 비해 3.5배 늘어나는 수준\"이라고 밝혔다.\r\n연구원은 \"조선소들의 선박 수주량이 지난해 하반기서부터 재개된 것을 고려하면 두산엔진의 수주실적은 올해 2분기부터 본격적으로 늘어나게 된다\"며 \"두산엔진의 올해 연간 수주실적은 최소 4800억원 이상으로 전망되며 하반기로 갈수록 크게 늘어나게 될 것\"이라고 전망했다.\r\n그는 가격이 높은 이중연료 추진엔진 수요가 높아지고 있다는 점에서 두산엔진의 실적 회복 속도는 더욱 높아질 것으로 내다봤다.','[한경닷컴 ㅣ정형석  기자]','두산엔진, 대형엔진 생산 33년만에 1억마력 돌파','두산엔진은 경남 창원 본사 조립공장에서 11G95ME-C타입의 10만3000마력급 엔진 시운전에 성공해, 선박용 대형엔진 생산 누계 1억마력 돌파 기록을 세웠다고 밝다. \r\n두산엔진의 2989번째 생산품인 이 엔진은 삼성중공업에서 건조 중인 홍콩선사 OOCL의 2만1100TEU급 컨테이너 선에 탑재될 예정이다. \r\n두산엔진은 1984년 선박용 디젤엔진 1호기를 생산한 이후 기술개발과 설비 증설을 통해 33년 만에 누계 1억마력을 기록했다. 이는 유럽과 일본의 대형 엔진업체들보다 앞선 기록이다.\r\n김동철 두산엔진 사장은 \"지난 33년간 두산엔진은 성장과 발전을 거듭해 세계 조선산업의 역사에 큰 발자취를 남기고 있다\"며 \"앞으로도 선박용 저속엔진 업계의 글로벌 리더로서 끊임없이 성장하고 발전할 수 있도록 노력하겠다\"고 말했다.','[파이낸셜뉴스 ㅣ 안태호 기자]','두산엔진, 수주실적 2분기부터 늘어날 전망','하나금융투자는 30일 두산엔진에 대해 한국 조선소들의 선박 수주실적은 지난해 하반기부터 재개되었으므로 시차를 고려하면 두산엔진의 수주실적은 올해 부터 늘어나게 될 전망이라며 투자의견 ‘매수’를 유지했다.\r\n하나금융투자 연구원은 “두산엔진의 올해 1분기 영업이익은 70억원으로 지난해 연간 영업이익 42억원을 크게 상회하는 실적을 보였다”며 “영업이익률도 3.4%를 보이며 수익성이 회복되고 있음을 보여주었다”고 말했다.\r\n박 연구원은 “한국 조선소들의 선박 수주실적은 지난해 하반기부터 재개되었으므로 시차를 고려하면 두산엔진의 수주실적은 올해 2분기부터 늘어나게 될 전망”이라며 “따라서 두산엔진의 주가 전망은 견조한 우상향 추세가 예상된다”고 덧붙였다.','[아시아투데이 ㅣ 정단비 기자]','두산엔진, 실적부진 전망에 하락세','두산엔진이 올해 실적둔화가 지속될 것이라는 전망에 하락세다.\r\n두산엔진은 지난해 신규수주 급감의 영향으로 올해 실적이 부진할 것이라는 전망이 제기됐다. \r\n정동익 KB증권 연구원은 “주력고객인 삼성중공업과 대우조선해양으로부터의 수주가 급감한데다 중국 조선소들로부터의 수주도 크게 감소한 데 따른 것”이라며 “작년 말 기준 선박용엔진 \r\n수주잔고는 약 1조5000억원으로 상대적으로 양호한 편이지만 SPP그룹 등 실제 납품가능성이 불확실한 물량이 일부 포함돼 있어 보수적인 접근이 필요해 보인다”고 분석했다.','[이데일리 ㅣ윤필호 기자]','대우조선 외국인 주식 계속 사자 주문',NULL,NULL,'Daewoo Shipbuilding & Marine Engineering Co., Ltd.\r\n','대우조선해양㈜\r\n','정성립\r\n','유가증권시장','110111-2095837','104-81-57667','경상남도 거제시 거제대로 3370(아주동)','www.dsme.co.kr','','055-735-2114','02-2129-0084','강선 건조업','2000-10-23','12월'),
(9,'05','자동차/항공','005380','현대자동차\r\n','A','현대차그룹주, 신차 타고 \'가속 페달\'','현대자동차 등 현대차그룹주들이 신차 출시 이후 상승세를 타고 있다. \r\n기존 라인업에 없던 모델 추가로 수익성 개선 기대가 커졌다는 분석이다.\r\n전날 현대차가 스포츠유틸리티차량(SUV) ‘코나’의 출시 발표회를 열고 본격 판매에 들어가면서신차 효과에 대한 기대감이 커졌다. \r\n코나는 급속히 커지고 있는 소형 SUV 시장 공략을 위해 현대차가 개발한 모델이다. \r\n기아차는 지난달 출시한 고급 스포츠세단 ‘스팅어’가 하루 평균 140여 대 주문을 받으며 인기를 끌고 있다. \r\n이상현 IBK투자증권 연구원은 “BMW의 그란쿠페 등 수입 경쟁차에 비해 1000만원 이상 싸 가격 경쟁력이 있다”고 말했다. \r\n증권업계에선 신차 출시가 현대·기아차의 수익성을 크게 개선하는 계기가 될 수 있다고 보고 있다.','[한국경제 ㅣ 김동현 기자]','인도서 \'씽씽\'…현대차 5월 4만2007대 판매','현대자동차가 5월 인도 시장에서 4만2007대를 판매하면서 판매량이 지난해 같은 기간(4만1351대)과 견줘 1.6% 늘었다.\r\n자동차 업계 및 현대차에 따르면, 현대차는 세계 2위 인구 대국인 인도에서 \'그랜드 i10\', \'엘리트 i20\', \'크레타\', \'올 뉴 엑센트\' 등 신차 효과에 힘입어 지난달에도 판매 호조를 보였다.\r\n자동차 업계 전문가들은 현대차의 인도 시장 성장세와 관련, \'현지 밀착형 신차\'와 \'공장 건립\'을 이유로 꼽고 있다. 현대차는 올해 10종의 신차를 인도 시장에 출시할 계획이다.','[머니투데이 ㅣ 황시영 기자]','현대·기아차, 실적 감소 10% 육박','사드 이슈와 내수 판매 부진으로 인해 올해 상반기 현대·기아차(000270) 실적이 1년 전보다 10% 가까이 떨어졌다. \r\n현대·기아차는 올해 상반기 각각 219만8,342대, 132만224대를 팔았다고 공시했다. \r\n이는 전년 대비 각각 8.2%, 9.4% 줄어든 것이다. \r\n6월 한 달 실적만 봐도 현대차(37만6,109대)와 기아차(23만2,370대)의 판매량은 작년 6월보다 각각 15.5%, 13.3% 적었다. \r\n회사 측은 “앞으로도 선진시장과 신흥시장 모두 섣불리 판매 호조를 확신할 수 없는 위기 상황이 지속할 것”이라고 예상했다. ','[서울경제 ㅣ 유주희기자]','현대·기아차, 12개 차종 23만8321대 제작결함 강제리콜 돌입','국토교통부는 지난달 청문 절차를 거쳐 강제리콜 처분을 통보했던 현대·기아자동차 12개 차종, 23만 8321대에 대해 순차적으로 리콜을 실시한다고 12일 밝혔다. \r\n이번에 실시하는 리콜은 캐니스터, 허브너트, 주차브레이크 스위치 등 5건의 차량 제작 결함이 발견된 데 따른 것으로 현대차는 지난 5일 시정계획서를 제출했다. \r\n국토부 관계자는 “현대차에서 제출한 리콜계획서의 리콜방법 및 대상 차량의 적정성 등에 대해 검증하고 적절하지 않은 경우에는 이에 대한 보완을 명령할 계획”이라고 말했다. ','[ 이데일리 ㅣ 원다연 기자 ]','현대차 전년대비 실적 크게 변화 없어',NULL,NULL,'HYUNDAI MOTOR CO\r\n','현대자동차㈜\r\n','정몽구, 윤갑한, 이원희','유가증권시장','110111-0085450','101-81-09147','서울특별시 서초구 헌릉로 12','www.hyundai.com','','02-3464-1114','02-3464-8719','승용차 및 기타 여객용 자동차 제조업','1967-12-29','12월'),
(10,'05','자동차/항공','003490','대한항공','AA','대한항공, 글로벌고객만족도 13년연속 1위\r\n','대한항공의 항공 서비스가 13년 연속 세계적으로 인정을 받았다.\r\n대한항공은 지난 22일 대만 타이페이에서 열린 글로벌고객만족도(GCSI) 우수기업 시상식에서 항공여객운송서비스부문 1위에 선정됐다고 29일 밝혔다. \r\n13년 연속으로 1위를 수상했다.\r\n글로벌고객만족도(GCSI)는 다국적 컨설팅그룹인 일본능률협회컨설팅에서 고객 만족도를 측정하는 지표이다.','[ 파이낸셜뉴스 ㅣ 조지민 기자 ]','아에로멕시코, 인천-멕시코시티 신규취항','멕시코 국적 항공사인 아에로멕시코가 7월1일부터 서울과 멕시코시티를 잇는 신규 노선에 취항했다고 3일 밝혔다. \r\n아에로멕시코는 3일 서울 장충동 신라호텔에서 앙코 반 데르 웰프 아에로멕시코 매출총괄대표 등이 참석한 가운데 기자간담회를 갖고 인천~멕시코시티간 직항 노선 계획을 공개했다. \r\n그동안 경유지를 거쳐야 했던 멕시코에 직항 하늘길이 열렸다.','[머니투데이 ㅣ 황시영 기자]','한진해운에 날개 꺾인 대한항공','대한항공이 계열사 한진해운 지원 여부를 둘러싼 불확실성으로 주가 추가 상승에 발목을 잡혔다.\r\n한국거래소에 따르면 대한항공 주가는 지난 주에만 10% 넘게 상승했다. \r\n지난달 저점 대비로는 약 18%나 뛰었다. 메르스 기저 효과 반영과 저유가에 따른 실적호조를 반영한 주가 상승이다. \r\n그러나 딱 여기까지다. 6년 만에 기록한 최대 실적과 하반기 실적에 대한 핑크빛 전망에도 불구 계열사 리스크가 불거지면서 추가 상승에 한계를 드러내고 있다. \r\nKB투자증권 연구원은 \"대한항공의 한진해운 대규모 지원이 현실화될 경우 주가의 하락 요인이 발생한다는 점에 유의해야 한다\"며 \"우선 올해뿐 아니라 이후에도 지원이 계속될 수 있다는 우려가 발생할 것\"이라고 말했다. ','[아시아경제 ㅣ박선미 기자]','대한항공, 1·4분기 영업익 전년比 40.8% 감소...유가 상승 때문','대한항공은 지난 1·4분기 연결기준 매출액 2조8660억원, 영업이익 1915억원을 거뒀다고 11일 공시했다. \r\n이는 지난해 같은 기간에 비해 각각 0.03%, 40.8% 감소한 것이다. \r\n대한항공의 1·4분기 매출액은 지난해 같은 기간과 비교해 비슷한 수준을 유지했다. \r\n그러나 영업이익은 유가 상승에 따른 비용 증가로 감소했다.','[ 파이낸셜뉴스ㅣ 조지민 기자 ] ','대한항공 신규 시설투자에 1조 투입',NULL,NULL,'KOREAN AIR LINES CO.,LTD\r\n','㈜대한항공\r\n','조양호, 조원태, 우기홍\r\n','유가증권시장\r\n','110111-0108484','110-81-14794','서울특별시 강서구 하늘길 260','www.koreanair.com','','02-2656-7114','02-2656-8169','정기 항공 운송업','1962-06-19','12월\r\n'),
(11,'06','IT/전자','035720','카카오','AA','카카오 AI 플랫폼 구축 본격화','카카오는 올해 안에 독자적인 인공지능 플랫폼을 개발해 이를 적용한 서비스 및 스마트 기기를 선보일 계획이라고 밝혔다.\r\n카카오는 이를 위해 최근 인공지능 사업을 전담하는 ‘AI부문’을 신설했다. \r\n올 상반기 자체 인공지능 플랫폼과 전용 애플리케이션 개발을 마무리하고 멜론과 카카오톡 등 핵심 서비스에 순차적으로 음성인식 기반의 인공지능 기술을 탑재할 계획이다. \r\n또 자체 인공지능 플랫폼을 소프트웨어개발도구(SDK) 형태로 파트너사에 제공해 공동 개발 생태계도 조성한다는 계획이다. \r\nAI부문에서 후발주자인 카카오는 전 국민이 사용하는 모바일 메신저 ‘카카오톡’을 바탕으로 역전을 노리겠다는 계획이다. \r\n김병학 카카오 AI 부문장은 “생활의 혁신을 가져올 AI 플랫폼은 강력한 한국어 음성처리 기술과 전 국민이 연결된 생활형 서비스를 보유한 카카오가 가장 잘할 수 있는 영역”이라고 밝혔다. ','[ 양철민기자  서울경제]','카카오, 카카오뱅크 흥행 기대에 好好','카카오뱅크 출범 덕분에 모회사인 카카오에 대한 실적 기대감이 커지고 있다.\r\n카카오 관계자에 따르면 내달 말 카카오뱅크가 본격 출범할 예정이다. 카카오 관계자는 “카카오뱅크가 실거래 운영 점검을 진행 중“이라며 “두달 안에는 출범 가능할 것”이라고 밝혔다. \r\n특히 ‘국내 1호 인터넷은행’인 케이뱅크의 성공이 카카오뱅크에 대한 기대감을 높이고 있다.  \r\n카카오는 ‘카카오톡’이라는 플랫폼을 통해 케이뱅크보다 더 순조로운 고객 유치가 가능할 것으로 전망된다. \r\n카카오 관계자는 “앞서 출범한 케이뱅크가 고객들로부터 많은 호응을 얻은 전례가 있기 때문에 카카오톡을 통한 고객모집 효과가 더욱 기대된다”고 말했다.\r\n이베스트투자증권 연구원 역시 “케이뱅크와 달리 카카오톡이라는 플랫폼을 통해 친숙도를 쌓아온 카카오뱅크는 보다 큰 흥행을 일으킬 수 있다”고 평가했다.','[헤럴드경제=최준선 기자]','카카오, 한국공항공사와 ‘스마트 교통서비스 개발’ 업무협약','카카오는 카카오 판교오피스에서 한국공항공사(사장 성일환)와 ‘스마트 교통서비스 공동개발을 위한 업무 협약’을 체결한다고 밝혔다. \r\n공공데이터와 민간 기술이 결합됨에 따라 공항 이용객의 편의 향상이 기대된다. \r\n카카오는 이번 협약에 따라 자사의 다양한 모빌리티 서비스를 운영하며 얻은 노하우와 데이터를 기반으로 스마트 교통서비스를 개발한다. \r\n한국공항공사는 전국 산하 공항 주차장의 주차 가능 공간 및 요금 정보를 실시간으로 제공한다. \r\n공항 이용 고객은 모바일 애플리케이션을 통해 현재 주차 가능한 구역을 확인하고 주차 요금은 모바일 간편 결제로 지불한다. \r\n공항 주차장에 여유 공간이 없을 경우 인근 주차장 안내를 받거나 택시 등 대안 교통 수단을 확인하는 것도 가능해진다. \r\n주차 공간을 찾아 헤매거나 요금 결제를 위해 줄을 서 대기하는 번거로움을 덜 수 있다. ','[이데일리 김유성 기자]','카카오, 로봇모듈 \'럭스로보\'에 40억 투자','카카오는 투자 자회사 카카오 인베스트먼트와 AI(인공지능) 전문 자회사 카카오브레인이 로봇 \r\n\r\n모듈 플랫폼 기업 럭스로보에 공동 투자를 진행했다고 밝혔다. 투자 금액은 총 40억원이다.\r\n럭스로보는 마이크로 OS(운영체제)를 탑재한 모듈형 로봇 플랫폼 제작 기업이다. \r\n럭스로보가 개발한 \'모디\'(MODI)는 이용자가 LED, 스피커, 적외선, 마이크, 모터, 중력 센서 등 여러 기능을 가진 모듈을 직관적인 그래픽 기반 코딩 소프트웨어로 쉽게 코딩, 이용자가 원하는 창작물을 만들 수 있는 로봇 플랫폼이다. \r\n모디는 높은 완성도와 쉬운 사용법으로 일반 사용자뿐 아니라 영국 및 두바이 등 글로벌 시장에서 코딩 교육용 교보재로 사용되고 있다. 연내 글로벌 30개 시장에 진출할 예정이다.','[머니투데이 ㅣ이해인 기자]','카카오 예상보다 더 빠르게 매수 진행',NULL,NULL,'Kakao Corp.\r\n','㈜카카오\r\n','임지훈\r\n','코스닥시장\r\n','110111-1129497','120-81-47521','제주특별자치도 제주시 첨단로 242','www.kakao.com','','02-1577-3321','02-6003-5401','포털 및 기타 인터넷 정보매개 서비스업','1995-02-16','12월\r\n'),
(12,'06','IT/전자','005930','삼성전자','A','삼성전자, S펜 장착한 노트북 출시','삼성전자는 \'S펜\'을 탑재한 첫 노트북 제품인 \'삼성 노트북9 Pen\'을 국내에 출시했다. \r\n노트북 9 Pen에 장착된 S펜 솔루션은 스마트폰 갤럭시 노트 시리즈에 적용된 것과 같다. \r\n노트북 9 Pen은 S펜 사용을 위한 터치스크린 디스플레이를 갖췄다. 터치스크린 디스플레이는 360도로 회전시키는게 가능해 화면을 완전히 뒤로 넘겨 태블릿처럼 사용할 수도 있다.\r\nS펜은 종이 위에 글씨를 쓰거나 그림을 그리는 것과 같은 자연스러운 느낌으로 사용할 수 있다. \r\n노트북 9 Pen 제품 측면에 S펜을 꽂아 두는 공간이 마련되어 있어 분실 걱정 없이 S펜 보관이 가능하다. \r\nn노트북 9 Pen은 공통 사양으로 윈도우 10 운영체제, 최신 7세대 인텔 프로세서, 풀 HD (1920 x 1080 해상도) 리얼뷰 디스플레이, 8GB(또는 16GB) DDR4 메모리와 256GB SSD(솔리드 스테이트 드라이브) 저장장치가 탑재됐다.\r\n디자인 전문가들이 S펜으로 높은 작업 효율성을 경험해 볼 수 있도록 \'오토데스크 스케치북 프로(Autodesk Sketchbook Pro)\' 소프트웨어 3개월 무료 이용권도 제공한다.','[메일경제 ㅣ김동은 기자]','삼성전자·네이버등 25개사 동반성장지수 \'최우수\'','삼성전자, 기아자동차, 네이버 등 25개사가 동반성장위원회의 2016년도 대기업 동반성장지수 평가에서 최우수 등급을 받았다. \r\n동반성장위원회는 28일 서울 반포동 팰리스호텔에서 제46차 동반성장위원회를 열고 이 같은 내용을 담은 \'2016 동반성장지수\' 결과를 발표했다.\r\n최우수 등급을 받은 곳은 기아자동차, 네이버, 삼성전기, 삼성전자, 유한킴벌리, 코웨이, 현대다이모스, 현대모비스, 현대오토에버, 현대자동차, 현대제철, 효성, CJ제일제당, KCC, KT, LG디스플레이, LG생활건강, LG유플러스, LG이노텍, LG전자, LG화학, SK건설, SK종합화학, SK주식회사, SK텔레콤 등 25개사다.','[머니투데이 ㅣ김하늬 기자] ','삼성 세탁기·냉장고, 중남미 프리미엄시장 석권','삼성전자의 프리미엄 세탁기와 냉장고가 중남미 시장을 석권했다. 중남미 시장은 중저가 제품으로 공략해야 한다는 기존 공식을 깬 것이다. \r\n업계에 따르면 지난해 중남미 냉장고 시장 규모는 50억달러(약 5조6445억원), 세탁기는 40억달러(약 4조5156억원) 수준이다. 이 중 드럼 세탁기와 양문형 냉장고가 차지하는 비중은 각각 20% 수준으로 삼성전자를 비롯해 월풀, 일렉트로룩스 등 글로벌 가전업체들이 치열한 경쟁을 벌이고 있다. \r\n삼성전자 관계자는 \"경쟁 업체들과 두 배 이상 차이나는 점유율을 기록하며 중남미 프리미엄 가전 최강자의 위치를 확고히 했다\"고 설명했다. 시장조사기관에 따르면 올해 1분기 중남미 드럼 세탁기와 양문형 냉장고 수요는 10% 이상 성장한 것으로 나타났다. \r\n한편 삼성전자는 지난달 쿠바 수도 아바나에 프리미엄 TV, 냉장고, 세탁기 등을 판매하는 삼성 브랜드숍을 오픈하는 등 중남미 프리미엄 가전 시장 확보에 박차를 가하고 있다.','[ 매일경제 ㅣ 김동은 기자 ]','\"에어컨 배송대란, 걱정 마세요\"','삼성전자가 ‘무풍에어컨’을 구매하는 고객에게 신속한 배송과 설치 서비스를 약속했다.\r\n26일 삼성전자에 따르면 이른 더위와 함게 에어컨 주문이 급증했다. 특히 지난해 세계 최초로 출시된 삼성 ‘무풍에어컨’은 올해 벽걸이형까지 출시되면서 인기를 얻고 있다.\r\n무풍에어컨은 에어컨 전면에 있는 ‘마이크로 홀’을 통해 균일하게 냉기를 뿌려주는 ‘무풍 냉방’으로 쾌적하고 효과적인 냉방을 구현해주는 혁신적인 제품이다. 올해 에너지 효율 개선과 함께 인공지능 기술까지 접목돼 소비자들의 호평을 받고 있다.','[ 한국경제 ㅣ 김하나 기자 ]','삼성전자 주식시장에서 크게 변화 없어',NULL,NULL,'SAMSUNG ECECTRONICS CO,.LTD','삼성전자','권오현, 윤부근, 신종균','유가증권시장','130111-0006246','124-81-00998','경기도 수원시 영통구 삼성로 129(매탄동)','WWW.SEC.CO.KR','','031-200-1114','031-200-7538','통신 및 방송 장비 제조업','1969-01-13','12월');

/*Table structure for table `job015` */

DROP TABLE IF EXISTS `job015`;

CREATE TABLE `job015` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

/*Data for the table `job015` */

insert  into `job015`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약12',20000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약12',18000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약12',17000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약12',16000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약12',18000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약12',19000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약12',20000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약12',19000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약12',22000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약12',23000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약12',22000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약12',23000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약12',23000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약12',22000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약12',23000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약12',24000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약12',23000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약12',24000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약12',23000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약12',24000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약12',25000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약12',26000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약12',25000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약12',24000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약12',25000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약12',24000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약12',26000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약12',27000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약12',26000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약12',26000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약12',27000,31,NULL,NULL,NULL,NULL),
(32,1,'009290','광동제약12',28000,32,NULL,NULL,NULL,NULL),
(33,1,'009290','광동제약12',29000,33,NULL,NULL,NULL,NULL),
(34,1,'009290','광동제약12',28000,34,NULL,NULL,NULL,NULL),
(35,1,'009290','광동제약12',29000,35,NULL,NULL,NULL,NULL),
(36,1,'009290','광동제약12',30000,36,NULL,NULL,NULL,NULL),
(37,1,'009290','광동제약12',31000,37,NULL,NULL,NULL,NULL),
(38,1,'009290','광동제약12',30000,38,NULL,NULL,NULL,NULL),
(39,1,'009290','광동제약12',31000,39,NULL,NULL,NULL,NULL),
(40,1,'009290','광동제약12',32000,40,NULL,NULL,NULL,NULL),
(41,1,'009290','광동제약12',30000,41,NULL,NULL,NULL,NULL),
(42,1,'009290','광동제약12',31000,42,NULL,NULL,NULL,NULL),
(43,1,'009290','광동제약12',32000,43,NULL,NULL,NULL,NULL),
(44,1,'009290','광동제약12',33000,44,NULL,NULL,NULL,NULL),
(45,1,'009290','광동제약12',32000,45,NULL,NULL,NULL,NULL),
(46,1,'009290','광동제약12',31000,46,NULL,NULL,NULL,NULL),
(47,1,'009290','광동제약12',33000,47,NULL,NULL,NULL,NULL),
(48,1,'009290','광동제약12',34000,48,NULL,NULL,NULL,NULL),
(49,1,'009290','광동제약12',35000,49,NULL,NULL,NULL,NULL),
(51,2,'249420','대웅제약',12001,1,NULL,NULL,NULL,NULL),
(52,2,'249420','대웅제약',13000,2,NULL,NULL,NULL,NULL),
(53,2,'249420','대웅제약',14000,3,NULL,NULL,NULL,NULL),
(54,2,'249420','대웅제약',13000,4,NULL,NULL,NULL,NULL),
(55,2,'249420','대웅제약',12000,5,NULL,NULL,NULL,NULL),
(56,2,'249420','대웅제약',12000,6,NULL,NULL,NULL,NULL),
(57,2,'249420','대웅제약',13000,7,NULL,NULL,NULL,NULL),
(58,2,'249420','대웅제약',12000,8,NULL,NULL,NULL,NULL),
(59,2,'249420','대웅제약',11000,9,NULL,NULL,NULL,NULL),
(60,2,'249420','대웅제약',10000,10,NULL,NULL,NULL,NULL),
(61,2,'249420','대웅제약',9000,11,NULL,NULL,NULL,NULL),
(62,2,'249420','대웅제약',10000,12,NULL,NULL,NULL,NULL),
(63,2,'249420','대웅제약',9000,13,NULL,NULL,NULL,NULL),
(64,2,'249420','대웅제약',8000,14,NULL,NULL,NULL,NULL),
(65,2,'249420','대웅제약',9000,15,NULL,NULL,NULL,NULL),
(66,2,'249420','대웅제약',8000,16,NULL,NULL,NULL,NULL),
(67,2,'249420','대웅제약',7000,17,NULL,NULL,NULL,NULL),
(68,2,'249420','대웅제약',6000,18,NULL,NULL,NULL,NULL),
(69,2,'249420','대웅제약',7000,19,NULL,NULL,NULL,NULL),
(70,2,'249420','대웅제약',9000,20,NULL,NULL,NULL,NULL),
(71,2,'249420','대웅제약',8000,21,NULL,NULL,NULL,NULL),
(72,2,'249420','대웅제약',8000,22,NULL,NULL,NULL,NULL),
(73,2,'249420','대웅제약',8000,23,NULL,NULL,NULL,NULL),
(74,2,'249420','대웅제약',8000,24,NULL,NULL,NULL,NULL),
(75,2,'249420','대웅제약',7000,25,NULL,NULL,NULL,NULL),
(76,2,'249420','대웅제약',7000,26,NULL,NULL,NULL,NULL),
(77,2,'249420','대웅제약',7000,27,NULL,NULL,NULL,NULL),
(78,2,'249420','대웅제약',6000,28,NULL,NULL,NULL,NULL),
(79,2,'249420','대웅제약',6000,29,NULL,NULL,NULL,NULL),
(80,2,'249420','대웅제약',6000,30,NULL,NULL,NULL,NULL),
(81,2,'249420','대웅제약',6000,31,NULL,NULL,NULL,NULL),
(82,2,'249420','대웅제약',5000,32,NULL,NULL,NULL,NULL),
(83,2,'249420','대웅제약',4000,33,NULL,NULL,NULL,NULL),
(84,2,'249420','대웅제약',5000,34,NULL,NULL,NULL,NULL),
(85,2,'249420','대웅제약',4000,35,NULL,NULL,NULL,NULL),
(86,2,'249420','대웅제약',3000,36,NULL,NULL,NULL,NULL),
(87,2,'249420','대웅제약',4000,37,NULL,NULL,NULL,NULL),
(88,2,'249420','대웅제약',5000,38,NULL,NULL,NULL,NULL),
(89,2,'249420','대웅제약',4000,39,NULL,NULL,NULL,NULL),
(90,2,'249420','대웅제약',3000,40,NULL,NULL,NULL,NULL),
(91,2,'249420','대웅제약',2000,41,NULL,NULL,NULL,NULL),
(92,2,'249420','대웅제약',3000,42,NULL,NULL,NULL,NULL),
(93,2,'249420','대웅제약',4000,43,NULL,NULL,NULL,NULL),
(94,2,'249420','대웅제약',3000,44,NULL,NULL,NULL,NULL),
(95,2,'249420','대웅제약',2000,45,NULL,NULL,NULL,NULL),
(96,2,'249420','대웅제약',3000,46,NULL,NULL,NULL,NULL),
(97,2,'249420','대웅제약',3000,47,NULL,NULL,NULL,NULL),
(98,2,'249420','대웅제약',2000,48,NULL,NULL,NULL,NULL),
(99,2,'249420','대웅제약',2000,49,NULL,NULL,NULL,NULL),
(101,3,'011170','롯데케미칼',365000,1,NULL,NULL,NULL,NULL),
(102,3,'011170','롯데케미칼',365000,2,NULL,NULL,NULL,NULL),
(103,3,'011170','롯데케미칼',364000,3,NULL,NULL,NULL,NULL),
(104,3,'011170','롯데케미칼',364000,4,NULL,NULL,NULL,NULL),
(105,3,'011170','롯데케미칼',363000,5,NULL,NULL,NULL,NULL),
(106,3,'011170','롯데케미칼',363000,6,NULL,NULL,NULL,NULL),
(107,3,'011170','롯데케미칼',362000,7,NULL,NULL,NULL,NULL),
(108,3,'011170','롯데케미칼',362000,8,NULL,NULL,NULL,NULL),
(109,3,'011170','롯데케미칼',362000,9,NULL,NULL,NULL,NULL),
(110,3,'011170','롯데케미칼',361000,10,NULL,NULL,NULL,NULL),
(111,3,'011170','롯데케미칼',362000,11,NULL,NULL,NULL,NULL),
(112,3,'011170','롯데케미칼',361000,12,NULL,NULL,NULL,NULL),
(113,3,'011170','롯데케미칼',360000,13,NULL,NULL,NULL,NULL),
(114,3,'011170','롯데케미칼',359000,14,NULL,NULL,NULL,NULL),
(115,3,'011170','롯데케미칼',359000,15,NULL,NULL,NULL,NULL),
(116,3,'011170','롯데케미칼',359000,16,NULL,NULL,NULL,NULL),
(117,3,'011170','롯데케미칼',358000,17,NULL,NULL,NULL,NULL),
(118,3,'011170','롯데케미칼',358000,18,NULL,NULL,NULL,NULL),
(119,3,'011170','롯데케미칼',357000,19,NULL,NULL,NULL,NULL),
(120,3,'011170','롯데케미칼',357000,20,NULL,NULL,NULL,NULL),
(121,3,'011170','롯데케미칼',358000,21,NULL,NULL,NULL,NULL),
(122,3,'011170','롯데케미칼',358000,22,NULL,NULL,NULL,NULL),
(123,3,'011170','롯데케미칼',359000,23,NULL,NULL,NULL,NULL),
(124,3,'011170','롯데케미칼',358000,24,NULL,NULL,NULL,NULL),
(125,3,'011170','롯데케미칼',358000,25,NULL,NULL,NULL,NULL),
(126,3,'011170','롯데케미칼',358000,26,NULL,NULL,NULL,NULL),
(127,3,'011170','롯데케미칼',359000,27,NULL,NULL,NULL,NULL),
(128,3,'011170','롯데케미칼',358000,28,NULL,NULL,NULL,NULL),
(129,3,'011170','롯데케미칼',358000,29,NULL,NULL,NULL,NULL),
(130,3,'011170','롯데케미칼',358000,30,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',359000,31,NULL,NULL,NULL,NULL),
(132,3,'011170','롯데케미칼',358000,32,NULL,NULL,NULL,NULL),
(133,3,'011170','롯데케미칼',358000,33,NULL,NULL,NULL,NULL),
(134,3,'011170','롯데케미칼',358000,34,NULL,NULL,NULL,NULL),
(135,3,'011170','롯데케미칼',359000,35,NULL,NULL,NULL,NULL),
(136,3,'011170','롯데케미칼',358000,36,NULL,NULL,NULL,NULL),
(137,3,'011170','롯데케미칼',357000,37,NULL,NULL,NULL,NULL),
(138,3,'011170','롯데케미칼',358000,38,NULL,NULL,NULL,NULL),
(139,3,'011170','롯데케미칼',358000,39,NULL,NULL,NULL,NULL),
(140,3,'011170','롯데케미칼',358000,40,NULL,NULL,NULL,NULL),
(141,3,'011170','롯데케미칼',359000,41,NULL,NULL,NULL,NULL),
(142,3,'011170','롯데케미칼',358000,42,NULL,NULL,NULL,NULL),
(143,3,'011170','롯데케미칼',357000,43,NULL,NULL,NULL,NULL),
(144,3,'011170','롯데케미칼',358000,44,NULL,NULL,NULL,NULL),
(145,3,'011170','롯데케미칼',358000,45,NULL,NULL,NULL,NULL),
(146,3,'011170','롯데케미칼',358000,46,NULL,NULL,NULL,NULL),
(147,3,'011170','롯데케미칼',359000,47,NULL,NULL,NULL,NULL),
(148,3,'011170','롯데케미칼',358000,48,NULL,NULL,NULL,NULL),
(149,3,'011170','롯데케미칼',357000,49,NULL,NULL,NULL,NULL),
(151,4,'009830','한화케미칼',26000,1,NULL,NULL,NULL,NULL),
(152,4,'009830','한화케미칼',27000,2,NULL,NULL,NULL,NULL),
(153,4,'009830','한화케미칼',26000,3,NULL,NULL,NULL,NULL),
(154,4,'009830','한화케미칼',30000,4,NULL,NULL,NULL,NULL),
(155,4,'009830','한화케미칼',26000,5,NULL,NULL,NULL,NULL),
(156,4,'009830','한화케미칼',28000,6,NULL,NULL,NULL,NULL),
(157,4,'009830','한화케미칼',30000,7,NULL,NULL,NULL,NULL),
(158,4,'009830','한화케미칼',32000,8,NULL,NULL,NULL,NULL),
(159,4,'009830','한화케미칼',26000,9,NULL,NULL,NULL,NULL),
(160,4,'009830','한화케미칼',27000,10,NULL,NULL,NULL,NULL),
(161,4,'009830','한화케미칼',26000,11,NULL,NULL,NULL,NULL),
(162,4,'009830','한화케미칼',30000,12,NULL,NULL,NULL,NULL),
(163,4,'009830','한화케미칼',26000,13,NULL,NULL,NULL,NULL),
(164,4,'009830','한화케미칼',28000,14,NULL,NULL,NULL,NULL),
(165,4,'009830','한화케미칼',29000,15,NULL,NULL,NULL,NULL),
(166,4,'009830','한화케미칼',26000,16,NULL,NULL,NULL,NULL),
(167,4,'009830','한화케미칼',27000,17,NULL,NULL,NULL,NULL),
(168,4,'009830','한화케미칼',26000,18,NULL,NULL,NULL,NULL),
(169,4,'009830','한화케미칼',30000,19,NULL,NULL,NULL,NULL),
(170,4,'009830','한화케미칼',26000,20,NULL,NULL,NULL,NULL),
(171,4,'009830','한화케미칼',28000,21,NULL,NULL,NULL,NULL),
(172,4,'009830','한화케미칼',30000,22,NULL,NULL,NULL,NULL),
(173,4,'009830','한화케미칼',31000,23,NULL,NULL,NULL,NULL),
(174,4,'009830','한화케미칼',32000,24,NULL,NULL,NULL,NULL),
(175,4,'009830','한화케미칼',26000,25,NULL,NULL,NULL,NULL),
(176,4,'009830','한화케미칼',27000,26,NULL,NULL,NULL,NULL),
(177,4,'009830','한화케미칼',26000,27,NULL,NULL,NULL,NULL),
(178,4,'009830','한화케미칼',30000,28,NULL,NULL,NULL,NULL),
(179,4,'009830','한화케미칼',26000,29,NULL,NULL,NULL,NULL),
(180,4,'009830','한화케미칼',28000,30,NULL,NULL,NULL,NULL),
(181,4,'009830','한화케미칼',32000,31,NULL,NULL,NULL,NULL),
(182,4,'009830','한화케미칼',26000,32,NULL,NULL,NULL,NULL),
(183,4,'009830','한화케미칼',27000,33,NULL,NULL,NULL,NULL),
(184,4,'009830','한화케미칼',26000,34,NULL,NULL,NULL,NULL),
(185,4,'009830','한화케미칼',30000,35,NULL,NULL,NULL,NULL),
(186,4,'009830','한화케미칼',26000,36,NULL,NULL,NULL,NULL),
(187,4,'009830','한화케미칼',35000,37,NULL,NULL,NULL,NULL),
(188,4,'009830','한화케미칼',26000,38,NULL,NULL,NULL,NULL),
(189,4,'009830','한화케미칼',27000,39,NULL,NULL,NULL,NULL),
(190,4,'009830','한화케미칼',26000,40,NULL,NULL,NULL,NULL),
(191,4,'009830','한화케미칼',30000,41,NULL,NULL,NULL,NULL),
(192,4,'009830','한화케미칼',26000,42,NULL,NULL,NULL,NULL),
(193,4,'009830','한화케미칼',28000,43,NULL,NULL,NULL,NULL),
(194,4,'009830','한화케미칼',32000,44,NULL,NULL,NULL,NULL),
(195,4,'009830','한화케미칼',26000,45,NULL,NULL,NULL,NULL),
(196,4,'009830','한화케미칼',30000,46,NULL,NULL,NULL,NULL),
(197,4,'009830','한화케미칼',26000,47,NULL,NULL,NULL,NULL),
(198,4,'009830','한화케미칼',27000,48,NULL,NULL,NULL,NULL),
(199,4,'009830','한화케미칼',26000,49,NULL,NULL,NULL,NULL),
(201,5,'007310','오뚜기22',76000,1,NULL,NULL,NULL,NULL),
(202,5,'007310','오뚜기22',77000,2,NULL,NULL,NULL,NULL),
(203,5,'007310','오뚜기22',77000,3,NULL,NULL,NULL,NULL),
(204,5,'007310','오뚜기22',76000,4,NULL,NULL,NULL,NULL),
(205,5,'007310','오뚜기22',77000,5,NULL,NULL,NULL,NULL),
(206,5,'007310','오뚜기22',78000,6,NULL,NULL,NULL,NULL),
(207,5,'007310','오뚜기22',79000,7,NULL,NULL,NULL,NULL),
(208,5,'007310','오뚜기22',80000,8,NULL,NULL,NULL,NULL),
(209,5,'007310','오뚜기22',79000,9,NULL,NULL,NULL,NULL),
(210,5,'007310','오뚜기22',80000,10,NULL,NULL,NULL,NULL),
(211,5,'007310','오뚜기22',81000,11,NULL,NULL,NULL,NULL),
(212,5,'007310','오뚜기22',80000,12,NULL,NULL,NULL,NULL),
(213,5,'007310','오뚜기22',79000,13,NULL,NULL,NULL,NULL),
(214,5,'007310','오뚜기22',78000,14,NULL,NULL,NULL,NULL),
(215,5,'007310','오뚜기22',78000,15,NULL,NULL,NULL,NULL),
(216,5,'007310','오뚜기22',77000,16,NULL,NULL,NULL,NULL),
(217,5,'007310','오뚜기22',77000,17,NULL,NULL,NULL,NULL),
(218,5,'007310','오뚜기22',78000,18,NULL,NULL,NULL,NULL),
(219,5,'007310','오뚜기22',77000,19,NULL,NULL,NULL,NULL),
(220,5,'007310','오뚜기22',76000,20,NULL,NULL,NULL,NULL),
(221,5,'007310','오뚜기22',77000,21,NULL,NULL,NULL,NULL),
(222,5,'007310','오뚜기22',77000,22,NULL,NULL,NULL,NULL),
(223,5,'007310','오뚜기22',76000,23,NULL,NULL,NULL,NULL),
(224,5,'007310','오뚜기22',77000,24,NULL,NULL,NULL,NULL),
(225,5,'007310','오뚜기22',76000,25,NULL,NULL,NULL,NULL),
(226,5,'007310','오뚜기22',77000,26,NULL,NULL,NULL,NULL),
(227,5,'007310','오뚜기22',77000,27,NULL,NULL,NULL,NULL),
(228,5,'007310','오뚜기22',76000,28,NULL,NULL,NULL,NULL),
(229,5,'007310','오뚜기22',77000,29,NULL,NULL,NULL,NULL),
(230,5,'007310','오뚜기22',78000,30,NULL,NULL,NULL,NULL),
(231,5,'007310','오뚜기22',76000,31,NULL,NULL,NULL,NULL),
(232,5,'007310','오뚜기22',77000,32,NULL,NULL,NULL,NULL),
(233,5,'007310','오뚜기22',77000,33,NULL,NULL,NULL,NULL),
(234,5,'007310','오뚜기22',76000,34,NULL,NULL,NULL,NULL),
(235,5,'007310','오뚜기22',77000,35,NULL,NULL,NULL,NULL),
(236,5,'007310','오뚜기22',78000,36,NULL,NULL,NULL,NULL),
(237,5,'007310','오뚜기22',79000,37,NULL,NULL,NULL,NULL),
(238,5,'007310','오뚜기22',78000,38,NULL,NULL,NULL,NULL),
(239,5,'007310','오뚜기22',77000,39,NULL,NULL,NULL,NULL),
(240,5,'007310','오뚜기22',77000,40,NULL,NULL,NULL,NULL),
(241,5,'007310','오뚜기22',76000,41,NULL,NULL,NULL,NULL),
(242,5,'007310','오뚜기22',77000,42,NULL,NULL,NULL,NULL),
(243,5,'007310','오뚜기22',78000,43,NULL,NULL,NULL,NULL),
(244,5,'007310','오뚜기22',78000,44,NULL,NULL,NULL,NULL),
(245,5,'007310','오뚜기22',79000,45,NULL,NULL,NULL,NULL),
(246,5,'007310','오뚜기22',78000,46,NULL,NULL,NULL,NULL),
(247,5,'007310','오뚜기22',79000,47,NULL,NULL,NULL,NULL),
(248,5,'007310','오뚜기22',78000,48,NULL,NULL,NULL,NULL),
(249,5,'007310','오뚜기22',77000,49,NULL,NULL,NULL,NULL),
(251,6,'028260','한국맥널티',126000,1,NULL,NULL,NULL,NULL),
(252,6,'028260','한국맥널티',125000,2,NULL,NULL,NULL,NULL),
(253,6,'028260','한국맥널티',124000,3,NULL,NULL,NULL,NULL),
(254,6,'028260','한국맥널티',123000,4,NULL,NULL,NULL,NULL),
(255,6,'028260','한국맥널티',125000,5,NULL,NULL,NULL,NULL),
(256,6,'028260','한국맥널티',126000,6,NULL,NULL,NULL,NULL),
(257,6,'028260','한국맥널티',127000,7,NULL,NULL,NULL,NULL),
(258,6,'028260','한국맥널티',128000,8,NULL,NULL,NULL,NULL),
(259,6,'028260','한국맥널티',129000,9,NULL,NULL,NULL,NULL),
(260,6,'028260','한국맥널티',130000,10,NULL,NULL,NULL,NULL),
(261,6,'028260','한국맥널티',131000,11,NULL,NULL,NULL,NULL),
(262,6,'028260','한국맥널티',132000,12,NULL,NULL,NULL,NULL),
(263,6,'028260','한국맥널티',132000,13,NULL,NULL,NULL,NULL),
(264,6,'028260','한국맥널티',133000,14,NULL,NULL,NULL,NULL),
(265,6,'028260','한국맥널티',132000,15,NULL,NULL,NULL,NULL),
(266,6,'028260','한국맥널티',133000,16,NULL,NULL,NULL,NULL),
(267,6,'028260','한국맥널티',134000,17,NULL,NULL,NULL,NULL),
(268,6,'028260','한국맥널티',133000,18,NULL,NULL,NULL,NULL),
(269,6,'028260','한국맥널티',134000,19,NULL,NULL,NULL,NULL),
(270,6,'028260','한국맥널티',133000,20,NULL,NULL,NULL,NULL),
(271,6,'028260','한국맥널티',134000,21,NULL,NULL,NULL,NULL),
(272,6,'028260','한국맥널티',135000,22,NULL,NULL,NULL,NULL),
(273,6,'028260','한국맥널티',136000,23,NULL,NULL,NULL,NULL),
(274,6,'028260','한국맥널티',137000,24,NULL,NULL,NULL,NULL),
(275,6,'028260','한국맥널티',137000,25,NULL,NULL,NULL,NULL),
(276,6,'028260','한국맥널티',137000,26,NULL,NULL,NULL,NULL),
(277,6,'028260','한국맥널티',138000,27,NULL,NULL,NULL,NULL),
(278,6,'028260','한국맥널티',138000,28,NULL,NULL,NULL,NULL),
(279,6,'028260','한국맥널티',137000,29,NULL,NULL,NULL,NULL),
(280,6,'028260','한국맥널티',138000,30,NULL,NULL,NULL,NULL),
(281,6,'028260','한국맥널티',138000,31,NULL,NULL,NULL,NULL),
(282,6,'028260','한국맥널티',137000,32,NULL,NULL,NULL,NULL),
(283,6,'028260','한국맥널티',138000,33,NULL,NULL,NULL,NULL),
(284,6,'028260','한국맥널티',138000,34,NULL,NULL,NULL,NULL),
(285,6,'028260','한국맥널티',137000,35,NULL,NULL,NULL,NULL),
(286,6,'028260','한국맥널티',138000,36,NULL,NULL,NULL,NULL),
(287,6,'028260','한국맥널티',139000,37,NULL,NULL,NULL,NULL),
(288,6,'028260','한국맥널티',140000,38,NULL,NULL,NULL,NULL),
(289,6,'028260','한국맥널티',139000,39,NULL,NULL,NULL,NULL),
(290,6,'028260','한국맥널티',140000,40,NULL,NULL,NULL,NULL),
(291,6,'028260','한국맥널티',138000,41,NULL,NULL,NULL,NULL),
(292,6,'028260','한국맥널티',139000,42,NULL,NULL,NULL,NULL),
(293,6,'028260','한국맥널티',139000,43,NULL,NULL,NULL,NULL),
(294,6,'028260','한국맥널티',140000,44,NULL,NULL,NULL,NULL),
(295,6,'028260','한국맥널티',140000,45,NULL,NULL,NULL,NULL),
(296,6,'028260','한국맥널티',140000,46,NULL,NULL,NULL,NULL),
(297,6,'028260','한국맥널티',139000,47,NULL,NULL,NULL,NULL),
(298,6,'028260','한국맥널티',140000,48,NULL,NULL,NULL,NULL),
(299,6,'028260','한국맥널티',141000,49,NULL,NULL,NULL,NULL),
(301,7,'000720','현대건설',49000,1,NULL,NULL,NULL,NULL),
(302,7,'000720','현대건설',46000,2,NULL,NULL,NULL,NULL),
(303,7,'000720','현대건설',47000,3,NULL,NULL,NULL,NULL),
(304,7,'000720','현대건설',48000,4,NULL,NULL,NULL,NULL),
(305,7,'000720','현대건설',48000,5,NULL,NULL,NULL,NULL),
(306,7,'000720','현대건설',49000,6,NULL,NULL,NULL,NULL),
(307,7,'000720','현대건설',47000,7,NULL,NULL,NULL,NULL),
(308,7,'000720','현대건설',46000,8,NULL,NULL,NULL,NULL),
(309,7,'000720','현대건설',47000,9,NULL,NULL,NULL,NULL),
(310,7,'000720','현대건설',46000,10,NULL,NULL,NULL,NULL),
(311,7,'000720','현대건설',47000,11,NULL,NULL,NULL,NULL),
(312,7,'000720','현대건설',46000,12,NULL,NULL,NULL,NULL),
(313,7,'000720','현대건설',45000,13,NULL,NULL,NULL,NULL),
(314,7,'000720','현대건설',45000,14,NULL,NULL,NULL,NULL),
(315,7,'000720','현대건설',44000,15,NULL,NULL,NULL,NULL),
(316,7,'000720','현대건설',44000,16,NULL,NULL,NULL,NULL),
(317,7,'000720','현대건설',45000,17,NULL,NULL,NULL,NULL),
(318,7,'000720','현대건설',44000,18,NULL,NULL,NULL,NULL),
(319,7,'000720','현대건설',44000,19,NULL,NULL,NULL,NULL),
(320,7,'000720','현대건설',44000,20,NULL,NULL,NULL,NULL),
(321,7,'000720','현대건설',43000,21,NULL,NULL,NULL,NULL),
(322,7,'000720','현대건설',44000,22,NULL,NULL,NULL,NULL),
(323,7,'000720','현대건설',44000,23,NULL,NULL,NULL,NULL),
(324,7,'000720','현대건설',44000,24,NULL,NULL,NULL,NULL),
(325,7,'000720','현대건설',44000,25,NULL,NULL,NULL,NULL),
(326,7,'000720','현대건설',43000,26,NULL,NULL,NULL,NULL),
(327,7,'000720','현대건설',43000,27,NULL,NULL,NULL,NULL),
(328,7,'000720','현대건설',43000,28,NULL,NULL,NULL,NULL),
(329,7,'000720','현대건설',43000,29,NULL,NULL,NULL,NULL),
(330,7,'000720','현대건설',43000,30,NULL,NULL,NULL,NULL),
(331,7,'000720','현대건설',44000,31,NULL,NULL,NULL,NULL),
(332,7,'000720','현대건설',43000,32,NULL,NULL,NULL,NULL),
(333,7,'000720','현대건설',43000,33,NULL,NULL,NULL,NULL),
(334,7,'000720','현대건설',43000,34,NULL,NULL,NULL,NULL),
(335,7,'000720','현대건설',43000,35,NULL,NULL,NULL,NULL),
(336,7,'000720','현대건설',42000,36,NULL,NULL,NULL,NULL),
(337,7,'000720','현대건설',42000,37,NULL,NULL,NULL,NULL),
(338,7,'000720','현대건설',42000,38,NULL,NULL,NULL,NULL),
(339,7,'000720','현대건설',43000,39,NULL,NULL,NULL,NULL),
(340,7,'000720','현대건설',42000,40,NULL,NULL,NULL,NULL),
(341,7,'000720','현대건설',43000,41,NULL,NULL,NULL,NULL),
(342,7,'000720','현대건설',43000,42,NULL,NULL,NULL,NULL),
(343,7,'000720','현대건설',43000,43,NULL,NULL,NULL,NULL),
(344,7,'000720','현대건설',42000,44,NULL,NULL,NULL,NULL),
(345,7,'000720','현대건설',42000,45,NULL,NULL,NULL,NULL),
(346,7,'000720','현대건설',42000,46,NULL,NULL,NULL,NULL),
(347,7,'000720','현대건설',41000,47,NULL,NULL,NULL,NULL),
(348,7,'000720','현대건설',41000,48,NULL,NULL,NULL,NULL),
(349,7,'000720','현대건설',41000,49,NULL,NULL,NULL,NULL),
(351,8,'042660','두산엔진',44000,1,NULL,NULL,NULL,NULL),
(352,8,'042660','두산엔진',45000,2,NULL,NULL,NULL,NULL),
(353,8,'042660','두산엔진',44000,3,NULL,NULL,NULL,NULL),
(354,8,'042660','두산엔진',45000,4,NULL,NULL,NULL,NULL),
(355,8,'042660','두산엔진',46000,5,NULL,NULL,NULL,NULL),
(356,8,'042660','두산엔진',45000,6,NULL,NULL,NULL,NULL),
(357,8,'042660','두산엔진',46000,7,NULL,NULL,NULL,NULL),
(358,8,'042660','두산엔진',47000,8,NULL,NULL,NULL,NULL),
(359,8,'042660','두산엔진',47000,9,NULL,NULL,NULL,NULL),
(360,8,'042660','두산엔진',48000,10,NULL,NULL,NULL,NULL),
(361,8,'042660','두산엔진',48000,11,NULL,NULL,NULL,NULL),
(362,8,'042660','두산엔진',49000,12,NULL,NULL,NULL,NULL),
(363,8,'042660','두산엔진',49000,13,NULL,NULL,NULL,NULL),
(364,8,'042660','두산엔진',49000,14,NULL,NULL,NULL,NULL),
(365,8,'042660','두산엔진',50000,15,NULL,NULL,NULL,NULL),
(366,8,'042660','두산엔진',49000,16,NULL,NULL,NULL,NULL),
(367,8,'042660','두산엔진',49000,17,NULL,NULL,NULL,NULL),
(368,8,'042660','두산엔진',49000,18,NULL,NULL,NULL,NULL),
(369,8,'042660','두산엔진',50000,19,NULL,NULL,NULL,NULL),
(370,8,'042660','두산엔진',49000,20,NULL,NULL,NULL,NULL),
(371,8,'042660','두산엔진',50000,21,NULL,NULL,NULL,NULL),
(372,8,'042660','두산엔진',49000,22,NULL,NULL,NULL,NULL),
(373,8,'042660','두산엔진',50000,23,NULL,NULL,NULL,NULL),
(374,8,'042660','두산엔진',51000,24,NULL,NULL,NULL,NULL),
(375,8,'042660','두산엔진',51000,25,NULL,NULL,NULL,NULL),
(376,8,'042660','두산엔진',51000,26,NULL,NULL,NULL,NULL),
(377,8,'042660','두산엔진',50000,27,NULL,NULL,NULL,NULL),
(378,8,'042660','두산엔진',51000,28,NULL,NULL,NULL,NULL),
(379,8,'042660','두산엔진',51000,29,NULL,NULL,NULL,NULL),
(380,8,'042660','두산엔진',51000,30,NULL,NULL,NULL,NULL),
(381,8,'042660','두산엔진',50000,31,NULL,NULL,NULL,NULL),
(382,8,'042660','두산엔진',51000,32,NULL,NULL,NULL,NULL),
(383,8,'042660','두산엔진',52000,33,NULL,NULL,NULL,NULL),
(384,8,'042660','두산엔진',52000,34,NULL,NULL,NULL,NULL),
(385,8,'042660','두산엔진',53000,35,NULL,NULL,NULL,NULL),
(386,8,'042660','두산엔진',54000,36,NULL,NULL,NULL,NULL),
(387,8,'042660','두산엔진',54000,37,NULL,NULL,NULL,NULL),
(388,8,'042660','두산엔진',55000,38,NULL,NULL,NULL,NULL),
(389,8,'042660','두산엔진',54000,39,NULL,NULL,NULL,NULL),
(390,8,'042660','두산엔진',55000,40,NULL,NULL,NULL,NULL),
(391,8,'042660','두산엔진',54000,41,NULL,NULL,NULL,NULL),
(392,8,'042660','두산엔진',53000,42,NULL,NULL,NULL,NULL),
(393,8,'042660','두산엔진',54000,43,NULL,NULL,NULL,NULL),
(394,8,'042660','두산엔진',54000,44,NULL,NULL,NULL,NULL),
(395,8,'042660','두산엔진',55000,45,NULL,NULL,NULL,NULL),
(396,8,'042660','두산엔진',54000,46,NULL,NULL,NULL,NULL),
(397,8,'042660','두산엔진',55000,47,NULL,NULL,NULL,NULL),
(398,8,'042660','두산엔진',56000,48,NULL,NULL,NULL,NULL),
(399,8,'042660','두산엔진',55000,49,NULL,NULL,NULL,NULL),
(401,9,'005380','현대차',148000,1,NULL,NULL,NULL,NULL),
(402,9,'005380','현대차',148000,2,NULL,NULL,NULL,NULL),
(403,9,'005380','현대차',148000,3,NULL,NULL,NULL,NULL),
(404,9,'005380','현대차',148000,4,NULL,NULL,NULL,NULL),
(405,9,'005380','현대차',149000,5,NULL,NULL,NULL,NULL),
(406,9,'005380','현대차',149000,6,NULL,NULL,NULL,NULL),
(407,9,'005380','현대차',148000,7,NULL,NULL,NULL,NULL),
(408,9,'005380','현대차',149000,8,NULL,NULL,NULL,NULL),
(409,9,'005380','현대차',148000,9,NULL,NULL,NULL,NULL),
(410,9,'005380','현대차',149000,10,NULL,NULL,NULL,NULL),
(411,9,'005380','현대차',148000,11,NULL,NULL,NULL,NULL),
(412,9,'005380','현대차',149000,12,NULL,NULL,NULL,NULL),
(413,9,'005380','현대차',148000,13,NULL,NULL,NULL,NULL),
(414,9,'005380','현대차',148000,14,NULL,NULL,NULL,NULL),
(415,9,'005380','현대차',148000,15,NULL,NULL,NULL,NULL),
(416,9,'005380','현대차',148000,16,NULL,NULL,NULL,NULL),
(417,9,'005380','현대차',148000,17,NULL,NULL,NULL,NULL),
(418,9,'005380','현대차',148000,18,NULL,NULL,NULL,NULL),
(419,9,'005380','현대차',148000,19,NULL,NULL,NULL,NULL),
(420,9,'005380','현대차',148000,20,NULL,NULL,NULL,NULL),
(421,9,'005380','현대차',148000,21,NULL,NULL,NULL,NULL),
(422,9,'005380','현대차',149000,22,NULL,NULL,NULL,NULL),
(423,9,'005380','현대차',149000,23,NULL,NULL,NULL,NULL),
(424,9,'005380','현대차',149000,24,NULL,NULL,NULL,NULL),
(425,9,'005380','현대차',148000,25,NULL,NULL,NULL,NULL),
(426,9,'005380','현대차',148000,26,NULL,NULL,NULL,NULL),
(427,9,'005380','현대차',148000,27,NULL,NULL,NULL,NULL),
(428,9,'005380','현대차',148000,28,NULL,NULL,NULL,NULL),
(429,9,'005380','현대차',148000,29,NULL,NULL,NULL,NULL),
(430,9,'005380','현대차',149000,30,NULL,NULL,NULL,NULL),
(431,9,'005380','현대차',148000,31,NULL,NULL,NULL,NULL),
(432,9,'005380','현대차',148000,32,NULL,NULL,NULL,NULL),
(433,9,'005380','현대차',147000,33,NULL,NULL,NULL,NULL),
(434,9,'005380','현대차',147000,34,NULL,NULL,NULL,NULL),
(435,9,'005380','현대차',147000,35,NULL,NULL,NULL,NULL),
(436,9,'005380','현대차',148000,36,NULL,NULL,NULL,NULL),
(437,9,'005380','현대차',147000,37,NULL,NULL,NULL,NULL),
(438,9,'005380','현대차',148000,38,NULL,NULL,NULL,NULL),
(439,9,'005380','현대차',148000,39,NULL,NULL,NULL,NULL),
(440,9,'005380','현대차',147000,40,NULL,NULL,NULL,NULL),
(441,9,'005380','현대차',147000,41,NULL,NULL,NULL,NULL),
(442,9,'005380','현대차',148000,42,NULL,NULL,NULL,NULL),
(443,9,'005380','현대차',148000,43,NULL,NULL,NULL,NULL),
(444,9,'005380','현대차',148000,44,NULL,NULL,NULL,NULL),
(445,9,'005380','현대차',149000,45,NULL,NULL,NULL,NULL),
(446,9,'005380','현대차',148000,46,NULL,NULL,NULL,NULL),
(447,9,'005380','현대차',148000,47,NULL,NULL,NULL,NULL),
(448,9,'005380','현대차',148000,48,NULL,NULL,NULL,NULL),
(449,9,'005380','현대차',149000,49,NULL,NULL,NULL,NULL),
(451,10,'003490','대한항공',31000,1,NULL,NULL,NULL,NULL),
(452,10,'003490','대한항공',30000,2,NULL,NULL,NULL,NULL),
(453,10,'003490','대한항공',29000,3,NULL,NULL,NULL,NULL),
(454,10,'003490','대한항공',28000,4,NULL,NULL,NULL,NULL),
(455,10,'003490','대한항공',29000,5,NULL,NULL,NULL,NULL),
(456,10,'003490','대한항공',31000,6,NULL,NULL,NULL,NULL),
(457,10,'003490','대한항공',32000,7,NULL,NULL,NULL,NULL),
(458,10,'003490','대한항공',33000,8,NULL,NULL,NULL,NULL),
(459,10,'003490','대한항공',34000,9,NULL,NULL,NULL,NULL),
(460,10,'003490','대한항공',34000,10,NULL,NULL,NULL,NULL),
(461,10,'003490','대한항공',34000,11,NULL,NULL,NULL,NULL),
(462,10,'003490','대한항공',35000,12,NULL,NULL,NULL,NULL),
(463,10,'003490','대한항공',35000,13,NULL,NULL,NULL,NULL),
(464,10,'003490','대한항공',36000,14,NULL,NULL,NULL,NULL),
(465,10,'003490','대한항공',35000,15,NULL,NULL,NULL,NULL),
(466,10,'003490','대한항공',36000,16,NULL,NULL,NULL,NULL),
(467,10,'003490','대한항공',37000,17,NULL,NULL,NULL,NULL),
(468,10,'003490','대한항공',38000,18,NULL,NULL,NULL,NULL),
(469,10,'003490','대한항공',39000,19,NULL,NULL,NULL,NULL),
(470,10,'003490','대한항공',40000,20,NULL,NULL,NULL,NULL),
(471,10,'003490','대한항공',41000,21,NULL,NULL,NULL,NULL),
(472,10,'003490','대한항공',42000,22,NULL,NULL,NULL,NULL),
(473,10,'003490','대한항공',43000,23,NULL,NULL,NULL,NULL),
(474,10,'003490','대한항공',43000,24,NULL,NULL,NULL,NULL),
(475,10,'003490','대한항공',43000,25,NULL,NULL,NULL,NULL),
(476,10,'003490','대한항공',44000,26,NULL,NULL,NULL,NULL),
(477,10,'003490','대한항공',44000,27,NULL,NULL,NULL,NULL),
(478,10,'003490','대한항공',44000,28,NULL,NULL,NULL,NULL),
(479,10,'003490','대한항공',44000,29,NULL,NULL,NULL,NULL),
(480,10,'003490','대한항공',44000,30,NULL,NULL,NULL,NULL),
(481,10,'003490','대한항공',45000,31,NULL,NULL,NULL,NULL),
(482,10,'003490','대한항공',44000,32,NULL,NULL,NULL,NULL),
(483,10,'003490','대한항공',44000,33,NULL,NULL,NULL,NULL),
(484,10,'003490','대한항공',45000,34,NULL,NULL,NULL,NULL),
(485,10,'003490','대한항공',44000,35,NULL,NULL,NULL,NULL),
(486,10,'003490','대한항공',45000,36,NULL,NULL,NULL,NULL),
(487,10,'003490','대한항공',45000,37,NULL,NULL,NULL,NULL),
(488,10,'003490','대한항공',45000,38,NULL,NULL,NULL,NULL),
(489,10,'003490','대한항공',46000,39,NULL,NULL,NULL,NULL),
(490,10,'003490','대한항공',45000,40,NULL,NULL,NULL,NULL),
(491,10,'003490','대한항공',46000,41,NULL,NULL,NULL,NULL),
(492,10,'003490','대한항공',45000,42,NULL,NULL,NULL,NULL),
(493,10,'003490','대한항공',46000,43,NULL,NULL,NULL,NULL),
(494,10,'003490','대한항공',46000,44,NULL,NULL,NULL,NULL),
(495,10,'003490','대한항공',47000,45,NULL,NULL,NULL,NULL),
(496,10,'003490','대한항공',47000,46,NULL,NULL,NULL,NULL),
(497,10,'003490','대한항공',48000,47,NULL,NULL,NULL,NULL),
(498,10,'003490','대한항공',47000,48,NULL,NULL,NULL,NULL),
(499,10,'003490','대한항공',48000,49,NULL,NULL,NULL,NULL),
(501,11,'035720','카카오',83000,1,NULL,NULL,NULL,NULL),
(502,11,'035720','카카오',84000,2,NULL,NULL,NULL,NULL),
(503,11,'035720','카카오',84000,3,NULL,NULL,NULL,NULL),
(504,11,'035720','카카오',84000,4,NULL,NULL,NULL,NULL),
(505,11,'035720','카카오',84000,5,NULL,NULL,NULL,NULL),
(506,11,'035720','카카오',85000,6,NULL,NULL,NULL,NULL),
(507,11,'035720','카카오',85000,7,NULL,NULL,NULL,NULL),
(508,11,'035720','카카오',85000,8,NULL,NULL,NULL,NULL),
(509,11,'035720','카카오',85000,9,NULL,NULL,NULL,NULL),
(510,11,'035720','카카오',85000,10,NULL,NULL,NULL,NULL),
(511,11,'035720','카카오',85000,11,NULL,NULL,NULL,NULL),
(512,11,'035720','카카오',86000,12,NULL,NULL,NULL,NULL),
(513,11,'035720','카카오',86000,13,NULL,NULL,NULL,NULL),
(514,11,'035720','카카오',86000,14,NULL,NULL,NULL,NULL),
(515,11,'035720','카카오',86000,15,NULL,NULL,NULL,NULL),
(516,11,'035720','카카오',86000,16,NULL,NULL,NULL,NULL),
(517,11,'035720','카카오',86000,17,NULL,NULL,NULL,NULL),
(518,11,'035720','카카오',87000,18,NULL,NULL,NULL,NULL),
(519,11,'035720','카카오',88000,19,NULL,NULL,NULL,NULL),
(520,11,'035720','카카오',87000,20,NULL,NULL,NULL,NULL),
(521,11,'035720','카카오',87000,21,NULL,NULL,NULL,NULL),
(522,11,'035720','카카오',87000,22,NULL,NULL,NULL,NULL),
(523,11,'035720','카카오',88000,23,NULL,NULL,NULL,NULL),
(524,11,'035720','카카오',88000,24,NULL,NULL,NULL,NULL),
(525,11,'035720','카카오',88000,25,NULL,NULL,NULL,NULL),
(526,11,'035720','카카오',88000,26,NULL,NULL,NULL,NULL),
(527,11,'035720','카카오',89000,27,NULL,NULL,NULL,NULL),
(528,11,'035720','카카오',89000,28,NULL,NULL,NULL,NULL),
(529,11,'035720','카카오',88000,29,NULL,NULL,NULL,NULL),
(530,11,'035720','카카오',88000,30,NULL,NULL,NULL,NULL),
(531,11,'035720','카카오',89000,31,NULL,NULL,NULL,NULL),
(532,11,'035720','카카오',89000,32,NULL,NULL,NULL,NULL),
(533,11,'035720','카카오',89000,33,NULL,NULL,NULL,NULL),
(534,11,'035720','카카오',89000,34,NULL,NULL,NULL,NULL),
(535,11,'035720','카카오',90000,35,NULL,NULL,NULL,NULL),
(536,11,'035720','카카오',90000,36,NULL,NULL,NULL,NULL),
(537,11,'035720','카카오',90000,37,NULL,NULL,NULL,NULL),
(538,11,'035720','카카오',90000,38,NULL,NULL,NULL,NULL),
(539,11,'035720','카카오',91000,39,NULL,NULL,NULL,NULL),
(540,11,'035720','카카오',91000,40,NULL,NULL,NULL,NULL),
(541,11,'035720','카카오',91000,41,NULL,NULL,NULL,NULL),
(542,11,'035720','카카오',91000,42,NULL,NULL,NULL,NULL),
(543,11,'035720','카카오',91000,43,NULL,NULL,NULL,NULL),
(544,11,'035720','카카오',91000,44,NULL,NULL,NULL,NULL),
(545,11,'035720','카카오',90000,45,NULL,NULL,NULL,NULL),
(546,11,'035720','카카오',90000,46,NULL,NULL,NULL,NULL),
(547,11,'035720','카카오',91000,47,NULL,NULL,NULL,NULL),
(548,11,'035720','카카오',91000,48,NULL,NULL,NULL,NULL),
(549,11,'035720','카카오',91000,49,NULL,NULL,NULL,NULL),
(551,12,'005930','삼성전자',593000,1,NULL,NULL,NULL,NULL),
(552,12,'005930','삼성전자',593000,2,NULL,NULL,NULL,NULL),
(553,12,'005930','삼성전자',593000,3,NULL,NULL,NULL,NULL),
(554,12,'005930','삼성전자',592000,4,NULL,NULL,NULL,NULL),
(555,12,'005930','삼성전자',593000,5,NULL,NULL,NULL,NULL),
(556,12,'005930','삼성전자',592000,6,NULL,NULL,NULL,NULL),
(557,12,'005930','삼성전자',592000,7,NULL,NULL,NULL,NULL),
(558,12,'005930','삼성전자',592000,8,NULL,NULL,NULL,NULL),
(559,12,'005930','삼성전자',593000,9,NULL,NULL,NULL,NULL),
(560,12,'005930','삼성전자',593000,10,NULL,NULL,NULL,NULL),
(561,12,'005930','삼성전자',593000,11,NULL,NULL,NULL,NULL),
(562,12,'005930','삼성전자',592000,12,NULL,NULL,NULL,NULL),
(563,12,'005930','삼성전자',593000,13,NULL,NULL,NULL,NULL),
(564,12,'005930','삼성전자',594000,14,NULL,NULL,NULL,NULL),
(565,12,'005930','삼성전자',593000,15,NULL,NULL,NULL,NULL),
(566,12,'005930','삼성전자',593000,16,NULL,NULL,NULL,NULL),
(567,12,'005930','삼성전자',594000,17,NULL,NULL,NULL,NULL),
(568,12,'005930','삼성전자',594000,18,NULL,NULL,NULL,NULL),
(569,12,'005930','삼성전자',594000,19,NULL,NULL,NULL,NULL),
(570,12,'005930','삼성전자',594000,20,NULL,NULL,NULL,NULL),
(571,12,'005930','삼성전자',594000,21,NULL,NULL,NULL,NULL),
(572,12,'005930','삼성전자',593000,22,NULL,NULL,NULL,NULL),
(573,12,'005930','삼성전자',594000,23,NULL,NULL,NULL,NULL),
(574,12,'005930','삼성전자',593000,24,NULL,NULL,NULL,NULL),
(575,12,'005930','삼성전자',593000,25,NULL,NULL,NULL,NULL),
(576,12,'005930','삼성전자',594000,26,NULL,NULL,NULL,NULL),
(577,12,'005930','삼성전자',594000,27,NULL,NULL,NULL,NULL),
(578,12,'005930','삼성전자',594000,28,NULL,NULL,NULL,NULL),
(579,12,'005930','삼성전자',594000,29,NULL,NULL,NULL,NULL),
(580,12,'005930','삼성전자',594000,30,NULL,NULL,NULL,NULL),
(581,12,'005930','삼성전자',594000,31,NULL,NULL,NULL,NULL),
(582,12,'005930','삼성전자',593000,32,NULL,NULL,NULL,NULL),
(583,12,'005930','삼성전자',594000,33,NULL,NULL,NULL,NULL),
(584,12,'005930','삼성전자',594000,34,NULL,NULL,NULL,NULL),
(585,12,'005930','삼성전자',594000,35,NULL,NULL,NULL,NULL),
(586,12,'005930','삼성전자',594000,36,NULL,NULL,NULL,NULL),
(587,12,'005930','삼성전자',594000,37,NULL,NULL,NULL,NULL),
(588,12,'005930','삼성전자',593000,38,NULL,NULL,NULL,NULL),
(589,12,'005930','삼성전자',593000,39,NULL,NULL,NULL,NULL),
(590,12,'005930','삼성전자',594000,40,NULL,NULL,NULL,NULL),
(591,12,'005930','삼성전자',594000,41,NULL,NULL,NULL,NULL),
(592,12,'005930','삼성전자',594000,42,NULL,NULL,NULL,NULL),
(593,12,'005930','삼성전자',594000,43,NULL,NULL,NULL,NULL),
(594,12,'005930','삼성전자',593000,44,NULL,NULL,NULL,NULL),
(595,12,'005930','삼성전자',593000,45,NULL,NULL,NULL,NULL),
(596,12,'005930','삼성전자',594000,46,NULL,NULL,NULL,NULL),
(597,12,'005930','삼성전자',593000,47,NULL,NULL,NULL,NULL),
(598,12,'005930','삼성전자',593000,48,NULL,NULL,NULL,NULL),
(599,12,'005930','삼성전자',594000,49,NULL,NULL,NULL,NULL);

/*Table structure for table `job015_원본` */

DROP TABLE IF EXISTS `job015_원본`;

CREATE TABLE `job015_원본` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job015_원본` */

/*Table structure for table `job015_원본데이터(복구용)` */

DROP TABLE IF EXISTS `job015_원본데이터(복구용)`;

CREATE TABLE `job015_원본데이터(복구용)` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

/*Data for the table `job015_원본데이터(복구용)` */

insert  into `job015_원본데이터(복구용)`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약',19000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약',18000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약',17000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약',16000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약',18000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약',19000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약',20000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약',19000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약',22000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약',23000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약',22000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약',23000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약',23000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약',22000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약',23000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약',24000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약',23000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약',24000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약',23000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약',24000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약',25000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약',26000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약',25000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약',24000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약',25000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약',24000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약',26000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약',27000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약',26000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약',26000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약',27000,31,NULL,NULL,NULL,NULL),
(32,1,'009290','광동제약',28000,32,NULL,NULL,NULL,NULL),
(33,1,'009290','광동제약',29000,33,NULL,NULL,NULL,NULL),
(34,1,'009290','광동제약',28000,34,NULL,NULL,NULL,NULL),
(35,1,'009290','광동제약',29000,35,NULL,NULL,NULL,NULL),
(36,1,'009290','광동제약',30000,36,NULL,NULL,NULL,NULL),
(37,1,'009290','광동제약',31000,37,NULL,NULL,NULL,NULL),
(38,1,'009290','광동제약',30000,38,NULL,NULL,NULL,NULL),
(39,1,'009290','광동제약',31000,39,NULL,NULL,NULL,NULL),
(40,1,'009290','광동제약',32000,40,NULL,NULL,NULL,NULL),
(41,1,'009290','광동제약',30000,41,NULL,NULL,NULL,NULL),
(42,1,'009290','광동제약',31000,42,NULL,NULL,NULL,NULL),
(43,1,'009290','광동제약',32000,43,NULL,NULL,NULL,NULL),
(44,1,'009290','광동제약',33000,44,NULL,NULL,NULL,NULL),
(45,1,'009290','광동제약',32000,45,NULL,NULL,NULL,NULL),
(46,1,'009290','광동제약',31000,46,NULL,NULL,NULL,NULL),
(47,1,'009290','광동제약',33000,47,NULL,NULL,NULL,NULL),
(48,1,'009290','광동제약',34000,48,NULL,NULL,NULL,NULL),
(49,1,'009290','광동제약',35000,49,NULL,NULL,NULL,NULL),
(51,2,'249420','일동제약',12000,1,NULL,NULL,NULL,NULL),
(52,2,'249420','일동제약',13000,2,NULL,NULL,NULL,NULL),
(53,2,'249420','일동제약',14000,3,NULL,NULL,NULL,NULL),
(54,2,'249420','일동제약',13000,4,NULL,NULL,NULL,NULL),
(55,2,'249420','일동제약',12000,5,NULL,NULL,NULL,NULL),
(56,2,'249420','일동제약',12000,6,NULL,NULL,NULL,NULL),
(57,2,'249420','일동제약',13000,7,NULL,NULL,NULL,NULL),
(58,2,'249420','일동제약',12000,8,NULL,NULL,NULL,NULL),
(59,2,'249420','일동제약',11000,9,NULL,NULL,NULL,NULL),
(60,2,'249420','일동제약',10000,10,NULL,NULL,NULL,NULL),
(61,2,'249420','일동제약',9000,11,NULL,NULL,NULL,NULL),
(62,2,'249420','일동제약',10000,12,NULL,NULL,NULL,NULL),
(63,2,'249420','일동제약',9000,13,NULL,NULL,NULL,NULL),
(64,2,'249420','일동제약',8000,14,NULL,NULL,NULL,NULL),
(65,2,'249420','일동제약',9000,15,NULL,NULL,NULL,NULL),
(66,2,'249420','일동제약',8000,16,NULL,NULL,NULL,NULL),
(67,2,'249420','일동제약',7000,17,NULL,NULL,NULL,NULL),
(68,2,'249420','일동제약',6000,18,NULL,NULL,NULL,NULL),
(69,2,'249420','일동제약',7000,19,NULL,NULL,NULL,NULL),
(70,2,'249420','일동제약',9000,20,NULL,NULL,NULL,NULL),
(71,2,'249420','일동제약',8000,21,NULL,NULL,NULL,NULL),
(72,2,'249420','일동제약',8000,22,NULL,NULL,NULL,NULL),
(73,2,'249420','일동제약',8000,23,NULL,NULL,NULL,NULL),
(74,2,'249420','일동제약',8000,24,NULL,NULL,NULL,NULL),
(75,2,'249420','일동제약',7000,25,NULL,NULL,NULL,NULL),
(76,2,'249420','일동제약',7000,26,NULL,NULL,NULL,NULL),
(77,2,'249420','일동제약',7000,27,NULL,NULL,NULL,NULL),
(78,2,'249420','일동제약',6000,28,NULL,NULL,NULL,NULL),
(79,2,'249420','일동제약',6000,29,NULL,NULL,NULL,NULL),
(80,2,'249420','일동제약',6000,30,NULL,NULL,NULL,NULL),
(81,2,'249420','일동제약',6000,31,NULL,NULL,NULL,NULL),
(82,2,'249420','일동제약',5000,32,NULL,NULL,NULL,NULL),
(83,2,'249420','일동제약',4000,33,NULL,NULL,NULL,NULL),
(84,2,'249420','일동제약',5000,34,NULL,NULL,NULL,NULL),
(85,2,'249420','일동제약',4000,35,NULL,NULL,NULL,NULL),
(86,2,'249420','일동제약',3000,36,NULL,NULL,NULL,NULL),
(87,2,'249420','일동제약',4000,37,NULL,NULL,NULL,NULL),
(88,2,'249420','일동제약',5000,38,NULL,NULL,NULL,NULL),
(89,2,'249420','일동제약',4000,39,NULL,NULL,NULL,NULL),
(90,2,'249420','일동제약',3000,40,NULL,NULL,NULL,NULL),
(91,2,'249420','일동제약',2000,41,NULL,NULL,NULL,NULL),
(92,2,'249420','일동제약',3000,42,NULL,NULL,NULL,NULL),
(93,2,'249420','일동제약',4000,43,NULL,NULL,NULL,NULL),
(94,2,'249420','일동제약',3000,44,NULL,NULL,NULL,NULL),
(95,2,'249420','일동제약',2000,45,NULL,NULL,NULL,NULL),
(96,2,'249420','일동제약',3000,46,NULL,NULL,NULL,NULL),
(97,2,'249420','일동제약',3000,47,NULL,NULL,NULL,NULL),
(98,2,'249420','일동제약',2000,48,NULL,NULL,NULL,NULL),
(99,2,'249420','일동제약',2000,49,NULL,NULL,NULL,NULL),
(101,3,'011170','롯데케미칼',365000,1,NULL,NULL,NULL,NULL),
(102,3,'011170','롯데케미칼',365000,2,NULL,NULL,NULL,NULL),
(103,3,'011170','롯데케미칼',364000,3,NULL,NULL,NULL,NULL),
(104,3,'011170','롯데케미칼',364000,4,NULL,NULL,NULL,NULL),
(105,3,'011170','롯데케미칼',363000,5,NULL,NULL,NULL,NULL),
(106,3,'011170','롯데케미칼',363000,6,NULL,NULL,NULL,NULL),
(107,3,'011170','롯데케미칼',362000,7,NULL,NULL,NULL,NULL),
(108,3,'011170','롯데케미칼',362000,8,NULL,NULL,NULL,NULL),
(109,3,'011170','롯데케미칼',362000,9,NULL,NULL,NULL,NULL),
(110,3,'011170','롯데케미칼',361000,10,NULL,NULL,NULL,NULL),
(111,3,'011170','롯데케미칼',362000,11,NULL,NULL,NULL,NULL),
(112,3,'011170','롯데케미칼',361000,12,NULL,NULL,NULL,NULL),
(113,3,'011170','롯데케미칼',360000,13,NULL,NULL,NULL,NULL),
(114,3,'011170','롯데케미칼',359000,14,NULL,NULL,NULL,NULL),
(115,3,'011170','롯데케미칼',359000,15,NULL,NULL,NULL,NULL),
(116,3,'011170','롯데케미칼',359000,16,NULL,NULL,NULL,NULL),
(117,3,'011170','롯데케미칼',358000,17,NULL,NULL,NULL,NULL),
(118,3,'011170','롯데케미칼',358000,18,NULL,NULL,NULL,NULL),
(119,3,'011170','롯데케미칼',357000,19,NULL,NULL,NULL,NULL),
(120,3,'011170','롯데케미칼',357000,20,NULL,NULL,NULL,NULL),
(121,3,'011170','롯데케미칼',358000,21,NULL,NULL,NULL,NULL),
(122,3,'011170','롯데케미칼',358000,22,NULL,NULL,NULL,NULL),
(123,3,'011170','롯데케미칼',359000,23,NULL,NULL,NULL,NULL),
(124,3,'011170','롯데케미칼',358000,24,NULL,NULL,NULL,NULL),
(125,3,'011170','롯데케미칼',358000,25,NULL,NULL,NULL,NULL),
(126,3,'011170','롯데케미칼',358000,26,NULL,NULL,NULL,NULL),
(127,3,'011170','롯데케미칼',359000,27,NULL,NULL,NULL,NULL),
(128,3,'011170','롯데케미칼',358000,28,NULL,NULL,NULL,NULL),
(129,3,'011170','롯데케미칼',358000,29,NULL,NULL,NULL,NULL),
(130,3,'011170','롯데케미칼',358000,30,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',359000,31,NULL,NULL,NULL,NULL),
(132,3,'011170','롯데케미칼',358000,32,NULL,NULL,NULL,NULL),
(133,3,'011170','롯데케미칼',358000,33,NULL,NULL,NULL,NULL),
(134,3,'011170','롯데케미칼',358000,34,NULL,NULL,NULL,NULL),
(135,3,'011170','롯데케미칼',359000,35,NULL,NULL,NULL,NULL),
(136,3,'011170','롯데케미칼',358000,36,NULL,NULL,NULL,NULL),
(137,3,'011170','롯데케미칼',357000,37,NULL,NULL,NULL,NULL),
(138,3,'011170','롯데케미칼',358000,38,NULL,NULL,NULL,NULL),
(139,3,'011170','롯데케미칼',358000,39,NULL,NULL,NULL,NULL),
(140,3,'011170','롯데케미칼',358000,40,NULL,NULL,NULL,NULL),
(141,3,'011170','롯데케미칼',359000,41,NULL,NULL,NULL,NULL),
(142,3,'011170','롯데케미칼',358000,42,NULL,NULL,NULL,NULL),
(143,3,'011170','롯데케미칼',357000,43,NULL,NULL,NULL,NULL),
(144,3,'011170','롯데케미칼',358000,44,NULL,NULL,NULL,NULL),
(145,3,'011170','롯데케미칼',358000,45,NULL,NULL,NULL,NULL),
(146,3,'011170','롯데케미칼',358000,46,NULL,NULL,NULL,NULL),
(147,3,'011170','롯데케미칼',359000,47,NULL,NULL,NULL,NULL),
(148,3,'011170','롯데케미칼',358000,48,NULL,NULL,NULL,NULL),
(149,3,'011170','롯데케미칼',357000,49,NULL,NULL,NULL,NULL),
(151,4,'009830','한화케미칼',26000,1,NULL,NULL,NULL,NULL),
(152,4,'009830','한화케미칼',27000,2,NULL,NULL,NULL,NULL),
(153,4,'009830','한화케미칼',26000,3,NULL,NULL,NULL,NULL),
(154,4,'009830','한화케미칼',30000,4,NULL,NULL,NULL,NULL),
(155,4,'009830','한화케미칼',26000,5,NULL,NULL,NULL,NULL),
(156,4,'009830','한화케미칼',28000,6,NULL,NULL,NULL,NULL),
(157,4,'009830','한화케미칼',30000,7,NULL,NULL,NULL,NULL),
(158,4,'009830','한화케미칼',32000,8,NULL,NULL,NULL,NULL),
(159,4,'009830','한화케미칼',26000,9,NULL,NULL,NULL,NULL),
(160,4,'009830','한화케미칼',27000,10,NULL,NULL,NULL,NULL),
(161,4,'009830','한화케미칼',26000,11,NULL,NULL,NULL,NULL),
(162,4,'009830','한화케미칼',30000,12,NULL,NULL,NULL,NULL),
(163,4,'009830','한화케미칼',26000,13,NULL,NULL,NULL,NULL),
(164,4,'009830','한화케미칼',28000,14,NULL,NULL,NULL,NULL),
(165,4,'009830','한화케미칼',29000,15,NULL,NULL,NULL,NULL),
(166,4,'009830','한화케미칼',26000,16,NULL,NULL,NULL,NULL),
(167,4,'009830','한화케미칼',27000,17,NULL,NULL,NULL,NULL),
(168,4,'009830','한화케미칼',26000,18,NULL,NULL,NULL,NULL),
(169,4,'009830','한화케미칼',30000,19,NULL,NULL,NULL,NULL),
(170,4,'009830','한화케미칼',26000,20,NULL,NULL,NULL,NULL),
(171,4,'009830','한화케미칼',28000,21,NULL,NULL,NULL,NULL),
(172,4,'009830','한화케미칼',30000,22,NULL,NULL,NULL,NULL),
(173,4,'009830','한화케미칼',31000,23,NULL,NULL,NULL,NULL),
(174,4,'009830','한화케미칼',32000,24,NULL,NULL,NULL,NULL),
(175,4,'009830','한화케미칼',26000,25,NULL,NULL,NULL,NULL),
(176,4,'009830','한화케미칼',27000,26,NULL,NULL,NULL,NULL),
(177,4,'009830','한화케미칼',26000,27,NULL,NULL,NULL,NULL),
(178,4,'009830','한화케미칼',30000,28,NULL,NULL,NULL,NULL),
(179,4,'009830','한화케미칼',26000,29,NULL,NULL,NULL,NULL),
(180,4,'009830','한화케미칼',28000,30,NULL,NULL,NULL,NULL),
(181,4,'009830','한화케미칼',32000,31,NULL,NULL,NULL,NULL),
(182,4,'009830','한화케미칼',26000,32,NULL,NULL,NULL,NULL),
(183,4,'009830','한화케미칼',27000,33,NULL,NULL,NULL,NULL),
(184,4,'009830','한화케미칼',26000,34,NULL,NULL,NULL,NULL),
(185,4,'009830','한화케미칼',30000,35,NULL,NULL,NULL,NULL),
(186,4,'009830','한화케미칼',26000,36,NULL,NULL,NULL,NULL),
(187,4,'009830','한화케미칼',35000,37,NULL,NULL,NULL,NULL),
(188,4,'009830','한화케미칼',26000,38,NULL,NULL,NULL,NULL),
(189,4,'009830','한화케미칼',27000,39,NULL,NULL,NULL,NULL),
(190,4,'009830','한화케미칼',26000,40,NULL,NULL,NULL,NULL),
(191,4,'009830','한화케미칼',30000,41,NULL,NULL,NULL,NULL),
(192,4,'009830','한화케미칼',26000,42,NULL,NULL,NULL,NULL),
(193,4,'009830','한화케미칼',28000,43,NULL,NULL,NULL,NULL),
(194,4,'009830','한화케미칼',32000,44,NULL,NULL,NULL,NULL),
(195,4,'009830','한화케미칼',26000,45,NULL,NULL,NULL,NULL),
(196,4,'009830','한화케미칼',30000,46,NULL,NULL,NULL,NULL),
(197,4,'009830','한화케미칼',26000,47,NULL,NULL,NULL,NULL),
(198,4,'009830','한화케미칼',27000,48,NULL,NULL,NULL,NULL),
(199,4,'009830','한화케미칼',26000,49,NULL,NULL,NULL,NULL),
(201,5,'007310','오뚜기',76000,1,NULL,NULL,NULL,NULL),
(202,5,'007310','오뚜기',77000,2,NULL,NULL,NULL,NULL),
(203,5,'007310','오뚜기',77000,3,NULL,NULL,NULL,NULL),
(204,5,'007310','오뚜기',76000,4,NULL,NULL,NULL,NULL),
(205,5,'007310','오뚜기',77000,5,NULL,NULL,NULL,NULL),
(206,5,'007310','오뚜기',78000,6,NULL,NULL,NULL,NULL),
(207,5,'007310','오뚜기',79000,7,NULL,NULL,NULL,NULL),
(208,5,'007310','오뚜기',80000,8,NULL,NULL,NULL,NULL),
(209,5,'007310','오뚜기',79000,9,NULL,NULL,NULL,NULL),
(210,5,'007310','오뚜기',80000,10,NULL,NULL,NULL,NULL),
(211,5,'007310','오뚜기',81000,11,NULL,NULL,NULL,NULL),
(212,5,'007310','오뚜기',80000,12,NULL,NULL,NULL,NULL),
(213,5,'007310','오뚜기',79000,13,NULL,NULL,NULL,NULL),
(214,5,'007310','오뚜기',78000,14,NULL,NULL,NULL,NULL),
(215,5,'007310','오뚜기',78000,15,NULL,NULL,NULL,NULL),
(216,5,'007310','오뚜기',77000,16,NULL,NULL,NULL,NULL),
(217,5,'007310','오뚜기',77000,17,NULL,NULL,NULL,NULL),
(218,5,'007310','오뚜기',78000,18,NULL,NULL,NULL,NULL),
(219,5,'007310','오뚜기',77000,19,NULL,NULL,NULL,NULL),
(220,5,'007310','오뚜기',76000,20,NULL,NULL,NULL,NULL),
(221,5,'007310','오뚜기',77000,21,NULL,NULL,NULL,NULL),
(222,5,'007310','오뚜기',77000,22,NULL,NULL,NULL,NULL),
(223,5,'007310','오뚜기',76000,23,NULL,NULL,NULL,NULL),
(224,5,'007310','오뚜기',77000,24,NULL,NULL,NULL,NULL),
(225,5,'007310','오뚜기',76000,25,NULL,NULL,NULL,NULL),
(226,5,'007310','오뚜기',77000,26,NULL,NULL,NULL,NULL),
(227,5,'007310','오뚜기',77000,27,NULL,NULL,NULL,NULL),
(228,5,'007310','오뚜기',76000,28,NULL,NULL,NULL,NULL),
(229,5,'007310','오뚜기',77000,29,NULL,NULL,NULL,NULL),
(230,5,'007310','오뚜기',78000,30,NULL,NULL,NULL,NULL),
(231,5,'007310','오뚜기',76000,31,NULL,NULL,NULL,NULL),
(232,5,'007310','오뚜기',77000,32,NULL,NULL,NULL,NULL),
(233,5,'007310','오뚜기',77000,33,NULL,NULL,NULL,NULL),
(234,5,'007310','오뚜기',76000,34,NULL,NULL,NULL,NULL),
(235,5,'007310','오뚜기',77000,35,NULL,NULL,NULL,NULL),
(236,5,'007310','오뚜기',78000,36,NULL,NULL,NULL,NULL),
(237,5,'007310','오뚜기',79000,37,NULL,NULL,NULL,NULL),
(238,5,'007310','오뚜기',78000,38,NULL,NULL,NULL,NULL),
(239,5,'007310','오뚜기',77000,39,NULL,NULL,NULL,NULL),
(240,5,'007310','오뚜기',77000,40,NULL,NULL,NULL,NULL),
(241,5,'007310','오뚜기',76000,41,NULL,NULL,NULL,NULL),
(242,5,'007310','오뚜기',77000,42,NULL,NULL,NULL,NULL),
(243,5,'007310','오뚜기',78000,43,NULL,NULL,NULL,NULL),
(244,5,'007310','오뚜기',78000,44,NULL,NULL,NULL,NULL),
(245,5,'007310','오뚜기',79000,45,NULL,NULL,NULL,NULL),
(246,5,'007310','오뚜기',78000,46,NULL,NULL,NULL,NULL),
(247,5,'007310','오뚜기',79000,47,NULL,NULL,NULL,NULL),
(248,5,'007310','오뚜기',78000,48,NULL,NULL,NULL,NULL),
(249,5,'007310','오뚜기',77000,49,NULL,NULL,NULL,NULL),
(251,6,'028260','삼성물산',126000,1,NULL,NULL,NULL,NULL),
(252,6,'028260','삼성물산',125000,2,NULL,NULL,NULL,NULL),
(253,6,'028260','삼성물산',124000,3,NULL,NULL,NULL,NULL),
(254,6,'028260','삼성물산',123000,4,NULL,NULL,NULL,NULL),
(255,6,'028260','삼성물산',125000,5,NULL,NULL,NULL,NULL),
(256,6,'028260','삼성물산',126000,6,NULL,NULL,NULL,NULL),
(257,6,'028260','삼성물산',127000,7,NULL,NULL,NULL,NULL),
(258,6,'028260','삼성물산',128000,8,NULL,NULL,NULL,NULL),
(259,6,'028260','삼성물산',129000,9,NULL,NULL,NULL,NULL),
(260,6,'028260','삼성물산',130000,10,NULL,NULL,NULL,NULL),
(261,6,'028260','삼성물산',131000,11,NULL,NULL,NULL,NULL),
(262,6,'028260','삼성물산',132000,12,NULL,NULL,NULL,NULL),
(263,6,'028260','삼성물산',132000,13,NULL,NULL,NULL,NULL),
(264,6,'028260','삼성물산',133000,14,NULL,NULL,NULL,NULL),
(265,6,'028260','삼성물산',132000,15,NULL,NULL,NULL,NULL),
(266,6,'028260','삼성물산',133000,16,NULL,NULL,NULL,NULL),
(267,6,'028260','삼성물산',134000,17,NULL,NULL,NULL,NULL),
(268,6,'028260','삼성물산',133000,18,NULL,NULL,NULL,NULL),
(269,6,'028260','삼성물산',134000,19,NULL,NULL,NULL,NULL),
(270,6,'028260','삼성물산',133000,20,NULL,NULL,NULL,NULL),
(271,6,'028260','삼성물산',134000,21,NULL,NULL,NULL,NULL),
(272,6,'028260','삼성물산',135000,22,NULL,NULL,NULL,NULL),
(273,6,'028260','삼성물산',136000,23,NULL,NULL,NULL,NULL),
(274,6,'028260','삼성물산',137000,24,NULL,NULL,NULL,NULL),
(275,6,'028260','삼성물산',137000,25,NULL,NULL,NULL,NULL),
(276,6,'028260','삼성물산',137000,26,NULL,NULL,NULL,NULL),
(277,6,'028260','삼성물산',138000,27,NULL,NULL,NULL,NULL),
(278,6,'028260','삼성물산',138000,28,NULL,NULL,NULL,NULL),
(279,6,'028260','삼성물산',137000,29,NULL,NULL,NULL,NULL),
(280,6,'028260','삼성물산',138000,30,NULL,NULL,NULL,NULL),
(281,6,'028260','삼성물산',138000,31,NULL,NULL,NULL,NULL),
(282,6,'028260','삼성물산',137000,32,NULL,NULL,NULL,NULL),
(283,6,'028260','삼성물산',138000,33,NULL,NULL,NULL,NULL),
(284,6,'028260','삼성물산',138000,34,NULL,NULL,NULL,NULL),
(285,6,'028260','삼성물산',137000,35,NULL,NULL,NULL,NULL),
(286,6,'028260','삼성물산',138000,36,NULL,NULL,NULL,NULL),
(287,6,'028260','삼성물산',139000,37,NULL,NULL,NULL,NULL),
(288,6,'028260','삼성물산',140000,38,NULL,NULL,NULL,NULL),
(289,6,'028260','삼성물산',139000,39,NULL,NULL,NULL,NULL),
(290,6,'028260','삼성물산',140000,40,NULL,NULL,NULL,NULL),
(291,6,'028260','삼성물산',138000,41,NULL,NULL,NULL,NULL),
(292,6,'028260','삼성물산',139000,42,NULL,NULL,NULL,NULL),
(293,6,'028260','삼성물산',139000,43,NULL,NULL,NULL,NULL),
(294,6,'028260','삼성물산',140000,44,NULL,NULL,NULL,NULL),
(295,6,'028260','삼성물산',140000,45,NULL,NULL,NULL,NULL),
(296,6,'028260','삼성물산',140000,46,NULL,NULL,NULL,NULL),
(297,6,'028260','삼성물산',139000,47,NULL,NULL,NULL,NULL),
(298,6,'028260','삼성물산',140000,48,NULL,NULL,NULL,NULL),
(299,6,'028260','삼성물산',141000,49,NULL,NULL,NULL,NULL),
(301,7,'000720','현대건설',49000,1,NULL,NULL,NULL,NULL),
(302,7,'000720','현대건설',46000,2,NULL,NULL,NULL,NULL),
(303,7,'000720','현대건설',47000,3,NULL,NULL,NULL,NULL),
(304,7,'000720','현대건설',48000,4,NULL,NULL,NULL,NULL),
(305,7,'000720','현대건설',48000,5,NULL,NULL,NULL,NULL),
(306,7,'000720','현대건설',49000,6,NULL,NULL,NULL,NULL),
(307,7,'000720','현대건설',47000,7,NULL,NULL,NULL,NULL),
(308,7,'000720','현대건설',46000,8,NULL,NULL,NULL,NULL),
(309,7,'000720','현대건설',47000,9,NULL,NULL,NULL,NULL),
(310,7,'000720','현대건설',46000,10,NULL,NULL,NULL,NULL),
(311,7,'000720','현대건설',47000,11,NULL,NULL,NULL,NULL),
(312,7,'000720','현대건설',46000,12,NULL,NULL,NULL,NULL),
(313,7,'000720','현대건설',45000,13,NULL,NULL,NULL,NULL),
(314,7,'000720','현대건설',45000,14,NULL,NULL,NULL,NULL),
(315,7,'000720','현대건설',44000,15,NULL,NULL,NULL,NULL),
(316,7,'000720','현대건설',44000,16,NULL,NULL,NULL,NULL),
(317,7,'000720','현대건설',45000,17,NULL,NULL,NULL,NULL),
(318,7,'000720','현대건설',44000,18,NULL,NULL,NULL,NULL),
(319,7,'000720','현대건설',44000,19,NULL,NULL,NULL,NULL),
(320,7,'000720','현대건설',44000,20,NULL,NULL,NULL,NULL),
(321,7,'000720','현대건설',43000,21,NULL,NULL,NULL,NULL),
(322,7,'000720','현대건설',44000,22,NULL,NULL,NULL,NULL),
(323,7,'000720','현대건설',44000,23,NULL,NULL,NULL,NULL),
(324,7,'000720','현대건설',44000,24,NULL,NULL,NULL,NULL),
(325,7,'000720','현대건설',44000,25,NULL,NULL,NULL,NULL),
(326,7,'000720','현대건설',43000,26,NULL,NULL,NULL,NULL),
(327,7,'000720','현대건설',43000,27,NULL,NULL,NULL,NULL),
(328,7,'000720','현대건설',43000,28,NULL,NULL,NULL,NULL),
(329,7,'000720','현대건설',43000,29,NULL,NULL,NULL,NULL),
(330,7,'000720','현대건설',43000,30,NULL,NULL,NULL,NULL),
(331,7,'000720','현대건설',44000,31,NULL,NULL,NULL,NULL),
(332,7,'000720','현대건설',43000,32,NULL,NULL,NULL,NULL),
(333,7,'000720','현대건설',43000,33,NULL,NULL,NULL,NULL),
(334,7,'000720','현대건설',43000,34,NULL,NULL,NULL,NULL),
(335,7,'000720','현대건설',43000,35,NULL,NULL,NULL,NULL),
(336,7,'000720','현대건설',42000,36,NULL,NULL,NULL,NULL),
(337,7,'000720','현대건설',42000,37,NULL,NULL,NULL,NULL),
(338,7,'000720','현대건설',42000,38,NULL,NULL,NULL,NULL),
(339,7,'000720','현대건설',43000,39,NULL,NULL,NULL,NULL),
(340,7,'000720','현대건설',42000,40,NULL,NULL,NULL,NULL),
(341,7,'000720','현대건설',43000,41,NULL,NULL,NULL,NULL),
(342,7,'000720','현대건설',43000,42,NULL,NULL,NULL,NULL),
(343,7,'000720','현대건설',43000,43,NULL,NULL,NULL,NULL),
(344,7,'000720','현대건설',42000,44,NULL,NULL,NULL,NULL),
(345,7,'000720','현대건설',42000,45,NULL,NULL,NULL,NULL),
(346,7,'000720','현대건설',42000,46,NULL,NULL,NULL,NULL),
(347,7,'000720','현대건설',41000,47,NULL,NULL,NULL,NULL),
(348,7,'000720','현대건설',41000,48,NULL,NULL,NULL,NULL),
(349,7,'000720','현대건설',41000,49,NULL,NULL,NULL,NULL),
(351,8,'042660','대우조선해양',44000,1,NULL,NULL,NULL,NULL),
(352,8,'042660','대우조선해양',45000,2,NULL,NULL,NULL,NULL),
(353,8,'042660','대우조선해양',44000,3,NULL,NULL,NULL,NULL),
(354,8,'042660','대우조선해양',45000,4,NULL,NULL,NULL,NULL),
(355,8,'042660','대우조선해양',46000,5,NULL,NULL,NULL,NULL),
(356,8,'042660','대우조선해양',45000,6,NULL,NULL,NULL,NULL),
(357,8,'042660','대우조선해양',46000,7,NULL,NULL,NULL,NULL),
(358,8,'042660','대우조선해양',47000,8,NULL,NULL,NULL,NULL),
(359,8,'042660','대우조선해양',47000,9,NULL,NULL,NULL,NULL),
(360,8,'042660','대우조선해양',48000,10,NULL,NULL,NULL,NULL),
(361,8,'042660','대우조선해양',48000,11,NULL,NULL,NULL,NULL),
(362,8,'042660','대우조선해양',49000,12,NULL,NULL,NULL,NULL),
(363,8,'042660','대우조선해양',49000,13,NULL,NULL,NULL,NULL),
(364,8,'042660','대우조선해양',49000,14,NULL,NULL,NULL,NULL),
(365,8,'042660','대우조선해양',50000,15,NULL,NULL,NULL,NULL),
(366,8,'042660','대우조선해양',49000,16,NULL,NULL,NULL,NULL),
(367,8,'042660','대우조선해양',49000,17,NULL,NULL,NULL,NULL),
(368,8,'042660','대우조선해양',49000,18,NULL,NULL,NULL,NULL),
(369,8,'042660','대우조선해양',50000,19,NULL,NULL,NULL,NULL),
(370,8,'042660','대우조선해양',49000,20,NULL,NULL,NULL,NULL),
(371,8,'042660','대우조선해양',50000,21,NULL,NULL,NULL,NULL),
(372,8,'042660','대우조선해양',49000,22,NULL,NULL,NULL,NULL),
(373,8,'042660','대우조선해양',50000,23,NULL,NULL,NULL,NULL),
(374,8,'042660','대우조선해양',51000,24,NULL,NULL,NULL,NULL),
(375,8,'042660','대우조선해양',51000,25,NULL,NULL,NULL,NULL),
(376,8,'042660','대우조선해양',51000,26,NULL,NULL,NULL,NULL),
(377,8,'042660','대우조선해양',50000,27,NULL,NULL,NULL,NULL),
(378,8,'042660','대우조선해양',51000,28,NULL,NULL,NULL,NULL),
(379,8,'042660','대우조선해양',51000,29,NULL,NULL,NULL,NULL),
(380,8,'042660','대우조선해양',51000,30,NULL,NULL,NULL,NULL),
(381,8,'042660','대우조선해양',50000,31,NULL,NULL,NULL,NULL),
(382,8,'042660','대우조선해양',51000,32,NULL,NULL,NULL,NULL),
(383,8,'042660','대우조선해양',52000,33,NULL,NULL,NULL,NULL),
(384,8,'042660','대우조선해양',52000,34,NULL,NULL,NULL,NULL),
(385,8,'042660','대우조선해양',53000,35,NULL,NULL,NULL,NULL),
(386,8,'042660','대우조선해양',54000,36,NULL,NULL,NULL,NULL),
(387,8,'042660','대우조선해양',54000,37,NULL,NULL,NULL,NULL),
(388,8,'042660','대우조선해양',55000,38,NULL,NULL,NULL,NULL),
(389,8,'042660','대우조선해양',54000,39,NULL,NULL,NULL,NULL),
(390,8,'042660','대우조선해양',55000,40,NULL,NULL,NULL,NULL),
(391,8,'042660','대우조선해양',54000,41,NULL,NULL,NULL,NULL),
(392,8,'042660','대우조선해양',53000,42,NULL,NULL,NULL,NULL),
(393,8,'042660','대우조선해양',54000,43,NULL,NULL,NULL,NULL),
(394,8,'042660','대우조선해양',54000,44,NULL,NULL,NULL,NULL),
(395,8,'042660','대우조선해양',55000,45,NULL,NULL,NULL,NULL),
(396,8,'042660','대우조선해양',54000,46,NULL,NULL,NULL,NULL),
(397,8,'042660','대우조선해양',55000,47,NULL,NULL,NULL,NULL),
(398,8,'042660','대우조선해양',56000,48,NULL,NULL,NULL,NULL),
(399,8,'042660','대우조선해양',55000,49,NULL,NULL,NULL,NULL),
(401,9,'005380','현대차',148000,1,NULL,NULL,NULL,NULL),
(402,9,'005380','현대차',148000,2,NULL,NULL,NULL,NULL),
(403,9,'005380','현대차',148000,3,NULL,NULL,NULL,NULL),
(404,9,'005380','현대차',148000,4,NULL,NULL,NULL,NULL),
(405,9,'005380','현대차',149000,5,NULL,NULL,NULL,NULL),
(406,9,'005380','현대차',149000,6,NULL,NULL,NULL,NULL),
(407,9,'005380','현대차',148000,7,NULL,NULL,NULL,NULL),
(408,9,'005380','현대차',149000,8,NULL,NULL,NULL,NULL),
(409,9,'005380','현대차',148000,9,NULL,NULL,NULL,NULL),
(410,9,'005380','현대차',149000,10,NULL,NULL,NULL,NULL),
(411,9,'005380','현대차',148000,11,NULL,NULL,NULL,NULL),
(412,9,'005380','현대차',149000,12,NULL,NULL,NULL,NULL),
(413,9,'005380','현대차',148000,13,NULL,NULL,NULL,NULL),
(414,9,'005380','현대차',148000,14,NULL,NULL,NULL,NULL),
(415,9,'005380','현대차',148000,15,NULL,NULL,NULL,NULL),
(416,9,'005380','현대차',148000,16,NULL,NULL,NULL,NULL),
(417,9,'005380','현대차',148000,17,NULL,NULL,NULL,NULL),
(418,9,'005380','현대차',148000,18,NULL,NULL,NULL,NULL),
(419,9,'005380','현대차',148000,19,NULL,NULL,NULL,NULL),
(420,9,'005380','현대차',148000,20,NULL,NULL,NULL,NULL),
(421,9,'005380','현대차',148000,21,NULL,NULL,NULL,NULL),
(422,9,'005380','현대차',149000,22,NULL,NULL,NULL,NULL),
(423,9,'005380','현대차',149000,23,NULL,NULL,NULL,NULL),
(424,9,'005380','현대차',149000,24,NULL,NULL,NULL,NULL),
(425,9,'005380','현대차',148000,25,NULL,NULL,NULL,NULL),
(426,9,'005380','현대차',148000,26,NULL,NULL,NULL,NULL),
(427,9,'005380','현대차',148000,27,NULL,NULL,NULL,NULL),
(428,9,'005380','현대차',148000,28,NULL,NULL,NULL,NULL),
(429,9,'005380','현대차',148000,29,NULL,NULL,NULL,NULL),
(430,9,'005380','현대차',149000,30,NULL,NULL,NULL,NULL),
(431,9,'005380','현대차',148000,31,NULL,NULL,NULL,NULL),
(432,9,'005380','현대차',148000,32,NULL,NULL,NULL,NULL),
(433,9,'005380','현대차',147000,33,NULL,NULL,NULL,NULL),
(434,9,'005380','현대차',147000,34,NULL,NULL,NULL,NULL),
(435,9,'005380','현대차',147000,35,NULL,NULL,NULL,NULL),
(436,9,'005380','현대차',148000,36,NULL,NULL,NULL,NULL),
(437,9,'005380','현대차',147000,37,NULL,NULL,NULL,NULL),
(438,9,'005380','현대차',148000,38,NULL,NULL,NULL,NULL),
(439,9,'005380','현대차',148000,39,NULL,NULL,NULL,NULL),
(440,9,'005380','현대차',147000,40,NULL,NULL,NULL,NULL),
(441,9,'005380','현대차',147000,41,NULL,NULL,NULL,NULL),
(442,9,'005380','현대차',148000,42,NULL,NULL,NULL,NULL),
(443,9,'005380','현대차',148000,43,NULL,NULL,NULL,NULL),
(444,9,'005380','현대차',148000,44,NULL,NULL,NULL,NULL),
(445,9,'005380','현대차',149000,45,NULL,NULL,NULL,NULL),
(446,9,'005380','현대차',148000,46,NULL,NULL,NULL,NULL),
(447,9,'005380','현대차',148000,47,NULL,NULL,NULL,NULL),
(448,9,'005380','현대차',148000,48,NULL,NULL,NULL,NULL),
(449,9,'005380','현대차',149000,49,NULL,NULL,NULL,NULL),
(451,10,'003490','대한항공',31000,1,NULL,NULL,NULL,NULL),
(452,10,'003490','대한항공',30000,2,NULL,NULL,NULL,NULL),
(453,10,'003490','대한항공',29000,3,NULL,NULL,NULL,NULL),
(454,10,'003490','대한항공',28000,4,NULL,NULL,NULL,NULL),
(455,10,'003490','대한항공',29000,5,NULL,NULL,NULL,NULL),
(456,10,'003490','대한항공',31000,6,NULL,NULL,NULL,NULL),
(457,10,'003490','대한항공',32000,7,NULL,NULL,NULL,NULL),
(458,10,'003490','대한항공',33000,8,NULL,NULL,NULL,NULL),
(459,10,'003490','대한항공',34000,9,NULL,NULL,NULL,NULL),
(460,10,'003490','대한항공',34000,10,NULL,NULL,NULL,NULL),
(461,10,'003490','대한항공',34000,11,NULL,NULL,NULL,NULL),
(462,10,'003490','대한항공',35000,12,NULL,NULL,NULL,NULL),
(463,10,'003490','대한항공',35000,13,NULL,NULL,NULL,NULL),
(464,10,'003490','대한항공',36000,14,NULL,NULL,NULL,NULL),
(465,10,'003490','대한항공',35000,15,NULL,NULL,NULL,NULL),
(466,10,'003490','대한항공',36000,16,NULL,NULL,NULL,NULL),
(467,10,'003490','대한항공',37000,17,NULL,NULL,NULL,NULL),
(468,10,'003490','대한항공',38000,18,NULL,NULL,NULL,NULL),
(469,10,'003490','대한항공',39000,19,NULL,NULL,NULL,NULL),
(470,10,'003490','대한항공',40000,20,NULL,NULL,NULL,NULL),
(471,10,'003490','대한항공',41000,21,NULL,NULL,NULL,NULL),
(472,10,'003490','대한항공',42000,22,NULL,NULL,NULL,NULL),
(473,10,'003490','대한항공',43000,23,NULL,NULL,NULL,NULL),
(474,10,'003490','대한항공',43000,24,NULL,NULL,NULL,NULL),
(475,10,'003490','대한항공',43000,25,NULL,NULL,NULL,NULL),
(476,10,'003490','대한항공',44000,26,NULL,NULL,NULL,NULL),
(477,10,'003490','대한항공',44000,27,NULL,NULL,NULL,NULL),
(478,10,'003490','대한항공',44000,28,NULL,NULL,NULL,NULL),
(479,10,'003490','대한항공',44000,29,NULL,NULL,NULL,NULL),
(480,10,'003490','대한항공',44000,30,NULL,NULL,NULL,NULL),
(481,10,'003490','대한항공',45000,31,NULL,NULL,NULL,NULL),
(482,10,'003490','대한항공',44000,32,NULL,NULL,NULL,NULL),
(483,10,'003490','대한항공',44000,33,NULL,NULL,NULL,NULL),
(484,10,'003490','대한항공',45000,34,NULL,NULL,NULL,NULL),
(485,10,'003490','대한항공',44000,35,NULL,NULL,NULL,NULL),
(486,10,'003490','대한항공',45000,36,NULL,NULL,NULL,NULL),
(487,10,'003490','대한항공',45000,37,NULL,NULL,NULL,NULL),
(488,10,'003490','대한항공',45000,38,NULL,NULL,NULL,NULL),
(489,10,'003490','대한항공',46000,39,NULL,NULL,NULL,NULL),
(490,10,'003490','대한항공',45000,40,NULL,NULL,NULL,NULL),
(491,10,'003490','대한항공',46000,41,NULL,NULL,NULL,NULL),
(492,10,'003490','대한항공',45000,42,NULL,NULL,NULL,NULL),
(493,10,'003490','대한항공',46000,43,NULL,NULL,NULL,NULL),
(494,10,'003490','대한항공',46000,44,NULL,NULL,NULL,NULL),
(495,10,'003490','대한항공',47000,45,NULL,NULL,NULL,NULL),
(496,10,'003490','대한항공',47000,46,NULL,NULL,NULL,NULL),
(497,10,'003490','대한항공',48000,47,NULL,NULL,NULL,NULL),
(498,10,'003490','대한항공',47000,48,NULL,NULL,NULL,NULL),
(499,10,'003490','대한항공',48000,49,NULL,NULL,NULL,NULL),
(501,11,'035720','카카오',83000,1,NULL,NULL,NULL,NULL),
(502,11,'035720','카카오',84000,2,NULL,NULL,NULL,NULL),
(503,11,'035720','카카오',84000,3,NULL,NULL,NULL,NULL),
(504,11,'035720','카카오',84000,4,NULL,NULL,NULL,NULL),
(505,11,'035720','카카오',84000,5,NULL,NULL,NULL,NULL),
(506,11,'035720','카카오',85000,6,NULL,NULL,NULL,NULL),
(507,11,'035720','카카오',85000,7,NULL,NULL,NULL,NULL),
(508,11,'035720','카카오',85000,8,NULL,NULL,NULL,NULL),
(509,11,'035720','카카오',85000,9,NULL,NULL,NULL,NULL),
(510,11,'035720','카카오',85000,10,NULL,NULL,NULL,NULL),
(511,11,'035720','카카오',85000,11,NULL,NULL,NULL,NULL),
(512,11,'035720','카카오',86000,12,NULL,NULL,NULL,NULL),
(513,11,'035720','카카오',86000,13,NULL,NULL,NULL,NULL),
(514,11,'035720','카카오',86000,14,NULL,NULL,NULL,NULL),
(515,11,'035720','카카오',86000,15,NULL,NULL,NULL,NULL),
(516,11,'035720','카카오',86000,16,NULL,NULL,NULL,NULL),
(517,11,'035720','카카오',86000,17,NULL,NULL,NULL,NULL),
(518,11,'035720','카카오',87000,18,NULL,NULL,NULL,NULL),
(519,11,'035720','카카오',88000,19,NULL,NULL,NULL,NULL),
(520,11,'035720','카카오',87000,20,NULL,NULL,NULL,NULL),
(521,11,'035720','카카오',87000,21,NULL,NULL,NULL,NULL),
(522,11,'035720','카카오',87000,22,NULL,NULL,NULL,NULL),
(523,11,'035720','카카오',88000,23,NULL,NULL,NULL,NULL),
(524,11,'035720','카카오',88000,24,NULL,NULL,NULL,NULL),
(525,11,'035720','카카오',88000,25,NULL,NULL,NULL,NULL),
(526,11,'035720','카카오',88000,26,NULL,NULL,NULL,NULL),
(527,11,'035720','카카오',89000,27,NULL,NULL,NULL,NULL),
(528,11,'035720','카카오',89000,28,NULL,NULL,NULL,NULL),
(529,11,'035720','카카오',88000,29,NULL,NULL,NULL,NULL),
(530,11,'035720','카카오',88000,30,NULL,NULL,NULL,NULL),
(531,11,'035720','카카오',89000,31,NULL,NULL,NULL,NULL),
(532,11,'035720','카카오',89000,32,NULL,NULL,NULL,NULL),
(533,11,'035720','카카오',89000,33,NULL,NULL,NULL,NULL),
(534,11,'035720','카카오',89000,34,NULL,NULL,NULL,NULL),
(535,11,'035720','카카오',90000,35,NULL,NULL,NULL,NULL),
(536,11,'035720','카카오',90000,36,NULL,NULL,NULL,NULL),
(537,11,'035720','카카오',90000,37,NULL,NULL,NULL,NULL),
(538,11,'035720','카카오',90000,38,NULL,NULL,NULL,NULL),
(539,11,'035720','카카오',91000,39,NULL,NULL,NULL,NULL),
(540,11,'035720','카카오',91000,40,NULL,NULL,NULL,NULL),
(541,11,'035720','카카오',91000,41,NULL,NULL,NULL,NULL),
(542,11,'035720','카카오',91000,42,NULL,NULL,NULL,NULL),
(543,11,'035720','카카오',91000,43,NULL,NULL,NULL,NULL),
(544,11,'035720','카카오',91000,44,NULL,NULL,NULL,NULL),
(545,11,'035720','카카오',90000,45,NULL,NULL,NULL,NULL),
(546,11,'035720','카카오',90000,46,NULL,NULL,NULL,NULL),
(547,11,'035720','카카오',91000,47,NULL,NULL,NULL,NULL),
(548,11,'035720','카카오',91000,48,NULL,NULL,NULL,NULL),
(549,11,'035720','카카오',91000,49,NULL,NULL,NULL,NULL),
(551,12,'005930','삼성전자',593000,1,NULL,NULL,NULL,NULL),
(552,12,'005930','삼성전자',593000,2,NULL,NULL,NULL,NULL),
(553,12,'005930','삼성전자',593000,3,NULL,NULL,NULL,NULL),
(554,12,'005930','삼성전자',592000,4,NULL,NULL,NULL,NULL),
(555,12,'005930','삼성전자',593000,5,NULL,NULL,NULL,NULL),
(556,12,'005930','삼성전자',592000,6,NULL,NULL,NULL,NULL),
(557,12,'005930','삼성전자',592000,7,NULL,NULL,NULL,NULL),
(558,12,'005930','삼성전자',592000,8,NULL,NULL,NULL,NULL),
(559,12,'005930','삼성전자',593000,9,NULL,NULL,NULL,NULL),
(560,12,'005930','삼성전자',593000,10,NULL,NULL,NULL,NULL),
(561,12,'005930','삼성전자',593000,11,NULL,NULL,NULL,NULL),
(562,12,'005930','삼성전자',592000,12,NULL,NULL,NULL,NULL),
(563,12,'005930','삼성전자',593000,13,NULL,NULL,NULL,NULL),
(564,12,'005930','삼성전자',594000,14,NULL,NULL,NULL,NULL),
(565,12,'005930','삼성전자',593000,15,NULL,NULL,NULL,NULL),
(566,12,'005930','삼성전자',593000,16,NULL,NULL,NULL,NULL),
(567,12,'005930','삼성전자',594000,17,NULL,NULL,NULL,NULL),
(568,12,'005930','삼성전자',594000,18,NULL,NULL,NULL,NULL),
(569,12,'005930','삼성전자',594000,19,NULL,NULL,NULL,NULL),
(570,12,'005930','삼성전자',594000,20,NULL,NULL,NULL,NULL),
(571,12,'005930','삼성전자',594000,21,NULL,NULL,NULL,NULL),
(572,12,'005930','삼성전자',593000,22,NULL,NULL,NULL,NULL),
(573,12,'005930','삼성전자',594000,23,NULL,NULL,NULL,NULL),
(574,12,'005930','삼성전자',593000,24,NULL,NULL,NULL,NULL),
(575,12,'005930','삼성전자',593000,25,NULL,NULL,NULL,NULL),
(576,12,'005930','삼성전자',594000,26,NULL,NULL,NULL,NULL),
(577,12,'005930','삼성전자',594000,27,NULL,NULL,NULL,NULL),
(578,12,'005930','삼성전자',594000,28,NULL,NULL,NULL,NULL),
(579,12,'005930','삼성전자',594000,29,NULL,NULL,NULL,NULL),
(580,12,'005930','삼성전자',594000,30,NULL,NULL,NULL,NULL),
(581,12,'005930','삼성전자',594000,31,NULL,NULL,NULL,NULL),
(582,12,'005930','삼성전자',593000,32,NULL,NULL,NULL,NULL),
(583,12,'005930','삼성전자',594000,33,NULL,NULL,NULL,NULL),
(584,12,'005930','삼성전자',594000,34,NULL,NULL,NULL,NULL),
(585,12,'005930','삼성전자',594000,35,NULL,NULL,NULL,NULL),
(586,12,'005930','삼성전자',594000,36,NULL,NULL,NULL,NULL),
(587,12,'005930','삼성전자',594000,37,NULL,NULL,NULL,NULL),
(588,12,'005930','삼성전자',593000,38,NULL,NULL,NULL,NULL),
(589,12,'005930','삼성전자',593000,39,NULL,NULL,NULL,NULL),
(590,12,'005930','삼성전자',594000,40,NULL,NULL,NULL,NULL),
(591,12,'005930','삼성전자',594000,41,NULL,NULL,NULL,NULL),
(592,12,'005930','삼성전자',594000,42,NULL,NULL,NULL,NULL),
(593,12,'005930','삼성전자',594000,43,NULL,NULL,NULL,NULL),
(594,12,'005930','삼성전자',593000,44,NULL,NULL,NULL,NULL),
(595,12,'005930','삼성전자',593000,45,NULL,NULL,NULL,NULL),
(596,12,'005930','삼성전자',594000,46,NULL,NULL,NULL,NULL),
(597,12,'005930','삼성전자',593000,47,NULL,NULL,NULL,NULL),
(598,12,'005930','삼성전자',593000,48,NULL,NULL,NULL,NULL),
(599,12,'005930','삼성전자',594000,49,NULL,NULL,NULL,NULL);

/*Table structure for table `job015_주식` */

DROP TABLE IF EXISTS `job015_주식`;

CREATE TABLE `job015_주식` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

/*Data for the table `job015_주식` */

insert  into `job015_주식`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약',19000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약',18000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약',17000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약',16000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약',18000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약',19000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약',20000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약',19000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약',22000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약',23000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약',22000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약',23000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약',23000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약',22000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약',23000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약',24000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약',23000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약',24000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약',23000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약',24000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약',25000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약',26000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약',25000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약',24000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약',25000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약',24000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약',26000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약',27000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약',26000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약',26000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약',27000,31,NULL,NULL,NULL,NULL),
(32,1,'009290','광동제약',28000,32,NULL,NULL,NULL,NULL),
(33,1,'009290','광동제약',29000,33,NULL,NULL,NULL,NULL),
(34,1,'009290','광동제약',28000,34,NULL,NULL,NULL,NULL),
(35,1,'009290','광동제약',29000,35,NULL,NULL,NULL,NULL),
(36,1,'009290','광동제약',30000,36,NULL,NULL,NULL,NULL),
(37,1,'009290','광동제약',31000,37,NULL,NULL,NULL,NULL),
(38,1,'009290','광동제약',30000,38,NULL,NULL,NULL,NULL),
(39,1,'009290','광동제약',31000,39,NULL,NULL,NULL,NULL),
(40,1,'009290','광동제약',32000,40,NULL,NULL,NULL,NULL),
(41,1,'009290','광동제약',30000,41,NULL,NULL,NULL,NULL),
(42,1,'009290','광동제약',31000,42,NULL,NULL,NULL,NULL),
(43,1,'009290','광동제약',32000,43,NULL,NULL,NULL,NULL),
(44,1,'009290','광동제약',33000,44,NULL,NULL,NULL,NULL),
(45,1,'009290','광동제약',32000,45,NULL,NULL,NULL,NULL),
(46,1,'009290','광동제약',31000,46,NULL,NULL,NULL,NULL),
(47,1,'009290','광동제약',33000,47,NULL,NULL,NULL,NULL),
(48,1,'009290','광동제약',34000,48,NULL,NULL,NULL,NULL),
(49,1,'009290','광동제약',35000,49,NULL,NULL,NULL,NULL),
(51,2,'249420','일동제약',12000,1,NULL,NULL,NULL,NULL),
(52,2,'249420','일동제약',13000,2,NULL,NULL,NULL,NULL),
(53,2,'249420','일동제약',14000,3,NULL,NULL,NULL,NULL),
(54,2,'249420','일동제약',13000,4,NULL,NULL,NULL,NULL),
(55,2,'249420','일동제약',12000,5,NULL,NULL,NULL,NULL),
(56,2,'249420','일동제약',12000,6,NULL,NULL,NULL,NULL),
(57,2,'249420','일동제약',13000,7,NULL,NULL,NULL,NULL),
(58,2,'249420','일동제약',12000,8,NULL,NULL,NULL,NULL),
(59,2,'249420','일동제약',11000,9,NULL,NULL,NULL,NULL),
(60,2,'249420','일동제약',10000,10,NULL,NULL,NULL,NULL),
(61,2,'249420','일동제약',9000,11,NULL,NULL,NULL,NULL),
(62,2,'249420','일동제약',10000,12,NULL,NULL,NULL,NULL),
(63,2,'249420','일동제약',9000,13,NULL,NULL,NULL,NULL),
(64,2,'249420','일동제약',8000,14,NULL,NULL,NULL,NULL),
(65,2,'249420','일동제약',9000,15,NULL,NULL,NULL,NULL),
(66,2,'249420','일동제약',8000,16,NULL,NULL,NULL,NULL),
(67,2,'249420','일동제약',7000,17,NULL,NULL,NULL,NULL),
(68,2,'249420','일동제약',6000,18,NULL,NULL,NULL,NULL),
(69,2,'249420','일동제약',7000,19,NULL,NULL,NULL,NULL),
(70,2,'249420','일동제약',9000,20,NULL,NULL,NULL,NULL),
(71,2,'249420','일동제약',8000,21,NULL,NULL,NULL,NULL),
(72,2,'249420','일동제약',8000,22,NULL,NULL,NULL,NULL),
(73,2,'249420','일동제약',8000,23,NULL,NULL,NULL,NULL),
(74,2,'249420','일동제약',8000,24,NULL,NULL,NULL,NULL),
(75,2,'249420','일동제약',7000,25,NULL,NULL,NULL,NULL),
(76,2,'249420','일동제약',7000,26,NULL,NULL,NULL,NULL),
(77,2,'249420','일동제약',7000,27,NULL,NULL,NULL,NULL),
(78,2,'249420','일동제약',6000,28,NULL,NULL,NULL,NULL),
(79,2,'249420','일동제약',6000,29,NULL,NULL,NULL,NULL),
(80,2,'249420','일동제약',6000,30,NULL,NULL,NULL,NULL),
(81,2,'249420','일동제약',6000,31,NULL,NULL,NULL,NULL),
(82,2,'249420','일동제약',5000,32,NULL,NULL,NULL,NULL),
(83,2,'249420','일동제약',4000,33,NULL,NULL,NULL,NULL),
(84,2,'249420','일동제약',5000,34,NULL,NULL,NULL,NULL),
(85,2,'249420','일동제약',4000,35,NULL,NULL,NULL,NULL),
(86,2,'249420','일동제약',3000,36,NULL,NULL,NULL,NULL),
(87,2,'249420','일동제약',4000,37,NULL,NULL,NULL,NULL),
(88,2,'249420','일동제약',5000,38,NULL,NULL,NULL,NULL),
(89,2,'249420','일동제약',4000,39,NULL,NULL,NULL,NULL),
(90,2,'249420','일동제약',3000,40,NULL,NULL,NULL,NULL),
(91,2,'249420','일동제약',2000,41,NULL,NULL,NULL,NULL),
(92,2,'249420','일동제약',3000,42,NULL,NULL,NULL,NULL),
(93,2,'249420','일동제약',4000,43,NULL,NULL,NULL,NULL),
(94,2,'249420','일동제약',3000,44,NULL,NULL,NULL,NULL),
(95,2,'249420','일동제약',2000,45,NULL,NULL,NULL,NULL),
(96,2,'249420','일동제약',3000,46,NULL,NULL,NULL,NULL),
(97,2,'249420','일동제약',3000,47,NULL,NULL,NULL,NULL),
(98,2,'249420','일동제약',2000,48,NULL,NULL,NULL,NULL),
(99,2,'249420','일동제약',2000,49,NULL,NULL,NULL,NULL),
(101,3,'011170','롯데케미칼',365000,1,NULL,NULL,NULL,NULL),
(102,3,'011170','롯데케미칼',365000,2,NULL,NULL,NULL,NULL),
(103,3,'011170','롯데케미칼',364000,3,NULL,NULL,NULL,NULL),
(104,3,'011170','롯데케미칼',364000,4,NULL,NULL,NULL,NULL),
(105,3,'011170','롯데케미칼',363000,5,NULL,NULL,NULL,NULL),
(106,3,'011170','롯데케미칼',363000,6,NULL,NULL,NULL,NULL),
(107,3,'011170','롯데케미칼',362000,7,NULL,NULL,NULL,NULL),
(108,3,'011170','롯데케미칼',362000,8,NULL,NULL,NULL,NULL),
(109,3,'011170','롯데케미칼',362000,9,NULL,NULL,NULL,NULL),
(110,3,'011170','롯데케미칼',361000,10,NULL,NULL,NULL,NULL),
(111,3,'011170','롯데케미칼',362000,11,NULL,NULL,NULL,NULL),
(112,3,'011170','롯데케미칼',361000,12,NULL,NULL,NULL,NULL),
(113,3,'011170','롯데케미칼',360000,13,NULL,NULL,NULL,NULL),
(114,3,'011170','롯데케미칼',359000,14,NULL,NULL,NULL,NULL),
(115,3,'011170','롯데케미칼',359000,15,NULL,NULL,NULL,NULL),
(116,3,'011170','롯데케미칼',359000,16,NULL,NULL,NULL,NULL),
(117,3,'011170','롯데케미칼',358000,17,NULL,NULL,NULL,NULL),
(118,3,'011170','롯데케미칼',358000,18,NULL,NULL,NULL,NULL),
(119,3,'011170','롯데케미칼',357000,19,NULL,NULL,NULL,NULL),
(120,3,'011170','롯데케미칼',357000,20,NULL,NULL,NULL,NULL),
(121,3,'011170','롯데케미칼',358000,21,NULL,NULL,NULL,NULL),
(122,3,'011170','롯데케미칼',358000,22,NULL,NULL,NULL,NULL),
(123,3,'011170','롯데케미칼',359000,23,NULL,NULL,NULL,NULL),
(124,3,'011170','롯데케미칼',358000,24,NULL,NULL,NULL,NULL),
(125,3,'011170','롯데케미칼',358000,25,NULL,NULL,NULL,NULL),
(126,3,'011170','롯데케미칼',358000,26,NULL,NULL,NULL,NULL),
(127,3,'011170','롯데케미칼',359000,27,NULL,NULL,NULL,NULL),
(128,3,'011170','롯데케미칼',358000,28,NULL,NULL,NULL,NULL),
(129,3,'011170','롯데케미칼',358000,29,NULL,NULL,NULL,NULL),
(130,3,'011170','롯데케미칼',358000,30,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',359000,31,NULL,NULL,NULL,NULL),
(132,3,'011170','롯데케미칼',358000,32,NULL,NULL,NULL,NULL),
(133,3,'011170','롯데케미칼',358000,33,NULL,NULL,NULL,NULL),
(134,3,'011170','롯데케미칼',358000,34,NULL,NULL,NULL,NULL),
(135,3,'011170','롯데케미칼',359000,35,NULL,NULL,NULL,NULL),
(136,3,'011170','롯데케미칼',358000,36,NULL,NULL,NULL,NULL),
(137,3,'011170','롯데케미칼',357000,37,NULL,NULL,NULL,NULL),
(138,3,'011170','롯데케미칼',358000,38,NULL,NULL,NULL,NULL),
(139,3,'011170','롯데케미칼',358000,39,NULL,NULL,NULL,NULL),
(140,3,'011170','롯데케미칼',358000,40,NULL,NULL,NULL,NULL),
(141,3,'011170','롯데케미칼',359000,41,NULL,NULL,NULL,NULL),
(142,3,'011170','롯데케미칼',358000,42,NULL,NULL,NULL,NULL),
(143,3,'011170','롯데케미칼',357000,43,NULL,NULL,NULL,NULL),
(144,3,'011170','롯데케미칼',358000,44,NULL,NULL,NULL,NULL),
(145,3,'011170','롯데케미칼',358000,45,NULL,NULL,NULL,NULL),
(146,3,'011170','롯데케미칼',358000,46,NULL,NULL,NULL,NULL),
(147,3,'011170','롯데케미칼',359000,47,NULL,NULL,NULL,NULL),
(148,3,'011170','롯데케미칼',358000,48,NULL,NULL,NULL,NULL),
(149,3,'011170','롯데케미칼',357000,49,NULL,NULL,NULL,NULL),
(151,4,'009830','한화케미칼',26000,1,NULL,NULL,NULL,NULL),
(152,4,'009830','한화케미칼',27000,2,NULL,NULL,NULL,NULL),
(153,4,'009830','한화케미칼',26000,3,NULL,NULL,NULL,NULL),
(154,4,'009830','한화케미칼',30000,4,NULL,NULL,NULL,NULL),
(155,4,'009830','한화케미칼',26000,5,NULL,NULL,NULL,NULL),
(156,4,'009830','한화케미칼',28000,6,NULL,NULL,NULL,NULL),
(157,4,'009830','한화케미칼',30000,7,NULL,NULL,NULL,NULL),
(158,4,'009830','한화케미칼',32000,8,NULL,NULL,NULL,NULL),
(159,4,'009830','한화케미칼',26000,9,NULL,NULL,NULL,NULL),
(160,4,'009830','한화케미칼',27000,10,NULL,NULL,NULL,NULL),
(161,4,'009830','한화케미칼',26000,11,NULL,NULL,NULL,NULL),
(162,4,'009830','한화케미칼',30000,12,NULL,NULL,NULL,NULL),
(163,4,'009830','한화케미칼',26000,13,NULL,NULL,NULL,NULL),
(164,4,'009830','한화케미칼',28000,14,NULL,NULL,NULL,NULL),
(165,4,'009830','한화케미칼',29000,15,NULL,NULL,NULL,NULL),
(166,4,'009830','한화케미칼',26000,16,NULL,NULL,NULL,NULL),
(167,4,'009830','한화케미칼',27000,17,NULL,NULL,NULL,NULL),
(168,4,'009830','한화케미칼',26000,18,NULL,NULL,NULL,NULL),
(169,4,'009830','한화케미칼',30000,19,NULL,NULL,NULL,NULL),
(170,4,'009830','한화케미칼',26000,20,NULL,NULL,NULL,NULL),
(171,4,'009830','한화케미칼',28000,21,NULL,NULL,NULL,NULL),
(172,4,'009830','한화케미칼',30000,22,NULL,NULL,NULL,NULL),
(173,4,'009830','한화케미칼',31000,23,NULL,NULL,NULL,NULL),
(174,4,'009830','한화케미칼',32000,24,NULL,NULL,NULL,NULL),
(175,4,'009830','한화케미칼',26000,25,NULL,NULL,NULL,NULL),
(176,4,'009830','한화케미칼',27000,26,NULL,NULL,NULL,NULL),
(177,4,'009830','한화케미칼',26000,27,NULL,NULL,NULL,NULL),
(178,4,'009830','한화케미칼',30000,28,NULL,NULL,NULL,NULL),
(179,4,'009830','한화케미칼',26000,29,NULL,NULL,NULL,NULL),
(180,4,'009830','한화케미칼',28000,30,NULL,NULL,NULL,NULL),
(181,4,'009830','한화케미칼',32000,31,NULL,NULL,NULL,NULL),
(182,4,'009830','한화케미칼',26000,32,NULL,NULL,NULL,NULL),
(183,4,'009830','한화케미칼',27000,33,NULL,NULL,NULL,NULL),
(184,4,'009830','한화케미칼',26000,34,NULL,NULL,NULL,NULL),
(185,4,'009830','한화케미칼',30000,35,NULL,NULL,NULL,NULL),
(186,4,'009830','한화케미칼',26000,36,NULL,NULL,NULL,NULL),
(187,4,'009830','한화케미칼',35000,37,NULL,NULL,NULL,NULL),
(188,4,'009830','한화케미칼',26000,38,NULL,NULL,NULL,NULL),
(189,4,'009830','한화케미칼',27000,39,NULL,NULL,NULL,NULL),
(190,4,'009830','한화케미칼',26000,40,NULL,NULL,NULL,NULL),
(191,4,'009830','한화케미칼',30000,41,NULL,NULL,NULL,NULL),
(192,4,'009830','한화케미칼',26000,42,NULL,NULL,NULL,NULL),
(193,4,'009830','한화케미칼',28000,43,NULL,NULL,NULL,NULL),
(194,4,'009830','한화케미칼',32000,44,NULL,NULL,NULL,NULL),
(195,4,'009830','한화케미칼',26000,45,NULL,NULL,NULL,NULL),
(196,4,'009830','한화케미칼',30000,46,NULL,NULL,NULL,NULL),
(197,4,'009830','한화케미칼',26000,47,NULL,NULL,NULL,NULL),
(198,4,'009830','한화케미칼',27000,48,NULL,NULL,NULL,NULL),
(199,4,'009830','한화케미칼',26000,49,NULL,NULL,NULL,NULL),
(201,5,'007310','오뚜기',76000,1,NULL,NULL,NULL,NULL),
(202,5,'007310','오뚜기',77000,2,NULL,NULL,NULL,NULL),
(203,5,'007310','오뚜기',77000,3,NULL,NULL,NULL,NULL),
(204,5,'007310','오뚜기',76000,4,NULL,NULL,NULL,NULL),
(205,5,'007310','오뚜기',77000,5,NULL,NULL,NULL,NULL),
(206,5,'007310','오뚜기',78000,6,NULL,NULL,NULL,NULL),
(207,5,'007310','오뚜기',79000,7,NULL,NULL,NULL,NULL),
(208,5,'007310','오뚜기',80000,8,NULL,NULL,NULL,NULL),
(209,5,'007310','오뚜기',79000,9,NULL,NULL,NULL,NULL),
(210,5,'007310','오뚜기',80000,10,NULL,NULL,NULL,NULL),
(211,5,'007310','오뚜기',81000,11,NULL,NULL,NULL,NULL),
(212,5,'007310','오뚜기',80000,12,NULL,NULL,NULL,NULL),
(213,5,'007310','오뚜기',79000,13,NULL,NULL,NULL,NULL),
(214,5,'007310','오뚜기',78000,14,NULL,NULL,NULL,NULL),
(215,5,'007310','오뚜기',78000,15,NULL,NULL,NULL,NULL),
(216,5,'007310','오뚜기',77000,16,NULL,NULL,NULL,NULL),
(217,5,'007310','오뚜기',77000,17,NULL,NULL,NULL,NULL),
(218,5,'007310','오뚜기',78000,18,NULL,NULL,NULL,NULL),
(219,5,'007310','오뚜기',77000,19,NULL,NULL,NULL,NULL),
(220,5,'007310','오뚜기',76000,20,NULL,NULL,NULL,NULL),
(221,5,'007310','오뚜기',77000,21,NULL,NULL,NULL,NULL),
(222,5,'007310','오뚜기',77000,22,NULL,NULL,NULL,NULL),
(223,5,'007310','오뚜기',76000,23,NULL,NULL,NULL,NULL),
(224,5,'007310','오뚜기',77000,24,NULL,NULL,NULL,NULL),
(225,5,'007310','오뚜기',76000,25,NULL,NULL,NULL,NULL),
(226,5,'007310','오뚜기',77000,26,NULL,NULL,NULL,NULL),
(227,5,'007310','오뚜기',77000,27,NULL,NULL,NULL,NULL),
(228,5,'007310','오뚜기',76000,28,NULL,NULL,NULL,NULL),
(229,5,'007310','오뚜기',77000,29,NULL,NULL,NULL,NULL),
(230,5,'007310','오뚜기',78000,30,NULL,NULL,NULL,NULL),
(231,5,'007310','오뚜기',76000,31,NULL,NULL,NULL,NULL),
(232,5,'007310','오뚜기',77000,32,NULL,NULL,NULL,NULL),
(233,5,'007310','오뚜기',77000,33,NULL,NULL,NULL,NULL),
(234,5,'007310','오뚜기',76000,34,NULL,NULL,NULL,NULL),
(235,5,'007310','오뚜기',77000,35,NULL,NULL,NULL,NULL),
(236,5,'007310','오뚜기',78000,36,NULL,NULL,NULL,NULL),
(237,5,'007310','오뚜기',79000,37,NULL,NULL,NULL,NULL),
(238,5,'007310','오뚜기',78000,38,NULL,NULL,NULL,NULL),
(239,5,'007310','오뚜기',77000,39,NULL,NULL,NULL,NULL),
(240,5,'007310','오뚜기',77000,40,NULL,NULL,NULL,NULL),
(241,5,'007310','오뚜기',76000,41,NULL,NULL,NULL,NULL),
(242,5,'007310','오뚜기',77000,42,NULL,NULL,NULL,NULL),
(243,5,'007310','오뚜기',78000,43,NULL,NULL,NULL,NULL),
(244,5,'007310','오뚜기',78000,44,NULL,NULL,NULL,NULL),
(245,5,'007310','오뚜기',79000,45,NULL,NULL,NULL,NULL),
(246,5,'007310','오뚜기',78000,46,NULL,NULL,NULL,NULL),
(247,5,'007310','오뚜기',79000,47,NULL,NULL,NULL,NULL),
(248,5,'007310','오뚜기',78000,48,NULL,NULL,NULL,NULL),
(249,5,'007310','오뚜기',77000,49,NULL,NULL,NULL,NULL),
(251,6,'028260','삼성물산',126000,1,NULL,NULL,NULL,NULL),
(252,6,'028260','삼성물산',125000,2,NULL,NULL,NULL,NULL),
(253,6,'028260','삼성물산',124000,3,NULL,NULL,NULL,NULL),
(254,6,'028260','삼성물산',123000,4,NULL,NULL,NULL,NULL),
(255,6,'028260','삼성물산',125000,5,NULL,NULL,NULL,NULL),
(256,6,'028260','삼성물산',126000,6,NULL,NULL,NULL,NULL),
(257,6,'028260','삼성물산',127000,7,NULL,NULL,NULL,NULL),
(258,6,'028260','삼성물산',128000,8,NULL,NULL,NULL,NULL),
(259,6,'028260','삼성물산',129000,9,NULL,NULL,NULL,NULL),
(260,6,'028260','삼성물산',130000,10,NULL,NULL,NULL,NULL),
(261,6,'028260','삼성물산',131000,11,NULL,NULL,NULL,NULL),
(262,6,'028260','삼성물산',132000,12,NULL,NULL,NULL,NULL),
(263,6,'028260','삼성물산',132000,13,NULL,NULL,NULL,NULL),
(264,6,'028260','삼성물산',133000,14,NULL,NULL,NULL,NULL),
(265,6,'028260','삼성물산',132000,15,NULL,NULL,NULL,NULL),
(266,6,'028260','삼성물산',133000,16,NULL,NULL,NULL,NULL),
(267,6,'028260','삼성물산',134000,17,NULL,NULL,NULL,NULL),
(268,6,'028260','삼성물산',133000,18,NULL,NULL,NULL,NULL),
(269,6,'028260','삼성물산',134000,19,NULL,NULL,NULL,NULL),
(270,6,'028260','삼성물산',133000,20,NULL,NULL,NULL,NULL),
(271,6,'028260','삼성물산',134000,21,NULL,NULL,NULL,NULL),
(272,6,'028260','삼성물산',135000,22,NULL,NULL,NULL,NULL),
(273,6,'028260','삼성물산',136000,23,NULL,NULL,NULL,NULL),
(274,6,'028260','삼성물산',137000,24,NULL,NULL,NULL,NULL),
(275,6,'028260','삼성물산',137000,25,NULL,NULL,NULL,NULL),
(276,6,'028260','삼성물산',137000,26,NULL,NULL,NULL,NULL),
(277,6,'028260','삼성물산',138000,27,NULL,NULL,NULL,NULL),
(278,6,'028260','삼성물산',138000,28,NULL,NULL,NULL,NULL),
(279,6,'028260','삼성물산',137000,29,NULL,NULL,NULL,NULL),
(280,6,'028260','삼성물산',138000,30,NULL,NULL,NULL,NULL),
(281,6,'028260','삼성물산',138000,31,NULL,NULL,NULL,NULL),
(282,6,'028260','삼성물산',137000,32,NULL,NULL,NULL,NULL),
(283,6,'028260','삼성물산',138000,33,NULL,NULL,NULL,NULL),
(284,6,'028260','삼성물산',138000,34,NULL,NULL,NULL,NULL),
(285,6,'028260','삼성물산',137000,35,NULL,NULL,NULL,NULL),
(286,6,'028260','삼성물산',138000,36,NULL,NULL,NULL,NULL),
(287,6,'028260','삼성물산',139000,37,NULL,NULL,NULL,NULL),
(288,6,'028260','삼성물산',140000,38,NULL,NULL,NULL,NULL),
(289,6,'028260','삼성물산',139000,39,NULL,NULL,NULL,NULL),
(290,6,'028260','삼성물산',140000,40,NULL,NULL,NULL,NULL),
(291,6,'028260','삼성물산',138000,41,NULL,NULL,NULL,NULL),
(292,6,'028260','삼성물산',139000,42,NULL,NULL,NULL,NULL),
(293,6,'028260','삼성물산',139000,43,NULL,NULL,NULL,NULL),
(294,6,'028260','삼성물산',140000,44,NULL,NULL,NULL,NULL),
(295,6,'028260','삼성물산',140000,45,NULL,NULL,NULL,NULL),
(296,6,'028260','삼성물산',140000,46,NULL,NULL,NULL,NULL),
(297,6,'028260','삼성물산',139000,47,NULL,NULL,NULL,NULL),
(298,6,'028260','삼성물산',140000,48,NULL,NULL,NULL,NULL),
(299,6,'028260','삼성물산',141000,49,NULL,NULL,NULL,NULL),
(301,7,'000720','현대건설',49000,1,NULL,NULL,NULL,NULL),
(302,7,'000720','현대건설',46000,2,NULL,NULL,NULL,NULL),
(303,7,'000720','현대건설',47000,3,NULL,NULL,NULL,NULL),
(304,7,'000720','현대건설',48000,4,NULL,NULL,NULL,NULL),
(305,7,'000720','현대건설',48000,5,NULL,NULL,NULL,NULL),
(306,7,'000720','현대건설',49000,6,NULL,NULL,NULL,NULL),
(307,7,'000720','현대건설',47000,7,NULL,NULL,NULL,NULL),
(308,7,'000720','현대건설',46000,8,NULL,NULL,NULL,NULL),
(309,7,'000720','현대건설',47000,9,NULL,NULL,NULL,NULL),
(310,7,'000720','현대건설',46000,10,NULL,NULL,NULL,NULL),
(311,7,'000720','현대건설',47000,11,NULL,NULL,NULL,NULL),
(312,7,'000720','현대건설',46000,12,NULL,NULL,NULL,NULL),
(313,7,'000720','현대건설',45000,13,NULL,NULL,NULL,NULL),
(314,7,'000720','현대건설',45000,14,NULL,NULL,NULL,NULL),
(315,7,'000720','현대건설',44000,15,NULL,NULL,NULL,NULL),
(316,7,'000720','현대건설',44000,16,NULL,NULL,NULL,NULL),
(317,7,'000720','현대건설',45000,17,NULL,NULL,NULL,NULL),
(318,7,'000720','현대건설',44000,18,NULL,NULL,NULL,NULL),
(319,7,'000720','현대건설',44000,19,NULL,NULL,NULL,NULL),
(320,7,'000720','현대건설',44000,20,NULL,NULL,NULL,NULL),
(321,7,'000720','현대건설',43000,21,NULL,NULL,NULL,NULL),
(322,7,'000720','현대건설',44000,22,NULL,NULL,NULL,NULL),
(323,7,'000720','현대건설',44000,23,NULL,NULL,NULL,NULL),
(324,7,'000720','현대건설',44000,24,NULL,NULL,NULL,NULL),
(325,7,'000720','현대건설',44000,25,NULL,NULL,NULL,NULL),
(326,7,'000720','현대건설',43000,26,NULL,NULL,NULL,NULL),
(327,7,'000720','현대건설',43000,27,NULL,NULL,NULL,NULL),
(328,7,'000720','현대건설',43000,28,NULL,NULL,NULL,NULL),
(329,7,'000720','현대건설',43000,29,NULL,NULL,NULL,NULL),
(330,7,'000720','현대건설',43000,30,NULL,NULL,NULL,NULL),
(331,7,'000720','현대건설',44000,31,NULL,NULL,NULL,NULL),
(332,7,'000720','현대건설',43000,32,NULL,NULL,NULL,NULL),
(333,7,'000720','현대건설',43000,33,NULL,NULL,NULL,NULL),
(334,7,'000720','현대건설',43000,34,NULL,NULL,NULL,NULL),
(335,7,'000720','현대건설',43000,35,NULL,NULL,NULL,NULL),
(336,7,'000720','현대건설',42000,36,NULL,NULL,NULL,NULL),
(337,7,'000720','현대건설',42000,37,NULL,NULL,NULL,NULL),
(338,7,'000720','현대건설',42000,38,NULL,NULL,NULL,NULL),
(339,7,'000720','현대건설',43000,39,NULL,NULL,NULL,NULL),
(340,7,'000720','현대건설',42000,40,NULL,NULL,NULL,NULL),
(341,7,'000720','현대건설',43000,41,NULL,NULL,NULL,NULL),
(342,7,'000720','현대건설',43000,42,NULL,NULL,NULL,NULL),
(343,7,'000720','현대건설',43000,43,NULL,NULL,NULL,NULL),
(344,7,'000720','현대건설',42000,44,NULL,NULL,NULL,NULL),
(345,7,'000720','현대건설',42000,45,NULL,NULL,NULL,NULL),
(346,7,'000720','현대건설',42000,46,NULL,NULL,NULL,NULL),
(347,7,'000720','현대건설',41000,47,NULL,NULL,NULL,NULL),
(348,7,'000720','현대건설',41000,48,NULL,NULL,NULL,NULL),
(349,7,'000720','현대건설',41000,49,NULL,NULL,NULL,NULL),
(351,8,'042660','대우조선해양',44000,1,NULL,NULL,NULL,NULL),
(352,8,'042660','대우조선해양',45000,2,NULL,NULL,NULL,NULL),
(353,8,'042660','대우조선해양',44000,3,NULL,NULL,NULL,NULL),
(354,8,'042660','대우조선해양',45000,4,NULL,NULL,NULL,NULL),
(355,8,'042660','대우조선해양',46000,5,NULL,NULL,NULL,NULL),
(356,8,'042660','대우조선해양',45000,6,NULL,NULL,NULL,NULL),
(357,8,'042660','대우조선해양',46000,7,NULL,NULL,NULL,NULL),
(358,8,'042660','대우조선해양',47000,8,NULL,NULL,NULL,NULL),
(359,8,'042660','대우조선해양',47000,9,NULL,NULL,NULL,NULL),
(360,8,'042660','대우조선해양',48000,10,NULL,NULL,NULL,NULL),
(361,8,'042660','대우조선해양',48000,11,NULL,NULL,NULL,NULL),
(362,8,'042660','대우조선해양',49000,12,NULL,NULL,NULL,NULL),
(363,8,'042660','대우조선해양',49000,13,NULL,NULL,NULL,NULL),
(364,8,'042660','대우조선해양',49000,14,NULL,NULL,NULL,NULL),
(365,8,'042660','대우조선해양',50000,15,NULL,NULL,NULL,NULL),
(366,8,'042660','대우조선해양',49000,16,NULL,NULL,NULL,NULL),
(367,8,'042660','대우조선해양',49000,17,NULL,NULL,NULL,NULL),
(368,8,'042660','대우조선해양',49000,18,NULL,NULL,NULL,NULL),
(369,8,'042660','대우조선해양',50000,19,NULL,NULL,NULL,NULL),
(370,8,'042660','대우조선해양',49000,20,NULL,NULL,NULL,NULL),
(371,8,'042660','대우조선해양',50000,21,NULL,NULL,NULL,NULL),
(372,8,'042660','대우조선해양',49000,22,NULL,NULL,NULL,NULL),
(373,8,'042660','대우조선해양',50000,23,NULL,NULL,NULL,NULL),
(374,8,'042660','대우조선해양',51000,24,NULL,NULL,NULL,NULL),
(375,8,'042660','대우조선해양',51000,25,NULL,NULL,NULL,NULL),
(376,8,'042660','대우조선해양',51000,26,NULL,NULL,NULL,NULL),
(377,8,'042660','대우조선해양',50000,27,NULL,NULL,NULL,NULL),
(378,8,'042660','대우조선해양',51000,28,NULL,NULL,NULL,NULL),
(379,8,'042660','대우조선해양',51000,29,NULL,NULL,NULL,NULL),
(380,8,'042660','대우조선해양',51000,30,NULL,NULL,NULL,NULL),
(381,8,'042660','대우조선해양',50000,31,NULL,NULL,NULL,NULL),
(382,8,'042660','대우조선해양',51000,32,NULL,NULL,NULL,NULL),
(383,8,'042660','대우조선해양',52000,33,NULL,NULL,NULL,NULL),
(384,8,'042660','대우조선해양',52000,34,NULL,NULL,NULL,NULL),
(385,8,'042660','대우조선해양',53000,35,NULL,NULL,NULL,NULL),
(386,8,'042660','대우조선해양',54000,36,NULL,NULL,NULL,NULL),
(387,8,'042660','대우조선해양',54000,37,NULL,NULL,NULL,NULL),
(388,8,'042660','대우조선해양',55000,38,NULL,NULL,NULL,NULL),
(389,8,'042660','대우조선해양',54000,39,NULL,NULL,NULL,NULL),
(390,8,'042660','대우조선해양',55000,40,NULL,NULL,NULL,NULL),
(391,8,'042660','대우조선해양',54000,41,NULL,NULL,NULL,NULL),
(392,8,'042660','대우조선해양',53000,42,NULL,NULL,NULL,NULL),
(393,8,'042660','대우조선해양',54000,43,NULL,NULL,NULL,NULL),
(394,8,'042660','대우조선해양',54000,44,NULL,NULL,NULL,NULL),
(395,8,'042660','대우조선해양',55000,45,NULL,NULL,NULL,NULL),
(396,8,'042660','대우조선해양',54000,46,NULL,NULL,NULL,NULL),
(397,8,'042660','대우조선해양',55000,47,NULL,NULL,NULL,NULL),
(398,8,'042660','대우조선해양',56000,48,NULL,NULL,NULL,NULL),
(399,8,'042660','대우조선해양',55000,49,NULL,NULL,NULL,NULL),
(401,9,'005380','현대차',148000,1,NULL,NULL,NULL,NULL),
(402,9,'005380','현대차',148000,2,NULL,NULL,NULL,NULL),
(403,9,'005380','현대차',148000,3,NULL,NULL,NULL,NULL),
(404,9,'005380','현대차',148000,4,NULL,NULL,NULL,NULL),
(405,9,'005380','현대차',149000,5,NULL,NULL,NULL,NULL),
(406,9,'005380','현대차',149000,6,NULL,NULL,NULL,NULL),
(407,9,'005380','현대차',148000,7,NULL,NULL,NULL,NULL),
(408,9,'005380','현대차',149000,8,NULL,NULL,NULL,NULL),
(409,9,'005380','현대차',148000,9,NULL,NULL,NULL,NULL),
(410,9,'005380','현대차',149000,10,NULL,NULL,NULL,NULL),
(411,9,'005380','현대차',148000,11,NULL,NULL,NULL,NULL),
(412,9,'005380','현대차',149000,12,NULL,NULL,NULL,NULL),
(413,9,'005380','현대차',148000,13,NULL,NULL,NULL,NULL),
(414,9,'005380','현대차',148000,14,NULL,NULL,NULL,NULL),
(415,9,'005380','현대차',148000,15,NULL,NULL,NULL,NULL),
(416,9,'005380','현대차',148000,16,NULL,NULL,NULL,NULL),
(417,9,'005380','현대차',148000,17,NULL,NULL,NULL,NULL),
(418,9,'005380','현대차',148000,18,NULL,NULL,NULL,NULL),
(419,9,'005380','현대차',148000,19,NULL,NULL,NULL,NULL),
(420,9,'005380','현대차',148000,20,NULL,NULL,NULL,NULL),
(421,9,'005380','현대차',148000,21,NULL,NULL,NULL,NULL),
(422,9,'005380','현대차',149000,22,NULL,NULL,NULL,NULL),
(423,9,'005380','현대차',149000,23,NULL,NULL,NULL,NULL),
(424,9,'','',149000,24,NULL,NULL,NULL,NULL),
(425,9,'005380','현대차',148000,25,NULL,NULL,NULL,NULL),
(426,9,'005380','현대차',148000,26,NULL,NULL,NULL,NULL),
(427,9,'005380','현대차',148000,27,NULL,NULL,NULL,NULL),
(428,9,'005380','현대차',148000,28,NULL,NULL,NULL,NULL),
(429,9,'005380','현대차',148000,29,NULL,NULL,NULL,NULL),
(430,9,'005380','현대차',149000,30,NULL,NULL,NULL,NULL),
(431,9,'005380','현대차',148000,31,NULL,NULL,NULL,NULL),
(432,9,'005380','현대차',148000,32,NULL,NULL,NULL,NULL),
(433,9,'005380','현대차',147000,33,NULL,NULL,NULL,NULL),
(434,9,'005380','현대차',147000,34,NULL,NULL,NULL,NULL),
(435,9,'005380','현대차',147000,35,NULL,NULL,NULL,NULL),
(436,9,'005380','현대차',148000,36,NULL,NULL,NULL,NULL),
(437,9,'005380','현대차',147000,37,NULL,NULL,NULL,NULL),
(438,9,'005380','현대차',148000,38,NULL,NULL,NULL,NULL),
(439,9,'005380','현대차',148000,39,NULL,NULL,NULL,NULL),
(440,9,'005380','현대차',147000,40,NULL,NULL,NULL,NULL),
(441,9,'005380','현대차',147000,41,NULL,NULL,NULL,NULL),
(442,9,'005380','현대차',148000,42,NULL,NULL,NULL,NULL),
(443,9,'005380','현대차',148000,43,NULL,NULL,NULL,NULL),
(444,9,'005380','현대차',148000,44,NULL,NULL,NULL,NULL),
(445,9,'005380','현대차',149000,45,NULL,NULL,NULL,NULL),
(446,9,'005380','현대차',148000,46,NULL,NULL,NULL,NULL),
(447,9,'005380','현대차',148000,47,NULL,NULL,NULL,NULL),
(448,9,'005380','현대차',148000,48,NULL,NULL,NULL,NULL),
(449,9,'005380','현대차',149000,49,NULL,NULL,NULL,NULL),
(451,10,'003490','대한항공',31000,1,NULL,NULL,NULL,NULL),
(452,10,'003490','대한항공',30000,2,NULL,NULL,NULL,NULL),
(453,10,'003490','대한항공',29000,3,NULL,NULL,NULL,NULL),
(454,10,'003490','대한항공',28000,4,NULL,NULL,NULL,NULL),
(455,10,'003490','대한항공',29000,5,NULL,NULL,NULL,NULL),
(456,10,'003490','대한항공',31000,6,NULL,NULL,NULL,NULL),
(457,10,'003490','대한항공',32000,7,NULL,NULL,NULL,NULL),
(458,10,'003490','대한항공',33000,8,NULL,NULL,NULL,NULL),
(459,10,'003490','대한항공',34000,9,NULL,NULL,NULL,NULL),
(460,10,'003490','대한항공',34000,10,NULL,NULL,NULL,NULL),
(461,10,'003490','대한항공',34000,11,NULL,NULL,NULL,NULL),
(462,10,'003490','대한항공',35000,12,NULL,NULL,NULL,NULL),
(463,10,'003490','대한항공',35000,13,NULL,NULL,NULL,NULL),
(464,10,'003490','대한항공',36000,14,NULL,NULL,NULL,NULL),
(465,10,'003490','대한항공',35000,15,NULL,NULL,NULL,NULL),
(466,10,'003490','대한항공',36000,16,NULL,NULL,NULL,NULL),
(467,10,'003490','대한항공',37000,17,NULL,NULL,NULL,NULL),
(468,10,'003490','대한항공',38000,18,NULL,NULL,NULL,NULL),
(469,10,'003490','대한항공',39000,19,NULL,NULL,NULL,NULL),
(470,10,'003490','대한항공',40000,20,NULL,NULL,NULL,NULL),
(471,10,'003490','대한항공',41000,21,NULL,NULL,NULL,NULL),
(472,10,'003490','대한항공',42000,22,NULL,NULL,NULL,NULL),
(473,10,'003490','대한항공',43000,23,NULL,NULL,NULL,NULL),
(474,10,'003490','대한항공',43000,24,NULL,NULL,NULL,NULL),
(475,10,'003490','대한항공',43000,25,NULL,NULL,NULL,NULL),
(476,10,'003490','대한항공',44000,26,NULL,NULL,NULL,NULL),
(477,10,'003490','대한항공',44000,27,NULL,NULL,NULL,NULL),
(478,10,'003490','대한항공',44000,28,NULL,NULL,NULL,NULL),
(479,10,'003490','대한항공',44000,29,NULL,NULL,NULL,NULL),
(480,10,'003490','대한항공',44000,30,NULL,NULL,NULL,NULL),
(481,10,'003490','대한항공',45000,31,NULL,NULL,NULL,NULL),
(482,10,'003490','대한항공',44000,32,NULL,NULL,NULL,NULL),
(483,10,'003490','대한항공',44000,33,NULL,NULL,NULL,NULL),
(484,10,'003490','대한항공',45000,34,NULL,NULL,NULL,NULL),
(485,10,'003490','대한항공',44000,35,NULL,NULL,NULL,NULL),
(486,10,'003490','대한항공',45000,36,NULL,NULL,NULL,NULL),
(487,10,'003490','대한항공',45000,37,NULL,NULL,NULL,NULL),
(488,10,'003490','대한항공',45000,38,NULL,NULL,NULL,NULL),
(489,10,'003490','대한항공',46000,39,NULL,NULL,NULL,NULL),
(490,10,'003490','대한항공',45000,40,NULL,NULL,NULL,NULL),
(491,10,'003490','대한항공',46000,41,NULL,NULL,NULL,NULL),
(492,10,'003490','대한항공',45000,42,NULL,NULL,NULL,NULL),
(493,10,'003490','대한항공',46000,43,NULL,NULL,NULL,NULL),
(494,10,'003490','대한항공',46000,44,NULL,NULL,NULL,NULL),
(495,10,'003490','대한항공',47000,45,NULL,NULL,NULL,NULL),
(496,10,'003490','대한항공',47000,46,NULL,NULL,NULL,NULL),
(497,10,'003490','대한항공',48000,47,NULL,NULL,NULL,NULL),
(498,10,'003490','대한항공',47000,48,NULL,NULL,NULL,NULL),
(499,10,'003490','대한항공',48000,49,NULL,NULL,NULL,NULL),
(501,11,'035720','카카오',83000,1,NULL,NULL,NULL,NULL),
(502,11,'035720','카카오',84000,2,NULL,NULL,NULL,NULL),
(503,11,'035720','카카오',84000,3,NULL,NULL,NULL,NULL),
(504,11,'035720','카카오',84000,4,NULL,NULL,NULL,NULL),
(505,11,'035720','카카오',84000,5,NULL,NULL,NULL,NULL),
(506,11,'035720','카카오',85000,6,NULL,NULL,NULL,NULL),
(507,11,'035720','카카오',85000,7,NULL,NULL,NULL,NULL),
(508,11,'035720','카카오',85000,8,NULL,NULL,NULL,NULL),
(509,11,'035720','카카오',85000,9,NULL,NULL,NULL,NULL),
(510,11,'035720','카카오',85000,10,NULL,NULL,NULL,NULL),
(511,11,'035720','카카오',85000,11,NULL,NULL,NULL,NULL),
(512,11,'035720','카카오',86000,12,NULL,NULL,NULL,NULL),
(513,11,'035720','카카오',86000,13,NULL,NULL,NULL,NULL),
(514,11,'035720','카카오',86000,14,NULL,NULL,NULL,NULL),
(515,11,'035720','카카오',86000,15,NULL,NULL,NULL,NULL),
(516,11,'035720','카카오',86000,16,NULL,NULL,NULL,NULL),
(517,11,'035720','카카오',86000,17,NULL,NULL,NULL,NULL),
(518,11,'035720','카카오',87000,18,NULL,NULL,NULL,NULL),
(519,11,'035720','카카오',88000,19,NULL,NULL,NULL,NULL),
(520,11,'035720','카카오',87000,20,NULL,NULL,NULL,NULL),
(521,11,'035720','카카오',87000,21,NULL,NULL,NULL,NULL),
(522,11,'035720','카카오',87000,22,NULL,NULL,NULL,NULL),
(523,11,'035720','카카오',88000,23,NULL,NULL,NULL,NULL),
(524,11,'035720','카카오',88000,24,NULL,NULL,NULL,NULL),
(525,11,'035720','카카오',88000,25,NULL,NULL,NULL,NULL),
(526,11,'035720','카카오',88000,26,NULL,NULL,NULL,NULL),
(527,11,'035720','카카오',89000,27,NULL,NULL,NULL,NULL),
(528,11,'035720','카카오',89000,28,NULL,NULL,NULL,NULL),
(529,11,'035720','카카오',88000,29,NULL,NULL,NULL,NULL),
(530,11,'035720','카카오',88000,30,NULL,NULL,NULL,NULL),
(531,11,'035720','카카오',89000,31,NULL,NULL,NULL,NULL),
(532,11,'035720','카카오',89000,32,NULL,NULL,NULL,NULL),
(533,11,'035720','카카오',89000,33,NULL,NULL,NULL,NULL),
(534,11,'035720','카카오',89000,34,NULL,NULL,NULL,NULL),
(535,11,'035720','카카오',90000,35,NULL,NULL,NULL,NULL),
(536,11,'035720','카카오',90000,36,NULL,NULL,NULL,NULL),
(537,11,'035720','카카오',90000,37,NULL,NULL,NULL,NULL),
(538,11,'035720','카카오',90000,38,NULL,NULL,NULL,NULL),
(539,11,'035720','카카오',91000,39,NULL,NULL,NULL,NULL),
(540,11,'035720','카카오',91000,40,NULL,NULL,NULL,NULL),
(541,11,'035720','카카오',91000,41,NULL,NULL,NULL,NULL),
(542,11,'035720','카카오',91000,42,NULL,NULL,NULL,NULL),
(543,11,'035720','카카오',91000,43,NULL,NULL,NULL,NULL),
(544,11,'035720','카카오',91000,44,NULL,NULL,NULL,NULL),
(545,11,'035720','카카오',90000,45,NULL,NULL,NULL,NULL),
(546,11,'035720','카카오',90000,46,NULL,NULL,NULL,NULL),
(547,11,'035720','카카오',91000,47,NULL,NULL,NULL,NULL),
(548,11,'035720','카카오',91000,48,NULL,NULL,NULL,NULL),
(549,11,'035720','카카오',91000,49,NULL,NULL,NULL,NULL),
(551,12,'005930','삼성전자',593000,1,NULL,NULL,NULL,NULL),
(552,12,'005930','삼성전자',593000,2,NULL,NULL,NULL,NULL),
(553,12,'005930','삼성전자',593000,3,NULL,NULL,NULL,NULL),
(554,12,'005930','삼성전자',592000,4,NULL,NULL,NULL,NULL),
(555,12,'005930','삼성전자',593000,5,NULL,NULL,NULL,NULL),
(556,12,'005930','삼성전자',592000,6,NULL,NULL,NULL,NULL),
(557,12,'005930','삼성전자',592000,7,NULL,NULL,NULL,NULL),
(558,12,'005930','삼성전자',592000,8,NULL,NULL,NULL,NULL),
(559,12,'005930','삼성전자',593000,9,NULL,NULL,NULL,NULL),
(560,12,'005930','삼성전자',593000,10,NULL,NULL,NULL,NULL),
(561,12,'005930','삼성전자',593000,11,NULL,NULL,NULL,NULL),
(562,12,'005930','삼성전자',592000,12,NULL,NULL,NULL,NULL),
(563,12,'005930','삼성전자',593000,13,NULL,NULL,NULL,NULL),
(564,12,'005930','삼성전자',594000,14,NULL,NULL,NULL,NULL),
(565,12,'005930','삼성전자',593000,15,NULL,NULL,NULL,NULL),
(566,12,'005930','삼성전자',593000,16,NULL,NULL,NULL,NULL),
(567,12,'005930','삼성전자',594000,17,NULL,NULL,NULL,NULL),
(568,12,'005930','삼성전자',594000,18,NULL,NULL,NULL,NULL),
(569,12,'005930','삼성전자',594000,19,NULL,NULL,NULL,NULL),
(570,12,'005930','삼성전자',594000,20,NULL,NULL,NULL,NULL),
(571,12,'005930','삼성전자',594000,21,NULL,NULL,NULL,NULL),
(572,12,'005930','삼성전자',593000,22,NULL,NULL,NULL,NULL),
(573,12,'005930','삼성전자',594000,23,NULL,NULL,NULL,NULL),
(574,12,'005930','삼성전자',593000,24,NULL,NULL,NULL,NULL),
(575,12,'005930','삼성전자',593000,25,NULL,NULL,NULL,NULL),
(576,12,'005930','삼성전자',594000,26,NULL,NULL,NULL,NULL),
(577,12,'005930','삼성전자',594000,27,NULL,NULL,NULL,NULL),
(578,12,'005930','삼성전자',594000,28,NULL,NULL,NULL,NULL),
(579,12,'005930','삼성전자',594000,29,NULL,NULL,NULL,NULL),
(580,12,'005930','삼성전자',594000,30,NULL,NULL,NULL,NULL),
(581,12,'005930','삼성전자',594000,31,NULL,NULL,NULL,NULL),
(582,12,'005930','삼성전자',593000,32,NULL,NULL,NULL,NULL),
(583,12,'005930','삼성전자',594000,33,NULL,NULL,NULL,NULL),
(584,12,'005930','삼성전자',594000,34,NULL,NULL,NULL,NULL),
(585,12,'005930','삼성전자',594000,35,NULL,NULL,NULL,NULL),
(586,12,'005930','삼성전자',594000,36,NULL,NULL,NULL,NULL),
(587,12,'005930','삼성전자',594000,37,NULL,NULL,NULL,NULL),
(588,12,'005930','삼성전자',593000,38,NULL,NULL,NULL,NULL),
(589,12,'005930','삼성전자',593000,39,NULL,NULL,NULL,NULL),
(590,12,'005930','삼성전자',594000,40,NULL,NULL,NULL,NULL),
(591,12,'005930','삼성전자',594000,41,NULL,NULL,NULL,NULL),
(592,12,'005930','삼성전자',594000,42,NULL,NULL,NULL,NULL),
(593,12,'005930','삼성전자',594000,43,NULL,NULL,NULL,NULL),
(594,12,'005930','삼성전자',593000,44,NULL,NULL,NULL,NULL),
(595,12,'005930','삼성전자',593000,45,NULL,NULL,NULL,NULL),
(596,12,'005930','삼성전자',594000,46,NULL,NULL,NULL,NULL),
(597,12,'005930','삼성전자',593000,47,NULL,NULL,NULL,NULL),
(598,12,'005930','삼성전자',593000,48,NULL,NULL,NULL,NULL),
(599,12,'005930','삼성전자',594000,49,NULL,NULL,NULL,NULL);

/*Table structure for table `job015_펀드` */

DROP TABLE IF EXISTS `job015_펀드`;

CREATE TABLE `job015_펀드` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=utf8;

/*Data for the table `job015_펀드` */

insert  into `job015_펀드`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약',19000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약',18000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약',17000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약',16000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약',18000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약',19000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약',20000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약',19000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약',22000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약',23000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약',22000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약',23000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약',23000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약',22000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약',23000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약',24000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약',23000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약',24000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약',23000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약',24000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약',25000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약',26000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약',25000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약',24000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약',25000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약',24000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약',26000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약',27000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약',26000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약',26000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약',27000,31,NULL,NULL,NULL,NULL),
(32,1,'009290','광동제약',28000,32,NULL,NULL,NULL,NULL),
(33,1,'009290','광동제약',29000,33,NULL,NULL,NULL,NULL),
(34,1,'009290','광동제약',28000,34,NULL,NULL,NULL,NULL),
(35,1,'009290','광동제약',29000,35,NULL,NULL,NULL,NULL),
(36,1,'009290','광동제약',30000,36,NULL,NULL,NULL,NULL),
(37,1,'009290','광동제약',31000,37,NULL,NULL,NULL,NULL),
(38,1,'009290','광동제약',30000,38,NULL,NULL,NULL,NULL),
(39,1,'009290','광동제약',31000,39,NULL,NULL,NULL,NULL),
(40,1,'009290','광동제약',32000,40,NULL,NULL,NULL,NULL),
(41,1,'009290','광동제약',30000,41,NULL,NULL,NULL,NULL),
(42,1,'009290','광동제약',31000,42,NULL,NULL,NULL,NULL),
(43,1,'009290','광동제약',32000,43,NULL,NULL,NULL,NULL),
(44,1,'009290','광동제약',33000,44,NULL,NULL,NULL,NULL),
(45,1,'009290','광동제약',32000,45,NULL,NULL,NULL,NULL),
(46,1,'009290','광동제약',31000,46,NULL,NULL,NULL,NULL),
(47,1,'009290','광동제약',33000,47,NULL,NULL,NULL,NULL),
(48,1,'009290','광동제약',34000,48,NULL,NULL,NULL,NULL),
(49,1,'009290','광동제약',35000,49,NULL,NULL,NULL,NULL),
(50,1,'009290','광동제약',34000,50,NULL,NULL,NULL,NULL),
(51,1,'009290','광동제약',35000,51,NULL,NULL,NULL,NULL),
(52,1,'009290','광동제약',35000,52,NULL,NULL,NULL,NULL),
(53,1,'009290','광동제약',35000,53,NULL,NULL,NULL,NULL),
(54,1,'009290','광동제약',35000,54,NULL,NULL,NULL,NULL),
(55,1,'009290','광동제약',36000,55,NULL,NULL,NULL,NULL),
(56,1,'009290','광동제약',36000,56,NULL,NULL,NULL,NULL),
(57,1,'009290','광동제약',36000,57,NULL,NULL,NULL,NULL),
(58,1,'009290','광동제약',37000,58,NULL,NULL,NULL,NULL),
(59,1,'009290','광동제약',38000,59,NULL,NULL,NULL,NULL),
(60,1,'009290','광동제약',38000,60,NULL,NULL,NULL,NULL),
(61,1,'009290','광동제약',39000,61,NULL,NULL,NULL,NULL),
(62,1,'009290','광동제약',40000,62,NULL,NULL,NULL,NULL),
(63,1,'009290','광동제약',41000,63,NULL,NULL,NULL,NULL),
(64,1,'009290','광동제약',42000,64,NULL,NULL,NULL,NULL),
(65,1,'009290','광동제약',43000,65,NULL,NULL,NULL,NULL),
(66,2,'249420','일동제약',12000,1,NULL,NULL,NULL,NULL),
(67,2,'249420','일동제약',13000,2,NULL,NULL,NULL,NULL),
(68,2,'249420','일동제약',14000,3,NULL,NULL,NULL,NULL),
(69,2,'249420','일동제약',13000,4,NULL,NULL,NULL,NULL),
(70,2,'249420','일동제약',12000,5,NULL,NULL,NULL,NULL),
(71,2,'249420','일동제약',12000,6,NULL,NULL,NULL,NULL),
(72,2,'249420','일동제약',13000,7,NULL,NULL,NULL,NULL),
(73,2,'249420','일동제약',12000,8,NULL,NULL,NULL,NULL),
(74,2,'249420','일동제약',11000,9,NULL,NULL,NULL,NULL),
(75,2,'249420','일동제약',10000,10,NULL,NULL,NULL,NULL),
(76,2,'249420','일동제약',9000,11,NULL,NULL,NULL,NULL),
(77,2,'249420','일동제약',10000,12,NULL,NULL,NULL,NULL),
(78,2,'249420','일동제약',9000,13,NULL,NULL,NULL,NULL),
(79,2,'249420','일동제약',8000,14,NULL,NULL,NULL,NULL),
(80,2,'249420','일동제약',9000,15,NULL,NULL,NULL,NULL),
(81,2,'249420','일동제약',8000,16,NULL,NULL,NULL,NULL),
(82,2,'249420','일동제약',7000,17,NULL,NULL,NULL,NULL),
(83,2,'249420','일동제약',6000,18,NULL,NULL,NULL,NULL),
(84,2,'249420','일동제약',7000,19,NULL,NULL,NULL,NULL),
(85,2,'249420','일동제약',9000,20,NULL,NULL,NULL,NULL),
(86,2,'249420','일동제약',8000,21,NULL,NULL,NULL,NULL),
(87,2,'249420','일동제약',8000,22,NULL,NULL,NULL,NULL),
(88,2,'249420','일동제약',8000,23,NULL,NULL,NULL,NULL),
(89,2,'249420','일동제약',8000,24,NULL,NULL,NULL,NULL),
(90,2,'249420','일동제약',7000,25,NULL,NULL,NULL,NULL),
(91,2,'249420','일동제약',7000,26,NULL,NULL,NULL,NULL),
(92,2,'249420','일동제약',7000,27,NULL,NULL,NULL,NULL),
(93,2,'249420','일동제약',6000,28,NULL,NULL,NULL,NULL),
(94,2,'249420','일동제약',6000,29,NULL,NULL,NULL,NULL),
(95,2,'249420','일동제약',6000,30,NULL,NULL,NULL,NULL),
(96,2,'249420','일동제약',6000,31,NULL,NULL,NULL,NULL),
(97,2,'249420','일동제약',5000,32,NULL,NULL,NULL,NULL),
(98,2,'249420','일동제약',4000,33,NULL,NULL,NULL,NULL),
(99,2,'249420','일동제약',5000,34,NULL,NULL,NULL,NULL),
(100,2,'249420','일동제약',4000,35,NULL,NULL,NULL,NULL),
(101,2,'249420','일동제약',3000,36,NULL,NULL,NULL,NULL),
(102,2,'249420','일동제약',4000,37,NULL,NULL,NULL,NULL),
(103,2,'249420','일동제약',5000,38,NULL,NULL,NULL,NULL),
(104,2,'249420','일동제약',4000,39,NULL,NULL,NULL,NULL),
(105,2,'249420','일동제약',3000,40,NULL,NULL,NULL,NULL),
(106,2,'249420','일동제약',2000,41,NULL,NULL,NULL,NULL),
(107,2,'249420','일동제약',3000,42,NULL,NULL,NULL,NULL),
(108,2,'249420','일동제약',4000,43,NULL,NULL,NULL,NULL),
(109,2,'249420','일동제약',3000,44,NULL,NULL,NULL,NULL),
(110,2,'249420','일동제약',2000,45,NULL,NULL,NULL,NULL),
(111,2,'249420','일동제약',3000,46,NULL,NULL,NULL,NULL),
(112,2,'249420','일동제약',3000,47,NULL,NULL,NULL,NULL),
(113,2,'249420','일동제약',3000,48,NULL,NULL,NULL,NULL),
(114,2,'249420','일동제약',2000,49,NULL,NULL,NULL,NULL),
(115,2,'249420','일동제약',3000,50,NULL,NULL,NULL,NULL),
(116,2,'249420','일동제약',3000,51,NULL,NULL,NULL,NULL),
(117,2,'249420','일동제약',2000,52,NULL,NULL,NULL,NULL),
(118,2,'249420','일동제약',3000,53,NULL,NULL,NULL,NULL),
(119,2,'249420','일동제약',3000,54,NULL,NULL,NULL,NULL),
(120,2,'249420','일동제약',2000,55,NULL,NULL,NULL,NULL),
(121,2,'249420','일동제약',3000,56,NULL,NULL,NULL,NULL),
(122,2,'249420','일동제약',3000,57,NULL,NULL,NULL,NULL),
(123,2,'249420','일동제약',3000,58,NULL,NULL,NULL,NULL),
(124,2,'249420','일동제약',2000,59,NULL,NULL,NULL,NULL),
(125,2,'249420','일동제약',1900,60,NULL,NULL,NULL,NULL),
(126,2,'249420','일동제약',1800,61,NULL,NULL,NULL,NULL),
(127,2,'249420','일동제약',1700,62,NULL,NULL,NULL,NULL),
(128,2,'249420','일동제약',1600,63,NULL,NULL,NULL,NULL),
(129,2,'249420','일동제약',1500,64,NULL,NULL,NULL,NULL),
(130,2,'249420','일동제약',1400,65,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',365000,1,NULL,NULL,NULL,NULL),
(132,3,'011170','롯데케미칼',365000,2,NULL,NULL,NULL,NULL),
(133,3,'011170','롯데케미칼',364000,3,NULL,NULL,NULL,NULL),
(134,3,'011170','롯데케미칼',364000,4,NULL,NULL,NULL,NULL),
(135,3,'011170','롯데케미칼',363000,5,NULL,NULL,NULL,NULL),
(136,3,'011170','롯데케미칼',363000,6,NULL,NULL,NULL,NULL),
(137,3,'011170','롯데케미칼',362000,7,NULL,NULL,NULL,NULL),
(138,3,'011170','롯데케미칼',362000,8,NULL,NULL,NULL,NULL),
(139,3,'011170','롯데케미칼',362000,9,NULL,NULL,NULL,NULL),
(140,3,'011170','롯데케미칼',361000,10,NULL,NULL,NULL,NULL),
(141,3,'011170','롯데케미칼',362000,11,NULL,NULL,NULL,NULL),
(142,3,'011170','롯데케미칼',361000,12,NULL,NULL,NULL,NULL),
(143,3,'011170','롯데케미칼',360000,13,NULL,NULL,NULL,NULL),
(144,3,'011170','롯데케미칼',359000,14,NULL,NULL,NULL,NULL),
(145,3,'011170','롯데케미칼',359000,15,NULL,NULL,NULL,NULL),
(146,3,'011170','롯데케미칼',359000,16,NULL,NULL,NULL,NULL),
(147,3,'011170','롯데케미칼',358000,17,NULL,NULL,NULL,NULL),
(148,3,'011170','롯데케미칼',358000,18,NULL,NULL,NULL,NULL),
(149,3,'011170','롯데케미칼',357000,19,NULL,NULL,NULL,NULL),
(150,3,'011170','롯데케미칼',357000,20,NULL,NULL,NULL,NULL),
(151,3,'011170','롯데케미칼',358000,21,NULL,NULL,NULL,NULL),
(152,3,'011170','롯데케미칼',358000,22,NULL,NULL,NULL,NULL),
(153,3,'011170','롯데케미칼',359000,23,NULL,NULL,NULL,NULL),
(154,3,'011170','롯데케미칼',358000,24,NULL,NULL,NULL,NULL),
(155,3,'011170','롯데케미칼',358000,25,NULL,NULL,NULL,NULL),
(156,3,'011170','롯데케미칼',358000,26,NULL,NULL,NULL,NULL),
(157,3,'011170','롯데케미칼',359000,27,NULL,NULL,NULL,NULL),
(158,3,'011170','롯데케미칼',358000,28,NULL,NULL,NULL,NULL),
(159,3,'011170','롯데케미칼',357000,29,NULL,NULL,NULL,NULL),
(160,3,'011170','롯데케미칼',357000,30,NULL,NULL,NULL,NULL),
(161,3,'011170','롯데케미칼',356000,31,NULL,NULL,NULL,NULL),
(162,3,'011170','롯데케미칼',355000,32,NULL,NULL,NULL,NULL),
(163,3,'011170','롯데케미칼',354000,33,NULL,NULL,NULL,NULL),
(164,3,'011170','롯데케미칼',353000,34,NULL,NULL,NULL,NULL),
(165,3,'011170','롯데케미칼',352000,35,NULL,NULL,NULL,NULL),
(166,3,'011170','롯데케미칼',352000,36,NULL,NULL,NULL,NULL),
(167,3,'011170','롯데케미칼',351000,37,NULL,NULL,NULL,NULL),
(168,3,'011170','롯데케미칼',351000,38,NULL,NULL,NULL,NULL),
(169,3,'011170','롯데케미칼',350000,39,NULL,NULL,NULL,NULL),
(170,3,'011170','롯데케미칼',349000,40,NULL,NULL,NULL,NULL),
(171,3,'011170','롯데케미칼',349000,41,NULL,NULL,NULL,NULL),
(172,3,'011170','롯데케미칼',348000,42,NULL,NULL,NULL,NULL),
(173,3,'011170','롯데케미칼',347000,43,NULL,NULL,NULL,NULL),
(174,3,'011170','롯데케미칼',348000,44,NULL,NULL,NULL,NULL),
(175,3,'011170','롯데케미칼',348000,45,NULL,NULL,NULL,NULL),
(176,3,'011170','롯데케미칼',347000,46,NULL,NULL,NULL,NULL),
(177,3,'011170','롯데케미칼',347000,47,NULL,NULL,NULL,NULL),
(178,3,'011170','롯데케미칼',348000,48,NULL,NULL,NULL,NULL),
(179,3,'011170','롯데케미칼',347000,49,NULL,NULL,NULL,NULL),
(180,3,'011170','롯데케미칼',347000,50,NULL,NULL,NULL,NULL),
(181,3,'011170','롯데케미칼',346000,51,NULL,NULL,NULL,NULL),
(182,3,'011170','롯데케미칼',345000,52,NULL,NULL,NULL,NULL),
(183,3,'011170','롯데케미칼',344000,53,NULL,NULL,NULL,NULL),
(184,3,'011170','롯데케미칼',343000,54,NULL,NULL,NULL,NULL),
(185,3,'011170','롯데케미칼',343000,55,NULL,NULL,NULL,NULL),
(186,3,'011170','롯데케미칼',342000,56,NULL,NULL,NULL,NULL),
(187,3,'011170','롯데케미칼',341000,57,NULL,NULL,NULL,NULL),
(188,3,'011170','롯데케미칼',340000,58,NULL,NULL,NULL,NULL),
(189,3,'011170','롯데케미칼',339000,59,NULL,NULL,NULL,NULL),
(190,3,'011170','롯데케미칼',338000,60,NULL,NULL,NULL,NULL),
(191,3,'011170','롯데케미칼',337000,61,NULL,NULL,NULL,NULL),
(192,3,'011170','롯데케미칼',336000,62,NULL,NULL,NULL,NULL),
(193,3,'011170','롯데케미칼',335000,63,NULL,NULL,NULL,NULL),
(194,3,'011170','롯데케미칼',334000,64,NULL,NULL,NULL,NULL),
(195,3,'011170','롯데케미칼',334400,65,NULL,NULL,NULL,NULL),
(196,4,'009830','한화케미칼',26000,1,NULL,NULL,NULL,NULL),
(197,4,'009830','한화케미칼',27000,2,NULL,NULL,NULL,NULL),
(198,4,'009830','한화케미칼',26000,3,NULL,NULL,NULL,NULL),
(199,4,'009830','한화케미칼',30000,4,NULL,NULL,NULL,NULL),
(200,4,'009830','한화케미칼',26000,5,NULL,NULL,NULL,NULL),
(201,4,'009830','한화케미칼',28000,6,NULL,NULL,NULL,NULL),
(202,4,'009830','한화케미칼',30000,7,NULL,NULL,NULL,NULL),
(203,4,'009830','한화케미칼',32000,8,NULL,NULL,NULL,NULL),
(204,4,'009830','한화케미칼',26000,9,NULL,NULL,NULL,NULL),
(205,4,'009830','한화케미칼',27000,10,NULL,NULL,NULL,NULL),
(206,4,'009830','한화케미칼',26000,11,NULL,NULL,NULL,NULL),
(207,4,'009830','한화케미칼',30000,12,NULL,NULL,NULL,NULL),
(208,4,'009830','한화케미칼',26000,13,NULL,NULL,NULL,NULL),
(209,4,'009830','한화케미칼',28000,14,NULL,NULL,NULL,NULL),
(210,4,'009830','한화케미칼',29000,15,NULL,NULL,NULL,NULL),
(211,4,'009830','한화케미칼',26000,16,NULL,NULL,NULL,NULL),
(212,4,'009830','한화케미칼',27000,17,NULL,NULL,NULL,NULL),
(213,4,'009830','한화케미칼',26000,18,NULL,NULL,NULL,NULL),
(214,4,'009830','한화케미칼',27000,19,NULL,NULL,NULL,NULL),
(215,4,'009830','한화케미칼',26000,20,NULL,NULL,NULL,NULL),
(216,4,'009830','한화케미칼',26000,21,NULL,NULL,NULL,NULL),
(217,4,'009830','한화케미칼',27000,22,NULL,NULL,NULL,NULL),
(218,4,'009830','한화케미칼',27000,23,NULL,NULL,NULL,NULL),
(219,4,'009830','한화케미칼',27000,24,NULL,NULL,NULL,NULL),
(220,4,'009830','한화케미칼',26000,25,NULL,NULL,NULL,NULL),
(221,4,'009830','한화케미칼',27000,26,NULL,NULL,NULL,NULL),
(222,4,'009830','한화케미칼',26000,27,NULL,NULL,NULL,NULL),
(223,4,'009830','한화케미칼',30000,28,NULL,NULL,NULL,NULL),
(224,4,'009830','한화케미칼',26000,29,NULL,NULL,NULL,NULL),
(225,4,'009830','한화케미칼',28000,30,NULL,NULL,NULL,NULL),
(226,4,'009830','한화케미칼',32000,31,NULL,NULL,NULL,NULL),
(227,4,'009830','한화케미칼',26000,32,NULL,NULL,NULL,NULL),
(228,4,'009830','한화케미칼',27000,33,NULL,NULL,NULL,NULL),
(229,4,'009830','한화케미칼',26000,34,NULL,NULL,NULL,NULL),
(230,4,'009830','한화케미칼',26800,35,NULL,NULL,NULL,NULL),
(231,4,'009830','한화케미칼',26700,36,NULL,NULL,NULL,NULL),
(232,4,'009830','한화케미칼',28000,37,NULL,NULL,NULL,NULL),
(233,4,'009830','한화케미칼',26000,38,NULL,NULL,NULL,NULL),
(234,4,'009830','한화케미칼',27000,39,NULL,NULL,NULL,NULL),
(235,4,'009830','한화케미칼',26000,40,NULL,NULL,NULL,NULL),
(236,4,'009830','한화케미칼',26000,41,NULL,NULL,NULL,NULL),
(237,4,'009830','한화케미칼',26000,42,NULL,NULL,NULL,NULL),
(238,4,'009830','한화케미칼',28000,43,NULL,NULL,NULL,NULL),
(239,4,'009830','한화케미칼',28000,44,NULL,NULL,NULL,NULL),
(240,4,'009830','한화케미칼',26000,45,NULL,NULL,NULL,NULL),
(241,4,'009830','한화케미칼',26000,46,NULL,NULL,NULL,NULL),
(242,4,'009830','한화케미칼',26500,47,NULL,NULL,NULL,NULL),
(243,4,'009830','한화케미칼',27000,48,NULL,NULL,NULL,NULL),
(244,4,'009830','한화케미칼',26000,49,NULL,NULL,NULL,NULL),
(245,4,'009830','한화케미칼',27500,50,NULL,NULL,NULL,NULL),
(246,4,'009830','한화케미칼',26000,51,NULL,NULL,NULL,NULL),
(247,4,'009830','한화케미칼',26500,52,NULL,NULL,NULL,NULL),
(248,4,'009830','한화케미칼',26000,53,NULL,NULL,NULL,NULL),
(249,4,'009830','한화케미칼',26500,54,NULL,NULL,NULL,NULL),
(250,4,'009830','한화케미칼',26500,55,NULL,NULL,NULL,NULL),
(251,4,'009830','한화케미칼',27000,56,NULL,NULL,NULL,NULL),
(252,4,'009830','한화케미칼',27500,57,NULL,NULL,NULL,NULL),
(253,4,'009830','한화케미칼',27500,58,NULL,NULL,NULL,NULL),
(254,4,'009830','한화케미칼',27500,59,NULL,NULL,NULL,NULL),
(255,4,'009830','한화케미칼',27000,60,NULL,NULL,NULL,NULL),
(256,4,'009830','한화케미칼',26000,61,NULL,NULL,NULL,NULL),
(257,4,'009830','한화케미칼',26000,62,NULL,NULL,NULL,NULL),
(258,4,'009830','한화케미칼',27000,63,NULL,NULL,NULL,NULL),
(259,4,'009830','한화케미칼',27500,64,NULL,NULL,NULL,NULL),
(260,4,'009830','한화케미칼',28000,65,NULL,NULL,NULL,NULL),
(261,5,'007310','오뚜기',76000,1,NULL,NULL,NULL,NULL),
(262,5,'007310','오뚜기',77000,2,NULL,NULL,NULL,NULL),
(263,5,'007310','오뚜기',77000,3,NULL,NULL,NULL,NULL),
(264,5,'007310','오뚜기',76000,4,NULL,NULL,NULL,NULL),
(265,5,'007310','오뚜기',77000,5,NULL,NULL,NULL,NULL),
(266,5,'007310','오뚜기',78000,6,NULL,NULL,NULL,NULL),
(267,5,'007310','오뚜기',79000,7,NULL,NULL,NULL,NULL),
(268,5,'007310','오뚜기',80000,8,NULL,NULL,NULL,NULL),
(269,5,'007310','오뚜기',79000,9,NULL,NULL,NULL,NULL),
(270,5,'007310','오뚜기',80000,10,NULL,NULL,NULL,NULL),
(271,5,'007310','오뚜기',81000,11,NULL,NULL,NULL,NULL),
(272,5,'007310','오뚜기',80000,12,NULL,NULL,NULL,NULL),
(273,5,'007310','오뚜기',79000,13,NULL,NULL,NULL,NULL),
(274,5,'007310','오뚜기',78000,14,NULL,NULL,NULL,NULL),
(275,5,'007310','오뚜기',78000,15,NULL,NULL,NULL,NULL),
(276,5,'007310','오뚜기',77000,16,NULL,NULL,NULL,NULL),
(277,5,'007310','오뚜기',77000,17,NULL,NULL,NULL,NULL),
(278,5,'007310','오뚜기',78000,18,NULL,NULL,NULL,NULL),
(279,5,'007310','오뚜기',77000,19,NULL,NULL,NULL,NULL),
(280,5,'007310','오뚜기',76000,20,NULL,NULL,NULL,NULL),
(281,5,'007310','오뚜기',77000,21,NULL,NULL,NULL,NULL),
(282,5,'007310','오뚜기',77000,22,NULL,NULL,NULL,NULL),
(283,5,'007310','오뚜기',78000,23,NULL,NULL,NULL,NULL),
(284,5,'007310','오뚜기',77000,24,NULL,NULL,NULL,NULL),
(285,5,'007310','오뚜기',76000,25,NULL,NULL,NULL,NULL),
(286,5,'007310','오뚜기',77000,26,NULL,NULL,NULL,NULL),
(287,5,'007310','오뚜기',77000,27,NULL,NULL,NULL,NULL),
(288,5,'007310','오뚜기',76000,28,NULL,NULL,NULL,NULL),
(289,5,'007310','오뚜기',77000,29,NULL,NULL,NULL,NULL),
(290,5,'007310','오뚜기',78000,30,NULL,NULL,NULL,NULL),
(291,5,'007310','오뚜기',76000,31,NULL,NULL,NULL,NULL),
(292,5,'007310','오뚜기',77000,32,NULL,NULL,NULL,NULL),
(293,5,'007310','오뚜기',77000,33,NULL,NULL,NULL,NULL),
(294,5,'007310','오뚜기',78000,34,NULL,NULL,NULL,NULL),
(295,5,'007310','오뚜기',78500,35,NULL,NULL,NULL,NULL),
(296,5,'007310','오뚜기',78000,36,NULL,NULL,NULL,NULL),
(297,5,'007310','오뚜기',79000,37,NULL,NULL,NULL,NULL),
(298,5,'007310','오뚜기',78000,38,NULL,NULL,NULL,NULL),
(299,5,'007310','오뚜기',77000,39,NULL,NULL,NULL,NULL),
(300,5,'007310','오뚜기',77000,40,NULL,NULL,NULL,NULL),
(301,5,'007310','오뚜기',76000,41,NULL,NULL,NULL,NULL),
(302,5,'007310','오뚜기',77000,42,NULL,NULL,NULL,NULL),
(303,5,'007310','오뚜기',78000,43,NULL,NULL,NULL,NULL),
(304,5,'007310','오뚜기',78000,44,NULL,NULL,NULL,NULL),
(305,5,'007310','오뚜기',79000,45,NULL,NULL,NULL,NULL),
(306,5,'007310','오뚜기',78000,46,NULL,NULL,NULL,NULL),
(307,5,'007310','오뚜기',80000,47,NULL,NULL,NULL,NULL),
(308,5,'007310','오뚜기',80000,48,NULL,NULL,NULL,NULL),
(309,5,'007310','오뚜기',81000,49,NULL,NULL,NULL,NULL),
(310,5,'007310','오뚜기',81000,50,NULL,NULL,NULL,NULL),
(311,5,'007310','오뚜기',80000,51,NULL,NULL,NULL,NULL),
(312,5,'007310','오뚜기',80000,52,NULL,NULL,NULL,NULL),
(313,5,'007310','오뚜기',81000,53,NULL,NULL,NULL,NULL),
(314,5,'007310','오뚜기',81000,54,NULL,NULL,NULL,NULL),
(315,5,'007310','오뚜기',80000,55,NULL,NULL,NULL,NULL),
(316,5,'007310','오뚜기',80000,56,NULL,NULL,NULL,NULL),
(317,5,'007310','오뚜기',80000,57,NULL,NULL,NULL,NULL),
(318,5,'007310','오뚜기',81000,58,NULL,NULL,NULL,NULL),
(319,5,'007310','오뚜기',81500,59,NULL,NULL,NULL,NULL),
(320,5,'007310','오뚜기',80000,60,NULL,NULL,NULL,NULL),
(321,5,'007310','오뚜기',81000,61,NULL,NULL,NULL,NULL),
(322,5,'007310','오뚜기',81000,62,NULL,NULL,NULL,NULL),
(323,5,'007310','오뚜기',80000,63,NULL,NULL,NULL,NULL),
(324,5,'007310','오뚜기',81000,64,NULL,NULL,NULL,NULL),
(325,5,'007310','오뚜기',81000,65,NULL,NULL,NULL,NULL),
(326,6,'028260','삼성물산',126000,1,NULL,NULL,NULL,NULL),
(327,6,'028260','삼성물산',125000,2,NULL,NULL,NULL,NULL),
(328,6,'028260','삼성물산',124000,3,NULL,NULL,NULL,NULL),
(329,6,'028260','삼성물산',123000,4,NULL,NULL,NULL,NULL),
(330,6,'028260','삼성물산',125000,5,NULL,NULL,NULL,NULL),
(331,6,'028260','삼성물산',126000,6,NULL,NULL,NULL,NULL),
(332,6,'028260','삼성물산',127000,7,NULL,NULL,NULL,NULL),
(333,6,'028260','삼성물산',128000,8,NULL,NULL,NULL,NULL),
(334,6,'028260','삼성물산',129000,9,NULL,NULL,NULL,NULL),
(335,6,'028260','삼성물산',130000,10,NULL,NULL,NULL,NULL),
(336,6,'028260','삼성물산',131000,11,NULL,NULL,NULL,NULL),
(337,6,'028260','삼성물산',132000,12,NULL,NULL,NULL,NULL),
(338,6,'028260','삼성물산',132000,13,NULL,NULL,NULL,NULL),
(339,6,'028260','삼성물산',133000,14,NULL,NULL,NULL,NULL),
(340,6,'028260','삼성물산',132000,15,NULL,NULL,NULL,NULL),
(341,6,'028260','삼성물산',133000,16,NULL,NULL,NULL,NULL),
(342,6,'028260','삼성물산',134000,17,NULL,NULL,NULL,NULL),
(343,6,'028260','삼성물산',133000,18,NULL,NULL,NULL,NULL),
(344,6,'028260','삼성물산',134000,19,NULL,NULL,NULL,NULL),
(345,6,'028260','삼성물산',133000,20,NULL,NULL,NULL,NULL),
(346,6,'028260','삼성물산',134000,21,NULL,NULL,NULL,NULL),
(347,6,'028260','삼성물산',135000,22,NULL,NULL,NULL,NULL),
(348,6,'028260','삼성물산',136000,23,NULL,NULL,NULL,NULL),
(349,6,'028260','삼성물산',137000,24,NULL,NULL,NULL,NULL),
(350,6,'028260','삼성물산',137000,25,NULL,NULL,NULL,NULL),
(351,6,'028260','삼성물산',137000,26,NULL,NULL,NULL,NULL),
(352,6,'028260','삼성물산',138000,27,NULL,NULL,NULL,NULL),
(353,6,'028260','삼성물산',138000,28,NULL,NULL,NULL,NULL),
(354,6,'028260','삼성물산',137000,29,NULL,NULL,NULL,NULL),
(355,6,'028260','삼성물산',138000,30,NULL,NULL,NULL,NULL),
(356,6,'028260','삼성물산',138000,31,NULL,NULL,NULL,NULL),
(357,6,'028260','삼성물산',137000,32,NULL,NULL,NULL,NULL),
(358,6,'028260','삼성물산',138000,33,NULL,NULL,NULL,NULL),
(359,6,'028260','삼성물산',138000,34,NULL,NULL,NULL,NULL),
(360,6,'028260','삼성물산',139000,35,NULL,NULL,NULL,NULL),
(361,6,'028260','삼성물산',138000,36,NULL,NULL,NULL,NULL),
(362,6,'028260','삼성물산',139000,37,NULL,NULL,NULL,NULL),
(363,6,'028260','삼성물산',140000,38,NULL,NULL,NULL,NULL),
(364,6,'028260','삼성물산',139000,39,NULL,NULL,NULL,NULL),
(365,6,'028260','삼성물산',140000,40,NULL,NULL,NULL,NULL),
(366,6,'028260','삼성물산',138000,41,NULL,NULL,NULL,NULL),
(367,6,'028260','삼성물산',139000,42,NULL,NULL,NULL,NULL),
(368,6,'028260','삼성물산',139000,43,NULL,NULL,NULL,NULL),
(369,6,'028260','삼성물산',140000,44,NULL,NULL,NULL,NULL),
(370,6,'028260','삼성물산',141000,45,NULL,NULL,NULL,NULL),
(371,6,'028260','삼성물산',141000,46,NULL,NULL,NULL,NULL),
(372,6,'028260','삼성물산',142000,47,NULL,NULL,NULL,NULL),
(373,6,'028260','삼성물산',142000,48,NULL,NULL,NULL,NULL),
(374,6,'028260','삼성물산',141000,49,NULL,NULL,NULL,NULL),
(375,6,'028260','삼성물산',141000,50,NULL,NULL,NULL,NULL),
(376,6,'028260','삼성물산',141000,51,NULL,NULL,NULL,NULL),
(377,6,'028260','삼성물산',142000,52,NULL,NULL,NULL,NULL),
(378,6,'028260','삼성물산',142000,53,NULL,NULL,NULL,NULL),
(379,6,'028260','삼성물산',142000,54,NULL,NULL,NULL,NULL),
(380,6,'028260','삼성물산',142000,55,NULL,NULL,NULL,NULL),
(381,6,'028260','삼성물산',143000,56,NULL,NULL,NULL,NULL),
(382,6,'028260','삼성물산',144000,57,NULL,NULL,NULL,NULL),
(383,6,'028260','삼성물산',145000,58,NULL,NULL,NULL,NULL),
(384,6,'028260','삼성물산',146000,59,NULL,NULL,NULL,NULL),
(385,6,'028260','삼성물산',147000,60,NULL,NULL,NULL,NULL),
(386,6,'028260','삼성물산',148000,61,NULL,NULL,NULL,NULL),
(387,6,'028260','삼성물산',149000,62,NULL,NULL,NULL,NULL),
(388,6,'028260','삼성물산',150000,63,NULL,NULL,NULL,NULL),
(389,6,'028260','삼성물산',151000,64,NULL,NULL,NULL,NULL),
(390,6,'028260','삼성물산',152000,65,NULL,NULL,NULL,NULL),
(391,7,'000720','현대건설',49000,1,NULL,NULL,NULL,NULL),
(392,7,'000720','현대건설',46000,2,NULL,NULL,NULL,NULL),
(393,7,'000720','현대건설',47000,3,NULL,NULL,NULL,NULL),
(394,7,'000720','현대건설',48000,4,NULL,NULL,NULL,NULL),
(395,7,'000720','현대건설',48000,5,NULL,NULL,NULL,NULL),
(396,7,'000720','현대건설',49000,6,NULL,NULL,NULL,NULL),
(397,7,'000720','현대건설',47000,7,NULL,NULL,NULL,NULL),
(398,7,'000720','현대건설',46000,8,NULL,NULL,NULL,NULL),
(399,7,'000720','현대건설',47000,9,NULL,NULL,NULL,NULL),
(400,7,'000720','현대건설',46000,10,NULL,NULL,NULL,NULL),
(401,7,'000720','현대건설',47000,11,NULL,NULL,NULL,NULL),
(402,7,'000720','현대건설',46000,12,NULL,NULL,NULL,NULL),
(403,7,'000720','현대건설',45000,13,NULL,NULL,NULL,NULL),
(404,7,'000720','현대건설',45000,14,NULL,NULL,NULL,NULL),
(405,7,'000720','현대건설',44000,15,NULL,NULL,NULL,NULL),
(406,7,'000720','현대건설',44000,16,NULL,NULL,NULL,NULL),
(407,7,'000720','현대건설',45000,17,NULL,NULL,NULL,NULL),
(408,7,'000720','현대건설',44000,18,NULL,NULL,NULL,NULL),
(409,7,'000720','현대건설',44000,19,NULL,NULL,NULL,NULL),
(410,7,'000720','현대건설',44000,20,NULL,NULL,NULL,NULL),
(411,7,'000720','현대건설',43000,21,NULL,NULL,NULL,NULL),
(412,7,'000720','현대건설',44000,22,NULL,NULL,NULL,NULL),
(413,7,'000720','현대건설',44000,23,NULL,NULL,NULL,NULL),
(414,7,'000720','현대건설',44000,24,NULL,NULL,NULL,NULL),
(415,7,'000720','현대건설',44000,25,NULL,NULL,NULL,NULL),
(416,7,'000720','현대건설',43000,26,NULL,NULL,NULL,NULL),
(417,7,'000720','현대건설',43000,27,NULL,NULL,NULL,NULL),
(418,7,'000720','현대건설',43000,28,NULL,NULL,NULL,NULL),
(419,7,'000720','현대건설',43000,29,NULL,NULL,NULL,NULL),
(420,7,'000720','현대건설',43000,30,NULL,NULL,NULL,NULL),
(421,7,'000720','현대건설',44000,31,NULL,NULL,NULL,NULL),
(422,7,'000720','현대건설',43000,32,NULL,NULL,NULL,NULL),
(423,7,'000720','현대건설',43000,33,NULL,NULL,NULL,NULL),
(424,7,'000720','현대건설',43000,34,NULL,NULL,NULL,NULL),
(425,7,'000720','현대건설',42000,35,NULL,NULL,NULL,NULL),
(426,7,'000720','현대건설',42000,36,NULL,NULL,NULL,NULL),
(427,7,'000720','현대건설',42000,37,NULL,NULL,NULL,NULL),
(428,7,'000720','현대건설',42000,38,NULL,NULL,NULL,NULL),
(429,7,'000720','현대건설',43000,39,NULL,NULL,NULL,NULL),
(430,7,'000720','현대건설',42000,40,NULL,NULL,NULL,NULL),
(431,7,'000720','현대건설',43000,41,NULL,NULL,NULL,NULL),
(432,7,'000720','현대건설',43000,42,NULL,NULL,NULL,NULL),
(433,7,'000720','현대건설',43000,43,NULL,NULL,NULL,NULL),
(434,7,'000720','현대건설',42000,44,NULL,NULL,NULL,NULL),
(435,7,'000720','현대건설',42000,45,NULL,NULL,NULL,NULL),
(436,7,'000720','현대건설',42000,46,NULL,NULL,NULL,NULL),
(437,7,'000720','현대건설',40000,47,NULL,NULL,NULL,NULL),
(438,7,'000720','현대건설',41000,48,NULL,NULL,NULL,NULL),
(439,7,'000720','현대건설',41000,49,NULL,NULL,NULL,NULL),
(440,7,'000720','현대건설',40000,50,NULL,NULL,NULL,NULL),
(441,7,'000720','현대건설',40000,51,NULL,NULL,NULL,NULL),
(442,7,'000720','현대건설',39000,52,NULL,NULL,NULL,NULL),
(443,7,'000720','현대건설',38000,53,NULL,NULL,NULL,NULL),
(444,7,'000720','현대건설',37000,54,NULL,NULL,NULL,NULL),
(445,7,'000720','현대건설',37000,55,NULL,NULL,NULL,NULL),
(446,7,'000720','현대건설',36000,56,NULL,NULL,NULL,NULL),
(447,7,'000720','현대건설',36000,57,NULL,NULL,NULL,NULL),
(448,7,'000720','현대건설',35000,58,NULL,NULL,NULL,NULL),
(449,7,'000720','현대건설',35000,59,NULL,NULL,NULL,NULL),
(450,7,'000720','현대건설',35000,60,NULL,NULL,NULL,NULL),
(451,7,'000720','현대건설',34000,61,NULL,NULL,NULL,NULL),
(452,7,'000720','현대건설',33000,62,NULL,NULL,NULL,NULL),
(453,7,'000720','현대건설',33000,63,NULL,NULL,NULL,NULL),
(454,7,'000720','현대건설',32000,64,NULL,NULL,NULL,NULL),
(455,7,'000720','현대건설',32000,65,NULL,NULL,NULL,NULL),
(456,8,'042660','대우조선해양',44000,1,NULL,NULL,NULL,NULL),
(457,8,'042660','대우조선해양',45000,2,NULL,NULL,NULL,NULL),
(458,8,'042660','대우조선해양',44000,3,NULL,NULL,NULL,NULL),
(459,8,'042660','대우조선해양',45000,4,NULL,NULL,NULL,NULL),
(460,8,'042660','대우조선해양',46000,5,NULL,NULL,NULL,NULL),
(461,8,'042660','대우조선해양',45000,6,NULL,NULL,NULL,NULL),
(462,8,'042660','대우조선해양',46000,7,NULL,NULL,NULL,NULL),
(463,8,'042660','대우조선해양',47000,8,NULL,NULL,NULL,NULL),
(464,8,'042660','대우조선해양',47000,9,NULL,NULL,NULL,NULL),
(465,8,'042660','대우조선해양',48000,10,NULL,NULL,NULL,NULL),
(466,8,'042660','대우조선해양',48000,11,NULL,NULL,NULL,NULL),
(467,8,'042660','대우조선해양',49000,12,NULL,NULL,NULL,NULL),
(468,8,'042660','대우조선해양',49000,13,NULL,NULL,NULL,NULL),
(469,8,'042660','대우조선해양',49000,14,NULL,NULL,NULL,NULL),
(470,8,'042660','대우조선해양',50000,15,NULL,NULL,NULL,NULL),
(471,8,'042660','대우조선해양',49000,16,NULL,NULL,NULL,NULL),
(472,8,'042660','대우조선해양',49000,17,NULL,NULL,NULL,NULL),
(473,8,'042660','대우조선해양',49000,18,NULL,NULL,NULL,NULL),
(474,8,'042660','대우조선해양',50000,19,NULL,NULL,NULL,NULL),
(475,8,'042660','대우조선해양',49000,20,NULL,NULL,NULL,NULL),
(476,8,'042660','대우조선해양',50000,21,NULL,NULL,NULL,NULL),
(477,8,'042660','대우조선해양',49000,22,NULL,NULL,NULL,NULL),
(478,8,'042660','대우조선해양',50000,23,NULL,NULL,NULL,NULL),
(479,8,'042660','대우조선해양',51000,24,NULL,NULL,NULL,NULL),
(480,8,'042660','대우조선해양',51000,25,NULL,NULL,NULL,NULL),
(481,8,'042660','대우조선해양',51000,26,NULL,NULL,NULL,NULL),
(482,8,'042660','대우조선해양',50000,27,NULL,NULL,NULL,NULL),
(483,8,'042660','대우조선해양',51000,28,NULL,NULL,NULL,NULL),
(484,8,'042660','대우조선해양',51000,29,NULL,NULL,NULL,NULL),
(485,8,'042660','대우조선해양',51000,30,NULL,NULL,NULL,NULL),
(486,8,'042660','대우조선해양',50000,31,NULL,NULL,NULL,NULL),
(487,8,'042660','대우조선해양',51000,32,NULL,NULL,NULL,NULL),
(488,8,'042660','대우조선해양',52000,33,NULL,NULL,NULL,NULL),
(489,8,'042660','대우조선해양',52000,34,NULL,NULL,NULL,NULL),
(490,8,'042660','대우조선해양',53000,35,NULL,NULL,NULL,NULL),
(491,8,'042660','대우조선해양',54000,36,NULL,NULL,NULL,NULL),
(492,8,'042660','대우조선해양',54000,37,NULL,NULL,NULL,NULL),
(493,8,'042660','대우조선해양',55000,38,NULL,NULL,NULL,NULL),
(494,8,'042660','대우조선해양',54000,39,NULL,NULL,NULL,NULL),
(495,8,'042660','대우조선해양',55000,40,NULL,NULL,NULL,NULL),
(496,8,'042660','대우조선해양',54000,41,NULL,NULL,NULL,NULL),
(497,8,'042660','대우조선해양',53000,42,NULL,NULL,NULL,NULL),
(498,8,'042660','대우조선해양',54000,43,NULL,NULL,NULL,NULL),
(499,8,'042660','대우조선해양',54000,44,NULL,NULL,NULL,NULL),
(500,8,'042660','대우조선해양',55000,45,NULL,NULL,NULL,NULL),
(501,8,'042660','대우조선해양',55000,46,NULL,NULL,NULL,NULL),
(502,8,'042660','대우조선해양',56000,47,NULL,NULL,NULL,NULL),
(503,8,'042660','대우조선해양',56000,48,NULL,NULL,NULL,NULL),
(504,8,'042660','대우조선해양',56000,49,NULL,NULL,NULL,NULL),
(505,8,'042660','대우조선해양',57000,50,NULL,NULL,NULL,NULL),
(506,8,'042660','대우조선해양',57000,51,NULL,NULL,NULL,NULL),
(507,8,'042660','대우조선해양',57000,52,NULL,NULL,NULL,NULL),
(508,8,'042660','대우조선해양',58000,53,NULL,NULL,NULL,NULL),
(509,8,'042660','대우조선해양',58000,54,NULL,NULL,NULL,NULL),
(510,8,'042660','대우조선해양',58000,55,NULL,NULL,NULL,NULL),
(511,8,'042660','대우조선해양',59000,56,NULL,NULL,NULL,NULL),
(512,8,'042660','대우조선해양',59000,57,NULL,NULL,NULL,NULL),
(513,8,'042660','대우조선해양',59000,58,NULL,NULL,NULL,NULL),
(514,8,'042660','대우조선해양',60000,59,NULL,NULL,NULL,NULL),
(515,8,'042660','대우조선해양',61000,60,NULL,NULL,NULL,NULL),
(516,8,'042660','대우조선해양',62000,61,NULL,NULL,NULL,NULL),
(517,8,'042660','대우조선해양',63000,62,NULL,NULL,NULL,NULL),
(518,8,'042660','대우조선해양',64000,63,NULL,NULL,NULL,NULL),
(519,8,'042660','대우조선해양',65000,64,NULL,NULL,NULL,NULL),
(520,8,'042660','대우조선해양',64000,65,NULL,NULL,NULL,NULL),
(521,9,'005380','현대차',148000,1,NULL,NULL,NULL,NULL),
(522,9,'005380','현대차',148000,2,NULL,NULL,NULL,NULL),
(523,9,'005380','현대차',148000,3,NULL,NULL,NULL,NULL),
(524,9,'005380','현대차',148000,4,NULL,NULL,NULL,NULL),
(525,9,'005380','현대차',149000,5,NULL,NULL,NULL,NULL),
(526,9,'005380','현대차',149000,6,NULL,NULL,NULL,NULL),
(527,9,'005380','현대차',148000,7,NULL,NULL,NULL,NULL),
(528,9,'005380','현대차',149000,8,NULL,NULL,NULL,NULL),
(529,9,'005380','현대차',148000,9,NULL,NULL,NULL,NULL),
(530,9,'005380','현대차',149000,10,NULL,NULL,NULL,NULL),
(531,9,'005380','현대차',148000,11,NULL,NULL,NULL,NULL),
(532,9,'005380','현대차',149000,12,NULL,NULL,NULL,NULL),
(533,9,'005380','현대차',148000,13,NULL,NULL,NULL,NULL),
(534,9,'005380','현대차',148000,14,NULL,NULL,NULL,NULL),
(535,9,'005380','현대차',148000,15,NULL,NULL,NULL,NULL),
(536,9,'005380','현대차',148000,16,NULL,NULL,NULL,NULL),
(537,9,'005380','현대차',148000,17,NULL,NULL,NULL,NULL),
(538,9,'005380','현대차',148000,18,NULL,NULL,NULL,NULL),
(539,9,'005380','현대차',148000,19,NULL,NULL,NULL,NULL),
(540,9,'005380','현대차',148000,20,NULL,NULL,NULL,NULL),
(541,9,'005380','현대차',148000,21,NULL,NULL,NULL,NULL),
(542,9,'005380','현대차',149000,22,NULL,NULL,NULL,NULL),
(543,9,'005380','현대차',149000,23,NULL,NULL,NULL,NULL),
(544,9,'','',149000,24,NULL,NULL,NULL,NULL),
(545,9,'005380','현대차',148000,25,NULL,NULL,NULL,NULL),
(546,9,'005380','현대차',148000,26,NULL,NULL,NULL,NULL),
(547,9,'005380','현대차',148000,27,NULL,NULL,NULL,NULL),
(548,9,'005380','현대차',148000,28,NULL,NULL,NULL,NULL),
(549,9,'005380','현대차',148000,29,NULL,NULL,NULL,NULL),
(550,9,'005380','현대차',149000,30,NULL,NULL,NULL,NULL),
(551,9,'005380','현대차',148000,31,NULL,NULL,NULL,NULL),
(552,9,'005380','현대차',148000,32,NULL,NULL,NULL,NULL),
(553,9,'005380','현대차',149000,33,NULL,NULL,NULL,NULL),
(554,9,'005380','현대차',149000,34,NULL,NULL,NULL,NULL),
(555,9,'005380','현대차',149500,35,NULL,NULL,NULL,NULL),
(556,9,'005380','현대차',150000,36,NULL,NULL,NULL,NULL),
(557,9,'005380','현대차',151000,37,NULL,NULL,NULL,NULL),
(558,9,'005380','현대차',150000,38,NULL,NULL,NULL,NULL),
(559,9,'005380','현대차',150000,39,NULL,NULL,NULL,NULL),
(560,9,'005380','현대차',151000,40,NULL,NULL,NULL,NULL),
(561,9,'005380','현대차',151000,41,NULL,NULL,NULL,NULL),
(562,9,'005380','현대차',151000,42,NULL,NULL,NULL,NULL),
(563,9,'005380','현대차',151000,43,NULL,NULL,NULL,NULL),
(564,9,'005380','현대차',150000,44,NULL,NULL,NULL,NULL),
(565,9,'005380','현대차',151000,45,NULL,NULL,NULL,NULL),
(566,9,'005380','현대차',151000,46,NULL,NULL,NULL,NULL),
(567,9,'005380','현대차',151000,47,NULL,NULL,NULL,NULL),
(568,9,'005380','현대차',151000,48,NULL,NULL,NULL,NULL),
(569,9,'005380','현대차',152000,49,NULL,NULL,NULL,NULL),
(570,9,'005380','현대차',153000,50,NULL,NULL,NULL,NULL),
(571,9,'005380','현대차',153000,51,NULL,NULL,NULL,NULL),
(572,9,'005380','현대차',153000,52,NULL,NULL,NULL,NULL),
(573,9,'005380','현대차',153000,53,NULL,NULL,NULL,NULL),
(574,9,'005380','현대차',153000,54,NULL,NULL,NULL,NULL),
(575,9,'005380','현대차',154000,55,NULL,NULL,NULL,NULL),
(576,9,'005380','현대차',154000,56,NULL,NULL,NULL,NULL),
(577,9,'005380','현대차',153000,57,NULL,NULL,NULL,NULL),
(578,9,'005380','현대차',154000,58,NULL,NULL,NULL,NULL),
(579,9,'005380','현대차',154000,59,NULL,NULL,NULL,NULL),
(580,9,'005380','현대차',153000,60,NULL,NULL,NULL,NULL),
(581,9,'005380','현대차',154000,61,NULL,NULL,NULL,NULL),
(582,9,'005380','현대차',153000,62,NULL,NULL,NULL,NULL),
(583,9,'005380','현대차',154000,63,NULL,NULL,NULL,NULL),
(584,9,'005380','현대차',153000,64,NULL,NULL,NULL,NULL),
(585,9,'005380','현대차',153000,65,NULL,NULL,NULL,NULL),
(586,10,'003490','대한항공',31000,1,NULL,NULL,NULL,NULL),
(587,10,'003490','대한항공',30000,2,NULL,NULL,NULL,NULL),
(588,10,'003490','대한항공',29000,3,NULL,NULL,NULL,NULL),
(589,10,'003490','대한항공',28000,4,NULL,NULL,NULL,NULL),
(590,10,'003490','대한항공',29000,5,NULL,NULL,NULL,NULL),
(591,10,'003490','대한항공',31000,6,NULL,NULL,NULL,NULL),
(592,10,'003490','대한항공',32000,7,NULL,NULL,NULL,NULL),
(593,10,'003490','대한항공',33000,8,NULL,NULL,NULL,NULL),
(594,10,'003490','대한항공',34000,9,NULL,NULL,NULL,NULL),
(595,10,'003490','대한항공',34000,10,NULL,NULL,NULL,NULL),
(596,10,'003490','대한항공',34000,11,NULL,NULL,NULL,NULL),
(597,10,'003490','대한항공',35000,12,NULL,NULL,NULL,NULL),
(598,10,'003490','대한항공',35000,13,NULL,NULL,NULL,NULL),
(599,10,'003490','대한항공',36000,14,NULL,NULL,NULL,NULL),
(600,10,'003490','대한항공',35000,15,NULL,NULL,NULL,NULL),
(601,10,'003490','대한항공',36000,16,NULL,NULL,NULL,NULL),
(602,10,'003490','대한항공',37000,17,NULL,NULL,NULL,NULL),
(603,10,'003490','대한항공',38000,18,NULL,NULL,NULL,NULL),
(604,10,'003490','대한항공',39000,19,NULL,NULL,NULL,NULL),
(605,10,'003490','대한항공',40000,20,NULL,NULL,NULL,NULL),
(606,10,'003490','대한항공',41000,21,NULL,NULL,NULL,NULL),
(607,10,'003490','대한항공',42000,22,NULL,NULL,NULL,NULL),
(608,10,'003490','대한항공',43000,23,NULL,NULL,NULL,NULL),
(609,10,'003490','대한항공',43000,24,NULL,NULL,NULL,NULL),
(610,10,'003490','대한항공',43000,25,NULL,NULL,NULL,NULL),
(611,10,'003490','대한항공',44000,26,NULL,NULL,NULL,NULL),
(612,10,'003490','대한항공',45000,27,NULL,NULL,NULL,NULL),
(613,10,'003490','대한항공',46000,28,NULL,NULL,NULL,NULL),
(614,10,'003490','대한항공',47000,29,NULL,NULL,NULL,NULL),
(615,10,'003490','대한항공',47000,30,NULL,NULL,NULL,NULL),
(616,10,'003490','대한항공',48000,31,NULL,NULL,NULL,NULL),
(617,10,'003490','대한항공',49000,32,NULL,NULL,NULL,NULL),
(618,10,'003490','대한항공',50000,33,NULL,NULL,NULL,NULL),
(619,10,'003490','대한항공',51000,34,NULL,NULL,NULL,NULL),
(620,10,'003490','대한항공',52000,35,NULL,NULL,NULL,NULL),
(621,10,'003490','대한항공',52000,36,NULL,NULL,NULL,NULL),
(622,10,'003490','대한항공',53000,37,NULL,NULL,NULL,NULL),
(623,10,'003490','대한항공',53000,38,NULL,NULL,NULL,NULL),
(624,10,'003490','대한항공',54000,39,NULL,NULL,NULL,NULL),
(625,10,'003490','대한항공',55000,40,NULL,NULL,NULL,NULL),
(626,10,'003490','대한항공',55000,41,NULL,NULL,NULL,NULL),
(627,10,'003490','대한항공',54000,42,NULL,NULL,NULL,NULL),
(628,10,'003490','대한항공',56000,43,NULL,NULL,NULL,NULL),
(629,10,'003490','대한항공',56000,44,NULL,NULL,NULL,NULL),
(630,10,'003490','대한항공',57000,45,NULL,NULL,NULL,NULL),
(631,10,'003490','대한항공',58000,46,NULL,NULL,NULL,NULL),
(632,10,'003490','대한항공',60000,47,NULL,NULL,NULL,NULL),
(633,10,'003490','대한항공',61000,48,NULL,NULL,NULL,NULL),
(634,10,'003490','대한항공',62000,49,NULL,NULL,NULL,NULL),
(635,10,'003490','대한항공',63000,50,NULL,NULL,NULL,NULL),
(636,10,'003490','대한항공',64000,51,NULL,NULL,NULL,NULL),
(637,10,'003490','대한항공',64000,52,NULL,NULL,NULL,NULL),
(638,10,'003490','대한항공',65000,53,NULL,NULL,NULL,NULL),
(639,10,'003490','대한항공',65000,54,NULL,NULL,NULL,NULL),
(640,10,'003490','대한항공',67000,55,NULL,NULL,NULL,NULL),
(641,10,'003490','대한항공',68000,56,NULL,NULL,NULL,NULL),
(642,10,'003490','대한항공',70000,57,NULL,NULL,NULL,NULL),
(643,10,'003490','대한항공',71000,58,NULL,NULL,NULL,NULL),
(644,10,'003490','대한항공',72000,59,NULL,NULL,NULL,NULL),
(645,10,'003490','대한항공',72000,60,NULL,NULL,NULL,NULL),
(646,10,'003490','대한항공',72000,61,NULL,NULL,NULL,NULL),
(647,10,'003490','대한항공',73000,62,NULL,NULL,NULL,NULL),
(648,10,'003490','대한항공',74000,63,NULL,NULL,NULL,NULL),
(649,10,'003490','대한항공',75000,64,NULL,NULL,NULL,NULL),
(650,10,'003490','대한항공',76000,65,NULL,NULL,NULL,NULL),
(651,11,'035720','카카오',83000,1,NULL,NULL,NULL,NULL),
(652,11,'035720','카카오',84000,2,NULL,NULL,NULL,NULL),
(653,11,'035720','카카오',84000,3,NULL,NULL,NULL,NULL),
(654,11,'035720','카카오',84000,4,NULL,NULL,NULL,NULL),
(655,11,'035720','카카오',84000,5,NULL,NULL,NULL,NULL),
(656,11,'035720','카카오',85000,6,NULL,NULL,NULL,NULL),
(657,11,'035720','카카오',85000,7,NULL,NULL,NULL,NULL),
(658,11,'035720','카카오',85000,8,NULL,NULL,NULL,NULL),
(659,11,'035720','카카오',85000,9,NULL,NULL,NULL,NULL),
(660,11,'035720','카카오',85000,10,NULL,NULL,NULL,NULL),
(661,11,'035720','카카오',85000,11,NULL,NULL,NULL,NULL),
(662,11,'035720','카카오',86000,12,NULL,NULL,NULL,NULL),
(663,11,'035720','카카오',86000,13,NULL,NULL,NULL,NULL),
(664,11,'035720','카카오',86000,14,NULL,NULL,NULL,NULL),
(665,11,'035720','카카오',87000,15,NULL,NULL,NULL,NULL),
(666,11,'035720','카카오',88000,16,NULL,NULL,NULL,NULL),
(667,11,'035720','카카오',89000,17,NULL,NULL,NULL,NULL),
(668,11,'035720','카카오',90000,18,NULL,NULL,NULL,NULL),
(669,11,'035720','카카오',90000,19,NULL,NULL,NULL,NULL),
(670,11,'035720','카카오',91000,20,NULL,NULL,NULL,NULL),
(671,11,'035720','카카오',92000,21,NULL,NULL,NULL,NULL),
(672,11,'035720','카카오',92000,22,NULL,NULL,NULL,NULL),
(673,11,'035720','카카오',92000,23,NULL,NULL,NULL,NULL),
(674,11,'035720','카카오',93000,24,NULL,NULL,NULL,NULL),
(675,11,'035720','카카오',94000,25,NULL,NULL,NULL,NULL),
(676,11,'035720','카카오',94000,26,NULL,NULL,NULL,NULL),
(677,11,'035720','카카오',94000,27,NULL,NULL,NULL,NULL),
(678,11,'035720','카카오',94000,28,NULL,NULL,NULL,NULL),
(679,11,'035720','카카오',95000,29,NULL,NULL,NULL,NULL),
(680,11,'035720','카카오',95000,30,NULL,NULL,NULL,NULL),
(681,11,'035720','카카오',94000,31,NULL,NULL,NULL,NULL),
(682,11,'035720','카카오',95000,32,NULL,NULL,NULL,NULL),
(683,11,'035720','카카오',95000,33,NULL,NULL,NULL,NULL),
(684,11,'035720','카카오',96000,34,NULL,NULL,NULL,NULL),
(685,11,'035720','카카오',97000,35,NULL,NULL,NULL,NULL),
(686,11,'035720','카카오',97000,36,NULL,NULL,NULL,NULL),
(687,11,'035720','카카오',97000,37,NULL,NULL,NULL,NULL),
(688,11,'035720','카카오',98000,38,NULL,NULL,NULL,NULL),
(689,11,'035720','카카오',97000,39,NULL,NULL,NULL,NULL),
(690,11,'035720','카카오',98000,40,NULL,NULL,NULL,NULL),
(691,11,'035720','카카오',97000,41,NULL,NULL,NULL,NULL),
(692,11,'035720','카카오',98000,42,NULL,NULL,NULL,NULL),
(693,11,'035720','카카오',99000,43,NULL,NULL,NULL,NULL),
(694,11,'035720','카카오',99000,44,NULL,NULL,NULL,NULL),
(695,11,'035720','카카오',980000,45,NULL,NULL,NULL,NULL),
(696,11,'035720','카카오',99000,46,NULL,NULL,NULL,NULL),
(697,11,'035720','카카오',100000,47,NULL,NULL,NULL,NULL),
(698,11,'035720','카카오',101000,48,NULL,NULL,NULL,NULL),
(699,11,'035720','카카오',101000,49,NULL,NULL,NULL,NULL),
(700,11,'035720','카카오',102000,50,NULL,NULL,NULL,NULL),
(701,11,'035720','카카오',102000,51,NULL,NULL,NULL,NULL),
(702,11,'035720','카카오',101000,52,NULL,NULL,NULL,NULL),
(703,11,'035720','카카오',102000,53,NULL,NULL,NULL,NULL),
(704,11,'035720','카카오',101000,54,NULL,NULL,NULL,NULL),
(705,11,'035720','카카오',102000,55,NULL,NULL,NULL,NULL),
(706,11,'035720','카카오',103000,56,NULL,NULL,NULL,NULL),
(707,11,'035720','카카오',104000,57,NULL,NULL,NULL,NULL),
(708,11,'035720','카카오',105000,58,NULL,NULL,NULL,NULL),
(709,11,'035720','카카오',105000,59,NULL,NULL,NULL,NULL),
(710,11,'035720','카카오',106000,60,NULL,NULL,NULL,NULL),
(711,11,'035720','카카오',107000,61,NULL,NULL,NULL,NULL),
(712,11,'035720','카카오',108000,62,NULL,NULL,NULL,NULL),
(713,11,'035720','카카오',109000,63,NULL,NULL,NULL,NULL),
(714,11,'035720','카카오',111000,64,NULL,NULL,NULL,NULL),
(715,11,'035720','카카오',110000,65,NULL,NULL,NULL,NULL),
(716,12,'005930','삼성전자',593000,1,NULL,NULL,NULL,NULL),
(717,12,'005930','삼성전자',593000,2,NULL,NULL,NULL,NULL),
(718,12,'005930','삼성전자',593000,3,NULL,NULL,NULL,NULL),
(719,12,'005930','삼성전자',592000,4,NULL,NULL,NULL,NULL),
(720,12,'005930','삼성전자',593000,5,NULL,NULL,NULL,NULL),
(721,12,'005930','삼성전자',592000,6,NULL,NULL,NULL,NULL),
(722,12,'005930','삼성전자',592000,7,NULL,NULL,NULL,NULL),
(723,12,'005930','삼성전자',592000,8,NULL,NULL,NULL,NULL),
(724,12,'005930','삼성전자',593000,9,NULL,NULL,NULL,NULL),
(725,12,'005930','삼성전자',593000,10,NULL,NULL,NULL,NULL),
(726,12,'005930','삼성전자',593000,11,NULL,NULL,NULL,NULL),
(727,12,'005930','삼성전자',592000,12,NULL,NULL,NULL,NULL),
(728,12,'005930','삼성전자',593500,13,NULL,NULL,NULL,NULL),
(729,12,'005930','삼성전자',594000,14,NULL,NULL,NULL,NULL),
(730,12,'005930','삼성전자',593500,15,NULL,NULL,NULL,NULL),
(731,12,'005930','삼성전자',593000,16,NULL,NULL,NULL,NULL),
(732,12,'005930','삼성전자',594000,17,NULL,NULL,NULL,NULL),
(733,12,'005930','삼성전자',594000,18,NULL,NULL,NULL,NULL),
(734,12,'005930','삼성전자',594500,19,NULL,NULL,NULL,NULL),
(735,12,'005930','삼성전자',594000,20,NULL,NULL,NULL,NULL),
(736,12,'005930','삼성전자',594000,21,NULL,NULL,NULL,NULL),
(737,12,'005930','삼성전자',593500,22,NULL,NULL,NULL,NULL),
(738,12,'005930','삼성전자',594000,23,NULL,NULL,NULL,NULL),
(739,12,'005930','삼성전자',593000,24,NULL,NULL,NULL,NULL),
(740,12,'005930','삼성전자',593000,25,NULL,NULL,NULL,NULL),
(741,12,'005930','삼성전자',594000,26,NULL,NULL,NULL,NULL),
(742,12,'005930','삼성전자',594000,27,NULL,NULL,NULL,NULL),
(743,12,'005930','삼성전자',594000,28,NULL,NULL,NULL,NULL),
(744,12,'005930','삼성전자',595000,29,NULL,NULL,NULL,NULL),
(745,12,'005930','삼성전자',595000,30,NULL,NULL,NULL,NULL),
(746,12,'005930','삼성전자',594000,31,NULL,NULL,NULL,NULL),
(747,12,'005930','삼성전자',594000,32,NULL,NULL,NULL,NULL),
(748,12,'005930','삼성전자',594000,33,NULL,NULL,NULL,NULL),
(749,12,'005930','삼성전자',595000,34,NULL,NULL,NULL,NULL),
(750,12,'005930','삼성전자',595000,35,NULL,NULL,NULL,NULL),
(751,12,'005930','삼성전자',594000,36,NULL,NULL,NULL,NULL),
(752,12,'005930','삼성전자',594000,37,NULL,NULL,NULL,NULL),
(753,12,'005930','삼성전자',595000,38,NULL,NULL,NULL,NULL),
(754,12,'005930','삼성전자',595000,39,NULL,NULL,NULL,NULL),
(755,12,'005930','삼성전자',594000,40,NULL,NULL,NULL,NULL),
(756,12,'005930','삼성전자',594000,41,NULL,NULL,NULL,NULL),
(757,12,'005930','삼성전자',594000,42,NULL,NULL,NULL,NULL),
(758,12,'005930','삼성전자',594000,43,NULL,NULL,NULL,NULL),
(759,12,'005930','삼성전자',595000,44,NULL,NULL,NULL,NULL),
(760,12,'005930','삼성전자',596000,45,NULL,NULL,NULL,NULL),
(761,12,'005930','삼성전자',595000,46,NULL,NULL,NULL,NULL),
(762,12,'005930','삼성전자',596000,47,NULL,NULL,NULL,NULL),
(763,12,'005930','삼성전자',597000,48,NULL,NULL,NULL,NULL),
(764,12,'005930','삼성전자',596500,49,NULL,NULL,NULL,NULL),
(765,12,'005930','삼성전자',597000,50,NULL,NULL,NULL,NULL),
(766,12,'005930','삼성전자',597500,51,NULL,NULL,NULL,NULL),
(767,12,'005930','삼성전자',596000,52,NULL,NULL,NULL,NULL),
(768,12,'005930','삼성전자',596500,53,NULL,NULL,NULL,NULL),
(769,12,'005930','삼성전자',596000,54,NULL,NULL,NULL,NULL),
(770,12,'005930','삼성전자',596500,55,NULL,NULL,NULL,NULL),
(771,12,'005930','삼성전자',597000,56,NULL,NULL,NULL,NULL),
(772,12,'005930','삼성전자',597500,57,NULL,NULL,NULL,NULL),
(773,12,'005930','삼성전자',597500,58,NULL,NULL,NULL,NULL),
(774,12,'005930','삼성전자',598000,59,NULL,NULL,NULL,NULL),
(775,12,'005930','삼성전자',597000,60,NULL,NULL,NULL,NULL),
(776,12,'005930','삼성전자',597000,61,NULL,NULL,NULL,NULL),
(777,12,'005930','삼성전자',598000,62,NULL,NULL,NULL,NULL),
(778,12,'005930','삼성전자',597000,63,NULL,NULL,NULL,NULL),
(779,12,'005930','삼성전자',598000,64,NULL,NULL,NULL,NULL),
(780,12,'005930','삼성전자',599000,65,NULL,NULL,NULL,NULL);

/*Table structure for table `job015_copy` */

DROP TABLE IF EXISTS `job015_copy`;

CREATE TABLE `job015_copy` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=600 DEFAULT CHARSET=utf8;

/*Data for the table `job015_copy` */

insert  into `job015_copy`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약12',20000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약12',18000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약12',17000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약12',16000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약12',18000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약12',19000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약12',20000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약12',19000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약12',22000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약12',23000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약12',22000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약12',23000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약12',23000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약12',22000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약12',23000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약12',24000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약12',23000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약12',24000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약12',23000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약12',24000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약12',25000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약12',26000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약12',25000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약12',24000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약12',25000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약12',24000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약12',26000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약12',27000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약12',26000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약12',26000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약12',27000,31,NULL,NULL,NULL,NULL),
(32,1,'009290','광동제약12',28000,32,NULL,NULL,NULL,NULL),
(33,1,'009290','광동제약12',29000,33,NULL,NULL,NULL,NULL),
(34,1,'009290','광동제약12',28000,34,NULL,NULL,NULL,NULL),
(35,1,'009290','광동제약12',29000,35,NULL,NULL,NULL,NULL),
(36,1,'009290','광동제약12',30000,36,NULL,NULL,NULL,NULL),
(37,1,'009290','광동제약12',31000,37,NULL,NULL,NULL,NULL),
(38,1,'009290','광동제약12',30000,38,NULL,NULL,NULL,NULL),
(39,1,'009290','광동제약12',31000,39,NULL,NULL,NULL,NULL),
(40,1,'009290','광동제약12',32000,40,NULL,NULL,NULL,NULL),
(41,1,'009290','광동제약12',30000,41,NULL,NULL,NULL,NULL),
(42,1,'009290','광동제약12',31000,42,NULL,NULL,NULL,NULL),
(43,1,'009290','광동제약12',32000,43,NULL,NULL,NULL,NULL),
(44,1,'009290','광동제약12',33000,44,NULL,NULL,NULL,NULL),
(45,1,'009290','광동제약12',32000,45,NULL,NULL,NULL,NULL),
(46,1,'009290','광동제약12',31000,46,NULL,NULL,NULL,NULL),
(47,1,'009290','광동제약12',33000,47,NULL,NULL,NULL,NULL),
(48,1,'009290','광동제약12',34000,48,NULL,NULL,NULL,NULL),
(49,1,'009290','광동제약12',35000,49,NULL,NULL,NULL,NULL),
(51,2,'249420','대웅제약',12001,1,NULL,NULL,NULL,NULL),
(52,2,'249420','대웅제약',13000,2,NULL,NULL,NULL,NULL),
(53,2,'249420','대웅제약',14000,3,NULL,NULL,NULL,NULL),
(54,2,'249420','대웅제약',13000,4,NULL,NULL,NULL,NULL),
(55,2,'249420','대웅제약',12000,5,NULL,NULL,NULL,NULL),
(56,2,'249420','대웅제약',12000,6,NULL,NULL,NULL,NULL),
(57,2,'249420','대웅제약',13000,7,NULL,NULL,NULL,NULL),
(58,2,'249420','대웅제약',12000,8,NULL,NULL,NULL,NULL),
(59,2,'249420','대웅제약',11000,9,NULL,NULL,NULL,NULL),
(60,2,'249420','대웅제약',10000,10,NULL,NULL,NULL,NULL),
(61,2,'249420','대웅제약',9000,11,NULL,NULL,NULL,NULL),
(62,2,'249420','대웅제약',10000,12,NULL,NULL,NULL,NULL),
(63,2,'249420','대웅제약',9000,13,NULL,NULL,NULL,NULL),
(64,2,'249420','대웅제약',8000,14,NULL,NULL,NULL,NULL),
(65,2,'249420','대웅제약',9000,15,NULL,NULL,NULL,NULL),
(66,2,'249420','대웅제약',8000,16,NULL,NULL,NULL,NULL),
(67,2,'249420','대웅제약',7000,17,NULL,NULL,NULL,NULL),
(68,2,'249420','대웅제약',6000,18,NULL,NULL,NULL,NULL),
(69,2,'249420','대웅제약',7000,19,NULL,NULL,NULL,NULL),
(70,2,'249420','대웅제약',9000,20,NULL,NULL,NULL,NULL),
(71,2,'249420','대웅제약',8000,21,NULL,NULL,NULL,NULL),
(72,2,'249420','대웅제약',8000,22,NULL,NULL,NULL,NULL),
(73,2,'249420','대웅제약',8000,23,NULL,NULL,NULL,NULL),
(74,2,'249420','대웅제약',8000,24,NULL,NULL,NULL,NULL),
(75,2,'249420','대웅제약',7000,25,NULL,NULL,NULL,NULL),
(76,2,'249420','대웅제약',7000,26,NULL,NULL,NULL,NULL),
(77,2,'249420','대웅제약',7000,27,NULL,NULL,NULL,NULL),
(78,2,'249420','대웅제약',6000,28,NULL,NULL,NULL,NULL),
(79,2,'249420','대웅제약',6000,29,NULL,NULL,NULL,NULL),
(80,2,'249420','대웅제약',6000,30,NULL,NULL,NULL,NULL),
(81,2,'249420','대웅제약',6000,31,NULL,NULL,NULL,NULL),
(82,2,'249420','대웅제약',5000,32,NULL,NULL,NULL,NULL),
(83,2,'249420','대웅제약',4000,33,NULL,NULL,NULL,NULL),
(84,2,'249420','대웅제약',5000,34,NULL,NULL,NULL,NULL),
(85,2,'249420','대웅제약',4000,35,NULL,NULL,NULL,NULL),
(86,2,'249420','대웅제약',3000,36,NULL,NULL,NULL,NULL),
(87,2,'249420','대웅제약',4000,37,NULL,NULL,NULL,NULL),
(88,2,'249420','대웅제약',5000,38,NULL,NULL,NULL,NULL),
(89,2,'249420','대웅제약',4000,39,NULL,NULL,NULL,NULL),
(90,2,'249420','대웅제약',3000,40,NULL,NULL,NULL,NULL),
(91,2,'249420','대웅제약',2000,41,NULL,NULL,NULL,NULL),
(92,2,'249420','대웅제약',3000,42,NULL,NULL,NULL,NULL),
(93,2,'249420','대웅제약',4000,43,NULL,NULL,NULL,NULL),
(94,2,'249420','대웅제약',3000,44,NULL,NULL,NULL,NULL),
(95,2,'249420','대웅제약',2000,45,NULL,NULL,NULL,NULL),
(96,2,'249420','대웅제약',3000,46,NULL,NULL,NULL,NULL),
(97,2,'249420','대웅제약',3000,47,NULL,NULL,NULL,NULL),
(98,2,'249420','대웅제약',2000,48,NULL,NULL,NULL,NULL),
(99,2,'249420','대웅제약',2000,49,NULL,NULL,NULL,NULL),
(101,3,'011170','롯데케미칼',365000,1,NULL,NULL,NULL,NULL),
(102,3,'011170','롯데케미칼',365000,2,NULL,NULL,NULL,NULL),
(103,3,'011170','롯데케미칼',364000,3,NULL,NULL,NULL,NULL),
(104,3,'011170','롯데케미칼',364000,4,NULL,NULL,NULL,NULL),
(105,3,'011170','롯데케미칼',363000,5,NULL,NULL,NULL,NULL),
(106,3,'011170','롯데케미칼',363000,6,NULL,NULL,NULL,NULL),
(107,3,'011170','롯데케미칼',362000,7,NULL,NULL,NULL,NULL),
(108,3,'011170','롯데케미칼',362000,8,NULL,NULL,NULL,NULL),
(109,3,'011170','롯데케미칼',362000,9,NULL,NULL,NULL,NULL),
(110,3,'011170','롯데케미칼',361000,10,NULL,NULL,NULL,NULL),
(111,3,'011170','롯데케미칼',362000,11,NULL,NULL,NULL,NULL),
(112,3,'011170','롯데케미칼',361000,12,NULL,NULL,NULL,NULL),
(113,3,'011170','롯데케미칼',360000,13,NULL,NULL,NULL,NULL),
(114,3,'011170','롯데케미칼',359000,14,NULL,NULL,NULL,NULL),
(115,3,'011170','롯데케미칼',359000,15,NULL,NULL,NULL,NULL),
(116,3,'011170','롯데케미칼',359000,16,NULL,NULL,NULL,NULL),
(117,3,'011170','롯데케미칼',358000,17,NULL,NULL,NULL,NULL),
(118,3,'011170','롯데케미칼',358000,18,NULL,NULL,NULL,NULL),
(119,3,'011170','롯데케미칼',357000,19,NULL,NULL,NULL,NULL),
(120,3,'011170','롯데케미칼',357000,20,NULL,NULL,NULL,NULL),
(121,3,'011170','롯데케미칼',358000,21,NULL,NULL,NULL,NULL),
(122,3,'011170','롯데케미칼',358000,22,NULL,NULL,NULL,NULL),
(123,3,'011170','롯데케미칼',359000,23,NULL,NULL,NULL,NULL),
(124,3,'011170','롯데케미칼',358000,24,NULL,NULL,NULL,NULL),
(125,3,'011170','롯데케미칼',358000,25,NULL,NULL,NULL,NULL),
(126,3,'011170','롯데케미칼',358000,26,NULL,NULL,NULL,NULL),
(127,3,'011170','롯데케미칼',359000,27,NULL,NULL,NULL,NULL),
(128,3,'011170','롯데케미칼',358000,28,NULL,NULL,NULL,NULL),
(129,3,'011170','롯데케미칼',358000,29,NULL,NULL,NULL,NULL),
(130,3,'011170','롯데케미칼',358000,30,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',359000,31,NULL,NULL,NULL,NULL),
(132,3,'011170','롯데케미칼',358000,32,NULL,NULL,NULL,NULL),
(133,3,'011170','롯데케미칼',358000,33,NULL,NULL,NULL,NULL),
(134,3,'011170','롯데케미칼',358000,34,NULL,NULL,NULL,NULL),
(135,3,'011170','롯데케미칼',359000,35,NULL,NULL,NULL,NULL),
(136,3,'011170','롯데케미칼',358000,36,NULL,NULL,NULL,NULL),
(137,3,'011170','롯데케미칼',357000,37,NULL,NULL,NULL,NULL),
(138,3,'011170','롯데케미칼',358000,38,NULL,NULL,NULL,NULL),
(139,3,'011170','롯데케미칼',358000,39,NULL,NULL,NULL,NULL),
(140,3,'011170','롯데케미칼',358000,40,NULL,NULL,NULL,NULL),
(141,3,'011170','롯데케미칼',359000,41,NULL,NULL,NULL,NULL),
(142,3,'011170','롯데케미칼',358000,42,NULL,NULL,NULL,NULL),
(143,3,'011170','롯데케미칼',357000,43,NULL,NULL,NULL,NULL),
(144,3,'011170','롯데케미칼',358000,44,NULL,NULL,NULL,NULL),
(145,3,'011170','롯데케미칼',358000,45,NULL,NULL,NULL,NULL),
(146,3,'011170','롯데케미칼',358000,46,NULL,NULL,NULL,NULL),
(147,3,'011170','롯데케미칼',359000,47,NULL,NULL,NULL,NULL),
(148,3,'011170','롯데케미칼',358000,48,NULL,NULL,NULL,NULL),
(149,3,'011170','롯데케미칼',357000,49,NULL,NULL,NULL,NULL),
(151,4,'009830','한화케미칼',26000,1,NULL,NULL,NULL,NULL),
(152,4,'009830','한화케미칼',27000,2,NULL,NULL,NULL,NULL),
(153,4,'009830','한화케미칼',26000,3,NULL,NULL,NULL,NULL),
(154,4,'009830','한화케미칼',30000,4,NULL,NULL,NULL,NULL),
(155,4,'009830','한화케미칼',26000,5,NULL,NULL,NULL,NULL),
(156,4,'009830','한화케미칼',28000,6,NULL,NULL,NULL,NULL),
(157,4,'009830','한화케미칼',30000,7,NULL,NULL,NULL,NULL),
(158,4,'009830','한화케미칼',32000,8,NULL,NULL,NULL,NULL),
(159,4,'009830','한화케미칼',26000,9,NULL,NULL,NULL,NULL),
(160,4,'009830','한화케미칼',27000,10,NULL,NULL,NULL,NULL),
(161,4,'009830','한화케미칼',26000,11,NULL,NULL,NULL,NULL),
(162,4,'009830','한화케미칼',30000,12,NULL,NULL,NULL,NULL),
(163,4,'009830','한화케미칼',26000,13,NULL,NULL,NULL,NULL),
(164,4,'009830','한화케미칼',28000,14,NULL,NULL,NULL,NULL),
(165,4,'009830','한화케미칼',29000,15,NULL,NULL,NULL,NULL),
(166,4,'009830','한화케미칼',26000,16,NULL,NULL,NULL,NULL),
(167,4,'009830','한화케미칼',27000,17,NULL,NULL,NULL,NULL),
(168,4,'009830','한화케미칼',26000,18,NULL,NULL,NULL,NULL),
(169,4,'009830','한화케미칼',30000,19,NULL,NULL,NULL,NULL),
(170,4,'009830','한화케미칼',26000,20,NULL,NULL,NULL,NULL),
(171,4,'009830','한화케미칼',28000,21,NULL,NULL,NULL,NULL),
(172,4,'009830','한화케미칼',30000,22,NULL,NULL,NULL,NULL),
(173,4,'009830','한화케미칼',31000,23,NULL,NULL,NULL,NULL),
(174,4,'009830','한화케미칼',32000,24,NULL,NULL,NULL,NULL),
(175,4,'009830','한화케미칼',26000,25,NULL,NULL,NULL,NULL),
(176,4,'009830','한화케미칼',27000,26,NULL,NULL,NULL,NULL),
(177,4,'009830','한화케미칼',26000,27,NULL,NULL,NULL,NULL),
(178,4,'009830','한화케미칼',30000,28,NULL,NULL,NULL,NULL),
(179,4,'009830','한화케미칼',26000,29,NULL,NULL,NULL,NULL),
(180,4,'009830','한화케미칼',28000,30,NULL,NULL,NULL,NULL),
(181,4,'009830','한화케미칼',32000,31,NULL,NULL,NULL,NULL),
(182,4,'009830','한화케미칼',26000,32,NULL,NULL,NULL,NULL),
(183,4,'009830','한화케미칼',27000,33,NULL,NULL,NULL,NULL),
(184,4,'009830','한화케미칼',26000,34,NULL,NULL,NULL,NULL),
(185,4,'009830','한화케미칼',30000,35,NULL,NULL,NULL,NULL),
(186,4,'009830','한화케미칼',26000,36,NULL,NULL,NULL,NULL),
(187,4,'009830','한화케미칼',35000,37,NULL,NULL,NULL,NULL),
(188,4,'009830','한화케미칼',26000,38,NULL,NULL,NULL,NULL),
(189,4,'009830','한화케미칼',27000,39,NULL,NULL,NULL,NULL),
(190,4,'009830','한화케미칼',26000,40,NULL,NULL,NULL,NULL),
(191,4,'009830','한화케미칼',30000,41,NULL,NULL,NULL,NULL),
(192,4,'009830','한화케미칼',26000,42,NULL,NULL,NULL,NULL),
(193,4,'009830','한화케미칼',28000,43,NULL,NULL,NULL,NULL),
(194,4,'009830','한화케미칼',32000,44,NULL,NULL,NULL,NULL),
(195,4,'009830','한화케미칼',26000,45,NULL,NULL,NULL,NULL),
(196,4,'009830','한화케미칼',30000,46,NULL,NULL,NULL,NULL),
(197,4,'009830','한화케미칼',26000,47,NULL,NULL,NULL,NULL),
(198,4,'009830','한화케미칼',27000,48,NULL,NULL,NULL,NULL),
(199,4,'009830','한화케미칼',26000,49,NULL,NULL,NULL,NULL),
(201,5,'007310','오뚜기22',76000,1,NULL,NULL,NULL,NULL),
(202,5,'007310','오뚜기22',77000,2,NULL,NULL,NULL,NULL),
(203,5,'007310','오뚜기22',77000,3,NULL,NULL,NULL,NULL),
(204,5,'007310','오뚜기22',76000,4,NULL,NULL,NULL,NULL),
(205,5,'007310','오뚜기22',77000,5,NULL,NULL,NULL,NULL),
(206,5,'007310','오뚜기22',78000,6,NULL,NULL,NULL,NULL),
(207,5,'007310','오뚜기22',79000,7,NULL,NULL,NULL,NULL),
(208,5,'007310','오뚜기22',80000,8,NULL,NULL,NULL,NULL),
(209,5,'007310','오뚜기22',79000,9,NULL,NULL,NULL,NULL),
(210,5,'007310','오뚜기22',80000,10,NULL,NULL,NULL,NULL),
(211,5,'007310','오뚜기22',81000,11,NULL,NULL,NULL,NULL),
(212,5,'007310','오뚜기22',80000,12,NULL,NULL,NULL,NULL),
(213,5,'007310','오뚜기22',79000,13,NULL,NULL,NULL,NULL),
(214,5,'007310','오뚜기22',78000,14,NULL,NULL,NULL,NULL),
(215,5,'007310','오뚜기22',78000,15,NULL,NULL,NULL,NULL),
(216,5,'007310','오뚜기22',77000,16,NULL,NULL,NULL,NULL),
(217,5,'007310','오뚜기22',77000,17,NULL,NULL,NULL,NULL),
(218,5,'007310','오뚜기22',78000,18,NULL,NULL,NULL,NULL),
(219,5,'007310','오뚜기22',77000,19,NULL,NULL,NULL,NULL),
(220,5,'007310','오뚜기22',76000,20,NULL,NULL,NULL,NULL),
(221,5,'007310','오뚜기22',77000,21,NULL,NULL,NULL,NULL),
(222,5,'007310','오뚜기22',77000,22,NULL,NULL,NULL,NULL),
(223,5,'007310','오뚜기22',76000,23,NULL,NULL,NULL,NULL),
(224,5,'007310','오뚜기22',77000,24,NULL,NULL,NULL,NULL),
(225,5,'007310','오뚜기22',76000,25,NULL,NULL,NULL,NULL),
(226,5,'007310','오뚜기22',77000,26,NULL,NULL,NULL,NULL),
(227,5,'007310','오뚜기22',77000,27,NULL,NULL,NULL,NULL),
(228,5,'007310','오뚜기22',76000,28,NULL,NULL,NULL,NULL),
(229,5,'007310','오뚜기22',77000,29,NULL,NULL,NULL,NULL),
(230,5,'007310','오뚜기22',78000,30,NULL,NULL,NULL,NULL),
(231,5,'007310','오뚜기22',76000,31,NULL,NULL,NULL,NULL),
(232,5,'007310','오뚜기22',77000,32,NULL,NULL,NULL,NULL),
(233,5,'007310','오뚜기22',77000,33,NULL,NULL,NULL,NULL),
(234,5,'007310','오뚜기22',76000,34,NULL,NULL,NULL,NULL),
(235,5,'007310','오뚜기22',77000,35,NULL,NULL,NULL,NULL),
(236,5,'007310','오뚜기22',78000,36,NULL,NULL,NULL,NULL),
(237,5,'007310','오뚜기22',79000,37,NULL,NULL,NULL,NULL),
(238,5,'007310','오뚜기22',78000,38,NULL,NULL,NULL,NULL),
(239,5,'007310','오뚜기22',77000,39,NULL,NULL,NULL,NULL),
(240,5,'007310','오뚜기22',77000,40,NULL,NULL,NULL,NULL),
(241,5,'007310','오뚜기22',76000,41,NULL,NULL,NULL,NULL),
(242,5,'007310','오뚜기22',77000,42,NULL,NULL,NULL,NULL),
(243,5,'007310','오뚜기22',78000,43,NULL,NULL,NULL,NULL),
(244,5,'007310','오뚜기22',78000,44,NULL,NULL,NULL,NULL),
(245,5,'007310','오뚜기22',79000,45,NULL,NULL,NULL,NULL),
(246,5,'007310','오뚜기22',78000,46,NULL,NULL,NULL,NULL),
(247,5,'007310','오뚜기22',79000,47,NULL,NULL,NULL,NULL),
(248,5,'007310','오뚜기22',78000,48,NULL,NULL,NULL,NULL),
(249,5,'007310','오뚜기22',77000,49,NULL,NULL,NULL,NULL),
(251,6,'028260','한국맥널티',126000,1,NULL,NULL,NULL,NULL),
(252,6,'028260','한국맥널티',125000,2,NULL,NULL,NULL,NULL),
(253,6,'028260','한국맥널티',124000,3,NULL,NULL,NULL,NULL),
(254,6,'028260','한국맥널티',123000,4,NULL,NULL,NULL,NULL),
(255,6,'028260','한국맥널티',125000,5,NULL,NULL,NULL,NULL),
(256,6,'028260','한국맥널티',126000,6,NULL,NULL,NULL,NULL),
(257,6,'028260','한국맥널티',127000,7,NULL,NULL,NULL,NULL),
(258,6,'028260','한국맥널티',128000,8,NULL,NULL,NULL,NULL),
(259,6,'028260','한국맥널티',129000,9,NULL,NULL,NULL,NULL),
(260,6,'028260','한국맥널티',130000,10,NULL,NULL,NULL,NULL),
(261,6,'028260','한국맥널티',131000,11,NULL,NULL,NULL,NULL),
(262,6,'028260','한국맥널티',132000,12,NULL,NULL,NULL,NULL),
(263,6,'028260','한국맥널티',132000,13,NULL,NULL,NULL,NULL),
(264,6,'028260','한국맥널티',133000,14,NULL,NULL,NULL,NULL),
(265,6,'028260','한국맥널티',132000,15,NULL,NULL,NULL,NULL),
(266,6,'028260','한국맥널티',133000,16,NULL,NULL,NULL,NULL),
(267,6,'028260','한국맥널티',134000,17,NULL,NULL,NULL,NULL),
(268,6,'028260','한국맥널티',133000,18,NULL,NULL,NULL,NULL),
(269,6,'028260','한국맥널티',134000,19,NULL,NULL,NULL,NULL),
(270,6,'028260','한국맥널티',133000,20,NULL,NULL,NULL,NULL),
(271,6,'028260','한국맥널티',134000,21,NULL,NULL,NULL,NULL),
(272,6,'028260','한국맥널티',135000,22,NULL,NULL,NULL,NULL),
(273,6,'028260','한국맥널티',136000,23,NULL,NULL,NULL,NULL),
(274,6,'028260','한국맥널티',137000,24,NULL,NULL,NULL,NULL),
(275,6,'028260','한국맥널티',137000,25,NULL,NULL,NULL,NULL),
(276,6,'028260','한국맥널티',137000,26,NULL,NULL,NULL,NULL),
(277,6,'028260','한국맥널티',138000,27,NULL,NULL,NULL,NULL),
(278,6,'028260','한국맥널티',138000,28,NULL,NULL,NULL,NULL),
(279,6,'028260','한국맥널티',137000,29,NULL,NULL,NULL,NULL),
(280,6,'028260','한국맥널티',138000,30,NULL,NULL,NULL,NULL),
(281,6,'028260','한국맥널티',138000,31,NULL,NULL,NULL,NULL),
(282,6,'028260','한국맥널티',137000,32,NULL,NULL,NULL,NULL),
(283,6,'028260','한국맥널티',138000,33,NULL,NULL,NULL,NULL),
(284,6,'028260','한국맥널티',138000,34,NULL,NULL,NULL,NULL),
(285,6,'028260','한국맥널티',137000,35,NULL,NULL,NULL,NULL),
(286,6,'028260','한국맥널티',138000,36,NULL,NULL,NULL,NULL),
(287,6,'028260','한국맥널티',139000,37,NULL,NULL,NULL,NULL),
(288,6,'028260','한국맥널티',140000,38,NULL,NULL,NULL,NULL),
(289,6,'028260','한국맥널티',139000,39,NULL,NULL,NULL,NULL),
(290,6,'028260','한국맥널티',140000,40,NULL,NULL,NULL,NULL),
(291,6,'028260','한국맥널티',138000,41,NULL,NULL,NULL,NULL),
(292,6,'028260','한국맥널티',139000,42,NULL,NULL,NULL,NULL),
(293,6,'028260','한국맥널티',139000,43,NULL,NULL,NULL,NULL),
(294,6,'028260','한국맥널티',140000,44,NULL,NULL,NULL,NULL),
(295,6,'028260','한국맥널티',140000,45,NULL,NULL,NULL,NULL),
(296,6,'028260','한국맥널티',140000,46,NULL,NULL,NULL,NULL),
(297,6,'028260','한국맥널티',139000,47,NULL,NULL,NULL,NULL),
(298,6,'028260','한국맥널티',140000,48,NULL,NULL,NULL,NULL),
(299,6,'028260','한국맥널티',141000,49,NULL,NULL,NULL,NULL),
(301,7,'000720','현대건설',49000,1,NULL,NULL,NULL,NULL),
(302,7,'000720','현대건설',46000,2,NULL,NULL,NULL,NULL),
(303,7,'000720','현대건설',47000,3,NULL,NULL,NULL,NULL),
(304,7,'000720','현대건설',48000,4,NULL,NULL,NULL,NULL),
(305,7,'000720','현대건설',48000,5,NULL,NULL,NULL,NULL),
(306,7,'000720','현대건설',49000,6,NULL,NULL,NULL,NULL),
(307,7,'000720','현대건설',47000,7,NULL,NULL,NULL,NULL),
(308,7,'000720','현대건설',46000,8,NULL,NULL,NULL,NULL),
(309,7,'000720','현대건설',47000,9,NULL,NULL,NULL,NULL),
(310,7,'000720','현대건설',46000,10,NULL,NULL,NULL,NULL),
(311,7,'000720','현대건설',47000,11,NULL,NULL,NULL,NULL),
(312,7,'000720','현대건설',46000,12,NULL,NULL,NULL,NULL),
(313,7,'000720','현대건설',45000,13,NULL,NULL,NULL,NULL),
(314,7,'000720','현대건설',45000,14,NULL,NULL,NULL,NULL),
(315,7,'000720','현대건설',44000,15,NULL,NULL,NULL,NULL),
(316,7,'000720','현대건설',44000,16,NULL,NULL,NULL,NULL),
(317,7,'000720','현대건설',45000,17,NULL,NULL,NULL,NULL),
(318,7,'000720','현대건설',44000,18,NULL,NULL,NULL,NULL),
(319,7,'000720','현대건설',44000,19,NULL,NULL,NULL,NULL),
(320,7,'000720','현대건설',44000,20,NULL,NULL,NULL,NULL),
(321,7,'000720','현대건설',43000,21,NULL,NULL,NULL,NULL),
(322,7,'000720','현대건설',44000,22,NULL,NULL,NULL,NULL),
(323,7,'000720','현대건설',44000,23,NULL,NULL,NULL,NULL),
(324,7,'000720','현대건설',44000,24,NULL,NULL,NULL,NULL),
(325,7,'000720','현대건설',44000,25,NULL,NULL,NULL,NULL),
(326,7,'000720','현대건설',43000,26,NULL,NULL,NULL,NULL),
(327,7,'000720','현대건설',43000,27,NULL,NULL,NULL,NULL),
(328,7,'000720','현대건설',43000,28,NULL,NULL,NULL,NULL),
(329,7,'000720','현대건설',43000,29,NULL,NULL,NULL,NULL),
(330,7,'000720','현대건설',43000,30,NULL,NULL,NULL,NULL),
(331,7,'000720','현대건설',44000,31,NULL,NULL,NULL,NULL),
(332,7,'000720','현대건설',43000,32,NULL,NULL,NULL,NULL),
(333,7,'000720','현대건설',43000,33,NULL,NULL,NULL,NULL),
(334,7,'000720','현대건설',43000,34,NULL,NULL,NULL,NULL),
(335,7,'000720','현대건설',43000,35,NULL,NULL,NULL,NULL),
(336,7,'000720','현대건설',42000,36,NULL,NULL,NULL,NULL),
(337,7,'000720','현대건설',42000,37,NULL,NULL,NULL,NULL),
(338,7,'000720','현대건설',42000,38,NULL,NULL,NULL,NULL),
(339,7,'000720','현대건설',43000,39,NULL,NULL,NULL,NULL),
(340,7,'000720','현대건설',42000,40,NULL,NULL,NULL,NULL),
(341,7,'000720','현대건설',43000,41,NULL,NULL,NULL,NULL),
(342,7,'000720','현대건설',43000,42,NULL,NULL,NULL,NULL),
(343,7,'000720','현대건설',43000,43,NULL,NULL,NULL,NULL),
(344,7,'000720','현대건설',42000,44,NULL,NULL,NULL,NULL),
(345,7,'000720','현대건설',42000,45,NULL,NULL,NULL,NULL),
(346,7,'000720','현대건설',42000,46,NULL,NULL,NULL,NULL),
(347,7,'000720','현대건설',41000,47,NULL,NULL,NULL,NULL),
(348,7,'000720','현대건설',41000,48,NULL,NULL,NULL,NULL),
(349,7,'000720','현대건설',41000,49,NULL,NULL,NULL,NULL),
(351,8,'042660','두산엔진',44000,1,NULL,NULL,NULL,NULL),
(352,8,'042660','두산엔진',45000,2,NULL,NULL,NULL,NULL),
(353,8,'042660','두산엔진',44000,3,NULL,NULL,NULL,NULL),
(354,8,'042660','두산엔진',45000,4,NULL,NULL,NULL,NULL),
(355,8,'042660','두산엔진',46000,5,NULL,NULL,NULL,NULL),
(356,8,'042660','두산엔진',45000,6,NULL,NULL,NULL,NULL),
(357,8,'042660','두산엔진',46000,7,NULL,NULL,NULL,NULL),
(358,8,'042660','두산엔진',47000,8,NULL,NULL,NULL,NULL),
(359,8,'042660','두산엔진',47000,9,NULL,NULL,NULL,NULL),
(360,8,'042660','두산엔진',48000,10,NULL,NULL,NULL,NULL),
(361,8,'042660','두산엔진',48000,11,NULL,NULL,NULL,NULL),
(362,8,'042660','두산엔진',49000,12,NULL,NULL,NULL,NULL),
(363,8,'042660','두산엔진',49000,13,NULL,NULL,NULL,NULL),
(364,8,'042660','두산엔진',49000,14,NULL,NULL,NULL,NULL),
(365,8,'042660','두산엔진',50000,15,NULL,NULL,NULL,NULL),
(366,8,'042660','두산엔진',49000,16,NULL,NULL,NULL,NULL),
(367,8,'042660','두산엔진',49000,17,NULL,NULL,NULL,NULL),
(368,8,'042660','두산엔진',49000,18,NULL,NULL,NULL,NULL),
(369,8,'042660','두산엔진',50000,19,NULL,NULL,NULL,NULL),
(370,8,'042660','두산엔진',49000,20,NULL,NULL,NULL,NULL),
(371,8,'042660','두산엔진',50000,21,NULL,NULL,NULL,NULL),
(372,8,'042660','두산엔진',49000,22,NULL,NULL,NULL,NULL),
(373,8,'042660','두산엔진',50000,23,NULL,NULL,NULL,NULL),
(374,8,'042660','두산엔진',51000,24,NULL,NULL,NULL,NULL),
(375,8,'042660','두산엔진',51000,25,NULL,NULL,NULL,NULL),
(376,8,'042660','두산엔진',51000,26,NULL,NULL,NULL,NULL),
(377,8,'042660','두산엔진',50000,27,NULL,NULL,NULL,NULL),
(378,8,'042660','두산엔진',51000,28,NULL,NULL,NULL,NULL),
(379,8,'042660','두산엔진',51000,29,NULL,NULL,NULL,NULL),
(380,8,'042660','두산엔진',51000,30,NULL,NULL,NULL,NULL),
(381,8,'042660','두산엔진',50000,31,NULL,NULL,NULL,NULL),
(382,8,'042660','두산엔진',51000,32,NULL,NULL,NULL,NULL),
(383,8,'042660','두산엔진',52000,33,NULL,NULL,NULL,NULL),
(384,8,'042660','두산엔진',52000,34,NULL,NULL,NULL,NULL),
(385,8,'042660','두산엔진',53000,35,NULL,NULL,NULL,NULL),
(386,8,'042660','두산엔진',54000,36,NULL,NULL,NULL,NULL),
(387,8,'042660','두산엔진',54000,37,NULL,NULL,NULL,NULL),
(388,8,'042660','두산엔진',55000,38,NULL,NULL,NULL,NULL),
(389,8,'042660','두산엔진',54000,39,NULL,NULL,NULL,NULL),
(390,8,'042660','두산엔진',55000,40,NULL,NULL,NULL,NULL),
(391,8,'042660','두산엔진',54000,41,NULL,NULL,NULL,NULL),
(392,8,'042660','두산엔진',53000,42,NULL,NULL,NULL,NULL),
(393,8,'042660','두산엔진',54000,43,NULL,NULL,NULL,NULL),
(394,8,'042660','두산엔진',54000,44,NULL,NULL,NULL,NULL),
(395,8,'042660','두산엔진',55000,45,NULL,NULL,NULL,NULL),
(396,8,'042660','두산엔진',54000,46,NULL,NULL,NULL,NULL),
(397,8,'042660','두산엔진',55000,47,NULL,NULL,NULL,NULL),
(398,8,'042660','두산엔진',56000,48,NULL,NULL,NULL,NULL),
(399,8,'042660','두산엔진',55000,49,NULL,NULL,NULL,NULL),
(401,9,'005380','현대차',148000,1,NULL,NULL,NULL,NULL),
(402,9,'005380','현대차',148000,2,NULL,NULL,NULL,NULL),
(403,9,'005380','현대차',148000,3,NULL,NULL,NULL,NULL),
(404,9,'005380','현대차',148000,4,NULL,NULL,NULL,NULL),
(405,9,'005380','현대차',149000,5,NULL,NULL,NULL,NULL),
(406,9,'005380','현대차',149000,6,NULL,NULL,NULL,NULL),
(407,9,'005380','현대차',148000,7,NULL,NULL,NULL,NULL),
(408,9,'005380','현대차',149000,8,NULL,NULL,NULL,NULL),
(409,9,'005380','현대차',148000,9,NULL,NULL,NULL,NULL),
(410,9,'005380','현대차',149000,10,NULL,NULL,NULL,NULL),
(411,9,'005380','현대차',148000,11,NULL,NULL,NULL,NULL),
(412,9,'005380','현대차',149000,12,NULL,NULL,NULL,NULL),
(413,9,'005380','현대차',148000,13,NULL,NULL,NULL,NULL),
(414,9,'005380','현대차',148000,14,NULL,NULL,NULL,NULL),
(415,9,'005380','현대차',148000,15,NULL,NULL,NULL,NULL),
(416,9,'005380','현대차',148000,16,NULL,NULL,NULL,NULL),
(417,9,'005380','현대차',148000,17,NULL,NULL,NULL,NULL),
(418,9,'005380','현대차',148000,18,NULL,NULL,NULL,NULL),
(419,9,'005380','현대차',148000,19,NULL,NULL,NULL,NULL),
(420,9,'005380','현대차',148000,20,NULL,NULL,NULL,NULL),
(421,9,'005380','현대차',148000,21,NULL,NULL,NULL,NULL),
(422,9,'005380','현대차',149000,22,NULL,NULL,NULL,NULL),
(423,9,'005380','현대차',149000,23,NULL,NULL,NULL,NULL),
(424,9,'005380','현대차',149000,24,NULL,NULL,NULL,NULL),
(425,9,'005380','현대차',148000,25,NULL,NULL,NULL,NULL),
(426,9,'005380','현대차',148000,26,NULL,NULL,NULL,NULL),
(427,9,'005380','현대차',148000,27,NULL,NULL,NULL,NULL),
(428,9,'005380','현대차',148000,28,NULL,NULL,NULL,NULL),
(429,9,'005380','현대차',148000,29,NULL,NULL,NULL,NULL),
(430,9,'005380','현대차',149000,30,NULL,NULL,NULL,NULL),
(431,9,'005380','현대차',148000,31,NULL,NULL,NULL,NULL),
(432,9,'005380','현대차',148000,32,NULL,NULL,NULL,NULL),
(433,9,'005380','현대차',147000,33,NULL,NULL,NULL,NULL),
(434,9,'005380','현대차',147000,34,NULL,NULL,NULL,NULL),
(435,9,'005380','현대차',147000,35,NULL,NULL,NULL,NULL),
(436,9,'005380','현대차',148000,36,NULL,NULL,NULL,NULL),
(437,9,'005380','현대차',147000,37,NULL,NULL,NULL,NULL),
(438,9,'005380','현대차',148000,38,NULL,NULL,NULL,NULL),
(439,9,'005380','현대차',148000,39,NULL,NULL,NULL,NULL),
(440,9,'005380','현대차',147000,40,NULL,NULL,NULL,NULL),
(441,9,'005380','현대차',147000,41,NULL,NULL,NULL,NULL),
(442,9,'005380','현대차',148000,42,NULL,NULL,NULL,NULL),
(443,9,'005380','현대차',148000,43,NULL,NULL,NULL,NULL),
(444,9,'005380','현대차',148000,44,NULL,NULL,NULL,NULL),
(445,9,'005380','현대차',149000,45,NULL,NULL,NULL,NULL),
(446,9,'005380','현대차',148000,46,NULL,NULL,NULL,NULL),
(447,9,'005380','현대차',148000,47,NULL,NULL,NULL,NULL),
(448,9,'005380','현대차',148000,48,NULL,NULL,NULL,NULL),
(449,9,'005380','현대차',149000,49,NULL,NULL,NULL,NULL),
(451,10,'003490','대한항공',31000,1,NULL,NULL,NULL,NULL),
(452,10,'003490','대한항공',30000,2,NULL,NULL,NULL,NULL),
(453,10,'003490','대한항공',29000,3,NULL,NULL,NULL,NULL),
(454,10,'003490','대한항공',28000,4,NULL,NULL,NULL,NULL),
(455,10,'003490','대한항공',29000,5,NULL,NULL,NULL,NULL),
(456,10,'003490','대한항공',31000,6,NULL,NULL,NULL,NULL),
(457,10,'003490','대한항공',32000,7,NULL,NULL,NULL,NULL),
(458,10,'003490','대한항공',33000,8,NULL,NULL,NULL,NULL),
(459,10,'003490','대한항공',34000,9,NULL,NULL,NULL,NULL),
(460,10,'003490','대한항공',34000,10,NULL,NULL,NULL,NULL),
(461,10,'003490','대한항공',34000,11,NULL,NULL,NULL,NULL),
(462,10,'003490','대한항공',35000,12,NULL,NULL,NULL,NULL),
(463,10,'003490','대한항공',35000,13,NULL,NULL,NULL,NULL),
(464,10,'003490','대한항공',36000,14,NULL,NULL,NULL,NULL),
(465,10,'003490','대한항공',35000,15,NULL,NULL,NULL,NULL),
(466,10,'003490','대한항공',36000,16,NULL,NULL,NULL,NULL),
(467,10,'003490','대한항공',37000,17,NULL,NULL,NULL,NULL),
(468,10,'003490','대한항공',38000,18,NULL,NULL,NULL,NULL),
(469,10,'003490','대한항공',39000,19,NULL,NULL,NULL,NULL),
(470,10,'003490','대한항공',40000,20,NULL,NULL,NULL,NULL),
(471,10,'003490','대한항공',41000,21,NULL,NULL,NULL,NULL),
(472,10,'003490','대한항공',42000,22,NULL,NULL,NULL,NULL),
(473,10,'003490','대한항공',43000,23,NULL,NULL,NULL,NULL),
(474,10,'003490','대한항공',43000,24,NULL,NULL,NULL,NULL),
(475,10,'003490','대한항공',43000,25,NULL,NULL,NULL,NULL),
(476,10,'003490','대한항공',44000,26,NULL,NULL,NULL,NULL),
(477,10,'003490','대한항공',44000,27,NULL,NULL,NULL,NULL),
(478,10,'003490','대한항공',44000,28,NULL,NULL,NULL,NULL),
(479,10,'003490','대한항공',44000,29,NULL,NULL,NULL,NULL),
(480,10,'003490','대한항공',44000,30,NULL,NULL,NULL,NULL),
(481,10,'003490','대한항공',45000,31,NULL,NULL,NULL,NULL),
(482,10,'003490','대한항공',44000,32,NULL,NULL,NULL,NULL),
(483,10,'003490','대한항공',44000,33,NULL,NULL,NULL,NULL),
(484,10,'003490','대한항공',45000,34,NULL,NULL,NULL,NULL),
(485,10,'003490','대한항공',44000,35,NULL,NULL,NULL,NULL),
(486,10,'003490','대한항공',45000,36,NULL,NULL,NULL,NULL),
(487,10,'003490','대한항공',45000,37,NULL,NULL,NULL,NULL),
(488,10,'003490','대한항공',45000,38,NULL,NULL,NULL,NULL),
(489,10,'003490','대한항공',46000,39,NULL,NULL,NULL,NULL),
(490,10,'003490','대한항공',45000,40,NULL,NULL,NULL,NULL),
(491,10,'003490','대한항공',46000,41,NULL,NULL,NULL,NULL),
(492,10,'003490','대한항공',45000,42,NULL,NULL,NULL,NULL),
(493,10,'003490','대한항공',46000,43,NULL,NULL,NULL,NULL),
(494,10,'003490','대한항공',46000,44,NULL,NULL,NULL,NULL),
(495,10,'003490','대한항공',47000,45,NULL,NULL,NULL,NULL),
(496,10,'003490','대한항공',47000,46,NULL,NULL,NULL,NULL),
(497,10,'003490','대한항공',48000,47,NULL,NULL,NULL,NULL),
(498,10,'003490','대한항공',47000,48,NULL,NULL,NULL,NULL),
(499,10,'003490','대한항공',48000,49,NULL,NULL,NULL,NULL),
(501,11,'035720','카카오',83000,1,NULL,NULL,NULL,NULL),
(502,11,'035720','카카오',84000,2,NULL,NULL,NULL,NULL),
(503,11,'035720','카카오',84000,3,NULL,NULL,NULL,NULL),
(504,11,'035720','카카오',84000,4,NULL,NULL,NULL,NULL),
(505,11,'035720','카카오',84000,5,NULL,NULL,NULL,NULL),
(506,11,'035720','카카오',85000,6,NULL,NULL,NULL,NULL),
(507,11,'035720','카카오',85000,7,NULL,NULL,NULL,NULL),
(508,11,'035720','카카오',85000,8,NULL,NULL,NULL,NULL),
(509,11,'035720','카카오',85000,9,NULL,NULL,NULL,NULL),
(510,11,'035720','카카오',85000,10,NULL,NULL,NULL,NULL),
(511,11,'035720','카카오',85000,11,NULL,NULL,NULL,NULL),
(512,11,'035720','카카오',86000,12,NULL,NULL,NULL,NULL),
(513,11,'035720','카카오',86000,13,NULL,NULL,NULL,NULL),
(514,11,'035720','카카오',86000,14,NULL,NULL,NULL,NULL),
(515,11,'035720','카카오',86000,15,NULL,NULL,NULL,NULL),
(516,11,'035720','카카오',86000,16,NULL,NULL,NULL,NULL),
(517,11,'035720','카카오',86000,17,NULL,NULL,NULL,NULL),
(518,11,'035720','카카오',87000,18,NULL,NULL,NULL,NULL),
(519,11,'035720','카카오',88000,19,NULL,NULL,NULL,NULL),
(520,11,'035720','카카오',87000,20,NULL,NULL,NULL,NULL),
(521,11,'035720','카카오',87000,21,NULL,NULL,NULL,NULL),
(522,11,'035720','카카오',87000,22,NULL,NULL,NULL,NULL),
(523,11,'035720','카카오',88000,23,NULL,NULL,NULL,NULL),
(524,11,'035720','카카오',88000,24,NULL,NULL,NULL,NULL),
(525,11,'035720','카카오',88000,25,NULL,NULL,NULL,NULL),
(526,11,'035720','카카오',88000,26,NULL,NULL,NULL,NULL),
(527,11,'035720','카카오',89000,27,NULL,NULL,NULL,NULL),
(528,11,'035720','카카오',89000,28,NULL,NULL,NULL,NULL),
(529,11,'035720','카카오',88000,29,NULL,NULL,NULL,NULL),
(530,11,'035720','카카오',88000,30,NULL,NULL,NULL,NULL),
(531,11,'035720','카카오',89000,31,NULL,NULL,NULL,NULL),
(532,11,'035720','카카오',89000,32,NULL,NULL,NULL,NULL),
(533,11,'035720','카카오',89000,33,NULL,NULL,NULL,NULL),
(534,11,'035720','카카오',89000,34,NULL,NULL,NULL,NULL),
(535,11,'035720','카카오',90000,35,NULL,NULL,NULL,NULL),
(536,11,'035720','카카오',90000,36,NULL,NULL,NULL,NULL),
(537,11,'035720','카카오',90000,37,NULL,NULL,NULL,NULL),
(538,11,'035720','카카오',90000,38,NULL,NULL,NULL,NULL),
(539,11,'035720','카카오',91000,39,NULL,NULL,NULL,NULL),
(540,11,'035720','카카오',91000,40,NULL,NULL,NULL,NULL),
(541,11,'035720','카카오',91000,41,NULL,NULL,NULL,NULL),
(542,11,'035720','카카오',91000,42,NULL,NULL,NULL,NULL),
(543,11,'035720','카카오',91000,43,NULL,NULL,NULL,NULL),
(544,11,'035720','카카오',91000,44,NULL,NULL,NULL,NULL),
(545,11,'035720','카카오',90000,45,NULL,NULL,NULL,NULL),
(546,11,'035720','카카오',90000,46,NULL,NULL,NULL,NULL),
(547,11,'035720','카카오',91000,47,NULL,NULL,NULL,NULL),
(548,11,'035720','카카오',91000,48,NULL,NULL,NULL,NULL),
(549,11,'035720','카카오',91000,49,NULL,NULL,NULL,NULL),
(551,12,'005930','삼성전자',593000,1,NULL,NULL,NULL,NULL),
(552,12,'005930','삼성전자',593000,2,NULL,NULL,NULL,NULL),
(553,12,'005930','삼성전자',593000,3,NULL,NULL,NULL,NULL),
(554,12,'005930','삼성전자',592000,4,NULL,NULL,NULL,NULL),
(555,12,'005930','삼성전자',593000,5,NULL,NULL,NULL,NULL),
(556,12,'005930','삼성전자',592000,6,NULL,NULL,NULL,NULL),
(557,12,'005930','삼성전자',592000,7,NULL,NULL,NULL,NULL),
(558,12,'005930','삼성전자',592000,8,NULL,NULL,NULL,NULL),
(559,12,'005930','삼성전자',593000,9,NULL,NULL,NULL,NULL),
(560,12,'005930','삼성전자',593000,10,NULL,NULL,NULL,NULL),
(561,12,'005930','삼성전자',593000,11,NULL,NULL,NULL,NULL),
(562,12,'005930','삼성전자',592000,12,NULL,NULL,NULL,NULL),
(563,12,'005930','삼성전자',593000,13,NULL,NULL,NULL,NULL),
(564,12,'005930','삼성전자',594000,14,NULL,NULL,NULL,NULL),
(565,12,'005930','삼성전자',593000,15,NULL,NULL,NULL,NULL),
(566,12,'005930','삼성전자',593000,16,NULL,NULL,NULL,NULL),
(567,12,'005930','삼성전자',594000,17,NULL,NULL,NULL,NULL),
(568,12,'005930','삼성전자',594000,18,NULL,NULL,NULL,NULL),
(569,12,'005930','삼성전자',594000,19,NULL,NULL,NULL,NULL),
(570,12,'005930','삼성전자',594000,20,NULL,NULL,NULL,NULL),
(571,12,'005930','삼성전자',594000,21,NULL,NULL,NULL,NULL),
(572,12,'005930','삼성전자',593000,22,NULL,NULL,NULL,NULL),
(573,12,'005930','삼성전자',594000,23,NULL,NULL,NULL,NULL),
(574,12,'005930','삼성전자',593000,24,NULL,NULL,NULL,NULL),
(575,12,'005930','삼성전자',593000,25,NULL,NULL,NULL,NULL),
(576,12,'005930','삼성전자',594000,26,NULL,NULL,NULL,NULL),
(577,12,'005930','삼성전자',594000,27,NULL,NULL,NULL,NULL),
(578,12,'005930','삼성전자',594000,28,NULL,NULL,NULL,NULL),
(579,12,'005930','삼성전자',594000,29,NULL,NULL,NULL,NULL),
(580,12,'005930','삼성전자',594000,30,NULL,NULL,NULL,NULL),
(581,12,'005930','삼성전자',594000,31,NULL,NULL,NULL,NULL),
(582,12,'005930','삼성전자',593000,32,NULL,NULL,NULL,NULL),
(583,12,'005930','삼성전자',594000,33,NULL,NULL,NULL,NULL),
(584,12,'005930','삼성전자',594000,34,NULL,NULL,NULL,NULL),
(585,12,'005930','삼성전자',594000,35,NULL,NULL,NULL,NULL),
(586,12,'005930','삼성전자',594000,36,NULL,NULL,NULL,NULL),
(587,12,'005930','삼성전자',594000,37,NULL,NULL,NULL,NULL),
(588,12,'005930','삼성전자',593000,38,NULL,NULL,NULL,NULL),
(589,12,'005930','삼성전자',593000,39,NULL,NULL,NULL,NULL),
(590,12,'005930','삼성전자',594000,40,NULL,NULL,NULL,NULL),
(591,12,'005930','삼성전자',594000,41,NULL,NULL,NULL,NULL),
(592,12,'005930','삼성전자',594000,42,NULL,NULL,NULL,NULL),
(593,12,'005930','삼성전자',594000,43,NULL,NULL,NULL,NULL),
(594,12,'005930','삼성전자',593000,44,NULL,NULL,NULL,NULL),
(595,12,'005930','삼성전자',593000,45,NULL,NULL,NULL,NULL),
(596,12,'005930','삼성전자',594000,46,NULL,NULL,NULL,NULL),
(597,12,'005930','삼성전자',593000,47,NULL,NULL,NULL,NULL),
(598,12,'005930','삼성전자',593000,48,NULL,NULL,NULL,NULL),
(599,12,'005930','삼성전자',594000,49,NULL,NULL,NULL,NULL);

/*Table structure for table `job015_mm` */

DROP TABLE IF EXISTS `job015_mm`;

CREATE TABLE `job015_mm` (
  `COMP_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종목KEY',
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `COMP_PRICE` int(11) DEFAULT NULL COMMENT '현재가격',
  `COMP_DATE` int(11) DEFAULT NULL COMMENT '날짜정보_일별',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`COMP_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8;

/*Data for the table `job015_mm` */

insert  into `job015_mm`(`COMP_KEY`,`SECT_KEY`,`COMP_CODE`,`COMP_NAME`,`COMP_PRICE`,`COMP_DATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'009290','광동제약',12000,1,NULL,NULL,NULL,NULL),
(2,1,'009290','광동제약',11000,2,NULL,NULL,NULL,NULL),
(3,1,'009290','광동제약',10000,3,NULL,NULL,NULL,NULL),
(4,1,'009290','광동제약',10000,4,NULL,NULL,NULL,NULL),
(5,1,'009290','광동제약',11000,5,NULL,NULL,NULL,NULL),
(6,1,'009290','광동제약',12000,6,NULL,NULL,NULL,NULL),
(7,1,'009290','광동제약',13000,7,NULL,NULL,NULL,NULL),
(8,1,'009290','광동제약',12000,8,NULL,NULL,NULL,NULL),
(9,1,'009290','광동제약',15000,9,NULL,NULL,NULL,NULL),
(10,1,'009290','광동제약',16000,10,NULL,NULL,NULL,NULL),
(11,1,'009290','광동제약',15000,11,NULL,NULL,NULL,NULL),
(12,1,'009290','광동제약',16000,12,NULL,NULL,NULL,NULL),
(13,1,'009290','광동제약',16000,13,NULL,NULL,NULL,NULL),
(14,1,'009290','광동제약',15000,14,NULL,NULL,NULL,NULL),
(15,1,'009290','광동제약',16000,15,NULL,NULL,NULL,NULL),
(16,1,'009290','광동제약',17000,16,NULL,NULL,NULL,NULL),
(17,1,'009290','광동제약',16000,17,NULL,NULL,NULL,NULL),
(18,1,'009290','광동제약',17000,18,NULL,NULL,NULL,NULL),
(19,1,'009290','광동제약',16000,19,NULL,NULL,NULL,NULL),
(20,1,'009290','광동제약',17000,20,NULL,NULL,NULL,NULL),
(21,1,'009290','광동제약',18000,21,NULL,NULL,NULL,NULL),
(22,1,'009290','광동제약',19000,22,NULL,NULL,NULL,NULL),
(23,1,'009290','광동제약',18000,23,NULL,NULL,NULL,NULL),
(24,1,'009290','광동제약',17000,24,NULL,NULL,NULL,NULL),
(25,1,'009290','광동제약',18000,25,NULL,NULL,NULL,NULL),
(26,1,'009290','광동제약',17000,26,NULL,NULL,NULL,NULL),
(27,1,'009290','광동제약',19000,27,NULL,NULL,NULL,NULL),
(28,1,'009290','광동제약',20000,28,NULL,NULL,NULL,NULL),
(29,1,'009290','광동제약',19000,29,NULL,NULL,NULL,NULL),
(30,1,'009290','광동제약',19000,30,NULL,NULL,NULL,NULL),
(31,1,'009290','광동제약',20000,31,NULL,NULL,NULL,NULL),
(51,2,'249420','일동제약',18000,1,NULL,NULL,NULL,NULL),
(52,2,'249420','일동제약',19000,2,NULL,NULL,NULL,NULL),
(53,2,'249420','일동제약',20000,3,NULL,NULL,NULL,NULL),
(54,2,'249420','일동제약',19000,4,NULL,NULL,NULL,NULL),
(55,2,'249420','일동제약',18000,5,NULL,NULL,NULL,NULL),
(56,2,'249420','일동제약',18000,6,NULL,NULL,NULL,NULL),
(57,2,'249420','일동제약',19000,7,NULL,NULL,NULL,NULL),
(58,2,'249420','일동제약',18000,8,NULL,NULL,NULL,NULL),
(59,2,'249420','일동제약',17000,9,NULL,NULL,NULL,NULL),
(60,2,'249420','일동제약',16000,10,NULL,NULL,NULL,NULL),
(61,2,'249420','일동제약',15000,11,NULL,NULL,NULL,NULL),
(62,2,'249420','일동제약',16000,12,NULL,NULL,NULL,NULL),
(63,2,'249420','일동제약',15000,13,NULL,NULL,NULL,NULL),
(64,2,'249420','일동제약',14000,14,NULL,NULL,NULL,NULL),
(65,2,'249420','일동제약',15000,15,NULL,NULL,NULL,NULL),
(66,2,'249420','일동제약',14000,16,NULL,NULL,NULL,NULL),
(67,2,'249420','일동제약',13000,17,NULL,NULL,NULL,NULL),
(68,2,'249420','일동제약',12000,18,NULL,NULL,NULL,NULL),
(69,2,'249420','일동제약',13000,19,NULL,NULL,NULL,NULL),
(70,2,'249420','일동제약',15000,20,NULL,NULL,NULL,NULL),
(71,2,'249420','일동제약',14000,21,NULL,NULL,NULL,NULL),
(72,2,'249420','일동제약',14000,22,NULL,NULL,NULL,NULL),
(73,2,'249420','일동제약',14000,23,NULL,NULL,NULL,NULL),
(74,2,'249420','일동제약',14000,24,NULL,NULL,NULL,NULL),
(75,2,'249420','일동제약',13000,25,NULL,NULL,NULL,NULL),
(76,2,'249420','일동제약',13000,26,NULL,NULL,NULL,NULL),
(77,2,'249420','일동제약',13000,27,NULL,NULL,NULL,NULL),
(78,2,'249420','일동제약',12000,28,NULL,NULL,NULL,NULL),
(79,2,'249420','일동제약',12000,29,NULL,NULL,NULL,NULL),
(80,2,'249420','일동제약',12000,30,NULL,NULL,NULL,NULL),
(81,2,'249420','일동제약',12000,31,NULL,NULL,NULL,NULL),
(101,3,'011170','롯데케미칼',371000,1,NULL,NULL,NULL,NULL),
(102,3,'011170','롯데케미칼',371000,2,NULL,NULL,NULL,NULL),
(103,3,'011170','롯데케미칼',370000,3,NULL,NULL,NULL,NULL),
(104,3,'011170','롯데케미칼',370000,4,NULL,NULL,NULL,NULL),
(105,3,'011170','롯데케미칼',369000,5,NULL,NULL,NULL,NULL),
(106,3,'011170','롯데케미칼',369000,6,NULL,NULL,NULL,NULL),
(107,3,'011170','롯데케미칼',368000,7,NULL,NULL,NULL,NULL),
(108,3,'011170','롯데케미칼',368000,8,NULL,NULL,NULL,NULL),
(109,3,'011170','롯데케미칼',368000,9,NULL,NULL,NULL,NULL),
(110,3,'011170','롯데케미칼',367000,10,NULL,NULL,NULL,NULL),
(111,3,'011170','롯데케미칼',368000,11,NULL,NULL,NULL,NULL),
(112,3,'011170','롯데케미칼',367000,12,NULL,NULL,NULL,NULL),
(113,3,'011170','롯데케미칼',366000,13,NULL,NULL,NULL,NULL),
(114,3,'011170','롯데케미칼',365000,14,NULL,NULL,NULL,NULL),
(115,3,'011170','롯데케미칼',365000,15,NULL,NULL,NULL,NULL),
(116,3,'011170','롯데케미칼',365000,16,NULL,NULL,NULL,NULL),
(117,3,'011170','롯데케미칼',364000,17,NULL,NULL,NULL,NULL),
(118,3,'011170','롯데케미칼',364000,18,NULL,NULL,NULL,NULL),
(119,3,'011170','롯데케미칼',363000,19,NULL,NULL,NULL,NULL),
(120,3,'011170','롯데케미칼',363000,20,NULL,NULL,NULL,NULL),
(121,3,'011170','롯데케미칼',364000,21,NULL,NULL,NULL,NULL),
(122,3,'011170','롯데케미칼',364000,22,NULL,NULL,NULL,NULL),
(123,3,'011170','롯데케미칼',365000,23,NULL,NULL,NULL,NULL),
(124,3,'011170','롯데케미칼',364000,24,NULL,NULL,NULL,NULL),
(125,3,'011170','롯데케미칼',364000,25,NULL,NULL,NULL,NULL),
(126,3,'011170','롯데케미칼',364000,26,NULL,NULL,NULL,NULL),
(127,3,'011170','롯데케미칼',365000,27,NULL,NULL,NULL,NULL),
(128,3,'011170','롯데케미칼',364000,28,NULL,NULL,NULL,NULL),
(129,3,'011170','롯데케미칼',364000,29,NULL,NULL,NULL,NULL),
(130,3,'011170','롯데케미칼',364000,30,NULL,NULL,NULL,NULL),
(131,3,'011170','롯데케미칼',364000,31,NULL,NULL,NULL,NULL),
(151,4,'009830','한화케미칼',24000,1,NULL,NULL,NULL,NULL),
(152,4,'009830','한화케미칼',25000,2,NULL,NULL,NULL,NULL),
(153,4,'009830','한화케미칼',24000,3,NULL,NULL,NULL,NULL),
(154,4,'009830','한화케미칼',28000,4,NULL,NULL,NULL,NULL),
(155,4,'009830','한화케미칼',24000,5,NULL,NULL,NULL,NULL),
(156,4,'009830','한화케미칼',26000,6,NULL,NULL,NULL,NULL),
(157,4,'009830','한화케미칼',28000,7,NULL,NULL,NULL,NULL),
(158,4,'009830','한화케미칼',30000,8,NULL,NULL,NULL,NULL),
(159,4,'009830','한화케미칼',24000,9,NULL,NULL,NULL,NULL),
(160,4,'009830','한화케미칼',25000,10,NULL,NULL,NULL,NULL),
(161,4,'009830','한화케미칼',24000,11,NULL,NULL,NULL,NULL),
(162,4,'009830','한화케미칼',28000,12,NULL,NULL,NULL,NULL),
(163,4,'009830','한화케미칼',24000,13,NULL,NULL,NULL,NULL),
(164,4,'009830','한화케미칼',26000,14,NULL,NULL,NULL,NULL),
(165,4,'009830','한화케미칼',27000,15,NULL,NULL,NULL,NULL),
(166,4,'009830','한화케미칼',24000,16,NULL,NULL,NULL,NULL),
(167,4,'009830','한화케미칼',25000,17,NULL,NULL,NULL,NULL),
(168,4,'009830','한화케미칼',24000,18,NULL,NULL,NULL,NULL),
(169,4,'009830','한화케미칼',28000,19,NULL,NULL,NULL,NULL),
(170,4,'009830','한화케미칼',24000,20,NULL,NULL,NULL,NULL),
(171,4,'009830','한화케미칼',26000,21,NULL,NULL,NULL,NULL),
(172,4,'009830','한화케미칼',28000,22,NULL,NULL,NULL,NULL),
(173,4,'009830','한화케미칼',29000,23,NULL,NULL,NULL,NULL),
(174,4,'009830','한화케미칼',30000,24,NULL,NULL,NULL,NULL),
(175,4,'009830','한화케미칼',24000,25,NULL,NULL,NULL,NULL),
(176,4,'009830','한화케미칼',25000,26,NULL,NULL,NULL,NULL),
(177,4,'009830','한화케미칼',24000,27,NULL,NULL,NULL,NULL),
(178,4,'009830','한화케미칼',28000,28,NULL,NULL,NULL,NULL),
(179,4,'009830','한화케미칼',24000,29,NULL,NULL,NULL,NULL),
(180,4,'009830','한화케미칼',26000,30,NULL,NULL,NULL,NULL),
(181,4,'009830','한화케미칼',26000,31,NULL,NULL,NULL,NULL),
(201,5,'007310','오뚜기',75000,1,NULL,NULL,NULL,NULL),
(202,5,'007310','오뚜기',76000,2,NULL,NULL,NULL,NULL),
(203,5,'007310','오뚜기',76000,3,NULL,NULL,NULL,NULL),
(204,5,'007310','오뚜기',75000,4,NULL,NULL,NULL,NULL),
(205,5,'007310','오뚜기',76000,5,NULL,NULL,NULL,NULL),
(206,5,'007310','오뚜기',77000,6,NULL,NULL,NULL,NULL),
(207,5,'007310','오뚜기',76000,7,NULL,NULL,NULL,NULL),
(208,5,'007310','오뚜기',78000,8,NULL,NULL,NULL,NULL),
(209,5,'007310','오뚜기',78000,9,NULL,NULL,NULL,NULL),
(210,5,'007310','오뚜기',77000,10,NULL,NULL,NULL,NULL),
(211,5,'007310','오뚜기',78000,11,NULL,NULL,NULL,NULL),
(212,5,'007310','오뚜기',78000,12,NULL,NULL,NULL,NULL),
(213,5,'007310','오뚜기',76000,13,NULL,NULL,NULL,NULL),
(214,5,'007310','오뚜기',77000,14,NULL,NULL,NULL,NULL),
(215,5,'007310','오뚜기',77000,15,NULL,NULL,NULL,NULL),
(216,5,'007310','오뚜기',76000,16,NULL,NULL,NULL,NULL),
(217,5,'007310','오뚜기',76000,17,NULL,NULL,NULL,NULL),
(218,5,'007310','오뚜기',77000,18,NULL,NULL,NULL,NULL),
(219,5,'007310','오뚜기',76000,19,NULL,NULL,NULL,NULL),
(220,5,'007310','오뚜기',75000,20,NULL,NULL,NULL,NULL),
(221,5,'007310','오뚜기',76000,21,NULL,NULL,NULL,NULL),
(222,5,'007310','오뚜기',76000,22,NULL,NULL,NULL,NULL),
(223,5,'007310','오뚜기',75000,23,NULL,NULL,NULL,NULL),
(224,5,'007310','오뚜기',75000,24,NULL,NULL,NULL,NULL),
(225,5,'007310','오뚜기',75000,25,NULL,NULL,NULL,NULL),
(226,5,'007310','오뚜기',76000,26,NULL,NULL,NULL,NULL),
(227,5,'007310','오뚜기',76000,27,NULL,NULL,NULL,NULL),
(228,5,'007310','오뚜기',75000,28,NULL,NULL,NULL,NULL),
(229,5,'007310','오뚜기',76000,29,NULL,NULL,NULL,NULL),
(230,5,'007310','오뚜기',77000,30,NULL,NULL,NULL,NULL),
(231,5,'007310','오뚜기',76000,31,NULL,NULL,NULL,NULL),
(251,6,'028260','삼성물산',114000,1,NULL,NULL,NULL,NULL),
(252,6,'028260','삼성물산',113000,2,NULL,NULL,NULL,NULL),
(253,6,'028260','삼성물산',113000,3,NULL,NULL,NULL,NULL),
(254,6,'028260','삼성물산',114000,4,NULL,NULL,NULL,NULL),
(255,6,'028260','삼성물산',113000,5,NULL,NULL,NULL,NULL),
(256,6,'028260','삼성물산',114000,6,NULL,NULL,NULL,NULL),
(257,6,'028260','삼성물산',115000,7,NULL,NULL,NULL,NULL),
(258,6,'028260','삼성물산',116000,8,NULL,NULL,NULL,NULL),
(259,6,'028260','삼성물산',117000,9,NULL,NULL,NULL,NULL),
(260,6,'028260','삼성물산',118000,10,NULL,NULL,NULL,NULL),
(261,6,'028260','삼성물산',119000,11,NULL,NULL,NULL,NULL),
(262,6,'028260','삼성물산',120000,12,NULL,NULL,NULL,NULL),
(263,6,'028260','삼성물산',120000,13,NULL,NULL,NULL,NULL),
(264,6,'028260','삼성물산',121000,14,NULL,NULL,NULL,NULL),
(265,6,'028260','삼성물산',120000,15,NULL,NULL,NULL,NULL),
(266,6,'028260','삼성물산',121000,16,NULL,NULL,NULL,NULL),
(267,6,'028260','삼성물산',122000,17,NULL,NULL,NULL,NULL),
(268,6,'028260','삼성물산',121000,18,NULL,NULL,NULL,NULL),
(269,6,'028260','삼성물산',122000,19,NULL,NULL,NULL,NULL),
(270,6,'028260','삼성물산',121000,20,NULL,NULL,NULL,NULL),
(271,6,'028260','삼성물산',122000,21,NULL,NULL,NULL,NULL),
(272,6,'028260','삼성물산',123000,22,NULL,NULL,NULL,NULL),
(273,6,'028260','삼성물산',124000,23,NULL,NULL,NULL,NULL),
(274,6,'028260','삼성물산',125000,24,NULL,NULL,NULL,NULL),
(275,6,'028260','삼성물산',125000,25,NULL,NULL,NULL,NULL),
(276,6,'028260','삼성물산',125000,26,NULL,NULL,NULL,NULL),
(277,6,'028260','삼성물산',126000,27,NULL,NULL,NULL,NULL),
(278,6,'028260','삼성물산',126000,28,NULL,NULL,NULL,NULL),
(279,6,'028260','삼성물산',125000,29,NULL,NULL,NULL,NULL),
(280,6,'028260','삼성물산',126000,30,NULL,NULL,NULL,NULL),
(281,6,'028260','삼성물산',126000,31,NULL,NULL,NULL,NULL),
(301,7,'000720','현대건설',54000,1,NULL,NULL,NULL,NULL),
(302,7,'000720','현대건설',51000,2,NULL,NULL,NULL,NULL),
(303,7,'000720','현대건설',52000,3,NULL,NULL,NULL,NULL),
(304,7,'000720','현대건설',53000,4,NULL,NULL,NULL,NULL),
(305,7,'000720','현대건설',53000,5,NULL,NULL,NULL,NULL),
(306,7,'000720','현대건설',54000,6,NULL,NULL,NULL,NULL),
(307,7,'000720','현대건설',52000,7,NULL,NULL,NULL,NULL),
(308,7,'000720','현대건설',51000,8,NULL,NULL,NULL,NULL),
(309,7,'000720','현대건설',52000,9,NULL,NULL,NULL,NULL),
(310,7,'000720','현대건설',51000,10,NULL,NULL,NULL,NULL),
(311,7,'000720','현대건설',52000,11,NULL,NULL,NULL,NULL),
(312,7,'000720','현대건설',51000,12,NULL,NULL,NULL,NULL),
(313,7,'000720','현대건설',50000,13,NULL,NULL,NULL,NULL),
(314,7,'000720','현대건설',50000,14,NULL,NULL,NULL,NULL),
(315,7,'000720','현대건설',49000,15,NULL,NULL,NULL,NULL),
(316,7,'000720','현대건설',49000,16,NULL,NULL,NULL,NULL),
(317,7,'000720','현대건설',50000,17,NULL,NULL,NULL,NULL),
(318,7,'000720','현대건설',49000,18,NULL,NULL,NULL,NULL),
(319,7,'000720','현대건설',49000,19,NULL,NULL,NULL,NULL),
(320,7,'000720','현대건설',49000,20,NULL,NULL,NULL,NULL),
(321,7,'000720','현대건설',48000,21,NULL,NULL,NULL,NULL),
(322,7,'000720','현대건설',49000,22,NULL,NULL,NULL,NULL),
(323,7,'000720','현대건설',49000,23,NULL,NULL,NULL,NULL),
(324,7,'000720','현대건설',49000,24,NULL,NULL,NULL,NULL),
(325,7,'000720','현대건설',49000,25,NULL,NULL,NULL,NULL),
(326,7,'000720','현대건설',48000,26,NULL,NULL,NULL,NULL),
(327,7,'000720','현대건설',48000,27,NULL,NULL,NULL,NULL),
(328,7,'000720','현대건설',48000,28,NULL,NULL,NULL,NULL),
(329,7,'000720','현대건설',48000,29,NULL,NULL,NULL,NULL),
(330,7,'000720','현대건설',48000,30,NULL,NULL,NULL,NULL),
(331,7,'000720','현대건설',48000,31,NULL,NULL,NULL,NULL),
(351,8,'042660','대우조선해양',38000,1,NULL,NULL,NULL,NULL),
(352,8,'042660','대우조선해양',39000,2,NULL,NULL,NULL,NULL),
(353,8,'042660','대우조선해양',38000,3,NULL,NULL,NULL,NULL),
(354,8,'042660','대우조선해양',39000,4,NULL,NULL,NULL,NULL),
(355,8,'042660','대우조선해양',40000,5,NULL,NULL,NULL,NULL),
(356,8,'042660','대우조선해양',39000,6,NULL,NULL,NULL,NULL),
(357,8,'042660','대우조선해양',40000,7,NULL,NULL,NULL,NULL),
(358,8,'042660','대우조선해양',41000,8,NULL,NULL,NULL,NULL),
(359,8,'042660','대우조선해양',41000,9,NULL,NULL,NULL,NULL),
(360,8,'042660','대우조선해양',42000,10,NULL,NULL,NULL,NULL),
(361,8,'042660','대우조선해양',42000,11,NULL,NULL,NULL,NULL),
(362,8,'042660','대우조선해양',43000,12,NULL,NULL,NULL,NULL),
(363,8,'042660','대우조선해양',43000,13,NULL,NULL,NULL,NULL),
(364,8,'042660','대우조선해양',43000,14,NULL,NULL,NULL,NULL),
(365,8,'042660','대우조선해양',44000,15,NULL,NULL,NULL,NULL),
(366,8,'042660','대우조선해양',43000,16,NULL,NULL,NULL,NULL),
(367,8,'042660','대우조선해양',43000,17,NULL,NULL,NULL,NULL),
(368,8,'042660','대우조선해양',43000,18,NULL,NULL,NULL,NULL),
(369,8,'042660','대우조선해양',44000,19,NULL,NULL,NULL,NULL),
(370,8,'042660','대우조선해양',43000,20,NULL,NULL,NULL,NULL),
(371,8,'042660','대우조선해양',44000,21,NULL,NULL,NULL,NULL),
(372,8,'042660','대우조선해양',43000,22,NULL,NULL,NULL,NULL),
(373,8,'042660','대우조선해양',44000,23,NULL,NULL,NULL,NULL),
(374,8,'042660','대우조선해양',45000,24,NULL,NULL,NULL,NULL),
(375,8,'042660','대우조선해양',45000,25,NULL,NULL,NULL,NULL),
(376,8,'042660','대우조선해양',45000,26,NULL,NULL,NULL,NULL),
(377,8,'042660','대우조선해양',44000,27,NULL,NULL,NULL,NULL),
(378,8,'042660','대우조선해양',45000,28,NULL,NULL,NULL,NULL),
(379,8,'042660','대우조선해양',45000,29,NULL,NULL,NULL,NULL),
(380,8,'042660','대우조선해양',45000,30,NULL,NULL,NULL,NULL),
(381,8,'042660','대우조선해양',45000,31,NULL,NULL,NULL,NULL),
(401,9,'005380','현대차',149000,1,NULL,NULL,NULL,NULL),
(402,9,'005380','현대차',149000,2,NULL,NULL,NULL,NULL),
(403,9,'005380','현대차',149000,3,NULL,NULL,NULL,NULL),
(404,9,'005380','현대차',149000,4,NULL,NULL,NULL,NULL),
(405,9,'005380','현대차',150000,5,NULL,NULL,NULL,NULL),
(406,9,'005380','현대차',150000,6,NULL,NULL,NULL,NULL),
(407,9,'005380','현대차',149000,7,NULL,NULL,NULL,NULL),
(408,9,'005380','현대차',150000,8,NULL,NULL,NULL,NULL),
(409,9,'005380','현대차',149000,9,NULL,NULL,NULL,NULL),
(410,9,'005380','현대차',150000,10,NULL,NULL,NULL,NULL),
(411,9,'005380','현대차',149000,11,NULL,NULL,NULL,NULL),
(412,9,'005380','현대차',150000,12,NULL,NULL,NULL,NULL),
(413,9,'005380','현대차',149000,13,NULL,NULL,NULL,NULL),
(414,9,'005380','현대차',149000,14,NULL,NULL,NULL,NULL),
(415,9,'005380','현대차',149000,15,NULL,NULL,NULL,NULL),
(416,9,'005380','현대차',149000,16,NULL,NULL,NULL,NULL),
(417,9,'005380','현대차',149000,17,NULL,NULL,NULL,NULL),
(418,9,'005380','현대차',149000,18,NULL,NULL,NULL,NULL),
(419,9,'005380','현대차',149000,19,NULL,NULL,NULL,NULL),
(420,9,'005380','현대차',149000,20,NULL,NULL,NULL,NULL),
(421,9,'005380','현대차',149000,21,NULL,NULL,NULL,NULL),
(422,9,'005380','현대차',150000,22,NULL,NULL,NULL,NULL),
(423,9,'005380','현대차',150000,23,NULL,NULL,NULL,NULL),
(424,9,'005380','현대차',150000,24,NULL,NULL,NULL,NULL),
(425,9,'005380','현대차',149000,25,NULL,NULL,NULL,NULL),
(426,9,'005380','현대차',149000,26,NULL,NULL,NULL,NULL),
(427,9,'005380','현대차',149000,27,NULL,NULL,NULL,NULL),
(428,9,'005380','현대차',149000,28,NULL,NULL,NULL,NULL),
(429,9,'005380','현대차',149000,29,NULL,NULL,NULL,NULL),
(430,9,'005380','현대차',150000,30,NULL,NULL,NULL,NULL),
(431,9,'005380','현대차',149000,31,NULL,NULL,NULL,NULL),
(451,10,'003490','대한항공',17000,1,NULL,NULL,NULL,NULL),
(452,10,'003490','대한항공',16000,2,NULL,NULL,NULL,NULL),
(453,10,'003490','대한항공',15000,3,NULL,NULL,NULL,NULL),
(454,10,'003490','대한항공',14000,4,NULL,NULL,NULL,NULL),
(455,10,'003490','대한항공',15000,5,NULL,NULL,NULL,NULL),
(456,10,'003490','대한항공',17000,6,NULL,NULL,NULL,NULL),
(457,10,'003490','대한항공',18000,7,NULL,NULL,NULL,NULL),
(458,10,'003490','대한항공',19000,8,NULL,NULL,NULL,NULL),
(459,10,'003490','대한항공',20000,9,NULL,NULL,NULL,NULL),
(460,10,'003490','대한항공',20000,10,NULL,NULL,NULL,NULL),
(461,10,'003490','대한항공',20000,11,NULL,NULL,NULL,NULL),
(462,10,'003490','대한항공',21000,12,NULL,NULL,NULL,NULL),
(463,10,'003490','대한항공',21000,13,NULL,NULL,NULL,NULL),
(464,10,'003490','대한항공',22000,14,NULL,NULL,NULL,NULL),
(465,10,'003490','대한항공',21000,15,NULL,NULL,NULL,NULL),
(466,10,'003490','대한항공',22000,16,NULL,NULL,NULL,NULL),
(467,10,'003490','대한항공',23000,17,NULL,NULL,NULL,NULL),
(468,10,'003490','대한항공',24000,18,NULL,NULL,NULL,NULL),
(469,10,'003490','대한항공',25000,19,NULL,NULL,NULL,NULL),
(470,10,'003490','대한항공',26000,20,NULL,NULL,NULL,NULL),
(471,10,'003490','대한항공',27000,21,NULL,NULL,NULL,NULL),
(472,10,'003490','대한항공',28000,22,NULL,NULL,NULL,NULL),
(473,10,'003490','대한항공',29000,23,NULL,NULL,NULL,NULL),
(474,10,'003490','대한항공',29000,24,NULL,NULL,NULL,NULL),
(475,10,'003490','대한항공',29000,25,NULL,NULL,NULL,NULL),
(476,10,'003490','대한항공',30000,26,NULL,NULL,NULL,NULL),
(477,10,'003490','대한항공',30000,27,NULL,NULL,NULL,NULL),
(478,10,'003490','대한항공',30000,28,NULL,NULL,NULL,NULL),
(479,10,'003490','대한항공',30000,29,NULL,NULL,NULL,NULL),
(480,10,'003490','대한항공',30000,30,NULL,NULL,NULL,NULL),
(481,10,'003490','대한항공',31000,31,NULL,NULL,NULL,NULL),
(501,11,'035720','카카오',77000,1,NULL,NULL,NULL,NULL),
(502,11,'035720','카카오',78000,2,NULL,NULL,NULL,NULL),
(503,11,'035720','카카오',78000,3,NULL,NULL,NULL,NULL),
(504,11,'035720','카카오',78000,4,NULL,NULL,NULL,NULL),
(505,11,'035720','카카오',78000,5,NULL,NULL,NULL,NULL),
(506,11,'035720','카카오',79000,6,NULL,NULL,NULL,NULL),
(507,11,'035720','카카오',79000,7,NULL,NULL,NULL,NULL),
(508,11,'035720','카카오',79000,8,NULL,NULL,NULL,NULL),
(509,11,'035720','카카오',79000,9,NULL,NULL,NULL,NULL),
(510,11,'035720','카카오',79000,10,NULL,NULL,NULL,NULL),
(511,11,'035720','카카오',79000,11,NULL,NULL,NULL,NULL),
(512,11,'035720','카카오',80000,12,NULL,NULL,NULL,NULL),
(513,11,'035720','카카오',80000,13,NULL,NULL,NULL,NULL),
(514,11,'035720','카카오',80000,14,NULL,NULL,NULL,NULL),
(515,11,'035720','카카오',80000,15,NULL,NULL,NULL,NULL),
(516,11,'035720','카카오',80000,16,NULL,NULL,NULL,NULL),
(517,11,'035720','카카오',80000,17,NULL,NULL,NULL,NULL),
(518,11,'035720','카카오',81000,18,NULL,NULL,NULL,NULL),
(519,11,'035720','카카오',82000,19,NULL,NULL,NULL,NULL),
(520,11,'035720','카카오',81000,20,NULL,NULL,NULL,NULL),
(521,11,'035720','카카오',81000,21,NULL,NULL,NULL,NULL),
(522,11,'035720','카카오',81000,22,NULL,NULL,NULL,NULL),
(523,11,'035720','카카오',82000,23,NULL,NULL,NULL,NULL),
(524,11,'035720','카카오',82000,24,NULL,NULL,NULL,NULL),
(525,11,'035720','카카오',82000,25,NULL,NULL,NULL,NULL),
(526,11,'035720','카카오',82000,26,NULL,NULL,NULL,NULL),
(527,11,'035720','카카오',83000,27,NULL,NULL,NULL,NULL),
(528,11,'035720','카카오',83000,28,NULL,NULL,NULL,NULL),
(529,11,'035720','카카오',82000,29,NULL,NULL,NULL,NULL),
(530,11,'035720','카카오',82000,30,NULL,NULL,NULL,NULL),
(531,11,'035720','카카오',83000,31,NULL,NULL,NULL,NULL),
(551,12,'005930','삼성전자',592000,1,NULL,NULL,NULL,NULL),
(552,12,'005930','삼성전자',592000,2,NULL,NULL,NULL,NULL),
(553,12,'005930','삼성전자',592000,3,NULL,NULL,NULL,NULL),
(554,12,'005930','삼성전자',591000,4,NULL,NULL,NULL,NULL),
(555,12,'005930','삼성전자',592000,5,NULL,NULL,NULL,NULL),
(556,12,'005930','삼성전자',591000,6,NULL,NULL,NULL,NULL),
(557,12,'005930','삼성전자',591000,7,NULL,NULL,NULL,NULL),
(558,12,'005930','삼성전자',591000,8,NULL,NULL,NULL,NULL),
(559,12,'005930','삼성전자',592000,9,NULL,NULL,NULL,NULL),
(560,12,'005930','삼성전자',592000,10,NULL,NULL,NULL,NULL),
(561,12,'005930','삼성전자',592000,11,NULL,NULL,NULL,NULL),
(562,12,'005930','삼성전자',591000,12,NULL,NULL,NULL,NULL),
(563,12,'005930','삼성전자',592000,13,NULL,NULL,NULL,NULL),
(564,12,'005930','삼성전자',593000,14,NULL,NULL,NULL,NULL),
(565,12,'005930','삼성전자',592000,15,NULL,NULL,NULL,NULL),
(566,12,'005930','삼성전자',592000,16,NULL,NULL,NULL,NULL),
(567,12,'005930','삼성전자',593000,17,NULL,NULL,NULL,NULL),
(568,12,'005930','삼성전자',593000,18,NULL,NULL,NULL,NULL),
(569,12,'005930','삼성전자',593000,19,NULL,NULL,NULL,NULL),
(570,12,'005930','삼성전자',593000,20,NULL,NULL,NULL,NULL),
(571,12,'005930','삼성전자',593000,21,NULL,NULL,NULL,NULL),
(572,12,'005930','삼성전자',592000,22,NULL,NULL,NULL,NULL),
(573,12,'005930','삼성전자',593000,23,NULL,NULL,NULL,NULL),
(574,12,'005930','삼성전자',592000,24,NULL,NULL,NULL,NULL),
(575,12,'005930','삼성전자',592000,25,NULL,NULL,NULL,NULL),
(576,12,'005930','삼성전자',593000,26,NULL,NULL,NULL,NULL),
(577,12,'005930','삼성전자',593000,27,NULL,NULL,NULL,NULL),
(578,12,'005930','삼성전자',593000,28,NULL,NULL,NULL,NULL),
(579,12,'005930','삼성전자',592000,29,NULL,NULL,NULL,NULL),
(580,12,'005930','삼성전자',592000,30,NULL,NULL,NULL,NULL),
(581,12,'005930','삼성전자',592000,31,NULL,NULL,NULL,NULL);

/*Table structure for table `job016` */

DROP TABLE IF EXISTS `job016`;

CREATE TABLE `job016` (
  `NEWS_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '뉴스KEY',
  `NEWS_CODE` tinyint(4) DEFAULT '0' COMMENT '뉴스코드',
  `NEWS_TYPE` varchar(2) DEFAULT NULL COMMENT '뉴스구분',
  `NEWS_HEAD` varchar(64) DEFAULT NULL COMMENT '뉴스해드라인',
  `NEWS_FILE` text COMMENT '뉴스내용',
  `UPDOWN` enum('1','2') DEFAULT '1' COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `PERCENT` tinyint(4) NOT NULL DEFAULT '0' COMMENT '반영 비율',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`NEWS_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `job016` */

insert  into `job016`(`NEWS_KEY`,`NEWS_CODE`,`NEWS_TYPE`,`NEWS_HEAD`,`NEWS_FILE`,`UPDOWN`,`SEND`,`PERCENT`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'01','글로벌 증시-유가 상승따라 관련 주 강세','현지 시간 유럽 주요국 증시, 유가 상승에 힘입어 상품 관련주들이 강세를 나타낸 가운데 상승세로 마무리 되었습니다.\r\n유가 급등에 따른 석유업체들의 주가가 뛰어 올랐고요. \r\n또 지난 주말 중국의 시진핑 국가주석이 일대일로 프로젝트에 1,000억 달러 이상을 \r\n투자할 것을 약속하면서 생산업체들의 주가 역시 큰 오름폭을 나타냈습니다.','1',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(2,1,'01','`제약 빅3`에 광동제약 진입·한미약품 탈락','제약업계에 따르면 유한양행과 녹십자는 \'빅3\' 자리를 수성할 것으로 보인다. 이미 실적을 발표한 녹십자는 매출액이 전년 대비 14.3% 늘어난 1조1979억원으로 집계됐으며, 유한양행의 경우 에프엔가이드의 증권사 전망치 집계 결과 전년보다 16.3% 증가한 1조3126억원의 매출을 기록할 것으로 예상되기 때문이다.\r\n\r\n다만 지난 2015년 매출 1위를 기록했던 한미약품은 지난해 전년 대비 33% 급감한 8827억원의 매출을 올려 4위로 내려앉을 전망이다. 사노피와의 당뇨 신약 기술수출 계약이 수정돼 계약금 2500억원을 반환하는 것이 결정적 요인이다. 다만 기술료 수입을 제외한 나머지 매출은 8550억원으로 전년 대비 6.2% 개선된 것이 위안거리다.\r\n\r\n한미약품 관계자는 \"올해에는 제넨텍 계약금이 분할인식하고 국내 신제품 매출 증대 및 완제품 수출 증가가 예상돼 실적을 만회할 수 있을 것으로 기대한다\"고 말했다.\r\n\r\n한미약품이 빠진 \'제약 빅3\'의 빈 자리는 광동제약(종목홈)이 차지할 것으로 전망된다','1',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(3,9,'05','현대차 실적부진에 약세, 미국 증시도 자동차주 약세','현대차의 증시 영향력이 3년 만에 최저 수준으로 감소한 것으로 나타났다. \r\n한국거래소에 따르면 전날 종가 기준으로 유가증권시장 전체 시총(1211조4150억원)에서 현대차가 차지하는 비중은 17.6%였다. 이는 2011년 10월(17.28%) 이후 최저 수준이다.  \r\n\r\n현대차는 확대된 환율 부담에 한전 부지 고액 낙찰에 대한 실망감까지 더해지며 연일 하향 곡선을 그리고 있다.  \r\n\r\n현대차는 전날 2.05% 하락한 19만1천500원에 거래를 마감했으며, 장중 한때 18만9천500원(52주 신저가)까지 떨어지기도 했다.  \r\n\r\n’전차(電車) 군단’이 이처럼 주저앉으며 국내 주식시장 전반에도 부담 요인이 되고 있다. \r\n\r\n현대차가 한국 기업의 영업이익과 수출에서 차지하는 비중이 워낙 크기 때문에 이 같은 하락세가 지속될 경우 시장 전체가 함께 내려앉을 수 있다는 우려다. ','2',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(4,1,'01','광동제약, 전문의약품 강화로 수익성 회복 기대','골든브릿지 투자증권이 광동제약에 대해 \"전문의약품(OTC)을 강화해 수익성 회복이 기대된다\"고 진단했다.\n혈액암인 다발성골수증 치료제 레블리미드(세엘진사)의 틀허회피에 성공하며 오는 10월 이후 제네릭 출시를 앞두고 있는 만큼 의약품 매출이 꾸준히 증가할 것 이라는 전망이다.  2017년에는 상다수 매출이 전체 외형성장을 견인하는 가운데 비타500 및 옥수수수염차, 헛개차, 쌍화탕, 청심류 등 음료와 OTC 중심으로 안정적인 성장을 할 것으로 내다봤다.','1',0,10,'','0000-00-00 00:00:00',NULL,NULL),
(5,1,'01','광동제약, 한달 새 주가 20% 폭락...','실적부진이 지속되고 있는 광동제약이 주가 역시 고전을 면치 못하고 있다. 지난해까지 판매하던 외국산 의약품이 대거 타사로 넘어가면서 실적에도 영향을 미쳤다는 분석이다.\r\n관계자는 \" 외국산 의약품 판권을 빼앗긴 이후 새로운 판로개척을 위해 상반기 마케팅비용을 대폭 늘린것도 수익성 감소의 원인으로 꼽힌다\"고 말했다.\r\n올해 상반기 실적 흐름상 4년 연속 매출에 비해 영업이익이 부족한 회사가 될것이라는 전망이 우세하다.','2',0,20,'','0000-00-00 00:00:00',NULL,NULL),
(6,2,'01','일동제약 \"내주중 수출계약 체결\"','일동제약이 일본 스노우덴사와 다음주중 수출계약을 체결할 것으로 확인됐다.\r\n이번 계약은 원료의약품과 식품 등에 사용되는 유산균을 스노우덴사에 1년간 정기적으로 공급하며 그 이후 자동으로 기간을 연장한다는 내용을 담게된다.\r\n한편 이 관계자는 유산균제품 수출을 통해 12월중 2억원의 매출이 발생했으며 오는 2월에도 3억원의 매출이 추가로 발생할 것 이라고 말했다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(7,2,'01','일동제약, 유통방식 변경 여파로 실적 급감','일동제약이 올해 초부터 의약품 유통방식을 온라인으로 전환하면서 실적이 급감했다. 온라인으로 전환하면서 기존 재고자산 소진 이슈가 발생했다. 고객입장에서는 거래처가 바뀌는 탓에 기존재고를 먼저 소진한 뒤에 일동샵과 새거래를 시작하는 사례가 적잖이 나타났다. 이 과정에서 매출이 급감한것으로 분석된다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(8,3,'02','롯데케미칼, \'3조 몸값\' 자회사 상장으로 날개 단다.','롯데케미칼은 올해 1분기 사상 최대 실적(영업이익 기준)을 올린 것으로 추정된다. 석유화학 업종이 ‘슈퍼 사이클’ 에 진입했다는 분석이 나오고 있어 실적 개선 추세는 이어질 전망이다. \r\n말레이시아 자회사인 롯데케미칼타이탄홀딩(타이탄)의 기업공개(IPO)가 올해 하반기로 예정돼 있는 점도 기업가치를 끌어올릴 호재로 꼽힌다. KTB투자증권은 강력 매수를 추천했다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(9,3,'02','롯데그룹 동반 급락... 롯데케미칼 14% 하락','경영권 분쟁 사태가 발생한 롯데 그룹주가 동반 급락했다.\r\n유가증권시장에서 롯데케미칼은 전 거래일 대비 13.63% 급락한 금액에 거래를 마감했다.\r\n이 날 2% 가량 하락 출발한 롯데케미칼은 그룹 이슈에 국제 유가하락으로 인한 화학주 약세까지 겹악재로 작용하며 낙폭을 점차 확대했다.\r\n특히 외국계 증권사를 중심으로 롯데케미칼의 매도세가 집중하며 외국인과 기관이 등을 돌렸다. ','2',0,14,'','0000-00-00 00:00:00',NULL,NULL),
(10,4,'02','한화 태양광 흑자전환..주가 악재 턴다.','한화케미칼 최고재무책임자는 \"매출의 40%를 차지하는 태양광 부문이 올 1분기 흑자 전환하고, 석유화학 부문도 이익이 늘어나 두 사업부문이 각자도생하게 됐다. 실적과 재무구조가 올해 모두 개선되면서 영업이익이 작년보다 늘어날 수 있다\"고 밝혔다.\r\n태양광과 함께 석유화학 사업을 하는 한화케미칼은 작년 영업이익 77,792억원으로 사상 최대 실적을 달성했다. ','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(11,4,'02','한화케미칼, 공장 폭발사고 소식에 3%대 하락','울산에 있는 한화케미칼 공장 폭발사고 소식에 한화케미칼 주가가 하락하고 있다. \r\n이날 오전 한화케미칼 제2공장 폐수처리장 인근에서 폭발사고가 발생했다. 소방당국은 폐수 저장조 상부 용접작업 과정에서 잔류가스가 폭발한 것이 사고원인으로 보고 정확한 사고 경위를 조사하고 있다. \r\n현재 한화케미칼은 전날 대비 3.18% 하락한 금액으로 거래되고 있다.','2',0,3,'','0000-00-00 00:00:00',NULL,NULL),
(12,5,'03','오뚜기, 주가도 \'갓뚜기\' 될까','최근 오뚜기의 라면 시장 점유율이 점차 상승곡선을 그리며 주가에 대한 기대감도 높다. 오뚜기의 주가는 지난 8일 종가 기준으로 전년대비 15.41%올랐다.\r\n시장에서 오뚜기에 대해 관심이 높은 것은 라면 시장점유율이 점차 높아지고 있어서다. \r\n심 연구원은 \"기존 주력제품인 조미식품과 양념소스 부문의 판매량이 증가하고 있으며 HMR제품의 고성장도 살펴볼 필요가 있다\"며 \"안정적인 사업 포트폴리오를 확보한 점이 오뚜기의 투자포인트\"라고 덧붙였다. ','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(13,5,'03','오뚜기 주가 반 토막.. \"라면 많이 팔았는데, 왜?\"','오뚜기가 1년만에 반 토막 났다. 업계 1위 농심을 제칠 정도로 라면을 많이 팔았는데도 주가가 힘을 못 썼다.\r\n질문의 답은 오뚜기가 라면을 많이 팔아봤자 돈이 남지 않는다는 데 있다. 수익성이 낮다는 얘기다.\r\n조 연구원은 “2분기 실적에 대한 기대도 낮은 상태”라고 설명했다.\r\n이어 “혁신적인 제품이 또 나오지 않는 이상 오뚜기가 면 사업에서 수익 내기 힘들다”고 꼬집었다. ','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(14,6,'03','삼성물산, 3분기 안정적 실적… 주가 상승세 지속','삼성물산이 올해 3분기 안정적인 실적을 거뒀다며 투자의견 \'매수\'와 목표주가 20만7천원을 유지했다.\r\n이광수 연구원은 \"1분기 해외부문 손실 증가로 영업적자를 기록한 이후 두 분기 연속 영업흑자를 유지했다\"고 설명했다. 그는 \"장기적 변화와 사업 확대를 예상한다\"면서 \"안정적 이익을 유지하고 실질적인 변화가 이어지면서 주가 상승 추세는 지속할 것\"이라고 내다봤다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(15,6,'03','또 인력감축 카드 꺼낸 삼성물산','건설부문이 지난해 적자를 낸 뒤 올해 손실폭이 커지자 다시금 인력 감축에 돌입했다. 추가 감원을 진행하는 이유 중 하나는 지속적인 주가하락이다. 삼성물산 주가는 최근 3개월간 25% 급락했다. 합병 이후 2분기 연속 적자를 낸 데다 이렇다 할 지주사의 역할이 보이지 않자 투자자들이 발을 뺀 것이다. \r\n재계 관계자는 \"더 이상의 주가 하락을 막기 위해 건설부문을 분사시킬 것이라는 관측이 끊임없이 나오고 있다\"면서 \"건설부문이 새로운 먹거리를 찾기 전에는 경영 효율화에 초점을 맞출 것으로 보인다\"고 전했다. ','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(16,7,'04','현대 건설, 실적 기대감','현대건설의 주가는 올해 완만한 상승곡선을 이어갈 것으로 예상된다.\r\n현대건설의 주가가 긍정적으로 전망되고 있는 것은 GS건설·삼성물산 등 타 건설사들이 해외부실 현장 적자로 실적을 깎아 먹을 때 현대건설은 비교적 안정적인 원가율로 실적을 쌓아 시장 신뢰도를 회복했다는 점도 긍정적인 요인이다. \r\n주택사업 비중확대와 해외에서의 시너지 등 덕에 매출과 영업익이 소폭 증가할 것으로 보고 있다. ','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(17,7,'04','지배구조가 짓누른 현대건설 주가.. 금융위기 이후 최저','현대건설의 주가가 양호한 실적과 호재성 소식에도 불구하고 금융위기 최저 수준을 벗어나지 못하고 있다.\r\n동부증권 연구원은 \"지배구조 하단에 있고, 오너 일가가 지분을 보유한 현대엔지니어링과 동일한 사업군에 속하기 때문에 현대건설에 대한 부정적 시각을 깨끗이 해소하기는 어렵다\"고 말했다.\r\n현대차그룹의 지배구조 개편 과정에서 소외당할 수 있다는 전망이 현대건설의 주가를 내리누르고 있다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(18,8,'04','대우조선해양 수주 기대감..','국제 유가가 상승하면서 조선업종 상승세가 두드러지고 있다. \r\n특히 대우조선해양은 수주기대감이 보태진 것도 급등 원인으로 해석된다.\r\n산업통상자원부 장관이 이란을 방문하면서\r\n선박 수주와 관련된 구체적인 사업에 대해 논의한 것으로 알려졌기 때문이다. \r\n업계에선 한국 측이 이란 정부에 대우조선해양이 이란 최대 탱커선사인 NITC로부터\r\n180억 달러(약 22조원) 규모 원유수송선과 LNG운반선 수주 지원을 요청한 것으로 전해진다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(19,8,'04','\'자율협약 검토설\' 대우조선해양, 주가 하락 가속화되나','국내 해운·조선업종에 대한 우려가 높아지는 가운데 대우조선해양마저\r\n자율협약을 검토하고 있다는 주장이 제기돼 이목을 집중시키고 있다.\r\n증권가에서는 이 때문에 대우조선해양 주가의 추가 하락이 불가피한 것 아니냐의 \r\n우려의 목소리도 점차 높아지는 양상이다. \r\n업계등에 따르면 정부와 채권단은 대우조선해양에 대해 \r\n빠르면 다음 달 중 자율협약(채권단공동관리) 개시를 검토 중인 것으로 알려졌다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(20,9,'05','현대차 中신차 발표에 상승','현대자동차가 중국 현지에서 신차를 발표했다는 소식에\r\n주가가 상승하며, SK하이닉스를 제치고 시가총액 2위에 올랐다.\r\n이날 현대차는 중국 합작법인 베이징현대가\r\n중국 시장 전용 세단 \'올 뉴 위에동\'을 출시했다고 발표했다.\r\n베이징현대는 중국 베이징·광저우·청두·항저우·시안·장저우 등\r\n6개 도시에서 신차발표회를 열고 본격적인 판매에 들어갈 예정이다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(21,9,'05','현대자동차, 5년째 주식시장서 \'침체상태\'','현대자동차가 글로벌 자동차 시장의 성장에도 불구하고 주식시장에서 침체상태에 머물러있다.\r\n이전부터 현대자동차는 생산시설을 확대해 왔으나 시장점유율은 늘지 않아 2012년 세계 시장의 8.5%에서 제자리걸음을 하고 있다.\r\n현대자동차가 글로벌 자동차 시장에서의 이 같은 주가 역주행을 극복하는 방안으로는 역시 실적 개선이 최선이라는 게 업계의 시각이다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(22,10,'05','대한항공, 저유가에 주가 상승 기대','대한항공이 국제유가 하락의 수혜를 딛고 연 1조원의 영업이익을 내 주가 호재를 맞을것이라는 전망이 나왔다.\r\n\"저유가가 이어지면서 연 1조원 내외의 영업이익 달성이 예상된다\"며\r\n\"여객은 장거리 노선의 경쟁 강동가 낮아 안정적인 수익구조를 확보할 수 있을것으로 보인다\"고 설명했다.\r\n최근 연초부터 상승하던 국제유가가 하락세를 타고 있는 것도 대한항공 등 항공주에 호재로 작용할 전망이다. ','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(23,10,'05','대한항공, 유상증자로 주가 하락 불가피','대규모 유상증자로 대한하공의 주가 하락이 불가피하다며 목표주가를 내렸다. 목표주가 하향은 유상증자로 신규 발행되는 주식 2천 200만주를 희석했기 때문이다.\r\n대한항공은 원/달러 급등에 따른 대규모 외화환산손실로 작년 말 기준 부채 비율이 오를 예정이며, 부채비율 상승으로 일부 차입금에 대한 조기 상환 우려가 확산되고 있다. ','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(24,11,'06','다음 - 카카오 합병, 주식 상승','다음과 카카오는 합병 계약을 체결하고 통합법인 \'다음 카카오\'를 출범한다고 밝혔습니다.\r\n양사는 지난 23일 각각 이사회를 열어 합병을 결의하고 합병 계약을 체결했으며, 주주총회 승인을 얻어 연내 합병 절차를 마무리할 예정입니다.  양사는 각자의 핵심 역량을 통합해 급변하는 시장에서 경쟁력을 극대화하기 위해 합병을 결정했다고 설명했습니다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(25,11,'06','호실적에도 추락한 카카오... 하락폭, 이달에만 10% 육박','카카오의 호실적에도 주가가 맥을 못추고 있다. 외국인과 기관이 집중적인 매도세에 따른 결과다. 대규모 투자 계획과 그에 따른 이익증가율 둔화 우려감이 반영된 것으로 풀이된다. \r\n신기술, 콘텐츠 확보를 위해 외부기업을 인수하고 기술 인력을 채용하면서 큰 폭의 비용 증가가 예상된다. \r\n실제 수익을 내기까지 시간이 걸릴 수 있어 당분간 투자 증가에 따른 이익 증가율 둔화가 불가피하다.\r\n','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(26,12,'06','삼성전자 \' 갤럭시S8\' 판매 호조에 1%대 상승','삼성전자가 갤럭시 S8 판매 호조에 1%대 상승세를 보이고 있다.\r\n삼성전자의 새 스마트폰 ‘갤럭시S8’ 시리즈가 글로벌 시장에서 500만대를 넘는 판매 기록을 세웠단 소식이 삼성전자 주가 상승에 긍정적인 영향을 미친 것으로 풀이된다. 증권업계에선 갤럭시S8의 연간 판매량이 4000만~6000만대에 이를 것으로 예측하고 있다.','1',0,2,'','0000-00-00 00:00:00',NULL,NULL),
(27,12,'06','갤노트7 쇼크, 삼성전자 주가 급락...','유가증권시장 개장 전 갤럭시노트7(노트7) 판매 중단 소식이 전해진 삼성전자 주가는 전날 종가보다 4.8% 떨어진 금액에 턱걸이한 채 출발했다. 외국인이 3156억원어치를 팔며 ‘셀 삼성전자’를 외쳤다. 기관이 1954억원어치를 사들이며 매도 물량을 받았지만 역부족이었다.\r\n스마트폰 관련 부품주도 주가하락을 뜻하는 파란불을 켰다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `job016_copy` */

DROP TABLE IF EXISTS `job016_copy`;

CREATE TABLE `job016_copy` (
  `NEWS_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '뉴스KEY',
  `NEWS_CODE` varchar(2) DEFAULT NULL COMMENT '뉴스코드',
  `NEWS_TYPE` varchar(2) DEFAULT NULL COMMENT '뉴스구분',
  `NEWS_HEAD` varchar(64) DEFAULT NULL COMMENT '뉴스해드라인',
  `NEWS_FILE` text COMMENT '뉴스내용',
  `UPDOWN` enum('1','2') DEFAULT '1' COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `PERCENT` tinyint(4) NOT NULL DEFAULT '0' COMMENT '반영 비율',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`NEWS_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `job016_copy` */

insert  into `job016_copy`(`NEWS_KEY`,`NEWS_CODE`,`NEWS_TYPE`,`NEWS_HEAD`,`NEWS_FILE`,`UPDOWN`,`SEND`,`PERCENT`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,'1','01','글로벌 증시-유가 상승따라 관련 주 강세','현지 시간 유럽 주요국 증시, 유가 상승에 힘입어 상품 관련주들이 강세를 나타낸 가운데 상승세로 마무리 되었습니다.\r\n유가 급등에 따른 석유업체들의 주가가 뛰어 올랐고요. \r\n또 지난 주말 중국의 시진핑 국가주석이 일대일로 프로젝트에 1,000억 달러 이상을 \r\n투자할 것을 약속하면서 생산업체들의 주가 역시 큰 오름폭을 나타냈습니다.','1',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(2,'1','01','`제약 빅3`에 광동제약 진입·한미약품 탈락','제약업계에 따르면 유한양행과 녹십자는 \'빅3\' 자리를 수성할 것으로 보인다. 이미 실적을 발표한 녹십자는 매출액이 전년 대비 14.3% 늘어난 1조1979억원으로 집계됐으며, 유한양행의 경우 에프엔가이드의 증권사 전망치 집계 결과 전년보다 16.3% 증가한 1조3126억원의 매출을 기록할 것으로 예상되기 때문이다.\r\n\r\n다만 지난 2015년 매출 1위를 기록했던 한미약품은 지난해 전년 대비 33% 급감한 8827억원의 매출을 올려 4위로 내려앉을 전망이다. 사노피와의 당뇨 신약 기술수출 계약이 수정돼 계약금 2500억원을 반환하는 것이 결정적 요인이다. 다만 기술료 수입을 제외한 나머지 매출은 8550억원으로 전년 대비 6.2% 개선된 것이 위안거리다.\r\n\r\n한미약품 관계자는 \"올해에는 제넨텍 계약금이 분할인식하고 국내 신제품 매출 증대 및 완제품 수출 증가가 예상돼 실적을 만회할 수 있을 것으로 기대한다\"고 말했다.\r\n\r\n한미약품이 빠진 \'제약 빅3\'의 빈 자리는 광동제약(종목홈)이 차지할 것으로 전망된다','1',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(3,'9','05','현대차 실적부진에 약세, 미국 증시도 자동차주 약세','현대차의 증시 영향력이 3년 만에 최저 수준으로 감소한 것으로 나타났다. \r\n한국거래소에 따르면 전날 종가 기준으로 유가증권시장 전체 시총(1211조4150억원)에서 현대차가 차지하는 비중은 17.6%였다. 이는 2011년 10월(17.28%) 이후 최저 수준이다.  \r\n\r\n현대차는 확대된 환율 부담에 한전 부지 고액 낙찰에 대한 실망감까지 더해지며 연일 하향 곡선을 그리고 있다.  \r\n\r\n현대차는 전날 2.05% 하락한 19만1천500원에 거래를 마감했으며, 장중 한때 18만9천500원(52주 신저가)까지 떨어지기도 했다.  \r\n\r\n’전차(電車) 군단’이 이처럼 주저앉으며 국내 주식시장 전반에도 부담 요인이 되고 있다. \r\n\r\n현대차가 한국 기업의 영업이익과 수출에서 차지하는 비중이 워낙 크기 때문에 이 같은 하락세가 지속될 경우 시장 전체가 함께 내려앉을 수 있다는 우려다. ','2',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(4,'1','01','광동제약, 전문의약품 강화로 수익성 회복 기대','골든브릿지 투자증권이 광동제약에 대해 \"전문의약품(OTC)을 강화해 수익성 회복이 기대된다\"고 진단했다.\n혈액암인 다발성골수증 치료제 레블리미드(세엘진사)의 틀허회피에 성공하며 오는 10월 이후 제네릭 출시를 앞두고 있는 만큼 의약품 매출이 꾸준히 증가할 것 이라는 전망이다.  2017년에는 상다수 매출이 전체 외형성장을 견인하는 가운데 비타500 및 옥수수수염차, 헛개차, 쌍화탕, 청심류 등 음료와 OTC 중심으로 안정적인 성장을 할 것으로 내다봤다.','1',0,10,'','2017-07-15 14:44:13',NULL,NULL),
(5,'1','01','광동제약, 한달 새 주가 20% 폭락...','실적부진이 지속되고 있는 광동제약이 주가 역시 고전을 면치 못하고 있다. 지난해까지 판매하던 외국산 의약품이 대거 타사로 넘어가면서 실적에도 영향을 미쳤다는 분석이다.\r\n관계자는 \" 외국산 의약품 판권을 빼앗긴 이후 새로운 판로개척을 위해 상반기 마케팅비용을 대폭 늘린것도 수익성 감소의 원인으로 꼽힌다\"고 말했다.\r\n올해 상반기 실적 흐름상 4년 연속 매출에 비해 영업이익이 부족한 회사가 될것이라는 전망이 우세하다.','2',0,20,'','2017-07-15 14:44:13',NULL,NULL),
(6,'2','01','일동제약 \"내주중 수출계약 체결\"','일동제약이 일본 스노우덴사와 다음주중 수출계약을 체결할 것으로 확인됐다.\r\n이번 계약은 원료의약품과 식품 등에 사용되는 유산균을 스노우덴사에 1년간 정기적으로 공급하며 그 이후 자동으로 기간을 연장한다는 내용을 담게된다.\r\n한편 이 관계자는 유산균제품 수출을 통해 12월중 2억원의 매출이 발생했으며 오는 2월에도 3억원의 매출이 추가로 발생할 것 이라고 말했다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(7,'2','01','일동제약, 유통방식 변경 여파로 실적 급감','일동제약이 올해 초부터 의약품 유통방식을 온라인으로 전환하면서 실적이 급감했다. 온라인으로 전환하면서 기존 재고자산 소진 이슈가 발생했다. 고객입장에서는 거래처가 바뀌는 탓에 기존재고를 먼저 소진한 뒤에 일동샵과 새거래를 시작하는 사례가 적잖이 나타났다. 이 과정에서 매출이 급감한것으로 분석된다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(8,'3','02','롯데케미칼, \'3조 몸값\' 자회사 상장으로 날개 단다.','롯데케미칼은 올해 1분기 사상 최대 실적(영업이익 기준)을 올린 것으로 추정된다. 석유화학 업종이 ‘슈퍼 사이클’ 에 진입했다는 분석이 나오고 있어 실적 개선 추세는 이어질 전망이다. \r\n말레이시아 자회사인 롯데케미칼타이탄홀딩(타이탄)의 기업공개(IPO)가 올해 하반기로 예정돼 있는 점도 기업가치를 끌어올릴 호재로 꼽힌다. KTB투자증권은 강력 매수를 추천했다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(9,'3','02','롯데그룹 동반 급락... 롯데케미칼 14% 하락','경영권 분쟁 사태가 발생한 롯데 그룹주가 동반 급락했다.\r\n유가증권시장에서 롯데케미칼은 전 거래일 대비 13.63% 급락한 금액에 거래를 마감했다.\r\n이 날 2% 가량 하락 출발한 롯데케미칼은 그룹 이슈에 국제 유가하락으로 인한 화학주 약세까지 겹악재로 작용하며 낙폭을 점차 확대했다.\r\n특히 외국계 증권사를 중심으로 롯데케미칼의 매도세가 집중하며 외국인과 기관이 등을 돌렸다. ','2',0,14,'','2017-07-15 14:44:13',NULL,NULL),
(10,'4','02','한화 태양광 흑자전환..주가 악재 턴다.','한화케미칼 최고재무책임자는 \"매출의 40%를 차지하는 태양광 부문이 올 1분기 흑자 전환하고, 석유화학 부문도 이익이 늘어나 두 사업부문이 각자도생하게 됐다. 실적과 재무구조가 올해 모두 개선되면서 영업이익이 작년보다 늘어날 수 있다\"고 밝혔다.\r\n태양광과 함께 석유화학 사업을 하는 한화케미칼은 작년 영업이익 77,792억원으로 사상 최대 실적을 달성했다. ','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(11,'4','02','한화케미칼, 공장 폭발사고 소식에 3%대 하락','울산에 있는 한화케미칼 공장 폭발사고 소식에 한화케미칼 주가가 하락하고 있다. \r\n이날 오전 한화케미칼 제2공장 폐수처리장 인근에서 폭발사고가 발생했다. 소방당국은 폐수 저장조 상부 용접작업 과정에서 잔류가스가 폭발한 것이 사고원인으로 보고 정확한 사고 경위를 조사하고 있다. \r\n현재 한화케미칼은 전날 대비 3.18% 하락한 금액으로 거래되고 있다.','2',0,3,'','2017-07-15 14:44:13',NULL,NULL),
(12,'5','03','오뚜기, 주가도 \'갓뚜기\' 될까','최근 오뚜기의 라면 시장 점유율이 점차 상승곡선을 그리며 주가에 대한 기대감도 높다. 오뚜기의 주가는 지난 8일 종가 기준으로 전년대비 15.41%올랐다.\r\n시장에서 오뚜기에 대해 관심이 높은 것은 라면 시장점유율이 점차 높아지고 있어서다. \r\n심 연구원은 \"기존 주력제품인 조미식품과 양념소스 부문의 판매량이 증가하고 있으며 HMR제품의 고성장도 살펴볼 필요가 있다\"며 \"안정적인 사업 포트폴리오를 확보한 점이 오뚜기의 투자포인트\"라고 덧붙였다. ','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(13,'5','03','오뚜기 주가 반 토막.. \"라면 많이 팔았는데, 왜?\"','오뚜기가 1년만에 반 토막 났다. 업계 1위 농심을 제칠 정도로 라면을 많이 팔았는데도 주가가 힘을 못 썼다.\r\n질문의 답은 오뚜기가 라면을 많이 팔아봤자 돈이 남지 않는다는 데 있다. 수익성이 낮다는 얘기다.\r\n조 연구원은 “2분기 실적에 대한 기대도 낮은 상태”라고 설명했다.\r\n이어 “혁신적인 제품이 또 나오지 않는 이상 오뚜기가 면 사업에서 수익 내기 힘들다”고 꼬집었다. ','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(14,'6','03','삼성물산, 3분기 안정적 실적… 주가 상승세 지속','삼성물산이 올해 3분기 안정적인 실적을 거뒀다며 투자의견 \'매수\'와 목표주가 20만7천원을 유지했다.\r\n이광수 연구원은 \"1분기 해외부문 손실 증가로 영업적자를 기록한 이후 두 분기 연속 영업흑자를 유지했다\"고 설명했다. 그는 \"장기적 변화와 사업 확대를 예상한다\"면서 \"안정적 이익을 유지하고 실질적인 변화가 이어지면서 주가 상승 추세는 지속할 것\"이라고 내다봤다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(15,'6','03','또 인력감축 카드 꺼낸 삼성물산','건설부문이 지난해 적자를 낸 뒤 올해 손실폭이 커지자 다시금 인력 감축에 돌입했다. 추가 감원을 진행하는 이유 중 하나는 지속적인 주가하락이다. 삼성물산 주가는 최근 3개월간 25% 급락했다. 합병 이후 2분기 연속 적자를 낸 데다 이렇다 할 지주사의 역할이 보이지 않자 투자자들이 발을 뺀 것이다. \r\n재계 관계자는 \"더 이상의 주가 하락을 막기 위해 건설부문을 분사시킬 것이라는 관측이 끊임없이 나오고 있다\"면서 \"건설부문이 새로운 먹거리를 찾기 전에는 경영 효율화에 초점을 맞출 것으로 보인다\"고 전했다. ','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(16,'7','04','현대 건설, 실적 기대감','현대건설의 주가는 올해 완만한 상승곡선을 이어갈 것으로 예상된다.\r\n현대건설의 주가가 긍정적으로 전망되고 있는 것은 GS건설·삼성물산 등 타 건설사들이 해외부실 현장 적자로 실적을 깎아 먹을 때 현대건설은 비교적 안정적인 원가율로 실적을 쌓아 시장 신뢰도를 회복했다는 점도 긍정적인 요인이다. \r\n주택사업 비중확대와 해외에서의 시너지 등 덕에 매출과 영업익이 소폭 증가할 것으로 보고 있다. ','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(17,'7','04','지배구조가 짓누른 현대건설 주가.. 금융위기 이후 최저','현대건설의 주가가 양호한 실적과 호재성 소식에도 불구하고 금융위기 최저 수준을 벗어나지 못하고 있다.\r\n동부증권 연구원은 \"지배구조 하단에 있고, 오너 일가가 지분을 보유한 현대엔지니어링과 동일한 사업군에 속하기 때문에 현대건설에 대한 부정적 시각을 깨끗이 해소하기는 어렵다\"고 말했다.\r\n현대차그룹의 지배구조 개편 과정에서 소외당할 수 있다는 전망이 현대건설의 주가를 내리누르고 있다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(18,'8','04','대우조선해양 수주 기대감..','국제 유가가 상승하면서 조선업종 상승세가 두드러지고 있다. \r\n특히 대우조선해양은 수주기대감이 보태진 것도 급등 원인으로 해석된다.\r\n산업통상자원부 장관이 이란을 방문하면서\r\n선박 수주와 관련된 구체적인 사업에 대해 논의한 것으로 알려졌기 때문이다. \r\n업계에선 한국 측이 이란 정부에 대우조선해양이 이란 최대 탱커선사인 NITC로부터\r\n180억 달러(약 22조원) 규모 원유수송선과 LNG운반선 수주 지원을 요청한 것으로 전해진다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(19,'8','04','\'자율협약 검토설\' 대우조선해양, 주가 하락 가속화되나','국내 해운·조선업종에 대한 우려가 높아지는 가운데 대우조선해양마저\r\n자율협약을 검토하고 있다는 주장이 제기돼 이목을 집중시키고 있다.\r\n증권가에서는 이 때문에 대우조선해양 주가의 추가 하락이 불가피한 것 아니냐의 \r\n우려의 목소리도 점차 높아지는 양상이다. \r\n업계등에 따르면 정부와 채권단은 대우조선해양에 대해 \r\n빠르면 다음 달 중 자율협약(채권단공동관리) 개시를 검토 중인 것으로 알려졌다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(20,'9','05','현대차 中신차 발표에 상승','현대자동차가 중국 현지에서 신차를 발표했다는 소식에\r\n주가가 상승하며, SK하이닉스를 제치고 시가총액 2위에 올랐다.\r\n이날 현대차는 중국 합작법인 베이징현대가\r\n중국 시장 전용 세단 \'올 뉴 위에동\'을 출시했다고 발표했다.\r\n베이징현대는 중국 베이징·광저우·청두·항저우·시안·장저우 등\r\n6개 도시에서 신차발표회를 열고 본격적인 판매에 들어갈 예정이다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(21,'9','05','현대자동차, 5년째 주식시장서 \'침체상태\'','현대자동차가 글로벌 자동차 시장의 성장에도 불구하고 주식시장에서 침체상태에 머물러있다.\r\n이전부터 현대자동차는 생산시설을 확대해 왔으나 시장점유율은 늘지 않아 2012년 세계 시장의 8.5%에서 제자리걸음을 하고 있다.\r\n현대자동차가 글로벌 자동차 시장에서의 이 같은 주가 역주행을 극복하는 방안으로는 역시 실적 개선이 최선이라는 게 업계의 시각이다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(22,'10','05','대한항공, 저유가에 주가 상승 기대','대한항공이 국제유가 하락의 수혜를 딛고 연 1조원의 영업이익을 내 주가 호재를 맞을것이라는 전망이 나왔다.\r\n\"저유가가 이어지면서 연 1조원 내외의 영업이익 달성이 예상된다\"며\r\n\"여객은 장거리 노선의 경쟁 강동가 낮아 안정적인 수익구조를 확보할 수 있을것으로 보인다\"고 설명했다.\r\n최근 연초부터 상승하던 국제유가가 하락세를 타고 있는 것도 대한항공 등 항공주에 호재로 작용할 전망이다. ','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(23,'10','05','대한항공, 유상증자로 주가 하락 불가피','대규모 유상증자로 대한하공의 주가 하락이 불가피하다며 목표주가를 내렸다. 목표주가 하향은 유상증자로 신규 발행되는 주식 2천 200만주를 희석했기 때문이다.\r\n대한항공은 원/달러 급등에 따른 대규모 외화환산손실로 작년 말 기준 부채 비율이 오를 예정이며, 부채비율 상승으로 일부 차입금에 대한 조기 상환 우려가 확산되고 있다. ','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(24,'11','06','다음 - 카카오 합병, 주식 상승','다음과 카카오는 합병 계약을 체결하고 통합법인 \'다음 카카오\'를 출범한다고 밝혔습니다.\r\n양사는 지난 23일 각각 이사회를 열어 합병을 결의하고 합병 계약을 체결했으며, 주주총회 승인을 얻어 연내 합병 절차를 마무리할 예정입니다.  양사는 각자의 핵심 역량을 통합해 급변하는 시장에서 경쟁력을 극대화하기 위해 합병을 결정했다고 설명했습니다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(25,'11','06','호실적에도 추락한 카카오... 하락폭, 이달에만 10% 육박','카카오의 호실적에도 주가가 맥을 못추고 있다. 외국인과 기관이 집중적인 매도세에 따른 결과다. 대규모 투자 계획과 그에 따른 이익증가율 둔화 우려감이 반영된 것으로 풀이된다. \r\n신기술, 콘텐츠 확보를 위해 외부기업을 인수하고 기술 인력을 채용하면서 큰 폭의 비용 증가가 예상된다. \r\n실제 수익을 내기까지 시간이 걸릴 수 있어 당분간 투자 증가에 따른 이익 증가율 둔화가 불가피하다.\r\n','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(26,'12','06','삼성전자 \' 갤럭시S8\' 판매 호조에 1%대 상승','삼성전자가 갤럭시 S8 판매 호조에 1%대 상승세를 보이고 있다.\r\n삼성전자의 새 스마트폰 ‘갤럭시S8’ 시리즈가 글로벌 시장에서 500만대를 넘는 판매 기록을 세웠단 소식이 삼성전자 주가 상승에 긍정적인 영향을 미친 것으로 풀이된다. 증권업계에선 갤럭시S8의 연간 판매량이 4000만~6000만대에 이를 것으로 예측하고 있다.','1',0,2,'','2017-07-15 14:44:13',NULL,NULL),
(27,'12','06','갤노트7 쇼크, 삼성전자 주가 급락...','유가증권시장 개장 전 갤럭시노트7(노트7) 판매 중단 소식이 전해진 삼성전자 주가는 전날 종가보다 4.8% 떨어진 금액에 턱걸이한 채 출발했다. 외국인이 3156억원어치를 팔며 ‘셀 삼성전자’를 외쳤다. 기관이 1954억원어치를 사들이며 매도 물량을 받았지만 역부족이었다.\r\n스마트폰 관련 부품주도 주가하락을 뜻하는 파란불을 켰다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL);

/*Table structure for table `job017` */

DROP TABLE IF EXISTS `job017`;

CREATE TABLE `job017` (
  `ANAL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '애널리스트KEY',
  `ANAL_CODE` tinyint(4) DEFAULT NULL COMMENT '애널리스트코드',
  `ANAL_TYPE` varchar(2) DEFAULT NULL COMMENT '애널리스트구분',
  `ANAL_HEAD` varchar(32) DEFAULT NULL COMMENT '애널리스트해드라인',
  `ANAL_FILE` text COMMENT '애널리스트내용',
  `UPDOWN` enum('1','2') DEFAULT NULL COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `PERCENT` tinyint(4) NOT NULL DEFAULT '0' COMMENT '반영비율',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`ANAL_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `job017` */

insert  into `job017`(`ANAL_KEY`,`ANAL_CODE`,`ANAL_TYPE`,`ANAL_HEAD`,`ANAL_FILE`,`UPDOWN`,`SEND`,`PERCENT`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'01','美 증시, 정치적 분란에도 여전히 \'고공행진\'','미국 증시가 최근 도널드 트럼프 미 대통령과 의회간 불화가 계속되는데도 고공행진을 거듭하면서 투자자들의 의문을 자아내고 있다. 현지 전문가들은 투자자들이 정치적 불안은 크게 고려하지 않으면서 트럼프 정부의 경기 부양책을 지나치게 의식한다는 주장을 내놨다. \r\n\r\n미 경제전문방송 CNBC는 14일(이하 현지시간) 미 주요 증시가 이달 들어 2주간 0.8%포인트 범위에서 오르내리고 있다고 분석했다. 미 나스닥, 스탠더드앤드푸어스(S&P) 500 지수는 이달 초 역대 최고치를 기록했으며 다우존스 산업평균지수 역시 고공행진을 거듭하고 있다. 반면 미 정가에서는 지난 9일 트럼프 대통령이 연방수사국(FBI) 국장을 해임하면서 지난해 대선기간 내 러시아와 내통 문제와 관련해 탄핵 주장까지 나오는 상황이다.\r\n\r\n물론 트럼프 정부의 경기 부양책이 아무 쓸모없던 것은 아니다. 미 시장조사업체 CFRA의 린제이 벨 전략가는 투자자들이 올해 3·4분기~4·4분기 증시 전망을 유별나게 좋게 보고 있다며 트럼프 정부가 약속한 경기부양책이 시장에 반영됐을 수도 있다고 진단했다.','1',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(2,2,'02','순풍도 역풍도 없는 한국증시…외국인 3일 연속 순 매도','국내 증시의 소강 국면이 3일째 이어지고 있다.\r\n왹구인도 국내 주식시장에서 3일 연속 순매도햇다.\r\n코스피지수는 전날보다 4.68포인트 오른 2295에 마감했다. 우연히도 전날과 상승률리 0.2포인트로 같다.\r\n코스닥지수는 6.27포인트 떨어진 639에 마쳤다.\r\n증시를 끌어 올리거나 내릴만한 요인이 없으며, 코스피지수도 뚜렷한 움직임을 보이지 못햇다. 그 동안 상승 동력이었던 1분기 실적 발표는 지난 15일로 끝났다.','2',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(3,3,'03','유럽 증시 혼조세로 출발…영국 증시 또 사상 최고 기록','엇갈린 기업 실적의 영향으로 유럽 주요국 증시가 16일 혼조세로 출발한 가운데 영국 증시가 또다시 사상 최고 기록을 세웠다.\r\n영국 런던 증시의 FTSE 100지수는 이날 오후 4시 30분(한국시간) 현재 전날 종가보다 0.26% 오른 7,473.91에 거래되고 있다.\r\nFTSE 100지수는 지난 13일과 15일에 이어 또다시 사상 최고가를 갈아치운 셈이 됐다.\r\n전날 7,454.37에 마감했던 FTSE 100지수는 이날 영국 이동통신사 보다폰이 실적 발표 후 주가가 3.6% 급등한 것에 힘입어 장 초반부터 상승세를 탔다. ','2',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(4,1,'01','제약 주 하반기 영업이익 기대에 크게 못미쳐','증권업계에 따르면 의약업종 하반기 영업이익이 전년도 대비 크게 감소한것으로 분석되고 있다.\r\n광동제약, 일동제약 등 글로벌 신약개발 대형제약주가 임상실험 중단, 해외공급중단등으로 악재가 겹치면서 당분간 제약 종목은 하락세를 보일것으로 전망하고 있다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(5,2,'01','외면 받던 제약 관련 주 반등세 심상찮네','이달 들어 의약품 업종지수 10%상승..거래대금 2배증가하고\r\n코스피가 연일 최고치를 갱신하면서 그동안 빛을 보지 못했던 제약관련주들이 주목을 받고 있다.\r\n한국거래소에 따르면 이달 의약품 업종지수는 전거래일 대비 10% 상승하며 거래를 마쳤다.\r\n외국인들의 이달들어 의약품 업종 순매수를 이어가고 있다.\r\n증권업계는 의약업종은 실적개선을 보이면서 점차 완만한 상승세를 이어 갈것으로 전망 하고 있다.','1',0,10,'','0000-00-00 00:00:00',NULL,NULL),
(6,3,'02','잘 나가던 화학주, 동반 하락','화학주의 동반 하락은 미국 상무부가 한국의 가소제 제조·수출 업체에\r\n반덤핑 예비관세 부과 판정을 내린 데 영향을 받은 것으로 보인다.\r\n반덤핑은 특정 제품이 정상 가격 이하로 수출되는 경우\r\n해당 국가의 특정 제품에 관세를 부과해 자국 산업을 보호하려는 조치다.\r\n하지만 한 증권사 연구원은 “주가하락은 단기에 그칠 것으로 보인다”고 분석했다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(7,4,'02','석유화학 \'장밋빛 미래\'... 주가도 탄력 전망','올해 석유화학 업종에 대한 긍정적 시각이 쏟아지면서 주가도 따라 탄력적인 움직임을 보일 전망이다.\r\n금융투자업계에 따르면 화학제품 가격은 지난해 11월 이후 폭등하고 있다.\r\n증권가는 화학제품 가격이 급등한 이유로 춘절이 2월에서 1월로 당겨지면서\r\n높아진 재고 확충 수요와 석탄가격 상승, 환경규제 강화 등으로\r\n중국 화학 설비 가동률이 억제돼 공급 제약이 생겼기 때문이라고 분석했다.\r\n장기적인 호황이 지속될 전망이 제기된 가운데 지난해 4분기 실적에 대한 기대도 커지고 있다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(8,5,'03','소비절벽에 추락하는 유통주 바닥은..?','경제 불확실성 확대와 소비절벽 현실화에 대한 우려로\r\n유통주가 연말 특수를 못 누린 채 추락하고있다.\r\n유통주 부진은 경기 불황에 따른 불안감으로 가계가 소비를 꺼리고 있기 때문이다.\r\n당분간 반등이 쉽지 않을 것이라는 비관론도 나오고 있으며,\r\n내년에도 이런 기조가 이어질 것으로 우려된다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(9,6,'03','식품주 자산가치 매력에 웃다','국내 증시에서 식품주에 대한 재평가가 급물살을 타고 있다. \r\n최근 1인 가구 증가로 가정 간편식에 대한 수요가 늘고,\r\n중국에서도 안전한 먹거리에 대한 인식이 높아지면서 실적이 개선된 덕분이다.\r\n이와 함께 소맥·대두·옥수수 등 곡물가격이 지난 1년간 20% 넘게 떨어지는 등\r\n원료비가 크게 절약된 점도 수익성 개선을 이끌었다. ','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(10,7,'04','건설회사 주가 일제히 하락, 영향 얼마나 클까','금융위가 부동산 규제를 간접적으로 강화하면서\r\n주택 수요가 줄어들 것 이라는 예상이 많다.\r\n코스피 건설업종을 구성하는 종목 40개 가운데 30개가 이날 하락세를 보였다.\r\n총부채상환비율 규제가 간접적으로 강화하면서\r\n기존의 주택시장 수요가 어느 정도 위축될 것으로 보인다고 전망했다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(11,8,'04','조선주, 수주 증가에 반등 기대감 \'솔솔\'','조선업종이 기나긴 터널을 뚫고 반등을 할 것이라는 전망이 나오고 있다.\r\n조선업의 기본인 수주가 늘어나고 있기 때문이다.\r\n전문가들은 조선업종이 2분기부터 수주 증가와 함께 상승세를 보일 것으로 분석했다. 올해 1분기 상장된 조선 4개사의 조선·해양 신규수주 실적은 31억1000만달러로 전년 동기 대비 592% 급증했으며 이같은 수주 개선이 2분기까지 이어질 수 있다는 것이다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(12,9,'05','항공주, 유가 급등 직격탄 맞나?','OPEC 정기회의에서 산유량 감축합의로 WTI 국제유가 9%이상 급등하였다. OPEC 합의로 비OPEC의 러시아 역시 감축에 동조할 것이라 밝혔다.\r\n유가 급등에 항공유 역시 상승할 것으로 우려하며 항공주 큰 폭 하락하였다.','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(13,10,'05','자동차주 신흥국 판매 회복 기미..','현대,기아차가 올해 양사 합산 825만대를 팔겠다고 선언하면서 모처럼 자동차 관련주들이 기지개를 펴고 있다. 올해 주요국 시장이 둔화되더라도 신흥국 판매가 호조를 보인다면 목표달성이 가능할 것이라는 전망을 내놓고 있다.\r\n이어 자동차 부품주들도 덩달아 오르고 있다. 차 판매가 늘어나면 공급 비중이 높은 국내 차부품사들에게도 호재이기 때문이다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(14,11,'06','IT업종 낙관적 전망 확산','일부 대형주를 중심으로 외국인 투자자 매수세가 유입됐으나\r\n배당락일 기관의 매도 물량이 나오면서 약세를 기록하며 지수는 하락포인트로 마감했다.\r\n반도체가격 상승, 수출 출하량 증가, 우호적 환율여건으로\r\n시장 기대치를 웃도는 실적을 발표할 것이라는 예상과 함께\r\nIT 업종 전반에 낙관적인 전망이 확산될 것으로 보인다. ','2',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(15,12,'06','전자 업종 주가상승.. 시장 \'상승세\' 이끌어','시총 최상위 업종이라고 볼 수 있는 전기·전자에 대한 상승률이 0.6% 정도 상승률을 보이면서 시장에 대한 상승세들을 이끌어가고 있는 모습 보이고 있다.\r\n금융투자업계 전문가들은 주도주인 IT 관련주와 함께 유통 등 내수주가 소비심리 개선에 힘입어 상승할 가능성이 높다고 내다보고 있다.','1',0,5,'','0000-00-00 00:00:00',NULL,NULL),
(16,4,'04','건설 애널리스트들 \"어둠 걷히고 있다.\"','“현재 상황에서 주택시장이 언제 반전할지 전망하기는 매우 어렵다. 하지만 적어도 금융위기 이후 다시 불거진 주택리스크는 정점을 지나고 있다.”\r\n\r\n하반기 건설업 전망은 건설 담당 애널리스트 10명 중 7명은 하반기 건설업종이 상반기보다 좋아질 것으로 내다봤다. \r\n\r\n　<건설경제>가 올 하반기 건설업종 전망을 내놓은 증권사 9곳의 건설 애널리스들을 상대로 조사한 결과, 6곳에서 건설업에 대한 투자의견으로 ‘매수(Buy)’ 또는 ‘비중확대(Overweight)’를 제시했다. 톱픽(최선호주)으로는 현대건설이 6개사(복수응답)의 추천을 받아 가장 인기있는 종목으로 꼽혔다. \r\n\r\n　건설 담당 애널리스트들의 상당수가 하반기 시장을 긍정적으로 보는 이유는 이들 증권사들의 커버리지 종목이 대부분 대형종목이기 때문이다.\r\n\r\n　대형 건설사들은 중견사와 달리 최근 경기 불황 요인들을 충분히 통제할 능력을 갖췄다고 본 것이다. ','1',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(17,5,'05','자동차 주 실적 엔진 달고 질주','올 들어 지난 자동차 관련 업체들의 주가는 호조세를 나타냈다. \r\n연초 341이었던 운수장비 업종지수는 지난달말까지 46.0%의 상승률을 기록했다. \r\n\r\n같은 기간 종합주가지수 상승률 15.8%의 3배에 이른다. \r\n\r\n자동차 관련업체의 상승률이 높았던 이유는 몇가지로 정리할 수 있다. \r\n\r\n먼저 과거의 치열한 경쟁구조가 완화됐다는 점이다. \r\n\r\n국내 자동차산업의 구조조정 이후 현대차 그룹이 자동차 업계의 강자로 등장하면서 경쟁은 완화된 반면 국제경쟁력은 상승했다. \r\n\r\n이는 미국 시장점유율에서 분명하게 드러나고 있다. \r\n\r\n미국내 한국산 자동차 판매대수는 지난 1998년 17만대로 점유율은 1%에 불과했지만 지난해엔 62만대를 팔아 시장 점유율도 3.6%로 부쩍 높아졌다. \r\n\r\n지난해 미국 시장점유율 급증 배경으로는 지난 99년부터 현대자동차의 엔진과 트랜스미션에 대한 사후보증을 10년·10만 마일까지 늘리고 싼타페 뉴EF쏘나타 XG300 등 중형 이상의 신차량을 투입하면서 \'싼 차\'라는 인식에서 벗어나 브랜드 이미지를 강화한 전략이 제대로 맞아떨어졌다는 점이 꼽힌다. \r\n\r\n올해 1·4분기중에도 미국내 한국산 자동차 판매규모는 18%나 늘어났다. \r\n\r\n미국의 전체 자동차 판매량이 4.6% 줄어들었음을 감안하면 대단한 신장세다. ','1',1,0,'','0000-00-00 00:00:00',NULL,NULL),
(18,6,'06','상장사 실적시즌 \" 사상최대\" 향후 전망 맑음','상장사들이 지난 1분기 예상을 뛰어넘는 호실적을 기록한 가운데, 2분기와 올해 전체에 대한 실적 전망도 긍정적이라는 분석이 나왔다\r\n\r\n전자 애널리스트는 \"삼성전자, SK하이닉스의 깜짝실적이 빛났던 반도체 업종을 비롯해 전자·부품, 디스플레이 등 IT 하드웨어 전반의 호실적이 눈에 띈다\"고 강조했다.\r\n\r\n증권업종도 주요 증권사들이 모두 전망치를 웃돌았고, 은행도 8개 종목 중 7개 종목이 전망치를 상회했다.\r\n\r\n애널리스트는 \"1분기 깜짝실적이 반영되며 2017년 연간 이익전망치는 4월 이후 4.4% 상향 조정됐다\"고 설명했다.\r\n\r\n특히 1분기 확정실적에 대한 반영분을 제외한 2분기 이후의 전망치가 4.2% 상향조정된 것이 긍정적이라는 평가다.\r\n\r\n아울러 이번 1분기 이익이 전망치를 상회하며 이익전망치에 대한 신뢰도가 높아졌다고 풀이했다.','1',1,0,'','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `job017_copy` */

DROP TABLE IF EXISTS `job017_copy`;

CREATE TABLE `job017_copy` (
  `ANAL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '애널리스트KEY',
  `ANAL_CODE` varchar(2) DEFAULT NULL COMMENT '애널리스트코드',
  `ANAL_TYPE` varchar(2) DEFAULT NULL COMMENT '애널리스트구분',
  `ANAL_HEAD` varchar(32) DEFAULT NULL COMMENT '애널리스트해드라인',
  `ANAL_FILE` text COMMENT '애널리스트내용',
  `UPDOWN` enum('1','2') DEFAULT NULL COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `PERCENT` tinyint(4) NOT NULL DEFAULT '0' COMMENT '반영비율',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`ANAL_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `job017_copy` */

insert  into `job017_copy`(`ANAL_KEY`,`ANAL_CODE`,`ANAL_TYPE`,`ANAL_HEAD`,`ANAL_FILE`,`UPDOWN`,`SEND`,`PERCENT`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,'1','01','美 증시, 정치적 분란에도 여전히 \'고공행진\'','미국 증시가 최근 도널드 트럼프 미 대통령과 의회간 불화가 계속되는데도 고공행진을 거듭하면서 투자자들의 의문을 자아내고 있다. 현지 전문가들은 투자자들이 정치적 불안은 크게 고려하지 않으면서 트럼프 정부의 경기 부양책을 지나치게 의식한다는 주장을 내놨다. \r\n\r\n미 경제전문방송 CNBC는 14일(이하 현지시간) 미 주요 증시가 이달 들어 2주간 0.8%포인트 범위에서 오르내리고 있다고 분석했다. 미 나스닥, 스탠더드앤드푸어스(S&P) 500 지수는 이달 초 역대 최고치를 기록했으며 다우존스 산업평균지수 역시 고공행진을 거듭하고 있다. 반면 미 정가에서는 지난 9일 트럼프 대통령이 연방수사국(FBI) 국장을 해임하면서 지난해 대선기간 내 러시아와 내통 문제와 관련해 탄핵 주장까지 나오는 상황이다.\r\n\r\n물론 트럼프 정부의 경기 부양책이 아무 쓸모없던 것은 아니다. 미 시장조사업체 CFRA의 린제이 벨 전략가는 투자자들이 올해 3·4분기~4·4분기 증시 전망을 유별나게 좋게 보고 있다며 트럼프 정부가 약속한 경기부양책이 시장에 반영됐을 수도 있다고 진단했다.','1',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(2,'2','02','순풍도 역풍도 없는 한국증시…외국인 3일 연속 순 매도','국내 증시의 소강 국면이 3일째 이어지고 있다.\r\n왹구인도 국내 주식시장에서 3일 연속 순매도햇다.\r\n코스피지수는 전날보다 4.68포인트 오른 2295에 마감했다. 우연히도 전날과 상승률리 0.2포인트로 같다.\r\n코스닥지수는 6.27포인트 떨어진 639에 마쳤다.\r\n증시를 끌어 올리거나 내릴만한 요인이 없으며, 코스피지수도 뚜렷한 움직임을 보이지 못햇다. 그 동안 상승 동력이었던 1분기 실적 발표는 지난 15일로 끝났다.','2',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(3,'3','03','유럽 증시 혼조세로 출발…영국 증시 또 사상 최고 기록','엇갈린 기업 실적의 영향으로 유럽 주요국 증시가 16일 혼조세로 출발한 가운데 영국 증시가 또다시 사상 최고 기록을 세웠다.\r\n영국 런던 증시의 FTSE 100지수는 이날 오후 4시 30분(한국시간) 현재 전날 종가보다 0.26% 오른 7,473.91에 거래되고 있다.\r\nFTSE 100지수는 지난 13일과 15일에 이어 또다시 사상 최고가를 갈아치운 셈이 됐다.\r\n전날 7,454.37에 마감했던 FTSE 100지수는 이날 영국 이동통신사 보다폰이 실적 발표 후 주가가 3.6% 급등한 것에 힘입어 장 초반부터 상승세를 탔다. ','2',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(4,'1','01','제약 주 하반기 영업이익 기대에 크게 못미쳐','증권업계에 따르면 의약업종 하반기 영업이익이 전년도 대비 크게 감소한것으로 분석되고 있다.\r\n광동제약, 일동제약 등 글로벌 신약개발 대형제약주가 임상실험 중단, 해외공급중단등으로 악재가 겹치면서 당분간 제약 종목은 하락세를 보일것으로 전망하고 있다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(5,'2','01','외면 받던 제약 관련 주 반등세 심상찮네','이달 들어 의약품 업종지수 10%상승..거래대금 2배증가하고\r\n코스피가 연일 최고치를 갱신하면서 그동안 빛을 보지 못했던 제약관련주들이 주목을 받고 있다.\r\n한국거래소에 따르면 이달 의약품 업종지수는 전거래일 대비 10% 상승하며 거래를 마쳤다.\r\n외국인들의 이달들어 의약품 업종 순매수를 이어가고 있다.\r\n증권업계는 의약업종은 실적개선을 보이면서 점차 완만한 상승세를 이어 갈것으로 전망 하고 있다.','1',0,10,'','2017-07-15 14:44:13',NULL,NULL),
(6,'3','02','잘 나가던 화학주, 동반 하락','화학주의 동반 하락은 미국 상무부가 한국의 가소제 제조·수출 업체에\r\n반덤핑 예비관세 부과 판정을 내린 데 영향을 받은 것으로 보인다.\r\n반덤핑은 특정 제품이 정상 가격 이하로 수출되는 경우\r\n해당 국가의 특정 제품에 관세를 부과해 자국 산업을 보호하려는 조치다.\r\n하지만 한 증권사 연구원은 “주가하락은 단기에 그칠 것으로 보인다”고 분석했다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(7,'4','02','석유화학 \'장밋빛 미래\'... 주가도 탄력 전망','올해 석유화학 업종에 대한 긍정적 시각이 쏟아지면서 주가도 따라 탄력적인 움직임을 보일 전망이다.\r\n금융투자업계에 따르면 화학제품 가격은 지난해 11월 이후 폭등하고 있다.\r\n증권가는 화학제품 가격이 급등한 이유로 춘절이 2월에서 1월로 당겨지면서\r\n높아진 재고 확충 수요와 석탄가격 상승, 환경규제 강화 등으로\r\n중국 화학 설비 가동률이 억제돼 공급 제약이 생겼기 때문이라고 분석했다.\r\n장기적인 호황이 지속될 전망이 제기된 가운데 지난해 4분기 실적에 대한 기대도 커지고 있다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(8,'5','03','소비절벽에 추락하는 유통주 바닥은..?','경제 불확실성 확대와 소비절벽 현실화에 대한 우려로\r\n유통주가 연말 특수를 못 누린 채 추락하고있다.\r\n유통주 부진은 경기 불황에 따른 불안감으로 가계가 소비를 꺼리고 있기 때문이다.\r\n당분간 반등이 쉽지 않을 것이라는 비관론도 나오고 있으며,\r\n내년에도 이런 기조가 이어질 것으로 우려된다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(9,'6','03','식품주 자산가치 매력에 웃다','국내 증시에서 식품주에 대한 재평가가 급물살을 타고 있다. \r\n최근 1인 가구 증가로 가정 간편식에 대한 수요가 늘고,\r\n중국에서도 안전한 먹거리에 대한 인식이 높아지면서 실적이 개선된 덕분이다.\r\n이와 함께 소맥·대두·옥수수 등 곡물가격이 지난 1년간 20% 넘게 떨어지는 등\r\n원료비가 크게 절약된 점도 수익성 개선을 이끌었다. ','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(10,'7','04','건설회사 주가 일제히 하락, 영향 얼마나 클까','금융위가 부동산 규제를 간접적으로 강화하면서\r\n주택 수요가 줄어들 것 이라는 예상이 많다.\r\n코스피 건설업종을 구성하는 종목 40개 가운데 30개가 이날 하락세를 보였다.\r\n총부채상환비율 규제가 간접적으로 강화하면서\r\n기존의 주택시장 수요가 어느 정도 위축될 것으로 보인다고 전망했다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(11,'8','04','조선주, 수주 증가에 반등 기대감 \'솔솔\'','조선업종이 기나긴 터널을 뚫고 반등을 할 것이라는 전망이 나오고 있다.\r\n조선업의 기본인 수주가 늘어나고 있기 때문이다.\r\n전문가들은 조선업종이 2분기부터 수주 증가와 함께 상승세를 보일 것으로 분석했다. 올해 1분기 상장된 조선 4개사의 조선·해양 신규수주 실적은 31억1000만달러로 전년 동기 대비 592% 급증했으며 이같은 수주 개선이 2분기까지 이어질 수 있다는 것이다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(12,'9','05','항공주, 유가 급등 직격탄 맞나?','OPEC 정기회의에서 산유량 감축합의로 WTI 국제유가 9%이상 급등하였다. OPEC 합의로 비OPEC의 러시아 역시 감축에 동조할 것이라 밝혔다.\r\n유가 급등에 항공유 역시 상승할 것으로 우려하며 항공주 큰 폭 하락하였다.','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(13,'10','05','자동차주 신흥국 판매 회복 기미..','현대,기아차가 올해 양사 합산 825만대를 팔겠다고 선언하면서 모처럼 자동차 관련주들이 기지개를 펴고 있다. 올해 주요국 시장이 둔화되더라도 신흥국 판매가 호조를 보인다면 목표달성이 가능할 것이라는 전망을 내놓고 있다.\r\n이어 자동차 부품주들도 덩달아 오르고 있다. 차 판매가 늘어나면 공급 비중이 높은 국내 차부품사들에게도 호재이기 때문이다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(14,'11','06','IT업종 낙관적 전망 확산','일부 대형주를 중심으로 외국인 투자자 매수세가 유입됐으나\r\n배당락일 기관의 매도 물량이 나오면서 약세를 기록하며 지수는 하락포인트로 마감했다.\r\n반도체가격 상승, 수출 출하량 증가, 우호적 환율여건으로\r\n시장 기대치를 웃도는 실적을 발표할 것이라는 예상과 함께\r\nIT 업종 전반에 낙관적인 전망이 확산될 것으로 보인다. ','2',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(15,'12','06','전자 업종 주가상승.. 시장 \'상승세\' 이끌어','시총 최상위 업종이라고 볼 수 있는 전기·전자에 대한 상승률이 0.6% 정도 상승률을 보이면서 시장에 대한 상승세들을 이끌어가고 있는 모습 보이고 있다.\r\n금융투자업계 전문가들은 주도주인 IT 관련주와 함께 유통 등 내수주가 소비심리 개선에 힘입어 상승할 가능성이 높다고 내다보고 있다.','1',0,5,'','2017-07-15 14:44:13',NULL,NULL),
(16,'4','04','건설 애널리스트들 \"어둠 걷히고 있다.\"','“현재 상황에서 주택시장이 언제 반전할지 전망하기는 매우 어렵다. 하지만 적어도 금융위기 이후 다시 불거진 주택리스크는 정점을 지나고 있다.”\r\n\r\n하반기 건설업 전망은 건설 담당 애널리스트 10명 중 7명은 하반기 건설업종이 상반기보다 좋아질 것으로 내다봤다. \r\n\r\n　<건설경제>가 올 하반기 건설업종 전망을 내놓은 증권사 9곳의 건설 애널리스들을 상대로 조사한 결과, 6곳에서 건설업에 대한 투자의견으로 ‘매수(Buy)’ 또는 ‘비중확대(Overweight)’를 제시했다. 톱픽(최선호주)으로는 현대건설이 6개사(복수응답)의 추천을 받아 가장 인기있는 종목으로 꼽혔다. \r\n\r\n　건설 담당 애널리스트들의 상당수가 하반기 시장을 긍정적으로 보는 이유는 이들 증권사들의 커버리지 종목이 대부분 대형종목이기 때문이다.\r\n\r\n　대형 건설사들은 중견사와 달리 최근 경기 불황 요인들을 충분히 통제할 능력을 갖췄다고 본 것이다. ','1',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(17,'5','05','자동차 주 실적 엔진 달고 질주','올 들어 지난 자동차 관련 업체들의 주가는 호조세를 나타냈다. \r\n연초 341이었던 운수장비 업종지수는 지난달말까지 46.0%의 상승률을 기록했다. \r\n\r\n같은 기간 종합주가지수 상승률 15.8%의 3배에 이른다. \r\n\r\n자동차 관련업체의 상승률이 높았던 이유는 몇가지로 정리할 수 있다. \r\n\r\n먼저 과거의 치열한 경쟁구조가 완화됐다는 점이다. \r\n\r\n국내 자동차산업의 구조조정 이후 현대차 그룹이 자동차 업계의 강자로 등장하면서 경쟁은 완화된 반면 국제경쟁력은 상승했다. \r\n\r\n이는 미국 시장점유율에서 분명하게 드러나고 있다. \r\n\r\n미국내 한국산 자동차 판매대수는 지난 1998년 17만대로 점유율은 1%에 불과했지만 지난해엔 62만대를 팔아 시장 점유율도 3.6%로 부쩍 높아졌다. \r\n\r\n지난해 미국 시장점유율 급증 배경으로는 지난 99년부터 현대자동차의 엔진과 트랜스미션에 대한 사후보증을 10년·10만 마일까지 늘리고 싼타페 뉴EF쏘나타 XG300 등 중형 이상의 신차량을 투입하면서 \'싼 차\'라는 인식에서 벗어나 브랜드 이미지를 강화한 전략이 제대로 맞아떨어졌다는 점이 꼽힌다. \r\n\r\n올해 1·4분기중에도 미국내 한국산 자동차 판매규모는 18%나 늘어났다. \r\n\r\n미국의 전체 자동차 판매량이 4.6% 줄어들었음을 감안하면 대단한 신장세다. ','1',1,0,'','2017-07-15 14:44:13',NULL,NULL),
(18,'6','06','상장사 실적시즌 \" 사상최대\" 향후 전망 맑음','상장사들이 지난 1분기 예상을 뛰어넘는 호실적을 기록한 가운데, 2분기와 올해 전체에 대한 실적 전망도 긍정적이라는 분석이 나왔다\r\n\r\n전자 애널리스트는 \"삼성전자, SK하이닉스의 깜짝실적이 빛났던 반도체 업종을 비롯해 전자·부품, 디스플레이 등 IT 하드웨어 전반의 호실적이 눈에 띈다\"고 강조했다.\r\n\r\n증권업종도 주요 증권사들이 모두 전망치를 웃돌았고, 은행도 8개 종목 중 7개 종목이 전망치를 상회했다.\r\n\r\n애널리스트는 \"1분기 깜짝실적이 반영되며 2017년 연간 이익전망치는 4월 이후 4.4% 상향 조정됐다\"고 설명했다.\r\n\r\n특히 1분기 확정실적에 대한 반영분을 제외한 2분기 이후의 전망치가 4.2% 상향조정된 것이 긍정적이라는 평가다.\r\n\r\n아울러 이번 1분기 이익이 전망치를 상회하며 이익전망치에 대한 신뢰도가 높아졌다고 풀이했다.','1',1,0,'','2017-07-15 14:44:13',NULL,NULL);

/*Table structure for table `job018` */

DROP TABLE IF EXISTS `job018`;

CREATE TABLE `job018` (
  `GOLD_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '금리변동KEY',
  `GOLD_CODE` varchar(2) DEFAULT NULL COMMENT '금리변동코드',
  `GOLD_DATE` int(11) DEFAULT NULL COMMENT '금리변동일자',
  `GOLD_RATE` int(11) DEFAULT NULL COMMENT '금리가격',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`GOLD_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Data for the table `job018` */

insert  into `job018`(`GOLD_KEY`,`GOLD_CODE`,`GOLD_DATE`,`GOLD_RATE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,'01',1,2,NULL,NULL,NULL,NULL),
(2,'02',2,1,NULL,NULL,NULL,NULL),
(3,'03',3,2,NULL,NULL,NULL,NULL),
(4,'04',4,3,NULL,NULL,NULL,NULL),
(5,'05',5,2,NULL,NULL,NULL,NULL),
(6,'06',6,2,NULL,NULL,NULL,NULL),
(7,'07',7,2,NULL,NULL,NULL,NULL),
(8,'08',8,3,NULL,NULL,NULL,NULL),
(9,'09',9,2,NULL,NULL,NULL,NULL),
(10,'10',10,2,NULL,NULL,NULL,NULL),
(11,'11',11,3,NULL,NULL,NULL,NULL),
(12,'12',12,2,NULL,NULL,NULL,NULL),
(13,'13',13,2,NULL,NULL,NULL,NULL),
(14,'14',14,3,NULL,NULL,NULL,NULL),
(15,'15',15,2,NULL,NULL,NULL,NULL),
(16,'16',16,3,NULL,NULL,NULL,NULL),
(17,'17',17,4,NULL,NULL,NULL,NULL),
(18,'18',18,2,NULL,NULL,NULL,NULL),
(19,'19',19,3,NULL,NULL,NULL,NULL),
(20,'20',20,1,NULL,NULL,NULL,NULL),
(21,'21',21,2,NULL,NULL,NULL,NULL),
(22,'22',22,1,NULL,NULL,NULL,NULL),
(23,'23',23,3,NULL,NULL,NULL,NULL),
(24,'24',24,2,NULL,NULL,NULL,NULL),
(25,'25',25,2,NULL,NULL,NULL,NULL),
(26,'26',26,3,NULL,NULL,NULL,NULL),
(27,'27',27,2,NULL,NULL,NULL,NULL),
(28,'28',28,2,NULL,NULL,NULL,NULL),
(29,'29',29,3,NULL,NULL,NULL,NULL),
(30,'30',30,2,NULL,NULL,NULL,NULL),
(31,'31',31,2,NULL,NULL,NULL,NULL),
(32,'32',32,3,NULL,NULL,NULL,NULL),
(33,'33',33,2,NULL,NULL,NULL,NULL),
(34,'34',34,3,NULL,NULL,NULL,NULL),
(35,'35',35,4,NULL,NULL,NULL,NULL),
(36,'36',36,2,NULL,NULL,NULL,NULL),
(37,'37',37,3,NULL,NULL,NULL,NULL),
(38,'38',38,1,NULL,NULL,NULL,NULL),
(39,'39',39,2,NULL,NULL,NULL,NULL),
(40,'40',40,2,NULL,NULL,NULL,NULL),
(41,'41',41,2,NULL,NULL,NULL,NULL),
(42,'42',42,3,NULL,NULL,NULL,NULL),
(43,'43',43,2,NULL,NULL,NULL,NULL),
(44,'44',44,2,NULL,NULL,NULL,NULL),
(45,'45',45,3,NULL,NULL,NULL,NULL),
(46,'46',46,2,NULL,NULL,NULL,NULL),
(47,'47',47,2,NULL,NULL,NULL,NULL),
(48,'48',48,3,NULL,NULL,NULL,NULL),
(49,'49',49,2,NULL,NULL,NULL,NULL),
(50,'50',50,3,NULL,NULL,NULL,NULL);

/*Table structure for table `job020` */

DROP TABLE IF EXISTS `job020`;

CREATE TABLE `job020` (
  `BOND_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '채권 KEY\r\n일련번호 자동생성',
  `BOND_TYPE` varchar(2) DEFAULT NULL COMMENT '채권구분 값\r\n국고채 = 01\r\n회사채 = 02',
  `BOND_NAME` varchar(64) DEFAULT NULL COMMENT '채권명\r\n예.\r\n국고채권 02750-1706(14-3)',
  `BOND_CODE` varchar(32) DEFAULT NULL COMMENT '채권표준코드\r\n예\r\nKR103501G463',
  `BOND_TOT` int(11) DEFAULT NULL COMMENT '채권 규모 발행금액',
  `BOND_PRICE` int(11) DEFAULT NULL COMMENT '현재가격(종가기준) 인 날짜',
  `BOND_PER` int(11) DEFAULT NULL COMMENT '예상 수익율\r\n10%\r\n20%\r\n-10%',
  `BOND_INDATE` date DEFAULT NULL COMMENT '날짜정보\r\n예\r\n20160512',
  `BOND_CLDATE` date DEFAULT NULL COMMENT '날짜정보\r\n예\r\n20180512',
  `BOND_BOTIME` int(11) DEFAULT NULL COMMENT '이자계산주기 등록(개월수 등록)\r\n3 \r\n6 \r\n12',
  `BOND_BANK` varchar(32) DEFAULT NULL COMMENT '등록기관 정보 등록\r\n예\r\n한국은행',
  `BOND_PROD` varchar(32) DEFAULT NULL COMMENT '지급등록기관 등록\r\n예\r\n한국\r\n미국\r\n일본',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '현재 ROW를 최초로 등록한 사람의 사용자 ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '현재 ROW가 최초로 등록된 일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '현재 ROW를 최종적으로 수정한 사람의 사용자 ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '현재 ROW가 최종적으로 수정된 일시',
  PRIMARY KEY (`BOND_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `job020` */

insert  into `job020`(`BOND_KEY`,`BOND_TYPE`,`BOND_NAME`,`BOND_CODE`,`BOND_TOT`,`BOND_PRICE`,`BOND_PER`,`BOND_INDATE`,`BOND_CLDATE`,`BOND_BOTIME`,`BOND_BANK`,`BOND_PROD`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,'01','국고채권01875-2606(16-3)','KR103502G669',50000000,10000,5,'2015-05-10','2025-05-10',3,'한국은행','한국','','0000-00-00 00:00:00',NULL,NULL),
(2,'01','국민주택1종채권14-05','KR101501D454',60000000,10000,5,'2016-10-10','2026-10-10',3,'한국은행\r\n','한국','','0000-00-00 00:00:00',NULL,NULL),
(3,'01','물가연동국고채권01125-2306(13-4)','KR103502G362',70000000,10000,5,'2017-04-10','2027-04-10',3,'한국은행\r\n','한국','','0000-00-00 00:00:00',NULL,NULL),
(4,'02','한국서부발전32-1','KR6063621694',50000000,10000,10,'2014-08-10','2024-08-10',6,'기업은행\r\n','한국','','0000-00-00 00:00:00',NULL,NULL),
(5,'02','하나금융지주35','KR6086791664',60000000,10000,20,'2015-03-10','2025-03-10',6,'하나은행\r\n','한국','','0000-00-00 00:00:00',NULL,NULL),
(6,'02','현대제철119-1','KR60040216A8',70000000,10000,30,'2016-02-10','2026-02-10',6,'신한은행\r\n','한국','','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `job021` */

DROP TABLE IF EXISTS `job021`;

CREATE TABLE `job021` (
  `BOND_KEY` int(10) unsigned NOT NULL COMMENT '채권정보 KEY 정보\r\n채권중 회사채일 경우 연결 한다.',
  `CREDIT_DATE` int(10) unsigned NOT NULL COMMENT '신용등급 변경일',
  `CREDIT_RANK` varchar(3) DEFAULT NULL COMMENT '신용등급\r\n예\r\nAAA\r\nAA\r\nA\r\nBBB\r\nBB\r\nB\r\nCCC\r\n....',
  `CREDIT_MEMO` varchar(512) DEFAULT NULL COMMENT '등급정의 설명\r\nAAA = 상거래 위한 신용능력이 최우량급이며, 환경변화에 충분한 대처가 가능한 기업',
  `CREDIT_SCORE` int(11) DEFAULT NULL COMMENT '신용등급별로 점수를 부여 한다.\r\n예\r\nAAA = 6 (향후 순익 계산할때..해당 점수를 포함하여 순이익을 계산해준다.)\r\nAA =5\r\nA = 4\r\nBBB =3\r\nBB=2\r\nB=1\r\nCCC = -1\r\nCC= -2\r\n...',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '현재 ROW를 최초로 등록한 사람의 사용자 ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '현재 ROW가 최초로 등록된 일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '현재 ROW를 최종적으로 수정한 사람의 사용자 ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '현재 ROW가 최종적으로 수정된 일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job021` */

insert  into `job021`(`BOND_KEY`,`CREDIT_DATE`,`CREDIT_RANK`,`CREDIT_MEMO`,`CREDIT_SCORE`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(4,1,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,2,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,3,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,4,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,5,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,6,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,7,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,8,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,9,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,10,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,11,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,12,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,13,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,14,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,15,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,16,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,17,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,18,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,19,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,20,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,21,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,22,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,23,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,24,'B','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가능성이 높은 기업',1,NULL,NULL,NULL,NULL),
(4,25,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,26,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,27,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,28,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,29,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,30,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,31,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,32,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,33,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,34,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,35,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,36,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,37,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,38,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,39,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,40,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(4,41,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,42,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,43,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,44,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,45,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,46,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,47,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(4,48,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,49,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(4,50,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,1,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,2,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,3,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,4,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,5,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,6,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,7,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,8,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,9,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,10,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,11,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,12,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,13,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,14,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,15,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,16,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,17,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,18,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,19,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,20,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,21,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,22,'B','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가능성이 높은 기업',1,NULL,NULL,NULL,NULL),
(5,23,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,24,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,25,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,26,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,27,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,28,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,29,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,30,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,31,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,32,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,33,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,34,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,35,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,36,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,37,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,38,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,39,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,40,'B','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가능성이 높은 기업',1,NULL,NULL,NULL,NULL),
(5,41,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,42,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,43,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,44,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,45,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(5,46,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(5,47,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,48,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,49,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(5,50,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,1,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,2,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,3,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,4,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,5,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,6,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,7,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,8,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,9,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,10,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,11,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,12,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,13,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,14,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,15,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,16,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,17,'B','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가능성이 높은 기업',1,NULL,NULL,NULL,NULL),
(6,18,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,19,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,20,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,21,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,22,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,23,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,24,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,25,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,26,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,27,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,28,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,29,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,30,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,31,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,32,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,33,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,34,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,35,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,36,'BB','상거래를 위한 신용능력이 보통이며, 경제여건 및 환경악화 시에는 거래안정성 저하가 우려되는 기업',2,NULL,NULL,NULL,NULL),
(6,37,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,38,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,39,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,40,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,41,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,42,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,43,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,44,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,45,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,46,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,47,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,48,'BBB','상거래를 위한 신용능력이 양호하나, 경제여건 및 환경악화에 따라 거래안정성 저하가능성이 있는 기업',3,NULL,NULL,NULL,NULL),
(6,49,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL),
(6,50,'A','상거래를 위한 신용능력이 최우량급이며, 환경변화에 충분히 대처능력이 제한적인 기업',4,NULL,NULL,NULL,NULL);

/*Table structure for table `job022` */

DROP TABLE IF EXISTS `job022`;

CREATE TABLE `job022` (
  `BOND_KEY` int(10) unsigned NOT NULL COMMENT '채권 KEY',
  `BOND_DATE` int(11) DEFAULT NULL COMMENT '월별로 채권 금액정보를 등록 해놓는다.\r\n1~50 개의 자료',
  `BOND_NOWPRICE` int(11) DEFAULT NULL COMMENT '월별로 채권 금액정보를 등록 해놓는다.\r\n예\r\n1= 10,000\r\n2 = 11,000\r\n3 =  9,000\r\n..',
  `BOND_ADDPAY` int(11) DEFAULT NULL COMMENT '월별로 채권 이자 금액정보를 등록 해놓는다.\r\n예\r\n1달= 100\r\n2달 = 200\r\n3달 = 300',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job022` */

insert  into `job022`(`BOND_KEY`,`BOND_DATE`,`BOND_NOWPRICE`,`BOND_ADDPAY`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,10300,NULL,NULL,NULL,NULL,NULL),
(1,2,10310,NULL,NULL,NULL,NULL,NULL),
(1,3,10320,NULL,NULL,NULL,NULL,NULL),
(1,4,10330,NULL,NULL,NULL,NULL,NULL),
(1,5,10340,NULL,NULL,NULL,NULL,NULL),
(1,6,10350,NULL,NULL,NULL,NULL,NULL),
(1,7,10360,NULL,NULL,NULL,NULL,NULL),
(1,8,10370,NULL,NULL,NULL,NULL,NULL),
(1,9,10380,NULL,NULL,NULL,NULL,NULL),
(1,10,10390,NULL,NULL,NULL,NULL,NULL),
(1,11,10400,NULL,NULL,NULL,NULL,NULL),
(1,12,10410,NULL,NULL,NULL,NULL,NULL),
(1,13,10420,NULL,NULL,NULL,NULL,NULL),
(1,14,10430,NULL,NULL,NULL,NULL,NULL),
(1,15,10440,NULL,NULL,NULL,NULL,NULL),
(1,16,10450,NULL,NULL,NULL,NULL,NULL),
(1,17,10460,NULL,NULL,NULL,NULL,NULL),
(1,18,10470,NULL,NULL,NULL,NULL,NULL),
(1,19,10480,NULL,NULL,NULL,NULL,NULL),
(1,20,10490,NULL,NULL,NULL,NULL,NULL),
(1,21,10990,NULL,NULL,NULL,NULL,NULL),
(1,22,10100,NULL,NULL,NULL,NULL,NULL),
(1,23,10510,NULL,NULL,NULL,NULL,NULL),
(1,24,10520,NULL,NULL,NULL,NULL,NULL),
(1,25,10530,NULL,NULL,NULL,NULL,NULL),
(1,26,10540,NULL,NULL,NULL,NULL,NULL),
(1,27,10650,NULL,NULL,NULL,NULL,NULL),
(1,28,10660,NULL,NULL,NULL,NULL,NULL),
(1,29,10570,NULL,NULL,NULL,NULL,NULL),
(1,30,10580,NULL,NULL,NULL,NULL,NULL),
(1,31,10590,NULL,NULL,NULL,NULL,NULL),
(1,32,10600,NULL,NULL,NULL,NULL,NULL),
(1,33,10610,NULL,NULL,NULL,NULL,NULL),
(1,34,10720,NULL,NULL,NULL,NULL,NULL),
(1,35,10730,NULL,NULL,NULL,NULL,NULL),
(1,36,10840,NULL,NULL,NULL,NULL,NULL),
(1,37,10850,NULL,NULL,NULL,NULL,NULL),
(1,38,10660,NULL,NULL,NULL,NULL,NULL),
(1,39,10670,NULL,NULL,NULL,NULL,NULL),
(1,40,10680,NULL,NULL,NULL,NULL,NULL),
(1,41,10690,NULL,NULL,NULL,NULL,NULL),
(1,42,10700,NULL,NULL,NULL,NULL,NULL),
(1,43,10710,NULL,NULL,NULL,NULL,NULL),
(1,44,10920,NULL,NULL,NULL,NULL,NULL),
(1,45,10740,NULL,NULL,NULL,NULL,NULL),
(1,46,10750,NULL,NULL,NULL,NULL,NULL),
(1,47,10760,NULL,NULL,NULL,NULL,NULL),
(1,48,10770,NULL,NULL,NULL,NULL,NULL),
(1,49,10780,NULL,NULL,NULL,NULL,NULL),
(1,50,10790,NULL,NULL,NULL,NULL,NULL),
(2,1,10500,NULL,NULL,NULL,NULL,NULL),
(2,2,10510,NULL,NULL,NULL,NULL,NULL),
(2,3,10520,NULL,NULL,NULL,NULL,NULL),
(2,4,10530,NULL,NULL,NULL,NULL,NULL),
(2,5,10540,NULL,NULL,NULL,NULL,NULL),
(2,6,10550,NULL,NULL,NULL,NULL,NULL),
(2,7,10560,NULL,NULL,NULL,NULL,NULL),
(2,8,10570,NULL,NULL,NULL,NULL,NULL),
(2,9,10580,NULL,NULL,NULL,NULL,NULL),
(2,10,10590,NULL,NULL,NULL,NULL,NULL),
(2,11,10600,NULL,NULL,NULL,NULL,NULL),
(2,12,10610,NULL,NULL,NULL,NULL,NULL),
(2,13,10620,NULL,NULL,NULL,NULL,NULL),
(2,14,10630,NULL,NULL,NULL,NULL,NULL),
(2,15,10640,NULL,NULL,NULL,NULL,NULL),
(2,16,10650,NULL,NULL,NULL,NULL,NULL),
(2,17,10660,NULL,NULL,NULL,NULL,NULL),
(2,18,10670,NULL,NULL,NULL,NULL,NULL),
(2,19,10680,NULL,NULL,NULL,NULL,NULL),
(2,20,10690,NULL,NULL,NULL,NULL,NULL),
(2,21,10700,NULL,NULL,NULL,NULL,NULL),
(2,22,10710,NULL,NULL,NULL,NULL,NULL),
(2,23,10720,NULL,NULL,NULL,NULL,NULL),
(2,24,10730,NULL,NULL,NULL,NULL,NULL),
(2,25,10740,NULL,NULL,NULL,NULL,NULL),
(2,26,10750,NULL,NULL,NULL,NULL,NULL),
(2,27,10760,NULL,NULL,NULL,NULL,NULL),
(2,28,10770,NULL,NULL,NULL,NULL,NULL),
(2,29,10780,NULL,NULL,NULL,NULL,NULL),
(2,30,10790,NULL,NULL,NULL,NULL,NULL),
(2,31,10800,NULL,NULL,NULL,NULL,NULL),
(2,32,10810,NULL,NULL,NULL,NULL,NULL),
(2,33,10820,NULL,NULL,NULL,NULL,NULL),
(2,34,10830,NULL,NULL,NULL,NULL,NULL),
(2,35,10840,NULL,NULL,NULL,NULL,NULL),
(2,36,10850,NULL,NULL,NULL,NULL,NULL),
(2,37,10860,NULL,NULL,NULL,NULL,NULL),
(2,38,10870,NULL,NULL,NULL,NULL,NULL),
(2,39,10880,NULL,NULL,NULL,NULL,NULL),
(2,40,10890,NULL,NULL,NULL,NULL,NULL),
(2,41,10900,NULL,NULL,NULL,NULL,NULL),
(2,42,10910,NULL,NULL,NULL,NULL,NULL),
(2,43,10920,NULL,NULL,NULL,NULL,NULL),
(2,44,10930,NULL,NULL,NULL,NULL,NULL),
(2,45,10940,NULL,NULL,NULL,NULL,NULL),
(2,46,10950,NULL,NULL,NULL,NULL,NULL),
(2,47,10960,NULL,NULL,NULL,NULL,NULL),
(2,48,10970,NULL,NULL,NULL,NULL,NULL),
(2,49,10980,NULL,NULL,NULL,NULL,NULL),
(2,50,10990,NULL,NULL,NULL,NULL,NULL),
(3,1,10500,NULL,NULL,NULL,NULL,NULL),
(3,2,10510,NULL,NULL,NULL,NULL,NULL),
(3,3,10520,NULL,NULL,NULL,NULL,NULL),
(3,4,10530,NULL,NULL,NULL,NULL,NULL),
(3,5,10540,NULL,NULL,NULL,NULL,NULL),
(3,6,10550,NULL,NULL,NULL,NULL,NULL),
(3,7,10560,NULL,NULL,NULL,NULL,NULL),
(3,8,10570,NULL,NULL,NULL,NULL,NULL),
(3,9,10580,NULL,NULL,NULL,NULL,NULL),
(3,10,10590,NULL,NULL,NULL,NULL,NULL),
(3,11,10600,NULL,NULL,NULL,NULL,NULL),
(3,12,10610,NULL,NULL,NULL,NULL,NULL),
(3,13,10620,NULL,NULL,NULL,NULL,NULL),
(3,14,10630,NULL,NULL,NULL,NULL,NULL),
(3,15,10640,NULL,NULL,NULL,NULL,NULL),
(3,16,10650,NULL,NULL,NULL,NULL,NULL),
(3,17,10660,NULL,NULL,NULL,NULL,NULL),
(3,18,10670,NULL,NULL,NULL,NULL,NULL),
(3,19,10680,NULL,NULL,NULL,NULL,NULL),
(3,20,10690,NULL,NULL,NULL,NULL,NULL),
(3,21,10700,NULL,NULL,NULL,NULL,NULL),
(3,22,10710,NULL,NULL,NULL,NULL,NULL),
(3,23,10720,NULL,NULL,NULL,NULL,NULL),
(3,24,10730,NULL,NULL,NULL,NULL,NULL),
(3,25,10740,NULL,NULL,NULL,NULL,NULL),
(3,26,10750,NULL,NULL,NULL,NULL,NULL),
(3,27,10760,NULL,NULL,NULL,NULL,NULL),
(3,28,10770,NULL,NULL,NULL,NULL,NULL),
(3,29,10780,NULL,NULL,NULL,NULL,NULL),
(3,30,10790,NULL,NULL,NULL,NULL,NULL),
(3,31,10800,NULL,NULL,NULL,NULL,NULL),
(3,32,10810,NULL,NULL,NULL,NULL,NULL),
(3,33,10820,NULL,NULL,NULL,NULL,NULL),
(3,34,10830,NULL,NULL,NULL,NULL,NULL),
(3,35,10840,NULL,NULL,NULL,NULL,NULL),
(3,36,10850,NULL,NULL,NULL,NULL,NULL),
(3,37,10860,NULL,NULL,NULL,NULL,NULL),
(3,38,10870,NULL,NULL,NULL,NULL,NULL),
(3,39,10880,NULL,NULL,NULL,NULL,NULL),
(3,40,10890,NULL,NULL,NULL,NULL,NULL),
(3,41,10900,NULL,NULL,NULL,NULL,NULL),
(3,42,10910,NULL,NULL,NULL,NULL,NULL),
(3,43,10920,NULL,NULL,NULL,NULL,NULL),
(3,44,10930,NULL,NULL,NULL,NULL,NULL),
(3,45,10940,NULL,NULL,NULL,NULL,NULL),
(3,46,10950,NULL,NULL,NULL,NULL,NULL),
(3,47,10960,NULL,NULL,NULL,NULL,NULL),
(3,48,10970,NULL,NULL,NULL,NULL,NULL),
(3,49,10980,NULL,NULL,NULL,NULL,NULL),
(3,50,10990,NULL,NULL,NULL,NULL,NULL),
(4,1,10100,NULL,NULL,NULL,NULL,NULL),
(4,2,10510,NULL,NULL,NULL,NULL,NULL),
(4,3,10520,NULL,NULL,NULL,NULL,NULL),
(4,4,10530,NULL,NULL,NULL,NULL,NULL),
(4,5,10540,NULL,NULL,NULL,NULL,NULL),
(4,6,10650,NULL,NULL,NULL,NULL,NULL),
(4,7,10660,NULL,NULL,NULL,NULL,NULL),
(4,8,10570,NULL,NULL,NULL,NULL,NULL),
(4,9,10580,NULL,NULL,NULL,NULL,NULL),
(4,10,10590,NULL,NULL,NULL,NULL,NULL),
(4,11,10600,NULL,NULL,NULL,NULL,NULL),
(4,12,10610,NULL,NULL,NULL,NULL,NULL),
(4,13,10720,NULL,NULL,NULL,NULL,NULL),
(4,14,10730,NULL,NULL,NULL,NULL,NULL),
(4,15,10840,NULL,NULL,NULL,NULL,NULL),
(4,16,10850,NULL,NULL,NULL,NULL,NULL),
(4,17,10660,NULL,NULL,NULL,NULL,NULL),
(4,18,10670,NULL,NULL,NULL,NULL,NULL),
(4,19,10680,NULL,NULL,NULL,NULL,NULL),
(4,20,10690,NULL,NULL,NULL,NULL,NULL),
(4,21,10700,NULL,NULL,NULL,NULL,NULL),
(4,22,10710,NULL,NULL,NULL,NULL,NULL),
(4,23,10920,NULL,NULL,NULL,NULL,NULL),
(4,24,10930,NULL,NULL,NULL,NULL,NULL),
(4,25,10940,NULL,NULL,NULL,NULL,NULL),
(4,26,10750,NULL,NULL,NULL,NULL,NULL),
(4,27,10580,NULL,NULL,NULL,NULL,NULL),
(4,28,10590,NULL,NULL,NULL,NULL,NULL),
(4,29,10600,NULL,NULL,NULL,NULL,NULL),
(4,30,10610,NULL,NULL,NULL,NULL,NULL),
(4,31,10720,NULL,NULL,NULL,NULL,NULL),
(4,32,10730,NULL,NULL,NULL,NULL,NULL),
(4,33,10840,NULL,NULL,NULL,NULL,NULL),
(4,34,10850,NULL,NULL,NULL,NULL,NULL),
(4,35,10660,NULL,NULL,NULL,NULL,NULL),
(4,36,10670,NULL,NULL,NULL,NULL,NULL),
(4,37,10680,NULL,NULL,NULL,NULL,NULL),
(4,38,10690,NULL,NULL,NULL,NULL,NULL),
(4,39,10700,NULL,NULL,NULL,NULL,NULL),
(4,40,10710,NULL,NULL,NULL,NULL,NULL),
(4,41,10920,NULL,NULL,NULL,NULL,NULL),
(4,42,10930,NULL,NULL,NULL,NULL,NULL),
(4,43,10940,NULL,NULL,NULL,NULL,NULL),
(4,44,10930,NULL,NULL,NULL,NULL,NULL),
(4,45,10940,NULL,NULL,NULL,NULL,NULL),
(4,46,10950,NULL,NULL,NULL,NULL,NULL),
(4,47,10960,NULL,NULL,NULL,NULL,NULL),
(4,48,10970,NULL,NULL,NULL,NULL,NULL),
(4,49,10980,NULL,NULL,NULL,NULL,NULL),
(4,50,10990,NULL,NULL,NULL,NULL,NULL),
(5,1,10800,NULL,NULL,NULL,NULL,NULL),
(5,2,10810,NULL,NULL,NULL,NULL,NULL),
(5,3,10820,NULL,NULL,NULL,NULL,NULL),
(5,4,10830,NULL,NULL,NULL,NULL,NULL),
(5,5,10840,NULL,NULL,NULL,NULL,NULL),
(5,6,10850,NULL,NULL,NULL,NULL,NULL),
(5,7,10860,NULL,NULL,NULL,NULL,NULL),
(5,8,10870,NULL,NULL,NULL,NULL,NULL),
(5,9,10880,NULL,NULL,NULL,NULL,NULL),
(5,10,10890,NULL,NULL,NULL,NULL,NULL),
(5,11,10900,NULL,NULL,NULL,NULL,NULL),
(5,12,10910,NULL,NULL,NULL,NULL,NULL),
(5,13,10920,NULL,NULL,NULL,NULL,NULL),
(5,14,10930,NULL,NULL,NULL,NULL,NULL),
(5,15,10940,NULL,NULL,NULL,NULL,NULL),
(5,16,10950,NULL,NULL,NULL,NULL,NULL),
(5,17,10960,NULL,NULL,NULL,NULL,NULL),
(5,18,10970,NULL,NULL,NULL,NULL,NULL),
(5,19,10980,NULL,NULL,NULL,NULL,NULL),
(5,20,10990,NULL,NULL,NULL,NULL,NULL),
(5,21,10100,NULL,NULL,NULL,NULL,NULL),
(5,22,10510,NULL,NULL,NULL,NULL,NULL),
(5,23,10520,NULL,NULL,NULL,NULL,NULL),
(5,24,10530,NULL,NULL,NULL,NULL,NULL),
(5,25,10540,NULL,NULL,NULL,NULL,NULL),
(5,26,10650,NULL,NULL,NULL,NULL,NULL),
(5,27,10660,NULL,NULL,NULL,NULL,NULL),
(5,28,10570,NULL,NULL,NULL,NULL,NULL),
(5,29,10580,NULL,NULL,NULL,NULL,NULL),
(5,30,10590,NULL,NULL,NULL,NULL,NULL),
(5,31,10600,NULL,NULL,NULL,NULL,NULL),
(5,32,10610,NULL,NULL,NULL,NULL,NULL),
(5,33,10720,NULL,NULL,NULL,NULL,NULL),
(5,34,10730,NULL,NULL,NULL,NULL,NULL),
(5,35,10840,NULL,NULL,NULL,NULL,NULL),
(5,36,10850,NULL,NULL,NULL,NULL,NULL),
(5,37,10660,NULL,NULL,NULL,NULL,NULL),
(5,38,10670,NULL,NULL,NULL,NULL,NULL),
(5,39,10680,NULL,NULL,NULL,NULL,NULL),
(5,40,10690,NULL,NULL,NULL,NULL,NULL),
(5,41,10700,NULL,NULL,NULL,NULL,NULL),
(5,42,10710,NULL,NULL,NULL,NULL,NULL),
(5,43,10920,NULL,NULL,NULL,NULL,NULL),
(5,44,10930,NULL,NULL,NULL,NULL,NULL),
(5,45,10940,NULL,NULL,NULL,NULL,NULL),
(5,46,10750,NULL,NULL,NULL,NULL,NULL),
(5,47,10580,NULL,NULL,NULL,NULL,NULL),
(5,48,10590,NULL,NULL,NULL,NULL,NULL),
(5,49,10600,NULL,NULL,NULL,NULL,NULL),
(5,50,10610,NULL,NULL,NULL,NULL,NULL),
(6,1,10330,NULL,NULL,NULL,NULL,NULL),
(6,2,10340,NULL,NULL,NULL,NULL,NULL),
(6,3,10350,NULL,NULL,NULL,NULL,NULL),
(6,4,10360,NULL,NULL,NULL,NULL,NULL),
(6,5,10370,NULL,NULL,NULL,NULL,NULL),
(6,6,10380,NULL,NULL,NULL,NULL,NULL),
(6,7,10390,NULL,NULL,NULL,NULL,NULL),
(6,8,10400,NULL,NULL,NULL,NULL,NULL),
(6,9,10410,NULL,NULL,NULL,NULL,NULL),
(6,10,10420,NULL,NULL,NULL,NULL,NULL),
(6,11,10430,NULL,NULL,NULL,NULL,NULL),
(6,12,10440,NULL,NULL,NULL,NULL,NULL),
(6,13,10450,NULL,NULL,NULL,NULL,NULL),
(6,14,10460,NULL,NULL,NULL,NULL,NULL),
(6,15,10470,NULL,NULL,NULL,NULL,NULL),
(6,16,10480,NULL,NULL,NULL,NULL,NULL),
(6,17,10490,NULL,NULL,NULL,NULL,NULL),
(6,18,10500,NULL,NULL,NULL,NULL,NULL),
(6,19,10510,NULL,NULL,NULL,NULL,NULL),
(6,20,10520,NULL,NULL,NULL,NULL,NULL),
(6,21,10530,NULL,NULL,NULL,NULL,NULL),
(6,22,10540,NULL,NULL,NULL,NULL,NULL),
(6,23,10550,NULL,NULL,NULL,NULL,NULL),
(6,24,10560,NULL,NULL,NULL,NULL,NULL),
(6,25,10570,NULL,NULL,NULL,NULL,NULL),
(6,26,10580,NULL,NULL,NULL,NULL,NULL),
(6,27,10590,NULL,NULL,NULL,NULL,NULL),
(6,28,10600,NULL,NULL,NULL,NULL,NULL),
(6,29,10540,NULL,NULL,NULL,NULL,NULL),
(6,30,10650,NULL,NULL,NULL,NULL,NULL),
(6,31,10660,NULL,NULL,NULL,NULL,NULL),
(6,32,10570,NULL,NULL,NULL,NULL,NULL),
(6,33,10580,NULL,NULL,NULL,NULL,NULL),
(6,34,10590,NULL,NULL,NULL,NULL,NULL),
(6,35,10600,NULL,NULL,NULL,NULL,NULL),
(6,36,10610,NULL,NULL,NULL,NULL,NULL),
(6,37,10720,NULL,NULL,NULL,NULL,NULL),
(6,38,10730,NULL,NULL,NULL,NULL,NULL),
(6,39,10840,NULL,NULL,NULL,NULL,NULL),
(6,40,10850,NULL,NULL,NULL,NULL,NULL),
(6,41,10660,NULL,NULL,NULL,NULL,NULL),
(6,42,10670,NULL,NULL,NULL,NULL,NULL),
(6,43,10680,NULL,NULL,NULL,NULL,NULL),
(6,44,10690,NULL,NULL,NULL,NULL,NULL),
(6,45,10700,NULL,NULL,NULL,NULL,NULL),
(6,46,10710,NULL,NULL,NULL,NULL,NULL),
(6,47,10920,NULL,NULL,NULL,NULL,NULL),
(6,48,10930,NULL,NULL,NULL,NULL,NULL),
(6,49,10940,NULL,NULL,NULL,NULL,NULL),
(6,50,10750,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `job023` */

DROP TABLE IF EXISTS `job023`;

CREATE TABLE `job023` (
  `MKEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종합KEY',
  `M_CODE` varchar(4) NOT NULL COMMENT '종합코드',
  `M_NAME` varchar(32) NOT NULL COMMENT '종합코드명',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`MKEY`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `job023` */

insert  into `job023`(`MKEY`,`M_CODE`,`M_NAME`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(2,'A002','펀드보유기간','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(3,'A003','체험자투자원금','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(4,'A004','난이도조절','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(6,'A006','youtube 링크','','0000-00-00 00:00:00','','0000-00-00 00:00:00');

/*Table structure for table `job023_backup` */

DROP TABLE IF EXISTS `job023_backup`;

CREATE TABLE `job023_backup` (
  `MKEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '종합KEY',
  `M_CODE` varchar(4) NOT NULL COMMENT '종합코드',
  `M_NAME` varchar(32) NOT NULL COMMENT '종합코드명',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) NOT NULL,
  `UPDATE_DATE` datetime NOT NULL,
  PRIMARY KEY (`MKEY`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `job023_backup` */

insert  into `job023_backup`(`MKEY`,`M_CODE`,`M_NAME`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,'A001','고객투자금','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(2,'A002','펀드보유기간','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(3,'A003','체험자투자원금','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(4,'A004','난이도조절','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(5,'A005','펀드매니저 수익률','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(6,'A006','youtube 링크','','0000-00-00 00:00:00','','0000-00-00 00:00:00');

/*Table structure for table `job024` */

DROP TABLE IF EXISTS `job024`;

CREATE TABLE `job024` (
  `KEY` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MKEY` int(10) unsigned NOT NULL COMMENT '종합KEY',
  `MD_CODE` varchar(16) NOT NULL COMMENT '종합상세코드',
  `MD_NAME` varchar(256) NOT NULL COMMENT '종합상세명',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `job024` */

insert  into `job024`(`KEY`,`MKEY`,`MD_CODE`,`MD_NAME`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'투자자 A','1000000','','0000-00-00 00:00:00',NULL,NULL),
(2,1,'투자자 B','2000000','','0000-00-00 00:00:00',NULL,NULL),
(3,1,'투자자 C','3000000','','0000-00-00 00:00:00',NULL,NULL),
(4,2,'A','3','','0000-00-00 00:00:00',NULL,NULL),
(5,2,'B','6','','0000-00-00 00:00:00',NULL,NULL),
(6,2,'C','9','','0000-00-00 00:00:00','','0000-00-00 00:00:00'),
(7,2,'D','12','','0000-00-00 00:00:00',NULL,NULL),
(8,2,'E','36','','0000-00-00 00:00:00',NULL,NULL),
(14,3,'A','20000000','','0000-00-00 00:00:00',NULL,NULL),
(15,4,'1','30','','0000-00-00 00:00:00',NULL,NULL),
(16,4,'2','50','','0000-00-00 00:00:00',NULL,NULL),
(17,4,'3','120','','0000-00-00 00:00:00',NULL,NULL),
(18,5,'1','12','','0000-00-00 00:00:00',NULL,NULL),
(19,6,'A','https://www.youtube.com/embed/I6_BwoX2MY0','','0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `job025` */

DROP TABLE IF EXISTS `job025`;

CREATE TABLE `job025` (
  `SECT_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '업종KEY',
  `COMP_KEY` int(11) NOT NULL COMMENT '종목KEY\r\n고유키..일련번호(자동생성)',
  `COMP_HEAD` varchar(32) DEFAULT NULL COMMENT '기업정보 타이틀',
  `COMP_FILE` text COMMENT '기업 내용',
  `UPDOWN` enum('1','2') DEFAULT '1' COMMENT '등락에 영향이 오르는 정보인지 내리는 정보인지 체크\r\n\r\n1= 내림\r\n2= 오름',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SECT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job025` */

/*Table structure for table `job026` */

DROP TABLE IF EXISTS `job026`;

CREATE TABLE `job026` (
  `SECT_KEY` int(10) unsigned NOT NULL COMMENT '업종KEY',
  `COMP_KEY` int(10) unsigned NOT NULL COMMENT '종목KEY\r\n고유키..일련번호(자동생성)',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`SECT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job026` */

/*Table structure for table `job030` */

DROP TABLE IF EXISTS `job030`;

CREATE TABLE `job030` (
  `QUES_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키..일련번호(자동생성)',
  `QUES_NO` int(11) NOT NULL COMMENT '설문 순서',
  `QUES_NAME` varchar(128) DEFAULT NULL COMMENT '설문 질문',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`QUES_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `job030` */

insert  into `job030`(`QUES_KEY`,`QUES_NO`,`QUES_NAME`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,'투자를 몇 세 부터 시작하고 싶으십니까?',NULL,NULL,NULL,NULL),
(2,3,'투자에서 중요하게 생각하는 것은 무엇입니까?',NULL,NULL,NULL,NULL),
(3,4,'투자했을 때 수익을 얻고 싶은 비율과 손실이 생겨도 감당할 수 있는 비율은 얼마입니까?',NULL,NULL,NULL,NULL),
(4,2,'금융 투자에 어느정도 관심이 있으십니까?',NULL,NULL,NULL,NULL),
(5,5,'돈을 투자 한다면 어떠한 상품에 투자 하고 싶습니까?\r\n',NULL,NULL,NULL,NULL);

/*Table structure for table `job031` */

DROP TABLE IF EXISTS `job031`;

CREATE TABLE `job031` (
  `ANSW_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '고유키..일련번호(자동생성)',
  `QUES_KEY` int(10) unsigned NOT NULL COMMENT '설문KEY',
  `ANSW_NO` int(11) DEFAULT NULL COMMENT '답변 순서',
  `ANSW_NAME` varchar(128) DEFAULT NULL COMMENT '답변 내용',
  `ANSW_POINT` int(11) DEFAULT NULL COMMENT '답변선택시에 가중치(점수) 정보\r\n10~100점',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ANSW_KEY`,`QUES_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `job031` */

insert  into `job031`(`ANSW_KEY`,`QUES_KEY`,`ANSW_NO`,`ANSW_NAME`,`ANSW_POINT`,`INSERT_EMP_NO`,`INSERT_DATE`,`UPDATE_EMP_NO`,`UPDATE_DATE`) values 
(1,1,1,'61세 이상',1,NULL,NULL,NULL,NULL),
(2,1,2,'51세 ~ 60세',2,NULL,NULL,NULL,NULL),
(3,1,3,'41세 ~ 50세',3,NULL,NULL,NULL,NULL),
(4,1,4,'31세 ~ 40세',4,NULL,NULL,NULL,NULL),
(5,1,5,'30세이하\r\n',5,NULL,NULL,NULL,NULL),
(6,2,1,'투자수익 보다는 원금보전을 중요 시 하면서 투자.',1,NULL,NULL,NULL,NULL),
(7,2,2,'어느정도 원금 손실이 있더라도 예,적금보다 높은 수익을 위해 투자.',2,NULL,NULL,NULL,NULL),
(8,2,3,'손실 위험이 있더라도 투자수익을 중요 시 하면서 투자.',3,NULL,NULL,NULL,NULL),
(10,3,1,'±5%이하',1,NULL,NULL,NULL,NULL),
(11,3,2,'±10%이하',2,NULL,NULL,NULL,NULL),
(12,3,3,'±15%이하',3,NULL,NULL,NULL,NULL),
(13,3,4,'±20%이상',4,NULL,NULL,NULL,NULL),
(14,4,1,'전혀 관심없다.',1,NULL,NULL,NULL,NULL),
(15,4,2,'투자의 손실가능성에 대해 어느정도 알고 있다.',2,NULL,NULL,NULL,NULL),
(16,4,3,'기회가 된다면 투자를 통해 수익을 얻고 싶다.',3,NULL,NULL,NULL,NULL),
(17,5,1,'채권',1,NULL,NULL,NULL,NULL),
(18,5,2,'채권+주식 혼합형 펀드',2,NULL,NULL,NULL,NULL),
(19,5,3,'주식',3,NULL,NULL,NULL,NULL);

/*Table structure for table `job033` */

DROP TABLE IF EXISTS `job033`;

CREATE TABLE `job033` (
  `CUSTOM_KEY` int(11) NOT NULL COMMENT '펀드투자자KEY',
  `CUSTOM_NAME` varchar(16) DEFAULT NULL COMMENT '펀드투자자명',
  `CUSTOM_TOT` int(11) DEFAULT NULL COMMENT '투자보유금액',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`CUSTOM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job033` */

/*Table structure for table `job050` */

DROP TABLE IF EXISTS `job050`;

CREATE TABLE `job050` (
  `EMPL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '체험자KEY',
  `EMPL_NAME` varchar(32) NOT NULL COMMENT '체험자이름',
  `MF_FG` enum('M','F') NOT NULL DEFAULT 'M' COMMENT '남여구분',
  `EMPL_CASH` float DEFAULT NULL COMMENT '투자총자산',
  `fund_CASH` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '펀드 수익금',
  `bond_CASH` int(10) unsigned NOT NULL DEFAULT '10000000' COMMENT '채권 투자총자산',
  `stock_CASH` int(10) unsigned NOT NULL DEFAULT '10000000' COMMENT '주식 투자총자산',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정자ID',
  PRIMARY KEY (`EMPL_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job050` */

/*Table structure for table `job051` */

DROP TABLE IF EXISTS `job051`;

CREATE TABLE `job051` (
  `QUES_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '설문KEY',
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `EMPL_ANSW_KEY` int(11) DEFAULT NULL COMMENT '체험자선택답변',
  `EMPL_ANSW_POINT` float DEFAULT NULL COMMENT '답변점수',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`QUES_KEY`,`EMPL_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job051` */

/*Table structure for table `job060` */

DROP TABLE IF EXISTS `job060`;

CREATE TABLE `job060` (
  `FUND_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '펀드KEY',
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `FUND_NAME` varchar(256) DEFAULT NULL COMMENT '펀드명',
  `FUND_TOT` int(11) DEFAULT NULL COMMENT '펀드총금액',
  `FUND_DAY` int(11) DEFAULT NULL COMMENT '예상운영개월',
  `FUND_MM` int(11) DEFAULT NULL COMMENT '실제운영개월',
  `FUND_ADDPER` float DEFAULT NULL COMMENT '펀드수익율',
  `FUND_MMPER` float DEFAULT NULL COMMENT '실제펀드수익율',
  `FUND_USERPAY` int(11) DEFAULT NULL COMMENT '펀드메니져수익금',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`FUND_KEY`,`EMPL_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job060` */

/*Table structure for table `job061` */

DROP TABLE IF EXISTS `job061`;

CREATE TABLE `job061` (
  `FUND_KEY` int(10) unsigned NOT NULL COMMENT '펀드KEY',
  `COMP_CODE` varchar(10) NOT NULL COMMENT '종목KEY',
  `FUND_PER` int(11) DEFAULT NULL COMMENT '종목투자비율',
  `FUND_PRICE` int(11) DEFAULT NULL COMMENT '종목별투자금',
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`FUND_KEY`,`COMP_CODE`,`EMPL_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job061` */

/*Table structure for table `job062` */

DROP TABLE IF EXISTS `job062`;

CREATE TABLE `job062` (
  `FUND_KEY` int(10) unsigned NOT NULL COMMENT '펀드KEY',
  `CUSTOM_KEY` int(10) unsigned NOT NULL COMMENT '펀드투자자KEY',
  `CUSTOM_PAY` int(11) DEFAULT NULL COMMENT '펀드투자금액',
  `CUSTOM_ADDPER` float DEFAULT NULL COMMENT '투자수익율',
  `CUSTOM_ADDPAY` int(11) DEFAULT NULL COMMENT '투자수익금',
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`FUND_KEY`,`CUSTOM_KEY`,`EMPL_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job062` */

/*Table structure for table `job070` */

DROP TABLE IF EXISTS `job070`;

CREATE TABLE `job070` (
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `BOND_KEY` int(10) unsigned NOT NULL COMMENT '채권마스터정보 KEY 정보',
  `BOND_BUYQTY` int(11) DEFAULT NULL COMMENT '채권매수수량 입력 값',
  `BOND_MM` int(10) unsigned NOT NULL DEFAULT '48' COMMENT '채권만기일자',
  `BOND_BUYPAY` int(11) DEFAULT NULL COMMENT '채권매수금액\r\n채권매수금액=매수수량 * JOB020.기준가격',
  `BOND_DANGA` int(11) DEFAULT NULL COMMENT '구매단가',
  `BOND_RATE` int(11) DEFAULT NULL,
  `BOND_BUYDATE` date DEFAULT NULL COMMENT '최초에는 만기일자를 입력하고...수익율보기 클릭하면\r\n만기인지/중도해지인지를 확인해서 날짜을 입력(예.20170502)',
  `BOND_BUYPER` int(11) DEFAULT NULL COMMENT '채권수익륳\r\n매수금액 대비 해지일자에 따른 수익금액\r\nJOB022테이블의 해지월의 가격정보와..그때까지의 이자금액을 포함한 금액',
  `BOND_BUYTOT` int(11) DEFAULT NULL COMMENT '채권수익금\r\nJOB022테이블의 해지월의 가격정보와..그때까지의 이자금액을 포함한 금액',
  `BOND_BUYBENIFIT` int(11) DEFAULT NULL COMMENT '이익',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPL_KEY`,`BOND_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job070` */

/*Table structure for table `job080` */

DROP TABLE IF EXISTS `job080`;

CREATE TABLE `job080` (
  `EMPL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '체험자KEY',
  `COMP_KEY` varchar(10) NOT NULL COMMENT '채권마스터정보 KEY 정보',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPL_KEY`,`COMP_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job080` */

/*Table structure for table `job081` */

DROP TABLE IF EXISTS `job081`;

CREATE TABLE `job081` (
  `BUY_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '매수 KEY\r\n자동 증가',
  `EMPL_KEY` int(10) unsigned NOT NULL COMMENT '체험자KEY',
  `COMP_CODE` varchar(10) NOT NULL COMMENT '주식종목정보 KEY 정보',
  `EMPL_BUYQTY` int(11) NOT NULL COMMENT '매수수량 입력 값',
  `EMPL_BUYPRICE` int(11) DEFAULT NULL COMMENT '종목의 현재가격..매수(사는) 가격\r\nJOB015.현재가격(시간별 변동된 가격적용)',
  `EMPL_BUYTOT` int(11) DEFAULT NULL COMMENT '매수금액\r\n매수금액=매수수량 * 매수가격',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BUY_KEY`,`EMPL_KEY`,`COMP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job081` */

/*Table structure for table `job082` */

DROP TABLE IF EXISTS `job082`;

CREATE TABLE `job082` (
  `BUY_KEY` int(10) unsigned NOT NULL COMMENT '매수 KEY',
  `EMPL_SELQTY` int(11) NOT NULL COMMENT '매도수량 입력 값\r\n매수잔고 수량 보다 더 많이 매도는 하지 못함(잔고 만큼 매도 가능)',
  `EMPL_PRICE` int(11) DEFAULT NULL COMMENT '구매가격',
  `EMPL_SELPRICE` int(11) DEFAULT NULL COMMENT '종목의 현재가격..매도(파는) 가격\r\nJOB015.현재가격(시간별 변동된 가격적용)',
  `EMPL_SELTOT` int(11) DEFAULT NULL COMMENT '매도금액\r\n매도금액=매도수량 * 매도가격',
  `EMPL_KEY` int(11) NOT NULL COMMENT '체험자KEY',
  `COMP_CODE` varchar(10) NOT NULL COMMENT '주식종목정보 KEY 정보',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  KEY `BUY_KEY` (`BUY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job082` */

/*Table structure for table `job083` */

DROP TABLE IF EXISTS `job083`;

CREATE TABLE `job083` (
  `BUY_KEY` int(10) unsigned NOT NULL COMMENT '매수 KEY\r\n자동 증가',
  `EMPL_KEY` int(11) NOT NULL COMMENT '체험자KEY',
  `COMP_CODE` varchar(10) NOT NULL COMMENT '주식종목정보 KEY 정보',
  `EMPL_BALQTY` int(11) NOT NULL COMMENT '보유잔고수량\r\nJOB081.매수수량 - JOB082.매도수량',
  `EMPL_BUYPRICE` int(11) DEFAULT NULL COMMENT '주식 매수한 가격 정보',
  `EMPL_BUYTOT` int(11) DEFAULT NULL COMMENT '잔고금액\r\nJOB015.현재가격(시간별 변동된 가격적용)\r\n잔고금액=보유잔고수량 * 현재가격',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `job083` */

/*Table structure for table `system_col` */

DROP TABLE IF EXISTS `system_col`;

CREATE TABLE `system_col` (
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) NOT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime NOT NULL COMMENT '최종수정일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `system_col` */

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `PG_LOCK` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '사용제한',
  `survey_STATUS` tinyint(1) NOT NULL DEFAULT '0',
  `fund_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '펀드 진행',
  `bond_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '채권 진행',
  `stock_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '주식 진행',
  `result_STATUS` tinyint(1) DEFAULT '0' COMMENT '결과보기',
  `DATA_TYPE` int(11) NOT NULL DEFAULT '60' COMMENT '체험데이터',
  `bond_rownum` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '읽어야할 채권 Row',
  `stock_rownum` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '읽어야할 주식 Row',
  `kos_rownum` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '주가지수 현재 row',
  `news_que` smallint(6) NOT NULL DEFAULT '0' COMMENT '뉴스 변경 여부',
  `anal_que` smallint(6) NOT NULL DEFAULT '0' COMMENT '애널리스트 변경 여부',
  KEY `PG_LOCK` (`PG_LOCK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`PG_LOCK`,`survey_STATUS`,`fund_STATUS`,`bond_STATUS`,`stock_STATUS`,`result_STATUS`,`DATA_TYPE`,`bond_rownum`,`stock_rownum`,`kos_rownum`,`news_que`,`anal_que`) values 
(0,0,0,0,0,0,30,1,13,1,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
