#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'a');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'aperiam');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'asperiores');
INSERT INTO `communities` (`id`, `name`) VALUES ('55', 'asperiores');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('71', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('97', 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES ('82', 'corrupti');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'cum');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES ('74', 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES ('99', 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES ('58', 'doloremque');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'dolores');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'earum');
INSERT INTO `communities` (`id`, `name`) VALUES ('54', 'earum');
INSERT INTO `communities` (`id`, `name`) VALUES ('62', 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('77', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'eum');
INSERT INTO `communities` (`id`, `name`) VALUES ('88', 'eveniet');
INSERT INTO `communities` (`id`, `name`) VALUES ('80', 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES ('91', 'excepturi');
INSERT INTO `communities` (`id`, `name`) VALUES ('68', 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('63', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('60', 'id');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'ipsam');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'iste');
INSERT INTO `communities` (`id`, `name`) VALUES ('92', 'itaque');
INSERT INTO `communities` (`id`, `name`) VALUES ('64', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('69', 'libero');
INSERT INTO `communities` (`id`, `name`) VALUES ('65', 'minima');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'nam');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES ('100', 'necessitatibus');
INSERT INTO `communities` (`id`, `name`) VALUES ('98', 'nemo');
INSERT INTO `communities` (`id`, `name`) VALUES ('93', 'nobis');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'non');
INSERT INTO `communities` (`id`, `name`) VALUES ('95', 'non');
INSERT INTO `communities` (`id`, `name`) VALUES ('96', 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES ('56', 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'odit');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'optio');
INSERT INTO `communities` (`id`, `name`) VALUES ('57', 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES ('61', 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('85', 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'placeat');
INSERT INTO `communities` (`id`, `name`) VALUES ('86', 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'possimus');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'quae');
INSERT INTO `communities` (`id`, `name`) VALUES ('90', 'quae');
INSERT INTO `communities` (`id`, `name`) VALUES ('87', 'quaerat');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('79', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('72', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('78', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('94', 'quis');
INSERT INTO `communities` (`id`, `name`) VALUES ('67', 'quos');
INSERT INTO `communities` (`id`, `name`) VALUES ('76', 'quos');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'repellendus');
INSERT INTO `communities` (`id`, `name`) VALUES ('52', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('83', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('66', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('73', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES ('84', 'tempora');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'tenetur');
INSERT INTO `communities` (`id`, `name`) VALUES ('51', 'totam');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'ullam');
INSERT INTO `communities` (`id`, `name`) VALUES ('59', 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES ('70', 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'velit');
INSERT INTO `communities` (`id`, `name`) VALUES ('81', 'veritatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES ('89', 'vero');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('75', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'voluptatem');
INSERT INTO `communities` (`id`, `name`) VALUES ('53', 'voluptatem');


#
# TABLE STRUCTURE FOR: friend_requests
#

DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') COLLATE utf8_unicode_ci DEFAULT 'requested',
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `can_see` enum('all','friends_of_friends','friends') COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_comment` enum('all','friends_of_friends','friends','nobody') COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_message` enum('all','friends_of_friends','friends') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `name` (`name`,`surname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('1', 'tkunze@yahoo.com', NULL, 'repellendus', 'veritatis', '489-086-2543x82753', 'P', '2014-12-03', NULL, '0', '2014-11-05 11:27:14');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('2', 'hollie.ankunding@gmail.com', NULL, 'atque', 'officiis', '1-763-535-1011x44867', 'D', '2013-02-06', NULL, '0', '1991-01-30 12:06:17');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('3', 'wbrakus@gmail.com', NULL, 'corporis', 'animi', '1-330-908-0300', 'D', '1989-03-27', NULL, '0', '1971-01-18 14:01:06');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('4', 'ewaters@gulgowski.com', NULL, 'est', 'minima', '(419)279-5669x239', 'P', '1991-05-23', NULL, '0', '1986-03-18 03:18:03');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('5', 'daron35@blick.com', NULL, 'et', 'voluptates', '04932334084', 'P', '1978-12-06', NULL, '0', '1978-07-11 10:53:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('6', 'adolf81@gmail.com', NULL, 'est', 'inventore', '1-135-857-5348x90974', 'M', '1991-04-07', NULL, '0', '2001-11-28 07:22:27');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('7', 'lakin.palma@bartoletti.com', NULL, 'voluptates', 'tempora', '+65(5)9426051325', 'P', '1975-02-01', NULL, '0', '2006-12-06 23:35:54');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('8', 'gcorkery@tillman.net', NULL, 'nihil', 'provident', '+32(8)3672103581', 'D', '1991-03-31', NULL, '0', '2020-03-22 15:43:38');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('9', 'herminio.emard@gmail.com', NULL, 'quis', 'facere', '1-167-079-5347x3495', 'M', '1996-04-30', NULL, '0', '2018-10-06 18:06:48');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('10', 'lauryn.miller@hotmail.com', NULL, 'autem', 'tempore', '426-213-7326', 'M', '2017-04-04', NULL, '0', '1979-01-31 02:52:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('11', 'jones.orland@yahoo.com', NULL, 'accusantium', 'recusandae', '435-545-9794x64789', 'M', '1984-09-15', NULL, '0', '1993-05-31 12:54:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('12', 'monahan.alec@hotmail.com', NULL, 'repellat', 'ea', '1-532-117-7648x62922', 'M', '1978-08-08', NULL, '0', '2012-07-22 18:33:09');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('13', 'champlin.kaylah@yahoo.com', NULL, 'perferendis', 'labore', '308-456-6734x09705', 'M', '2008-04-04', NULL, '0', '1976-01-25 19:06:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('14', 'eichmann.clarissa@hamill.com', NULL, 'non', 'pariatur', '616-534-8514x4122', 'P', '1973-12-23', NULL, '0', '2001-02-02 01:50:39');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('15', 'alexanne34@hotmail.com', NULL, 'in', 'iusto', '140-783-5036x848', 'P', '2006-10-05', NULL, '0', '1970-12-05 07:13:53');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('16', 'lucienne.greenholt@berge.info', NULL, 'repellendus', 'et', '187-160-3184', 'D', '1980-08-29', NULL, '0', '1973-01-19 11:22:23');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('17', 'heaney.bette@yahoo.com', NULL, 'perferendis', 'sapiente', '1-299-201-1462', 'M', '1971-12-11', NULL, '0', '2011-03-08 08:01:28');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('18', 'erich12@mcdermottgreen.info', NULL, 'temporibus', 'eum', '(137)218-1459', 'D', '1974-05-11', NULL, '0', '1974-06-23 05:10:54');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('19', 'america.welch@harveyemmerich.com', NULL, 'delectus', 'quod', '06277162687', 'P', '1971-10-11', NULL, '0', '1983-10-01 06:59:59');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('20', 'adeline.skiles@botsford.info', NULL, 'nesciunt', 'quae', '07446384251', 'D', '1975-10-04', NULL, '0', '2007-09-30 11:13:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('21', 'vnader@thompson.biz', NULL, 'sunt', 'iste', '+67(6)8914933844', 'D', '2008-12-04', NULL, '0', '1978-10-26 22:11:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('22', 'cordelia.jast@walter.com', NULL, 'non', 'reprehenderit', '195.484.2085', 'D', '2005-12-17', NULL, '0', '1978-05-20 16:48:04');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('23', 'erin67@hotmail.com', NULL, 'et', 'debitis', '427.316.7770', 'M', '2000-03-11', NULL, '0', '2001-10-18 23:40:20');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('24', 'schultz.felicia@kuhic.org', NULL, 'nesciunt', 'nemo', '354.591.3749x63272', 'M', '1983-08-17', NULL, '0', '1996-08-10 00:23:40');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('25', 'marvin29@berge.com', NULL, 'accusantium', 'voluptatem', '584-189-8002x0741', 'M', '1975-01-12', NULL, '0', '1993-07-08 02:22:47');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('26', 'auer.arlie@borer.com', NULL, 'et', 'molestiae', '1-447-429-1315', 'P', '2018-03-22', NULL, '0', '1972-05-03 07:20:16');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('27', 'owitting@oconnell.info', NULL, 'exercitationem', 'quas', '438-455-2130', 'M', '2020-07-18', NULL, '0', '1989-12-23 05:53:34');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('28', 'ebeahan@gottliebkassulke.com', NULL, 'ratione', 'iusto', '07323288665', 'P', '1984-12-31', NULL, '0', '1997-12-14 10:40:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('29', 'hkohler@hotmail.com', NULL, 'nihil', 'est', '(969)116-1387x84569', 'D', '2007-04-19', NULL, '0', '1980-02-17 13:07:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('30', 'fritsch.lula@tromp.info', NULL, 'occaecati', 'dolorem', '+36(4)6766017052', 'M', '1993-10-03', NULL, '0', '1977-10-09 12:37:44');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('31', 'ssatterfield@yahoo.com', NULL, 'aut', 'labore', '653.663.6295', 'D', '2014-12-26', NULL, '0', '2013-10-07 11:15:02');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('32', 'swift.clifford@yahoo.com', NULL, 'reprehenderit', 'ab', '481.101.9854x788', 'D', '2011-09-18', NULL, '0', '1999-07-19 17:43:21');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('33', 'marquardt.jevon@hoppe.com', NULL, 'reprehenderit', 'est', '(953)259-8012x406', 'P', '2020-03-26', NULL, '0', '2009-08-04 13:43:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('34', 'vhessel@stiedemann.org', NULL, 'iure', 'facilis', '025.612.9161x3862', 'D', '1990-08-05', NULL, '0', '1979-02-27 02:47:31');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('35', 'ikessler@ward.com', NULL, 'quis', 'fugit', '1-920-758-8037x7996', 'M', '2016-02-22', NULL, '0', '1986-12-12 10:24:31');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('36', 'sjohnson@gmail.com', NULL, 'et', 'aut', '1-320-294-3129x79263', 'D', '1972-04-08', NULL, '0', '2013-05-31 20:35:01');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('37', 'vcrona@nicolas.com', NULL, 'assumenda', 'nulla', '(727)824-4891x7496', 'D', '1978-10-15', NULL, '0', '1977-08-18 02:06:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('38', 'wiza.eldred@gmail.com', NULL, 'minima', 'provident', '(689)965-7518', 'M', '2014-05-19', NULL, '0', '1970-06-16 09:29:25');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('39', 'deanna.jacobi@gmail.com', NULL, 'deserunt', 'adipisci', '08082178531', 'P', '2008-01-23', NULL, '0', '2019-09-15 03:55:13');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('40', 'flavie.kuphal@connellymoore.biz', NULL, 'quas', 'harum', '852-030-4506', 'D', '1972-08-08', NULL, '0', '2020-04-07 18:28:55');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('41', 'santa.koepp@stiedemanndaniel.org', NULL, 'molestiae', 'veniam', '651-278-9815x084', 'D', '2009-06-22', NULL, '0', '1994-07-17 07:28:55');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('42', 'howell.ratke@veum.com', NULL, 'blanditiis', 'veritatis', '320.345.2227', 'D', '1994-11-02', NULL, '0', '2005-08-02 05:44:32');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('43', 'prohaska.august@feilhodkiewicz.com', NULL, 'ut', 'et', '(595)913-3458', 'M', '2011-01-04', NULL, '0', '1987-12-02 19:45:15');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('44', 'stephanie.smitham@yahoo.com', NULL, 'officiis', 'optio', '726-535-2378x67335', 'D', '1971-06-29', NULL, '0', '2010-10-03 07:01:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('45', 'davion51@konopelski.com', NULL, 'amet', 'dolor', '(657)463-3073x963', 'P', '2007-12-09', NULL, '0', '2007-11-28 13:37:22');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('46', 'kian26@gmail.com', NULL, 'quo', 'rem', '504.344.0745x43778', 'M', '2009-08-17', NULL, '0', '1999-01-21 00:56:41');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('47', 'kacie.blanda@yundtgrady.com', NULL, 'accusantium', 'ut', '031.821.0012x77394', 'P', '1997-11-06', NULL, '0', '2002-05-30 13:38:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('48', 'bret.bruen@kuhlman.org', NULL, 'laudantium', 'vel', '1-151-119-8188x692', 'M', '1978-07-05', NULL, '0', '1998-05-24 07:26:27');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('49', 'mcartwright@windlerhoeger.com', NULL, 'qui', 'vitae', '+76(3)0594207847', 'P', '1987-09-15', NULL, '0', '2015-03-31 23:44:29');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('50', 'hkemmer@hotmail.com', NULL, 'ducimus', 'perspiciatis', '297.918.7946x688', 'M', '1970-09-20', NULL, '0', '1971-11-17 01:32:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('51', 'ustiedemann@yahoo.com', NULL, 'assumenda', 'ipsa', '566-147-9949x1295', 'M', '2003-03-12', NULL, '0', '1980-11-06 12:36:06');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('52', 'carey25@robel.com', NULL, 'quia', 'quia', '341.432.1973x11142', 'M', '2018-03-06', NULL, '0', '1973-05-18 22:37:36');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('53', 'nikolaus.frida@yahoo.com', NULL, 'id', 'et', '232-806-8860x9655', 'D', '2000-03-15', NULL, '0', '2014-09-24 21:06:26');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('54', 'jovanny.schuster@shanahangorczany.net', NULL, 'aut', 'dolores', '1-761-365-9296', 'D', '1979-11-16', NULL, '0', '1981-04-03 18:37:10');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('55', 'price.bartoletti@ryan.com', NULL, 'et', 'unde', '1-877-827-3882', 'P', '1985-10-08', NULL, '0', '1979-08-11 21:53:02');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('56', 'earl.kertzmann@yahoo.com', NULL, 'tempora', 'dignissimos', '05783182216', 'M', '1978-05-07', NULL, '0', '1975-04-07 09:07:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('57', 'tatyana.rippin@reichel.biz', NULL, 'rerum', 'quo', '1-716-917-5216x06019', 'M', '1985-04-21', NULL, '0', '1987-07-28 00:21:52');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('58', 'josiah34@yahoo.com', NULL, 'nemo', 'est', '1-411-862-5501', 'D', '2014-05-16', NULL, '0', '1976-09-11 00:32:05');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('59', 'jenkins.rashawn@hotmail.com', NULL, 'voluptates', 'architecto', '(450)358-3353x65707', 'M', '2007-02-20', NULL, '0', '1985-02-14 11:41:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('60', 'bnitzsche@yahoo.com', NULL, 'eos', 'tempore', '216.243.3224x89951', 'M', '1980-08-23', NULL, '0', '2010-08-03 16:35:55');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('61', 'brendon.barton@ortiz.net', NULL, 'aperiam', 'minima', '781-754-1713x8415', 'M', '2008-09-02', NULL, '0', '1995-03-21 08:09:42');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('62', 'rschiller@cronakautzer.info', NULL, 'commodi', 'magni', '1-045-826-9187x102', 'M', '1987-08-16', NULL, '0', '2006-02-26 06:42:57');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('63', 'ankunding.thurman@gmail.com', NULL, 'error', 'dolores', '+98(8)6116641485', 'P', '1971-04-14', NULL, '0', '2006-07-24 19:21:34');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('64', 'reynolds.alana@prohaska.org', NULL, 'itaque', 'officia', '(277)128-0535x58871', 'P', '1971-03-05', NULL, '0', '1979-02-17 16:19:17');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('65', 'graham.bogan@gmail.com', NULL, 'amet', 'ut', '410-642-9144', 'M', '2009-08-29', NULL, '0', '2008-02-07 13:06:46');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('66', 'donnelly.bobby@gerlach.com', NULL, 'voluptatem', 'eos', '+44(6)3583101023', 'P', '1974-11-19', NULL, '0', '2000-06-13 02:48:32');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('67', 'oaufderhar@wisozkharber.com', NULL, 'nam', 'architecto', '975-240-7592', 'M', '1970-07-03', NULL, '0', '1972-09-23 15:20:27');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('68', 'crona.marlee@ritchie.net', NULL, 'consequatur', 'et', '08193888824', 'M', '1984-07-04', NULL, '0', '2004-04-06 07:09:39');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('69', 'ned.greenholt@walsh.org', NULL, 'quisquam', 'culpa', '977.084.4823x22864', 'P', '2008-01-31', NULL, '0', '1990-04-06 22:49:05');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('70', 'turner.malachi@effertzondricka.com', NULL, 'optio', 'impedit', '(582)370-5043', 'M', '2007-02-23', NULL, '0', '2001-04-22 20:21:17');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('71', 'filiberto.mitchell@hotmail.com', NULL, 'eius', 'libero', '1-583-444-6452', 'D', '2014-06-18', NULL, '0', '2008-07-03 08:51:30');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('72', 'kaya.fahey@corwin.net', NULL, 'deleniti', 'reiciendis', '153-882-0322x1668', 'P', '2015-09-15', NULL, '0', '1983-05-08 21:03:26');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('73', 'madisen.schiller@gmail.com', NULL, 'fuga', 'atque', '1-432-913-0596', 'P', '2013-10-15', NULL, '0', '1976-09-24 18:23:16');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('74', 'nicolas.arch@gmail.com', NULL, 'tenetur', 'laboriosam', '1-978-224-2278', 'P', '1989-04-04', NULL, '0', '1976-02-22 01:31:42');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('75', 'avery.cummerata@hotmail.com', NULL, 'pariatur', 'qui', '729.934.3503x338', 'M', '2014-12-28', NULL, '0', '1988-02-05 15:55:36');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('76', 'kris.edwina@tillman.com', NULL, 'velit', 'omnis', '(135)927-5978', 'P', '1984-07-03', NULL, '0', '1973-11-02 04:02:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('77', 'mswaniawski@miller.com', NULL, 'omnis', 'deleniti', '+88(1)2820333226', 'P', '2002-10-15', NULL, '0', '1983-05-16 05:40:22');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('78', 'athena.quigley@cummeratastreich.com', NULL, 'sit', 'quidem', '881.977.9370x576', 'M', '2002-04-27', NULL, '0', '1998-01-29 04:36:45');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('79', 'vnicolas@parisian.com', NULL, 'et', 'similique', '056-217-5984', 'M', '1975-05-21', NULL, '0', '2012-03-27 18:32:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('80', 'jayden12@gmail.com', NULL, 'numquam', 'dicta', '313-843-9928x4684', 'P', '2017-08-28', NULL, '0', '2000-02-24 12:50:22');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('81', 'orin47@hotmail.com', NULL, 'mollitia', 'voluptate', '(162)823-4534x708', 'M', '2012-08-15', NULL, '0', '1978-12-11 17:29:52');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('82', 'mccullough.lori@mueller.biz', NULL, 'quia', 'saepe', '291.038.8937x764', 'M', '2018-01-15', NULL, '0', '1990-10-27 08:26:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('83', 'scarlett.prosacco@lesch.com', NULL, 'et', 'ratione', '(765)464-9414x9270', 'M', '2011-12-27', NULL, '0', '2006-12-24 21:39:43');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('84', 'idella.boyle@yahoo.com', NULL, 'assumenda', 'quidem', '(119)886-5107x12000', 'M', '1972-07-27', NULL, '0', '1971-07-20 23:07:34');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('85', 'huels.emmett@casper.info', NULL, 'accusantium', 'accusamus', '1-782-094-3596x11894', 'M', '2019-08-11', NULL, '0', '1997-04-30 19:54:25');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('86', 'robin19@brakus.org', NULL, 'possimus', 'tempora', '(293)655-4613', 'P', '2015-11-27', NULL, '0', '1995-11-15 03:34:26');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('87', 'heather09@lubowitz.com', NULL, 'voluptatem', 'qui', '(881)883-8985', 'M', '2010-05-06', NULL, '0', '2000-12-28 19:47:03');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('88', 'bogisich.anjali@moen.org', NULL, 'laborum', 'sunt', '03719069991', 'D', '2004-04-17', NULL, '0', '2013-06-23 04:10:04');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('89', 'arenner@starkharvey.org', NULL, 'qui', 'non', '+12(2)1442201926', 'M', '1985-11-02', NULL, '0', '1991-06-06 14:01:13');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('90', 'goyette.santino@yahoo.com', NULL, 'ea', 'non', '(038)314-8672x272', 'D', '1970-02-28', NULL, '0', '1985-11-13 17:28:08');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('91', 'adrienne86@mann.com', NULL, 'fugiat', 'excepturi', '(911)755-4787x7743', 'P', '2017-08-06', NULL, '0', '1997-10-19 18:15:25');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('92', 'eli.fritsch@yahoo.com', NULL, 'ea', 'quos', '732-406-9889x1028', 'M', '2018-03-11', NULL, '0', '2011-09-11 18:07:13');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('93', 'jdaniel@gmail.com', NULL, 'eum', 'eveniet', '875.453.3241x790', 'M', '1985-12-26', NULL, '0', '2016-03-10 00:34:32');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('94', 'trantow.khalil@windler.com', NULL, 'maiores', 'ut', '(028)519-1669', 'M', '2007-03-31', NULL, '0', '1982-05-05 03:15:46');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('95', 'xbergstrom@ullrichbalistreri.com', NULL, 'possimus', 'asperiores', '1-598-060-0549', 'D', '1977-10-18', NULL, '0', '2018-05-26 20:57:31');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('96', 'waltenwerth@yahoo.com', NULL, 'vel', 'qui', '04114191426', 'D', '1973-05-05', NULL, '0', '1990-01-11 23:18:25');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('97', 'hilda90@gmail.com', NULL, 'dolorem', 'in', '(139)716-9048', 'D', '1978-08-16', NULL, '0', '1981-12-26 00:47:30');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('98', 'ehickle@yahoo.com', NULL, 'similique', 'cupiditate', '(121)196-7234', 'M', '1988-06-10', NULL, '0', '1984-04-22 00:59:07');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('99', 'juwan.rohan@haagvolkman.org', NULL, 'enim', 'architecto', '1-533-159-2484x9983', 'D', '2008-09-17', NULL, '0', '2006-06-13 07:41:24');
INSERT INTO `users` (`id`, `email`, `pass`, `name`, `surname`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `created_at`) VALUES ('100', 'thand@gmail.com', NULL, 'vitae', 'deserunt', '(991)010-4118x331', 'D', '1983-09-26', NULL, '0', '1998-03-16 10:09:40');


#
# TABLE STRUCTURE FOR: users_communities
#

DROP TABLE IF EXISTS `users_communities`;

CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

