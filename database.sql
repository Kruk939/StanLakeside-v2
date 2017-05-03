/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 100205
Source Host           : localhost:3306
Source Database       : rpframework

Target Server Type    : MYSQL
Target Server Version : 100205
File Encoding         : 65001

Date: 2017-05-03 19:04:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for garage
-- ----------------------------
DROP TABLE IF EXISTS `garage`;
CREATE TABLE `garage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `hit` varchar(1000) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(100) NOT NULL,
  `pos` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `price` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for log_action
-- ----------------------------
DROP TABLE IF EXISTS `log_action`;
CREATE TABLE `log_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=219385 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_admin
-- ----------------------------
DROP TABLE IF EXISTS `log_admin`;
CREATE TABLE `log_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16725 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_connection
-- ----------------------------
DROP TABLE IF EXISTS `log_connection`;
CREATE TABLE `log_connection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69392 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_cop
-- ----------------------------
DROP TABLE IF EXISTS `log_cop`;
CREATE TABLE `log_cop` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46072 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_craft
-- ----------------------------
DROP TABLE IF EXISTS `log_craft`;
CREATE TABLE `log_craft` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10485 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_death
-- ----------------------------
DROP TABLE IF EXISTS `log_death`;
CREATE TABLE `log_death` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `weapon` varchar(100) NOT NULL,
  `distance` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12399 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_economy
-- ----------------------------
DROP TABLE IF EXISTS `log_economy`;
CREATE TABLE `log_economy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `price` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=182291 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_job
-- ----------------------------
DROP TABLE IF EXISTS `log_job`;
CREATE TABLE `log_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=67403 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_money
-- ----------------------------
DROP TABLE IF EXISTS `log_money`;
CREATE TABLE `log_money` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `unitUID` varchar(50) NOT NULL,
  `unitName` varchar(64) NOT NULL,
  `unitCash` int(13) NOT NULL,
  `unitBank` int(13) NOT NULL,
  `unitInv` varchar(10000) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=72961 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for log_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `log_vehicle`;
CREATE TABLE `log_vehicle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `playerUID` varchar(50) NOT NULL,
  `playerName` varchar(64) NOT NULL,
  `playerCash` int(13) NOT NULL,
  `playerBank` int(13) NOT NULL,
  `playerInv` varchar(10000) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `vehicleClassname` varchar(255) NOT NULL,
  `vehicleName` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=135061 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for phonecontacts
-- ----------------------------
DROP TABLE IF EXISTS `phonecontacts`;
CREATE TABLE `phonecontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for slpd_prison
-- ----------------------------
DROP TABLE IF EXISTS `slpd_prison`;
CREATE TABLE `slpd_prison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid_player` varchar(20) NOT NULL DEFAULT '',
  `uid_officer` varchar(20) NOT NULL DEFAULT '',
  `active` int(1) NOT NULL DEFAULT 1,
  `time_prison` int(3) NOT NULL,
  `time_left` int(3) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for slpd_tickets
-- ----------------------------
DROP TABLE IF EXISTS `slpd_tickets`;
CREATE TABLE `slpd_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid_officer` varchar(20) NOT NULL,
  `uid_player` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for slpd_wanted
-- ----------------------------
DROP TABLE IF EXISTS `slpd_wanted`;
CREATE TABLE `slpd_wanted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid_suspect` varchar(30) NOT NULL,
  `uid_officer` varchar(32) NOT NULL,
  `charges` text NOT NULL,
  `wanted_level` tinyint(1) NOT NULL DEFAULT 0,
  `active` int(1) NOT NULL DEFAULT 1,
  `uid_closed` varchar(20) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for slpd_wanted_vehicle
-- ----------------------------
DROP TABLE IF EXISTS `slpd_wanted_vehicle`;
CREATE TABLE `slpd_wanted_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(7) NOT NULL,
  `description` varchar(255) NOT NULL,
  `uid_officer` varchar(20) NOT NULL,
  `reason` text NOT NULL,
  `wanted_level` int(1) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `uid_closed` varchar(20) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11222 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sl_atm_mafia
-- ----------------------------
DROP TABLE IF EXISTS `sl_atm_mafia`;
CREATE TABLE `sl_atm_mafia` (
  `atm` int(255) NOT NULL DEFAULT 0,
  `id` int(255) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sl_mayor
-- ----------------------------
DROP TABLE IF EXISTS `sl_mayor`;
CREATE TABLE `sl_mayor` (
  `mayor_uid` varchar(50) DEFAULT NULL,
  `mayor_atm` int(255) NOT NULL DEFAULT 0,
  `mayor_taxes` int(255) NOT NULL DEFAULT 0,
  `mayor_idd` int(255) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `items` text NOT NULL,
  `clothes` text NOT NULL,
  `weapons` text NOT NULL,
  `cash` int(13) NOT NULL,
  `bank` int(13) NOT NULL,
  `hunger` int(13) NOT NULL DEFAULT 0,
  `thirst` int(13) NOT NULL DEFAULT 0,
  `cop` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `ems` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `fire` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `legal` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `mafia` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `position` varchar(50) CHARACTER SET latin1 NOT NULL,
  `bankaccount` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '-1',
  `houselevel` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '1',
  `housecontent` varchar(1500) NOT NULL DEFAULT '[[[],[]],[[],[]],[[],[]],[[],[]]]',
  `exp_level` int(11) NOT NULL DEFAULT 0,
  `exp_total` int(11) NOT NULL DEFAULT 0,
  `exp_perkPoints` int(11) NOT NULL DEFAULT 0,
  `exp_perks` text DEFAULT NULL,
  `connection` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
