# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: vuv72.case.edu (MySQL 5.5.31-0ubuntu0.12.04.2)
# Database: EC
# Generation Time: 2014-01-30 02:57:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table attributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `datamodel` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;

INSERT INTO `attributes` (`id`, `name`, `description`, `module`, `datamodel`, `created_at`, `updated_at`)
VALUES
	(103,'AC Energy',NULL,1,1,NULL,NULL),
	(104,'AC Power',NULL,1,1,NULL,NULL),
	(105,'AC Voltage',NULL,1,1,NULL,NULL),
	(106,'AC Current',NULL,1,1,NULL,NULL),
	(107,'DC Voltage',NULL,1,1,NULL,NULL),
	(108,'AC Energy',NULL,2,1,NULL,NULL),
	(109,'AC Power',NULL,2,1,NULL,NULL),
	(110,'AC Voltage',NULL,2,1,NULL,NULL),
	(111,'AC Current',NULL,2,1,NULL,NULL),
	(112,'DC Voltage',NULL,2,1,NULL,NULL);

/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table datamodels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `datamodels`;

CREATE TABLE `datamodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `modules` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `datasource` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `datamodels` WRITE;
/*!40000 ALTER TABLE `datamodels` DISABLE KEYS */;

INSERT INTO `datamodels` (`id`, `name`, `modules`, `description`, `status`, `datasource`, `created_at`, `updated_at`)
VALUES
	(1,'Solectria',2,'Power',1,1,'2014-01-28 22:39:00',NULL),
	(2,'Enphase',NULL,NULL,NULL,0,'2014-01-28 22:39:00',NULL);

/*!40000 ALTER TABLE `datamodels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table datamodules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `datamodules`;

CREATE TABLE `datamodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `datamodel` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `datamodules` WRITE;
/*!40000 ALTER TABLE `datamodules` DISABLE KEYS */;

INSERT INTO `datamodules` (`id`, `name`, `description`, `status`, `datamodel`, `created_at`, `updated_at`)
VALUES
	(1,'Inv1','Inverter1',1,1,NULL,NULL),
	(2,'Inv2','Inverter2',1,1,NULL,NULL);

/*!40000 ALTER TABLE `datamodules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table datasources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `datasources`;

CREATE TABLE `datasources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `datasources` WRITE;
/*!40000 ALTER TABLE `datasources` DISABLE KEYS */;

INSERT INTO `datasources` (`id`, `name`, `location`, `type`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'SDLE','Cleveland','All',1,'2014-01-28 22:39:00',NULL);

/*!40000 ALTER TABLE `datasources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20131211045541'),
	('20131211050708'),
	('20131211052051'),
	('20131211052650');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
