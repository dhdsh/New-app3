-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.9-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hong
CREATE DATABASE IF NOT EXISTS `hong` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hong`;

-- Dumping structure for table hong.content
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `zannum` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- Dumping data for table hong.content: ~59 rows (approximately)
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` (`id`, `title`, `content`, `tid`, `addtime`, `zannum`) VALUES
	(3, 'HTML5', '                                                                                                                                               是她                               \r\n                                        \r\n                                        \r\n                                        ', NULL, 1508854470, 136),
	(4, 'HTML5', '                                                  沙发屏幕咯咯哇评估费捅破搭配                                        \r\n                                        \r\n                                        ', NULL, 1508854466, 8),
	(5, 'css3', '            帅丁辉覅hi否好人萨洛克复合瓦热维护费太肉is啊回复                                 \r\n                              ', NULL, 1508839941, 21),
	(7, 'HTML5er', '                                                                                        \r\n             斯拉克                        \r\n                                        ', NULL, 1508854432, 37),
	(9, '他仍然', '                                                                            小鱼人\r\n                                        \r\n                                        \r\n                                        \r\n                                        \r\n                                        \r\n                                        ', NULL, 1508836055, 55),
	(10, 'Vue 7.0', '                                            似懂非懂是光伏发电\r\n                                        ', NULL, 1508836389, 0),
	(11, 'Vue7.0', '安静搜附近搜啊发来发来我热情柔情我让我看见佛isA级弗利萨减肥咯', NULL, 1508840025, 0),
	(12, 'css3', '安静搜附近搜啊发来发来我热情柔情我让我看见佛isA级弗利萨减肥咯', NULL, 1508840025, 0),
	(13, 'JAVASCRIPT', '安静搜附近搜啊发来发来我热情柔情我让我看见佛isA级弗利萨减肥咯', NULL, 1508840043, 0),
	(14, 'NODEJS', '安静搜附近搜啊发来发来我热情柔情我让我看见佛isA级弗利萨减肥咯', NULL, 1508840043, 0),
	(39, 'Javascript', '                                           僵尸国度\r\n                                        ', NULL, 1508847388, 0),
	(43, '', '', NULL, 1508856759, 0),
	(44, 'JAVASCRIPT', 'EDWETR', NULL, 1508857958, 0),
	(45, 'htnl5', 'AFDFTGFDYHRD', NULL, 1508858062, 0),
	(46, 'CSS3', 'CSS3中vertical-align的使用', NULL, 1508858368, 0),
	(48, 'html5', '四姑父地方', NULL, 1508858498, 0),
	(50, 'html5', 'dsgfghfghh ', NULL, 1508859389, 0),
	(51, '数据库', 'sgdfgyhfgyuht', NULL, 1508859444, 0),
	(52, 'css3', 'fghfghtgfyjy', NULL, 1508859515, 0),
	(57, 'CSS5', '                                                                                                                                                                                                                                                                        sfdsdgfr fdsgfd\r\n                                        \r\n                                        \r\n                                        \r\n                                        \r\n                                        \r\n                                        ', 56, 1508919154, 0),
	(106, 'css', '萨芬撒多福多寿', 28, 1509079834, 0),
	(139, 'NODEjs', '水电费感动的反弹的反弹已投入已', 32, 1509165049, 0),
	(140, 'css3', '怪异盒子的使用', 20, 1509165084, 185),
	(141, '数据库 ', 'JS中变量的是使用', 18, 1509165121, 38),
	(142, '数据库', 'mysql是这样连接数据库的', 22, 1509165159, 0),
	(144, '是否高大上发个', '', 20, 1509165218, 37),
	(145, 'css3', '发给换个房间号发给', 32, 1509165229, 0),
	(146, 'JAVASCTIPT', '光伏发电韩国法国', 21, 1509165239, 0),
	(147, 'html5', '丰富的一个傅园慧', 21, 1509165255, 11),
	(148, '数据库', '广泛覆盖', 20, 1509165265, 24),
	(149, 'html5', '官方大哥发的', 20, 1509165273, 129),
	(153, '树大招风给对方听', '![](/upload/articles/1904b5addfd2113fe05d0167945dfbc2.jpg)                                                手电筒发发发的\r\n                                            ', 1, 1509168165, 0),
	(154, '川师大发到', '                                                ![](/upload/articles/60cd477740a0a6e48f43b624c48a783e.jpg)\r\n                                            ', 22, 1509167518, 0),
	(155, '申达股份而', '![](/upload/articles/9087a2a21e705d3140707c1613058455.jpg)', 22, 1509167596, 0),
	(156, '多少分而', '![](/upload/articles/f2f8b32fc4b3f9481ade4e7f4e8fca28.jpg)', 20, 1509167894, 247),
	(157, 'css3', 'dfdfggfh dsfd', NULL, NULL, 0),
	(158, '阿斯蒂芬人的送人头', '否认她义愤填膺人![](/upload/articles/a816082340a9d1e2a4536ba8e96cdb2c.jpg)', 20, 1509176051, 0),
	(159, '阿尔土豆条', '的手速的体格让它![](/upload/articles/c9d0896b6efecd3e51cbe368a84b2fda.png)', 20, 1509176111, 0),
	(160, 'asdtfgrd', 'fdgft', 18, 1509247875, 0),
	(161, 'fdgtdf', 'dfgdfffffffffff', 18, 1509247902, 0),
	(162, 'sdfgfy', 'ffff', 22, 1509247957, 0),
	(163, 'sfd', 'fdfgdrg', 20, 1509248449, 0),
	(164, '丁辉', '水电费顺丰到付', 20, 1509248668, 0),
	(165, '大商股份等人通过', '多个地方', 18, 1509249220, 0),
	(166, '大商股份等人通过', '多个地方', 18, 1509249286, 0),
	(167, '似懂非懂三个地方', '水电费三', 20, 1509249372, 0),
	(168, '丰东股份', '给的个体', 20, 1509249430, 0),
	(169, '地方个人观后感s', '发过的', 18, 1509249468, 0),
	(170, '123456', '66666', 22, 1509251219, 0),
	(171, '12345678', '12345678', 20, 1509251363, 0),
	(172, '地方的法规', '都发给对方', 22, 1509251580, 0),
	(173, '额鹅鹅鹅', '额鹅鹅鹅', 32, 1509251614, 0),
	(174, '123456', '666', 1, 1509251635, 0),
	(184, '1111', '0000', 32, 1509254288, 0),
	(185, '777', '8888', 32, 1509254829, 0),
	(186, '000', '000', 22, 1509254893, 0),
	(187, '1111', '111', 32, 1509255131, 0),
	(189, '鹅鹅鹅', '                                                鹅鹅鹅\r\n                                            ', 1, 1509326813, 0);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;

