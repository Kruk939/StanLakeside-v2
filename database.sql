/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100204
Source Host           : localhost:3306
Source Database       : rpframework

Target Server Type    : MYSQL
Target Server Version : 100204
File Encoding         : 65001

Date: 2017-04-29 19:30:32
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
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `items` varchar(15000) NOT NULL,
  `clothes` varchar(15000) NOT NULL,
  `weapons` varchar(15000) NOT NULL,
  `cash` int(13) NOT NULL,
  `bank` int(13) NOT NULL,
  `cop` int(13) NOT NULL,
  `ems` int(13) NOT NULL,
  `position` varchar(50) NOT NULL,
  `bankaccount` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL DEFAULT '-1',
  `hunger` int(13) NOT NULL DEFAULT 0,
  `thirst` int(13) NOT NULL DEFAULT 0,
  `fire` int(13) NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
