-- Generation time: Mon, 01 Jun 2020 19:29:11 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `communities`;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` VALUES ('9','alias'),
('29','aut'),
('37','blanditiis'),
('11','cum'),
('13','deleniti'),
('38','dolore'),
('2','dolorem'),
('44','doloribus'),
('17','dolorum'),
('3','ea'),
('35','ea'),
('21','eaque'),
('26','eaque'),
('15','enim'),
('19','enim'),
('18','eos'),
('1','esse'),
('45','est'),
('20','et'),
('23','et'),
('34','et'),
('4','fuga'),
('48','fugit'),
('8','illum'),
('10','inventore'),
('30','labore'),
('14','laboriosam'),
('47','minus'),
('43','nam'),
('46','necessitatibus'),
('49','nesciunt'),
('5','nobis'),
('50','occaecati'),
('24','omnis'),
('41','perferendis'),
('12','placeat'),
('32','placeat'),
('7','quae'),
('28','quas'),
('39','quas'),
('27','quasi'),
('25','quia'),
('31','quia'),
('36','quis'),
('42','quis'),
('6','quo'),
('33','sed'),
('40','similique'),
('22','temporibus'),
('16','voluptas'); 


DROP TABLE IF EXISTS `friend_requests`;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `likes` VALUES ('1','1','1','2019-12-23 10:43:04'),
('2','2','2','1999-06-10 05:43:24'),
('3','3','3','2004-04-27 19:40:51'),
('4','4','4','1997-09-27 19:23:33'),
('5','5','5','1999-05-27 03:14:28'),
('6','6','6','1973-08-18 03:49:08'),
('7','7','7','2008-02-04 12:21:59'),
('8','8','8','2018-09-07 06:51:36'),
('9','9','9','1982-11-27 17:07:03'),
('10','10','10','1976-08-04 16:17:22'),
('11','11','11','1996-04-29 08:04:35'),
('12','12','12','1991-03-04 03:33:43'),
('13','13','13','2019-05-27 13:25:30'),
('14','14','14','1973-09-30 05:02:02'),
('15','15','15','1972-05-01 15:33:16'),
('16','16','16','1992-01-29 05:13:48'),
('17','17','17','2014-04-02 18:38:40'),
('18','18','18','1984-01-10 11:20:15'),
('19','19','19','2014-11-06 21:17:46'),
('20','20','20','2017-04-15 21:06:30'),
('21','21','21','1977-09-24 01:51:25'),
('22','22','22','1999-07-03 08:59:35'),
('23','23','23','2000-05-26 22:15:16'),
('24','24','24','1973-09-04 05:27:29'),
('25','25','25','2003-09-23 13:10:05'),
('26','26','26','1979-03-24 01:21:35'),
('27','27','27','1978-01-16 06:11:39'),
('28','28','28','2004-02-13 21:11:39'),
('29','29','29','1993-08-06 09:51:24'),
('30','30','30','1994-11-07 16:56:10'),
('31','31','31','1997-10-26 21:41:57'),
('32','32','32','2019-07-13 22:40:51'),
('33','33','33','1970-08-20 01:36:00'),
('34','34','34','2017-05-03 20:26:08'),
('35','35','35','2003-07-31 05:44:21'),
('36','36','36','1995-09-03 05:15:43'),
('37','37','37','2001-06-16 16:23:35'),
('38','38','38','2011-05-19 19:52:29'),
('39','39','39','2015-02-01 08:33:56'),
('40','40','40','2004-08-31 11:14:42'),
('41','41','41','2006-10-31 01:00:38'),
('42','42','42','1996-02-23 00:20:10'),
('43','43','43','1972-11-26 23:46:39'),
('44','44','44','2000-07-24 01:53:34'),
('45','45','45','1988-01-30 08:08:17'),
('46','46','46','2019-04-07 15:09:43'),
('47','47','47','2012-11-13 19:48:28'),
('48','48','48','2017-11-21 22:00:31'),
('49','49','49','1970-03-04 17:08:25'),
('50','50','50','1988-11-01 22:30:36'); 


DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` VALUES ('1','1','1','Modi minima impedit placeat nihil qui. Iure fugit ut aperiam enim rerum deleniti. Odit qui non voluptas reprehenderit. Dolor reprehenderit rerum et adipisci quae distinctio.','aut','217907',NULL,'1985-08-11 02:21:04','1986-11-06 00:09:04'),
('2','2','2','Aspernatur neque sunt quae autem. Rem nisi optio enim ullam eveniet et dolorem.','id','0',NULL,'2019-03-12 03:23:20','2019-05-29 13:14:32'),
('3','3','3','Sint nemo molestiae eius dolor veniam non maiores. Repellat est sequi distinctio omnis possimus dolorum. Voluptas eveniet assumenda rem et.','culpa','6283430',NULL,'2005-02-28 18:31:42','2010-07-29 19:25:25'),
('4','4','4','Esse rerum et placeat dolorem ut. Voluptatum ea beatae inventore in voluptates omnis. Ut officia ratione iusto repellat quia.','doloribus','585979353',NULL,'1978-05-25 05:11:21','2002-11-16 02:39:16'),
('5','5','5','Atque rerum delectus est a sit inventore sapiente. Ut laboriosam minima ratione ut. Id dolor fugit unde. Ut explicabo ea qui nulla aut.','nihil','905150',NULL,'2003-03-29 09:37:04','1994-10-01 20:06:43'),
('6','6','6','Culpa autem error molestiae aspernatur. Dolorem tempora in atque et. Numquam rerum et nesciunt amet enim praesentium.','culpa','32412754',NULL,'2015-02-25 22:14:13','2017-04-12 21:05:34'),
('7','7','7','Maiores non at assumenda officiis ipsum expedita. Molestias mollitia sint et quidem. Cum accusamus sunt distinctio consequatur sed ut et. Totam excepturi quae dignissimos labore.','omnis','7483145',NULL,'1997-10-29 16:15:01','1978-10-08 08:38:46'),
('8','8','8','Magni ipsa consequatur commodi doloremque tempora ab molestiae animi. Impedit ducimus sint ea ut minima dolores dolor sit. Et in eum sed optio voluptas autem doloremque. Laboriosam placeat voluptas temporibus itaque aliquam tempora.','quisquam','933',NULL,'1989-08-05 21:19:39','1986-09-17 08:23:43'),
('9','9','9','Praesentium voluptatem autem similique voluptatum alias. Maiores aliquid iusto amet sed et quo consequatur. Autem quae sed modi corrupti distinctio soluta praesentium. Inventore cum tenetur labore perspiciatis consequuntur rerum.','alias','786466117',NULL,'1989-01-03 15:08:57','2010-03-29 18:53:52'),
('10','10','10','Aut ut praesentium minus laboriosam qui. Ut nostrum et dolorem aliquid. Repellat perferendis facilis qui itaque voluptas distinctio.','tenetur','0',NULL,'1979-04-15 19:59:24','2014-07-24 08:29:50'),
('11','11','11','Laudantium sed inventore et et. Libero aut facilis aut et ipsa. Rem eos aperiam laboriosam illum eius aut reiciendis.','accusantium','5750',NULL,'2019-06-04 21:37:11','1979-10-08 06:46:00'),
('12','12','12','Voluptatem odio dolor voluptatem culpa quam. Et doloremque accusantium in placeat rerum explicabo. Libero a deleniti voluptas quaerat nemo cupiditate et. Facilis sequi mollitia laboriosam dicta dolorem temporibus.','exercitationem','4',NULL,'2017-05-27 06:54:30','1985-10-28 14:02:45'),
('13','13','13','Assumenda ea quasi est earum facilis qui. Enim inventore explicabo sit et. Vel praesentium eos voluptatem omnis officia. Sit et et maxime ex aperiam. Tempora veritatis alias non.','architecto','308015',NULL,'1973-02-18 02:52:00','1985-03-12 13:58:29'),
('14','14','14','Officiis hic doloremque voluptatem et ut dignissimos ut. Deleniti placeat aspernatur deserunt minima omnis eaque aut consequatur. Vel sunt quas enim est. Et reprehenderit veniam animi aut praesentium mollitia beatae.','quia','6800984',NULL,'1989-05-24 23:01:25','1989-04-24 12:43:23'),
('15','15','15','Eos debitis praesentium nam accusantium. Itaque ut voluptatem hic non quae libero. Explicabo sunt explicabo sed et. Sunt autem eos odio laborum. Delectus dolorem est harum dolore odio sequi nihil beatae.','id','6179061',NULL,'1993-03-09 02:48:55','1990-06-11 16:29:28'),
('16','16','16','Omnis alias accusantium officiis sunt ad. Quia in nam tenetur. Ab aliquam asperiores id porro officia. Ea enim ab facere sit cumque voluptas qui.','facilis','776012255',NULL,'2015-05-19 05:45:13','1975-12-14 07:09:59'),
('17','17','17','At vitae adipisci laudantium pariatur culpa autem. Qui sint sit consequuntur quo similique commodi.','voluptates','7',NULL,'1970-07-02 05:26:14','1982-03-20 05:36:51'),
('18','18','18','Nihil minima est voluptas ipsa doloribus. Quis sint odio at vel aliquid. Sit omnis dolorem dolore.','ut','374554400',NULL,'2020-01-18 21:00:50','2010-10-02 04:16:26'),
('19','19','19','Explicabo nihil quidem labore assumenda. Non occaecati culpa velit voluptatibus error commodi aut quod. Possimus vel labore optio enim enim. Aliquam expedita dolorem aliquid ullam necessitatibus asperiores.','et','3578',NULL,'1998-08-16 12:32:32','2005-02-03 05:59:02'),
('20','20','20','Nostrum odit non aut sequi. Non doloribus vel mollitia adipisci quasi dolores. Accusantium minus aut ut ullam sequi suscipit veniam explicabo.','ducimus','76',NULL,'2015-03-02 22:25:13','1989-12-18 18:14:35'),
('21','21','21','Repellat nobis repellat et modi perferendis. Tempore est nihil quia exercitationem maxime. Magnam sed quia molestiae voluptate. Consequatur qui ullam adipisci qui similique quia.','illo','6',NULL,'1973-02-11 13:51:43','1970-02-26 09:18:55'),
('22','22','22','Voluptas perferendis omnis aut aut vitae similique. Sit omnis accusamus et. Nostrum sequi reprehenderit mollitia in qui. Omnis animi error culpa molestiae qui accusamus.','labore','39926740',NULL,'1970-10-22 06:19:42','1976-12-06 03:06:13'),
('23','23','23','Impedit modi praesentium et fuga aut. Velit in in dolores blanditiis aliquam repellat. Corporis tempore facilis odio labore sint architecto ratione. Cum dignissimos qui eos voluptate aut repudiandae.','vero','0',NULL,'1979-06-23 02:10:33','1995-08-16 17:16:55'),
('24','24','24','Recusandae quidem est sed expedita et quaerat consequatur. Suscipit alias velit eum dicta dolor ipsum provident adipisci. Est aut veritatis sunt. Est voluptatem aut maxime dolores voluptas. Ut ut ea nostrum cumque dicta ab voluptates numquam.','in','4612851',NULL,'1996-11-03 01:42:12','1982-09-28 18:21:00'),
('25','25','25','At recusandae omnis facilis animi repudiandae eveniet. Dolorem sequi at officiis cupiditate eveniet est neque. Omnis quia accusantium odit deleniti est. Quis ut ab deleniti minima possimus quod officiis.','vel','0',NULL,'2015-10-05 06:56:52','1974-10-25 14:16:37'),
('26','26','26','Ducimus expedita quibusdam consequuntur doloribus. Animi dolorum esse exercitationem accusantium. Et aliquid tenetur quaerat consequatur voluptatibus doloribus quia quia. Perspiciatis modi ad nobis nihil ut.','ea','589340',NULL,'1998-02-12 08:08:07','1972-12-29 02:17:08'),
('27','27','27','Minima tempora voluptatem beatae ut fugit voluptatem. Consequatur officia veritatis earum nulla. Possimus fugit voluptatem ut fugiat.','nihil','76522',NULL,'1976-11-27 14:07:06','1980-10-24 14:03:08'),
('28','28','28','Adipisci et perspiciatis accusantium corrupti sed cupiditate et. Nihil aut doloremque repellendus odio. Sint sapiente animi magni minus. Dolorem voluptatem nam deleniti. Minus ut vel possimus.','nisi','901',NULL,'2016-02-22 14:36:08','1985-11-16 13:54:15'),
('29','29','29','Temporibus dicta dolores veritatis repudiandae dolor consequatur quos est. Deserunt reprehenderit quis rem aut id fuga. Et quam et ipsam sunt et inventore aut dolores. Enim nemo nihil voluptatem rerum aut saepe.','non','3',NULL,'1984-03-22 11:26:57','1972-06-21 18:07:05'),
('30','30','30','Esse aut ut aut repellendus. Illo ea nisi ex a. Et magni consequatur recusandae qui laudantium assumenda aut.','dolorem','8',NULL,'2012-04-24 18:47:29','2012-03-04 06:38:03'),
('31','31','31','Dolor mollitia nihil aut. Velit magnam minus fugiat non tenetur quam. Aperiam sed non mollitia in recusandae rerum.','minus','334',NULL,'1994-11-30 10:53:47','1980-05-19 00:59:42'),
('32','32','32','Sed itaque eum repudiandae mollitia. Quasi laboriosam maiores aut mollitia quo ex. Repudiandae consequatur dolorem ut corporis nemo aut non quia. Velit recusandae possimus sunt ex expedita et.','qui','756',NULL,'2013-04-19 01:28:25','1972-05-12 18:38:18'),
('33','33','33','Est cupiditate illum expedita nulla sint sit. Quasi mollitia quis officia et facere ducimus. Animi tempore quia ea repellat molestiae cumque. Saepe sit nam soluta esse.','quas','40909',NULL,'1997-08-02 13:59:44','2015-08-07 04:36:47'),
('34','34','34','Sunt aut occaecati eos. Itaque corrupti voluptatibus voluptatem tenetur. Maxime porro quo nihil vel eaque consectetur. Cum consequatur ab rem incidunt. Earum voluptatem culpa veritatis dignissimos ad.','et','73',NULL,'2017-03-05 08:53:24','1972-02-09 11:31:13'),
('35','35','35','Expedita dolorem in qui alias cupiditate repellendus maiores. Illum odit dolorum modi maiores ut aut distinctio. Harum aliquid iste aut molestias aut blanditiis est ab.','beatae','95554060',NULL,'2005-12-24 10:47:41','2001-10-01 19:30:41'),
('36','36','36','Voluptatem et omnis distinctio explicabo qui voluptate. Ut et modi est quia error. Sit vel ipsam nemo aut.','ipsa','92',NULL,'1976-12-30 07:17:59','1974-10-12 18:13:40'),
('37','37','37','Corrupti ducimus autem veritatis eius. Sit voluptatum in unde voluptatem. Doloribus error voluptatem pariatur aliquid natus doloribus.','itaque','4530626',NULL,'2003-12-09 04:23:21','1998-11-25 01:27:31'),
('38','38','38','Placeat nobis error illum minus. Earum earum aut tenetur vel eos eum est. Eos aperiam id in repellendus eos. Porro qui eius temporibus quos nemo.','enim','942363017',NULL,'1996-01-11 04:14:54','2005-10-07 00:04:14'),
('39','39','39','Sed occaecati ut itaque omnis doloribus. Ut amet deleniti dolores dolor quis magni nulla. Dignissimos consequatur dolorum esse animi tempore.','in','4911614',NULL,'1985-04-12 03:48:15','2009-09-30 03:03:44'),
('40','40','40','Praesentium aut et voluptatibus dolor et. Dolores ut repellendus voluptatem et veniam et. Quis vitae voluptatem voluptas deleniti totam natus.','modi','89595066',NULL,'2002-08-01 03:25:05','1995-11-26 05:46:15'),
('41','41','41','Est aperiam amet vel quia ut occaecati nulla. Nihil dignissimos harum fugiat quae at debitis. Id beatae inventore ducimus laudantium et suscipit distinctio. Dicta quia consectetur sunt. Dolor voluptatibus dolor laboriosam error iste earum.','commodi','6235061',NULL,'2008-07-31 01:39:59','2001-03-24 22:56:51'),
('42','42','42','Magnam inventore molestiae dolor sed eos debitis voluptatum. Totam est repellendus culpa doloribus ipsum enim.','ducimus','2388625',NULL,'2003-09-14 02:40:23','1999-08-23 23:53:54'),
('43','43','43','Quam odit eum quidem ut. Veritatis amet reiciendis voluptatem est omnis quis non. Maxime consequatur quisquam natus.','deleniti','701738',NULL,'2014-10-12 12:55:32','2016-10-20 06:10:32'),
('44','44','44','Deleniti inventore velit repellat. Officiis amet nobis fugiat numquam sunt. Praesentium omnis sint autem voluptas omnis consequatur.','facere','23807',NULL,'2010-10-24 13:01:28','1976-04-11 23:25:46'),
('45','45','45','Rerum iure suscipit suscipit officiis quia impedit quod molestias. Quia repellendus ut corporis magnam sed vel vel et. Repellat eaque praesentium officia mollitia recusandae voluptatum iure.','eius','468',NULL,'1997-02-23 11:47:51','1973-12-22 17:39:50'),
('46','46','46','Ut ex quam architecto repudiandae ut. Quasi dolore voluptate nam ratione nesciunt deleniti. Aut commodi odio ipsam quas vero quod. Assumenda optio reiciendis non accusamus.','quia','721',NULL,'1977-03-20 20:45:19','1999-02-20 23:53:00'),
('47','47','47','A et blanditiis tempore provident cumque dolorem. Cupiditate aut nemo veritatis necessitatibus et est. Praesentium vel rem odio cum voluptate blanditiis eius.','ipsam','0',NULL,'1987-01-01 03:11:51','1988-11-02 09:19:37'),
('48','48','48','Iure at id officia non facilis sit corrupti. Veritatis veniam facilis amet adipisci repellat sit et.','voluptate','653368',NULL,'2005-10-17 07:46:30','2000-02-24 21:32:58'),
('49','49','49','Rem quasi dolorem sit quos quia qui. Sit sit eos perspiciatis veritatis. Dicta enim ad tempore quas ipsa rerum. Officiis architecto est animi expedita dolor necessitatibus.','voluptatem','400',NULL,'1988-09-14 03:39:19','1973-11-06 08:10:49'),
('50','50','50','Officia eum voluptatibus assumenda magni cum. Quam id qui ullam sit eaque. Omnis dolor ipsam facere hic cum.','delectus','92220873',NULL,'1985-01-31 07:17:09','1982-01-30 11:44:30'); 


DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` VALUES ('1','expedita','2010-07-09 17:44:33','2003-07-03 11:47:47'),
('2','veniam','1972-06-13 06:58:17','1976-08-14 02:48:57'),
('3','fuga','2002-09-01 19:03:16','1992-08-16 06:53:59'),
('4','possimus','2004-07-30 08:26:32','2019-02-21 19:31:42'),
('5','temporibus','2010-06-28 08:16:30','1973-02-15 05:50:42'),
('6','sit','1996-12-04 17:23:54','2008-07-26 09:22:20'),
('7','esse','1972-03-22 10:07:35','1986-01-11 13:12:32'),
('8','omnis','1974-05-11 14:41:07','2010-05-14 21:49:44'),
('9','et','1975-03-09 07:36:58','1971-04-29 03:44:03'),
('10','quis','2011-04-16 04:02:07','1981-07-20 06:50:22'),
('11','ducimus','1989-02-03 22:30:03','1988-07-30 05:46:17'),
('12','molestiae','2009-12-11 11:01:40','2015-09-26 22:28:40'),
('13','odio','2014-01-26 10:00:34','1993-11-15 10:48:17'),
('14','quis','1989-05-05 09:58:21','1997-11-15 04:46:40'),
('15','quia','2010-07-25 06:43:32','2005-09-23 17:08:40'),
('16','et','2013-08-06 16:38:55','1992-12-02 22:38:27'),
('17','molestiae','2008-03-05 08:13:25','2001-10-21 02:42:39'),
('18','explicabo','2003-09-29 18:50:32','2004-05-01 06:06:35'),
('19','tenetur','1977-04-25 15:12:02','1982-06-18 05:40:26'),
('20','enim','2005-09-29 02:12:26','2006-07-23 17:10:01'),
('21','molestias','1976-10-03 11:42:14','2009-07-23 13:53:20'),
('22','praesentium','1979-10-03 14:01:48','1982-03-01 07:18:59'),
('23','sunt','1978-12-01 17:02:57','1979-01-05 23:16:35'),
('24','minus','1981-05-19 11:19:46','2000-04-26 13:58:13'),
('25','veniam','1977-01-06 04:51:45','1979-12-02 12:03:00'),
('26','dolor','2012-01-09 07:55:07','1998-07-25 15:31:25'),
('27','minus','1994-03-11 04:26:02','2019-09-22 16:17:34'),
('28','facere','1971-12-29 09:28:12','1993-11-27 06:27:46'),
('29','et','1997-01-01 12:04:06','1993-02-17 10:30:43'),
('30','nihil','1971-12-12 11:29:04','1994-02-15 04:09:22'),
('31','et','1972-06-29 08:18:53','2010-03-02 11:47:15'),
('32','quibusdam','2013-10-23 22:30:44','1983-09-23 03:34:36'),
('33','maxime','2007-09-24 20:44:53','2002-04-28 15:21:26'),
('34','itaque','1998-08-07 21:34:36','1981-04-07 05:02:30'),
('35','reprehenderit','1978-12-30 16:21:11','2010-10-12 03:13:48'),
('36','exercitationem','2006-12-13 21:03:43','1986-07-13 11:16:32'),
('37','qui','1985-10-20 21:37:26','2007-01-03 02:26:42'),
('38','soluta','1972-11-15 09:20:13','1990-10-27 03:44:07'),
('39','error','1992-07-05 10:15:50','1985-07-10 08:05:02'),
('40','quia','2004-02-12 16:59:43','1976-03-03 13:35:17'),
('41','nostrum','1999-08-12 15:48:54','1984-11-29 15:33:47'),
('42','nesciunt','2006-07-11 13:33:20','1988-09-01 05:47:04'),
('43','eveniet','2010-02-28 01:22:52','1993-11-26 20:23:04'),
('44','voluptatem','1988-08-26 01:32:36','1995-09-30 07:00:43'),
('45','est','1997-07-04 09:40:55','1978-09-05 07:17:48'),
('46','et','1981-11-08 03:11:38','2016-06-06 06:31:33'),
('47','doloremque','1999-12-20 06:52:13','1973-03-07 20:55:46'),
('48','doloribus','1993-09-07 01:04:25','1990-04-24 06:32:15'),
('49','ut','1996-12-22 22:42:24','1982-01-02 20:21:28'),
('50','amet','2003-09-04 02:49:26','1990-01-26 15:56:34'); 


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `messages_from_user_id` (`from_user_id`),
  KEY `messages_to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` VALUES ('1',NULL,'1984-05-02',NULL,'2002-06-09 18:38:43','Weissnatfort',NULL),
('2',NULL,'2007-12-11',NULL,'2010-02-03 10:45:50','North Michelefort',NULL),
('3',NULL,'1986-03-04',NULL,'1971-06-11 11:27:55','Port Melliehaven',NULL),
('4',NULL,'1992-11-16',NULL,'1999-01-04 21:54:53','Niaborough',NULL),
('5',NULL,'1979-11-13',NULL,'1990-08-05 07:33:54','Lucasburgh',NULL),
('6',NULL,'2016-12-19',NULL,'2008-10-02 22:52:56','West Laurelberg',NULL),
('7',NULL,'2009-07-30',NULL,'2017-03-11 21:04:18','South Darrell',NULL),
('8',NULL,'2018-05-13',NULL,'2005-03-25 23:43:57','Davonhaven',NULL),
('9',NULL,'1970-09-23',NULL,'2003-04-08 13:52:57','Delfinaview',NULL),
('10',NULL,'2018-03-26',NULL,'1998-11-25 10:33:31','Mosciskichester',NULL),
('11',NULL,'2000-02-08',NULL,'1998-07-18 22:01:12','Labadiemouth',NULL),
('12',NULL,'2015-09-01',NULL,'1998-03-11 11:15:54','West Desmond',NULL),
('13',NULL,'1993-10-19',NULL,'1987-12-06 02:03:06','Port Hollieview',NULL),
('14',NULL,'1980-02-16',NULL,'1990-06-21 08:53:11','East Albertomouth',NULL),
('15',NULL,'1995-09-09',NULL,'1973-04-15 13:19:03','New Yolandamouth',NULL),
('16',NULL,'2000-09-09',NULL,'2017-09-16 05:13:15','East Ellenbury',NULL),
('17',NULL,'1988-06-06',NULL,'2018-11-17 11:40:11','East Darrionfurt',NULL),
('18',NULL,'2000-04-16',NULL,'1992-12-16 17:30:43','Saulport',NULL),
('19',NULL,'1974-09-16',NULL,'1976-03-21 18:07:53','South Phoebe',NULL),
('20',NULL,'2013-03-04',NULL,'1988-06-19 00:15:37','Coralieland',NULL),
('21',NULL,'1999-05-28',NULL,'1974-03-08 22:45:57','Lake Murl',NULL),
('22',NULL,'2014-06-25',NULL,'1978-07-31 00:13:40','Smithammouth',NULL),
('23',NULL,'1986-04-09',NULL,'1978-11-08 22:07:52','South Samsonbury',NULL),
('24',NULL,'2007-11-04',NULL,'2014-02-27 23:12:28','Lake Reginaldport',NULL),
('25',NULL,'1977-05-11',NULL,'2014-10-01 20:33:52','Katherynmouth',NULL),
('26',NULL,'1985-10-01',NULL,'1988-08-02 04:10:07','Labadiehaven',NULL),
('27',NULL,'1997-11-12',NULL,'1990-03-10 17:14:55','Casperberg',NULL),
('28',NULL,'1977-04-12',NULL,'2000-08-27 00:12:51','Port Erickmouth',NULL),
('29',NULL,'1978-07-04',NULL,'2017-06-27 19:43:50','Kuhlmanburgh',NULL),
('30',NULL,'1991-03-17',NULL,'2020-01-14 09:32:50','Lake Cassie',NULL),
('31',NULL,'1995-08-16',NULL,'2017-08-30 07:03:05','Chadrickhaven',NULL),
('32',NULL,'1990-10-12',NULL,'1993-07-20 03:14:18','Berylshire',NULL),
('33',NULL,'2001-05-12',NULL,'1985-08-28 09:51:52','Louton',NULL),
('34',NULL,'1986-04-09',NULL,'2000-07-13 00:50:37','South Alessiachester',NULL),
('35',NULL,'1984-12-19',NULL,'1980-03-19 07:07:42','Nevabury',NULL),
('36',NULL,'2015-10-29',NULL,'1983-09-18 02:18:42','Jaskolskiton',NULL),
('37',NULL,'2014-06-22',NULL,'1984-10-10 03:31:46','New Christine',NULL),
('38',NULL,'1998-03-01',NULL,'2001-10-01 08:36:02','West Yasmine',NULL),
('39',NULL,'2011-08-05',NULL,'1984-05-02 07:53:26','Lake Katherine',NULL),
('40',NULL,'1998-02-16',NULL,'1983-11-30 04:29:57','New Elvistown',NULL),
('41',NULL,'1986-09-14',NULL,'1972-01-11 13:19:42','Lake Kamryn',NULL),
('42',NULL,'2014-04-11',NULL,'2000-10-13 05:17:42','West Yasmeenmouth',NULL),
('43',NULL,'2011-09-22',NULL,'2011-05-27 06:20:00','New Virgilmouth',NULL),
('44',NULL,'2014-04-08',NULL,'1982-03-23 11:25:45','Fritschhaven',NULL),
('45',NULL,'1993-10-26',NULL,'1998-11-26 10:20:20','Ebonyton',NULL),
('46',NULL,'2003-02-27',NULL,'1995-09-17 18:02:30','Carlostad',NULL),
('47',NULL,'1975-04-15',NULL,'2018-03-19 05:10:55','Windlerfurt',NULL),
('48',NULL,'1992-08-15',NULL,'1994-10-08 04:56:01','West Deion',NULL),
('49',NULL,'1990-01-18',NULL,'1977-01-15 12:46:18','South Stuarthaven',NULL),
('50',NULL,'1983-09-30',NULL,'1985-12-17 02:35:09','Reubenmouth',NULL); 


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` VALUES ('1','Alvah','Russel','fhartmann@example.org','287'),
('2','Delphine','Littel','damaris.schumm@example.net','865'),
('3','Vincent','Roob','mossie23@example.net','955'),
('4','Elmore','Deckow','nathanael62@example.net','0'),
('5','Helen','McDermott','junior00@example.org','999'),
('6','Julie','Douglas','cronin.maud@example.net','525'),
('7','Jordon','Stamm','amedhurst@example.com','152318'),
('8','Claire','Keeling','hdickens@example.com','835685'),
('9','Jaida','Schmitt','hoeger.alek@example.com','350'),
('10','Rosalee','Hartmann','satterfield.hayley@example.com','0'),
('11','Diana','Larson','runolfsdottir.dusty@example.com','0'),
('12','Madilyn','Kiehn','nathanael09@example.org','23'),
('13','Dominique','Hessel','malvina.willms@example.net','1'),
('14','Carey','Rohan','wisozk.mylene@example.net','1'),
('15','Santino','Feeney','marge93@example.net','456'),
('16','Garfield','Lehner','pfannerstill.elva@example.com','684634'),
('17','Deanna','Schuppe','ireinger@example.net','0'),
('18','Alex','Bauch','predovic.toy@example.net','0'),
('19','Alaina','Wuckert','ekiehn@example.org','70'),
('20','Keyon','Wunsch','easton.anderson@example.net','1'),
('21','Bradley','Champlin','xluettgen@example.com','5'),
('22','Andreane','Okuneva','bridie16@example.org','4799'),
('23','Shaun','Hane','lreichert@example.net','307'),
('24','Madge','Von','pedro57@example.com','488407'),
('25','Joanne','Bartell','fborer@example.org','81'),
('26','Cyril','Hagenes','raltenwerth@example.net','580168939'),
('27','Aniya','Lowe','shea90@example.net','851257'),
('28','Dashawn','Graham','conn.halle@example.com','1'),
('29','Benjamin','Klein','cruickshank.jaiden@example.org','1'),
('30','Emilio','Bartell','claude.wyman@example.com','150'),
('31','Maya','Feest','gturcotte@example.net','1'),
('32','Norene','Cruickshank','wunsch.velva@example.org','1'),
('33','Cassie','Orn','benjamin.shields@example.com','144787'),
('34','Rachael','Douglas','ublick@example.net','0'),
('35','Letitia','Ankunding','pamela37@example.org','811973'),
('36','Loyce','Kassulke','mckenzie.ashtyn@example.net','1'),
('37','Skyla','Howell','hammes.magnus@example.net','32'),
('38','Franco','Hickle','deborah.yundt@example.com','936'),
('39','Ashlynn','Waters','neal49@example.org','14'),
('40','Alejandrin','Bogisich','klein.cheyenne@example.net','661'),
('41','Kamille','Bergnaum','pouros.teagan@example.org','62'),
('42','Mauricio','White','maximilian.sporer@example.net','1'),
('43','Florencio','Runolfsson','travis.daugherty@example.org','14'),
('44','Koby','Powlowski','ora.sanford@example.net','968261'),
('45','Eva','O\'Conner','shana42@example.org','517009'),
('46','Rachael','Gusikowski','brekke.brock@example.org','315'),
('47','Reinhold','Ortiz','rene.bode@example.org','1'),
('48','Green','Ferry','belle.maggio@example.com','46'),
('49','Otha','Weissnat','xwilkinson@example.org','1'),
('50','Adolphus','Langosh','sasha86@example.net','936'); 


DROP TABLE IF EXISTS `users_communities`;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_communities` VALUES ('1','3'),
('1','4'),
('2','2'),
('2','8'),
('3','2'),
('3','6'),
('4','2'),
('4','3'),
('4','6'),
('5','8'),
('6','3'),
('6','4'),
('7','1'),
('7','2'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

