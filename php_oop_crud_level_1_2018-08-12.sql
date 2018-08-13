# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Base de datos: php_oop_crud_level_1
# Tiempo de Generación: 2018-08-13 00:25:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `created`, `modified`)
VALUES
	(1,'Fashion','2014-06-01 00:35:07','2014-05-30 17:34:33'),
	(2,'Electronics','2014-06-01 00:35:07','2014-05-30 17:34:33'),
	(3,'Motors','2014-06-01 00:35:07','2014-05-30 17:34:54');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`, `image`)
VALUES
	(1,'LG P880 4X HD','My first awesome phone!',336,3,'2014-06-01 01:12:26','2014-05-31 17:12:26',NULL),
	(2,'Google Nexus 4','The most awesome phone of 2013!',299,2,'2014-06-01 01:12:26','2014-05-31 17:12:26',NULL),
	(3,'Samsung Galaxy S4','How about no?',600,3,'2014-06-01 01:12:26','2014-05-31 17:12:26',NULL),
	(6,'Bench Shirt','The best shirt!',29,1,'2014-06-01 01:12:26','2014-05-31 02:12:21',NULL),
	(7,'Lenovo Laptop','My business partner.',399,2,'2014-06-01 01:13:45','2014-05-31 02:13:39',NULL),
	(8,'Samsung Galaxy Tab 10.1','Good tablet.',259,2,'2014-06-01 01:14:13','2014-05-31 02:14:08',NULL),
	(9,'Spalding Watch','My sports watch.',199,1,'2014-06-01 01:18:36','2014-05-31 02:18:31',NULL),
	(10,'Sony Smart Watch','The coolest smart watch!',300,2,'2014-06-06 17:10:01','2014-06-05 18:09:51',NULL),
	(11,'Huawei Y300','For testing purposes.',100,2,'2014-06-06 17:11:04','2014-06-05 18:10:54',NULL),
	(12,'Abercrombie Lake Arnold Shirt','Perfect as gift!',60,1,'2014-06-06 17:12:21','2014-06-05 18:12:11',NULL),
	(13,'Abercrombie Allen Brook Shirtt','Cool red shirt!',75,1,'2014-06-06 17:12:59','2014-06-05 18:12:49',NULL),
	(25,'Abercrombie Allen Anew Shirt','Awesome new shirt!',1500,1,'2014-11-22 18:42:13','2014-11-21 19:42:13',NULL),
	(26,'Another product edited','Awesome product!!',555,1,'2014-11-22 19:07:34','2014-11-21 20:07:34',NULL),
	(27,'Bag','Awesome bag for you!',999,1,'2014-12-04 21:11:36','2014-12-03 22:11:36',NULL),
	(28,'Wallet','You can absolutely use this one!',799,1,'2014-12-04 21:12:03','2014-12-03 22:12:03',NULL),
	(30,'Wal-mart Shirt','',555,2,'2014-12-13 00:52:29','2014-12-12 01:52:29',NULL),
	(31,'Amanda Waller Shirt','New awesome shirt!',333,1,'2014-12-13 00:52:54','2014-12-12 01:52:54',NULL),
	(32,'Washing Machine Model PTRR','Some new product.',999,1,'2015-01-08 22:44:15','2015-01-07 23:44:15',NULL),
	(33,'Tablet Samsung','Tablet Samsung released in this month',500,2,'2018-08-11 21:50:39','2018-08-11 19:50:39',NULL),
	(38,'new product jou with image','jou jou',500,1,'2018-08-12 01:01:42','2018-08-11 23:01:42','572ca7b03b78b4e320fd263294785b3bb18f45d9-joubits.png'),
	(37,'product jou','joujou',232,3,'2018-08-12 00:59:30','2018-08-11 22:59:30','5c03551cc583b36a459bfa9931f029642686f412-ubws.jpg');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `contact_number` varchar(64) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(512) NOT NULL,
  `access_level` varchar(16) NOT NULL,
  `access_code` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending,1=confirmed',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='admin and customer users';

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `contact_number`, `address`, `password`, `access_level`, `access_code`, `status`, `created`, `modified`)
VALUES
	(1,'Mike','Dalisay','mike@example.com','0999999999','Blk. 24 A, Lot 6, Ph. 3, Peace Village','$2y$10$AUBptrm9sQF696zr8Hv31On3x4wqnTihdCLocZmGLbiDvyLpyokL.','Admin','',1,'0000-00-00 00:00:00','2016-06-13 18:17:47'),
	(2,'Lauro','Abogne','lauro@eacomm.com','08888888','Pasig City','$2y$10$it4i11kRKrB19FfpPRWsRO5qtgrgajL7NnxOq180MsIhCKhAmSdDa','Customer','',1,'0000-00-00 00:00:00','2015-03-24 07:00:21'),
	(4,'Darwin','Dalisay','darwin@example.com','9331868359','Blk 24 A Lot 6 Ph 3\r\nPeace Village, San Luis','$2y$10$tLq9lTKDUt7EyTFhxL0QHuen/BgO9YQzFYTUyH50kJXLJ.ISO3HAO','Customer','ILXFBdMAbHVrJswNDnm231cziO8FZomn',1,'2014-10-29 17:31:09','2016-06-13 18:18:25'),
	(7,'Marisol Jane','Dalisay','mariz@gmail.com','09998765432','Blk. 24 A, Lot 6, Ph. 3, Peace Village','mariz','Customer','',1,'2015-02-25 09:35:52','2015-03-24 07:00:21'),
	(9,'Marykris','De Leon','marykrisdarell.deleon@gmail.com','09194444444','Project 4, QC','$2y$10$uUy7D5qmvaRYttLCx9wnU.WOD3/8URgOX7OBXHPpWyTDjU4ZteSEm','Customer','',1,'2015-02-27 14:28:46','2015-03-24 06:51:03'),
	(10,'Merlin','Duckerberg','merlin@gmail.com','09991112333','Project 2, Quezon City','$2y$10$VHY58eALB1QyYsP71RHD1ewmVxZZp.wLuhejyQrufvdy041arx1Kq','Admin','',1,'2015-03-18 06:45:28','2015-03-24 07:00:21'),
	(14,'Charlon','Ignacio','charlon@gmail.com','09876543345','Tandang Sora, QC','$2y$10$Fj6O1tPYI6UZRzJ9BNfFJuhURN9DnK5fQGHEsfol5LXRu.tCYYggu','Customer','',1,'2015-03-24 08:06:57','2015-03-24 07:48:00'),
	(15,'Kobe Bro','Bryant','kobe@gmail.com','09898787674','Los Angeles, California','$2y$10$fmanyjJxNfJ8O3p9jjUixu6EOHkGZrThtcd..TeNz2g.XZyCIuVpm','Customer','',1,'2015-03-26 11:28:01','2015-03-26 03:39:52'),
	(20,'Tim','Duncan','tim@example.com','9999999','San Antonio, Texas, USA','$2y$10$9OSKHLhiDdBkJTmd3VLnQeNPCtyH1IvZmcHrz4khBMHdxc8PLX5G6','Customer','0X4JwsRmdif8UyyIHSOUjhZz9tva3Czj',1,'2016-05-26 01:25:59','2016-05-25 17:25:59'),
	(21,'Tony','Parker','tony@example.com','8888888','Blk 24 A Lot 6 Ph 3\r\nPeace Village, San Luis','$2y$10$lBJfvLyl/X5PieaztTYADOxOQeZJCqETayF.O9ld17z3hcKSJwZae','Customer','THM3xkZzXeza5ISoTyPKl6oLpVa88tYl',1,'2016-05-26 01:29:01','2016-06-13 17:46:33'),
	(22,'jou','jou','jou@gmail.com','jou','ecuador','$2y$10$4ZiEdRcfVYc5q8w7aUTAJequdJS4GyitnM5rMjhfKCzxoU8TM/1bG','Customer','',1,'2018-08-11 18:51:14','2018-08-12 07:54:31'),
	(0,'luis','luis','luis@gmail.com','luis','luis','$2y$10$dY516tc2MnXjYDTXTxOvbuRcoEjpyqNljIS1dd064B9Xjn7GRe7BW','Customer','',1,'2018-08-12 19:49:38','2018-08-12 17:49:39'),
	(0,'manu','manu','manu@gmail.com','manu','manu','$2y$10$2vDI0Z8c0WxgUWyoUNg/he/B1lLU9M9b71O/Kva6plaOXAp/LGbhy','Customer','',1,'2018-08-12 19:53:54','2018-08-12 17:53:54');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
