/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.34-MariaDB : Database - pilketos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pilketos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pilketos`;

/*Table structure for table `kandidat` */

DROP TABLE IF EXISTS `kandidat`;

CREATE TABLE `kandidat` (
  `id_kandidat` int(50) NOT NULL AUTO_INCREMENT,
  `nama_kandidat` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT 'siswa.png',
  `visi` text,
  `misi` text,
  `motto` text,
  `video` varchar(50) DEFAULT NULL,
  `banner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kandidat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kandidat` */

insert  into `kandidat`(`id_kandidat`,`nama_kandidat`,`foto`,`visi`,`misi`,`motto`,`video`,`banner`) values 
(1,'Alexander & Febrian ','paslon1.jpg','mewujudkan osis sebagai tempat yang dapat mengembangkan bakat siswa siswi sma talenta','<ol style=\"text-align:left\">\r\n<li>membentuk osis menjadi organisasi rasa persatuan, kesatuan, peduli, dan rasa bertanggung jawab sebagai pihak osis dan pihak sekolah </li>\r\n<li>mengadakan kegiatan yang dapat membangun potensi siswa siswi talenta </li>\r\n<li>menjadikan osis sebagai media pengharum nama</li>\r\n</ol>','Bos have a title, and leader have a people',NULL,'paslon1_banner.jpg'),
(2,'Stephen & Jennifer','paslon2.jpg','Menjadikan siswa SMA TALENTA bermoral dan berintegritas tinggi serta mampu memahami kreativitas dan keinginan siswa.','<ol style=\"text-align:left\">\r\n<li>Meningkatkan rasa kekeluargaan, persatuan dan solidaritas diantara para siswa SMA TALENTA.</li>\r\n<li>Menciptakan kegiatan dan program yang bermanfaat serta memaksimalkan seluruh potensi siswa dan mengharumkan nama sekolah.</li>\r\n<li>Membentuk pribadi siswa yang mengutamakan nilai-nilai kebajikan dan moral yang ada.</li>\r\n</ol>','DUA, Dari anda, dan Untuk Anda',NULL,NULL),
(3,'Ray & Jason','paslon3.jpg','Mewujudkan pribadi  yang berprestasi dengan dilandasi Iman dan Kasih','<ol style=\"text-align:left\">\r\n<li>Berintegritas dalam mengembangkan potensi siswa dan siswi SMA Talenta</li>\r\n<li>Mempererat persaudaraan siswa dan siswi SMA Talenta</li>\r\n<li>Mengembangkan semangat juang dan disiplin siswa siswi SMA Talenta</li>\r\n</ol>','Inisiatif – Setia – Enjoy – Natural - Gaul',NULL,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `akses` enum('siswa','admin') DEFAULT NULL,
  `status_vote` enum('Sudah','Belum') DEFAULT 'Belum',
  `kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`nama_user`,`password`,`akses`,`status_vote`,`kelas`) values 