-- Dumping structure for table hong.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table hong.sessions: ~5 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('KwW5j8anYFRHBmkZ15dBOLHdJJ7EoWqb', 1509356214, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"admin":{"id":14,"username":"丁霞","password":"e10adc3949ba59abbe56e057f20f883e","age":0,"sex":0,"phone":"18860452074","addtime":1508682822,"photo":"e8cfdcd2366e0d0238160ec0c6dde4bc.jpg"}}'),
	('ObO7CKEFEM9e2TQYQx_12LFm4RkoNjAA', 1509411933, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"admin":{"id":14,"username":"丁霞","password":"e10adc3949ba59abbe56e057f20f883e","age":0,"sex":0,"phone":"18860452074","addtime":1508682822,"photo":"e8cfdcd2366e0d0238160ec0c6dde4bc.jpg"}}'),
	('g8xrqz2ZnKUXrEdnVqofWE3KLuzmEiQc', 1509414392, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"admin":{"id":14,"username":"丁霞","password":"e10adc3949ba59abbe56e057f20f883e","age":0,"sex":0,"phone":"18860452074","addtime":1508682822,"photo":"e8cfdcd2366e0d0238160ec0c6dde4bc.jpg"}}'),
	('pkVeuQzz-O4oxSrWskgiIcB82FTWQkXQ', 1509384804, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"admin":{"id":12,"username":"丁辉","password":"e10adc3949ba59abbe56e057f20f883e","age":0,"sex":0,"phone":"18860452074","addtime":1508682482,"photo":"111b29702ab9d96160ff1715a5acc6c3.jpg"}}'),
	('tVW9VQVy_IebM2HEIt9rNxa_5axCDGzl', 1509345165, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"admin":{"id":14,"username":"丁霞","password":"e10adc3949ba59abbe56e057f20f883e","age":0,"sex":0,"phone":"18860452074","addtime":1508682822,"photo":"e8cfdcd2366e0d0238160ec0c6dde4bc.jpg"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table hong.types
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- Dumping data for table hong.types: ~5 rows (approximately)
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`id`, `title`, `addtime`) VALUES
	(1, 'Vue 7.0', 1508856671),
	(18, 'JAVASCRIPT', 1508870102),
	(20, 'CSS3', 1508855521),
	(21, 'JAVASCRIPT', 1508855531),
	(22, 'NodeJS', 1508855540),
	(32, 'html5', 1509165004);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;

-- Dumping structure for table hong.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `age` tinyint(1) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Dumping data for table hong.users: ~78 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `age`, `sex`, `phone`, `addtime`, `photo`) VALUES
	(19, '张三', '1234323', 24, 1, '1232544565', 0, '16c4e9bd848edcf3cd32f86ba5e40639.jpg'),
	(20, '丁辉', 'undefined', 24, 1, 'undefined', 0, '4c2ae41aacb9da0ca97ee462a7f45e68.jpg'),
	(21, '张三', 'undefined', 24, 1, 'undefined', 0, '09c63c5cc9de769205174825ea8bba8f.jpg'),
	(3, '柯丹丹', 'undefined', 23, 2, 'undefined', 0, '24720595eae875d4a117a2d0885daf8c.jpg'),
	(5, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, '1c0b7bffd2e53c4334ca50b1a2e67675.jpg'),
	(6, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, 'e9396f041cf2c16a45dc9c8e3cdb9a92.jpg'),
	(7, '丁辉', '0c1e35c59823910dbfca717fc02096e7', 0, 1, '2325', 1508680736, 'fc549ce2746e0dd5269c200c8e534ec9.jpg'),
	(8, '战三', '50fc8ec5004a0d415dc5423a9b92d897', 0, 1, '2446', 1508680921, '4b180c2d13f9b7159d4c36ed0483aa3f.jpg'),
	(9, 'lisi', 'b069b3415151fa7217e870017374de7c', 0, 1, '3265t5', 1508681040, 'ff058eceb69ee48ae2430a5f49412398.jpg'),
	(10, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682376, '20969ea8a94b05ee217bf04c6a72e7de.jpg'),
	(11, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682426, 'c388a648e146d882a56a4dce84cac39a.jpg'),
	(12, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682482, '111b29702ab9d96160ff1715a5acc6c3.jpg'),
	(13, '丁霞', '670da91be64127c92faac35c8300e814', 0, 0, '18860452074', 1508682649, '96a9f8c535d9a43e3e78529b9fd29c15.jpg'),
	(14, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682822, 'e8cfdcd2366e0d0238160ec0c6dde4bc.jpg'),
	(15, '丁婷婷', '7895fc13088ee37f511913bac71fa66f', 27, 2, '42353', 1508684868, '97faa3ce5e27822ab0c9cfb8aaf6cc6c.jpg'),
	(16, '方佳慧', '18b1ffaccb328e9803503a816b50f6ad', 25, 2, '146789', 1508684890, '6b190019d2b32b15f6a2ac67c82754e4.jpg'),
	(17, '孟硕', 'a3364325a9540ef31cb7eb9ea089ee0c', 24, 1, '1445654676', 1508684914, '3bc77410a40dfc28920733bd4179b13f.jpg'),
	(38, '张三', '1234323', 24, 2, '1232544565', 0, '7c29fcd175e00cfba5d2e4fd7f125292.jpg'),
	(39, '张三', '1234323', 24, 1, '1232544565', 0, '79d2c2ae64f433d7d1ae1fbf53b48b53.jpg'),
	(40, '丁辉', 'undefined', 24, 1, 'undefined', 0, '4c2ae41aacb9da0ca97ee462a7f45e68.jpg'),
	(1, '张三', 'undefined', 24, 1, 'undefined', 0, '09c63c5cc9de769205174825ea8bba8f.jpg'),
	(22, '张三', 'undefined', 24, 1, 'undefined', 0, '398ce3991afdfb698e0276f0fe9a1671.jpg'),
	(23, '柯丹丹', 'undefined', 23, 2, 'undefined', 0, '24720595eae875d4a117a2d0885daf8c.jpg'),
	(24, '二盖', 'ccc5179a26c6f4f6e76a85054219659d', 23, 1, '136567', 0, '75368463f7d87f0264bf7185be11d473.jpg'),
	(25, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, '1c0b7bffd2e53c4334ca50b1a2e67675.jpg'),
	(26, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, 'e9396f041cf2c16a45dc9c8e3cdb9a92.jpg'),
	(27, '丁辉', '0c1e35c59823910dbfca717fc02096e7', 0, 1, '2325', 1508680736, 'fc549ce2746e0dd5269c200c8e534ec9.jpg'),
	(28, '战三', '50fc8ec5004a0d415dc5423a9b92d897', 0, 1, '2446', 1508680921, '4b180c2d13f9b7159d4c36ed0483aa3f.jpg'),
	(29, 'lisi', 'b069b3415151fa7217e870017374de7c', 0, 1, '3265t5', 1508681040, 'ff058eceb69ee48ae2430a5f49412398.jpg'),
	(30, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682376, '20969ea8a94b05ee217bf04c6a72e7de.jpg'),
	(31, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682426, 'c388a648e146d882a56a4dce84cac39a.jpg'),
	(32, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682482, '111b29702ab9d96160ff1715a5acc6c3.jpg'),
	(33, '丁霞', '670da91be64127c92faac35c8300e814', 0, 0, '18860452074', 1508682649, '92c342515a8cd83bf3fa8dc1d82d08c6.jpg'),
	(34, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682822, 'e8cfdcd2366e0d0238160ec0c6dde4bc.jpg'),
	(35, '丁婷婷', '7895fc13088ee37f511913bac71fa66f', 27, 2, '42353', 1508684868, '97faa3ce5e27822ab0c9cfb8aaf6cc6c.jpg'),
	(36, '方佳慧', '18b1ffaccb328e9803503a816b50f6ad', 25, 2, '146789', 1508684890, '6b190019d2b32b15f6a2ac67c82754e4.jpg'),
	(37, '孟硕', 'a3364325a9540ef31cb7eb9ea089ee0c', 24, 1, '1445654676', 1508684914, '3bc77410a40dfc28920733bd4179b13f.jpg'),
	(58, '张三', '1234323', 24, 2, '1232544565', 0, '7c29fcd175e00cfba5d2e4fd7f125292.jpg'),
	(59, '张三', '1234323', 24, 1, '1232544565', 0, '79d2c2ae64f433d7d1ae1fbf53b48b53.jpg'),
	(60, '丁辉', 'undefined', 24, 1, 'undefined', 0, '4c2ae41aacb9da0ca97ee462a7f45e68.jpg'),
	(41, '张三', 'undefined', 24, 1, 'undefined', 0, '09c63c5cc9de769205174825ea8bba8f.jpg'),
	(42, '张三', 'undefined', 24, 2, 'undefined', 0, '398ce3991afdfb698e0276f0fe9a1671.jpg'),
	(43, '柯丹丹', 'undefined', 23, 2, 'undefined', 0, '24720595eae875d4a117a2d0885daf8c.jpg'),
	(44, '二盖', 'ccc5179a26c6f4f6e76a85054219659d', 23, 1, '136567', 0, '75368463f7d87f0264bf7185be11d473.jpg'),
	(45, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, '1c0b7bffd2e53c4334ca50b1a2e67675.jpg'),
	(46, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, 'e9396f041cf2c16a45dc9c8e3cdb9a92.jpg'),
	(47, '丁辉', '0c1e35c59823910dbfca717fc02096e7', 0, 1, '2325', 1508680736, 'fc549ce2746e0dd5269c200c8e534ec9.jpg'),
	(48, '战三', '50fc8ec5004a0d415dc5423a9b92d897', 0, 1, '2446', 1508680921, '4b180c2d13f9b7159d4c36ed0483aa3f.jpg'),
	(49, 'lisi', 'b069b3415151fa7217e870017374de7c', 0, 1, '3265t5', 1508681040, 'ff058eceb69ee48ae2430a5f49412398.jpg'),
	(50, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682376, '20969ea8a94b05ee217bf04c6a72e7de.jpg'),
	(51, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682426, 'c388a648e146d882a56a4dce84cac39a.jpg'),
	(52, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682482, '111b29702ab9d96160ff1715a5acc6c3.jpg'),
	(53, '丁霞', '670da91be64127c92faac35c8300e814', 0, 0, '18860452074', 1508682649, '0'),
	(54, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682822, 'e8cfdcd2366e0d0238160ec0c6dde4bc.jpg'),
	(55, '丁婷婷', '7895fc13088ee37f511913bac71fa66f', 27, 2, '42353', 1508684868, '97faa3ce5e27822ab0c9cfb8aaf6cc6c.jpg'),
	(56, '方佳慧', '18b1ffaccb328e9803503a816b50f6ad', 25, 2, '146789', 1508684890, '6b190019d2b32b15f6a2ac67c82754e4.jpg'),
	(57, '孟硕', 'a3364325a9540ef31cb7eb9ea089ee0c', 24, 1, '1445654676', 1508684914, '3bc77410a40dfc28920733bd4179b13f.jpg'),
	(12, '张三', '1234323', 24, 2, '1232544565', 0, '7c29fcd175e00cfba5d2e4fd7f125292.jpg'),
	(13, '张三', '1234323', 24, 1, '1232544565', 0, '96a9f8c535d9a43e3e78529b9fd29c15.jpg'),
	(14, '丁辉', 'undefined', 24, 1, 'undefined', 0, '4c2ae41aacb9da0ca97ee462a7f45e68.jpg'),
	(61, '张三', 'undefined', 24, 1, 'undefined', 0, '09c63c5cc9de769205174825ea8bba8f.jpg'),
	(62, '张三', 'undefined', 24, 2, 'undefined', 0, '398ce3991afdfb698e0276f0fe9a1671.jpg'),
	(63, '柯丹丹', 'undefined', 23, 2, 'undefined', 0, '24720595eae875d4a117a2d0885daf8c.jpg'),
	(64, '二盖', 'ccc5179a26c6f4f6e76a85054219659d', 23, 1, '136567', 0, '75368463f7d87f0264bf7185be11d473.jpg'),
	(65, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, '1c0b7bffd2e53c4334ca50b1a2e67675.jpg'),
	(66, '陈坤', 'e53a0a2978c28872a4505bdb51db06dc', 24, 1, '323434654', 1508674291, 'e9396f041cf2c16a45dc9c8e3cdb9a92.jpg'),
	(67, '丁辉', '0c1e35c59823910dbfca717fc02096e7', 0, 1, '2325', 1508680736, 'fc549ce2746e0dd5269c200c8e534ec9.jpg'),
	(68, '战三', '50fc8ec5004a0d415dc5423a9b92d897', 0, 1, '2446', 1508680921, '4b180c2d13f9b7159d4c36ed0483aa3f.jpg'),
	(69, 'lisi', 'b069b3415151fa7217e870017374de7c', 0, 1, '3265t5', 1508681040, 'ff058eceb69ee48ae2430a5f49412398.jpg'),
	(70, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682376, '20969ea8a94b05ee217bf04c6a72e7de.jpg'),
	(71, '猪猪', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '123456789', 1508682426, 'c388a648e146d882a56a4dce84cac39a.jpg'),
	(72, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682482, '111b29702ab9d96160ff1715a5acc6c3.jpg'),
	(73, '丁霞', '670da91be64127c92faac35c8300e814', 0, 0, '18860452074', 1508682649, 'cceb4de052b659bfbac8b8be3e39c38e.jpg'),
	(74, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', 0, 0, '18860452074', 1508682822, 'e8cfdcd2366e0d0238160ec0c6dde4bc.jpg'),
	(75, '丁婷婷', '7895fc13088ee37f511913bac71fa66f', 27, 2, '42353', 1508684868, '97faa3ce5e27822ab0c9cfb8aaf6cc6c.jpg'),
	(79, '丁辉', '43f6ba1dfda6b8106dc7cf1155f37fdb', 12, 1, '143453', 1508814544, 'e670fdb653c4d2b0186d66cadc2a409a.jpg'),
	(80, '丁辉', '43f6ba1dfda6b8106dc7cf1155f37fdb', 12, 1, '143453', 1508814544, 'a2bc2018c20c349da6a8bac8d29b1f79.jpg'),
	(81, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '', 1508919301, NULL),
	(82, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '', 1508919301, NULL),
	(83, '丁霞', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '', 1508920688, NULL),
	(84, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '', 1508920706, NULL),
	(85, '丁辉', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '', 1508920706, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
