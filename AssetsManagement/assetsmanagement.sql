/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : assetsmanagement

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-06-22 17:52:40
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
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(20) NOT NULL,
  `app_path` varchar(50) NOT NULL,
  `app_cmd` varchar(100) NOT NULL,
  `app_log_path` varchar(50) NOT NULL,
  `server_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SERVER_ID` (`server_id`),
  CONSTRAINT `FK_SERVER_ID` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', 'tv_tomcat0', '/opt/tv_tomcat0', 'service tv_tomcat0 [start|stop|restart]', '/opt/tvmall/logs/', '18', 'tvroot服务器');
INSERT INTO `app` VALUES ('2', 'tv_tomcat1', '/opt/tv_tomcat1', 'service tv_tomcat1 [start|stop|restart]', '/opt/tvmall/logs/', '18', 'tvroot0服务器');
INSERT INTO `app` VALUES ('3', 'tv_tomcat2', '/opt/tv_tomcat2', 'service tv_tomcat2 [start|stop|restart]', '/opt/tvmall/logs/', '18', 'tvroot0服务器');
INSERT INTO `app` VALUES ('4', 'tv_tomcat3', '/opt/tv_tomcat3', 'service tv_tomcat3 [start|stop|restart]', '/opt/tvmall/logs/', '18', 'tvroot0服务器');
INSERT INTO `app` VALUES ('5', 'tv_tomcat0', '/opt/tv_tomcat0', 'service tv_tomcat0 [start|stop|restart]', '/opt/tvmall/logs/', '19', 'tvroot1服务器');
INSERT INTO `app` VALUES ('6', 'tv_tomcat1', '/opt/tv_tomcat1', 'service tv_tomcat1 [start|stop|restart]', '/opt/tvmall/logs/', '19', 'tvroot1服务器');
INSERT INTO `app` VALUES ('7', 'tv_tomcat2', '/opt/tv_tomcat2', 'service tv_tomcat2 [start|stop|restart]', '/opt/tvmall/logs/', '19', 'tvroot1服务器');
INSERT INTO `app` VALUES ('8', 'tv_tomcat3', '/opt/tv_tomcat3', 'service tv_tomcat3 [start|stop|restart]', '/opt/tvmall/logs/', '19', 'tvroot1服务器');
INSERT INTO `app` VALUES ('9', 'nginx_tvroot_0', '/usr/local/nginx', '/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf', '/usr/local/nginx/logs/', '18', 'tvroot0服务器的nginx反射代理');
INSERT INTO `app` VALUES ('10', 'nginx_tvroot_1', '/usr/local/nginx', '/usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/nginx.conf', '/usr/local/nginx/logs/', '19', 'tvroot1服务器的nginx反射代理');

-- ----------------------------
-- Table structure for cabinet
-- ----------------------------
DROP TABLE IF EXISTS `cabinet`;
CREATE TABLE `cabinet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cabinet_name` varchar(20) NOT NULL,
  `height` varchar(3) NOT NULL,
  `remain_height` varchar(3) NOT NULL,
  `idc_id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_IDC` (`idc_id`),
  CONSTRAINT `FK_IDC` FOREIGN KEY (`idc_id`) REFERENCES `idc` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cabinet
-- ----------------------------
INSERT INTO `cabinet` VALUES ('1', 'IOCHD', '42U', '2U', '1', null);
INSERT INTO `cabinet` VALUES ('2', 'IOCHC', '42U', '0U', '1', null);
INSERT INTO `cabinet` VALUES ('3', 'IOCHB', '42U', '0U', '1', null);
INSERT INTO `cabinet` VALUES ('4', 'IOCHA', '42U', '0U', '1', null);
INSERT INTO `cabinet` VALUES ('5', 'IOCIB', '42U', '10U', '1', null);
INSERT INTO `cabinet` VALUES ('6', 'IOCIC', '42U', '20U', '1', null);

-- ----------------------------
-- Table structure for cluster
-- ----------------------------
DROP TABLE IF EXISTS `cluster`;
CREATE TABLE `cluster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(50) NOT NULL,
  `cluster_cmd` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cluster
-- ----------------------------
INSERT INTO `cluster` VALUES ('1', 'oracle_rac', 'oracle_rac', 'oracle_rac');
INSERT INTO `cluster` VALUES ('2', 'heartbeat', 'heartbeat', 'redis服务使用浮动IP地址');

-- ----------------------------
-- Table structure for cron
-- ----------------------------
DROP TABLE IF EXISTS `cron`;
CREATE TABLE `cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_name` varchar(50) NOT NULL,
  `cron_cmd` varchar(100) NOT NULL,
  `server_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cron