(1,'42392','AMOS DUAN NUGROHO','42392','admin','Belum','Guru'),
(2,'192010005','ANASTASIA HELENA KEI','BWLK73','siswa','Belum','X IPA 1'),
(3,'192010006','ANGEL LASTRIANI MUNTHE','XSMW46','siswa','Belum','X IPA 1'),
(4,'192010008','ANGELIQUE GABRIELLA HALIM','AVGD47','siswa','Belum','X IPA 1'),
(5,'192010019','CAROLUS FARREL DAVE','WWRX81','siswa','Belum','X IPA 1'),
(6,'192010020','CHYNTIA ANGELINA FOEDARSONO','PDNJ31','siswa','Belum','X IPA 1'),
(7,'192010024','CONNIE CAROLINE','FQMQ18','siswa','Belum','X IPA 1'),
(8,'192010031','EVELYN HANJONO','CQJV97','siswa','Belum','X IPA 1'),
(9,'192010034','FELICIA AURELIA','CPUI60','siswa','Belum','X IPA 1'),
(10,'192010036','FELIX FERDINAND','QTTY45','siswa','Belum','X IPA 1'),
(11,'192010044','GREGORIUS JERRIYANA PUTU KIREN','KJUG73','siswa','Belum','X IPA 1'),
(12,'192010048','HIZKIA HEISEL TJAHJA','ZRDM05','siswa','Belum','X IPA 1'),
(13,'192010049','IGNATIUS VARREL SANTOSO','GIHS02','siswa','Belum','X IPA 1'),
(14,'192010053','JESILY DYRA WIJAYA PUTRI','DNBL76','siswa','Belum','X IPA 1'),
(15,'192010060','LAURENSIA JOSEPHINE','WEEU54','siswa','Belum','X IPA 1'),
(16,'192010064','MARCEL ANDREAN','PBAK98','siswa','Belum','X IPA 1'),
(17,'192010069','MIRACLE CHRISTIANE IBRAHIM','GQVQ64','siswa','Belum','X IPA 1'),
(18,'192010077','RAFAEL JOY HADI','DEIV62','siswa','Belum','X IPA 1'),
(19,'192010079','RANDY WILIANTO HUANG','CKQP75','siswa','Belum','X IPA 1'),
(20,'192010083','RIZAL FIQRI ALGHI YAPIAWAN','QIPE57','siswa','Belum','X IPA 1'),
(21,'192010086','SAMUEL ETHAN','FXXP67','siswa','Belum','X IPA 1'),
(22,'192010091','SRI WULAN','UTUQ22','siswa','Belum','X IPA 1'),
(23,'192010092','TANIA AUDREY SUJANTO','YPVU60','siswa','Belum','X IPA 1'),
(24,'192010094','TOMI SURYAWINATA','HABD34','siswa','Belum','X IPA 1'),
(25,'192010097','VANESS ASMAN','SBBG61','siswa','Belum','X IPA 1'),
(26,'192010001','ALFONSO','QCJR51','siswa','Belum','X IPA 2'),
(27,'192010003','ALVIN CHANDRA','VOJL28','siswa','Belum','X IPA 2'),
(28,'192010021','CLAIRINE NATALIA','AZAS33','siswa','Belum','X IPA 2'),
(29,'192010022','CLARELL CHANDRA','LYTP74','siswa','Belum','X IPA 2'),
(30,'192010023','CLARISA PUTRI MARSCHANDA','DJDQ97','siswa','Belum','X IPA 2'),
(31,'192010035','FELICIA RENATA','HWLN50','siswa','Belum','X IPA 2'),
(32,'192010037','FERDY MARLIAN','DRFE61','siswa','Belum','X IPA 2'),
(33,'192010046','HELLEN ARDELLAWATI','PLTE36','siswa','Belum','X IPA 2'),
(34,'192010047','HERRY NILSON','RDIS66','siswa','Belum','X IPA 2'),
(35,'192010050','JANET REVASAPPHIRA SUSANTO','WFZG83','siswa','Belum','X IPA 2'),
(36,'192010051','JASON ENRICO MANUELA','WAOR03','siswa','Belum','X IPA 2'),
(37,'192010057','JOLYNN OLIVIA','JVAL58','siswa','Belum','X IPA 2'),
(38,'192010058','JULIA AGUSTINA','EBQU81','siswa','Belum','X IPA 2'),
(39,'192010065','MARCELLINO DAVE DERIAN','QXHU78','siswa','Belum','X IPA 2'),
(40,'192010070','MUHAMMAD ANDIKA ALIFIAN WIBAWA','BHGX43','siswa','Belum','X IPA 2'),
(41,'192010071','NATHANIEL DUSTIN HARYANTO','GSAN26','siswa','Belum','X IPA 2'),
(42,'192010073','NGURAH BAGUS RAKA MAHENDRA','BQFO05','siswa','Belum','X IPA 2'),
(43,'192010076','PRISCYLIA SUSANTO WANGSAPUTRA','NZTC36','siswa','Belum','X IPA 2'),
(44,'192010078','RAFAEL RANGGA DWITAMA ANCILIA','PZYU45','siswa','Belum','X IPA 2'),
(45,'192010082','RHENALDUS RANDY KUSJADI','SRJN96','siswa','Belum','X IPA 2'),
(46,'192010088','SHARON ANGELINA INDRAWAN','BSSU11','siswa','Belum','X IPA 2'),
(47,'192010093','TIARA AURELIA','TIYS18','siswa','Belum','X IPA 2'),
(48,'192010096','VALERIE YELENA SANJAYA','ASON01','siswa','Belum','X IPA 2'),
(49,'192010007','ANGELINA CAROLINE','LEPA17','siswa','Belum','X IPS 1'),
(50,'192010009','ANGELLYCA GYRLANI','NWDT24','siswa','Belum','X IPS 1'),
(51,'192010010','ANGGI ANDREAS','TTVW37','siswa','Belum','X IPS 1'),
(52,'192010011','ANGGIE AURERIA TERENS','XESI52','siswa','Belum','X IPS 1'),
(53,'192010013','AURELLIA DEVINA PATRICIA','EZXP45','siswa','Belum','X IPS 1'),
(54,'192010016','BRIANT TANUDIBRATA','KNRP53','siswa','Belum','X IPS 1'),
(55,'192010018','CARLA ANGELA','DNIF58','siswa','Belum','X IPS 1'),
(56,'192010025','CRISTIAWAN YANUARD SERA SINAMBELA','IZMS29','siswa','Belum','X IPS 1'),
(57,'192010026','DANIEL ADRIAN','HXDZ80','siswa','Belum','X IPS 1'),
(58,'192010027','DENISE ALICIA','ZTAC99','siswa','Belum','X IPS 1'),
(59,'192010029','ELVINA KIMBERLY JOHAN','SBWG83','siswa','Belum','X IPS 1'),
(60,'192010032','FEBRIAN VALENTINO WIBOWO','QHHE01','siswa','Belum','X IPS 1'),
(61,'192010033','FELICIA ALDA SYDNEY','EHHW32','siswa','Belum','X IPS 1'),
(62,'192010041','FREDY KURNIAWAN','DMVT90','siswa','Belum','X IPS 1'),
(63,'192010042','FRENTZHEN MATTHEW ELFREDA','LTUE24','siswa','Belum','X IPS 1'),
(64,'192010054','JEVEN GUNAWAN','JQIQ28','siswa','Belum','X IPS 1'),
(65,'192010059','LAIJ JEREMY MISAEL','BYQD67','siswa','Belum','X IPS 1'),
(66,'192010061','LAUWRENCIA CHRISENSANIA','CLYL33','siswa','Belum','X IPS 1'),
(67,'192010080','RANGGA KESUMA WIJAYA','FDFU27','siswa','Belum','X IPS 1'),
(68,'192010081','RAPHAEL MATTHEW PURWADI','VKND52','siswa','Belum','X IPS 1'),
(69,'192010085','SAMUEL BRYAN NABABAN','PTGQ01','siswa','Belum','X IPS 1'),
(70,'192010087','SHARON','LZIA97','siswa','Belum','X IPS 1'),
(71,'192010089','SHELLY FITRIYANI','RZZN10','siswa','Belum','X IPS 1'),
(72,'192010098','VANIA NIEBERTHA','CLMV92','siswa','Belum','X IPS 1'),
(73,'192010099','VINCENSIUS RIANANDA LENGKONG','DINJ74','siswa','Belum','X IPS 1'),
(74,'192010100','VINCENT NICKOLAS','LCJH85','siswa','Belum','X IPS 1'),
(75,'192010103','VIVIAN OKTA KRISTIANTI','FJBB04','siswa','Belum','X IPS 1'),
(76,'192010095','TRACY GERALDINE THALIA','LTSP64','siswa','Belum','X IPS 1'),
(77,'192010002','ALLYASATI SENJAYA','ERAA68','siswa','Belum','X IPS 2'),
(78,'192010004','AMELIA KIMBERLY','UFHB79','siswa','Belum','X IPS 2'),
(79,'192010012','AURELIO THEODORE MARSHALLITY','LQKU34','siswa','Belum','X IPS 2'),
(80,'192010014','BENEDIKTUS RAINIER','QHZW12','siswa','Belum','X IPS 2'),
(81,'192010015','BERNADETH BERTHA','OGRW92','siswa','Belum','X IPS 2'),
(82,'192010017','BRYANT TJANDRAKIRANA','PYRO23','siswa','Belum','X IPS 2'),
(83,'192010028','ELIZABETH HANAFIE','VHXP10','siswa','Belum','X IPS 2'),
(84,'192010006','ELLEN FRANSISCA','TKPH43','siswa','Belum','X IPS 2'),
(85,'192010030','EVELYN CHRISTANTI SUYANTO','XYWM14','siswa','Belum','X IPS 2'),
(86,'192010038','FERENCIA','IQHX94','siswa','Belum','X IPS 2'),
(87,'192010039','FRANSISKA KEZIA JAPERSON','DZPY11','siswa','Belum','X IPS 2'),
(88,'192010040','FREDICK WILSEN','YZVJ65','siswa','Belum','X IPS 2'),
(89,'192010043','GERALD FERNANDO THOMAS','HYLK98','siswa','Belum','X IPS 2'),
(90,'192010045','HANSEL CHRISTOPER YUDI','RZAJ12','siswa','Belum','X IPS 2'),
(91,'192010052','JASON SURYADI','RIJN30','siswa','Belum','X IPS 2'),
(92,'192010055','JO, KARYN JONATHAN','UEBH46','siswa','Belum','X IPS 2'),
(93,'192010056','JOCELINE ARDELIA KURNIAWAN','ONIP57','siswa','Belum','X IPS 2'),
(94,'192010062','LEIVANA JOUVITA TIRTAJAYA','OBMQ00','siswa','Belum','X IPS 2'),
(95,'192010063','LIDWINA NADIA KRISTIANI','WKRV98','siswa','Belum','X IPS 2'),
(96,'192010066','MARSHANDI AGUSTINUS','LJMF29','siswa','Belum','X IPS 2'),
(97,'192010067','MICHAEL BERNICO CHRISTIAN','UBSG54','siswa','Belum','X IPS 2'),
(98,'192010068','MICHAEL SONTANA','RUOF66','siswa','Belum','X IPS 2'),
(99,'192010072','NATHANIEL NICHOLAS','QZSE70','siswa','Belum','X IPS 2'),
(100,'192010074','NICKY ADITYA MATHIAS','ZEPF96','siswa','Belum','X IPS 2'),
(101,'192010075','OLIVIA VIRGINIA MARSHA','DOKV45','siswa','Belum','X IPS 2'),
(102,'192010084','SAHPIRA NURAMBIYA','XLHE29','siswa','Belum','X IPS 2'),
(103,'192010090','SHERREN GRAZIELLA','GWEY43','siswa','Belum','X IPS 2'),
(104,'192010101','VIONI TRI PRATIWI','CXOK92','siswa','Belum','X IPS 2'),
(105,'192010102','VIVEL YULICIA','ZNFB00','siswa','Belum','X IPS 2'),
(106,'181910007','ANDREAS RAYMOND SOEWITO','LTXP87','siswa','Belum','XI IPA 1'),
(107,'181910016','ARNA POETRI FEBRIAN','DHRS87','siswa','Belum','XI IPA 1'),
(108,'181910026','DARREN CHANDRA SETIAWAN','DZUJ58','siswa','Belum','XI IPA 1'),
(109,'181910028','DAVID VINCENT CHANDRA','IBAR92','siswa','Belum','XI IPA 1'),
(110,'181910034','FLAVIANA REVITA GIOVANI','DVXH35','siswa','Belum','XI IPA 1'),
(111,'181910038','FRISCA FERNANDA','EJPH28','siswa','Belum','XI IPA 1'),
(112,'181910040','GABRIELLE MARYANNE LIM','HOSX36','siswa','Belum','XI IPA 1'),
(113,'181910044','HADRYAN TITAN ISKANDAR','ZQCO41','siswa','Belum','XI IPA 1'),
(114,'181910047','HOWSEN VINCENSIUS','EZIK13','siswa','Belum','XI IPA 1'),
(115,'181910050','JASON FARREL CHRISTIAN','BBMS24','siswa','Belum','XI IPA 1'),
(116,'181910052','JENNIFER AZALIA KURNIA','CSRR79','siswa','Belum','XI IPA 1'),
(117,'181910057','JONATHAN GABRIEL','LIYI37','siswa','Belum','XI IPA 1'),
(118,'181910066','KEZIA AMANDA PUTRI','LDKD16','siswa','Belum','XI IPA 1'),
(119,'181910070','LIEMANUEL QUENNALLIX','WSNK62','siswa','Belum','XI IPA 1'),
(120,'181910073','MARCELLINO','TNXP70','siswa','Belum','XI IPA 1'),
(121,'181910076','MELVERN ALEXANDER','UVVY73','siswa','Belum','XI IPA 1'),
(122,'181910077','MELVIN MANUEL','LPMV68','siswa','Belum','XI IPA 1'),
(123,'181910081','MUHAMMAD RICO ANDRIAWAN','BBNF13','siswa','Belum','XI IPA 1'),
(124,'181910094','PRISCILLA AUDRIC KANABI','EHYL29','siswa','Belum','XI IPA 1'),
(125,'181910101','REVLIN TRIVENA','QUPQ40','siswa','Belum','XI IPA 1'),
(126,'181910103','ROGER RAVANELLY UNARYO','UKCL97','siswa','Belum','XI IPA 1'),
(127,'181910104','SAMUEL KUSUMA','GJGT17','siswa','Belum','XI IPA 1'),
(128,'181910117','THERESA ZAKARIA','GOBX93','siswa','Belum','XI IPA 1'),
(129,'181910122','VANDI NOVANTIANUS','HZWB59','siswa','Belum','XI IPA 1'),
(130,'181910124','VANNES THEO SUDARSONO','FXHF35','siswa','Belum','XI IPA 1'),
(131,'181910125','VANNY SELSA YULIANI','ONFA48','siswa','Belum','XI IPA 1'),
(132,'181910136','YOSUA NATANAEL','WGAA12','siswa','Belum','XI IPA 1'),
(133,'181910003','ALEXANDER VINCHENT NATHANAEL','DLLE23','siswa','Belum','XI IPA 2'),
(134,'181910006','ANDREA NATHALI WIDAYAT','NWOV21','siswa','Belum','XI IPA 2'),
(135,'181910014','ANSHIN DHARMA PARYASA','RHHW45','siswa','Belum','XI IPA 2'),
(136,'192011104','AUBREY CHANDRASMIRTI','WXKI21','siswa','Belum','XI IPA 2'),
(137,'181910017','AUDREY PUTRI','QCYG49','siswa','Belum','XI IPA 2'),
(138,'181910023','CHRISTIE REDJA','KYSQ27','siswa','Belum','XI IPA 2'),
(139,'181910027','DAVID AGUSTIAN WIJAYA RASA','NRJV32','siswa','Belum','XI IPA 2'),
(140,'181910032','ERIKA NOVIANTI','GBCE01','siswa','Belum','XI IPA 2'),
(141,'181910033','FEYLIA ANTONIUS','XDFP02','siswa','Belum','XI IPA 2'),
(142,'181100041','GERALDO NICKSON VIERY','MKGN97','siswa','Belum','XI IPA 2'),
(143,'181910051','JASON SEBASTIAN KURNIAWAN','GRSA75','siswa','Belum','XI IPA 2'),
(144,'181910139','JILL VALENTINE PRASETYA','ZZTQ73','siswa','Belum','XI IPA 2'),
(145,'181910067','KRISTELL ALESSANDRA','WPMG29','siswa','Belum','XI IPA 2'),
(146,'181910068','KURNIAWAN ADI NUGROHO','HGPW08','siswa','Belum','XI IPA 2'),
(147,'181910071','LIVIA RIBKA DERMAWAN','YQBE20','siswa','Belum','XI IPA 2'),
(148,'181910088','NICHOLAS SAPUTRA WIBISONO','NVWN75','siswa','Belum','XI IPA 2'),
(149,'181910089','NICO MARCELINO','XSJF09','siswa','Belum','XI IPA 2'),
(150,'181910095','RACHEL IMANUELLA SIANTURI','LREY31','siswa','Belum','XI IPA 2'),
(151,'181910099','RAYN\'T JULIANUS TETEN','UKSF31','siswa','Belum','XI IPA 2'),
(152,'181910102','RIECKY SYARIEF POERWADIREDJA','IQZB76','siswa','Belum','XI IPA 2'),
(153,'181910105','SANY ANDRIAN','MFBQ33','siswa','Belum','XI IPA 2'),
(154,'181910108','SHARRON GLOWDY WIDARTO','QMHJ66','siswa','Belum','XI IPA 2'),
(155,'181910113','STEVEN WISELLY','BWQT74','siswa','Belum','XI IPA 2'),
(156,'181910114','TAN, ALBERTUS TRIWIJAYA SETIADI','KEOK68','siswa','Belum','XI IPA 2'),
(157,'181910118','TRESNA ADYANA RAMADHAN','TTRT72','siswa','Belum','XI IPA 2'),
(158,'181910128','VINCENT SALIM','YNPF45','siswa','Belum','XI IPA 2'),
(159,'181910133','WILSON CLAY KOSASIH','XFOO16','siswa','Belum','XI IPA 2'),
(160,'181910001','AGNES ANGELLIN THERESYA','JGYM85','siswa','Belum','XI IPA 3'),
(161,'181910004','AMBROSIUS CALVIN','JMGU30','siswa','Belum','XI IPA 3'),
(162,'181910012','ANGELICA OKTAVIA','IOOQ20','siswa','Belum','XI IPA 3'),
(163,'181910018','BASKORO TRIKUSUMA WIJAYA','HRIF02','siswa','Belum','XI IPA 3'),
(164,'181910024','CLARESTA FILBERT EFFENDY','RINI78','siswa','Belum','XI IPA 3'),
(165,'181910025','DAMASUS DISTA BIMA NUR PRATAMA','ZBMW31','siswa','Belum','XI IPA 3'),
(166,'181910029','DEVEN NOVA SURYA','OEKR61','siswa','Belum','XI IPA 3'),
(167,'181910031','DICKY HARTANTO SETIONO','WSKC18','siswa','Belum','XI IPA 3'),
(168,'181910042','GIZELLA ELS GERARDINE','NRDT96','siswa','Belum','XI IPA 3'),
(169,'181910046','HANS JONATHAN','QYFF81','siswa','Belum','XI IPA 3'),
(170,'181910049','JASON ADRIAN','JDPJ40','siswa','Belum','XI IPA 3'),
(171,'181910064','KEVIN AURELIAN NATHANIELLE','MSGA51','siswa','Belum','XI IPA 3'),
(172,'181910065','KEVIN PRANATA','IOWR64','siswa','Belum','XI IPA 3'),
(173,'181910069','LAURANT DEVLIN','PQTO47','siswa','Belum','XI IPA 3'),
(174,'181910072','MARCELINE AULDEY WIJAYA','WODK61','siswa','Belum','XI IPA 3'),
(175,'181910079','MICHAEL BRILLIANT BUNARDI','HZLQ80','siswa','Belum','XI IPA 3'),
(176,'181910084','NATHALIA ANDREA WINATA','XXGH68','siswa','Belum','XI IPA 3'),
(177,'181910085','NATHANAEL VALENTINO DAVIS','OKDX20','siswa','Belum','XI IPA 3'),
(178,'181910093','PETER','GKQK73','siswa','Belum','XI IPA 3'),
(179,'181910096','RAFAEL ROGER FEBRIANO','WJHL37','siswa','Belum','XI IPA 3'),
(180,'181910097','RAY JONATHAN','KVOT98','siswa','Belum','XI IPA 3'),
(181,'181910120','VALERIE','AKEP23','siswa','Belum','XI IPA 3'),
(182,'181910121','VALERIE KYLE SCHIFRA KINTADJAJA','UEIY13','siswa','Belum','XI IPA 3'),
(183,'181910127','VICTORIA STEPHANIE HERMAWAN','KHWC89','siswa','Belum','XI IPA 3'),
(184,'181910132','WILLIE CHRISTIAN','ZVOZ11','siswa','Belum','XI IPA 3'),
(185,'181910134','YEMIMA VANYA','XJMZ09','siswa','Belum','XI IPA 3'),
(186,'181910135','YOANA STELLA MEILIANI','AQAG36','siswa','Belum','XI IPA 3'),
(187,'181910009','ANGELA KAREN JAPERSON','KABV12','siswa','Belum','XI IPS 1'),
(188,'181910010','ANGELICA','JKXM90','siswa','Belum','XI IPS 1'),
(189,'181910011','ANGELICA MULYA TJIPTA','GUEW24','siswa','Belum','XI IPS 1'),
(190,'181910013','ANGELINA ANANDA SETIAWAN','NOXL92','siswa','Belum','XI IPS 1'),
(191,'181910015','ANTONIUS RAY SETIAWAN','HREQ47','siswa','Belum','XI IPS 1'),
(192,'181910019','CAESAR','KUED29','siswa','Belum','XI IPS 1'),
(193,'181910020','CAROLINE TRIESTANTO','TRUK63','siswa','Belum','XI IPS 1'),
(194,'181910021','CHATERINE','MYSS72','siswa','Belum','XI IPS 1'),
(195,'181910030','DEVIA AUGUSTRIA THAHER','THHV23','siswa','Belum','XI IPS 1'),
(196,'181910035','FLORENTINA FIONA','HNGG50','siswa','Belum','XI IPS 1'),
(197,'181910037','FREDY TIAN','RTTJ87','siswa','Belum','XI IPS 1'),
(198,'181910053','JESSEN CANDRA','WEQH51','siswa','Belum','XI IPS 1'),
(199,'181910054','JESSICA MARGARETHA','BORM78','siswa','Belum','XI IPS 1'),
(200,'181910056','JOCELINE ATTILA CHAIRIL','QHIB20','siswa','Belum','XI IPS 1'),
(201,'181910058','JONATAN OSCAR VIREY','ZMWE79','siswa','Belum','XI IPS 1'),
(202,'181910060','JONATHAN SHAN','FBJV90','siswa','Belum','XI IPS 1'),
(203,'181910074','MARSELLA','YCSI81','siswa','Belum','XI IPS 1'),
(204,'181910078','MEYLI PERMATA JULIANA','MCAZ25','siswa','Belum','XI IPS 1'),
(205,'181910083','NATASHA KASIH EYLENA','XXWC17','siswa','Belum','XI IPS 1'),
(206,'181910086','NATTAN','NWNL41','siswa','Belum','XI IPS 1'),
(207,'181910091','NOE CHRISTIANTO','FTFF40','siswa','Belum','XI IPS 1'),
(208,'181910092','PATRICIA ANGELICA','FLZR20','siswa','Belum','XI IPS 1'),
(209,'181910098','RAYMOND SOCHIZIDUHU MENDROFA','GMEH60','siswa','Belum','XI IPS 1'),
(210,'181910100','RENO RUSTI JUANG SABILAH','SUEU93','siswa','Belum','XI IPS 1'),
(211,'181910110','STEFAN HIRAWAN','VXTZ36','siswa','Belum','XI IPS 1'),
(212,'181910111','STEPHANIE GRACIA HARTANTO','WOLA06','siswa','Belum','XI IPS 1'),
(213,'181910126','VELLINE HANDRIAWAN','PKRR87','siswa','Belum','XI IPS 1'),
(214,'181910131','VINKA THERESSA','LTZY83','siswa','Belum','XI IPS 1'),
(215,'181910002','AGNES FLORENTINE GUIDO','UUIR76','siswa','Belum','XI IPS 2'),
(216,'181910005','ANDREA MATTHAEA GUNAWAN','BPTB38','siswa','Belum','XI IPS 2'),
(217,'181910008','ANDREW PETRA MUNTHE','HGUO66','siswa','Belum','XI IPS 2'),
(218,'181910022','CHELLSY SEFANIA PRIBADI','YPDO23','siswa','Belum','XI IPS 2'),
(219,'181910036','FRANSEN JONATHAN TOHA','DAVP15','siswa','Belum','XI IPS 2'),
(220,'181910039','GABRIELA JOANNA SUSANTO','KZIM27','siswa','Belum','XI IPS 2'),
(221,'181910043','GUNAWAN','NWZP18','siswa','Belum','XI IPS 2'),
(222,'181910045','HANNA THERESIA TANU SENJAYA','AJPG25','siswa','Belum','XI IPS 2'),
(223,'181910048','JACQUELYN GLORIA STEFANIE','UEPZ85','siswa','Belum','XI IPS 2'),
(224,'181910055','JHOVIN','AECW28','siswa','Belum','XI IPS 2'),
(225,'181910059','JONATHAN SANJAYA','MXSD30','siswa','Belum','XI IPS 2'),
(226,'181910061','JOVI FRENTZEN AMADEA','TISY43','siswa','Belum','XI IPS 2'),
(227,'181910062','KARREN SINTIKHE ANDREAS','HCIR71','siswa','Belum','XI IPS 2'),
(228,'181910063','KARYN YAPRILIA','FZLH74','siswa','Belum','XI IPS 2'),
(229,'181910075','MARTIN DJAYA','RPYC32','siswa','Belum','XI IPS 2'),
(230,'181910080','MONICA ANDRIAN TEZAPUTRI','VOYP59','siswa','Belum','XI IPS 2'),
(231,'181910087','NEELSEN WILHEM','BUUO73','siswa','Belum','XI IPS 2'),
(232,'181910090','NIKI','XQOG63','siswa','Belum','XI IPS 2'),
(233,'181910106','SEAN ARCHER','VBDK49','siswa','Belum','XI IPS 2'),
(234,'181910109','SILVESTER ANDRE DE ROSARIO','WNFG86','siswa','Belum','XI IPS 2'),
(235,'181910112','STEPHEN SANJAYA KUSNANDAR','LBVS17','siswa','Belum','XI IPS 2'),
(236,'181910115','TANTRI MIRANTI','XNTK62','siswa','Belum','XI IPS 2'),
(237,'181910116','TESALONIKA ANGELIGRACE SUGIANTO','KRYR53','siswa','Belum','XI IPS 2'),
(238,'181910119','TRICIA PUTRI GUNADI','TJJA61','siswa','Belum','XI IPS 2'),
(239,'181910123','VANESSA PATRICIA','AOFD27','siswa','Belum','XI IPS 2'),
(240,'181910129','VICENTIUS EMMANUEL','AFJA88','siswa','Belum','XI IPS 2'),
(241,'181910130','VINDY AURELLIA NADELINE','QPUD06','siswa','Belum','XI IPS 2'),
(242,'171810004','ALEXANDER YOGA SETIAWAN','LIVU80','siswa','Belum','XII IPA 1'),
(243,'171810013','ANGELLYN CARNELIAN CHRISTY','BJBG41','siswa','Belum','XII IPA 1'),
(244,'171810022','BODIE IVANDER LIMANDIBRATA','FVPR14','siswa','Belum','XII IPA 1'),
(245,'171810027','CHRISTIE NATALIE HUBERT','JRET44','siswa','Belum','XII IPA 1'),
(246,'171810030','DARREL','NPOV47','siswa','Belum','XII IPA 1'),
(247,'171810033','DEVLIN VENEDICT','DWFI07','siswa','Belum','XII IPA 1'),
(248,'171810037','ELLIES SUCIHATI KUSUMA','OHBX75','siswa','Belum','XII IPA 1'),
(249,'171810049','GABRIELLA CALLULA PUTRI. K','KUZZ37','siswa','Belum','XII IPA 1'),
(250,'171810051','GIBSON DANIEL ANDRIANTO','PFAZ73','siswa','Belum','XII IPA 1'),
(251,'171810056','GREGORIUS GERALDI','OZCN76','siswa','Belum','XII IPA 1'),
(252,'181911137','HERBERT AGUSTINUS JONATAN','RFAD61','siswa','Belum','XII IPA 1'),
(253,'171810068','JOAN RUBELVA SUSANTO','CWET47','siswa','Belum','XII IPA 1'),
(254,'171810069','JONATHAN ABRAHAM HARTONO','CWDV37','siswa','Belum','XII IPA 1'),
(255,'171810076','KEVIN JONATHAN','GLQE14','siswa','Belum','XII IPA 1'),
(256,'171810088','LIVIA PRISCILLA WINARTO','FRDZ08','siswa','Belum','XII IPA 1'),
(257,'171810097','NATANAEL ALVIN SETIAWAN','TUXT54','siswa','Belum','XII IPA 1'),
(258,'171810098','NATAVIA TANUWIJAYA','CMJY36','siswa','Belum','XII IPA 1'),
(259,'171810101','NICHOLAS RUSSEL PERMANA','VUIC93','siswa','Belum','XII IPA 1'),
(260,'171810110','RISTA CYNTHIA','RNKB44','siswa','Belum','XII IPA 1'),
(261,'171810111','RYAN CHRISTIAN RAYADI','VALP24','siswa','Belum','XII IPA 1'),
(262,'171810121','STEFFI LINTANG CAESARIA','VPKZ04','siswa','Belum','XII IPA 1'),
(263,'171810125','TEFFINCA','LGBK97','siswa','Belum','XII IPA 1'),
(264,'171810130','VERRELL HANS HADI','IAQK62','siswa','Belum','XII IPA 1'),
(265,'171810132','VINA ANJELINA','DECL52','siswa','Belum','XII IPA 1'),
(266,'171810136','YESSIE CHANDRIKA SHE','PVVX37','siswa','Belum','XII IPA 1'),
(267,'171810002','BENEDICTA NATHANIA RURI','LDVD59','siswa','Belum','XII IPA 2'),
(268,'171810018','CLARISSA CHANDRA','VLBX69','siswa','Belum','XII IPA 2'),
(269,'171810029','DEVIN HERIJANTO','CZYP10','siswa','Belum','XII IPA 2'),
(270,'171810032','DOMINICUS CELVIN PARULIAN','GWQY66','siswa','Belum','XII IPA 2'),
(271,'171810034','FERRY CAHYA SANTOSA','PLKX42','siswa','Belum','XII IPA 2'),
(272,'171810044','FLORENCE SUWANDI','LHOA46','siswa','Belum','XII IPA 2'),
(273,'171810046','GABRIEL FLAVIANUS','NTDU82','siswa','Belum','XII IPA 2'),
(274,'171810047','GIDEON JOKO PRATOMO','DSAW05','siswa','Belum','XII IPA 2'),
(275,'171810052','GLORIA LESTARI','LMPW17','siswa','Belum','XII IPA 2'),
(276,'171810054','JANICE LIVIANA','XNBE98','siswa','Belum','XII IPA 2'),
(277,'171810061','JESLYN ALVINA SARUMAHA','KRIR85','siswa','Belum','XII IPA 2'),
(278,'171810065','JESSICA ALEXANDRA','XVPN58','siswa','Belum','XII IPA 2'),
(279,'171810066','JULIUS VALENTINO','IBKC61','siswa','Belum','XII IPA 2'),
(280,'171810074','KEZIA ALODIA CHRISDIANA','TDPG10','siswa','Belum','XII IPA 2'),
(281,'171810086','LIDYA BUDIMAN','YKKW18','siswa','Belum','XII IPA 2'),
(282,'171810089','LIEMANUEL GLENNIXON','MYAH90','siswa','Belum','XII IPA 2'),
(283,'171810090','MARIO CHRISTOPHER WIDJAJA','EFDZ19','siswa','Belum','XII IPA 2'),
(284,'171810093','MARISA FELICIA','DSEO61','siswa','Belum','XII IPA 2'),
(285,'171810099','MATTHEW JULIAN','ZQOP96','siswa','Belum','XII IPA 2'),
(286,'171810108','NATHANAEL VINCENT SURYANTO','ANOA29','siswa','Belum','XII IPA 2'),
(287,'171810117','RENANDY KRISTIANLIE EKAJAYA','JJPE93','siswa','Belum','XII IPA 2'),
(288,'171810118','SHERLEN THALIA','TMKD25','siswa','Belum','XII IPA 2'),
(289,'171810122','SILVIA HYUNDARI ANGGREINI F.J','QVNW69','siswa','Belum','XII IPA 2'),
(290,'171810132','STEVEN LIMENTA','VVKE65','siswa','Belum','XII IPA 2'),
(291,'171810005','AGNES LILIANTO','JXZM72','siswa','Belum','XII IPA 3'),
(292,'171810011','ALFONSIUS CHANDRA','JBNJ03','siswa','Belum','XII IPA 3'),
(293,'171810016','ANGELA MERICI VANESSA','KCSA82','siswa','Belum','XII IPA 3'),
(294,'171810019','AUDREY DESTRIEN SALIM','QERN04','siswa','Belum','XII IPA 3'),
(295,'171810023','BENNY','ZKKY24','siswa','Belum','XII IPA 3'),
(296,'171810035','BRANDON ZEFANYA GRACIELLO','KPSS64','siswa','Belum','XII IPA 3'),
(297,'171810042','DONI ANDRIAN','NXLC41','siswa','Belum','XII IPA 3'),
(298,'171810053','FELICA FERNANDA','BBZL53','siswa','Belum','XII IPA 3'),
(299,'171810055','GISELA WIJAYA','EGIM03','siswa','Belum','XII IPA 3'),
(300,'171810058','GRACE ANGELINA GUNAWAN','CDBI13','siswa','Belum','XII IPA 3'),
(301,'171810060','IMMANUEL GIOVANO','ZKKL15','siswa','Belum','XII IPA 3'),
(302,'171810062','IRENE ANGELINA','AGZL55','siswa','Belum','XII IPA 3'),
(303,'171810075','JASON KENJI','PRXT57','siswa','Belum','XII IPA 3'),
(304,'171810081','KENZHI WILLIAM YUSUF','ULNH99','siswa','Belum','XII IPA 3'),
(305,'171810085','LEO RHESSA WIJAYA','KOTW52','siswa','Belum','XII IPA 3'),
(306,'171810087','LISETTE MATHENA SUTOMO','TTAD31','siswa','Belum','XII IPA 3'),
(307,'171810100','NEYSA PURWOKO','RMRC08','siswa','Belum','XII IPA 3'),
(308,'171810103','PINUS AGUSFIRA LODANI','WLGY93','siswa','Belum','XII IPA 3'),
(309,'171810105','RAYMOND NATHANIEL','QZUZ51','siswa','Belum','XII IPA 3'),
(310,'171810106','REIGINA KEICY PURNAMA','GSVP04','siswa','Belum','XII IPA 3'),
(311,'171810109','RICHARD IVAN','UTYV24','siswa','Belum','XII IPA 3'),
(312,'171810113','SELMA QUEENA','LTHF56','siswa','Belum','XII IPA 3'),
(313,'171810123','STEVEN MARVEL WANGSAPUTRA','QPQC64','siswa','Belum','XII IPA 3'),
(314,'171810127','TERESA MAI','FECM33','siswa','Belum','XII IPA 3'),
(315,'171810135','YELLIE CHANDRIKA SHE','JDMM87','siswa','Belum','XII IPA 3'),
(316,'171810137','ABIGAIL MARCIA JUNANDI AFFANDI','GFFI89','siswa','Belum','XII IPS 1'),
(317,'171810001','AGNES ANDRIANA','JQBI89','siswa','Belum','XII IPS 1'),
(318,'171810007','AMELIA ARDHITA','JPCR18','siswa','Belum','XII IPS 1'),
(319,'171810008','AMZANAMIOS AMBARITA','ZNVY81','siswa','Belum','XII IPS 1'),
(320,'171810015','ARNIE YUAN CHRISTIAN','QMRP07','siswa','Belum','XII IPS 1'),
(321,'171810020','BERLITA','CALS39','siswa','Belum','XII IPS 1'),
(322,'171810024','CARROLINA THESSALONICA M','AKJS64','siswa','Belum','XII IPS 1'),
(323,'171810036','ELISABETH GISELA CLARIK','GAZD62','siswa','Belum','XII IPS 1'),
(324,'171810039','ERIKA PUSPITA SARI','OXQT06','siswa','Belum','XII IPS 1'),
(325,'171810045','FIERREST EYLIEM','RUTT95','siswa','Belum','XII IPS 1'),
(326,'171810057','GRISELLA KRISTY','CXYT68','siswa','Belum','XII IPS 1'),
(327,'171810059','INDRA SUBRATA','EPJO24','siswa','Belum','XII IPS 1'),
(328,'171810063','JENNIFER JANICE LAURENSIA','EAUU96','siswa','Belum','XII IPS 1'),
(329,'171810064','JENNIFER JOLIN','ULKQ73','siswa','Belum','XII IPS 1'),
(330,'161710069','JONATHAN KUSUMA','FCPW03','siswa','Belum','XII IPS 1'),
(331,'171810072','JOSEPH ANDREE TRIOTAMA PUTRA','LNHU07','siswa','Belum','XII IPS 1'),
(332,'171810077','KEVIN SUTANTO','RTDO59','siswa','Belum','XII IPS 1'),
(333,'171810080','LEILANI HUTAMA','JSRR00','siswa','Belum','XII IPS 1'),
(334,'171810083','LEVINA TJAHYADI','TCLQ81','siswa','Belum','XII IPS 1'),
(335,'171810092','MARVEL HERMANTO','ASWD60','siswa','Belum','XII IPS 1'),
(336,'171810102','NIKOLAS','XVCI16','siswa','Belum','XII IPS 1'),
(337,'181911138','PRISCILLA EUNICE SETIAWAN','KBGS44','siswa','Belum','XII IPS 1'),
(338,'171810107','RENALDY DALAY SUGIYARTO','CDBH71','siswa','Belum','XII IPS 1'),
(339,'171810112','SANI FERONIKA LIE','NSWR88','siswa','Belum','XII IPS 1'),
(340,'171810115','SHANETA ANJELITA','MGOX29','siswa','Belum','XII IPS 1'),
(341,'171810116','SHELDA  LUPITA CHANDRA','HTKB11','siswa','Belum','XII IPS 1'),
(342,'171810120','STEFALDY DANIEL SENJAYA','GTJB83','siswa','Belum','XII IPS 1'),
(343,'171810129','VERREL RAVAEL','NNYW34','siswa','Belum','XII IPS 1'),
(344,'171810133','VINCENTIUS REYNALDI','HUYP43','siswa','Belum','XII IPS 1'),
(345,'171810134','WILLIAM CHRISTIAN PURNOMO','ZQTG91','siswa','Belum','XII IPS 1'),
(346,'171810003','AHMAD SETIAWAN','EVWI33','siswa','Belum','XII IPS 2'),
(347,'171810006','AMANDA PUTRI ANDINI','SYDD43','siswa','Belum','XII IPS 2'),
(348,'171810010','ANDREAS ALPANDI SIMBOLON','KSFK45','siswa','Belum','XII IPS 2'),
(349,'171810012','ANGELICA VANESSA','UCPB82','siswa','Belum','XII IPS 2'),
(350,'171810014','ANGGI NATALIA','YXSH69','siswa','Belum','XII IPS 2'),
(351,'171810021','BIRGITTA SAMANTHA','EAXH30','siswa','Belum','XII IPS 2'),
(352,'171810025','CELLINA AMELIA','BTIS63','siswa','Belum','XII IPS 2'),
(353,'171810026','CHRISTABELA REVIANA','JSWX16','siswa','Belum','XII IPS 2'),
(354,'171810028','CHRISTOPHER AUDRIC','CEAU64','siswa','Belum','XII IPS 2'),
(355,'171810031','DAVID OWEN','MQYP57','siswa','Belum','XII IPS 2'),
(356,'171810038','ELYSA MEISYA','FJWK32','siswa','Belum','XII IPS 2'),
(357,'171810040','EVAND VARREL SUSANTO','RINW14','siswa','Belum','XII IPS 2'),
(358,'171810041','FARRELL REYNER LIMAN','GUKL53','siswa','Belum','XII IPS 2'),
(359,'171810043','FELICIA AMANDA BELVA','EOCL30','siswa','Belum','XII IPS 2'),
(360,'171810048','GABRIELA ANGIE VIRGINIA','AIGP85','siswa','Belum','XII IPS 2'),
(361,'171810050','GABRYELLA NASYA GAZELLE','IRNE37','siswa','Belum','XII IPS 2'),
(362,'171810067','JESSICA RACHEL','GBTE37','siswa','Belum','XII IPS 2'),
(363,'171810070','JONATHAN MALVIN SETIAWAN','RKPQ49','siswa','Belum','XII IPS 2'),
(364,'171810071','JORDY CHANDRA','FVOJ51','siswa','Belum','XII IPS 2'),
(365,'171810079','KRISTY ANDREANNE','IUFA20','siswa','Belum','XII IPS 2'),
(366,'171810082','LEVINA FILBERT','EGYO12','siswa','Belum','XII IPS 2'),
(367,'171810084','LEXANDRU JOSEP KUSUMO','UVWK61','siswa','Belum','XII IPS 2'),
(368,'161710079','MARIO ARYA','HDTS75','siswa','Belum','XII IPS 2'),
(369,'171810091','MARRION EIGNER TANNASYA','NTST03','siswa','Belum','XII IPS 2'),
(370,'171810094','MICHAEL  LAURENCE','FOCD46','siswa','Belum','XII IPS 2'),
(371,'171810096','MICHELLE SETIA','TULO55','siswa','Belum','XII IPS 2'),
(372,'171810104','RAYMOND','KDAR17','siswa','Belum','XII IPS 2'),
(373,'171810114','SESILIA SHERYL GUNADI','CNFR51','siswa','Belum','XII IPS 2'),
(374,'171810119','STANLY STEVEN','DNKP78','siswa','Belum','XII IPS 2'),
(375,'171810131','VICTON TANAKA','CBVB47','siswa','Belum','XII IPS 2');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `id_vote` int(11) NOT NULL AUTO_INCREMENT,
  `id_username` varchar(50) NOT NULL,
  `id_kandidat` varchar(50) NOT NULL,
  PRIMARY KEY (`id_vote`,`id_username`,`id_kandidat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vote` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;