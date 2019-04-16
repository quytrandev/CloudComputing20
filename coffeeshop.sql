/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.0.82-community-nt : Database - db_coffee
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `db_coffee`;

USE `db_coffee`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL auto_increment,
  `city` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `zipcode` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`city`,`country`,`state`,`zipcode`) values (1,'TpHCM','23/11','Quận Tân Bình','52556'),(2,'TpHCM','4/2','Quận Thủ Đức','64353');

/*Table structure for table `order_line` */

DROP TABLE IF EXISTS `order_line`;

CREATE TABLE `order_line` (
  `id` bigint(20) NOT NULL auto_increment,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) default NULL,
  `product_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKk9f9t1tmkbq5w27u8rrjbxxg6` (`order_id`),
  KEY `FKpf904tci8garypkvm32cqupye` (`product_id`),
  CONSTRAINT `FKpf904tci8garypkvm32cqupye` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKk9f9t1tmkbq5w27u8rrjbxxg6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `order_line` */

insert  into `order_line`(`id`,`quantity`,`order_id`,`product_id`) values (1,1,1,3),(2,2,1,5);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL auto_increment,
  `order_date` date NOT NULL,
  `person_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1b0m4muwx1t377w9if3w6wwqn` (`person_id`),
  CONSTRAINT `FK1b0m4muwx1t377w9if3w6wwqn` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`order_date`,`person_id`) values (1,'2019-04-16',2);

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` varchar(255) NOT NULL,
  `enable` bit(1) default NULL,
  `encrypted_password` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) NOT NULL,
  `address_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKk7rgn6djxsv2j2bv1mvuxd4m9` (`address_id`),
  CONSTRAINT `FKk7rgn6djxsv2j2bv1mvuxd4m9` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `person` */

insert  into `person`(`id`,`email`,`enable`,`encrypted_password`,`first_name`,`last_name`,`phone`,`username`,`address_id`) values (1,'admin@mail.com','','$2a$10$vZDAUF80FMSg3YGjOGgHcOV1FvKMAqYZyo7XoKPMPqQqI.7AF1sbC','admin',NULL,'123456789','admin',1),(2,'user@mail.com','','$2a$10$vZDAUF80FMSg3YGjOGgHcOV1FvKMAqYZyo7XoKPMPqQqI.7AF1sbC','user',NULL,'987654321','user',2);

/*Table structure for table `person_roles` */

DROP TABLE IF EXISTS `person_roles`;

CREATE TABLE `person_roles` (
  `person_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`person_id`,`role_id`),
  KEY `FKeylgk8k8teqaxmadsiaixinfe` (`role_id`),
  CONSTRAINT `FKs955luj19xyjwi3s1omo1pgh4` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FKeylgk8k8teqaxmadsiaixinfe` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `person_roles` */

insert  into `person_roles`(`person_id`,`role_id`) values (1,1),(2,2);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`description`,`price`,`product_name`,`product_type`) values (1,'Best-seller',15000,'Cà phê đen','DRINKS'),(2,'',20000,'Cà phê sữa đá','DRINKS'),(3,'',15000,'Bánh mì heo quay','BREAD'),(4,'',20000,'Bánh ngọt','BREAD'),(5,'',30000,'Cơm sườn','RICE'),(6,'',35000,'Hủ tiếu','NOODLES'),(7,'New',20000,'Trà đào','DRINKS'),(8,'',30000,'Sandwich','BREAD'),(9,'New',30000,'Cappuccino','DRINKS'),(10,'',25000,'Trà sữa','DRINKS');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL auto_increment,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`role`) values (1,'ROLE_ADMIN'),(2,'ROLE_USER');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