-- ----------------------------
INSERT INTO `cron` VALUES ('1', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '18', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('2', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '15', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('3', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '16', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('4', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '17', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('5', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '19', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('6', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '20', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('7', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '21', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('8', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '22', '每隔十分钟同步时间');
INSERT INTO `cron` VALUES ('9', 'sync_time', '*/10 * * * * /bin/bash /root/scripts/sync_time.sh', '25', '每隔十分钟同步时间');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'user');
INSERT INTO `groups` VALUES ('2', 'admin');
INSERT INTO `groups` VALUES ('3', 'guest');

-- ----------------------------
-- Table structure for idc
-- ----------------------------
DROP TABLE IF EXISTS `idc`;
CREATE TABLE `idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idc_name` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact_name` varchar(10) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `emergency_contact_name` varchar(10) NOT NULL,
  `emergency_contact_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idc
-- ----------------------------
INSERT INTO `idc` VALUES ('1', '广电机房', '南京市白下区xxx路xxx号', 'john', '13888888888', 'sara', '15888888888');

-- ----------------------------
-- Table structure for servers
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(50) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `cpu` varchar(50) DEFAULT NULL,
  `mem` varchar(10) DEFAULT NULL,
  `disk` varchar(50) DEFAULT NULL,
  `net_card` varchar(50) DEFAULT NULL,
  `kernel` varchar(50) DEFAULT NULL,
  `os` varchar(50) NOT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `isDoublePower` tinyint(1) DEFAULT NULL COMMENT '是否为双电源',
  `inuse_time` datetime DEFAULT NULL,
  `cabinet_id` int(11) DEFAULT NULL,
  `cabinet_location` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `FK_CABINET_ID` (`cabinet_id`),
  CONSTRAINT `FK_CABINET_ID` FOREIGN KEY (`cabinet_id`) REFERENCES `cabinet` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('8', 'MobileService', '172.20.225.94', 'Intel®+Xeon®+Processor+E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '6', '2.6.18-238.el5', 'CentOS 5.6', '8WWC', '0', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('15', 'rac2', '172.20.225.102', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', '1', '3-4', 'oracle数据库');
INSERT INTO `servers` VALUES ('16', 'rac3', '172.20.225.103', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('17', 'rac4', '172.20.225.104', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('18', 'tvroot1', '172.20.225.105', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('19', 'tvroot2', '172.20.225.106', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('20', 'tvroot3', '172.20.225.107', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('21', 'tvroot4', '172.20.225.108', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('22', 'tvroot5', '172.20.225.109', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('23', 'tvroot6', '172.20.225.110', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'Windows Server 2008 r2', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('24', 'tvroot7', '172.20.225.111', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '0', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('25', 'tvroot8', '172.20.225.112', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '0', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('26', 'tvroot9', '172.20.225.113', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('27', 'tvroot10', '172.20.225.114', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('28', 'tvroot11', '172.20.225.115', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');
INSERT INTO `servers` VALUES ('29', 'tvroot12', '172.20.225.116', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', '1', '3-4', 'test env');

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(50) NOT NULL,
  `service_path` varchar(50) NOT NULL,
  `service_log_path` varchar(50) NOT NULL,
  `service_type` varchar(10) NOT NULL,
  `app_id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES ('1', 'tvroot0_tv_service_0', '/opt/tvservice/tvroot0', '/opt/tvmall/logs', 'web', '1', 'tv_service');
INSERT INTO `service` VALUES ('2', 'tvroot0_tv_service_1', '/opt/tvservice/tvroot1', '/opt/tvmall/logs', 'web', '1', 'tv_service');
INSERT INTO `service` VALUES ('3', 'tvroot0_tv_service_2', '/opt/tvservice/tvroot2', '/opt/tvmall/logs', 'web', '1', 'tv_service');
INSERT INTO `service` VALUES ('4', 'tvroot0_tv_service_3', '/opt/tvservice/tvroot3', '/opt/tvmall/logs', 'web', '1', 'tv_service');
INSERT INTO `service` VALUES ('5', 'tvroot1_tv_service_0', '/opt/tvservice/tvroot0', '/opt/tvmall/logs', 'web', '2', 'tv_service');
INSERT INTO `service` VALUES ('6', 'tvroot1_tv_service_1', '/opt/tvservice/tvroot1', '/opt/tvmall/logs', 'web', '2', 'tv_service');
INSERT INTO `service` VALUES ('7', 'tvroot1_tv_service_2', '/opt/tvservice/tvroot2', '/opt/tvmall/logs', 'web', '2', 'tv_service');
INSERT INTO `service` VALUES ('8', 'tvroot1_tv_service_3', '/opt/tvservice/tvroot3', '/opt/tvmall/logs', 'web', '2', 'tv_service');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `isAdmin` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group_id`),
  CONSTRAINT `FK_GROUP` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '2', '1');
INSERT INTO `user` VALUES ('2', 'user', 'password', '1', '0');
INSERT INTO `user` VALUES ('3', 'guest', 'guest', '3', '0');
