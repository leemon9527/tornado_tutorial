/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : assetsmanagement

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-06-17 18:05:01
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
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` char(255) DEFAULT NULL,
  `hostname` char(255) DEFAULT '',
  `memory` char(255) DEFAULT NULL,
  `cpu` char(255) DEFAULT NULL,
  `disk` char(255) DEFAULT NULL,
  `net_card` char(255) DEFAULT NULL,
  `system` char(255) DEFAULT NULL,
  `model` char(255) DEFAULT NULL,
  `sn` char(255) DEFAULT NULL,
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('1', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2016-06-15 15:57:21');
INSERT INTO `server` VALUES ('2', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2016-06-14 15:57:25');
INSERT INTO `server` VALUES ('639', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:12');
INSERT INTO `server` VALUES ('640', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:12');
INSERT INTO `server` VALUES ('641', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:12');
INSERT INTO `server` VALUES ('642', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:12');
INSERT INTO `server` VALUES ('643', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('644', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('645', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('646', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('647', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('648', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('649', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:13');
INSERT INTO `server` VALUES ('650', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('651', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('652', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('653', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('654', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('655', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('656', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:14');
INSERT INTO `server` VALUES ('657', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('658', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('659', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('660', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('661', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('662', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('663', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('664', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('665', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('666', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-22 05:52:15');
INSERT INTO `server` VALUES ('667', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 00:20:59');
INSERT INTO `server` VALUES ('668', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 00:21:59');
INSERT INTO `server` VALUES ('669', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 00:22:57');
INSERT INTO `server` VALUES ('670', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 00:30:09');
INSERT INTO `server` VALUES ('671', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 04:35:25');
INSERT INTO `server` VALUES ('672', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 05:10:21');
INSERT INTO `server` VALUES ('673', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 05:31:54');
INSERT INTO `server` VALUES ('674', '192.168.1.105', 'localhost', 'max: 1 TBnumber:      1  Size: 1024 MB', '1 Intel(R) Core(TM) i5-3230M', '/dev/sda:20971520', '1 Intel Corporation 82545EM', 'CentOS-6.6', '\" VMware Virtual Platform\"', 'VMware-564dd56b321035a8-2e743b8ba093af50', '2015-03-23 06:12:53');

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
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES ('8', 'aga', '172.20.225.94', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', '8WWC83X\r\n8WWC83X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('9', '111', '172.20.225.95', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'CVPD83X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('12', '111111', '172.20.225.99', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'FVPD83X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('14', 'rac1', '172.20.225.101', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'C2G593X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('15', 'rac2', '172.20.225.102', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('16', 'rac3', '172.20.225.103', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('17', 'rac4', '172.20.225.104', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('18', 'tvroot1', '172.20.225.105', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D2G593X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('19', 'tvroot2', '172.20.225.106', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('20', 'tvroot3', '172.20.225.107', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('21', 'tvroot4', '172.20.225.108', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('22', 'tvroot5', '172.20.225.109', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('23', 'tvroot6', '172.20.225.110', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'Windows Server 2008 r2', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('24', 'tvroot7', '172.20.225.111', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '0', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('25', 'tvroot8', '172.20.225.112', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '0', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('26', 'tvroot9', '172.20.225.113', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('27', 'tvroot10', '172.20.225.114', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('28', 'tvroot11', '172.20.225.115', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');
INSERT INTO `servers` VALUES ('29', 'tvroot12', '172.20.225.116', 'Intel® Xeon® Processor E5645*2', '4x4GB内存', '2x1TB热插拔SATA硬盘(Raid1)', '4', '2.6.18-238.el5', 'CentOS 5.6', 'D4G473X', '1', '2016-06-14 15:57:25', 'test env');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `isAdmin` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
