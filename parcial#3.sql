/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 8.0.17 : Database - parcial2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`parcial2` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `parcial2`;

/*Table structure for table `asistencia` */

DROP TABLE IF EXISTS `asistencia`;

CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cc` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `semestre` varchar(11) DEFAULT NULL,
  `opciones` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `asistencia` */

/*Table structure for table `estudiante` */

DROP TABLE IF EXISTS `estudiante`;

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cc` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `materia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `estudiante` */

insert  into `estudiante`(`id`,`cc`,`nombre`,`apellido`,`celular`,`email`,`semestre`,`materia`) values (47,'121234','Andres','Diaz Rodriguez','3182220939','andres@gmail.com',8,'Inteligencia Artificial'),(48,'112473635','Jorge','Lopez','3112267585','jorge@gmail.com',4,'Inteligencia Artificial');

/*Table structure for table `materias` */

DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `materias` */

insert  into `materias`(`id`,`name`,`semester`) values (8,'Bases de Datos 2','4'),(10,'Inteligencia Artificial','7'),(12,'Redes I','4'),(13,'Calculo Diferencial','4'),(14,'Logica Matematica','3');

/*Table structure for table `materias_estudiante` */

DROP TABLE IF EXISTS `materias_estudiante`;

CREATE TABLE `materias_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_materias` int(11) DEFAULT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materias_estudiante` */

/*Table structure for table `session` */

DROP TABLE IF EXISTS `session`;

CREATE TABLE `session` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `materia` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `hora_ini` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `hora_fin` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `asistencia` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `session` */

insert  into `session`(`id`,`materia`,`fecha`,`hora_ini`,`hora_fin`,`asistencia`) values (14,'Inteligencia Artificial','2021-05-22','21:50','22:50',NULL),(15,'Logica Matematica','2021-05-02','12:00','03:30',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
