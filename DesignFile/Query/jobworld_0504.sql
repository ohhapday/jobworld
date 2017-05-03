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

/*Table structure for table `job014` */

DROP TABLE IF EXISTS `job014`;

CREATE TABLE `job014` (
  `SECT_KEY` int(11) NOT NULL COMMENT '업종KEY',
  `SECT_CODE` varchar(2) DEFAULT NULL COMMENT '업종코드',
  `SECT_NAME` varchar(32) DEFAULT NULL COMMENT '업종명',
  `COMP_CODE` varchar(8) DEFAULT NULL COMMENT '종목코드',
  `COMP_NAME` varchar(32) DEFAULT NULL COMMENT '종목명',
  `INSERT_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime DEFAULT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`SECT_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;

/*Table structure for table `job016` */

DROP TABLE IF EXISTS `job016`;

CREATE TABLE `job016` (
  `NEWS_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '뉴스KEY',
  `NEWS_CODE` varchar(2) DEFAULT NULL COMMENT '뉴스코드',
  `NEWS_TYPE` varchar(2) DEFAULT NULL COMMENT '뉴스구분',
  `NEWS_HEAD` varchar(32) DEFAULT NULL COMMENT '뉴스해드라인',
  `NEWS_FILE` text COMMENT '뉴스내용',
  `UPDOWN` enum('1','2') DEFAULT '1' COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`NEWS_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `job017` */

DROP TABLE IF EXISTS `job017`;

CREATE TABLE `job017` (
  `ANAL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '애널리스트KEY',
  `ANAL_CODE` varchar(2) DEFAULT NULL COMMENT '애널리스트코드',
  `ANAL_TYPE` varchar(2) DEFAULT NULL COMMENT '애널리스트구분',
  `ANAL_HEAD` varchar(32) DEFAULT NULL COMMENT '애널리스트해드라인',
  `ANAL_FILE` text COMMENT '애널리스트내용',
  `UPDOWN` enum('1','2') DEFAULT NULL COMMENT '등락기준',
  `SEND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '전송유무',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정일시',
  PRIMARY KEY (`ANAL_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `job024` */

DROP TABLE IF EXISTS `job024`;

CREATE TABLE `job024` (
  `KEY` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MKEY` int(10) unsigned NOT NULL COMMENT '종합KEY',
  `MD_CODE` varchar(16) NOT NULL COMMENT '종합상세코드',
  `MD_NAME` varchar(32) NOT NULL COMMENT '종합상세명',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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

/*Table structure for table `job050` */

DROP TABLE IF EXISTS `job050`;

CREATE TABLE `job050` (
  `EMPL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '체험자KEY',
  `EMPL_NAME` varchar(32) NOT NULL COMMENT '체험자이름',
  `MF_FG` enum('M','F') NOT NULL DEFAULT 'M' COMMENT '남여구분',
  `EMPL_CASH` float DEFAULT NULL COMMENT '투자총자산',
  `bond_CASH` int(10) unsigned NOT NULL DEFAULT '10000000' COMMENT '채권 투자총자산',
  `stock_CASH` int(10) unsigned NOT NULL DEFAULT '10000000' COMMENT '주식 투자총자산',
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '최종수정자ID',
  PRIMARY KEY (`EMPL_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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

/*Table structure for table `job070` */

DROP TABLE IF EXISTS `job070`;

CREATE TABLE `job070` (
  `EMPL_KEY` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '체험자KEY',
  `BOND_KEY` int(10) unsigned NOT NULL COMMENT '채권마스터정보 KEY 정보',
  `BOND_BUYQTY` int(11) DEFAULT NULL COMMENT '채권매수수량 입력 값',
  `BOND_BUYPAY` int(11) DEFAULT NULL COMMENT '채권매수금액\r\n채권매수금액=매수수량 * JOB020.기준가격',
  `BOND_DANGA` int(11) DEFAULT NULL COMMENT '구매단가',
  `BOND_RATE` int(11) DEFAULT NULL,
  `BOND_BUYDATE` date DEFAULT NULL COMMENT '최초에는 만기일자를 입력하고...수익율보기 클릭하면\r\n만기인지/중도해지인지를 확인해서 날짜을 입력(예.20170502)',
  `BOND_BUYPER` int(11) DEFAULT NULL COMMENT '채권수익륳\r\n매수금액 대비 해지일자에 따른 수익금액\r\nJOB022테이블의 해지월의 가격정보와..그때까지의 이자금액을 포함한 금액',
  `BOND-BUYTOT` int(11) DEFAULT NULL COMMENT '채권수익금\r\nJOB022테이블의 해지월의 가격정보와..그때까지의 이자금액을 포함한 금액',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`EMPL_KEY`,`BOND_KEY`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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

/*Table structure for table `job082` */

DROP TABLE IF EXISTS `job082`;

CREATE TABLE `job082` (
  `BUY_KEY` int(10) unsigned NOT NULL COMMENT '매수 KEY',
  `EMPL_SELQTY` int(11) NOT NULL COMMENT '매도수량 입력 값\r\n매수잔고 수량 보다 더 많이 매도는 하지 못함(잔고 만큼 매도 가능)',
  `EMPL_SELPRICE` int(11) DEFAULT NULL COMMENT '종목의 현재가격..매도(파는) 가격\r\nJOB015.현재가격(시간별 변동된 가격적용)',
  `EMPL_SELTOT` int(11) DEFAULT NULL COMMENT '매도금액\r\n매도금액=매도수량 * 매도가격',
  `EMPL_KEY` int(11) NOT NULL COMMENT '체험자KEY',
  `COMP_CODE` varchar(10) NOT NULL COMMENT '주식종목정보 KEY 정보',
  `INSERT_EMP_NO` varchar(32) NOT NULL,
  `INSERT_DATE` datetime NOT NULL,
  `UPDATE_EMP_NO` varchar(32) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `UPDATE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BUY_KEY`,`EMPL_KEY`,`COMP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `system_col` */

DROP TABLE IF EXISTS `system_col`;

CREATE TABLE `system_col` (
  `INSERT_EMP_NO` varchar(32) NOT NULL COMMENT '최초등록자ID',
  `INSERT_DATE` datetime NOT NULL COMMENT '최초등록일시',
  `UPDATE_EMP_NO` varchar(32) NOT NULL COMMENT '최종수정자ID',
  `UPDATE_DATE` datetime NOT NULL COMMENT '최종수정일시'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `PG_LOCK` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '사용제한',
  `fund_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '펀드 진행',
  `bond_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '채권 진행',
  `stock_STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '주식 진행',
  `DATA_TYPE` tinyint(1) NOT NULL DEFAULT '60' COMMENT '체험데이터',
  `bond_rownum` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '읽어야할 채권 Row',
  `stock_rownum` smallint(5) unsigned NOT NULL DEFAULT '10' COMMENT '읽어야할 주식 Row',
  `news_que` smallint(6) NOT NULL DEFAULT '0' COMMENT '뉴스 변경 여부',
  `anal_que` smallint(6) NOT NULL DEFAULT '0' COMMENT '애널리스트 변경 여부',
  KEY `PG_LOCK` (`PG_LOCK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
