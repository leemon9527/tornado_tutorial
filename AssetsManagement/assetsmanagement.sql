/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : assetsmanagement

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-31 15:13:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin` varchar(10) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Home', '/');
INSERT INTO `projects` VALUES ('2', 'Servers', '/servers/');
INSERT INTO `projects` VALUES ('3', 'Sample Item', '/servers/');
INSERT INTO `projects` VALUES ('4', 'Gallery', 'gallery.html');
INSERT INTO `projects` VALUES ('5', 'Calendar', 'calendar.html');
INSERT INTO `projects` VALUES ('6', 'Faq', 'faq.html');
INSERT INTO `projects` VALUES ('7', 'Help', 'help.html');
INSERT INTO `projects` VALUES ('8', 'OneMoreTest', '/');

-- ----------------------------
-- Table structure for servers
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servername` varchar(50) NOT NULL,
  `ipaddr` varchar(40) NOT NULL,
  `description` text,
  `os` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('5', 'dddd', '172.20.225.91', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('7', 'eeee', '172.20.225.93', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('8', 'aga', '172.20.225.94', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('9', '111', '172.20.225.95', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('10', 'asdfas', '172.20.225.97', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('11', 'Tesafdasft87', '172.20.225.98', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('12', '111111', '172.20.225.99', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('13', '111', '172.20.225.100', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('14', 'rac1', '172.20.225.101', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('15', 'rac2', '172.20.225.102', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('16', 'rac3', '172.20.225.103', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('17', 'rac4', '172.20.225.104', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('18', 'tvroot1', '172.20.225.105', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('19', 'tvroot2', '172.20.225.106', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('20', 'tvroot3', '172.20.225.107', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('21', 'tvroot4', '172.20.225.108', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('22', 'tvroot5', '172.20.225.109', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('23', 'tvroot6', '172.20.225.110', 'test env', 'Windows Server 2008 r2');
INSERT INTO `servers` VALUES ('24', 'tvroot7', '172.20.225.111', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('25', 'tvroot8', '172.20.225.112', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('26', 'tvroot9', '172.20.225.113', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('27', 'tvroot10', '172.20.225.114', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('28', 'tvroot11', '172.20.225.115', 'test env', 'CentOS 5.6');
INSERT INTO `servers` VALUES ('29', 'tvroot12', '172.20.225.116', 'test env', 'CentOS 5.6');
