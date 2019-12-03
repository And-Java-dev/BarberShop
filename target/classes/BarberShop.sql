/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.18 : Database - barbershop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`barbershop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `barbershop`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`id`,`email`,`password`) values 
(1,'admin','admin');

/*Table structure for table `apointments` */

DROP TABLE IF EXISTS `apointments`;

CREATE TABLE `apointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  KEY `master_id` (`master_id`),
  CONSTRAINT `apointments_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `apointments_ibfk_2` FOREIGN KEY (`master_id`) REFERENCES `masters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `apointments` */

insert  into `apointments`(`id`,`name`,`time`,`service_id`,`master_id`,`phoneNumber`,`email`) values 
(4,'ll','11/07/2019null',1,1,'111','a@mail.ru'),
(5,'ll','11/01/2019null',1,2,'111','a@mail.ru'),
(6,'a','11/21/201907.37',1,2,'111','1@mail.com'),
(7,'aaa','11/13/2019 08.41',1,1,'4444','a@mail.ru1'),
(8,'qqqqqq','11/27/2019 06.44',1,1,'111','James@mail.com'),
(9,'qsasasas','11/20/2019 08.41',1,2,'405','1@mail.com'),
(10,'a','11/14/2019 08.41',1,1,'405','raf@mail.ru'),
(11,'55555555555555','11/05/2019 10:10:10',1,1,'405','andranikhovhannisyan024@gmail.com'),
(12,'iiiii','11/26/2019 02.29',1,2,'80','a@mail.ru'),
(13,',mmmm','11/06/2019 08.41',1,1,'1','mmm@mail.com');

/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `imgPath` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `image` */

insert  into `image`(`imgPath`) values 
('1574466067915_270550603408114290px-BI-2_band.jpg');

/*Table structure for table `masters` */

DROP TABLE IF EXISTS `masters`;

CREATE TABLE `masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `masters` */

insert  into `masters`(`id`,`name`,`surname`,`imagePath`,`profession`) values 
(1,'bob','gilan',NULL,'aaaa'),
(2,'sir','sir',NULL,'aaaaaaa'),
(3,'Rafik','Manukyan','1574466549842_271032530084200thumbbb-02.jpg','Pres');

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagePath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `services` */

insert  into `services`(`id`,`name`,`description`,`imagePath`,`price`) values 
(1,'makiaj',NULL,NULL,200),
(3,'ll','100','1574467973411_272456099804793img_about_me.jpg',10),
(4,'ll','aaaa','1574469209766_273692454276102b_autoeczotic037.jpg',10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
