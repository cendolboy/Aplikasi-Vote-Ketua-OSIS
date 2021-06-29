/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.1.34-MariaDB : Database - pilketos
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
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `id_vote` int(11) NOT NULL AUTO_INCREMENT,
  `id_username` varchar(50) NOT NULL,
  `id_kandidat` varchar(50) NOT NULL,
  PRIMARY KEY (`id_vote`,`id_username`,`id_kandidat`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
