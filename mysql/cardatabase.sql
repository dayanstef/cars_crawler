/*
SQLyog Community v12.14 (64 bit)
MySQL - 5.6.17 : Database - cardatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `autotrader_cars` */

DROP TABLE IF EXISTS `autotrader_cars`;

CREATE TABLE `autotrader_cars` (
  `id` int(11) DEFAULT NULL,
  `vin` int(11) unsigned DEFAULT NULL,
  UNIQUE KEY `idx_vin` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `autotrader_history` */

DROP TABLE IF EXISTS `autotrader_history`;

CREATE TABLE `autotrader_history` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `autotrader_urls` */

DROP TABLE IF EXISTS `autotrader_urls`;

CREATE TABLE `autotrader_urls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inserted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_status` (`status`),
  UNIQUE KEY `idx_inserted_at` (`inserted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `master_settings` */

DROP TABLE IF EXISTS `master_settings`;

CREATE TABLE `master_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL,
  `active` tinytext,
  `block_size` int(11) unsigned NOT NULL,
  `main_startid` int(11) unsigned NOT NULL,
  `recon_startid` int(11) unsigned NOT NULL,
  `cycles` int(11) unsigned NOT NULL,
  `cycles_limit` int(11) unsigned NOT NULL,
  `overs` int(11) unsigned NOT NULL,
  `recheck_active` varchar(10) DEFAULT NULL,
  `recheck_olddays` int(11) unsigned NOT NULL,
  `recheck_offset` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `idx_site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `template_cars` */

DROP TABLE IF EXISTS `template_cars`;

CREATE TABLE `template_cars` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `template_urls` */

DROP TABLE IF EXISTS `template_urls`;

CREATE TABLE `template_urls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
