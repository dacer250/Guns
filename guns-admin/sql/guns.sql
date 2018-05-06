/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-05-06 13:51:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dimension
-- ----------------------------
DROP TABLE IF EXISTS `dimension`;
CREATE TABLE `dimension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en` varchar(40) NOT NULL COMMENT '英文描述',
  `cn` varchar(100) DEFAULT NULL COMMENT '中文描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dimension
-- ----------------------------
INSERT INTO `dimension` VALUES ('59', 'collar', '领围');
INSERT INTO `dimension` VALUES ('60', 'frontLength', '前长');
INSERT INTO `dimension` VALUES ('61', 'backLength', '后长');
INSERT INTO `dimension` VALUES ('62', 'clothLength', '衣长');
INSERT INTO `dimension` VALUES ('63', 'shoulder', '肩宽');
INSERT INTO `dimension` VALUES ('64', 'sleeve', '袖长');
INSERT INTO `dimension` VALUES ('65', 'bust', '胸围');
INSERT INTO `dimension` VALUES ('66', 'middleWaist', '中腰');
INSERT INTO `dimension` VALUES ('67', 'sleeveHeader', '袖头');
INSERT INTO `dimension` VALUES ('68', 'hem', '下摆');
INSERT INTO `dimension` VALUES ('69', 'sleeveWidth', '袖肥');
INSERT INTO `dimension` VALUES ('70', 'wristband', '袖口');
INSERT INTO `dimension` VALUES ('71', 'frontWidth', '前宽');
INSERT INTO `dimension` VALUES ('72', 'backWidth', '后宽');
INSERT INTO `dimension` VALUES ('73', 'shortSleeveShouler', '短袖肩宽');
INSERT INTO `dimension` VALUES ('74', 'longSleeveShoulder', '长袖肩宽');
INSERT INTO `dimension` VALUES ('75', 'longSleeveOverShoulder', '长袖过肩');
INSERT INTO `dimension` VALUES ('76', 'shortSleeveOverShoulder', '短袖过肩');
INSERT INTO `dimension` VALUES ('77', 'waist', '腰围');
INSERT INTO `dimension` VALUES ('78', 'hip', '臀围');
INSERT INTO `dimension` VALUES ('79', 'crotchThrouth', '通裆');
INSERT INTO `dimension` VALUES ('80', 'crotchVertical', '立裆');
INSERT INTO `dimension` VALUES ('81', 'crotch', '横档');
INSERT INTO `dimension` VALUES ('82', 'middleCrotch', '中档');
INSERT INTO `dimension` VALUES ('83', 'length', '裤长');
INSERT INTO `dimension` VALUES ('84', 'bottom', '脚口');
INSERT INTO `dimension` VALUES ('85', 'frontWave', '前浪');
INSERT INTO `dimension` VALUES ('86', 'backWave', '后浪');

-- ----------------------------
-- Table structure for est_cloth_female
-- ----------------------------
DROP TABLE IF EXISTS `est_cloth_female`;
CREATE TABLE `est_cloth_female` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` decimal(10,0) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `bust` decimal(10,0) DEFAULT NULL,
  `middleWaist` decimal(10,0) DEFAULT NULL,
  `shoulder` decimal(10,0) DEFAULT NULL,
  `sleeve` decimal(10,0) DEFAULT NULL,
  `collar` decimal(10,0) DEFAULT NULL,
  `waist` decimal(10,0) DEFAULT NULL,
  `hip` decimal(10,0) DEFAULT NULL,
  `crotch` decimal(10,0) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of est_cloth_female
-- ----------------------------

-- ----------------------------
-- Table structure for est_cloth_male
-- ----------------------------
DROP TABLE IF EXISTS `est_cloth_male`;
CREATE TABLE `est_cloth_male` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` decimal(10,0) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `bust` decimal(10,0) DEFAULT NULL,
  `middleWaist` decimal(10,0) DEFAULT NULL,
  `shoulder` decimal(10,0) DEFAULT NULL,
  `sleeve` decimal(10,0) DEFAULT NULL,
  `collar` decimal(10,0) DEFAULT NULL,
  `waist` decimal(10,0) DEFAULT NULL,
  `hip` decimal(10,0) DEFAULT NULL,
  `crotch` decimal(10,0) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of est_cloth_male
-- ----------------------------

-- ----------------------------
-- Table structure for sp
-- ----------------------------
DROP TABLE IF EXISTS `sp`;
CREATE TABLE `sp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL COMMENT '男，女',
  `styleCode` varchar(255) DEFAULT NULL COMMENT '款式编号',
  `styleName` varchar(50) DEFAULT NULL COMMENT '款式名称',
  `clothType` varchar(40) DEFAULT NULL COMMENT '服饰类型',
  `dimension` varchar(500) DEFAULT NULL COMMENT '测量部位',
  `spname` varchar(40) DEFAULT NULL COMMENT '规格名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp
-- ----------------------------
INSERT INTO `sp` VALUES ('1', '凡客', '男', '21104RY1', '梭织男装长裤', '牛仔裤', 'waist,hip,crotch,frontWave,backWave,length,bottom', '5118715');

-- ----------------------------
-- Table structure for spitem
-- ----------------------------
DROP TABLE IF EXISTS `spitem`;
CREATE TABLE `spitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spid` int(11) DEFAULT NULL COMMENT '规格ID',
  `name` varchar(50) DEFAULT NULL COMMENT '型号或者尺码名称|S M L 或者25 26 27',
  `collar` decimal(10,2) DEFAULT NULL COMMENT '领围',
  `frontLength` decimal(10,2) DEFAULT NULL COMMENT '前长',
  `backLength` decimal(10,2) DEFAULT NULL COMMENT '后长',
  `clothLength` decimal(10,2) DEFAULT NULL COMMENT '衣长',
  `shoulder` decimal(10,2) DEFAULT NULL COMMENT '肩宽',
  `sleeve` decimal(10,2) DEFAULT NULL COMMENT '袖长',
  `bust` decimal(10,2) DEFAULT NULL COMMENT '胸围',
  `middleWaist` decimal(10,2) DEFAULT NULL COMMENT '中腰',
  `sleeveHeader` decimal(10,2) DEFAULT NULL COMMENT '袖头',
  `hem` decimal(10,2) DEFAULT NULL COMMENT '下摆',
  `sleeveWidth` decimal(10,2) DEFAULT NULL COMMENT '袖肥',
  `wristband` decimal(10,2) DEFAULT NULL COMMENT '袖口',
  `frontWidth` decimal(10,2) DEFAULT NULL COMMENT '前宽',
  `backWidth` decimal(10,2) DEFAULT NULL COMMENT '后宽',
  `shortSleeveShouler` decimal(10,2) DEFAULT NULL COMMENT '短袖肩宽',
  `longSleeveShoulder` decimal(10,2) DEFAULT NULL COMMENT '长袖肩宽',
  `longSleeveOverShoulder` decimal(10,2) DEFAULT NULL COMMENT '长袖过肩',
  `shortSleeveOverShoulder` decimal(10,2) DEFAULT NULL COMMENT '短袖过肩',
  `waist` decimal(10,2) DEFAULT NULL COMMENT '腰围',
  `hip` decimal(10,2) DEFAULT NULL COMMENT '臀围',
  `crotchThrouth` decimal(10,2) DEFAULT NULL COMMENT '通裆',
  `crotchVertical` decimal(10,2) DEFAULT NULL COMMENT '立裆',
  `crotch` decimal(10,2) DEFAULT NULL COMMENT '横档',
  `middleCrotch` decimal(10,2) DEFAULT NULL COMMENT '中档',
  `length` decimal(10,2) DEFAULT NULL COMMENT '裤长',
  `bottom` decimal(10,2) DEFAULT NULL COMMENT '脚口',
  `frontWave` decimal(10,2) DEFAULT NULL COMMENT '前浪',
  `backWave` decimal(10,2) DEFAULT NULL COMMENT '后浪',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spitem
-- ----------------------------
INSERT INTO `spitem` VALUES ('14', '1', '27', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '68.50', '87.00', null, null, '51.20', null, null, null, '23.30', '34.00');
INSERT INTO `spitem` VALUES ('15', '1', '28', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '71.00', '89.50', null, null, '52.50', null, null, null, '23.60', '34.50');
INSERT INTO `spitem` VALUES ('16', '1', '29', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '73.50', '92.00', null, null, '53.80', null, null, null, '23.90', '35.00');
INSERT INTO `spitem` VALUES ('17', '1', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '76.00', '94.50', null, null, '55.10', null, null, null, '24.20', '35.50');
INSERT INTO `spitem` VALUES ('18', '1', '31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '78.50', '97.00', null, null, '56.40', null, null, null, '24.50', '36.00');
INSERT INTO `spitem` VALUES ('19', '1', '32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '81.00', '99.50', null, null, '57.70', null, null, null, '24.80', '36.50');
INSERT INTO `spitem` VALUES ('20', '1', '33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '83.50', '101.50', null, null, '59.00', null, null, null, '25.10', '37.00');
INSERT INTO `spitem` VALUES ('21', '1', '34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '86.00', '103.50', null, null, '60.30', null, null, null, '25.40', '37.50');
INSERT INTO `spitem` VALUES ('22', '1', '35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '88.50', '105.50', null, null, '61.60', null, null, null, '25.70', '38.00');
INSERT INTO `spitem` VALUES ('23', '1', '36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '91.00', '107.50', null, null, '62.90', null, null, null, '26.00', '38.50');
INSERT INTO `spitem` VALUES ('24', '1', '37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '93.50', '109.50', null, null, '64.20', null, null, null, '26.30', '39.00');
INSERT INTO `spitem` VALUES ('25', '1', '38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '96.00', '111.50', null, null, '65.50', null, null, null, '26.60', '39.50');

-- ----------------------------
-- Table structure for standard_cloth_female
-- ----------------------------
DROP TABLE IF EXISTS `standard_cloth_female`;
CREATE TABLE `standard_cloth_female` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `bust` decimal(10,2) DEFAULT NULL,
  `middleWaist` decimal(10,2) DEFAULT NULL,
  `shoulder` decimal(10,2) DEFAULT NULL,
  `sleeve` decimal(10,2) DEFAULT NULL,
  `collar` decimal(10,2) DEFAULT NULL,
  `waist` decimal(10,2) DEFAULT NULL,
  `hip` decimal(10,2) DEFAULT NULL,
  `crotch` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard_cloth_female
-- ----------------------------

-- ----------------------------
-- Table structure for standard_cloth_male
-- ----------------------------
DROP TABLE IF EXISTS `standard_cloth_male`;
CREATE TABLE `standard_cloth_male` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `bust` decimal(10,2) DEFAULT NULL,
  `middleWaist` decimal(10,2) DEFAULT NULL,
  `shoulder` decimal(10,2) DEFAULT NULL,
  `sleeve` decimal(10,2) DEFAULT NULL,
  `collar` decimal(10,2) DEFAULT NULL,
  `waist` decimal(10,2) DEFAULT NULL,
  `hip` decimal(10,2) DEFAULT NULL,
  `crotch` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard_cloth_male
-- ----------------------------

-- ----------------------------
-- Table structure for standard_inch
-- ----------------------------
DROP TABLE IF EXISTS `standard_inch`;
CREATE TABLE `standard_inch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` int(2) DEFAULT NULL COMMENT '0女1男',
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `bust` decimal(10,2) DEFAULT NULL,
  `middleWaist` decimal(10,2) DEFAULT NULL,
  `shoulder` decimal(10,2) DEFAULT NULL,
  `sleeve` decimal(10,2) DEFAULT NULL,
  `collar` decimal(10,2) DEFAULT NULL,
  `waist` decimal(10,2) DEFAULT NULL,
  `hip` decimal(10,2) DEFAULT NULL,
  `crotch` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard_inch
-- ----------------------------
INSERT INTO `standard_inch` VALUES ('1523', '1', '160.00', '42.00', '85.00', '69.00', '40.00', '56.00', '35.00', '71.00', '90.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1524', '1', '160.00', '43.00', '85.50', '69.50', '40.00', '56.00', '35.00', '71.50', '89.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1525', '1', '160.00', '44.00', '86.00', '70.00', '40.10', '56.00', '35.00', '72.00', '89.50', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1526', '1', '160.00', '45.00', '86.50', '70.50', '40.20', '56.00', '35.00', '72.50', '90.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1527', '1', '160.00', '46.00', '87.00', '71.00', '40.30', '56.00', '35.00', '73.00', '90.50', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1528', '1', '160.00', '47.00', '85.00', '71.00', '40.30', '56.00', '36.00', '73.00', '89.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1529', '1', '160.00', '48.00', '85.50', '71.50', '40.30', '56.00', '36.00', '73.50', '89.50', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1530', '1', '160.00', '49.00', '86.00', '72.00', '40.30', '56.00', '36.00', '74.00', '90.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1531', '1', '160.00', '50.00', '86.50', '72.50', '40.30', '56.00', '36.00', '74.50', '90.50', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1532', '1', '160.00', '51.00', '87.00', '73.00', '40.30', '56.00', '36.00', '75.00', '91.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1533', '1', '160.00', '52.00', '87.00', '75.00', '41.00', '56.00', '36.00', '77.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1534', '1', '160.00', '53.00', '87.50', '75.50', '41.00', '56.00', '36.00', '77.50', '90.50', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1535', '1', '160.00', '54.00', '88.00', '76.00', '41.00', '56.00', '36.00', '78.00', '91.00', '53.20', '98.00');
INSERT INTO `standard_inch` VALUES ('1536', '1', '160.00', '55.00', '88.50', '76.50', '41.00', '56.00', '36.00', '78.50', '91.50', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1537', '1', '160.00', '56.00', '89.00', '77.00', '41.00', '56.00', '36.00', '79.00', '92.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1538', '1', '160.00', '57.00', '89.00', '79.00', '41.00', '56.00', '36.00', '81.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1539', '1', '160.00', '58.00', '89.50', '79.50', '41.00', '56.00', '36.00', '81.50', '92.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1540', '1', '160.00', '59.00', '90.00', '80.00', '41.00', '56.00', '36.00', '82.00', '93.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1541', '1', '160.00', '60.00', '90.50', '80.50', '41.00', '56.00', '36.00', '82.50', '93.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1542', '1', '160.00', '61.00', '91.00', '81.00', '41.00', '56.00', '36.00', '83.00', '94.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1543', '1', '160.00', '62.00', '91.50', '81.50', '41.00', '56.00', '36.00', '83.50', '94.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1544', '1', '160.00', '63.00', '91.00', '83.00', '41.00', '56.00', '37.00', '85.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1545', '1', '160.00', '64.00', '91.50', '83.50', '41.00', '56.00', '37.00', '85.50', '94.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1546', '1', '160.00', '65.00', '92.00', '84.00', '41.00', '56.00', '37.00', '86.00', '95.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1547', '1', '160.00', '66.00', '92.50', '84.50', '41.00', '56.00', '37.00', '86.50', '95.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1548', '1', '160.00', '67.00', '93.00', '85.00', '41.00', '56.00', '37.00', '87.00', '96.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1549', '1', '160.00', '68.00', '93.50', '85.50', '41.00', '56.00', '37.00', '87.50', '96.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1550', '1', '160.00', '69.00', '93.00', '89.00', '42.00', '56.00', '37.00', '91.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1551', '1', '160.00', '70.00', '93.50', '89.50', '42.00', '56.00', '37.00', '91.50', '96.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1552', '1', '160.00', '71.00', '94.00', '90.00', '42.00', '56.00', '37.00', '92.00', '97.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1553', '1', '160.00', '72.00', '94.50', '90.50', '42.00', '56.00', '37.00', '92.50', '97.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1554', '1', '160.00', '73.00', '95.00', '91.00', '42.00', '56.00', '37.00', '93.00', '98.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1555', '1', '160.00', '74.00', '95.50', '91.50', '42.00', '56.00', '37.00', '93.50', '98.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1556', '1', '160.00', '75.00', '94.50', '94.50', '43.00', '56.00', '38.00', '96.50', '102.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1557', '1', '160.00', '76.00', '95.00', '95.00', '43.00', '56.00', '38.00', '97.00', '103.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1558', '1', '160.00', '77.00', '95.50', '95.50', '43.00', '56.00', '38.00', '97.50', '103.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1559', '1', '160.00', '78.00', '96.00', '96.00', '43.00', '56.00', '38.00', '98.00', '104.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1560', '1', '160.00', '79.00', '96.50', '96.50', '43.00', '56.00', '38.00', '98.50', '104.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1561', '1', '160.00', '80.00', '97.00', '97.00', '43.00', '56.00', '38.00', '99.00', '105.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1562', '1', '160.00', '81.00', '97.50', '97.50', '43.00', '56.00', '38.00', '99.50', '105.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1563', '1', '160.00', '82.00', '98.00', '98.00', '43.00', '56.00', '38.00', '100.00', '106.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1564', '1', '160.00', '83.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1565', '1', '160.00', '84.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1566', '1', '160.00', '85.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1567', '1', '160.00', '86.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '60.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1568', '1', '160.00', '87.00', '101.00', '101.00', '43.00', '56.00', '38.00', '103.00', '109.00', '60.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1569', '1', '161.00', '43.00', '85.40', '69.40', '40.00', '56.00', '35.00', '71.40', '88.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1570', '1', '161.00', '44.00', '85.90', '69.90', '40.00', '56.00', '35.00', '71.90', '88.50', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1571', '1', '161.00', '45.00', '86.40', '70.40', '40.00', '56.00', '35.00', '72.40', '89.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1572', '1', '161.00', '46.00', '86.90', '70.90', '40.00', '56.00', '35.00', '72.90', '89.50', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1573', '1', '161.00', '47.00', '87.40', '71.40', '40.00', '56.00', '35.00', '73.40', '90.00', '51.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1574', '1', '161.00', '48.00', '85.40', '71.40', '40.00', '56.00', '36.00', '73.40', '89.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1575', '1', '161.00', '49.00', '85.90', '71.90', '40.00', '56.00', '36.00', '73.90', '89.50', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1576', '1', '161.00', '50.00', '86.40', '72.40', '40.00', '56.00', '36.00', '74.40', '90.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1577', '1', '161.00', '51.00', '86.90', '72.90', '40.00', '56.00', '36.00', '74.90', '90.50', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1578', '1', '161.00', '52.00', '87.40', '73.40', '40.00', '56.00', '36.00', '75.40', '91.00', '52.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1579', '1', '161.00', '53.00', '87.40', '75.40', '41.00', '56.00', '36.00', '77.40', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1580', '1', '161.00', '54.00', '87.90', '75.90', '41.00', '56.00', '36.00', '77.90', '90.50', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1581', '1', '161.00', '55.00', '88.40', '76.40', '41.00', '56.00', '36.00', '78.40', '91.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1582', '1', '161.00', '56.00', '88.90', '76.90', '41.00', '56.00', '36.00', '78.90', '91.50', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1583', '1', '161.00', '57.00', '89.40', '77.40', '41.00', '56.00', '36.00', '79.40', '92.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1584', '1', '161.00', '58.00', '89.40', '79.40', '41.00', '56.00', '36.00', '81.40', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1585', '1', '161.00', '59.00', '89.90', '79.90', '41.00', '56.00', '36.00', '81.90', '92.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1586', '1', '161.00', '60.00', '90.40', '80.40', '41.00', '56.00', '36.00', '82.40', '93.00', '53.60', '98.00');
INSERT INTO `standard_inch` VALUES ('1587', '1', '161.00', '61.00', '90.90', '80.90', '41.00', '56.00', '36.00', '82.90', '93.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1588', '1', '161.00', '62.00', '91.40', '81.40', '41.00', '56.00', '36.00', '83.40', '94.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1589', '1', '161.00', '63.00', '91.90', '81.90', '41.00', '56.00', '36.00', '83.90', '94.50', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1590', '1', '161.00', '64.00', '91.40', '83.40', '41.00', '56.00', '37.00', '85.40', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1591', '1', '161.00', '65.00', '91.90', '83.90', '41.00', '56.00', '37.00', '85.90', '94.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1592', '1', '161.00', '66.00', '92.40', '84.40', '41.00', '56.00', '37.00', '86.40', '95.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1593', '1', '161.00', '67.00', '92.90', '84.90', '41.00', '56.00', '37.00', '86.90', '95.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1594', '1', '161.00', '68.00', '93.40', '85.40', '41.00', '56.00', '37.00', '87.40', '96.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1595', '1', '161.00', '69.00', '93.90', '85.90', '41.00', '56.00', '37.00', '87.90', '96.50', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1596', '1', '161.00', '70.00', '93.40', '89.40', '42.00', '56.00', '37.00', '91.40', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1597', '1', '161.00', '71.00', '93.90', '89.90', '42.00', '56.00', '37.00', '91.90', '96.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1598', '1', '161.00', '72.00', '94.40', '90.40', '42.00', '56.00', '37.00', '92.40', '97.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1599', '1', '161.00', '73.00', '94.90', '90.90', '42.00', '56.00', '37.00', '92.90', '97.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1600', '1', '161.00', '74.00', '95.40', '91.40', '42.00', '56.00', '37.00', '93.40', '98.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1601', '1', '161.00', '75.00', '95.90', '91.90', '42.00', '56.00', '37.00', '93.90', '98.50', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1602', '1', '161.00', '76.00', '94.90', '94.90', '43.00', '56.00', '38.00', '96.90', '102.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1603', '1', '161.00', '77.00', '95.40', '95.40', '43.00', '56.00', '38.00', '97.40', '103.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1604', '1', '161.00', '78.00', '95.90', '95.90', '43.00', '56.00', '38.00', '97.90', '103.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1605', '1', '161.00', '79.00', '96.40', '96.40', '43.00', '56.00', '38.00', '98.40', '104.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1606', '1', '161.00', '80.00', '96.90', '96.90', '43.00', '56.00', '38.00', '98.90', '104.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1607', '1', '161.00', '81.00', '97.40', '97.40', '43.00', '56.00', '38.00', '99.40', '105.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1608', '1', '161.00', '82.00', '97.90', '97.90', '43.00', '56.00', '38.00', '99.90', '105.50', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1609', '1', '161.00', '83.00', '98.40', '98.40', '43.00', '56.00', '38.00', '100.40', '106.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1610', '1', '161.00', '84.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1611', '1', '161.00', '85.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1612', '1', '161.00', '86.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1613', '1', '161.00', '87.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '60.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1614', '1', '161.00', '88.00', '101.00', '101.00', '43.00', '56.00', '38.00', '103.00', '109.00', '60.00', '98.00');
INSERT INTO `standard_inch` VALUES ('1615', '1', '162.00', '44.00', '85.80', '69.80', '41.00', '56.60', '35.00', '71.80', '89.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1616', '1', '162.00', '45.00', '86.30', '70.30', '41.00', '56.60', '35.00', '72.30', '89.50', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1617', '1', '162.00', '46.00', '86.80', '70.80', '41.00', '56.60', '35.00', '72.80', '90.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1618', '1', '162.00', '47.00', '87.30', '71.30', '41.00', '56.60', '35.00', '73.30', '90.50', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1619', '1', '162.00', '48.00', '87.80', '71.80', '41.00', '56.60', '35.00', '73.80', '91.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1620', '1', '162.00', '49.00', '85.80', '71.80', '41.00', '56.60', '36.00', '73.80', '90.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1621', '1', '162.00', '50.00', '86.30', '72.30', '41.00', '56.60', '36.00', '74.30', '90.50', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1622', '1', '162.00', '51.00', '86.80', '72.80', '41.00', '56.60', '36.00', '74.80', '91.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1623', '1', '162.00', '52.00', '87.30', '73.30', '41.00', '56.60', '36.00', '75.30', '91.50', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1624', '1', '162.00', '53.00', '87.80', '73.80', '41.00', '56.60', '36.00', '75.80', '92.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1625', '1', '162.00', '54.00', '87.80', '75.80', '42.00', '56.60', '36.00', '77.80', '91.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1626', '1', '162.00', '55.00', '88.30', '76.30', '42.00', '56.60', '36.00', '78.30', '91.50', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1627', '1', '162.00', '56.00', '88.80', '76.80', '42.00', '56.60', '36.00', '78.80', '92.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1628', '1', '162.00', '57.00', '89.30', '77.30', '42.00', '56.60', '36.00', '79.30', '92.50', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1629', '1', '162.00', '58.00', '89.80', '77.80', '42.00', '56.60', '36.00', '79.80', '93.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1630', '1', '162.00', '59.00', '89.80', '79.80', '42.00', '56.60', '36.00', '81.80', '93.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1631', '1', '162.00', '60.00', '90.30', '80.30', '42.00', '56.60', '36.00', '82.30', '93.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1632', '1', '162.00', '61.00', '90.80', '80.80', '42.00', '56.60', '36.00', '82.80', '94.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1633', '1', '162.00', '62.00', '91.30', '81.30', '42.00', '56.60', '36.00', '83.30', '94.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1634', '1', '162.00', '63.00', '91.80', '81.80', '42.00', '56.60', '36.00', '83.80', '95.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1635', '1', '162.00', '64.00', '92.30', '82.30', '42.00', '56.60', '36.00', '84.30', '95.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1636', '1', '162.00', '65.00', '91.80', '83.80', '42.00', '56.60', '37.00', '85.80', '95.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1637', '1', '162.00', '66.00', '92.30', '84.30', '42.00', '56.60', '37.00', '86.30', '95.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1638', '1', '162.00', '67.00', '92.80', '84.80', '42.00', '56.60', '37.00', '86.80', '96.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1639', '1', '162.00', '68.00', '93.30', '85.30', '42.00', '56.60', '37.00', '87.30', '96.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1640', '1', '162.00', '69.00', '93.80', '85.80', '42.00', '56.60', '37.00', '87.80', '97.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1641', '1', '162.00', '70.00', '94.30', '86.30', '42.00', '56.60', '37.00', '88.30', '97.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1642', '1', '162.00', '71.00', '93.80', '89.80', '43.00', '56.60', '37.00', '91.80', '97.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1643', '1', '162.00', '72.00', '94.30', '90.30', '43.00', '56.60', '37.00', '92.30', '97.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1644', '1', '162.00', '73.00', '94.80', '90.80', '43.00', '56.60', '37.00', '92.80', '98.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1645', '1', '162.00', '74.00', '95.30', '91.30', '43.00', '56.60', '37.00', '93.30', '98.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1646', '1', '162.00', '75.00', '95.80', '91.80', '43.00', '56.60', '37.00', '93.80', '99.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1647', '1', '162.00', '76.00', '96.30', '92.30', '43.00', '56.60', '37.00', '94.30', '99.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1648', '1', '162.00', '77.00', '95.30', '95.30', '44.00', '56.60', '38.00', '97.30', '103.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1649', '1', '162.00', '78.00', '95.80', '95.80', '44.00', '56.60', '38.00', '97.80', '104.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1650', '1', '162.00', '79.00', '96.30', '96.30', '44.00', '56.60', '38.00', '98.30', '104.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1651', '1', '162.00', '80.00', '96.80', '96.80', '44.00', '56.60', '38.00', '98.80', '105.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1652', '1', '162.00', '81.00', '97.30', '97.30', '44.00', '56.60', '38.00', '99.30', '105.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1653', '1', '162.00', '82.00', '97.80', '97.80', '44.00', '56.60', '38.00', '99.80', '106.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1654', '1', '162.00', '83.00', '98.30', '98.30', '44.00', '56.60', '38.00', '100.30', '106.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1655', '1', '162.00', '84.00', '98.80', '98.80', '44.00', '56.60', '38.00', '100.80', '107.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1656', '1', '162.00', '85.00', '99.00', '99.00', '44.00', '57.00', '38.00', '101.00', '108.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1657', '1', '162.00', '86.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '108.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1658', '1', '162.00', '87.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '109.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1659', '1', '162.00', '89.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '110.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1660', '1', '162.00', '101.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '109.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1661', '1', '163.00', '45.00', '85.80', '69.80', '41.00', '56.60', '35.00', '71.80', '89.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1662', '1', '163.00', '46.00', '86.30', '70.30', '41.00', '56.60', '35.00', '72.30', '89.50', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1663', '1', '163.00', '47.00', '86.80', '70.80', '41.00', '56.60', '35.00', '72.80', '90.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1664', '1', '163.00', '48.00', '87.30', '71.30', '41.00', '56.60', '35.00', '73.30', '90.50', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1665', '1', '163.00', '49.00', '87.80', '71.80', '41.00', '56.60', '35.00', '73.80', '91.00', '52.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1666', '1', '163.00', '50.00', '85.80', '71.80', '41.00', '56.60', '36.00', '73.80', '90.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1667', '1', '163.00', '51.00', '86.30', '72.30', '41.00', '56.60', '36.00', '74.30', '90.50', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1668', '1', '163.00', '52.00', '86.80', '72.80', '41.00', '56.60', '36.00', '74.80', '91.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1669', '1', '163.00', '53.00', '87.30', '73.30', '41.00', '56.60', '36.00', '75.30', '91.50', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1670', '1', '163.00', '54.00', '87.80', '73.80', '41.00', '56.60', '36.00', '75.80', '92.00', '53.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1671', '1', '163.00', '55.00', '87.80', '75.80', '42.00', '56.60', '36.00', '77.80', '91.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1672', '1', '163.00', '56.00', '88.30', '76.30', '42.00', '56.60', '36.00', '78.30', '91.50', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1673', '1', '163.00', '57.00', '88.80', '76.80', '42.00', '56.60', '36.00', '78.80', '92.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1674', '1', '163.00', '58.00', '89.30', '77.30', '42.00', '56.60', '36.00', '79.30', '92.50', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1675', '1', '163.00', '59.00', '89.80', '77.80', '42.00', '56.60', '36.00', '79.80', '93.00', '54.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1676', '1', '163.00', '60.00', '89.80', '79.80', '42.00', '56.60', '36.00', '81.80', '93.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1677', '1', '163.00', '61.00', '90.30', '80.30', '42.00', '56.60', '36.00', '82.30', '93.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1678', '1', '163.00', '62.00', '90.80', '80.80', '42.00', '56.60', '36.00', '82.80', '94.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1679', '1', '163.00', '63.00', '91.30', '81.30', '42.00', '56.60', '36.00', '83.30', '94.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1680', '1', '163.00', '64.00', '91.80', '81.80', '42.00', '56.60', '36.00', '83.80', '95.00', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1681', '1', '163.00', '65.00', '92.30', '82.30', '42.00', '56.60', '36.00', '84.30', '95.50', '55.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1682', '1', '163.00', '66.00', '91.80', '83.80', '42.00', '56.60', '37.00', '85.80', '95.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1683', '1', '163.00', '67.00', '92.30', '84.30', '42.00', '56.60', '37.00', '86.30', '95.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1684', '1', '163.00', '68.00', '92.80', '84.80', '42.00', '56.60', '37.00', '86.80', '96.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1685', '1', '163.00', '69.00', '93.30', '85.30', '42.00', '56.60', '37.00', '87.30', '96.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1686', '1', '163.00', '70.00', '93.80', '85.80', '42.00', '56.60', '37.00', '87.80', '97.00', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1687', '1', '163.00', '71.00', '94.30', '86.30', '42.00', '56.60', '37.00', '88.30', '97.50', '56.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1688', '1', '163.00', '72.00', '93.80', '89.80', '43.00', '56.60', '37.00', '91.80', '97.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1689', '1', '163.00', '73.00', '94.30', '90.30', '43.00', '56.60', '37.00', '92.30', '97.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1690', '1', '163.00', '74.00', '94.80', '90.80', '43.00', '56.60', '37.00', '92.80', '98.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1691', '1', '163.00', '75.00', '95.30', '91.30', '43.00', '56.60', '37.00', '93.30', '98.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1692', '1', '163.00', '76.00', '95.80', '91.80', '43.00', '56.60', '37.00', '93.80', '99.00', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1693', '1', '163.00', '77.00', '96.30', '92.30', '43.00', '56.60', '37.00', '94.30', '99.50', '57.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1694', '1', '163.00', '78.00', '95.30', '95.30', '44.00', '56.60', '38.00', '97.30', '103.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1695', '1', '163.00', '79.00', '95.80', '95.80', '44.00', '56.60', '38.00', '97.80', '104.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1696', '1', '163.00', '80.00', '96.30', '96.30', '44.00', '56.60', '38.00', '98.30', '104.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1697', '1', '163.00', '81.00', '96.80', '96.80', '44.00', '56.60', '38.00', '98.80', '105.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1698', '1', '163.00', '82.00', '97.30', '97.30', '44.00', '56.60', '38.00', '99.30', '105.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1699', '1', '163.00', '83.00', '97.80', '97.80', '44.00', '56.60', '38.00', '99.80', '106.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1700', '1', '163.00', '84.00', '98.30', '98.30', '44.00', '56.60', '38.00', '100.30', '106.50', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1701', '1', '163.00', '85.00', '98.80', '98.80', '44.00', '56.60', '38.00', '100.80', '107.00', '58.00', '98.60');
INSERT INTO `standard_inch` VALUES ('1702', '1', '163.00', '86.00', '99.00', '99.00', '44.00', '57.00', '38.00', '101.00', '108.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1703', '1', '163.00', '87.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '108.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1704', '1', '163.00', '88.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '109.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1705', '1', '163.00', '89.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '109.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1706', '1', '163.00', '90.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '110.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1707', '1', '164.00', '46.00', '86.60', '70.60', '41.00', '57.20', '36.00', '72.60', '90.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1708', '1', '164.00', '47.00', '87.10', '71.10', '41.00', '57.20', '36.00', '73.10', '90.50', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1709', '1', '164.00', '48.00', '87.60', '71.60', '41.00', '57.20', '36.00', '73.60', '91.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1710', '1', '164.00', '49.00', '88.10', '72.10', '41.00', '57.20', '36.00', '74.10', '91.50', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1711', '1', '164.00', '50.00', '88.60', '72.60', '41.00', '57.20', '36.00', '74.60', '92.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1712', '1', '164.00', '51.00', '88.60', '72.60', '41.00', '57.20', '37.00', '74.60', '91.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1713', '1', '164.00', '52.00', '89.10', '73.10', '41.00', '57.20', '37.00', '75.10', '91.50', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1714', '1', '164.00', '53.00', '89.60', '73.60', '41.00', '57.20', '37.00', '75.60', '92.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1715', '1', '164.00', '54.00', '90.10', '74.10', '41.00', '57.20', '37.00', '76.10', '92.50', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1716', '1', '164.00', '55.00', '90.60', '74.60', '41.00', '57.20', '37.00', '76.60', '93.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1717', '1', '164.00', '56.00', '90.60', '76.60', '42.00', '57.20', '37.00', '78.60', '92.00', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1718', '1', '164.00', '57.00', '91.10', '77.10', '42.00', '57.20', '37.00', '79.10', '92.50', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1719', '1', '164.00', '58.00', '91.60', '77.60', '42.00', '57.20', '37.00', '79.60', '93.00', '54.10', '99.20');
INSERT INTO `standard_inch` VALUES ('1720', '1', '164.00', '59.00', '92.10', '78.10', '42.00', '57.20', '37.00', '80.10', '93.50', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1721', '1', '164.00', '60.00', '92.60', '78.60', '42.00', '57.20', '37.00', '80.60', '94.00', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1722', '1', '164.00', '61.00', '92.60', '80.60', '42.00', '57.20', '37.00', '82.60', '95.00', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1723', '1', '164.00', '62.00', '93.10', '81.10', '42.00', '57.20', '37.00', '83.10', '95.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1724', '1', '164.00', '63.00', '93.60', '81.60', '42.00', '57.20', '37.00', '83.60', '96.00', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1725', '1', '164.00', '64.00', '94.10', '82.10', '42.00', '57.20', '37.00', '84.10', '96.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1726', '1', '164.00', '65.00', '94.60', '82.60', '42.00', '57.20', '37.00', '84.60', '97.00', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1727', '1', '164.00', '66.00', '95.10', '83.10', '42.00', '57.20', '37.00', '85.10', '97.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1728', '1', '164.00', '67.00', '94.60', '86.60', '42.00', '57.20', '38.00', '88.60', '97.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1729', '1', '164.00', '68.00', '95.10', '87.10', '42.00', '57.20', '38.00', '89.10', '97.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1730', '1', '164.00', '69.00', '95.60', '87.60', '42.00', '57.20', '37.80', '89.60', '98.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1731', '1', '164.00', '70.00', '96.10', '88.10', '42.00', '57.20', '37.80', '90.10', '98.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1732', '1', '164.00', '71.00', '96.60', '88.60', '42.00', '57.20', '37.80', '90.60', '99.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1733', '1', '164.00', '72.00', '97.10', '89.10', '42.00', '57.20', '37.80', '91.10', '99.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1734', '1', '164.00', '73.00', '96.60', '92.60', '43.00', '57.20', '37.80', '94.60', '100.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1735', '1', '164.00', '74.00', '97.10', '93.10', '43.00', '57.20', '37.80', '95.10', '100.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1736', '1', '164.00', '75.00', '97.60', '93.60', '43.00', '57.20', '37.80', '95.60', '101.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1737', '1', '164.00', '76.00', '98.10', '94.10', '43.00', '57.20', '37.80', '96.10', '101.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1738', '1', '164.00', '77.00', '98.60', '94.60', '43.00', '57.20', '37.80', '96.60', '102.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1739', '1', '164.00', '78.00', '99.10', '95.10', '43.00', '57.20', '37.80', '97.10', '102.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1740', '1', '164.00', '79.00', '98.10', '98.10', '44.00', '57.20', '39.00', '100.10', '105.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1741', '1', '164.00', '80.00', '98.60', '98.60', '44.00', '57.20', '39.00', '100.60', '106.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1742', '1', '164.00', '81.00', '99.10', '99.10', '44.00', '57.20', '39.00', '101.10', '106.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1743', '1', '164.00', '82.00', '99.60', '99.60', '44.00', '57.20', '39.00', '101.60', '107.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1744', '1', '164.00', '83.00', '100.10', '100.10', '44.00', '57.20', '39.00', '102.10', '107.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1745', '1', '164.00', '84.00', '100.60', '100.60', '44.00', '57.20', '39.00', '102.60', '108.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1746', '1', '164.00', '85.00', '101.10', '101.10', '44.00', '57.20', '39.00', '103.10', '108.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1747', '1', '164.00', '86.00', '101.60', '101.60', '44.00', '57.20', '39.00', '103.60', '109.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1748', '1', '164.00', '87.00', '102.00', '102.00', '44.00', '57.00', '39.00', '104.00', '110.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1749', '1', '164.00', '88.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '110.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1750', '1', '164.00', '89.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '111.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1751', '1', '164.00', '90.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '111.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1752', '1', '164.00', '91.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '112.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1753', '1', '165.00', '47.00', '86.60', '70.60', '41.00', '57.20', '36.00', '72.60', '90.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1754', '1', '165.00', '48.00', '87.10', '71.10', '41.00', '57.20', '36.00', '73.10', '90.50', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1755', '1', '165.00', '49.00', '87.60', '71.60', '41.00', '57.20', '35.80', '73.60', '91.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1756', '1', '165.00', '50.00', '88.10', '72.10', '41.00', '57.20', '36.00', '74.10', '91.50', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1757', '1', '165.00', '51.00', '88.60', '72.60', '41.00', '57.20', '36.00', '74.60', '92.00', '52.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1758', '1', '165.00', '52.00', '88.60', '72.60', '41.00', '57.20', '37.00', '74.60', '91.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1759', '1', '165.00', '53.00', '89.10', '73.10', '41.00', '57.20', '37.00', '75.10', '91.50', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1760', '1', '165.00', '54.00', '89.60', '73.60', '41.00', '57.20', '37.00', '75.60', '92.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1761', '1', '165.00', '55.00', '90.10', '74.10', '41.00', '57.20', '37.00', '76.10', '92.50', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1762', '1', '165.00', '56.00', '90.60', '74.60', '41.00', '57.20', '37.00', '76.60', '93.00', '53.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1763', '1', '165.00', '57.00', '90.60', '76.60', '42.00', '57.20', '37.00', '78.60', '92.00', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1764', '1', '165.00', '58.00', '91.10', '77.10', '42.00', '57.20', '37.00', '79.10', '92.50', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1765', '1', '165.00', '59.00', '91.60', '77.60', '42.00', '57.20', '37.00', '79.60', '93.00', '54.10', '99.20');
INSERT INTO `standard_inch` VALUES ('1766', '1', '165.00', '60.00', '92.10', '78.10', '42.00', '57.20', '37.00', '80.10', '93.50', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1767', '1', '165.00', '61.00', '92.60', '78.60', '42.00', '57.20', '37.00', '80.60', '94.00', '54.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1768', '1', '165.00', '62.00', '92.60', '80.60', '42.00', '57.20', '37.00', '82.60', '95.00', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1769', '1', '165.00', '63.00', '93.10', '81.10', '42.00', '57.20', '37.00', '83.10', '95.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1770', '1', '165.00', '64.00', '93.60', '81.60', '42.00', '57.20', '37.00', '83.60', '96.00', '54.60', '99.20');
INSERT INTO `standard_inch` VALUES ('1771', '1', '165.00', '65.00', '94.10', '82.10', '42.00', '57.20', '37.00', '84.10', '96.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1772', '1', '165.00', '66.00', '94.60', '82.60', '42.00', '57.20', '37.00', '84.60', '97.00', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1773', '1', '165.00', '67.00', '95.10', '83.10', '42.00', '57.20', '37.00', '85.10', '97.50', '55.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1774', '1', '165.00', '68.00', '94.60', '86.60', '42.00', '57.20', '38.00', '88.60', '97.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1775', '1', '165.00', '69.00', '95.10', '87.10', '42.00', '57.20', '38.00', '89.10', '97.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1776', '1', '165.00', '70.00', '95.60', '87.60', '42.00', '57.20', '38.00', '89.60', '98.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1777', '1', '165.00', '71.00', '96.10', '88.10', '42.00', '57.20', '38.00', '90.10', '98.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1778', '1', '165.00', '72.00', '96.60', '88.60', '42.00', '57.20', '38.00', '90.60', '99.00', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1779', '1', '165.00', '73.00', '97.10', '89.10', '42.00', '57.20', '38.00', '91.10', '99.50', '56.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1780', '1', '165.00', '74.00', '96.60', '92.60', '43.00', '57.20', '38.00', '94.60', '100.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1781', '1', '165.00', '75.00', '97.10', '93.10', '43.00', '57.20', '38.00', '95.10', '100.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1782', '1', '165.00', '76.00', '97.60', '93.60', '43.00', '57.20', '38.00', '95.60', '101.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1783', '1', '165.00', '77.00', '98.10', '94.10', '43.00', '57.20', '38.00', '96.10', '101.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1784', '1', '165.00', '78.00', '98.60', '94.60', '43.00', '57.20', '38.00', '96.60', '102.00', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1785', '1', '165.00', '79.00', '99.10', '95.10', '43.00', '57.20', '38.00', '97.10', '102.50', '57.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1786', '1', '165.00', '80.00', '98.10', '98.10', '44.00', '57.20', '39.00', '100.10', '105.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1787', '1', '165.00', '81.00', '98.60', '98.60', '44.00', '57.20', '39.00', '100.60', '106.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1788', '1', '165.00', '82.00', '99.10', '99.10', '44.00', '57.20', '39.00', '101.10', '106.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1789', '1', '165.00', '83.00', '99.60', '99.60', '44.30', '57.20', '39.00', '101.60', '107.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1790', '1', '165.00', '84.00', '100.10', '100.10', '44.00', '57.20', '39.00', '102.10', '107.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1791', '1', '165.00', '85.00', '100.60', '100.60', '44.00', '57.20', '39.00', '102.60', '108.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1792', '1', '165.00', '86.00', '101.10', '101.10', '44.00', '57.20', '39.00', '103.10', '108.50', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1793', '1', '165.00', '87.00', '101.60', '101.60', '44.00', '57.20', '39.00', '103.60', '109.00', '58.00', '99.20');
INSERT INTO `standard_inch` VALUES ('1794', '1', '165.00', '88.00', '102.00', '102.00', '44.00', '57.00', '39.00', '104.00', '110.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1795', '1', '165.00', '89.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '110.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1796', '1', '165.00', '90.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '111.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1797', '1', '165.00', '91.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '111.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1798', '1', '165.00', '92.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '112.00', '61.00', '99.00');
INSERT INTO `standard_inch` VALUES ('1799', '1', '166.00', '48.00', '87.40', '71.40', '42.00', '57.80', '36.00', '73.40', '90.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1800', '1', '166.00', '49.00', '87.90', '71.90', '42.00', '57.80', '36.00', '73.90', '90.50', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1801', '1', '166.00', '50.00', '88.40', '72.40', '42.00', '57.80', '36.00', '74.40', '91.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1802', '1', '166.00', '51.00', '88.90', '72.90', '42.00', '57.80', '36.00', '74.90', '91.50', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1803', '1', '166.00', '52.00', '89.40', '73.40', '42.00', '57.80', '36.00', '75.40', '92.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1804', '1', '166.00', '53.00', '87.40', '73.40', '42.00', '57.80', '37.00', '75.40', '91.00', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1805', '1', '166.00', '54.00', '87.90', '73.90', '42.00', '57.80', '37.00', '75.90', '91.50', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1806', '1', '166.00', '55.00', '88.40', '74.40', '42.00', '57.80', '37.00', '76.40', '92.00', '54.40', '99.80');
INSERT INTO `standard_inch` VALUES ('1807', '1', '166.00', '56.00', '88.90', '74.90', '42.00', '57.80', '37.00', '76.90', '92.50', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1808', '1', '166.00', '57.00', '89.40', '75.40', '42.00', '57.80', '37.00', '77.40', '93.00', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1809', '1', '166.00', '58.00', '89.40', '77.40', '43.00', '57.80', '37.00', '79.40', '92.00', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1810', '1', '166.00', '59.00', '89.90', '77.90', '43.00', '57.80', '37.00', '79.90', '92.50', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1811', '1', '166.00', '60.00', '90.40', '78.40', '43.00', '57.80', '37.00', '80.40', '93.00', '54.60', '99.80');
INSERT INTO `standard_inch` VALUES ('1812', '1', '166.00', '61.00', '90.90', '78.90', '43.00', '57.80', '37.00', '80.90', '93.50', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1813', '1', '166.00', '62.00', '91.40', '79.40', '43.00', '57.80', '37.00', '81.40', '94.00', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1814', '1', '166.00', '63.00', '91.40', '81.40', '43.00', '57.80', '37.00', '83.40', '95.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1815', '1', '166.00', '64.00', '91.90', '81.90', '43.00', '57.80', '37.00', '83.90', '95.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1816', '1', '166.00', '65.00', '92.40', '82.40', '43.00', '57.80', '37.00', '84.40', '96.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1817', '1', '166.00', '66.00', '92.90', '82.90', '43.00', '57.80', '37.00', '84.90', '96.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1818', '1', '166.00', '67.00', '93.40', '83.40', '43.00', '57.80', '37.00', '85.40', '97.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1819', '1', '166.00', '68.00', '93.90', '83.90', '43.00', '57.80', '37.00', '85.90', '97.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1820', '1', '166.00', '69.00', '93.40', '85.40', '43.00', '57.80', '38.00', '87.40', '97.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1821', '1', '166.00', '70.00', '93.90', '85.90', '43.00', '57.80', '38.00', '87.90', '97.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1822', '1', '166.00', '71.00', '94.40', '86.40', '43.00', '57.80', '38.00', '88.40', '98.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1823', '1', '166.00', '72.00', '94.90', '86.90', '43.00', '57.80', '38.00', '88.90', '98.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1824', '1', '166.00', '73.00', '95.40', '87.40', '43.00', '57.80', '38.00', '89.40', '99.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1825', '1', '166.00', '74.00', '95.90', '87.90', '43.00', '57.80', '38.00', '89.90', '99.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1826', '1', '166.00', '75.00', '95.40', '91.40', '44.00', '57.80', '38.00', '93.40', '100.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1827', '1', '166.00', '76.00', '95.90', '91.90', '44.00', '57.80', '38.00', '93.90', '100.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1828', '1', '166.00', '77.00', '96.40', '92.40', '43.50', '57.80', '38.00', '94.40', '101.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1829', '1', '166.00', '78.00', '96.90', '92.90', '44.00', '57.80', '38.00', '94.90', '101.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1830', '1', '166.00', '79.00', '97.40', '93.40', '44.00', '57.80', '38.00', '95.40', '102.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1831', '1', '166.00', '80.00', '97.90', '93.90', '44.00', '57.80', '38.00', '95.90', '102.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1832', '1', '166.00', '81.00', '96.90', '96.90', '45.00', '57.80', '39.00', '98.90', '105.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1833', '1', '166.00', '82.00', '97.40', '97.40', '45.00', '57.80', '39.00', '99.40', '106.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1834', '1', '166.00', '83.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1835', '1', '166.00', '83.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1836', '1', '166.00', '84.00', '98.40', '98.40', '44.50', '57.80', '39.00', '100.40', '107.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1837', '1', '166.00', '85.00', '98.90', '98.90', '45.00', '57.80', '39.00', '100.90', '107.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1838', '1', '166.00', '86.00', '99.40', '99.40', '45.00', '57.80', '39.00', '101.40', '108.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1839', '1', '166.00', '87.00', '99.90', '99.90', '45.00', '57.80', '39.00', '101.90', '108.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1840', '1', '166.00', '88.00', '100.40', '100.40', '45.00', '57.80', '39.00', '102.40', '109.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1841', '1', '166.00', '89.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '110.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1842', '1', '166.00', '90.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '110.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1843', '1', '166.00', '91.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1844', '1', '166.00', '92.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '111.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1845', '1', '166.00', '93.00', '103.00', '103.00', '45.00', '58.00', '39.00', '105.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1846', '1', '167.00', '49.00', '87.40', '71.40', '42.00', '57.80', '36.00', '73.40', '91.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1847', '1', '167.00', '50.00', '87.90', '71.90', '42.00', '57.80', '36.00', '73.90', '91.50', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1848', '1', '167.00', '51.00', '88.40', '72.40', '42.00', '57.80', '36.00', '74.40', '92.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1849', '1', '167.00', '52.00', '88.90', '72.90', '42.00', '57.80', '36.00', '74.90', '92.50', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1850', '1', '167.00', '53.00', '89.40', '73.40', '42.00', '57.80', '36.00', '75.40', '93.00', '53.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1851', '1', '167.00', '54.00', '87.40', '73.40', '42.00', '57.80', '37.00', '75.40', '92.00', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1852', '1', '167.00', '55.00', '87.90', '73.90', '42.00', '57.80', '37.00', '75.90', '92.50', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1853', '1', '167.00', '56.00', '88.40', '74.40', '42.00', '57.80', '37.00', '76.40', '93.00', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1854', '1', '167.00', '57.00', '88.90', '74.90', '42.00', '57.80', '37.00', '76.90', '93.50', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1855', '1', '167.00', '58.00', '89.40', '75.40', '42.00', '57.80', '37.00', '77.40', '94.00', '54.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1856', '1', '167.00', '59.00', '89.40', '77.40', '43.00', '57.80', '37.00', '79.40', '93.00', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1857', '1', '167.00', '60.00', '89.90', '77.90', '43.00', '57.80', '37.00', '79.90', '93.50', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1858', '1', '167.00', '61.00', '90.40', '78.40', '43.00', '57.80', '37.00', '80.40', '94.00', '54.60', '99.80');
INSERT INTO `standard_inch` VALUES ('1859', '1', '167.00', '62.00', '90.90', '78.90', '43.00', '57.80', '37.00', '80.90', '94.50', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1860', '1', '167.00', '63.00', '91.40', '79.40', '43.00', '57.80', '37.00', '81.40', '95.00', '55.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1861', '1', '167.00', '64.00', '91.40', '81.40', '43.00', '57.80', '37.00', '83.40', '96.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1862', '1', '167.00', '65.00', '91.90', '81.90', '43.00', '57.80', '37.00', '83.90', '96.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1863', '1', '167.00', '66.00', '92.40', '82.40', '43.00', '57.80', '37.00', '84.40', '97.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1864', '1', '167.00', '67.00', '92.90', '82.90', '43.00', '57.80', '37.00', '84.90', '97.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1865', '1', '167.00', '68.00', '93.40', '83.40', '43.00', '57.80', '37.00', '85.40', '98.00', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1866', '1', '167.00', '69.00', '93.90', '83.90', '43.00', '57.80', '37.00', '85.90', '98.50', '56.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1867', '1', '167.00', '70.00', '93.40', '85.40', '43.00', '57.80', '38.00', '87.40', '98.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1868', '1', '167.00', '71.00', '93.90', '85.90', '43.00', '57.80', '38.00', '87.90', '98.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1869', '1', '167.00', '72.00', '94.40', '86.40', '43.00', '57.80', '38.00', '88.40', '99.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1870', '1', '167.00', '73.00', '94.90', '86.90', '43.00', '57.80', '38.00', '88.90', '99.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1871', '1', '167.00', '74.00', '95.40', '87.40', '43.00', '57.80', '38.00', '89.40', '100.00', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1872', '1', '167.00', '75.00', '95.90', '87.90', '43.00', '57.80', '38.00', '89.90', '100.50', '57.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1873', '1', '167.00', '76.00', '95.40', '91.40', '44.00', '57.80', '38.00', '93.40', '101.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1874', '1', '167.00', '77.00', '95.90', '91.90', '44.00', '57.80', '38.00', '93.90', '101.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1875', '1', '167.00', '78.00', '96.40', '92.40', '44.00', '57.80', '38.00', '94.40', '102.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1876', '1', '167.00', '79.00', '96.90', '92.90', '44.00', '57.80', '38.00', '94.90', '102.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1877', '1', '167.00', '80.00', '97.40', '93.40', '44.00', '57.80', '38.00', '95.40', '103.00', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1878', '1', '167.00', '81.00', '97.90', '93.90', '44.00', '57.80', '38.00', '95.90', '103.50', '58.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1879', '1', '167.00', '82.00', '96.90', '96.90', '45.00', '57.80', '39.00', '98.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1880', '1', '167.00', '83.00', '97.40', '97.40', '45.00', '57.80', '39.00', '99.40', '107.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1881', '1', '167.00', '84.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '107.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1882', '1', '167.00', '85.00', '98.40', '98.40', '45.00', '57.80', '39.00', '100.40', '108.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1883', '1', '167.00', '86.00', '98.90', '98.90', '45.00', '57.80', '39.00', '100.90', '108.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1884', '1', '167.00', '87.00', '99.40', '99.40', '45.00', '57.80', '39.00', '101.40', '109.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1885', '1', '167.00', '88.00', '99.90', '99.90', '45.00', '57.80', '39.00', '101.90', '109.50', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1886', '1', '167.00', '89.00', '100.40', '100.40', '45.00', '57.80', '39.00', '102.40', '110.00', '59.00', '99.80');
INSERT INTO `standard_inch` VALUES ('1887', '1', '167.00', '90.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '111.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1888', '1', '167.00', '91.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1889', '1', '167.00', '92.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1890', '1', '167.00', '93.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1891', '1', '167.00', '94.00', '103.00', '103.00', '45.00', '58.00', '39.00', '105.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1892', '1', '168.00', '50.00', '88.20', '72.20', '42.00', '58.40', '37.00', '76.20', '91.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1893', '1', '168.00', '51.00', '88.70', '72.70', '42.00', '58.40', '37.00', '75.70', '91.50', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1894', '1', '168.00', '52.00', '89.20', '73.20', '42.00', '58.40', '37.00', '75.20', '92.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1895', '1', '168.00', '53.00', '89.70', '73.70', '42.00', '58.40', '37.00', '74.70', '92.50', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1896', '1', '168.00', '54.00', '90.20', '74.20', '42.00', '58.40', '37.00', '74.20', '93.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1897', '1', '168.00', '55.00', '88.20', '74.20', '42.00', '58.40', '38.00', '76.20', '92.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1898', '1', '168.00', '56.00', '88.70', '74.70', '42.00', '58.40', '38.00', '76.70', '92.50', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1899', '1', '168.00', '57.00', '89.20', '75.20', '42.00', '58.40', '38.00', '77.20', '93.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1900', '1', '168.00', '58.00', '89.70', '75.70', '42.00', '58.40', '38.00', '77.70', '93.50', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1901', '1', '168.00', '59.00', '90.20', '76.20', '42.00', '58.40', '38.00', '78.20', '94.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1902', '1', '168.00', '60.00', '90.20', '78.20', '43.00', '58.40', '38.00', '80.20', '93.00', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1903', '1', '168.00', '61.00', '90.70', '78.70', '43.00', '58.40', '38.00', '80.70', '93.50', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1904', '1', '168.00', '62.00', '91.20', '79.20', '43.00', '58.40', '38.00', '81.20', '94.00', '55.10', '100.40');
INSERT INTO `standard_inch` VALUES ('1905', '1', '168.00', '63.00', '91.70', '79.70', '43.00', '58.40', '38.00', '81.70', '94.50', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1906', '1', '168.00', '64.00', '92.20', '80.20', '43.00', '58.40', '38.00', '82.20', '95.00', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1907', '1', '168.00', '65.00', '92.20', '82.20', '43.00', '58.40', '38.00', '84.20', '96.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1908', '1', '168.00', '66.00', '92.70', '82.70', '43.00', '58.40', '38.00', '84.70', '96.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1909', '1', '168.00', '67.00', '93.20', '83.20', '43.00', '58.40', '38.00', '85.20', '97.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1910', '1', '168.00', '68.00', '93.70', '83.70', '43.00', '58.40', '38.00', '85.70', '97.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1911', '1', '168.00', '69.00', '94.20', '84.20', '43.00', '58.40', '38.00', '86.20', '98.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1912', '1', '168.00', '70.00', '94.70', '84.70', '43.00', '58.40', '38.00', '86.70', '98.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1913', '1', '168.00', '71.00', '94.20', '86.20', '43.00', '58.40', '39.00', '88.20', '98.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1914', '1', '168.00', '72.00', '94.70', '86.70', '43.00', '58.40', '39.00', '88.70', '98.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1915', '1', '168.00', '73.00', '95.20', '87.20', '43.00', '58.40', '39.00', '89.20', '99.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1916', '1', '168.00', '74.00', '95.70', '87.70', '43.00', '58.40', '39.00', '89.70', '99.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1917', '1', '168.00', '75.00', '96.20', '88.20', '43.00', '58.40', '39.00', '90.20', '100.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1918', '1', '168.00', '76.00', '96.70', '88.70', '43.00', '58.40', '39.00', '90.70', '100.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1919', '1', '168.00', '77.00', '96.20', '92.20', '44.00', '58.40', '39.00', '94.20', '101.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1920', '1', '168.00', '78.00', '96.70', '92.70', '44.00', '58.40', '39.00', '94.70', '101.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1921', '1', '168.00', '79.00', '97.20', '93.20', '44.00', '58.40', '39.00', '95.20', '102.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1922', '1', '168.00', '80.00', '97.70', '93.70', '44.00', '58.40', '39.00', '95.70', '102.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1923', '1', '168.00', '81.00', '98.20', '94.20', '44.00', '58.40', '39.00', '96.20', '103.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1924', '1', '168.00', '82.00', '98.70', '94.70', '44.00', '58.40', '39.00', '96.70', '103.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1925', '1', '168.00', '83.00', '97.70', '97.70', '45.00', '58.40', '40.00', '99.70', '106.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1926', '1', '168.00', '84.00', '98.20', '98.20', '45.00', '58.40', '40.00', '100.20', '107.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1927', '1', '168.00', '85.00', '98.70', '98.70', '45.00', '58.40', '40.00', '100.70', '107.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1928', '1', '168.00', '86.00', '99.20', '99.20', '45.00', '58.40', '40.00', '101.20', '108.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1929', '1', '168.00', '87.00', '99.70', '99.70', '45.00', '58.40', '40.00', '101.70', '108.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1930', '1', '168.00', '88.00', '100.20', '100.20', '45.00', '58.40', '40.00', '102.20', '109.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1931', '1', '168.00', '89.00', '100.70', '100.70', '45.00', '58.40', '40.00', '102.70', '109.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1932', '1', '168.00', '90.00', '101.20', '101.20', '45.00', '58.40', '40.00', '103.20', '110.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1933', '1', '168.00', '91.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '111.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1934', '1', '168.00', '92.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1935', '1', '168.00', '93.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1936', '1', '168.00', '94.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1937', '1', '168.00', '95.00', '104.00', '104.00', '45.00', '58.00', '40.00', '106.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1938', '1', '169.00', '51.00', '88.20', '72.20', '42.00', '58.40', '37.00', '74.20', '92.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1939', '1', '169.00', '52.00', '88.70', '72.70', '42.00', '58.40', '37.00', '74.70', '92.50', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1940', '1', '169.00', '53.00', '89.20', '73.20', '42.00', '58.40', '37.00', '75.20', '93.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1941', '1', '169.00', '54.00', '89.70', '73.70', '42.00', '58.40', '37.00', '75.70', '93.50', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1942', '1', '169.00', '55.00', '90.20', '74.20', '42.00', '58.40', '37.00', '76.20', '94.00', '53.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1943', '1', '169.00', '56.00', '88.20', '74.20', '42.00', '58.40', '38.00', '76.20', '93.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1944', '1', '169.00', '57.00', '88.70', '74.70', '42.00', '58.40', '38.00', '76.70', '93.50', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1945', '1', '169.00', '58.00', '89.20', '75.20', '42.00', '58.40', '38.00', '77.20', '94.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1946', '1', '169.00', '59.00', '89.70', '75.70', '42.00', '58.40', '38.00', '77.70', '94.50', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1947', '1', '169.00', '60.00', '90.20', '76.20', '42.00', '58.40', '38.00', '78.20', '95.00', '54.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1948', '1', '169.00', '61.00', '90.20', '78.20', '43.00', '58.40', '38.00', '80.20', '94.00', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1949', '1', '169.00', '62.00', '90.70', '78.70', '43.00', '58.40', '38.00', '80.70', '94.50', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1950', '1', '169.00', '63.00', '91.20', '79.20', '43.00', '58.40', '38.00', '81.20', '95.00', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1951', '1', '169.00', '64.00', '91.70', '79.70', '43.00', '58.40', '38.00', '81.70', '95.50', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1952', '1', '169.00', '65.00', '92.20', '80.20', '43.00', '58.40', '38.00', '82.20', '96.00', '55.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1953', '1', '169.00', '66.00', '92.20', '82.20', '43.00', '58.40', '38.00', '84.20', '98.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1954', '1', '169.00', '67.00', '92.70', '82.70', '43.00', '58.40', '38.00', '84.70', '98.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1955', '1', '169.00', '68.00', '93.20', '83.20', '43.00', '58.40', '38.00', '85.20', '99.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1956', '1', '169.00', '69.00', '93.70', '83.70', '43.00', '58.40', '38.00', '85.70', '99.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1957', '1', '169.00', '70.00', '94.20', '84.20', '43.00', '58.40', '38.00', '86.20', '100.00', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1958', '1', '169.00', '71.00', '94.70', '84.70', '43.00', '58.40', '38.00', '86.70', '100.50', '56.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1959', '1', '169.00', '72.00', '94.20', '86.20', '43.00', '58.40', '39.00', '88.20', '99.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1960', '1', '169.00', '73.00', '94.70', '86.70', '43.00', '58.40', '39.00', '88.70', '99.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1961', '1', '169.00', '74.00', '95.20', '87.20', '43.00', '58.40', '39.00', '89.20', '100.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1962', '1', '169.00', '75.00', '95.70', '87.70', '43.00', '58.40', '39.00', '89.70', '100.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1963', '1', '169.00', '76.00', '96.20', '88.20', '43.00', '58.40', '39.00', '90.20', '101.00', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1964', '1', '169.00', '77.00', '96.70', '88.70', '43.00', '58.40', '39.00', '90.70', '101.50', '57.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1965', '1', '169.00', '78.00', '96.20', '92.20', '44.00', '58.40', '39.00', '94.20', '101.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1966', '1', '169.00', '79.00', '96.70', '92.70', '44.00', '58.40', '39.00', '94.70', '101.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1967', '1', '169.00', '80.00', '97.20', '93.20', '44.00', '58.40', '39.00', '95.20', '102.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1968', '1', '169.00', '81.00', '97.70', '93.70', '44.00', '58.40', '39.00', '95.70', '102.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1969', '1', '169.00', '82.00', '98.20', '94.20', '44.00', '58.40', '39.00', '96.20', '103.00', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1970', '1', '169.00', '83.00', '98.70', '94.70', '44.00', '58.40', '39.00', '96.70', '103.50', '58.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1971', '1', '169.00', '84.00', '97.70', '97.70', '45.00', '58.40', '40.00', '99.70', '107.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1972', '1', '169.00', '85.00', '98.20', '98.20', '45.00', '58.40', '40.00', '100.20', '108.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1973', '1', '169.00', '86.00', '98.70', '98.70', '45.00', '58.40', '40.00', '100.70', '108.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1974', '1', '169.00', '87.00', '99.20', '99.20', '45.00', '58.40', '40.00', '101.20', '109.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1975', '1', '169.00', '88.00', '99.70', '99.70', '45.00', '58.40', '40.00', '101.70', '109.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1976', '1', '169.00', '89.00', '100.20', '100.20', '45.00', '58.40', '40.00', '102.20', '110.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1977', '1', '169.00', '90.00', '100.70', '100.70', '45.00', '58.40', '40.00', '102.70', '110.50', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1978', '1', '169.00', '91.00', '101.20', '101.20', '45.00', '58.40', '40.00', '103.20', '111.00', '59.00', '100.40');
INSERT INTO `standard_inch` VALUES ('1979', '1', '169.00', '92.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '112.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1980', '1', '169.00', '93.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1981', '1', '169.00', '94.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '113.00', '61.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1982', '1', '169.00', '95.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1983', '1', '169.00', '96.00', '104.00', '104.00', '45.00', '58.00', '40.00', '106.00', '114.00', '62.00', '100.00');
INSERT INTO `standard_inch` VALUES ('1984', '1', '170.00', '52.00', '89.00', '73.00', '43.00', '59.00', '37.00', '75.00', '92.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1985', '1', '170.00', '53.00', '89.50', '73.50', '43.00', '59.00', '37.00', '75.50', '92.50', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1986', '1', '170.00', '54.00', '90.00', '74.00', '43.00', '59.00', '37.00', '76.00', '93.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1987', '1', '170.00', '55.00', '90.50', '74.50', '43.00', '59.00', '37.00', '76.50', '93.50', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1988', '1', '170.00', '56.00', '91.00', '75.00', '43.00', '59.00', '37.00', '77.00', '94.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1989', '1', '170.00', '57.00', '89.00', '75.00', '43.00', '59.00', '38.00', '77.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1990', '1', '170.00', '58.00', '89.50', '75.50', '43.00', '59.00', '38.00', '77.50', '93.50', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1991', '1', '170.00', '59.00', '90.00', '76.00', '43.00', '59.00', '38.00', '78.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1992', '1', '170.00', '60.00', '90.50', '76.50', '43.00', '59.00', '38.00', '78.50', '94.50', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1993', '1', '170.00', '61.00', '91.00', '77.00', '43.00', '59.00', '38.00', '79.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1994', '1', '170.00', '62.00', '91.00', '79.00', '44.00', '59.00', '38.00', '81.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1995', '1', '170.00', '63.00', '91.50', '79.50', '44.00', '59.00', '38.00', '81.50', '94.50', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1996', '1', '170.00', '64.00', '92.00', '80.00', '44.00', '59.00', '38.00', '82.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1997', '1', '170.00', '65.00', '92.50', '80.50', '44.00', '59.00', '38.00', '82.50', '95.50', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1998', '1', '170.00', '66.00', '93.00', '81.00', '44.00', '59.00', '38.00', '83.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('1999', '1', '170.00', '67.00', '93.00', '83.00', '44.00', '59.00', '38.00', '85.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2000', '1', '170.00', '68.00', '93.50', '83.50', '44.00', '59.00', '38.00', '85.50', '98.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2001', '1', '170.00', '69.00', '94.00', '84.00', '44.00', '59.00', '38.00', '86.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2002', '1', '170.00', '70.00', '94.50', '84.50', '44.00', '59.00', '38.00', '86.50', '99.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2003', '1', '170.00', '71.00', '95.00', '85.00', '44.00', '59.00', '38.00', '87.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2004', '1', '170.00', '72.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2005', '1', '170.00', '72.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2006', '1', '170.00', '73.00', '95.00', '87.00', '44.00', '59.00', '39.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2007', '1', '170.00', '74.00', '95.50', '87.50', '44.00', '59.00', '39.00', '89.50', '99.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2008', '1', '170.00', '75.00', '96.00', '88.00', '44.00', '59.00', '39.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2009', '1', '170.00', '76.00', '96.50', '88.50', '44.00', '59.00', '39.00', '90.50', '100.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2010', '1', '170.00', '77.00', '97.00', '89.00', '44.00', '59.00', '39.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2011', '1', '170.00', '78.00', '97.50', '89.50', '44.00', '59.00', '39.00', '91.50', '101.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2012', '1', '170.00', '79.00', '97.00', '93.00', '45.00', '59.00', '39.00', '95.00', '101.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2013', '1', '170.00', '80.00', '97.50', '93.50', '45.00', '59.00', '39.00', '95.50', '101.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2014', '1', '170.00', '81.00', '98.00', '94.00', '45.00', '59.00', '39.00', '96.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2015', '1', '170.00', '82.00', '98.50', '94.50', '45.00', '59.00', '39.00', '96.50', '102.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2016', '1', '170.00', '83.00', '99.00', '95.00', '45.00', '59.00', '39.00', '97.00', '103.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2017', '1', '170.00', '84.00', '99.50', '95.50', '45.00', '59.00', '39.00', '97.50', '103.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2018', '1', '170.00', '85.00', '98.50', '98.50', '46.00', '59.00', '40.00', '100.50', '107.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2019', '1', '170.00', '86.00', '99.00', '99.00', '46.00', '59.00', '40.00', '101.00', '108.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2020', '1', '170.00', '87.00', '99.50', '99.50', '46.00', '59.00', '40.00', '101.50', '108.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2021', '1', '170.00', '88.00', '100.00', '100.00', '46.00', '59.00', '40.00', '102.00', '109.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2022', '1', '170.00', '89.00', '100.50', '100.50', '46.00', '59.00', '40.00', '102.50', '109.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2023', '1', '170.00', '90.00', '101.00', '101.00', '46.00', '59.00', '40.00', '103.00', '110.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2024', '1', '170.00', '91.00', '101.50', '101.50', '46.00', '59.00', '40.00', '103.50', '110.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2025', '1', '170.00', '92.00', '102.00', '102.00', '46.00', '59.00', '40.00', '104.00', '111.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2026', '1', '170.00', '93.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2027', '1', '170.00', '94.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '62.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2028', '1', '170.00', '95.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '62.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2029', '1', '170.00', '96.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '63.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2030', '1', '170.00', '97.00', '105.00', '105.00', '46.00', '59.00', '40.00', '107.00', '114.00', '63.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2031', '1', '171.00', '53.00', '89.00', '73.00', '43.00', '59.00', '37.00', '75.00', '92.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2032', '1', '171.00', '54.00', '89.50', '73.50', '43.00', '59.00', '37.00', '75.50', '92.50', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2033', '1', '171.00', '55.00', '90.00', '74.00', '43.00', '59.00', '37.00', '76.00', '93.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2034', '1', '171.00', '56.00', '90.50', '74.50', '43.00', '59.00', '37.00', '76.50', '93.50', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2035', '1', '171.00', '57.00', '91.00', '75.00', '43.00', '59.00', '37.00', '77.00', '94.00', '54.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2036', '1', '171.00', '58.00', '89.00', '75.00', '43.00', '59.00', '38.00', '77.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2037', '1', '171.00', '59.00', '89.50', '75.50', '43.00', '59.00', '38.00', '77.50', '93.50', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2038', '1', '171.00', '60.00', '90.00', '76.00', '43.00', '59.00', '38.00', '78.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2039', '1', '171.00', '61.00', '90.50', '76.50', '43.00', '59.00', '38.00', '78.50', '94.50', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2040', '1', '171.00', '62.00', '91.00', '77.00', '43.00', '59.00', '38.00', '79.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2041', '1', '171.00', '63.00', '91.00', '79.00', '44.00', '59.00', '38.00', '81.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2042', '1', '171.00', '64.00', '91.50', '79.50', '44.00', '59.00', '38.00', '81.50', '94.50', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2043', '1', '171.00', '65.00', '92.00', '80.00', '44.00', '59.00', '38.00', '82.00', '95.00', '55.60', '101.00');
INSERT INTO `standard_inch` VALUES ('2044', '1', '171.00', '66.00', '92.50', '80.50', '44.00', '59.00', '38.00', '82.50', '95.50', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2045', '1', '171.00', '67.00', '93.00', '81.00', '44.00', '59.00', '38.00', '83.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2046', '1', '171.00', '68.00', '93.00', '83.00', '44.00', '59.00', '38.00', '85.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2047', '1', '171.00', '69.00', '93.50', '83.50', '44.00', '59.00', '38.00', '85.50', '98.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2048', '1', '171.00', '70.00', '94.00', '84.00', '44.00', '59.00', '38.00', '86.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2049', '1', '171.00', '71.00', '94.50', '84.50', '44.00', '59.00', '38.00', '86.50', '99.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2050', '1', '171.00', '72.00', '95.00', '85.00', '44.00', '59.00', '38.00', '87.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2051', '1', '171.00', '73.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2052', '1', '171.00', '74.00', '95.00', '87.00', '44.00', '59.00', '39.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2053', '1', '171.00', '75.00', '95.50', '87.50', '44.00', '59.00', '39.00', '89.50', '99.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2054', '1', '171.00', '76.00', '96.00', '88.00', '44.00', '59.00', '39.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2055', '1', '171.00', '77.00', '96.50', '88.50', '44.00', '59.00', '39.00', '90.50', '100.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2056', '1', '171.00', '78.00', '97.00', '89.00', '44.00', '59.00', '39.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2057', '1', '171.00', '79.00', '97.50', '89.50', '44.00', '59.00', '39.00', '91.50', '101.50', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2058', '1', '171.00', '80.00', '97.00', '93.00', '45.00', '59.00', '39.00', '95.00', '101.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2059', '1', '171.00', '81.00', '97.50', '93.50', '45.00', '59.00', '39.00', '95.50', '101.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2060', '1', '171.00', '82.00', '98.00', '94.00', '45.00', '59.00', '39.00', '96.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2061', '1', '171.00', '83.00', '98.50', '94.50', '45.00', '59.00', '39.00', '96.50', '102.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2062', '1', '171.00', '84.00', '99.00', '95.00', '45.00', '59.00', '39.00', '97.00', '103.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2063', '1', '171.00', '85.00', '99.50', '95.50', '45.00', '59.00', '39.00', '97.50', '103.50', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2064', '1', '171.00', '86.00', '98.50', '98.50', '46.00', '59.00', '40.00', '100.50', '107.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2065', '1', '171.00', '87.00', '99.00', '99.00', '46.00', '59.00', '40.00', '101.00', '108.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2066', '1', '171.00', '88.00', '99.50', '99.50', '46.00', '59.00', '40.00', '101.50', '108.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2067', '1', '171.00', '89.00', '100.00', '100.00', '46.00', '59.00', '40.00', '102.00', '109.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2068', '1', '171.00', '90.00', '100.50', '100.50', '46.00', '59.00', '40.00', '102.50', '109.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2069', '1', '171.00', '91.00', '101.00', '101.00', '46.00', '59.00', '40.00', '103.00', '110.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2070', '1', '171.00', '92.00', '101.50', '101.50', '46.00', '59.00', '40.00', '103.50', '110.50', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2071', '1', '171.00', '93.00', '102.00', '102.00', '46.00', '59.00', '40.00', '104.00', '111.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2072', '1', '171.00', '94.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2073', '1', '171.00', '95.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '62.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2074', '1', '171.00', '96.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '62.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2075', '1', '171.00', '97.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '63.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2076', '1', '171.00', '98.00', '105.00', '105.00', '46.00', '59.00', '40.00', '107.00', '114.00', '63.00', '101.00');
INSERT INTO `standard_inch` VALUES ('2077', '1', '172.00', '54.00', '89.80', '73.80', '43.00', '59.60', '37.00', '75.80', '93.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2078', '1', '172.00', '55.00', '90.30', '74.30', '43.00', '59.60', '37.00', '76.30', '93.50', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2079', '1', '172.00', '56.00', '90.80', '74.80', '43.00', '59.60', '37.00', '76.80', '94.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2080', '1', '172.00', '57.00', '91.30', '75.30', '43.00', '59.60', '37.00', '77.30', '94.50', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2081', '1', '172.00', '58.00', '91.80', '75.80', '43.00', '59.60', '37.00', '77.80', '95.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2082', '1', '172.00', '59.00', '89.80', '75.80', '43.00', '59.60', '38.00', '77.80', '94.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2083', '1', '172.00', '60.00', '90.30', '76.30', '43.00', '59.60', '38.00', '78.30', '94.50', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2084', '1', '172.00', '61.00', '90.80', '76.80', '43.00', '59.60', '38.00', '78.80', '95.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2085', '1', '172.00', '62.00', '91.30', '77.30', '43.00', '59.60', '38.00', '79.30', '95.50', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2086', '1', '172.00', '63.00', '91.80', '77.80', '43.00', '59.60', '38.00', '79.80', '96.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2087', '1', '172.00', '64.00', '91.80', '79.80', '44.00', '59.60', '38.00', '81.80', '95.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2088', '1', '172.00', '65.00', '92.30', '80.30', '44.00', '59.60', '38.00', '82.30', '95.50', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2089', '1', '172.00', '66.00', '92.80', '80.80', '44.00', '59.60', '38.00', '82.80', '96.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2090', '1', '172.00', '67.00', '93.30', '81.30', '44.00', '59.60', '38.00', '83.30', '96.50', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2091', '1', '172.00', '68.00', '93.80', '81.80', '44.00', '59.60', '38.00', '83.80', '97.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2092', '1', '172.00', '69.00', '93.80', '83.80', '44.00', '59.60', '38.00', '85.80', '99.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2093', '1', '172.00', '70.00', '94.30', '84.30', '44.00', '59.60', '38.00', '86.30', '99.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2094', '1', '172.00', '71.00', '94.80', '84.80', '44.00', '59.60', '38.00', '86.80', '100.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2095', '1', '172.00', '72.00', '95.30', '85.30', '44.00', '59.60', '38.00', '87.30', '100.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2096', '1', '172.00', '73.00', '95.80', '85.80', '44.00', '59.60', '38.00', '87.80', '101.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2097', '1', '172.00', '74.00', '96.30', '86.30', '44.00', '59.60', '38.00', '88.30', '101.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2098', '1', '172.00', '75.00', '95.80', '87.80', '44.00', '59.60', '39.00', '89.80', '100.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2099', '1', '172.00', '76.00', '96.30', '88.30', '44.00', '59.60', '39.00', '90.30', '100.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2100', '1', '172.00', '77.00', '96.80', '88.80', '44.00', '59.60', '39.00', '90.80', '101.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2101', '1', '172.00', '78.00', '97.30', '89.30', '44.00', '59.60', '39.00', '91.30', '101.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2102', '1', '172.00', '79.00', '97.80', '89.80', '44.00', '59.60', '39.00', '91.80', '102.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2103', '1', '172.00', '80.00', '98.30', '90.30', '44.00', '59.60', '39.00', '92.30', '102.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2104', '1', '172.00', '81.00', '97.80', '93.80', '45.00', '59.60', '39.00', '95.80', '102.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2105', '1', '172.00', '82.00', '98.30', '94.30', '45.00', '59.60', '39.00', '96.30', '102.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2106', '1', '172.00', '83.00', '98.80', '94.80', '45.00', '59.60', '39.00', '96.80', '103.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2107', '1', '172.00', '84.00', '99.30', '95.30', '45.00', '59.60', '39.00', '97.30', '103.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2108', '1', '172.00', '85.00', '99.80', '95.80', '45.00', '59.60', '39.00', '97.80', '104.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2109', '1', '172.00', '86.00', '100.30', '96.30', '45.00', '59.60', '39.00', '98.30', '104.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2110', '1', '172.00', '87.00', '99.30', '99.30', '46.00', '59.60', '40.00', '104.30', '108.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2111', '1', '172.00', '88.00', '99.80', '99.80', '46.00', '59.60', '40.00', '103.80', '109.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2112', '1', '172.00', '89.00', '100.30', '100.30', '46.00', '59.60', '40.00', '103.30', '109.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2113', '1', '172.00', '90.00', '100.80', '100.80', '46.00', '59.60', '40.00', '102.80', '110.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2114', '1', '172.00', '91.00', '101.30', '101.30', '46.00', '59.60', '40.00', '102.30', '110.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2115', '1', '172.00', '92.00', '101.80', '101.80', '46.00', '59.60', '40.00', '101.80', '111.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2116', '1', '172.00', '93.00', '102.30', '102.30', '46.00', '59.60', '40.00', '101.30', '111.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2117', '1', '172.00', '94.00', '102.80', '102.80', '46.00', '59.60', '40.00', '100.80', '112.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2118', '1', '172.00', '95.00', '103.00', '103.00', '46.00', '60.00', '40.00', '100.00', '113.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2119', '1', '172.00', '96.00', '104.00', '104.00', '46.00', '60.00', '40.00', '100.00', '113.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2120', '1', '172.00', '97.00', '104.00', '104.00', '46.00', '60.00', '40.00', '99.00', '114.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2121', '1', '172.00', '97.00', '104.00', '104.00', '46.00', '60.00', '40.00', '106.00', '113.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2122', '1', '172.00', '98.00', '105.00', '105.00', '46.00', '60.00', '40.00', '99.00', '114.00', '63.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2123', '1', '172.00', '99.00', '105.00', '105.00', '46.00', '60.00', '40.00', '98.00', '115.00', '63.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2124', '1', '173.00', '55.00', '89.80', '73.80', '43.00', '59.60', '37.00', '75.80', '93.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2125', '1', '173.00', '56.00', '90.30', '74.30', '43.00', '59.60', '37.00', '76.30', '93.50', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2126', '1', '173.00', '57.00', '90.80', '74.80', '43.00', '59.60', '37.40', '76.80', '94.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2127', '1', '173.00', '58.00', '91.30', '75.30', '43.00', '59.60', '37.00', '77.30', '94.50', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2128', '1', '173.00', '59.00', '91.80', '75.80', '43.00', '59.60', '37.00', '77.80', '95.00', '54.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2129', '1', '173.00', '60.00', '89.80', '75.80', '43.00', '59.60', '38.00', '77.80', '94.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2130', '1', '173.00', '61.00', '90.30', '76.30', '43.00', '59.60', '38.00', '78.30', '94.50', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2131', '1', '173.00', '62.00', '90.80', '76.80', '43.00', '59.60', '38.00', '78.80', '95.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2132', '1', '173.00', '63.00', '91.30', '77.30', '43.00', '59.60', '38.00', '79.30', '95.50', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2133', '1', '173.00', '64.00', '91.80', '77.80', '43.00', '59.60', '38.00', '79.80', '96.00', '55.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2134', '1', '173.00', '65.00', '91.80', '79.80', '44.00', '59.60', '38.00', '81.80', '95.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2135', '1', '173.00', '66.00', '92.30', '80.30', '44.00', '59.60', '38.00', '82.30', '95.50', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2136', '1', '173.00', '67.00', '92.80', '80.80', '44.00', '59.60', '38.00', '82.80', '96.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2137', '1', '173.00', '68.00', '93.30', '81.30', '44.00', '59.60', '38.00', '83.30', '96.50', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2138', '1', '173.00', '69.00', '93.80', '81.80', '44.00', '59.60', '38.00', '83.80', '97.00', '56.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2139', '1', '173.00', '70.00', '93.80', '83.80', '44.00', '59.60', '38.00', '85.80', '99.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2140', '1', '173.00', '71.00', '94.30', '84.30', '44.00', '59.60', '38.00', '86.30', '99.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2141', '1', '173.00', '72.00', '94.80', '84.80', '44.00', '59.60', '38.00', '86.80', '100.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2142', '1', '173.00', '73.00', '95.30', '85.30', '44.00', '59.60', '38.00', '87.30', '100.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2143', '1', '173.00', '74.00', '95.80', '85.80', '44.00', '59.60', '38.00', '87.80', '101.00', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2144', '1', '173.00', '75.00', '96.30', '86.30', '44.00', '59.60', '38.00', '88.30', '101.50', '57.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2145', '1', '173.00', '76.00', '95.80', '87.80', '44.00', '59.60', '39.00', '89.80', '100.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2146', '1', '173.00', '77.00', '96.30', '88.30', '44.00', '59.60', '39.00', '90.30', '100.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2147', '1', '173.00', '78.00', '96.80', '88.80', '44.00', '59.60', '39.00', '90.80', '101.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2148', '1', '173.00', '79.00', '97.30', '89.30', '44.00', '59.60', '39.00', '91.30', '101.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2149', '1', '173.00', '80.00', '97.80', '89.80', '44.00', '59.60', '39.00', '91.80', '102.00', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2150', '1', '173.00', '81.00', '98.30', '90.30', '44.00', '59.60', '39.00', '92.30', '102.50', '58.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2151', '1', '173.00', '82.00', '97.80', '93.80', '45.00', '59.60', '39.00', '95.80', '102.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2152', '1', '173.00', '83.00', '98.30', '94.30', '45.00', '59.60', '39.00', '96.30', '102.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2153', '1', '173.00', '84.00', '98.80', '94.80', '45.00', '59.60', '39.00', '96.80', '103.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2154', '1', '173.00', '85.00', '99.30', '95.30', '45.00', '59.60', '39.00', '97.30', '103.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2155', '1', '173.00', '86.00', '99.80', '95.80', '45.00', '59.60', '39.00', '97.80', '104.00', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2156', '1', '173.00', '87.00', '100.30', '96.30', '45.00', '59.60', '39.00', '98.30', '104.50', '59.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2157', '1', '173.00', '88.00', '99.30', '99.30', '46.00', '59.60', '40.00', '101.30', '108.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2158', '1', '173.00', '89.00', '99.80', '99.80', '46.00', '59.60', '40.00', '101.80', '109.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2159', '1', '173.00', '90.00', '100.30', '100.30', '46.00', '59.60', '40.00', '102.30', '109.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2160', '1', '173.00', '91.00', '100.80', '100.80', '46.00', '59.60', '40.00', '102.80', '110.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2161', '1', '173.00', '92.00', '101.30', '101.30', '46.00', '59.60', '40.00', '103.30', '110.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2162', '1', '173.00', '93.00', '101.80', '101.80', '46.00', '59.60', '40.00', '103.80', '111.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2163', '1', '173.00', '94.00', '102.30', '102.30', '46.00', '59.60', '40.00', '104.30', '111.50', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2164', '1', '173.00', '95.00', '102.80', '102.80', '46.00', '59.60', '40.00', '104.80', '112.00', '60.00', '101.60');
INSERT INTO `standard_inch` VALUES ('2165', '1', '173.00', '96.00', '103.00', '103.00', '46.00', '60.00', '40.00', '105.00', '113.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2166', '1', '173.00', '98.00', '104.00', '104.00', '46.00', '60.00', '40.00', '106.00', '114.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2167', '1', '173.00', '99.00', '105.00', '105.00', '46.00', '60.00', '40.00', '107.00', '114.00', '63.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2168', '1', '173.00', '100.00', '105.00', '105.00', '46.00', '60.00', '40.00', '107.00', '115.00', '63.00', '102.00');
INSERT INTO `standard_inch` VALUES ('2169', '1', '174.00', '56.00', '90.60', '74.60', '43.00', '60.20', '38.00', '76.60', '94.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2170', '1', '174.00', '57.00', '91.10', '75.10', '43.00', '60.20', '38.00', '77.10', '94.50', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2171', '1', '174.00', '58.00', '91.60', '75.60', '43.00', '60.20', '38.00', '77.60', '95.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2172', '1', '174.00', '59.00', '92.10', '76.10', '43.00', '60.20', '38.00', '78.10', '95.50', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2173', '1', '174.00', '60.00', '92.60', '76.60', '43.00', '60.20', '38.00', '78.60', '96.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2174', '1', '174.00', '61.00', '90.60', '76.60', '43.00', '60.20', '39.00', '78.60', '95.00', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2175', '1', '174.00', '62.00', '91.10', '77.10', '43.00', '60.20', '39.00', '79.10', '95.50', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2176', '1', '174.00', '63.00', '91.60', '77.60', '43.00', '60.20', '39.00', '79.60', '96.00', '56.40', '103.20');
INSERT INTO `standard_inch` VALUES ('2177', '1', '174.00', '64.00', '92.10', '78.10', '43.00', '60.20', '39.00', '80.10', '96.50', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2178', '1', '174.00', '65.00', '92.60', '78.60', '43.00', '60.20', '39.00', '80.60', '97.00', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2179', '1', '174.00', '66.00', '92.60', '80.60', '44.00', '60.20', '39.00', '82.60', '96.00', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2180', '1', '174.00', '67.00', '93.10', '81.10', '44.00', '60.20', '39.00', '83.10', '96.50', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2181', '1', '174.00', '68.00', '93.60', '81.60', '44.00', '60.20', '39.00', '83.60', '97.00', '56.60', '103.20');
INSERT INTO `standard_inch` VALUES ('2182', '1', '174.00', '69.00', '94.10', '82.10', '44.00', '60.20', '39.00', '84.10', '97.50', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2183', '1', '174.00', '70.00', '94.60', '82.60', '44.00', '60.20', '39.00', '84.60', '98.00', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2184', '1', '174.00', '71.00', '94.60', '84.60', '44.00', '60.20', '39.00', '86.60', '99.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2185', '1', '174.00', '72.00', '95.10', '85.10', '44.00', '60.20', '39.00', '87.10', '99.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2186', '1', '174.00', '73.00', '95.60', '85.60', '44.00', '60.20', '39.00', '87.60', '100.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2187', '1', '174.00', '74.00', '96.10', '86.10', '44.00', '60.20', '39.00', '88.10', '100.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2188', '1', '174.00', '75.00', '96.60', '86.60', '44.00', '60.20', '39.00', '88.60', '101.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2189', '1', '174.00', '76.00', '97.10', '87.10', '44.00', '60.20', '39.00', '89.10', '101.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2190', '1', '174.00', '77.00', '96.60', '88.60', '44.00', '60.20', '40.00', '90.60', '102.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2191', '1', '174.00', '78.00', '97.10', '89.10', '44.00', '60.20', '40.00', '91.10', '102.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2192', '1', '174.00', '79.00', '97.60', '89.60', '44.00', '60.20', '40.00', '91.60', '103.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2193', '1', '174.00', '80.00', '98.10', '90.10', '44.00', '60.20', '40.00', '92.10', '103.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2194', '1', '174.00', '81.00', '98.60', '90.60', '44.00', '60.20', '40.00', '92.60', '104.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2195', '1', '174.00', '82.00', '99.10', '91.10', '44.00', '60.20', '40.00', '93.10', '104.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2196', '1', '174.00', '83.00', '98.60', '94.60', '45.00', '60.20', '40.00', '96.60', '104.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2197', '1', '174.00', '84.00', '99.10', '95.10', '45.00', '60.20', '40.00', '97.10', '104.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2198', '1', '174.00', '85.00', '99.60', '95.60', '45.00', '60.20', '40.00', '97.60', '105.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2199', '1', '174.00', '86.00', '100.10', '96.10', '45.00', '60.20', '40.00', '98.10', '105.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2200', '1', '174.00', '87.00', '100.60', '96.60', '45.00', '60.20', '40.00', '98.60', '106.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2201', '1', '174.00', '88.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2202', '1', '174.00', '89.00', '100.10', '100.10', '46.00', '60.20', '41.00', '102.10', '110.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2203', '1', '174.00', '90.00', '100.60', '100.60', '46.00', '60.20', '41.00', '102.60', '111.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2204', '1', '174.00', '91.00', '101.10', '101.10', '46.00', '60.20', '41.00', '103.10', '111.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2205', '1', '174.00', '92.00', '101.60', '101.60', '46.00', '60.20', '41.00', '103.60', '112.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2206', '1', '174.00', '93.00', '102.10', '102.10', '46.00', '60.20', '41.00', '104.10', '112.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2207', '1', '174.00', '94.00', '102.60', '102.60', '46.00', '60.20', '41.00', '104.60', '113.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2208', '1', '174.00', '95.00', '103.10', '103.10', '46.00', '60.20', '41.00', '105.10', '113.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2209', '1', '174.00', '96.00', '103.60', '103.60', '46.00', '60.20', '41.00', '105.60', '114.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2210', '1', '174.00', '97.00', '104.00', '104.00', '46.00', '60.00', '41.00', '106.00', '115.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2211', '1', '174.00', '98.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '115.00', '63.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2212', '1', '174.00', '99.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '116.00', '63.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2213', '1', '174.00', '100.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '116.00', '64.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2214', '1', '174.00', '101.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '117.00', '64.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2215', '1', '175.00', '57.00', '90.60', '74.60', '43.00', '60.20', '38.00', '76.60', '94.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2216', '1', '175.00', '58.00', '91.10', '75.10', '43.00', '60.20', '38.00', '77.10', '94.50', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2217', '1', '175.00', '59.00', '91.60', '75.60', '43.00', '60.20', '37.80', '77.60', '95.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2218', '1', '175.00', '60.00', '92.10', '76.10', '43.00', '60.20', '38.00', '78.10', '95.50', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2219', '1', '175.00', '61.00', '92.60', '76.60', '43.00', '60.20', '38.00', '78.60', '96.00', '55.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2220', '1', '175.00', '62.00', '90.60', '76.60', '43.00', '60.20', '39.00', '78.60', '95.00', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2221', '1', '175.00', '63.00', '91.10', '77.10', '43.00', '60.20', '39.00', '79.10', '95.50', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2222', '1', '175.00', '64.00', '91.60', '77.60', '43.00', '60.20', '39.00', '79.60', '96.00', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2223', '1', '175.00', '65.00', '92.10', '78.10', '43.00', '60.20', '39.00', '80.10', '96.50', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2224', '1', '175.00', '66.00', '92.60', '78.60', '43.00', '60.20', '39.00', '80.60', '97.00', '56.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2225', '1', '175.00', '67.00', '92.60', '80.60', '44.00', '60.20', '39.00', '82.60', '96.00', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2226', '1', '175.00', '68.00', '93.10', '81.10', '44.00', '60.20', '39.00', '83.10', '96.50', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2227', '1', '175.00', '69.00', '93.60', '81.60', '44.00', '60.20', '39.00', '83.60', '97.00', '56.80', '103.20');
INSERT INTO `standard_inch` VALUES ('2228', '1', '175.00', '70.00', '94.10', '82.10', '44.00', '60.20', '39.00', '84.10', '97.50', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2229', '1', '175.00', '71.00', '94.60', '82.60', '44.00', '60.20', '39.00', '84.60', '98.00', '57.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2230', '1', '175.00', '72.00', '94.60', '84.60', '44.00', '60.20', '39.00', '86.60', '99.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2231', '1', '175.00', '73.00', '95.10', '85.10', '44.00', '60.20', '39.00', '87.10', '99.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2232', '1', '175.00', '74.00', '95.60', '85.60', '44.00', '60.20', '39.00', '87.60', '100.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2233', '1', '175.00', '75.00', '96.10', '86.10', '44.00', '60.20', '39.00', '88.10', '100.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2234', '1', '175.00', '76.00', '96.60', '86.60', '44.00', '60.20', '39.00', '88.60', '101.00', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2235', '1', '175.00', '77.00', '97.10', '87.10', '44.00', '60.20', '39.00', '89.10', '101.50', '58.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2236', '1', '175.00', '78.00', '96.60', '88.60', '44.00', '60.20', '40.00', '90.60', '102.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2237', '1', '175.00', '79.00', '97.10', '89.10', '44.00', '60.20', '40.00', '91.10', '102.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2238', '1', '175.00', '80.00', '97.60', '89.60', '44.00', '60.20', '40.00', '91.60', '103.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2239', '1', '175.00', '81.00', '98.10', '90.10', '44.00', '60.20', '40.00', '92.10', '103.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2240', '1', '175.00', '82.00', '98.60', '90.60', '44.00', '60.20', '40.00', '92.60', '104.00', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2241', '1', '175.00', '83.00', '99.10', '91.10', '44.00', '60.20', '40.00', '93.10', '104.50', '59.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2242', '1', '175.00', '84.00', '98.60', '94.60', '45.00', '60.20', '40.00', '96.60', '104.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2243', '1', '175.00', '85.00', '99.10', '95.10', '45.00', '60.20', '40.00', '97.10', '104.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2244', '1', '175.00', '86.00', '99.60', '95.60', '45.50', '60.20', '40.00', '97.60', '105.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2245', '1', '175.00', '87.00', '100.10', '96.10', '45.00', '60.20', '40.00', '98.10', '105.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2246', '1', '175.00', '88.00', '100.60', '96.60', '45.00', '60.20', '40.00', '98.60', '106.00', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2247', '1', '175.00', '89.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2248', '1', '175.00', '89.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2249', '1', '175.00', '90.00', '100.10', '100.10', '46.00', '60.20', '41.00', '102.10', '110.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2250', '1', '175.00', '91.00', '100.60', '100.60', '46.00', '60.20', '41.00', '102.60', '111.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2251', '1', '175.00', '92.00', '101.10', '101.10', '46.00', '60.20', '41.00', '103.10', '111.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2252', '1', '175.00', '93.00', '101.60', '101.60', '46.50', '60.20', '41.00', '103.60', '112.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2253', '1', '175.00', '94.00', '102.10', '102.10', '46.00', '60.20', '41.00', '104.10', '112.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2254', '1', '175.00', '95.00', '102.60', '102.60', '46.00', '60.20', '41.00', '104.60', '113.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2255', '1', '175.00', '96.00', '103.10', '103.10', '46.00', '60.20', '41.00', '105.10', '113.50', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2256', '1', '175.00', '97.00', '103.60', '103.60', '46.00', '60.20', '41.00', '105.60', '114.00', '61.00', '103.20');
INSERT INTO `standard_inch` VALUES ('2257', '1', '175.00', '98.00', '104.00', '104.00', '46.00', '60.00', '41.00', '106.00', '115.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2258', '1', '175.00', '99.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '115.00', '63.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2259', '1', '175.00', '100.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '116.00', '63.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2260', '1', '175.00', '101.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '116.00', '64.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2261', '1', '175.00', '102.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '117.00', '64.00', '103.00');
INSERT INTO `standard_inch` VALUES ('2262', '1', '176.00', '58.00', '91.40', '75.40', '44.00', '60.80', '38.00', '77.40', '94.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2263', '1', '176.00', '59.00', '91.90', '75.90', '44.00', '60.80', '38.00', '77.90', '94.50', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2264', '1', '176.00', '60.00', '92.40', '76.40', '44.00', '60.80', '38.00', '78.40', '95.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2265', '1', '176.00', '61.00', '92.90', '76.90', '44.00', '60.80', '38.00', '78.90', '95.50', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2266', '1', '176.00', '62.00', '93.40', '77.40', '44.00', '60.80', '38.00', '79.40', '96.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2267', '1', '176.00', '63.00', '91.40', '77.40', '44.00', '60.80', '39.00', '79.40', '95.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2268', '1', '176.00', '64.00', '91.90', '77.90', '44.00', '60.80', '39.00', '79.90', '95.50', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2269', '1', '176.00', '65.00', '92.40', '78.40', '44.00', '60.80', '39.00', '80.40', '96.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2270', '1', '176.00', '66.00', '92.90', '78.90', '44.00', '60.80', '39.00', '80.90', '96.50', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2271', '1', '176.00', '67.00', '93.40', '79.40', '44.00', '60.80', '39.00', '81.40', '97.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2272', '1', '176.00', '68.00', '93.40', '81.40', '45.00', '60.80', '39.00', '83.40', '96.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2273', '1', '176.00', '69.00', '93.90', '81.90', '45.00', '60.80', '39.00', '83.90', '96.50', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2274', '1', '176.00', '70.00', '94.40', '82.40', '45.00', '60.80', '39.00', '84.40', '97.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2275', '1', '176.00', '71.00', '94.90', '82.90', '45.00', '60.80', '39.00', '84.90', '97.50', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2276', '1', '176.00', '72.00', '95.40', '83.40', '45.00', '60.80', '39.00', '85.40', '98.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2277', '1', '176.00', '73.00', '95.40', '85.40', '45.00', '60.80', '39.00', '87.40', '99.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2278', '1', '176.00', '74.00', '95.90', '85.90', '45.00', '60.80', '39.00', '87.90', '99.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2279', '1', '176.00', '75.00', '96.40', '86.40', '45.00', '60.80', '39.00', '88.40', '100.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2280', '1', '176.00', '76.00', '96.90', '86.90', '45.00', '60.80', '39.00', '88.90', '100.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2281', '1', '176.00', '77.00', '97.40', '87.40', '45.00', '60.80', '39.00', '89.40', '101.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2282', '1', '176.00', '78.00', '97.90', '87.90', '45.00', '60.80', '39.00', '89.90', '101.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2283', '1', '176.00', '79.00', '97.40', '89.40', '45.00', '60.80', '41.00', '91.40', '102.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2284', '1', '176.00', '80.00', '97.90', '89.90', '45.00', '60.80', '41.00', '91.90', '102.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2285', '1', '176.00', '81.00', '98.40', '90.40', '45.00', '60.80', '41.00', '92.40', '103.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2286', '1', '176.00', '82.00', '98.90', '90.90', '45.00', '60.80', '41.00', '92.90', '103.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2287', '1', '176.00', '83.00', '99.40', '91.40', '45.00', '60.80', '41.00', '93.40', '104.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2288', '1', '176.00', '84.00', '99.90', '91.90', '45.00', '60.80', '41.00', '93.90', '104.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2289', '1', '176.00', '85.00', '99.40', '95.40', '46.00', '60.80', '41.00', '97.40', '104.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2290', '1', '176.00', '86.00', '99.90', '95.90', '46.00', '60.80', '41.00', '97.90', '104.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2291', '1', '176.00', '87.00', '100.40', '96.40', '45.90', '60.80', '41.00', '98.40', '105.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2292', '1', '176.00', '88.00', '100.90', '96.90', '46.00', '60.80', '41.00', '98.90', '105.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2293', '1', '176.00', '89.00', '101.40', '97.40', '46.00', '60.80', '41.00', '99.40', '106.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2294', '1', '176.00', '90.00', '101.90', '97.90', '46.00', '60.80', '41.00', '99.90', '106.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2295', '1', '176.00', '91.00', '100.90', '100.90', '47.00', '60.80', '42.00', '102.90', '110.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2296', '1', '176.00', '92.00', '101.40', '101.40', '47.00', '60.80', '42.00', '103.40', '111.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2297', '1', '176.00', '93.00', '101.90', '101.90', '47.00', '60.80', '42.00', '103.90', '111.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2298', '1', '176.00', '94.00', '102.40', '102.40', '46.90', '60.80', '42.00', '104.40', '112.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2299', '1', '176.00', '95.00', '102.90', '102.90', '47.00', '60.80', '42.00', '104.90', '112.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2300', '1', '176.00', '96.00', '103.40', '103.40', '47.00', '60.80', '42.00', '105.40', '113.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2301', '1', '176.00', '97.00', '103.90', '103.90', '47.00', '60.80', '42.00', '105.90', '113.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2302', '1', '176.00', '98.00', '104.40', '104.40', '47.00', '60.80', '42.00', '106.40', '114.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2303', '1', '176.00', '99.00', '105.00', '105.00', '47.00', '61.00', '42.00', '107.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2304', '1', '176.00', '100.00', '105.00', '105.00', '47.00', '61.00', '42.00', '107.00', '115.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2305', '1', '176.00', '101.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2306', '1', '176.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2307', '1', '176.00', '103.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2308', '1', '177.00', '59.00', '91.40', '75.40', '44.00', '60.80', '38.00', '77.40', '95.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2309', '1', '177.00', '60.00', '91.90', '75.90', '44.00', '60.80', '38.00', '77.90', '95.50', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2310', '1', '177.00', '61.00', '92.40', '76.40', '44.00', '60.80', '38.00', '78.40', '96.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2311', '1', '177.00', '62.00', '92.90', '76.90', '44.00', '60.80', '38.00', '78.90', '96.50', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2312', '1', '177.00', '63.00', '93.40', '77.40', '44.00', '60.80', '38.00', '79.40', '97.00', '55.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2313', '1', '177.00', '64.00', '91.40', '77.40', '44.00', '60.80', '39.00', '79.40', '96.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2314', '1', '177.00', '65.00', '91.90', '77.90', '44.00', '60.80', '39.00', '79.90', '96.50', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2315', '1', '177.00', '66.00', '92.40', '78.40', '44.00', '60.80', '39.00', '80.40', '97.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2316', '1', '177.00', '67.00', '92.90', '78.90', '44.00', '60.80', '39.00', '80.90', '97.50', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2317', '1', '177.00', '68.00', '93.40', '79.40', '44.00', '60.80', '39.00', '81.40', '98.00', '56.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2318', '1', '177.00', '69.00', '93.40', '81.40', '45.00', '60.80', '39.00', '83.40', '97.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2319', '1', '177.00', '70.00', '93.90', '81.90', '45.00', '60.80', '39.00', '83.90', '97.50', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2320', '1', '177.00', '71.00', '94.40', '82.40', '45.00', '60.80', '39.00', '84.40', '98.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2321', '1', '177.00', '72.00', '94.90', '82.90', '45.00', '60.80', '39.00', '84.90', '98.50', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2322', '1', '177.00', '73.00', '95.40', '83.40', '45.00', '60.80', '39.00', '85.40', '99.00', '57.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2323', '1', '177.00', '74.00', '95.40', '85.40', '45.00', '60.80', '39.00', '87.40', '100.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2324', '1', '177.00', '75.00', '95.90', '85.90', '45.00', '60.80', '39.00', '87.90', '100.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2325', '1', '177.00', '76.00', '96.40', '86.40', '45.00', '60.80', '39.00', '88.40', '101.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2326', '1', '177.00', '77.00', '96.90', '86.90', '45.00', '60.80', '39.00', '88.90', '101.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2327', '1', '177.00', '78.00', '97.40', '87.40', '45.00', '60.80', '39.00', '89.40', '102.00', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2328', '1', '177.00', '79.00', '97.90', '87.90', '45.00', '60.80', '39.00', '89.90', '102.50', '58.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2329', '1', '177.00', '80.00', '97.40', '89.40', '45.00', '60.80', '40.00', '91.40', '103.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2330', '1', '177.00', '81.00', '97.90', '89.90', '45.00', '60.80', '40.00', '91.90', '103.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2331', '1', '177.00', '82.00', '98.40', '90.40', '45.00', '60.80', '40.00', '92.40', '104.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2332', '1', '177.00', '83.00', '98.90', '90.90', '45.00', '60.80', '40.00', '92.90', '104.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2333', '1', '177.00', '84.00', '99.40', '91.40', '45.00', '60.80', '40.00', '93.40', '105.00', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2334', '1', '177.00', '85.00', '99.90', '91.90', '45.00', '60.80', '40.00', '93.90', '105.50', '59.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2335', '1', '177.00', '86.00', '99.40', '95.40', '46.00', '60.80', '40.00', '97.40', '105.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2336', '1', '177.00', '87.00', '99.90', '95.90', '46.00', '60.80', '40.00', '97.90', '105.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2337', '1', '177.00', '88.00', '100.40', '96.40', '46.00', '60.80', '40.00', '98.40', '106.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2338', '1', '177.00', '89.00', '100.90', '96.90', '46.00', '60.80', '40.00', '98.90', '106.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2339', '1', '177.00', '90.00', '101.40', '97.40', '46.00', '60.80', '40.00', '99.40', '107.00', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2340', '1', '177.00', '91.00', '101.90', '97.90', '46.00', '60.80', '40.00', '99.90', '107.50', '60.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2341', '1', '177.00', '92.00', '100.90', '100.90', '47.00', '60.80', '41.00', '102.90', '111.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2342', '1', '177.00', '93.00', '101.40', '101.40', '47.00', '60.80', '41.00', '103.40', '112.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2343', '1', '177.00', '94.00', '101.90', '101.90', '47.00', '60.80', '41.00', '103.90', '112.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2344', '1', '177.00', '95.00', '102.40', '102.40', '47.00', '60.80', '41.00', '104.40', '113.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2345', '1', '177.00', '96.00', '102.90', '102.90', '47.00', '60.80', '41.00', '104.90', '113.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2346', '1', '177.00', '97.00', '103.40', '103.40', '47.00', '60.80', '41.00', '105.40', '114.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2347', '1', '177.00', '98.00', '103.90', '103.90', '47.00', '60.80', '41.00', '105.90', '114.50', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2348', '1', '177.00', '99.00', '104.40', '104.40', '47.00', '60.80', '41.00', '106.40', '115.00', '61.00', '103.80');
INSERT INTO `standard_inch` VALUES ('2349', '1', '177.00', '100.00', '105.00', '105.00', '47.00', '61.00', '41.00', '107.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2350', '1', '177.00', '101.00', '105.00', '105.00', '47.00', '61.00', '41.00', '107.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2351', '1', '177.00', '102.00', '106.00', '106.00', '47.00', '61.00', '41.00', '108.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2352', '1', '177.00', '103.00', '106.00', '106.00', '47.00', '61.00', '41.00', '108.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2353', '1', '177.00', '104.00', '107.00', '107.00', '47.00', '61.00', '41.00', '109.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2354', '1', '178.00', '60.00', '92.20', '76.20', '44.00', '61.40', '39.00', '78.20', '95.00', '56.00', '103.40');
INSERT INTO `standard_inch` VALUES ('2355', '1', '178.00', '61.00', '92.70', '76.70', '44.00', '61.40', '39.00', '78.70', '95.50', '56.00', '103.40');
INSERT INTO `standard_inch` VALUES ('2356', '1', '178.00', '62.00', '93.20', '77.20', '44.00', '61.40', '39.00', '79.20', '96.00', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2357', '1', '178.00', '63.00', '93.70', '77.70', '44.00', '61.40', '39.00', '79.70', '96.50', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2358', '1', '178.00', '64.00', '94.20', '78.20', '44.00', '61.40', '39.00', '80.20', '97.00', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2359', '1', '178.00', '65.00', '92.20', '78.20', '44.00', '61.40', '40.00', '80.20', '96.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2360', '1', '178.00', '66.00', '92.70', '78.70', '44.00', '61.40', '40.00', '80.70', '96.50', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2361', '1', '178.00', '67.00', '93.20', '79.20', '44.00', '61.40', '40.00', '81.20', '97.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2362', '1', '178.00', '68.00', '93.70', '79.70', '44.00', '61.40', '40.00', '81.70', '97.50', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2363', '1', '178.00', '69.00', '94.20', '80.20', '44.00', '61.40', '40.00', '82.20', '98.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2364', '1', '178.00', '70.00', '94.20', '82.20', '45.00', '61.40', '40.00', '84.20', '97.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2365', '1', '178.00', '71.00', '94.70', '82.70', '45.00', '61.40', '40.00', '84.70', '97.50', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2366', '1', '178.00', '72.00', '95.20', '83.20', '45.00', '61.40', '40.00', '85.20', '98.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2367', '1', '178.00', '73.00', '95.70', '83.70', '45.00', '61.40', '40.00', '85.70', '98.50', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2368', '1', '178.00', '74.00', '96.20', '84.20', '45.00', '61.40', '40.00', '86.20', '99.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2369', '1', '178.00', '75.00', '96.20', '86.20', '45.00', '61.40', '40.00', '88.20', '100.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2370', '1', '178.00', '76.00', '96.70', '86.70', '45.00', '61.40', '40.00', '88.70', '100.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2371', '1', '178.00', '77.00', '97.20', '87.20', '45.00', '61.40', '40.00', '89.20', '101.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2372', '1', '178.00', '78.00', '97.70', '87.70', '45.00', '61.40', '40.00', '89.70', '101.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2373', '1', '178.00', '79.00', '98.20', '88.20', '45.00', '61.40', '40.00', '90.20', '102.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2374', '1', '178.00', '80.00', '98.70', '88.70', '45.00', '61.40', '40.00', '90.70', '102.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2375', '1', '178.00', '81.00', '98.20', '90.20', '45.00', '61.40', '41.00', '92.20', '103.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2376', '1', '178.00', '82.00', '98.70', '90.70', '45.00', '61.40', '41.00', '92.70', '103.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2377', '1', '178.00', '83.00', '99.20', '91.20', '45.00', '61.40', '41.00', '93.20', '104.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2378', '1', '178.00', '84.00', '99.70', '91.70', '45.00', '61.40', '41.00', '93.70', '104.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2379', '1', '178.00', '85.00', '100.20', '92.20', '45.00', '61.40', '41.00', '94.20', '105.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2380', '1', '178.00', '86.00', '100.70', '92.70', '45.00', '61.40', '41.00', '94.70', '105.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2381', '1', '178.00', '87.00', '100.20', '96.20', '46.00', '61.40', '41.00', '98.20', '105.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2382', '1', '178.00', '88.00', '100.70', '96.70', '46.00', '61.40', '41.00', '98.70', '105.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2383', '1', '178.00', '89.00', '101.20', '97.20', '46.00', '61.40', '41.00', '99.20', '106.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2384', '1', '178.00', '90.00', '101.70', '97.70', '46.00', '61.40', '41.00', '99.70', '106.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2385', '1', '178.00', '91.00', '102.20', '98.20', '46.00', '61.40', '41.00', '100.20', '107.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2386', '1', '178.00', '92.00', '102.70', '98.70', '46.00', '61.40', '41.00', '100.70', '107.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2387', '1', '178.00', '93.00', '101.70', '101.70', '47.00', '61.40', '42.00', '103.70', '111.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2388', '1', '178.00', '94.00', '102.20', '102.20', '47.00', '61.40', '42.00', '104.20', '112.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2389', '1', '178.00', '95.00', '102.70', '102.70', '47.00', '61.40', '42.00', '104.70', '112.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2390', '1', '178.00', '96.00', '103.20', '103.20', '47.00', '61.40', '42.00', '105.20', '113.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2391', '1', '178.00', '97.00', '103.70', '103.70', '47.00', '61.40', '42.00', '105.70', '113.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2392', '1', '178.00', '98.00', '104.20', '104.20', '47.00', '61.40', '42.00', '106.20', '114.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2393', '1', '178.00', '99.00', '104.70', '104.70', '47.00', '61.40', '42.00', '106.70', '114.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2394', '1', '178.00', '100.00', '105.20', '105.20', '47.00', '61.40', '42.00', '107.20', '115.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2395', '1', '178.00', '101.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2396', '1', '178.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2397', '1', '178.00', '103.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2398', '1', '178.00', '104.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2399', '1', '178.00', '105.00', '108.00', '108.00', '47.00', '61.00', '42.00', '110.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2400', '1', '179.00', '61.00', '92.20', '76.20', '44.00', '61.40', '39.00', '78.20', '97.00', '56.00', '103.40');
INSERT INTO `standard_inch` VALUES ('2401', '1', '179.00', '62.00', '92.70', '76.70', '44.00', '61.40', '39.00', '78.70', '97.50', '56.00', '103.40');
INSERT INTO `standard_inch` VALUES ('2402', '1', '179.00', '63.00', '93.20', '77.20', '44.00', '61.40', '38.60', '79.20', '98.00', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2403', '1', '179.00', '64.00', '93.70', '77.70', '44.00', '61.40', '39.00', '79.70', '98.50', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2404', '1', '179.00', '65.00', '94.20', '78.20', '44.00', '61.40', '39.00', '80.20', '99.00', '56.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2405', '1', '179.00', '66.00', '92.20', '78.20', '44.00', '61.40', '40.00', '80.20', '98.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2406', '1', '179.00', '67.00', '92.70', '78.70', '44.00', '61.40', '40.00', '80.70', '98.50', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2407', '1', '179.00', '68.00', '93.20', '79.20', '44.00', '61.40', '40.00', '81.20', '99.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2408', '1', '179.00', '69.00', '93.70', '79.70', '44.00', '61.40', '40.00', '81.70', '99.50', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2409', '1', '179.00', '70.00', '94.20', '80.20', '44.00', '61.40', '40.00', '82.20', '100.00', '57.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2410', '1', '179.00', '71.00', '94.20', '82.20', '45.00', '61.40', '40.00', '84.20', '98.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2411', '1', '179.00', '72.00', '94.70', '82.70', '45.00', '61.40', '40.00', '84.70', '98.50', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2412', '1', '179.00', '73.00', '95.20', '83.20', '45.00', '61.40', '40.00', '85.20', '99.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2413', '1', '179.00', '74.00', '95.70', '83.70', '45.00', '61.40', '40.00', '85.70', '99.50', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2414', '1', '179.00', '75.00', '96.20', '84.20', '45.00', '61.40', '40.00', '86.20', '100.00', '58.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2415', '1', '179.00', '76.00', '96.20', '86.20', '45.00', '61.40', '40.00', '88.20', '101.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2416', '1', '179.00', '77.00', '96.70', '86.70', '45.00', '61.40', '40.00', '88.70', '101.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2417', '1', '179.00', '78.00', '97.20', '87.20', '45.00', '61.40', '40.00', '89.20', '102.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2418', '1', '179.00', '79.00', '97.70', '87.70', '45.00', '61.40', '40.00', '89.70', '102.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2419', '1', '179.00', '80.00', '98.20', '88.20', '45.00', '61.40', '40.00', '90.20', '103.00', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2420', '1', '179.00', '81.00', '98.70', '88.70', '45.00', '61.40', '40.00', '90.70', '103.50', '59.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2421', '1', '179.00', '82.00', '98.20', '90.20', '45.00', '61.40', '41.00', '92.20', '105.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2422', '1', '179.00', '83.00', '98.70', '90.70', '45.00', '61.40', '41.00', '92.70', '105.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2423', '1', '179.00', '84.00', '99.20', '91.20', '45.00', '61.40', '41.00', '93.20', '106.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2424', '1', '179.00', '85.00', '99.70', '91.70', '45.00', '61.40', '41.00', '93.70', '106.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2425', '1', '179.00', '86.00', '100.20', '92.20', '45.00', '61.40', '41.00', '94.20', '107.00', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2426', '1', '179.00', '87.00', '100.70', '92.70', '45.00', '61.40', '41.00', '94.70', '107.50', '60.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2427', '1', '179.00', '88.00', '100.20', '96.20', '46.00', '61.40', '41.00', '98.20', '110.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2428', '1', '179.00', '89.00', '100.70', '96.70', '46.00', '61.40', '41.00', '98.70', '110.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2429', '1', '179.00', '90.00', '101.20', '97.20', '46.00', '61.40', '41.00', '99.20', '111.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2430', '1', '179.00', '91.00', '101.70', '97.70', '46.00', '61.40', '41.00', '99.70', '111.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2431', '1', '179.00', '92.00', '102.20', '98.20', '46.00', '61.40', '41.00', '100.20', '112.00', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2432', '1', '179.00', '93.00', '102.70', '98.70', '46.00', '61.40', '41.00', '100.70', '112.50', '61.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2433', '1', '179.00', '94.00', '101.70', '101.70', '47.00', '61.40', '42.00', '103.70', '112.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2434', '1', '179.00', '95.00', '102.20', '102.20', '47.00', '61.40', '42.00', '104.20', '113.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2435', '1', '179.00', '96.00', '102.70', '102.70', '47.00', '61.40', '42.00', '104.70', '113.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2436', '1', '179.00', '97.00', '103.20', '103.20', '47.00', '61.40', '42.00', '105.20', '114.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2437', '1', '179.00', '98.00', '103.70', '103.70', '47.00', '61.40', '42.00', '105.70', '114.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2438', '1', '179.00', '99.00', '104.20', '104.20', '47.00', '61.40', '42.00', '106.20', '115.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2439', '1', '179.00', '100.00', '104.70', '104.70', '47.00', '61.40', '42.00', '106.70', '115.50', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2440', '1', '179.00', '101.00', '105.20', '105.20', '47.00', '61.40', '42.00', '107.20', '116.00', '62.00', '104.40');
INSERT INTO `standard_inch` VALUES ('2441', '1', '179.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2442', '1', '179.00', '103.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2443', '1', '179.00', '104.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2444', '1', '179.00', '105.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2445', '1', '179.00', '106.00', '108.00', '108.00', '47.00', '61.00', '42.00', '110.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2446', '1', '180.00', '62.00', '93.00', '77.00', '45.00', '62.00', '39.00', '79.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2447', '1', '180.00', '63.00', '93.50', '77.50', '45.00', '62.00', '39.00', '79.50', '97.50', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2448', '1', '180.00', '64.00', '94.00', '78.00', '45.00', '62.00', '39.00', '80.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2449', '1', '180.00', '65.00', '94.50', '78.50', '45.00', '62.00', '39.00', '80.50', '98.50', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2450', '1', '180.00', '66.00', '95.00', '79.00', '45.00', '62.00', '39.00', '81.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2451', '1', '180.00', '67.00', '95.00', '81.00', '45.00', '62.00', '40.00', '83.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2452', '1', '180.00', '68.00', '95.50', '81.50', '45.00', '62.00', '40.00', '83.50', '98.50', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2453', '1', '180.00', '69.00', '96.00', '82.00', '45.00', '62.00', '40.00', '84.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2454', '1', '180.00', '70.00', '96.50', '82.50', '45.00', '62.00', '40.00', '84.50', '99.50', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2455', '1', '180.00', '71.00', '97.00', '83.00', '45.00', '62.00', '40.00', '85.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2456', '1', '180.00', '72.00', '95.00', '83.00', '46.00', '62.00', '40.00', '85.00', '98.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2457', '1', '180.00', '73.00', '95.50', '83.50', '46.00', '62.00', '40.00', '85.50', '98.50', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2458', '1', '180.00', '74.00', '96.00', '84.00', '46.00', '62.00', '40.00', '86.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2459', '1', '180.00', '75.00', '96.50', '84.50', '46.00', '62.00', '40.00', '86.50', '99.50', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2460', '1', '180.00', '76.00', '97.00', '85.00', '46.00', '62.00', '40.00', '87.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2461', '1', '180.00', '77.00', '97.00', '87.00', '46.00', '62.00', '40.00', '89.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2462', '1', '180.00', '78.00', '97.50', '87.50', '46.00', '62.00', '40.00', '89.50', '101.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2463', '1', '180.00', '79.00', '98.00', '88.00', '46.00', '62.00', '40.00', '90.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2464', '1', '180.00', '80.00', '98.50', '88.50', '46.00', '62.00', '40.00', '90.50', '102.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2465', '1', '180.00', '81.00', '99.00', '89.00', '46.00', '62.00', '40.00', '91.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2466', '1', '180.00', '82.00', '99.50', '89.50', '46.00', '62.00', '40.00', '91.50', '103.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2467', '1', '180.00', '83.00', '101.00', '93.00', '46.00', '62.00', '41.00', '95.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2468', '1', '180.00', '84.00', '101.50', '93.50', '46.00', '62.00', '41.00', '95.50', '105.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2469', '1', '180.00', '85.00', '102.00', '94.00', '46.00', '62.00', '41.00', '96.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2470', '1', '180.00', '86.00', '102.50', '94.50', '46.00', '62.00', '41.00', '96.50', '106.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2471', '1', '180.00', '87.00', '103.00', '95.00', '46.00', '62.00', '41.00', '97.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2472', '1', '180.00', '88.00', '103.50', '95.50', '46.00', '62.00', '41.00', '97.50', '107.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2473', '1', '180.00', '89.00', '103.00', '99.00', '47.00', '62.00', '41.00', '101.00', '110.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2474', '1', '180.00', '90.00', '103.50', '99.50', '47.00', '62.00', '41.00', '101.50', '110.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2475', '1', '180.00', '91.00', '104.00', '100.00', '47.00', '62.00', '41.00', '102.00', '111.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2476', '1', '180.00', '92.00', '104.50', '100.50', '47.00', '62.00', '41.00', '102.50', '111.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2477', '1', '180.00', '93.00', '105.00', '101.00', '47.00', '62.00', '41.00', '103.00', '112.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2478', '1', '180.00', '94.00', '105.50', '101.50', '47.00', '62.00', '41.00', '103.50', '112.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2479', '1', '180.00', '95.00', '104.50', '104.50', '48.00', '62.00', '42.00', '106.50', '112.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2480', '1', '180.00', '96.00', '105.00', '105.00', '48.00', '62.00', '42.00', '107.00', '113.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2481', '1', '180.00', '97.00', '105.50', '105.50', '48.00', '62.00', '42.00', '107.50', '113.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2482', '1', '180.00', '98.00', '106.00', '106.00', '48.00', '62.00', '42.00', '108.00', '114.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2483', '1', '180.00', '99.00', '106.50', '106.50', '48.00', '62.00', '42.00', '108.50', '114.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2484', '1', '180.00', '100.00', '107.00', '107.00', '48.00', '62.00', '42.00', '109.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2485', '1', '180.00', '101.00', '107.50', '107.50', '48.00', '62.00', '42.00', '109.50', '115.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2486', '1', '180.00', '102.00', '108.00', '108.00', '48.00', '62.00', '42.00', '110.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2487', '1', '180.00', '103.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2488', '1', '180.00', '104.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2489', '1', '180.00', '105.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2490', '1', '180.00', '106.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2491', '1', '180.00', '107.00', '111.00', '111.00', '48.00', '62.00', '42.00', '113.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2492', '1', '181.00', '63.00', '93.00', '77.00', '45.00', '62.00', '39.00', '79.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2493', '1', '181.00', '64.00', '93.50', '77.50', '45.00', '62.00', '39.00', '79.50', '97.50', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2494', '1', '181.00', '65.00', '94.00', '78.00', '45.00', '62.00', '39.00', '80.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2495', '1', '181.00', '66.00', '94.50', '78.50', '45.00', '62.00', '39.00', '80.50', '98.50', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2496', '1', '181.00', '67.00', '95.00', '79.00', '45.00', '62.00', '39.00', '81.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2497', '1', '181.00', '68.00', '95.00', '81.00', '45.00', '62.00', '40.00', '83.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2498', '1', '181.00', '69.00', '95.50', '81.50', '45.00', '62.00', '40.00', '83.50', '98.50', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2499', '1', '181.00', '70.00', '96.00', '82.00', '45.00', '62.00', '40.00', '84.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2500', '1', '181.00', '71.00', '96.50', '82.50', '45.00', '62.00', '40.00', '84.50', '99.50', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2501', '1', '181.00', '72.00', '97.00', '83.00', '45.00', '62.00', '40.00', '85.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2502', '1', '181.00', '73.00', '95.00', '83.00', '46.00', '62.00', '40.00', '85.00', '98.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2503', '1', '181.00', '74.00', '95.50', '83.50', '46.00', '62.00', '40.00', '85.50', '98.50', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2504', '1', '181.00', '75.00', '96.00', '84.00', '46.00', '62.00', '40.00', '86.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2505', '1', '181.00', '76.00', '96.50', '84.50', '46.00', '62.00', '40.00', '86.50', '99.50', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2506', '1', '181.00', '77.00', '97.00', '85.00', '46.00', '62.00', '40.00', '87.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2507', '1', '181.00', '78.00', '97.00', '87.00', '46.00', '62.00', '40.00', '89.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2508', '1', '181.00', '79.00', '97.50', '87.50', '46.00', '62.00', '40.00', '89.50', '101.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2509', '1', '181.00', '80.00', '98.00', '88.00', '46.00', '62.00', '40.00', '90.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2510', '1', '181.00', '81.00', '98.50', '88.50', '46.00', '62.00', '40.00', '90.50', '102.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2511', '1', '181.00', '82.00', '99.00', '89.00', '46.00', '62.00', '40.00', '91.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2512', '1', '181.00', '83.00', '99.50', '89.50', '46.00', '62.00', '40.00', '91.50', '103.50', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2513', '1', '181.00', '84.00', '101.00', '93.00', '46.00', '62.00', '41.00', '95.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2514', '1', '181.00', '85.00', '101.50', '93.50', '46.00', '62.00', '41.00', '95.50', '105.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2515', '1', '181.00', '86.00', '102.00', '94.00', '46.00', '62.00', '41.00', '96.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2516', '1', '181.00', '87.00', '102.50', '94.50', '46.00', '62.00', '41.00', '96.50', '106.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2517', '1', '181.00', '88.00', '103.00', '95.00', '46.00', '62.00', '41.00', '97.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2518', '1', '181.00', '89.00', '103.50', '95.50', '46.00', '62.00', '41.00', '97.50', '107.50', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2519', '1', '181.00', '90.00', '103.00', '99.00', '47.00', '62.00', '41.00', '101.00', '110.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2520', '1', '181.00', '91.00', '103.50', '99.50', '47.00', '62.00', '41.00', '101.50', '110.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2521', '1', '181.00', '92.00', '104.00', '100.00', '47.00', '62.00', '41.00', '102.00', '111.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2522', '1', '181.00', '93.00', '104.50', '100.50', '47.00', '62.00', '41.00', '102.50', '111.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2523', '1', '181.00', '94.00', '105.00', '101.00', '47.00', '62.00', '41.00', '103.00', '112.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2524', '1', '181.00', '95.00', '105.50', '101.50', '47.00', '62.00', '41.00', '103.50', '112.50', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2525', '1', '181.00', '96.00', '104.50', '104.50', '48.00', '62.00', '42.00', '106.50', '112.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2526', '1', '181.00', '97.00', '105.00', '105.00', '48.00', '62.00', '42.00', '107.00', '113.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2527', '1', '181.00', '98.00', '105.50', '105.50', '48.00', '62.00', '42.00', '107.50', '113.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2528', '1', '181.00', '99.00', '106.00', '106.00', '48.00', '62.00', '42.00', '108.00', '114.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2529', '1', '181.00', '100.00', '106.50', '106.50', '48.00', '62.00', '42.00', '108.50', '114.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2530', '1', '181.00', '101.00', '107.00', '107.00', '48.00', '62.00', '42.00', '109.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2531', '1', '181.00', '102.00', '107.50', '107.50', '48.00', '62.00', '42.00', '109.50', '115.50', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2532', '1', '181.00', '103.00', '108.00', '108.00', '48.00', '62.00', '42.00', '110.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2533', '1', '181.00', '104.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2534', '1', '181.00', '105.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2535', '1', '181.00', '106.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2536', '1', '181.00', '107.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2537', '1', '181.00', '108.00', '111.00', '111.00', '48.00', '62.00', '42.00', '113.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_inch` VALUES ('2538', '1', '182.00', '64.00', '93.80', '77.80', '45.00', '62.60', '39.00', '79.80', '98.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2539', '1', '182.00', '65.00', '94.30', '78.30', '45.00', '62.60', '39.00', '80.30', '98.50', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2540', '1', '182.00', '66.00', '94.80', '78.80', '45.00', '62.60', '39.00', '80.80', '99.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2541', '1', '182.00', '67.00', '95.30', '79.30', '45.00', '62.60', '39.00', '81.30', '99.50', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2542', '1', '182.00', '68.00', '95.80', '79.80', '45.00', '62.60', '39.00', '81.80', '100.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2543', '1', '182.00', '69.00', '93.80', '81.80', '45.00', '62.60', '40.00', '83.80', '99.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2544', '1', '182.00', '70.00', '94.30', '82.30', '45.00', '62.60', '40.00', '84.30', '99.50', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2545', '1', '182.00', '71.00', '94.80', '82.80', '45.00', '62.60', '40.00', '84.80', '100.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2546', '1', '182.00', '72.00', '95.30', '83.30', '45.00', '62.60', '40.00', '85.30', '100.50', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2547', '1', '182.00', '73.00', '95.80', '83.80', '45.00', '62.60', '40.00', '85.80', '101.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2548', '1', '182.00', '74.00', '95.80', '83.80', '46.00', '62.60', '40.00', '85.80', '100.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2549', '1', '182.00', '75.00', '96.30', '84.30', '46.00', '62.60', '40.00', '86.30', '100.50', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2550', '1', '182.00', '76.00', '96.80', '84.80', '46.00', '62.60', '40.00', '86.80', '101.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2551', '1', '182.00', '77.00', '97.30', '85.30', '46.00', '62.60', '40.00', '87.30', '101.50', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2552', '1', '182.00', '78.00', '97.80', '85.80', '46.00', '62.60', '40.00', '87.80', '102.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2553', '1', '182.00', '79.00', '97.80', '87.80', '46.00', '62.60', '40.00', '89.80', '102.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2554', '1', '182.00', '80.00', '98.30', '88.30', '46.00', '62.60', '40.00', '90.30', '102.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2555', '1', '182.00', '81.00', '98.80', '88.80', '46.00', '62.60', '40.00', '90.80', '103.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2556', '1', '182.00', '82.00', '99.30', '89.30', '46.00', '62.60', '40.00', '91.30', '103.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2557', '1', '182.00', '83.00', '99.80', '89.80', '46.00', '62.60', '40.00', '91.80', '104.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2558', '1', '182.00', '84.00', '100.30', '90.30', '46.00', '62.60', '40.00', '92.30', '104.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2559', '1', '182.00', '85.00', '99.80', '93.80', '46.00', '62.60', '41.00', '95.80', '106.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2560', '1', '182.00', '86.00', '100.30', '94.30', '46.00', '62.60', '41.00', '96.30', '106.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2561', '1', '182.00', '87.00', '100.80', '94.80', '46.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2562', '1', '182.00', '88.00', '101.30', '95.30', '46.00', '62.60', '41.00', '97.30', '107.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2563', '1', '182.00', '89.00', '101.80', '95.80', '46.00', '62.60', '41.00', '97.80', '108.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2564', '1', '182.00', '90.00', '102.30', '96.30', '46.00', '62.60', '41.00', '98.30', '108.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2565', '1', '182.00', '91.00', '101.80', '99.80', '47.00', '62.60', '41.00', '101.80', '111.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2566', '1', '182.00', '92.00', '102.30', '100.30', '47.00', '62.60', '41.00', '102.30', '111.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2567', '1', '182.00', '93.00', '102.80', '100.80', '47.00', '62.60', '41.00', '102.80', '112.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2568', '1', '182.00', '94.00', '103.30', '101.30', '47.00', '62.60', '41.00', '103.30', '112.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2569', '1', '182.00', '95.00', '103.80', '101.80', '47.00', '62.60', '41.00', '103.80', '113.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2570', '1', '182.00', '96.00', '104.30', '102.30', '47.00', '62.60', '41.00', '104.30', '113.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2571', '1', '182.00', '97.00', '103.30', '103.30', '48.00', '62.60', '42.00', '105.30', '113.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2572', '1', '182.00', '98.00', '103.80', '103.80', '48.00', '62.60', '42.00', '105.80', '114.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2573', '1', '182.00', '99.00', '104.30', '104.30', '48.00', '62.60', '42.00', '106.30', '114.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2574', '1', '182.00', '100.00', '104.80', '104.80', '48.00', '62.60', '42.00', '106.80', '115.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2575', '1', '182.00', '101.00', '105.30', '105.30', '48.00', '62.60', '42.00', '107.30', '115.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2576', '1', '182.00', '102.00', '105.80', '105.80', '48.00', '62.60', '42.00', '107.80', '116.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2577', '1', '182.00', '103.00', '106.30', '106.30', '48.00', '62.60', '42.00', '108.30', '116.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2578', '1', '182.00', '104.00', '106.80', '106.80', '48.00', '62.60', '42.00', '108.80', '117.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2579', '1', '182.00', '105.00', '107.00', '107.00', '48.00', '63.00', '42.00', '109.00', '118.00', '64.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2580', '1', '182.00', '106.00', '108.00', '108.00', '48.00', '63.00', '42.00', '110.00', '118.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2581', '1', '182.00', '107.00', '108.00', '108.00', '48.00', '63.00', '42.00', '110.00', '119.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2582', '1', '182.00', '108.00', '109.00', '109.00', '48.00', '63.00', '42.00', '111.00', '119.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2583', '1', '182.00', '109.00', '109.00', '109.00', '48.00', '63.00', '42.00', '111.00', '120.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2584', '1', '183.00', '65.00', '93.80', '77.80', '46.00', '62.60', '39.00', '79.80', '98.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2585', '1', '183.00', '66.00', '94.30', '78.30', '46.00', '62.60', '39.00', '80.30', '98.50', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2586', '1', '183.00', '67.00', '94.80', '78.80', '46.00', '62.60', '39.00', '80.80', '99.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2587', '1', '183.00', '68.00', '95.30', '79.30', '46.00', '62.60', '39.00', '81.30', '99.50', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2588', '1', '183.00', '69.00', '95.80', '79.80', '46.00', '62.60', '39.00', '81.80', '100.00', '57.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2589', '1', '183.00', '70.00', '93.80', '81.80', '46.00', '62.60', '40.00', '83.80', '99.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2590', '1', '183.00', '71.00', '94.30', '82.30', '46.00', '62.60', '40.00', '84.30', '99.50', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2591', '1', '183.00', '72.00', '94.80', '82.80', '46.00', '62.60', '40.00', '84.80', '100.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2592', '1', '183.00', '73.00', '95.30', '83.30', '46.00', '62.60', '40.00', '85.30', '100.50', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2593', '1', '183.00', '74.00', '95.80', '83.80', '46.00', '62.60', '40.00', '85.80', '101.00', '58.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2594', '1', '183.00', '75.00', '95.80', '83.80', '47.00', '62.60', '40.00', '85.80', '100.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2595', '1', '183.00', '76.00', '96.30', '84.30', '47.00', '62.60', '40.00', '86.30', '100.50', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2596', '1', '183.00', '77.00', '96.80', '84.80', '47.00', '62.60', '40.00', '86.80', '101.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2597', '1', '183.00', '78.00', '97.30', '85.30', '47.00', '62.60', '40.00', '87.30', '101.50', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2598', '1', '183.00', '79.00', '97.80', '85.80', '47.00', '62.60', '40.00', '87.80', '102.00', '59.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2599', '1', '183.00', '80.00', '97.80', '87.80', '47.00', '62.60', '40.00', '89.80', '102.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2600', '1', '183.00', '81.00', '98.30', '88.30', '47.00', '62.60', '40.00', '90.30', '102.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2601', '1', '183.00', '82.00', '98.80', '88.80', '47.00', '62.60', '40.00', '90.80', '103.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2602', '1', '183.00', '83.00', '99.30', '89.30', '47.00', '62.60', '40.00', '91.30', '103.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2603', '1', '183.00', '84.00', '99.80', '89.80', '47.00', '62.60', '40.00', '91.80', '104.00', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2604', '1', '183.00', '85.00', '100.30', '90.30', '47.00', '62.60', '40.00', '92.30', '104.50', '60.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2605', '1', '183.00', '86.00', '99.80', '93.80', '47.00', '62.60', '41.00', '95.80', '106.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2606', '1', '183.00', '87.00', '100.30', '94.30', '47.00', '62.60', '41.00', '96.30', '106.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2607', '1', '183.00', '88.00', '100.80', '94.80', '47.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2608', '1', '183.00', '88.00', '100.80', '94.80', '47.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2609', '1', '183.00', '89.00', '101.30', '95.30', '47.00', '62.60', '41.00', '97.30', '107.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2610', '1', '183.00', '90.00', '101.80', '95.80', '47.00', '62.60', '41.00', '97.80', '108.00', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2611', '1', '183.00', '91.00', '102.30', '96.30', '47.00', '62.60', '41.00', '98.30', '108.50', '61.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2612', '1', '183.00', '92.00', '101.80', '99.80', '48.00', '62.60', '41.00', '101.80', '111.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2613', '1', '183.00', '93.00', '102.30', '100.30', '48.00', '62.60', '41.00', '102.30', '111.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2614', '1', '183.00', '94.00', '102.80', '100.80', '48.00', '62.60', '41.00', '102.80', '112.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2615', '1', '183.00', '95.00', '103.30', '101.30', '48.00', '62.60', '41.00', '103.30', '112.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2616', '1', '183.00', '96.00', '103.80', '101.80', '48.00', '62.60', '41.00', '103.80', '113.00', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2617', '1', '183.00', '97.00', '104.30', '102.30', '48.00', '62.60', '41.00', '104.30', '113.50', '62.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2618', '1', '183.00', '98.00', '103.30', '103.30', '49.00', '62.60', '42.00', '105.30', '113.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2619', '1', '183.00', '99.00', '103.80', '103.80', '49.00', '62.60', '42.00', '105.80', '114.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2620', '1', '183.00', '100.00', '104.30', '104.30', '49.00', '62.60', '42.00', '106.30', '114.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2621', '1', '183.00', '101.00', '104.80', '104.80', '49.00', '62.60', '42.00', '106.80', '115.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2622', '1', '183.00', '102.00', '105.30', '105.30', '49.00', '62.60', '42.00', '107.30', '115.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2623', '1', '183.00', '103.00', '105.80', '105.80', '49.00', '62.60', '42.00', '107.80', '116.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2624', '1', '183.00', '104.00', '106.30', '106.30', '49.00', '62.60', '42.00', '108.30', '116.50', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2625', '1', '183.00', '105.00', '106.80', '106.80', '49.00', '62.60', '42.00', '108.80', '117.00', '63.00', '104.60');
INSERT INTO `standard_inch` VALUES ('2626', '1', '183.00', '106.00', '107.00', '107.00', '49.00', '63.00', '42.00', '109.00', '118.00', '64.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2627', '1', '183.00', '107.00', '108.00', '108.00', '49.00', '63.00', '42.00', '110.00', '118.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2628', '1', '183.00', '108.00', '108.00', '108.00', '49.00', '63.00', '42.00', '110.00', '119.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2629', '1', '183.00', '109.00', '109.00', '109.00', '49.00', '63.00', '42.00', '111.00', '119.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2630', '1', '183.00', '110.00', '109.00', '109.00', '49.00', '63.00', '42.00', '111.00', '120.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2631', '1', '184.00', '66.00', '94.60', '78.60', '46.00', '63.20', '40.00', '80.60', '95.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2632', '1', '184.00', '67.00', '95.10', '79.10', '46.00', '63.20', '40.00', '81.10', '95.50', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2633', '1', '184.00', '68.00', '95.60', '79.60', '46.00', '63.20', '40.00', '81.60', '96.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2634', '1', '184.00', '69.00', '96.10', '80.10', '46.00', '63.20', '40.00', '82.10', '96.50', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2635', '1', '184.00', '70.00', '96.60', '80.60', '46.00', '63.20', '40.00', '82.60', '97.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2636', '1', '184.00', '71.00', '96.60', '82.60', '46.00', '63.20', '41.00', '84.60', '97.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2637', '1', '184.00', '72.00', '97.10', '83.10', '46.00', '63.20', '41.00', '85.10', '97.50', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2638', '1', '184.00', '73.00', '97.60', '83.60', '46.00', '63.20', '41.00', '85.60', '98.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2639', '1', '184.00', '74.00', '98.10', '84.10', '46.00', '63.20', '41.00', '86.10', '98.50', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2640', '1', '184.00', '75.00', '98.60', '84.60', '46.00', '63.20', '41.00', '86.60', '99.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2641', '1', '184.00', '76.00', '96.40', '84.60', '47.00', '63.20', '41.00', '86.60', '100.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2642', '1', '184.00', '77.00', '97.00', '85.10', '47.00', '63.20', '41.00', '87.10', '100.50', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2643', '1', '184.00', '78.00', '97.60', '85.60', '47.00', '63.20', '41.00', '87.60', '101.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2644', '1', '184.00', '79.00', '98.20', '86.10', '47.00', '63.20', '41.00', '88.10', '101.50', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2645', '1', '184.00', '80.00', '98.80', '86.60', '47.00', '63.20', '41.00', '88.60', '102.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2646', '1', '184.00', '81.00', '98.60', '88.60', '47.00', '63.20', '41.00', '90.60', '100.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2647', '1', '184.00', '82.00', '99.10', '89.10', '47.00', '63.20', '41.00', '91.10', '100.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2648', '1', '184.00', '83.00', '99.60', '89.60', '47.00', '63.20', '41.00', '91.60', '101.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2649', '1', '184.00', '84.00', '100.10', '90.10', '47.00', '63.20', '41.00', '92.10', '101.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2650', '1', '184.00', '85.00', '100.60', '90.60', '47.00', '63.20', '41.00', '92.60', '102.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2651', '1', '184.00', '86.00', '101.10', '91.10', '47.00', '63.20', '41.00', '93.10', '102.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2652', '1', '184.00', '87.00', '102.60', '94.60', '47.00', '63.20', '42.00', '96.60', '104.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2653', '1', '184.00', '88.00', '103.10', '95.10', '47.00', '63.20', '42.00', '97.10', '104.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2654', '1', '184.00', '89.00', '103.60', '95.60', '47.00', '63.20', '42.00', '97.60', '105.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2655', '1', '184.00', '90.00', '104.10', '96.10', '47.00', '63.20', '42.00', '98.10', '105.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2656', '1', '184.00', '91.00', '104.60', '96.60', '47.00', '63.20', '42.00', '98.60', '106.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2657', '1', '184.00', '92.00', '105.10', '97.10', '47.00', '63.20', '42.00', '99.10', '106.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2658', '1', '184.00', '93.00', '104.60', '100.60', '48.00', '63.20', '42.00', '102.60', '104.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2659', '1', '184.00', '94.00', '105.10', '101.10', '48.00', '63.20', '42.00', '103.10', '104.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2660', '1', '184.00', '95.00', '105.60', '101.60', '48.00', '63.20', '42.00', '103.60', '105.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2661', '1', '184.00', '96.00', '106.10', '102.10', '48.00', '63.20', '42.00', '104.10', '105.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2662', '1', '184.00', '97.00', '106.60', '102.60', '48.00', '63.20', '42.00', '104.60', '106.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2663', '1', '184.00', '98.00', '107.10', '103.10', '48.00', '63.20', '42.00', '105.10', '106.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2664', '1', '184.00', '99.00', '106.10', '106.10', '49.00', '63.20', '43.00', '108.10', '111.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2665', '1', '184.00', '100.00', '106.60', '106.60', '49.00', '63.20', '43.00', '108.60', '112.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2666', '1', '184.00', '101.00', '107.10', '107.10', '49.00', '63.20', '43.00', '109.10', '112.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2667', '1', '184.00', '102.00', '107.60', '107.60', '49.00', '63.20', '43.00', '109.60', '113.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2668', '1', '184.00', '103.00', '108.10', '108.10', '49.00', '63.20', '43.00', '110.10', '113.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2669', '1', '184.00', '104.00', '108.60', '108.60', '49.00', '63.20', '43.00', '110.60', '114.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2670', '1', '184.00', '105.00', '109.10', '109.10', '49.00', '63.20', '43.00', '111.10', '114.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2671', '1', '184.00', '106.00', '109.60', '109.60', '49.00', '63.20', '43.00', '111.60', '115.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2672', '1', '184.00', '107.00', '110.00', '110.00', '49.00', '63.00', '43.00', '112.00', '116.00', '64.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2673', '1', '184.00', '108.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '116.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2674', '1', '184.00', '109.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '117.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2675', '1', '184.00', '110.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '117.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2676', '1', '184.00', '111.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '118.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2677', '1', '185.00', '67.00', '94.60', '78.60', '46.00', '63.20', '40.00', '80.60', '95.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2678', '1', '185.00', '68.00', '95.10', '79.10', '46.00', '63.20', '40.00', '81.10', '95.50', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2679', '1', '185.00', '69.00', '95.60', '79.60', '46.00', '63.20', '40.00', '81.60', '96.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2680', '1', '185.00', '70.00', '96.10', '80.10', '46.00', '63.20', '40.00', '82.10', '96.50', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2681', '1', '185.00', '71.00', '96.60', '80.60', '46.00', '63.20', '40.00', '82.60', '97.00', '57.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2682', '1', '185.00', '72.00', '96.60', '82.60', '46.00', '63.20', '41.00', '84.60', '97.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2683', '1', '185.00', '73.00', '97.10', '83.10', '46.00', '63.20', '41.00', '85.10', '97.50', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2684', '1', '185.00', '74.00', '97.60', '83.60', '46.00', '63.20', '41.00', '85.60', '98.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2685', '1', '185.00', '75.00', '98.10', '84.10', '46.00', '63.20', '41.00', '86.10', '98.50', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2686', '1', '185.00', '76.00', '98.60', '84.60', '46.00', '63.20', '41.00', '86.60', '99.00', '58.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2687', '1', '185.00', '77.00', '96.60', '84.60', '47.00', '63.20', '41.00', '86.60', '100.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2688', '1', '185.00', '78.00', '97.10', '85.10', '47.00', '63.20', '41.00', '87.10', '100.50', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2689', '1', '185.00', '79.00', '97.60', '85.60', '47.00', '63.20', '41.00', '87.60', '101.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2690', '1', '185.00', '80.00', '98.10', '86.10', '47.00', '63.20', '41.00', '88.10', '101.50', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2691', '1', '185.00', '81.00', '98.60', '86.60', '47.00', '63.20', '41.00', '88.60', '102.00', '59.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2692', '1', '185.00', '82.00', '98.60', '88.60', '47.00', '63.20', '41.00', '90.60', '100.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2693', '1', '185.00', '83.00', '99.10', '89.10', '47.00', '63.20', '41.00', '91.10', '100.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2694', '1', '185.00', '84.00', '99.60', '89.60', '47.00', '63.20', '41.00', '91.60', '101.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2695', '1', '185.00', '85.00', '100.10', '90.10', '47.00', '63.20', '41.00', '92.10', '101.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2696', '1', '185.00', '86.00', '100.60', '90.60', '47.00', '63.20', '41.00', '92.60', '102.00', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2697', '1', '185.00', '87.00', '101.10', '91.10', '47.00', '63.20', '41.00', '93.10', '102.50', '60.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2698', '1', '185.00', '88.00', '102.60', '94.60', '47.00', '63.20', '42.00', '96.60', '104.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2699', '1', '185.00', '89.00', '103.10', '95.10', '47.00', '63.20', '42.00', '97.10', '104.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2700', '1', '185.00', '90.00', '103.60', '95.60', '47.00', '63.20', '42.00', '97.60', '105.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2701', '1', '185.00', '91.00', '104.10', '96.10', '47.00', '63.20', '42.00', '98.10', '105.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2702', '1', '185.00', '92.00', '104.60', '96.60', '47.00', '63.20', '42.00', '98.60', '106.00', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2703', '1', '185.00', '93.00', '105.10', '97.10', '47.00', '63.20', '42.00', '99.10', '106.50', '61.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2704', '1', '185.00', '94.00', '104.60', '100.60', '48.00', '63.20', '42.00', '102.60', '104.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2705', '1', '185.00', '95.00', '105.10', '101.10', '48.00', '63.20', '42.00', '103.10', '104.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2706', '1', '185.00', '96.00', '105.60', '101.60', '48.00', '63.20', '42.00', '103.60', '105.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2707', '1', '185.00', '97.00', '106.10', '102.10', '48.00', '63.20', '42.00', '104.10', '105.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2708', '1', '185.00', '98.00', '106.60', '102.60', '48.00', '63.20', '42.00', '104.60', '106.00', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2709', '1', '185.00', '99.00', '107.10', '103.10', '48.00', '63.20', '42.00', '105.10', '106.50', '62.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2710', '1', '185.00', '100.00', '106.10', '106.10', '49.00', '63.20', '43.00', '108.10', '111.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2711', '1', '185.00', '101.00', '106.60', '106.60', '49.00', '63.20', '43.00', '108.60', '112.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2712', '1', '185.00', '102.00', '107.10', '107.10', '49.00', '63.20', '43.00', '109.10', '112.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2713', '1', '185.00', '103.00', '107.60', '107.60', '49.00', '63.20', '43.00', '109.60', '113.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2714', '1', '185.00', '104.00', '108.10', '108.10', '49.00', '63.20', '43.00', '110.10', '113.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2715', '1', '185.00', '105.00', '108.60', '108.60', '49.00', '63.20', '43.00', '110.60', '114.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2716', '1', '185.00', '106.00', '109.10', '109.10', '49.00', '63.20', '43.00', '111.10', '114.50', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2717', '1', '185.00', '107.00', '109.60', '109.60', '49.00', '63.20', '43.00', '111.60', '115.00', '63.00', '105.20');
INSERT INTO `standard_inch` VALUES ('2718', '1', '185.00', '108.00', '110.00', '110.00', '49.00', '63.00', '43.00', '112.00', '116.00', '64.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2719', '1', '185.00', '109.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '116.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2720', '1', '185.00', '110.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '117.00', '65.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2721', '1', '185.00', '111.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '117.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2722', '1', '185.00', '112.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '118.00', '66.00', '105.00');
INSERT INTO `standard_inch` VALUES ('2723', '1', '186.00', '68.00', '95.40', '79.40', '46.00', '63.80', '40.00', '81.40', '95.00', '57.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2724', '1', '186.00', '69.00', '95.90', '79.90', '46.00', '63.80', '40.00', '81.90', '95.50', '57.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2725', '1', '186.00', '70.00', '96.40', '80.40', '46.00', '63.80', '40.00', '82.40', '96.00', '57.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2726', '1', '186.00', '71.00', '96.90', '80.90', '46.00', '63.80', '40.00', '82.90', '96.50', '57.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2727', '1', '186.00', '72.00', '97.40', '81.40', '46.00', '63.80', '40.00', '83.40', '97.00', '57.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2728', '1', '186.00', '73.00', '95.40', '81.40', '46.00', '63.80', '41.00', '83.40', '97.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2729', '1', '186.00', '74.00', '95.90', '81.90', '46.00', '63.80', '41.00', '83.90', '97.50', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2730', '1', '186.00', '75.00', '96.40', '82.40', '46.00', '63.80', '41.00', '84.40', '98.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2731', '1', '186.00', '76.00', '96.90', '82.90', '46.00', '63.80', '41.00', '84.90', '98.50', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2732', '1', '186.00', '77.00', '97.40', '83.40', '46.00', '63.80', '41.00', '85.40', '99.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2733', '1', '186.00', '78.00', '97.40', '85.40', '47.00', '63.80', '41.00', '87.40', '100.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2734', '1', '186.00', '79.00', '97.90', '85.90', '47.00', '63.80', '41.00', '87.90', '100.50', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2735', '1', '186.00', '80.00', '98.40', '86.40', '47.00', '63.80', '41.00', '88.40', '101.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2736', '1', '186.00', '81.00', '98.90', '86.90', '47.00', '63.80', '41.00', '88.90', '101.50', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2737', '1', '186.00', '82.00', '99.40', '87.40', '47.00', '63.80', '41.00', '89.40', '102.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2738', '1', '186.00', '83.00', '99.40', '89.40', '47.00', '63.80', '41.00', '91.40', '100.00', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2739', '1', '186.00', '84.00', '99.90', '89.90', '47.00', '63.80', '41.00', '91.90', '100.50', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2740', '1', '186.00', '85.00', '100.40', '90.40', '47.00', '63.80', '41.00', '92.40', '101.00', '59.60', '105.80');
INSERT INTO `standard_inch` VALUES ('2741', '1', '186.00', '86.00', '100.90', '90.90', '47.00', '63.80', '41.00', '92.90', '101.50', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2742', '1', '186.00', '87.00', '101.40', '91.40', '47.00', '63.80', '41.00', '93.40', '102.00', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2743', '1', '186.00', '88.00', '101.90', '91.90', '47.00', '63.80', '41.00', '93.90', '102.50', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2744', '1', '186.00', '89.00', '101.40', '93.40', '47.00', '63.80', '42.00', '95.40', '104.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2745', '1', '186.00', '90.00', '101.90', '93.90', '47.00', '63.80', '42.00', '95.90', '104.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2746', '1', '186.00', '91.00', '102.40', '94.40', '47.00', '63.80', '42.00', '96.40', '105.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2747', '1', '186.00', '92.00', '102.90', '94.90', '47.00', '63.80', '42.00', '96.90', '105.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2748', '1', '186.00', '93.00', '103.40', '95.40', '47.00', '63.80', '42.00', '97.40', '106.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2749', '1', '186.00', '94.00', '103.90', '95.90', '47.00', '63.80', '42.00', '97.90', '106.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2750', '1', '186.00', '95.00', '103.40', '99.40', '48.00', '63.80', '42.00', '101.40', '104.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2751', '1', '186.00', '96.00', '103.90', '99.90', '48.00', '63.80', '42.00', '101.90', '104.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2752', '1', '186.00', '97.00', '104.40', '100.40', '48.00', '63.80', '42.00', '102.40', '105.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2753', '1', '186.00', '98.00', '104.90', '100.90', '48.00', '63.80', '42.00', '102.90', '105.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2754', '1', '186.00', '99.00', '105.40', '101.40', '48.00', '63.80', '42.00', '103.40', '106.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2755', '1', '186.00', '100.00', '105.90', '101.90', '48.00', '63.80', '42.00', '103.90', '106.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2756', '1', '186.00', '101.00', '104.90', '104.90', '49.00', '63.80', '43.00', '106.90', '111.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2757', '1', '186.00', '102.00', '105.40', '105.40', '49.00', '63.80', '43.00', '107.40', '112.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2758', '1', '186.00', '103.00', '105.90', '105.90', '49.00', '63.80', '43.00', '107.90', '112.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2759', '1', '186.00', '104.00', '106.40', '106.40', '49.00', '63.80', '43.00', '108.40', '113.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2760', '1', '186.00', '105.00', '106.90', '106.90', '49.00', '63.80', '43.00', '108.90', '113.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2761', '1', '186.00', '106.00', '107.40', '107.40', '49.00', '63.80', '43.00', '109.40', '114.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2762', '1', '186.00', '107.00', '107.90', '107.90', '49.00', '63.80', '43.00', '109.90', '114.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2763', '1', '186.00', '108.00', '108.40', '108.40', '49.00', '63.80', '43.00', '110.40', '115.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2764', '1', '186.00', '109.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2765', '1', '186.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '65.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2766', '1', '186.00', '111.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '65.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2767', '1', '186.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2768', '1', '186.00', '113.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '118.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2769', '1', '187.00', '69.00', '95.40', '79.40', '46.00', '63.80', '40.00', '81.40', '96.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2770', '1', '187.00', '70.00', '95.90', '79.90', '46.00', '63.80', '40.00', '81.90', '96.50', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2771', '1', '187.00', '71.00', '96.40', '80.40', '46.00', '63.80', '40.00', '82.40', '97.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2772', '1', '187.00', '72.00', '96.90', '80.90', '46.00', '63.80', '40.00', '82.90', '97.50', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2773', '1', '187.00', '73.00', '97.40', '81.40', '46.00', '63.80', '40.00', '83.40', '98.00', '58.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2774', '1', '187.00', '74.00', '95.40', '81.40', '46.00', '63.80', '41.00', '83.40', '98.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2775', '1', '187.00', '75.00', '95.90', '81.90', '46.00', '63.80', '41.00', '83.90', '98.50', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2776', '1', '187.00', '76.00', '96.40', '82.40', '46.00', '63.80', '41.00', '84.40', '99.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2777', '1', '187.00', '77.00', '96.90', '82.90', '46.00', '63.80', '41.00', '84.90', '99.50', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2778', '1', '187.00', '78.00', '97.40', '83.40', '46.00', '63.80', '41.00', '85.40', '100.00', '59.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2779', '1', '187.00', '79.00', '97.40', '85.40', '47.00', '63.80', '41.00', '87.40', '101.00', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2780', '1', '187.00', '80.00', '97.90', '85.90', '47.00', '63.80', '41.00', '87.90', '101.50', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2781', '1', '187.00', '81.00', '98.40', '86.40', '47.00', '63.80', '41.00', '88.40', '102.00', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2782', '1', '187.00', '82.00', '98.90', '86.90', '47.00', '63.80', '41.00', '88.90', '102.50', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2783', '1', '187.00', '83.00', '99.40', '87.40', '47.00', '63.80', '41.00', '89.40', '103.00', '60.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2784', '1', '187.00', '84.00', '99.40', '89.40', '47.00', '63.80', '41.00', '91.40', '101.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2785', '1', '187.00', '85.00', '99.90', '89.90', '47.00', '63.80', '41.00', '91.90', '101.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2786', '1', '187.00', '86.00', '100.40', '90.40', '47.00', '63.80', '41.00', '92.40', '102.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2787', '1', '187.00', '87.00', '100.90', '90.90', '47.00', '63.80', '41.00', '92.90', '102.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2788', '1', '187.00', '88.00', '101.40', '91.40', '47.00', '63.80', '41.00', '93.40', '103.00', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2789', '1', '187.00', '89.00', '101.90', '91.90', '47.00', '63.80', '41.00', '93.90', '103.50', '61.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2790', '1', '187.00', '90.00', '101.40', '93.40', '47.00', '63.80', '42.00', '95.40', '105.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2791', '1', '187.00', '91.00', '101.90', '93.90', '47.00', '63.80', '42.00', '95.90', '105.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2792', '1', '187.00', '92.00', '102.40', '94.40', '47.00', '63.80', '42.00', '96.40', '106.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2793', '1', '187.00', '93.00', '102.90', '94.90', '47.00', '63.80', '42.00', '96.90', '106.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2794', '1', '187.00', '94.00', '103.40', '95.40', '47.00', '63.80', '42.00', '97.40', '107.00', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2795', '1', '187.00', '95.00', '103.90', '95.90', '47.00', '63.80', '42.00', '97.90', '107.50', '62.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2796', '1', '187.00', '96.00', '103.40', '99.40', '48.00', '63.80', '42.00', '101.40', '105.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2797', '1', '187.00', '97.00', '103.90', '99.90', '48.00', '63.80', '42.00', '101.90', '105.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2798', '1', '187.00', '98.00', '104.40', '100.40', '48.00', '63.80', '42.00', '102.40', '106.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2799', '1', '187.00', '99.00', '104.90', '100.90', '48.00', '63.80', '42.00', '102.90', '106.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2800', '1', '187.00', '100.00', '105.40', '101.40', '48.00', '63.80', '42.00', '103.40', '107.00', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2801', '1', '187.00', '101.00', '105.90', '101.90', '48.00', '63.80', '42.00', '103.90', '107.50', '63.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2802', '1', '187.00', '102.00', '104.90', '104.90', '49.00', '63.80', '43.00', '106.90', '112.50', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2803', '1', '187.00', '103.00', '105.40', '105.40', '49.00', '63.80', '43.00', '107.40', '113.00', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2804', '1', '187.00', '104.00', '105.90', '105.90', '49.00', '63.80', '43.00', '107.90', '113.50', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2805', '1', '187.00', '105.00', '106.40', '106.40', '49.00', '63.80', '43.00', '108.40', '114.00', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2806', '1', '187.00', '106.00', '106.90', '106.90', '49.00', '63.80', '43.00', '108.90', '114.50', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2807', '1', '187.00', '107.00', '107.40', '107.40', '49.00', '63.80', '43.00', '109.40', '115.00', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2808', '1', '187.00', '108.00', '107.90', '107.90', '49.00', '63.80', '43.00', '109.90', '115.50', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2809', '1', '187.00', '109.00', '108.40', '108.40', '49.00', '63.80', '43.00', '110.40', '116.00', '64.00', '105.80');
INSERT INTO `standard_inch` VALUES ('2810', '1', '187.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '65.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2811', '1', '187.00', '111.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2812', '1', '187.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2813', '1', '187.00', '113.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '67.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2814', '1', '187.00', '114.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '119.00', '67.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2815', '1', '188.00', '70.00', '96.00', '80.00', '46.00', '64.00', '40.00', '82.00', '96.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2816', '1', '188.00', '71.00', '96.00', '80.00', '46.00', '64.00', '40.00', '82.00', '97.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2817', '1', '188.00', '72.00', '97.00', '81.00', '46.00', '64.00', '40.00', '83.00', '97.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2818', '1', '188.00', '73.00', '97.00', '81.00', '46.00', '64.00', '40.00', '83.00', '98.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2819', '1', '188.00', '74.00', '98.00', '82.00', '46.00', '64.00', '40.00', '84.00', '98.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2820', '1', '188.00', '75.00', '95.00', '82.00', '46.00', '64.00', '41.00', '84.00', '98.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2821', '1', '188.00', '76.00', '95.00', '82.00', '46.00', '64.00', '41.00', '84.00', '99.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2822', '1', '188.00', '77.00', '96.00', '83.00', '46.00', '64.00', '41.00', '85.00', '99.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2823', '1', '188.00', '78.00', '96.00', '83.00', '46.00', '64.00', '41.00', '85.00', '100.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2824', '1', '188.00', '79.00', '97.00', '84.00', '46.00', '64.00', '41.00', '86.00', '100.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2825', '1', '188.00', '80.00', '98.00', '86.00', '47.00', '64.00', '41.00', '88.00', '101.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2826', '1', '188.00', '80.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2827', '1', '188.00', '81.00', '98.00', '86.00', '47.00', '64.00', '41.00', '88.00', '102.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2828', '1', '188.00', '82.00', '99.00', '87.00', '47.00', '64.00', '41.00', '89.00', '102.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2829', '1', '188.00', '83.00', '99.00', '87.00', '47.00', '64.00', '41.00', '89.00', '103.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2830', '1', '188.00', '84.00', '100.00', '88.00', '47.00', '64.00', '41.00', '90.00', '103.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2831', '1', '188.00', '85.00', '100.00', '90.00', '47.00', '64.00', '41.00', '92.00', '101.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2832', '1', '188.00', '86.00', '100.00', '90.00', '47.00', '64.00', '41.00', '92.00', '102.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2833', '1', '188.00', '87.00', '101.00', '91.00', '47.00', '64.00', '41.00', '93.00', '102.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2834', '1', '188.00', '88.00', '101.00', '91.00', '47.00', '64.00', '41.00', '93.00', '103.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2835', '1', '188.00', '89.00', '102.00', '92.00', '47.00', '64.00', '41.00', '94.00', '103.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2836', '1', '188.00', '90.00', '102.00', '92.00', '47.00', '64.00', '41.00', '94.00', '104.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2837', '1', '188.00', '91.00', '102.00', '94.00', '47.00', '64.00', '42.00', '96.00', '105.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2838', '1', '188.00', '92.00', '102.00', '94.00', '47.00', '64.00', '42.00', '96.00', '106.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2839', '1', '188.00', '93.00', '103.00', '95.00', '47.00', '64.00', '42.00', '97.00', '106.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2840', '1', '188.00', '94.00', '103.00', '95.00', '47.00', '64.00', '42.00', '97.00', '107.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2841', '1', '188.00', '95.00', '104.00', '96.00', '47.00', '64.00', '42.00', '98.00', '107.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2842', '1', '188.00', '96.00', '104.00', '96.00', '47.00', '64.00', '42.00', '98.00', '108.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2843', '1', '188.00', '97.00', '104.00', '100.00', '48.00', '64.00', '42.00', '102.00', '105.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2844', '1', '188.00', '98.00', '104.00', '100.00', '48.00', '64.00', '42.00', '102.00', '106.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2845', '1', '188.00', '99.00', '105.00', '101.00', '48.00', '64.00', '42.00', '103.00', '106.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2846', '1', '188.00', '100.00', '105.00', '101.00', '48.00', '64.00', '42.00', '103.00', '107.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2847', '1', '188.00', '101.00', '106.00', '102.00', '48.00', '64.00', '42.00', '104.00', '107.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2848', '1', '188.00', '102.00', '106.00', '102.00', '48.00', '64.00', '42.00', '104.00', '108.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2849', '1', '188.00', '103.00', '105.00', '105.00', '49.00', '64.00', '43.00', '107.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2850', '1', '188.00', '104.00', '106.00', '106.00', '49.00', '64.00', '43.00', '108.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2851', '1', '188.00', '105.00', '106.00', '106.00', '49.00', '64.00', '43.00', '108.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2852', '1', '188.00', '106.00', '107.00', '107.00', '49.00', '64.00', '43.00', '109.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2853', '1', '188.00', '107.00', '107.00', '107.00', '49.00', '64.00', '43.00', '109.00', '115.00', '65.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2854', '1', '188.00', '108.00', '108.00', '108.00', '49.00', '64.00', '43.00', '110.00', '115.00', '65.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2855', '1', '188.00', '109.00', '108.00', '108.00', '49.00', '64.00', '43.00', '110.00', '116.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2856', '1', '188.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '66.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2857', '1', '188.00', '111.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '67.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2858', '1', '188.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '67.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2859', '1', '188.00', '113.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '68.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2860', '1', '188.00', '114.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '118.00', '68.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2861', '1', '188.00', '115.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '119.00', '69.00', '106.00');
INSERT INTO `standard_inch` VALUES ('2862', '1', '189.00', '71.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2863', '1', '189.00', '72.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2864', '1', '189.00', '73.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2865', '1', '189.00', '74.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2866', '1', '189.00', '75.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2867', '1', '189.00', '76.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2868', '1', '189.00', '77.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2869', '1', '189.00', '78.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2870', '1', '189.00', '79.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2871', '1', '189.00', '81.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2872', '1', '189.00', '82.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2873', '1', '189.00', '83.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2874', '1', '189.00', '84.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2875', '1', '189.00', '85.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2876', '1', '189.00', '86.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2877', '1', '189.00', '87.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2878', '1', '189.00', '88.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2879', '1', '189.00', '89.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2880', '1', '189.00', '90.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2881', '1', '189.00', '91.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2882', '1', '189.00', '92.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2883', '1', '189.00', '93.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2884', '1', '189.00', '94.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2885', '1', '189.00', '95.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2886', '1', '189.00', '96.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2887', '1', '189.00', '97.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2888', '1', '189.00', '98.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2889', '1', '189.00', '99.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2890', '1', '189.00', '100.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2891', '1', '189.00', '101.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2892', '1', '189.00', '102.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2893', '1', '189.00', '103.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2894', '1', '189.00', '104.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2895', '1', '189.00', '105.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2896', '1', '189.00', '106.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2897', '1', '189.00', '107.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2898', '1', '189.00', '108.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2899', '1', '189.00', '109.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2900', '1', '189.00', '110.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2901', '1', '189.00', '111.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2902', '1', '189.00', '112.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2903', '1', '189.00', '113.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2904', '1', '189.00', '114.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2905', '1', '189.00', '115.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2906', '1', '189.00', '116.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2907', '1', '190.00', '73.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2908', '1', '190.00', '74.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2909', '1', '190.00', '75.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2910', '1', '190.00', '76.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2911', '1', '190.00', '77.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2912', '1', '190.00', '78.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2913', '1', '190.00', '79.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2914', '1', '190.00', '80.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2915', '1', '190.00', '81.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2916', '1', '190.00', '82.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2917', '1', '190.00', '83.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2918', '1', '190.00', '84.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2919', '1', '190.00', '85.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2920', '1', '190.00', '86.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2921', '1', '190.00', '87.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2922', '1', '190.00', '88.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2923', '1', '190.00', '89.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2924', '1', '190.00', '90.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2925', '1', '190.00', '91.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2926', '1', '190.00', '92.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2927', '1', '190.00', '93.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2928', '1', '190.00', '94.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2929', '1', '190.00', '95.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2930', '1', '190.00', '96.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2931', '1', '190.00', '97.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2932', '1', '190.00', '98.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2933', '1', '190.00', '99.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2934', '1', '190.00', '100.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2935', '1', '190.00', '101.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2936', '1', '190.00', '102.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2937', '1', '190.00', '103.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2938', '1', '190.00', '104.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2939', '1', '190.00', '105.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2940', '1', '190.00', '106.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2941', '1', '190.00', '107.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2942', '1', '190.00', '108.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2943', '1', '190.00', '109.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2944', '1', '190.00', '110.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2945', '1', '190.00', '111.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2946', '1', '190.00', '112.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2947', '1', '190.00', '113.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2948', '1', '190.00', '114.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2949', '1', '190.00', '115.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2950', '1', '190.00', '116.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2951', '1', '190.00', '117.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2952', '1', '190.00', '118.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2953', '1', '191.00', '74.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2954', '1', '191.00', '75.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2955', '1', '191.00', '76.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2956', '1', '191.00', '77.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2957', '1', '191.00', '78.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2958', '1', '191.00', '79.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2959', '1', '191.00', '80.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2960', '1', '191.00', '81.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2961', '1', '191.00', '82.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2962', '1', '191.00', '83.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2963', '1', '191.00', '84.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2964', '1', '191.00', '85.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2965', '1', '191.00', '86.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2966', '1', '191.00', '87.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2967', '1', '191.00', '88.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2968', '1', '191.00', '89.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2969', '1', '191.00', '90.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2970', '1', '191.00', '91.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2971', '1', '191.00', '92.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2972', '1', '191.00', '93.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2973', '1', '191.00', '94.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2974', '1', '191.00', '95.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2975', '1', '191.00', '96.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2976', '1', '191.00', '97.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2977', '1', '191.00', '98.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2978', '1', '191.00', '99.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2979', '1', '191.00', '100.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2980', '1', '191.00', '101.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2981', '1', '191.00', '102.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2982', '1', '191.00', '103.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2983', '1', '191.00', '104.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2984', '1', '191.00', '105.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2985', '1', '191.00', '106.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2986', '1', '191.00', '107.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2987', '1', '191.00', '108.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2988', '1', '191.00', '109.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2989', '1', '191.00', '110.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2990', '1', '191.00', '111.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2991', '1', '191.00', '112.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2992', '1', '191.00', '113.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2993', '1', '191.00', '114.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2994', '1', '191.00', '115.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2995', '1', '191.00', '116.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2996', '1', '191.00', '117.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2997', '1', '191.00', '118.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2998', '1', '191.00', '119.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_inch` VALUES ('2999', '1', '192.00', '75.00', '98.00', '82.00', '47.00', '66.00', '41.00', '84.00', '97.00', '60.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3000', '1', '192.00', '76.00', '98.00', '82.00', '47.00', '66.00', '41.00', '84.00', '98.00', '60.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3001', '1', '192.00', '77.00', '99.00', '83.00', '47.00', '66.00', '41.00', '85.00', '98.00', '60.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3002', '1', '192.00', '78.00', '99.00', '83.00', '47.00', '66.00', '41.00', '85.00', '99.00', '60.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3003', '1', '192.00', '79.00', '100.00', '84.00', '47.00', '66.00', '41.00', '86.00', '99.00', '60.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3004', '1', '192.00', '80.00', '98.00', '84.00', '47.00', '66.00', '42.00', '86.00', '99.00', '61.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3005', '1', '192.00', '81.00', '98.00', '84.00', '47.00', '66.00', '42.00', '86.00', '100.00', '61.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3006', '1', '192.00', '82.00', '99.00', '85.00', '47.00', '66.00', '42.00', '87.00', '100.00', '61.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3007', '1', '192.00', '83.00', '99.00', '85.00', '47.00', '66.00', '42.00', '87.00', '101.00', '61.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3008', '1', '192.00', '84.00', '100.00', '86.00', '47.00', '66.00', '42.00', '88.00', '101.00', '61.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3009', '1', '192.00', '85.00', '100.00', '88.00', '48.00', '66.00', '42.00', '90.00', '102.00', '62.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3010', '1', '192.00', '86.00', '100.00', '88.00', '48.00', '66.00', '42.00', '90.00', '103.00', '62.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3011', '1', '192.00', '87.00', '101.00', '89.00', '48.00', '66.00', '42.00', '91.00', '103.00', '62.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3012', '1', '192.00', '88.00', '101.00', '89.00', '48.00', '66.00', '42.00', '91.00', '104.00', '62.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3013', '1', '192.00', '89.00', '102.00', '90.00', '48.00', '66.00', '42.00', '92.00', '104.00', '62.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3014', '1', '192.00', '90.00', '102.00', '92.00', '48.00', '66.00', '42.00', '94.00', '102.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3015', '1', '192.00', '91.00', '102.00', '92.00', '48.00', '66.00', '42.00', '94.00', '103.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3016', '1', '192.00', '92.00', '103.00', '93.00', '48.00', '66.00', '42.00', '95.00', '103.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3017', '1', '192.00', '93.00', '103.00', '93.00', '48.00', '66.00', '42.00', '95.00', '104.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3018', '1', '192.00', '94.00', '104.00', '94.00', '48.00', '66.00', '42.00', '96.00', '104.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3019', '1', '192.00', '95.00', '104.00', '94.00', '48.00', '66.00', '42.00', '96.00', '105.00', '63.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3020', '1', '192.00', '96.00', '104.00', '96.00', '48.00', '66.00', '43.00', '98.00', '106.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3021', '1', '192.00', '97.00', '104.00', '96.00', '48.00', '66.00', '43.00', '98.00', '107.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3022', '1', '192.00', '98.00', '105.00', '97.00', '48.00', '66.00', '43.00', '99.00', '107.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3023', '1', '192.00', '99.00', '105.00', '97.00', '48.00', '66.00', '43.00', '99.00', '108.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3024', '1', '192.00', '100.00', '106.00', '98.00', '48.00', '66.00', '43.00', '100.00', '108.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3025', '1', '192.00', '101.00', '106.00', '98.00', '48.00', '66.00', '43.00', '100.00', '109.00', '64.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3026', '1', '192.00', '102.00', '106.00', '102.00', '49.00', '66.00', '43.00', '104.00', '106.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3027', '1', '192.00', '103.00', '106.00', '102.00', '49.00', '66.00', '43.00', '104.00', '107.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3028', '1', '192.00', '104.00', '107.00', '103.00', '49.00', '66.00', '43.00', '105.00', '107.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3029', '1', '192.00', '105.00', '107.00', '103.00', '49.00', '66.00', '43.00', '105.00', '108.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3030', '1', '192.00', '106.00', '108.00', '104.00', '49.00', '66.00', '43.00', '106.00', '108.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3031', '1', '192.00', '107.00', '108.00', '104.00', '49.00', '66.00', '43.00', '106.00', '109.00', '65.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3032', '1', '192.00', '108.00', '107.00', '107.00', '50.00', '66.00', '44.00', '109.00', '114.00', '66.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3033', '1', '192.00', '109.00', '108.00', '108.00', '50.00', '66.00', '44.00', '110.00', '114.00', '66.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3034', '1', '192.00', '110.00', '108.00', '108.00', '50.00', '66.00', '44.00', '110.00', '115.00', '66.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3035', '1', '192.00', '111.00', '109.00', '109.00', '50.00', '66.00', '44.00', '111.00', '115.00', '66.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3036', '1', '192.00', '112.00', '109.00', '109.00', '50.00', '66.00', '44.00', '111.00', '116.00', '67.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3037', '1', '192.00', '113.00', '110.00', '110.00', '50.00', '66.00', '44.00', '112.00', '116.00', '67.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3038', '1', '192.00', '114.00', '110.00', '110.00', '50.00', '66.00', '44.00', '112.00', '117.00', '68.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3039', '1', '192.00', '115.00', '111.00', '111.00', '50.00', '66.00', '44.00', '113.00', '117.00', '68.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3040', '1', '192.00', '116.00', '111.00', '111.00', '50.00', '66.00', '44.00', '113.00', '118.00', '69.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3041', '1', '192.00', '117.00', '112.00', '112.00', '50.00', '66.00', '44.00', '114.00', '118.00', '69.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3042', '1', '192.00', '118.00', '112.00', '112.00', '50.00', '66.00', '44.00', '114.00', '119.00', '70.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3043', '1', '192.00', '119.00', '113.00', '113.00', '50.00', '66.00', '44.00', '115.00', '119.00', '70.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3044', '1', '192.00', '120.00', '113.00', '113.00', '50.00', '66.00', '44.00', '115.00', '120.00', '71.00', '108.00');
INSERT INTO `standard_inch` VALUES ('3045', '0', '155.00', '30.00', '75.00', '55.00', '38.00', '52.00', '32.00', '57.00', '82.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3046', '0', '155.00', '31.00', '76.00', '56.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3047', '0', '155.00', '32.00', '76.00', '56.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3048', '0', '155.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3049', '0', '155.00', '34.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3050', '0', '155.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3051', '0', '155.00', '36.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3052', '0', '155.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3053', '0', '155.00', '38.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3054', '0', '155.00', '39.00', '78.00', '62.00', '38.00', '52.00', '33.00', '64.00', '84.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3055', '0', '155.00', '40.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3056', '0', '155.00', '41.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3057', '0', '155.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3058', '0', '155.00', '43.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3059', '0', '155.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3060', '0', '155.00', '45.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3061', '0', '155.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3062', '0', '155.00', '47.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3063', '0', '155.00', '48.00', '81.00', '69.00', '39.00', '52.00', '33.00', '71.00', '86.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3064', '0', '155.00', '49.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3065', '0', '155.00', '50.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3066', '0', '155.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3067', '0', '155.00', '52.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3068', '0', '155.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3069', '0', '155.00', '54.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3070', '0', '155.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3071', '0', '155.00', '56.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3072', '0', '155.00', '57.00', '84.00', '76.00', '40.00', '52.00', '34.00', '78.00', '88.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3073', '0', '155.00', '57.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3074', '0', '155.00', '58.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3075', '0', '155.00', '59.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3076', '0', '155.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3077', '0', '155.00', '61.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3078', '0', '155.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3079', '0', '155.00', '63.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3080', '0', '155.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3081', '0', '155.00', '65.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3082', '0', '155.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '56.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3083', '0', '155.00', '67.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '57.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3084', '0', '155.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '57.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3085', '0', '155.00', '69.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '58.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3086', '0', '155.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '58.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3087', '0', '156.00', '31.00', '76.00', '60.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3088', '0', '156.00', '32.00', '76.00', '59.00', '38.00', '52.00', '32.00', '58.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3089', '0', '156.00', '33.00', '77.00', '59.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3090', '0', '156.00', '34.00', '77.00', '58.00', '38.00', '52.00', '32.00', '59.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3091', '0', '156.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3092', '0', '156.00', '36.00', '78.00', '57.00', '38.00', '52.00', '32.00', '60.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3093', '0', '156.00', '37.00', '79.00', '57.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3094', '0', '156.00', '38.00', '79.00', '56.00', '38.00', '52.00', '32.00', '61.00', '87.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3095', '0', '156.00', '39.00', '80.00', '56.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3096', '0', '156.00', '40.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3097', '0', '156.00', '41.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3098', '0', '156.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3099', '0', '156.00', '43.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3100', '0', '156.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3101', '0', '156.00', '45.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3102', '0', '156.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3103', '0', '156.00', '47.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '89.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3104', '0', '156.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '53.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3105', '0', '156.00', '49.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3106', '0', '156.00', '50.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3107', '0', '156.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3108', '0', '156.00', '52.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3109', '0', '156.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3110', '0', '156.00', '54.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3111', '0', '156.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3112', '0', '156.00', '56.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '91.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3113', '0', '156.00', '57.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3114', '0', '156.00', '58.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3115', '0', '156.00', '59.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3116', '0', '156.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3117', '0', '156.00', '61.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3118', '0', '156.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3119', '0', '156.00', '63.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3120', '0', '156.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3121', '0', '156.00', '65.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '93.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3122', '0', '156.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3123', '0', '156.00', '67.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '94.00', '56.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3124', '0', '156.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '57.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3125', '0', '156.00', '69.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '95.00', '57.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3126', '0', '156.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '58.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3127', '0', '156.00', '71.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '96.00', '58.00', '96.00');
INSERT INTO `standard_inch` VALUES ('3128', '0', '157.00', '32.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3129', '0', '157.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3130', '0', '157.00', '34.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3131', '0', '157.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3132', '0', '157.00', '36.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3133', '0', '157.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3134', '0', '157.00', '38.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3135', '0', '157.00', '39.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3136', '0', '157.00', '40.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '52.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3137', '0', '157.00', '41.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3138', '0', '157.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3139', '0', '157.00', '43.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3140', '0', '157.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3141', '0', '157.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3142', '0', '157.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3143', '0', '157.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3144', '0', '157.00', '47.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3145', '0', '157.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3146', '0', '157.00', '49.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '89.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3147', '0', '157.00', '50.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3148', '0', '157.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3149', '0', '157.00', '52.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3150', '0', '157.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3151', '0', '157.00', '54.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3152', '0', '157.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3153', '0', '157.00', '56.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3154', '0', '157.00', '58.00', '87.00', '75.00', '39.00', '52.00', '33.00', '77.00', '92.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3155', '0', '157.00', '59.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3156', '0', '157.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3157', '0', '157.00', '61.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3158', '0', '157.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3159', '0', '157.00', '63.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3160', '0', '157.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3161', '0', '157.00', '65.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3162', '0', '157.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3163', '0', '157.00', '67.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3164', '0', '157.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3165', '0', '157.00', '69.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3166', '0', '157.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3167', '0', '157.00', '71.00', '92.00', '84.00', '40.00', '52.00', '34.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3168', '0', '157.00', '72.00', '92.00', '84.00', '40.00', '52.00', '34.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3169', '0', '158.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '85.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3170', '0', '158.00', '34.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3171', '0', '158.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3172', '0', '158.00', '36.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3173', '0', '158.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3174', '0', '158.00', '38.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3175', '0', '158.00', '39.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3176', '0', '158.00', '40.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3177', '0', '158.00', '41.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3178', '0', '158.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3179', '0', '158.00', '43.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3180', '0', '158.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3181', '0', '158.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3182', '0', '158.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3183', '0', '158.00', '47.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3184', '0', '158.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3185', '0', '158.00', '49.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3186', '0', '158.00', '50.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3187', '0', '158.00', '51.00', '83.00', '71.00', '39.00', '52.00', '34.00', '73.00', '89.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3188', '0', '158.00', '52.00', '84.00', '72.00', '39.00', '52.00', '34.00', '74.00', '89.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3189', '0', '158.00', '53.00', '84.00', '72.00', '39.00', '52.00', '34.00', '74.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3190', '0', '158.00', '54.00', '85.00', '73.00', '39.00', '52.00', '34.00', '75.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3191', '0', '158.00', '55.00', '85.00', '73.00', '39.00', '52.00', '34.00', '75.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3192', '0', '158.00', '56.00', '86.00', '74.00', '39.00', '52.00', '34.00', '76.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3193', '0', '158.00', '57.00', '86.00', '74.00', '39.00', '52.00', '34.00', '76.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3194', '0', '158.00', '58.00', '87.00', '75.00', '39.00', '52.00', '34.00', '77.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3195', '0', '158.00', '59.00', '87.00', '75.00', '39.00', '52.00', '34.00', '77.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3196', '0', '158.00', '60.00', '86.00', '78.00', '40.00', '52.00', '35.00', '80.00', '91.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3197', '0', '158.00', '61.00', '87.00', '79.00', '40.00', '52.00', '35.00', '81.00', '91.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3198', '0', '158.00', '62.00', '87.00', '79.00', '40.00', '52.00', '35.00', '81.00', '92.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3199', '0', '158.00', '63.00', '88.00', '80.00', '40.00', '52.00', '35.00', '82.00', '92.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3200', '0', '158.00', '64.00', '88.00', '80.00', '40.00', '52.00', '35.00', '82.00', '93.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3201', '0', '158.00', '65.00', '89.00', '81.00', '40.00', '52.00', '35.00', '83.00', '93.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3202', '0', '158.00', '66.00', '89.00', '81.00', '40.00', '52.00', '35.00', '83.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3203', '0', '158.00', '67.00', '90.00', '82.00', '40.00', '52.00', '35.00', '84.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3204', '0', '158.00', '68.00', '90.00', '82.00', '40.00', '52.00', '35.00', '84.00', '95.00', '56.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3205', '0', '158.00', '69.00', '91.00', '83.00', '40.00', '52.00', '35.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3206', '0', '158.00', '70.00', '91.00', '83.00', '40.00', '52.00', '35.00', '85.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3207', '0', '158.00', '71.00', '92.00', '84.00', '40.00', '52.00', '35.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3208', '0', '158.00', '72.00', '92.00', '84.00', '40.00', '52.00', '35.00', '86.00', '97.00', '59.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3209', '0', '158.00', '73.00', '93.00', '85.00', '40.00', '52.00', '35.00', '87.00', '97.00', '59.00', '97.00');
INSERT INTO `standard_inch` VALUES ('3210', '0', '159.00', '34.00', '78.00', '58.00', '38.00', '53.00', '32.00', '60.00', '85.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3211', '0', '159.00', '35.00', '79.00', '59.00', '38.00', '53.00', '32.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3212', '0', '159.00', '36.00', '79.00', '59.00', '38.00', '53.00', '32.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3213', '0', '159.00', '37.00', '80.00', '60.00', '38.00', '53.00', '32.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3214', '0', '159.00', '38.00', '80.00', '60.00', '38.00', '53.00', '32.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3215', '0', '159.00', '39.00', '81.00', '61.00', '38.00', '53.00', '32.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3216', '0', '159.00', '40.00', '81.00', '61.00', '38.00', '53.00', '32.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3217', '0', '159.00', '41.00', '82.00', '62.00', '38.00', '53.00', '32.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3218', '0', '159.00', '42.00', '82.00', '62.00', '38.00', '53.00', '32.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3219', '0', '159.00', '43.00', '81.00', '65.00', '38.00', '53.00', '33.00', '67.00', '87.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3220', '0', '159.00', '44.00', '82.00', '66.00', '38.00', '53.00', '33.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3221', '0', '159.00', '45.00', '82.00', '66.00', '38.00', '53.00', '33.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3222', '0', '159.00', '46.00', '83.00', '67.00', '38.00', '53.00', '33.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3223', '0', '159.00', '47.00', '83.00', '67.00', '38.00', '53.00', '33.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3224', '0', '159.00', '48.00', '84.00', '68.00', '38.00', '53.00', '33.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3225', '0', '159.00', '49.00', '84.00', '68.00', '38.00', '53.00', '33.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3226', '0', '159.00', '50.00', '85.00', '69.00', '38.00', '53.00', '33.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3227', '0', '159.00', '51.00', '85.00', '69.00', '38.00', '53.00', '33.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3228', '0', '159.00', '52.00', '84.00', '72.00', '39.00', '53.00', '33.00', '74.00', '89.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3229', '0', '159.00', '53.00', '85.00', '73.00', '39.00', '53.00', '33.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3230', '0', '159.00', '54.00', '85.00', '73.00', '39.00', '53.00', '33.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3231', '0', '159.00', '55.00', '86.00', '74.00', '39.00', '53.00', '33.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3232', '0', '159.00', '56.00', '86.00', '74.00', '39.00', '53.00', '33.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3233', '0', '159.00', '57.00', '87.00', '75.00', '39.00', '53.00', '33.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3234', '0', '159.00', '58.00', '87.00', '75.00', '39.00', '53.00', '33.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3235', '0', '159.00', '58.00', '88.00', '76.00', '39.00', '53.00', '33.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3236', '0', '159.00', '60.00', '88.00', '76.00', '39.00', '53.00', '33.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3237', '0', '159.00', '61.00', '87.00', '79.00', '40.00', '53.00', '34.00', '81.00', '91.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3238', '0', '159.00', '62.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3239', '0', '159.00', '63.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3240', '0', '159.00', '63.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3241', '0', '159.00', '64.00', '89.00', '81.00', '40.00', '53.00', '34.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3242', '0', '159.00', '65.00', '89.00', '81.00', '40.00', '53.00', '34.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3243', '0', '159.00', '66.00', '90.00', '82.00', '40.00', '53.00', '34.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3244', '0', '159.00', '67.00', '90.00', '82.00', '40.00', '53.00', '34.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3245', '0', '159.00', '68.00', '91.00', '83.00', '40.00', '53.00', '34.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3246', '0', '159.00', '69.00', '91.00', '83.00', '40.00', '53.00', '34.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3247', '0', '159.00', '70.00', '92.00', '84.00', '40.00', '53.00', '34.00', '86.00', '96.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3248', '0', '159.00', '71.00', '92.00', '84.00', '40.00', '53.00', '34.00', '86.00', '96.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3249', '0', '159.00', '72.00', '93.00', '85.00', '40.00', '53.00', '34.00', '87.00', '97.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3250', '0', '159.00', '73.00', '93.00', '85.00', '40.00', '53.00', '34.00', '87.00', '97.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3251', '0', '159.00', '74.00', '94.00', '86.00', '40.00', '53.00', '34.00', '88.00', '98.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3252', '0', '160.00', '35.00', '79.00', '59.00', '39.00', '53.00', '33.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3253', '0', '160.00', '36.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3254', '0', '160.00', '37.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3255', '0', '160.00', '38.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3256', '0', '160.00', '39.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3257', '0', '160.00', '40.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3258', '0', '160.00', '41.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3259', '0', '160.00', '42.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3260', '0', '160.00', '43.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3261', '0', '160.00', '44.00', '82.00', '66.00', '39.00', '53.00', '34.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3262', '0', '160.00', '45.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3263', '0', '160.00', '46.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3264', '0', '160.00', '47.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3265', '0', '160.00', '48.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3266', '0', '160.00', '49.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3267', '0', '160.00', '50.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3268', '0', '160.00', '51.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3269', '0', '160.00', '52.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3270', '0', '160.00', '53.00', '85.00', '73.00', '40.00', '53.00', '34.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3271', '0', '160.00', '54.00', '86.00', '74.00', '40.00', '53.00', '34.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3272', '0', '160.00', '55.00', '86.00', '74.00', '40.00', '53.00', '34.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3273', '0', '160.00', '56.00', '87.00', '75.00', '40.00', '53.00', '34.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3274', '0', '160.00', '57.00', '87.00', '75.00', '40.00', '53.00', '34.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3275', '0', '160.00', '58.00', '88.00', '76.00', '40.00', '53.00', '34.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3276', '0', '160.00', '59.00', '88.00', '76.00', '40.00', '53.00', '34.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3277', '0', '160.00', '60.00', '89.00', '77.00', '40.00', '53.00', '34.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3278', '0', '160.00', '61.00', '89.00', '77.00', '40.00', '53.00', '34.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3279', '0', '160.00', '62.00', '88.00', '80.00', '41.00', '53.00', '35.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3280', '0', '160.00', '63.00', '89.00', '81.00', '41.00', '53.00', '35.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3281', '0', '160.00', '64.00', '89.00', '81.00', '41.00', '53.00', '35.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3282', '0', '160.00', '65.00', '90.00', '82.00', '41.00', '53.00', '35.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3283', '0', '160.00', '66.00', '90.00', '82.00', '41.00', '53.00', '35.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3284', '0', '160.00', '67.00', '91.00', '83.00', '41.00', '53.00', '35.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3285', '0', '160.00', '68.00', '91.00', '83.00', '41.00', '53.00', '35.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3286', '0', '160.00', '69.00', '92.00', '84.00', '41.00', '53.00', '35.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3287', '0', '160.00', '70.00', '92.00', '84.00', '41.00', '53.00', '35.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3288', '0', '160.00', '71.00', '93.00', '85.00', '41.00', '53.00', '35.00', '87.00', '97.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3289', '0', '160.00', '72.00', '93.00', '85.00', '41.00', '53.00', '35.00', '87.00', '97.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3290', '0', '160.00', '73.00', '94.00', '86.00', '41.00', '53.00', '35.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3291', '0', '160.00', '74.00', '94.00', '86.00', '41.00', '53.00', '35.00', '88.00', '98.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3292', '0', '160.00', '75.00', '95.00', '87.00', '41.00', '53.00', '35.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3293', '0', '161.00', '36.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3294', '0', '161.00', '37.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3295', '0', '161.00', '38.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3296', '0', '161.00', '39.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3297', '0', '161.00', '40.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3298', '0', '161.00', '41.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3299', '0', '161.00', '42.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3300', '0', '161.00', '43.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3301', '0', '161.00', '44.00', '84.00', '64.00', '39.00', '53.00', '33.00', '66.00', '91.00', '53.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3302', '0', '161.00', '45.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3303', '0', '161.00', '46.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3304', '0', '161.00', '47.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3305', '0', '161.00', '48.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3306', '0', '161.00', '49.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3307', '0', '161.00', '50.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3308', '0', '161.00', '51.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3309', '0', '161.00', '52.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3310', '0', '161.00', '53.00', '87.00', '71.00', '39.00', '53.00', '34.00', '73.00', '93.00', '54.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3311', '0', '161.00', '54.00', '86.00', '74.00', '40.00', '53.00', '35.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3312', '0', '161.00', '55.00', '86.00', '74.00', '40.00', '53.00', '35.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3313', '0', '161.00', '56.00', '87.00', '75.00', '40.00', '53.00', '35.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3314', '0', '161.00', '57.00', '87.00', '75.00', '40.00', '53.00', '35.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3315', '0', '161.00', '58.00', '88.00', '76.00', '40.00', '53.00', '35.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3316', '0', '161.00', '59.00', '88.00', '76.00', '40.00', '53.00', '35.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3317', '0', '161.00', '60.00', '89.00', '77.00', '40.00', '53.00', '35.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3318', '0', '161.00', '61.00', '89.00', '77.00', '40.00', '53.00', '35.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3319', '0', '161.00', '62.00', '90.00', '78.00', '40.00', '53.00', '35.00', '80.00', '95.00', '55.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3320', '0', '161.00', '63.00', '89.00', '81.00', '41.00', '53.00', '36.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3321', '0', '161.00', '64.00', '89.00', '81.00', '41.00', '53.00', '36.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3322', '0', '161.00', '65.00', '90.00', '82.00', '41.00', '53.00', '36.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3323', '0', '161.00', '66.00', '90.00', '82.00', '41.00', '53.00', '36.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3324', '0', '161.00', '67.00', '91.00', '83.00', '41.00', '53.00', '36.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3325', '0', '161.00', '68.00', '91.00', '83.00', '41.00', '53.00', '36.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3326', '0', '161.00', '69.00', '92.00', '84.00', '41.00', '53.00', '36.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3327', '0', '161.00', '70.00', '92.00', '84.00', '41.00', '53.00', '36.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3328', '0', '161.00', '71.00', '93.00', '85.00', '41.00', '53.00', '36.00', '87.00', '97.00', '56.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3329', '0', '161.00', '72.00', '93.00', '85.00', '41.00', '53.00', '36.00', '87.00', '97.00', '57.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3330', '0', '161.00', '73.00', '94.00', '86.00', '41.00', '53.00', '36.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3331', '0', '161.00', '74.00', '94.00', '86.00', '41.00', '53.00', '36.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3332', '0', '161.00', '75.00', '95.00', '87.00', '41.00', '53.00', '36.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3333', '0', '161.00', '76.00', '95.00', '87.00', '41.00', '53.00', '36.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_inch` VALUES ('3334', '0', '162.00', '37.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '87.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3335', '0', '162.00', '38.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3336', '0', '162.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3337', '0', '162.00', '40.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3338', '0', '162.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3339', '0', '162.00', '42.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3340', '0', '162.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3341', '0', '162.00', '44.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3342', '0', '162.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3343', '0', '162.00', '46.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '89.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3344', '0', '162.00', '47.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3345', '0', '162.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3346', '0', '162.00', '49.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3347', '0', '162.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3348', '0', '162.00', '51.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3349', '0', '162.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3350', '0', '162.00', '53.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3351', '0', '162.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3352', '0', '162.00', '55.00', '87.00', '75.00', '40.00', '54.00', '35.00', '77.00', '91.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3353', '0', '162.00', '56.00', '87.00', '75.00', '40.00', '54.00', '35.00', '77.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3354', '0', '162.00', '57.00', '88.00', '76.00', '40.00', '54.00', '35.00', '78.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3355', '0', '162.00', '58.00', '88.00', '76.00', '40.00', '54.00', '35.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3356', '0', '162.00', '59.00', '89.00', '77.00', '40.00', '54.00', '35.00', '79.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3357', '0', '162.00', '60.00', '89.00', '77.00', '40.00', '54.00', '35.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3358', '0', '162.00', '61.00', '90.00', '78.00', '40.00', '54.00', '35.00', '80.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3359', '0', '162.00', '62.00', '90.00', '78.00', '40.00', '54.00', '35.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3360', '0', '162.00', '63.00', '91.00', '79.00', '40.00', '54.00', '35.00', '81.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3361', '0', '162.00', '64.00', '90.00', '82.00', '41.00', '54.00', '36.00', '84.00', '93.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3362', '0', '162.00', '65.00', '90.00', '82.00', '41.00', '54.00', '36.00', '84.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3363', '0', '162.00', '66.00', '91.00', '83.00', '41.00', '54.00', '36.00', '85.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3364', '0', '162.00', '67.00', '91.00', '83.00', '41.00', '54.00', '36.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3365', '0', '162.00', '68.00', '92.00', '84.00', '41.00', '54.00', '36.00', '86.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3366', '0', '162.00', '69.00', '92.00', '84.00', '41.00', '54.00', '36.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3367', '0', '162.00', '70.00', '93.00', '85.00', '41.00', '54.00', '36.00', '87.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3368', '0', '162.00', '71.00', '93.00', '85.00', '41.00', '54.00', '36.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3369', '0', '162.00', '72.00', '94.00', '86.00', '41.00', '54.00', '36.00', '88.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3370', '0', '162.00', '73.00', '94.00', '86.00', '41.00', '54.00', '36.00', '88.00', '98.00', '58.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3371', '0', '162.00', '74.00', '95.00', '87.00', '41.00', '54.00', '36.00', '89.00', '98.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3372', '0', '162.00', '75.00', '95.00', '87.00', '41.00', '54.00', '36.00', '89.00', '99.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3373', '0', '162.00', '76.00', '96.00', '88.00', '41.00', '54.00', '36.00', '90.00', '99.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3374', '0', '162.00', '77.00', '96.00', '88.00', '41.00', '54.00', '36.00', '90.00', '100.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3375', '0', '163.00', '38.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3376', '0', '163.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3377', '0', '163.00', '40.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3378', '0', '163.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3379', '0', '163.00', '42.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3380', '0', '163.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3381', '0', '163.00', '44.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3382', '0', '163.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3383', '0', '163.00', '46.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3384', '0', '163.00', '47.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3385', '0', '163.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3386', '0', '163.00', '49.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3387', '0', '163.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3388', '0', '163.00', '51.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3389', '0', '163.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3390', '0', '163.00', '53.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3391', '0', '163.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3392', '0', '163.00', '55.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3393', '0', '163.00', '56.00', '87.00', '75.00', '40.00', '54.00', '34.00', '77.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3394', '0', '163.00', '57.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3395', '0', '163.00', '58.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3396', '0', '163.00', '59.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3397', '0', '163.00', '60.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3398', '0', '163.00', '61.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3399', '0', '163.00', '62.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3400', '0', '163.00', '63.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3401', '0', '163.00', '64.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3402', '0', '163.00', '65.00', '90.00', '82.00', '41.00', '54.00', '35.00', '84.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3403', '0', '163.00', '66.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3404', '0', '163.00', '67.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3405', '0', '163.00', '68.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3406', '0', '163.00', '69.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3407', '0', '163.00', '70.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3408', '0', '163.00', '71.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3409', '0', '163.00', '72.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3410', '0', '163.00', '73.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3411', '0', '163.00', '74.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '58.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3412', '0', '163.00', '75.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3413', '0', '163.00', '76.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '59.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3414', '0', '163.00', '77.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3415', '0', '163.00', '78.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '101.00', '60.00', '99.00');
INSERT INTO `standard_inch` VALUES ('3416', '0', '164.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3417', '0', '164.00', '40.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '89.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3418', '0', '164.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3419', '0', '164.00', '42.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3420', '0', '164.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3421', '0', '164.00', '44.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3422', '0', '164.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3423', '0', '164.00', '46.00', '86.00', '66.00', '39.00', '54.00', '33.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3424', '0', '164.00', '47.00', '86.00', '66.00', '39.00', '54.00', '33.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3425', '0', '164.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3426', '0', '164.00', '49.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '91.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3427', '0', '164.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3428', '0', '164.00', '51.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3429', '0', '164.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3430', '0', '164.00', '53.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3431', '0', '164.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3432', '0', '164.00', '55.00', '89.00', '73.00', '39.00', '54.00', '34.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3433', '0', '164.00', '56.00', '89.00', '73.00', '39.00', '54.00', '34.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3434', '0', '164.00', '57.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3435', '0', '164.00', '58.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '93.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3436', '0', '164.00', '59.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3437', '0', '164.00', '60.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3438', '0', '164.00', '61.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3439', '0', '164.00', '62.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3440', '0', '164.00', '63.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3441', '0', '164.00', '64.00', '92.00', '80.00', '40.00', '54.00', '34.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3442', '0', '164.00', '65.00', '92.00', '80.00', '40.00', '54.00', '34.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3443', '0', '164.00', '66.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3444', '0', '164.00', '67.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '95.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3445', '0', '164.00', '68.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3446', '0', '164.00', '69.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3447', '0', '164.00', '70.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3448', '0', '164.00', '71.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3449', '0', '164.00', '72.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3450', '0', '164.00', '73.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3451', '0', '164.00', '74.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3452', '0', '164.00', '75.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '99.00', '58.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3453', '0', '164.00', '76.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3454', '0', '164.00', '77.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '100.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3455', '0', '164.00', '78.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '101.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3456', '0', '164.00', '79.00', '98.00', '90.00', '41.00', '54.00', '35.00', '92.00', '101.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3457', '0', '165.00', '40.00', '83.00', '63.00', '39.00', '55.00', '34.00', '65.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3458', '0', '165.00', '41.00', '84.00', '64.00', '39.00', '55.00', '34.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3459', '0', '165.00', '42.00', '84.00', '64.00', '39.00', '55.00', '34.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3460', '0', '165.00', '43.00', '85.00', '65.00', '39.00', '55.00', '34.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3461', '0', '165.00', '44.00', '85.00', '65.00', '39.00', '55.00', '34.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3462', '0', '165.00', '45.00', '86.00', '66.00', '39.00', '55.00', '34.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3463', '0', '165.00', '46.00', '86.00', '66.00', '39.00', '55.00', '34.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3464', '0', '165.00', '47.00', '87.00', '67.00', '39.00', '55.00', '34.00', '69.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3465', '0', '165.00', '48.00', '87.00', '67.00', '39.00', '55.00', '34.00', '69.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3466', '0', '165.00', '49.00', '86.00', '70.00', '39.00', '55.00', '35.00', '72.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3467', '0', '165.00', '50.00', '87.00', '71.00', '39.00', '55.00', '35.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3468', '0', '165.00', '51.00', '87.00', '71.00', '39.00', '55.00', '35.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3469', '0', '165.00', '52.00', '88.00', '72.00', '39.00', '55.00', '35.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3470', '0', '165.00', '53.00', '88.00', '72.00', '39.00', '55.00', '35.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3471', '0', '165.00', '54.00', '89.00', '73.00', '39.00', '55.00', '35.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3472', '0', '165.00', '55.00', '89.00', '73.00', '39.00', '55.00', '35.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3473', '0', '165.00', '56.00', '90.00', '74.00', '39.00', '55.00', '35.00', '76.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3474', '0', '165.00', '57.00', '90.00', '74.00', '39.00', '55.00', '35.00', '76.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3475', '0', '165.00', '58.00', '89.00', '77.00', '40.00', '55.00', '35.00', '79.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3476', '0', '165.00', '59.00', '90.00', '78.00', '40.00', '55.00', '35.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3477', '0', '165.00', '60.00', '90.00', '78.00', '40.00', '55.00', '35.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3478', '0', '165.00', '61.00', '91.00', '79.00', '40.00', '55.00', '35.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3479', '0', '165.00', '62.00', '91.00', '79.00', '40.00', '55.00', '35.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3480', '0', '165.00', '63.00', '92.00', '80.00', '40.00', '55.00', '35.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3481', '0', '165.00', '64.00', '92.00', '80.00', '40.00', '55.00', '35.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3482', '0', '165.00', '65.00', '93.00', '81.00', '40.00', '55.00', '35.00', '83.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3483', '0', '165.00', '65.00', '94.00', '82.00', '41.00', '56.00', '35.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3484', '0', '165.00', '66.00', '93.00', '81.00', '40.00', '55.00', '35.00', '83.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3485', '0', '165.00', '67.00', '92.00', '84.00', '41.00', '55.00', '36.00', '86.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3486', '0', '165.00', '68.00', '93.00', '85.00', '41.00', '55.00', '36.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3487', '0', '165.00', '69.00', '93.00', '85.00', '41.00', '55.00', '36.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3488', '0', '165.00', '70.00', '94.00', '86.00', '41.00', '55.00', '36.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3489', '0', '165.00', '71.00', '94.00', '86.00', '41.00', '55.00', '36.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3490', '0', '165.00', '72.00', '95.00', '87.00', '41.00', '55.00', '36.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3491', '0', '165.00', '73.00', '95.00', '87.00', '41.00', '55.00', '36.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3492', '0', '165.00', '74.00', '96.00', '88.00', '41.00', '55.00', '36.00', '90.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3493', '0', '165.00', '75.00', '96.00', '88.00', '41.00', '55.00', '36.00', '90.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3494', '0', '165.00', '76.00', '97.00', '89.00', '41.00', '55.00', '36.00', '91.00', '100.00', '58.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3495', '0', '165.00', '77.00', '97.00', '89.00', '41.00', '55.00', '36.00', '91.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3496', '0', '165.00', '78.00', '98.00', '90.00', '41.00', '55.00', '36.00', '92.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3497', '0', '165.00', '79.00', '98.00', '90.00', '41.00', '55.00', '36.00', '92.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3498', '0', '165.00', '80.00', '99.00', '91.00', '41.00', '55.00', '36.00', '93.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3499', '0', '166.00', '41.00', '84.00', '64.00', '40.00', '55.00', '34.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3500', '0', '166.00', '42.00', '84.00', '64.00', '40.00', '55.00', '34.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3501', '0', '166.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3502', '0', '166.00', '44.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3503', '0', '166.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3504', '0', '166.00', '46.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3505', '0', '166.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3506', '0', '166.00', '48.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3507', '0', '166.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3508', '0', '166.00', '50.00', '87.00', '71.00', '40.00', '55.00', '35.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3509', '0', '166.00', '51.00', '87.00', '71.00', '40.00', '55.00', '35.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3510', '0', '166.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3511', '0', '166.00', '53.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3512', '0', '166.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3513', '0', '166.00', '55.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3514', '0', '166.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3515', '0', '166.00', '57.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3516', '0', '166.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3517', '0', '166.00', '59.00', '90.00', '78.00', '41.00', '55.00', '35.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3518', '0', '166.00', '60.00', '90.00', '78.00', '41.00', '55.00', '35.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3519', '0', '166.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3520', '0', '166.00', '62.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3521', '0', '166.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3522', '0', '166.00', '64.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3523', '0', '166.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3524', '0', '166.00', '66.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3525', '0', '166.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3526', '0', '166.00', '68.00', '93.00', '85.00', '42.00', '55.00', '36.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3527', '0', '166.00', '69.00', '93.00', '85.00', '42.00', '55.00', '36.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3528', '0', '166.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3529', '0', '166.00', '71.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3530', '0', '166.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3531', '0', '166.00', '73.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3532', '0', '166.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3533', '0', '166.00', '75.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3534', '0', '166.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3535', '0', '166.00', '77.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3536', '0', '166.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3537', '0', '166.00', '79.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '59.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3538', '0', '166.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3539', '0', '166.00', '81.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '100.00');
INSERT INTO `standard_inch` VALUES ('3540', '0', '167.00', '42.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3541', '0', '167.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3542', '0', '167.00', '44.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3543', '0', '167.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3544', '0', '167.00', '46.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3545', '0', '167.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3546', '0', '167.00', '48.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3547', '0', '167.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3548', '0', '167.00', '50.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3549', '0', '167.00', '51.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '93.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3550', '0', '167.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3551', '0', '167.00', '53.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3552', '0', '167.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3553', '0', '167.00', '55.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3554', '0', '167.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3555', '0', '167.00', '57.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3556', '0', '167.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3557', '0', '167.00', '59.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3558', '0', '167.00', '60.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '95.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3559', '0', '167.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3560', '0', '167.00', '62.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3561', '0', '167.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3562', '0', '167.00', '64.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3563', '0', '167.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3564', '0', '167.00', '66.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3565', '0', '167.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3566', '0', '167.00', '68.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3567', '0', '167.00', '69.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '97.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3568', '0', '167.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3569', '0', '167.00', '71.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3570', '0', '167.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3571', '0', '167.00', '73.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3572', '0', '167.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3573', '0', '167.00', '75.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3574', '0', '167.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3575', '0', '167.00', '77.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3576', '0', '167.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3577', '0', '167.00', '79.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3578', '0', '167.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3579', '0', '167.00', '81.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '103.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3580', '0', '167.00', '82.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3581', '0', '168.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3582', '0', '168.00', '44.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3583', '0', '168.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3584', '0', '168.00', '46.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3585', '0', '168.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3586', '0', '168.00', '48.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3587', '0', '168.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3588', '0', '168.00', '50.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3589', '0', '168.00', '51.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '96.00', '55.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3590', '0', '168.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3591', '0', '168.00', '53.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3592', '0', '168.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3593', '0', '168.00', '55.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3594', '0', '168.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3595', '0', '168.00', '57.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3596', '0', '168.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3597', '0', '168.00', '59.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3598', '0', '168.00', '60.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '98.00', '56.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3599', '0', '168.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3600', '0', '168.00', '62.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3601', '0', '168.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3602', '0', '168.00', '64.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3603', '0', '168.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3604', '0', '168.00', '66.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3605', '0', '168.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3606', '0', '168.00', '68.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3607', '0', '168.00', '69.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3608', '0', '168.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3609', '0', '168.00', '71.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3610', '0', '168.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3611', '0', '168.00', '73.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3612', '0', '168.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3613', '0', '168.00', '75.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3614', '0', '168.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3615', '0', '168.00', '77.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3616', '0', '168.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '58.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3617', '0', '168.00', '79.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3618', '0', '168.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3619', '0', '168.00', '81.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3620', '0', '168.00', '82.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3621', '0', '168.00', '83.00', '101.00', '93.00', '42.00', '55.00', '36.00', '95.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_inch` VALUES ('3622', '0', '169.00', '44.00', '86.00', '66.00', '40.00', '56.00', '34.00', '68.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3623', '0', '169.00', '45.00', '87.00', '67.00', '40.00', '56.00', '34.00', '69.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3624', '0', '169.00', '46.00', '87.00', '67.00', '40.00', '56.00', '34.00', '69.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3625', '0', '169.00', '47.00', '88.00', '68.00', '40.00', '56.00', '34.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3626', '0', '169.00', '48.00', '88.00', '68.00', '40.00', '56.00', '34.00', '70.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3627', '0', '169.00', '49.00', '89.00', '69.00', '40.00', '56.00', '34.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3628', '0', '169.00', '50.00', '89.00', '69.00', '40.00', '56.00', '34.00', '71.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3629', '0', '169.00', '51.00', '90.00', '70.00', '40.00', '56.00', '34.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3630', '0', '169.00', '52.00', '90.00', '70.00', '40.00', '56.00', '34.00', '72.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3631', '0', '169.00', '53.00', '89.00', '73.00', '40.00', '56.00', '35.00', '75.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3632', '0', '169.00', '54.00', '90.00', '74.00', '40.00', '56.00', '35.00', '76.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3633', '0', '169.00', '55.00', '90.00', '74.00', '40.00', '56.00', '35.00', '76.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3634', '0', '169.00', '56.00', '91.00', '75.00', '40.00', '56.00', '35.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3635', '0', '169.00', '57.00', '91.00', '75.00', '40.00', '56.00', '35.00', '77.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3636', '0', '169.00', '58.00', '92.00', '76.00', '40.00', '56.00', '35.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3637', '0', '169.00', '59.00', '92.00', '76.00', '40.00', '56.00', '35.00', '78.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3638', '0', '169.00', '60.00', '93.00', '77.00', '40.00', '56.00', '35.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3639', '0', '169.00', '61.00', '93.00', '77.00', '40.00', '56.00', '35.00', '79.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3640', '0', '169.00', '62.00', '92.00', '80.00', '41.00', '56.00', '35.00', '82.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3641', '0', '169.00', '63.00', '93.00', '81.00', '41.00', '56.00', '35.00', '83.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3642', '0', '169.00', '64.00', '93.00', '81.00', '41.00', '56.00', '35.00', '83.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3643', '0', '169.00', '66.00', '94.00', '82.00', '41.00', '56.00', '35.00', '84.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3644', '0', '169.00', '67.00', '95.00', '83.00', '41.00', '56.00', '35.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3645', '0', '169.00', '68.00', '95.00', '83.00', '41.00', '56.00', '35.00', '85.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3646', '0', '169.00', '69.00', '96.00', '84.00', '41.00', '56.00', '35.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3647', '0', '169.00', '70.00', '96.00', '84.00', '41.00', '56.00', '35.00', '86.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3648', '0', '169.00', '71.00', '95.00', '87.00', '42.00', '56.00', '36.00', '89.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3649', '0', '169.00', '72.00', '96.00', '88.00', '42.00', '56.00', '36.00', '90.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3650', '0', '169.00', '73.00', '96.00', '88.00', '42.00', '56.00', '36.00', '90.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3651', '0', '169.00', '74.00', '97.00', '89.00', '42.00', '56.00', '36.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3652', '0', '169.00', '75.00', '97.00', '89.00', '42.00', '56.00', '36.00', '91.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3653', '0', '169.00', '76.00', '98.00', '90.00', '42.00', '56.00', '36.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3654', '0', '169.00', '77.00', '98.00', '90.00', '42.00', '56.00', '36.00', '92.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3655', '0', '169.00', '78.00', '99.00', '91.00', '42.00', '56.00', '36.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3656', '0', '169.00', '79.00', '99.00', '91.00', '42.00', '56.00', '36.00', '93.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3657', '0', '169.00', '80.00', '100.00', '92.00', '42.00', '56.00', '36.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3658', '0', '169.00', '81.00', '100.00', '92.00', '42.00', '56.00', '36.00', '94.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3659', '0', '169.00', '82.00', '101.00', '93.00', '42.00', '56.00', '36.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3660', '0', '169.00', '83.00', '101.00', '93.00', '42.00', '56.00', '36.00', '95.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3661', '0', '169.00', '84.00', '102.00', '94.00', '42.00', '56.00', '36.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3662', '0', '170.00', '45.00', '87.00', '67.00', '40.00', '56.00', '35.00', '69.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3663', '0', '170.00', '46.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3664', '0', '170.00', '47.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3665', '0', '170.00', '48.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3666', '0', '170.00', '49.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3667', '0', '170.00', '50.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3668', '0', '170.00', '51.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3669', '0', '170.00', '52.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3670', '0', '170.00', '53.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3671', '0', '170.00', '54.00', '90.00', '74.00', '40.00', '56.00', '36.00', '76.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3672', '0', '170.00', '55.00', '91.00', '75.00', '40.00', '56.00', '36.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3673', '0', '170.00', '56.00', '91.00', '75.00', '40.00', '56.00', '36.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3674', '0', '170.00', '57.00', '92.00', '76.00', '40.00', '56.00', '36.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3675', '0', '170.00', '58.00', '92.00', '76.00', '40.00', '56.00', '36.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3676', '0', '170.00', '59.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3677', '0', '170.00', '60.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3678', '0', '170.00', '61.00', '94.00', '78.00', '40.00', '56.00', '36.00', '80.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3679', '0', '170.00', '62.00', '94.00', '78.00', '40.00', '56.00', '36.00', '80.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3680', '0', '170.00', '63.00', '93.00', '81.00', '41.00', '56.00', '36.00', '83.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3681', '0', '170.00', '64.00', '94.00', '82.00', '41.00', '56.00', '36.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3682', '0', '170.00', '65.00', '94.00', '82.00', '41.00', '56.00', '36.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3683', '0', '170.00', '66.00', '95.00', '83.00', '41.00', '56.00', '36.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3684', '0', '170.00', '67.00', '95.00', '83.00', '41.00', '56.00', '36.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3685', '0', '170.00', '68.00', '96.00', '84.00', '41.00', '56.00', '36.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3686', '0', '170.00', '69.00', '96.00', '84.00', '41.00', '56.00', '36.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3687', '0', '170.00', '70.00', '97.00', '85.00', '41.00', '56.00', '36.00', '87.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3688', '0', '170.00', '71.00', '97.00', '85.00', '41.00', '56.00', '36.00', '87.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3689', '0', '170.00', '72.00', '96.00', '88.00', '42.00', '56.00', '37.00', '90.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3690', '0', '170.00', '73.00', '97.00', '89.00', '42.00', '56.00', '37.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3691', '0', '170.00', '74.00', '97.00', '89.00', '42.00', '56.00', '37.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3692', '0', '170.00', '75.00', '98.00', '90.00', '42.00', '56.00', '37.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3693', '0', '170.00', '76.00', '98.00', '90.00', '42.00', '56.00', '37.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3694', '0', '170.00', '77.00', '99.00', '91.00', '42.00', '56.00', '37.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3695', '0', '170.00', '78.00', '99.00', '91.00', '42.00', '56.00', '37.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3696', '0', '170.00', '79.00', '100.00', '92.00', '42.00', '56.00', '37.00', '94.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3697', '0', '170.00', '80.00', '100.00', '92.00', '42.00', '56.00', '37.00', '94.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3698', '0', '170.00', '81.00', '101.00', '93.00', '42.00', '56.00', '37.00', '95.00', '104.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3699', '0', '170.00', '82.00', '101.00', '93.00', '42.00', '56.00', '37.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3700', '0', '170.00', '83.00', '102.00', '94.00', '42.00', '56.00', '37.00', '96.00', '105.00', '60.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3701', '0', '170.00', '84.00', '102.00', '94.00', '42.00', '56.00', '37.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3702', '0', '170.00', '85.00', '103.00', '95.00', '42.00', '56.00', '37.00', '97.00', '106.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3703', '0', '171.00', '46.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3704', '0', '171.00', '47.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3705', '0', '171.00', '48.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3706', '0', '171.00', '49.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3707', '0', '171.00', '50.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3708', '0', '171.00', '51.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3709', '0', '171.00', '52.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3710', '0', '171.00', '53.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3711', '0', '171.00', '54.00', '92.00', '72.00', '40.00', '56.00', '35.00', '74.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3712', '0', '171.00', '55.00', '91.00', '75.00', '40.00', '56.00', '36.00', '121.00', '96.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3713', '0', '171.00', '56.00', '91.00', '75.00', '40.00', '56.00', '36.00', '110.00', '96.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3714', '0', '171.00', '57.00', '92.00', '76.00', '40.00', '56.00', '36.00', '100.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3715', '0', '171.00', '58.00', '92.00', '76.00', '40.00', '56.00', '36.00', '89.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3716', '0', '171.00', '59.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3717', '0', '171.00', '60.00', '93.00', '77.00', '40.00', '56.00', '36.00', '68.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3718', '0', '171.00', '61.00', '94.00', '78.00', '40.00', '56.00', '36.00', '58.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3719', '0', '171.00', '62.00', '94.00', '78.00', '40.00', '56.00', '36.00', '47.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3720', '0', '171.00', '63.00', '95.00', '79.00', '40.00', '56.00', '36.00', '37.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3721', '0', '171.00', '64.00', '94.00', '82.00', '41.00', '56.00', '37.00', '84.00', '98.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3722', '0', '171.00', '65.00', '94.00', '82.00', '41.00', '56.00', '37.00', '84.00', '98.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3723', '0', '171.00', '66.00', '95.00', '83.00', '41.00', '56.00', '37.00', '85.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3724', '0', '171.00', '67.00', '95.00', '83.00', '41.00', '56.00', '37.00', '85.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3725', '0', '171.00', '68.00', '96.00', '84.00', '41.00', '56.00', '37.00', '86.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3726', '0', '171.00', '69.00', '96.00', '84.00', '41.00', '56.00', '37.00', '86.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3727', '0', '171.00', '70.00', '97.00', '85.00', '41.00', '56.00', '37.00', '87.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3728', '0', '171.00', '71.00', '97.00', '85.00', '41.00', '56.00', '37.00', '87.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3729', '0', '171.00', '72.00', '98.00', '86.00', '41.00', '56.00', '37.00', '88.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3730', '0', '171.00', '73.00', '97.00', '89.00', '42.00', '56.00', '38.00', '91.00', '100.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3731', '0', '171.00', '74.00', '97.00', '89.00', '42.00', '56.00', '38.00', '91.00', '100.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3732', '0', '171.00', '75.00', '98.00', '90.00', '42.00', '56.00', '38.00', '92.00', '101.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3733', '0', '171.00', '76.00', '98.00', '90.00', '42.00', '56.00', '38.00', '92.00', '101.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3734', '0', '171.00', '77.00', '99.00', '91.00', '42.00', '56.00', '38.00', '93.00', '102.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3735', '0', '171.00', '78.00', '99.00', '91.00', '42.00', '56.00', '38.00', '93.00', '102.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3736', '0', '171.00', '79.00', '100.00', '92.00', '42.00', '56.00', '38.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3737', '0', '171.00', '80.00', '100.00', '92.00', '42.00', '56.00', '38.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3738', '0', '171.00', '81.00', '101.00', '93.00', '42.00', '56.00', '38.00', '95.00', '104.00', '59.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3739', '0', '171.00', '82.00', '101.00', '93.00', '42.00', '56.00', '38.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3740', '0', '171.00', '83.00', '102.00', '94.00', '42.00', '56.00', '38.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3741', '0', '171.00', '84.00', '102.00', '94.00', '42.00', '56.00', '38.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3742', '0', '171.00', '85.00', '103.00', '95.00', '42.00', '56.00', '38.00', '97.00', '106.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3743', '0', '171.00', '86.00', '103.00', '95.00', '42.00', '56.00', '38.00', '97.00', '106.00', '62.00', '102.00');
INSERT INTO `standard_inch` VALUES ('3744', '0', '172.00', '47.00', '89.00', '69.00', '40.00', '57.00', '35.00', '71.00', '94.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3745', '0', '172.00', '48.00', '89.00', '69.00', '40.00', '57.00', '35.00', '71.00', '95.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3746', '0', '172.00', '49.00', '90.00', '70.00', '40.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3747', '0', '172.00', '50.00', '90.00', '70.00', '40.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3748', '0', '172.00', '51.00', '91.00', '71.00', '40.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3749', '0', '172.00', '52.00', '91.00', '71.00', '40.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3750', '0', '172.00', '53.00', '92.00', '72.00', '40.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3751', '0', '172.00', '54.00', '92.00', '72.00', '40.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3752', '0', '172.00', '55.00', '93.00', '73.00', '40.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3753', '0', '172.00', '56.00', '92.00', '76.00', '40.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3754', '0', '172.00', '57.00', '92.00', '76.00', '40.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3755', '0', '172.00', '58.00', '93.00', '77.00', '40.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3756', '0', '172.00', '59.00', '93.00', '77.00', '40.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3757', '0', '172.00', '60.00', '94.00', '78.00', '40.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3758', '0', '172.00', '61.00', '94.00', '78.00', '40.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3759', '0', '172.00', '62.00', '95.00', '79.00', '40.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3760', '0', '172.00', '63.00', '95.00', '79.00', '40.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3761', '0', '172.00', '64.00', '96.00', '80.00', '40.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3762', '0', '172.00', '65.00', '95.00', '83.00', '41.00', '57.00', '37.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3763', '0', '172.00', '66.00', '95.00', '83.00', '41.00', '57.00', '37.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3764', '0', '172.00', '67.00', '96.00', '84.00', '41.00', '57.00', '37.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3765', '0', '172.00', '68.00', '96.00', '84.00', '41.00', '57.00', '37.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3766', '0', '172.00', '69.00', '97.00', '85.00', '41.00', '57.00', '37.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3767', '0', '172.00', '70.00', '97.00', '85.00', '41.00', '57.00', '37.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3768', '0', '172.00', '71.00', '98.00', '86.00', '41.00', '57.00', '37.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3769', '0', '172.00', '72.00', '98.00', '86.00', '41.00', '57.00', '37.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3770', '0', '172.00', '73.00', '99.00', '87.00', '41.00', '57.00', '37.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3771', '0', '172.00', '74.00', '98.00', '90.00', '42.00', '57.00', '38.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3772', '0', '172.00', '75.00', '98.00', '90.00', '42.00', '57.00', '38.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3773', '0', '172.00', '76.00', '99.00', '91.00', '42.00', '57.00', '38.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3774', '0', '172.00', '77.00', '99.00', '91.00', '42.00', '57.00', '38.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3775', '0', '172.00', '78.00', '100.00', '92.00', '42.00', '57.00', '38.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3776', '0', '172.00', '79.00', '100.00', '92.00', '42.00', '57.00', '38.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3777', '0', '172.00', '80.00', '101.00', '93.00', '42.00', '57.00', '38.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3778', '0', '172.00', '81.00', '101.00', '93.00', '42.00', '57.00', '38.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3779', '0', '172.00', '82.00', '102.00', '94.00', '42.00', '57.00', '38.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3780', '0', '172.00', '83.00', '102.00', '94.00', '42.00', '57.00', '38.00', '96.00', '105.00', '60.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3781', '0', '172.00', '84.00', '103.00', '95.00', '42.00', '57.00', '38.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3782', '0', '172.00', '85.00', '103.00', '95.00', '42.00', '57.00', '38.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3783', '0', '172.00', '86.00', '104.00', '96.00', '42.00', '57.00', '38.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3784', '0', '172.00', '87.00', '104.00', '96.00', '42.00', '57.00', '38.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3785', '0', '173.00', '48.00', '89.00', '69.00', '41.00', '57.00', '35.00', '71.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3786', '0', '173.00', '49.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3787', '0', '173.00', '50.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3788', '0', '173.00', '51.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3789', '0', '173.00', '52.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3790', '0', '173.00', '53.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3791', '0', '173.00', '54.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3792', '0', '173.00', '55.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3793', '0', '173.00', '56.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3794', '0', '173.00', '57.00', '92.00', '76.00', '41.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3795', '0', '173.00', '58.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3796', '0', '173.00', '59.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3797', '0', '173.00', '60.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3798', '0', '173.00', '61.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3799', '0', '173.00', '62.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3800', '0', '173.00', '63.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3801', '0', '173.00', '64.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3802', '0', '173.00', '65.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3803', '0', '173.00', '66.00', '95.00', '83.00', '42.00', '57.00', '36.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3804', '0', '173.00', '67.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3805', '0', '173.00', '68.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3806', '0', '173.00', '69.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3807', '0', '173.00', '70.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3808', '0', '173.00', '71.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3809', '0', '173.00', '72.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3810', '0', '173.00', '73.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3811', '0', '173.00', '74.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3812', '0', '173.00', '75.00', '98.00', '90.00', '43.00', '57.00', '37.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3813', '0', '173.00', '76.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3814', '0', '173.00', '77.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3815', '0', '173.00', '78.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3816', '0', '173.00', '79.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3817', '0', '173.00', '80.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3818', '0', '173.00', '81.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3819', '0', '173.00', '82.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3820', '0', '173.00', '83.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3821', '0', '173.00', '84.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '60.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3822', '0', '173.00', '85.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3823', '0', '173.00', '86.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '61.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3824', '0', '173.00', '87.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3825', '0', '173.00', '88.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '62.00', '103.00');
INSERT INTO `standard_inch` VALUES ('3826', '0', '174.00', '49.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3827', '0', '174.00', '50.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3828', '0', '174.00', '51.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3829', '0', '174.00', '52.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3830', '0', '174.00', '53.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3831', '0', '174.00', '54.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3832', '0', '174.00', '55.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3833', '0', '174.00', '56.00', '94.00', '74.00', '41.00', '57.00', '35.00', '76.00', '100.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3834', '0', '174.00', '57.00', '94.00', '74.00', '41.00', '57.00', '35.00', '76.00', '100.00', '56.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3835', '0', '174.00', '58.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3836', '0', '174.00', '59.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3837', '0', '174.00', '60.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3838', '0', '174.00', '61.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3839', '0', '174.00', '62.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3840', '0', '174.00', '63.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3841', '0', '174.00', '64.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3842', '0', '174.00', '65.00', '97.00', '81.00', '41.00', '57.00', '36.00', '83.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3843', '0', '174.00', '66.00', '97.00', '81.00', '41.00', '57.00', '36.00', '83.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3844', '0', '174.00', '67.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3845', '0', '174.00', '68.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3846', '0', '174.00', '69.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3847', '0', '174.00', '70.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3848', '0', '174.00', '71.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3849', '0', '174.00', '72.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3850', '0', '174.00', '73.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3851', '0', '174.00', '74.00', '100.00', '88.00', '42.00', '57.00', '36.00', '90.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3852', '0', '174.00', '75.00', '100.00', '88.00', '42.00', '57.00', '36.00', '90.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3853', '0', '174.00', '76.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3854', '0', '174.00', '77.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3855', '0', '174.00', '78.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3856', '0', '174.00', '79.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3857', '0', '174.00', '80.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3858', '0', '174.00', '81.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3859', '0', '174.00', '82.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3860', '0', '174.00', '83.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3861', '0', '174.00', '84.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3862', '0', '174.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3863', '0', '174.00', '85.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3864', '0', '174.00', '86.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3865', '0', '174.00', '87.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3866', '0', '174.00', '88.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3867', '0', '174.00', '89.00', '106.00', '98.00', '43.00', '57.00', '37.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3868', '0', '175.00', '50.00', '91.00', '71.00', '41.00', '58.00', '36.00', '113.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3869', '0', '175.00', '51.00', '92.00', '72.00', '41.00', '58.00', '36.00', '104.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3870', '0', '175.00', '52.00', '92.00', '72.00', '41.00', '58.00', '36.00', '94.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3871', '0', '175.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '85.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3872', '0', '175.00', '54.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3873', '0', '175.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '66.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3874', '0', '175.00', '56.00', '94.00', '74.00', '41.00', '58.00', '36.00', '56.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3875', '0', '175.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '47.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3876', '0', '175.00', '58.00', '95.00', '75.00', '41.00', '58.00', '36.00', '37.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3877', '0', '175.00', '59.00', '94.00', '78.00', '41.00', '58.00', '37.00', '80.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3878', '0', '175.00', '60.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3879', '0', '175.00', '61.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3880', '0', '175.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3881', '0', '175.00', '63.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3882', '0', '175.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3883', '0', '175.00', '65.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3884', '0', '175.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3885', '0', '175.00', '67.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3886', '0', '175.00', '68.00', '97.00', '85.00', '42.00', '58.00', '37.00', '87.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3887', '0', '175.00', '69.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3888', '0', '175.00', '70.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3889', '0', '175.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3890', '0', '175.00', '72.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3891', '0', '175.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3892', '0', '175.00', '74.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3893', '0', '175.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3894', '0', '175.00', '76.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3895', '0', '175.00', '77.00', '100.00', '92.00', '43.00', '58.00', '38.00', '94.00', '103.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3896', '0', '175.00', '78.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '103.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3897', '0', '175.00', '79.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3898', '0', '175.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3899', '0', '175.00', '81.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3900', '0', '175.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3901', '0', '175.00', '83.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3902', '0', '175.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3903', '0', '175.00', '85.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3904', '0', '175.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '107.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3905', '0', '175.00', '87.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3906', '0', '175.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3907', '0', '175.00', '89.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3908', '0', '175.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '109.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3909', '0', '176.00', '51.00', '92.00', '72.00', '41.00', '58.00', '36.00', '74.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3910', '0', '176.00', '52.00', '92.00', '72.00', '41.00', '58.00', '36.00', '74.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3911', '0', '176.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3912', '0', '176.00', '54.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3913', '0', '176.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3914', '0', '176.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3915', '0', '176.00', '56.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3916', '0', '176.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3917', '0', '176.00', '58.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3918', '0', '176.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3919', '0', '176.00', '60.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3920', '0', '176.00', '61.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3921', '0', '176.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3922', '0', '176.00', '63.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3923', '0', '176.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3924', '0', '176.00', '65.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3925', '0', '176.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3926', '0', '176.00', '67.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3927', '0', '176.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3928', '0', '176.00', '69.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3929', '0', '176.00', '70.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3930', '0', '176.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3931', '0', '176.00', '72.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3932', '0', '176.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3933', '0', '176.00', '74.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3934', '0', '176.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3935', '0', '176.00', '76.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3936', '0', '176.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3937', '0', '176.00', '78.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3938', '0', '176.00', '79.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3939', '0', '176.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3940', '0', '176.00', '81.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3941', '0', '176.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3942', '0', '176.00', '83.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3943', '0', '176.00', '85.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3944', '0', '176.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3945', '0', '176.00', '87.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '61.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3946', '0', '176.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3947', '0', '176.00', '89.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3948', '0', '176.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3949', '0', '176.00', '91.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '63.00', '104.00');
INSERT INTO `standard_inch` VALUES ('3950', '0', '177.00', '52.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '98.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3951', '0', '177.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3952', '0', '177.00', '54.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3953', '0', '177.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3954', '0', '177.00', '56.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3955', '0', '177.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3956', '0', '177.00', '58.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3957', '0', '177.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3958', '0', '177.00', '60.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3959', '0', '177.00', '61.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '100.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3960', '0', '177.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3961', '0', '177.00', '63.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3962', '0', '177.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3963', '0', '177.00', '65.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3964', '0', '177.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3965', '0', '177.00', '67.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3966', '0', '177.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3967', '0', '177.00', '69.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3968', '0', '177.00', '70.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '102.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3969', '0', '177.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3970', '0', '177.00', '72.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3971', '0', '177.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3972', '0', '177.00', '74.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3973', '0', '177.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3974', '0', '177.00', '76.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3975', '0', '177.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3976', '0', '177.00', '78.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3977', '0', '177.00', '79.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '104.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3978', '0', '177.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3979', '0', '177.00', '81.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3980', '0', '177.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3981', '0', '177.00', '83.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3982', '0', '177.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3983', '0', '177.00', '85.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3984', '0', '177.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3985', '0', '177.00', '87.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3986', '0', '177.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '61.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3987', '0', '177.00', '89.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '109.00', '62.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3988', '0', '177.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '62.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3989', '0', '177.00', '91.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '110.00', '63.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3990', '0', '177.00', '92.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '63.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3991', '0', '178.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3992', '0', '178.00', '54.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3993', '0', '178.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3994', '0', '178.00', '56.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3995', '0', '178.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3996', '0', '178.00', '58.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3997', '0', '178.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3998', '0', '178.00', '60.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('3999', '0', '178.00', '61.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '103.00', '57.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4000', '0', '178.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4001', '0', '178.00', '63.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4002', '0', '178.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4003', '0', '178.00', '65.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4004', '0', '178.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4005', '0', '178.00', '67.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4006', '0', '178.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4007', '0', '178.00', '69.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '105.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4008', '0', '178.00', '70.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '105.00', '58.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4009', '0', '178.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4010', '0', '178.00', '72.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4011', '0', '178.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4012', '0', '178.00', '74.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4013', '0', '178.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4014', '0', '178.00', '76.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4015', '0', '178.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4016', '0', '178.00', '78.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '107.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4017', '0', '178.00', '79.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '107.00', '59.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4018', '0', '178.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4019', '0', '178.00', '81.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4020', '0', '178.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4021', '0', '178.00', '83.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4022', '0', '178.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4023', '0', '178.00', '85.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4024', '0', '178.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4025', '0', '178.00', '87.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4026', '0', '178.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '60.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4027', '0', '178.00', '89.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '61.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4028', '0', '178.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '62.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4029', '0', '178.00', '91.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '62.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4030', '0', '178.00', '92.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '63.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4031', '0', '178.00', '93.00', '109.00', '101.00', '43.00', '58.00', '38.00', '103.00', '112.00', '63.00', '105.00');
INSERT INTO `standard_inch` VALUES ('4032', '0', '179.00', '54.00', '94.00', '74.00', '42.00', '59.00', '36.00', '76.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4033', '0', '179.00', '55.00', '95.00', '75.00', '42.00', '59.00', '36.00', '77.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4034', '0', '179.00', '56.00', '95.00', '75.00', '42.00', '59.00', '36.00', '77.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4035', '0', '179.00', '57.00', '96.00', '76.00', '42.00', '59.00', '36.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4036', '0', '179.00', '58.00', '96.00', '76.00', '42.00', '59.00', '36.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4037', '0', '179.00', '59.00', '97.00', '77.00', '42.00', '59.00', '36.00', '79.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4038', '0', '179.00', '60.00', '97.00', '77.00', '42.00', '59.00', '36.00', '79.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4039', '0', '179.00', '61.00', '98.00', '78.00', '42.00', '59.00', '36.00', '80.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4040', '0', '179.00', '62.00', '98.00', '78.00', '42.00', '59.00', '36.00', '80.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4041', '0', '179.00', '63.00', '97.00', '81.00', '42.00', '59.00', '37.00', '83.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4042', '0', '179.00', '64.00', '98.00', '82.00', '42.00', '59.00', '37.00', '84.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4043', '0', '179.00', '65.00', '98.00', '82.00', '42.00', '59.00', '37.00', '84.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4044', '0', '179.00', '66.00', '99.00', '83.00', '42.00', '59.00', '37.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4045', '0', '179.00', '67.00', '99.00', '83.00', '42.00', '59.00', '37.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4046', '0', '179.00', '68.00', '100.00', '84.00', '42.00', '59.00', '37.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4047', '0', '179.00', '69.00', '100.00', '84.00', '42.00', '59.00', '37.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4048', '0', '179.00', '70.00', '101.00', '85.00', '42.00', '59.00', '37.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4049', '0', '179.00', '71.00', '101.00', '85.00', '42.00', '59.00', '37.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4050', '0', '179.00', '72.00', '100.00', '88.00', '43.00', '59.00', '37.00', '90.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4051', '0', '179.00', '73.00', '101.00', '89.00', '43.00', '59.00', '37.00', '91.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4052', '0', '179.00', '74.00', '101.00', '89.00', '43.00', '59.00', '37.00', '91.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4053', '0', '179.00', '75.00', '102.00', '90.00', '43.00', '59.00', '37.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4054', '0', '179.00', '76.00', '102.00', '90.00', '43.00', '59.00', '37.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4055', '0', '179.00', '77.00', '103.00', '91.00', '43.00', '59.00', '37.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4056', '0', '179.00', '78.00', '103.00', '91.00', '43.00', '59.00', '37.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4057', '0', '179.00', '79.00', '104.00', '92.00', '43.00', '59.00', '37.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4058', '0', '179.00', '80.00', '104.00', '92.00', '43.00', '59.00', '37.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4059', '0', '179.00', '81.00', '103.00', '95.00', '44.00', '59.00', '38.00', '97.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4060', '0', '179.00', '82.00', '104.00', '96.00', '44.00', '59.00', '38.00', '98.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4061', '0', '179.00', '83.00', '104.00', '96.00', '44.00', '59.00', '38.00', '98.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4062', '0', '179.00', '84.00', '105.00', '97.00', '44.00', '59.00', '38.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4063', '0', '179.00', '85.00', '105.00', '97.00', '44.00', '59.00', '38.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4064', '0', '179.00', '86.00', '106.00', '98.00', '44.00', '59.00', '38.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4065', '0', '179.00', '87.00', '106.00', '98.00', '44.00', '59.00', '38.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4066', '0', '179.00', '88.00', '107.00', '99.00', '44.00', '59.00', '38.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4067', '0', '179.00', '89.00', '107.00', '99.00', '44.00', '59.00', '38.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4068', '0', '179.00', '90.00', '108.00', '100.00', '44.00', '59.00', '38.00', '102.00', '110.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4069', '0', '179.00', '91.00', '108.00', '100.00', '44.00', '59.00', '38.00', '102.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4070', '0', '179.00', '92.00', '109.00', '101.00', '44.00', '59.00', '38.00', '103.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4071', '0', '179.00', '93.00', '109.00', '101.00', '44.00', '59.00', '38.00', '103.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4072', '0', '179.00', '94.00', '110.00', '102.00', '44.00', '59.00', '38.00', '104.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4073', '0', '180.00', '55.00', '95.00', '75.00', '42.00', '59.00', '37.00', '77.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4074', '0', '180.00', '56.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4075', '0', '180.00', '57.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4076', '0', '180.00', '58.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4077', '0', '180.00', '59.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4078', '0', '180.00', '60.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4079', '0', '180.00', '61.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4080', '0', '180.00', '62.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4081', '0', '180.00', '63.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4082', '0', '180.00', '64.00', '98.00', '82.00', '42.00', '59.00', '38.00', '84.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4083', '0', '180.00', '65.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4084', '0', '180.00', '66.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4085', '0', '180.00', '67.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4086', '0', '180.00', '68.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4087', '0', '180.00', '69.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4088', '0', '180.00', '70.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4089', '0', '180.00', '71.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4090', '0', '180.00', '72.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4091', '0', '180.00', '73.00', '101.00', '89.00', '43.00', '59.00', '38.00', '91.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4092', '0', '180.00', '74.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4093', '0', '180.00', '75.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4094', '0', '180.00', '76.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4095', '0', '180.00', '77.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4096', '0', '180.00', '78.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4097', '0', '180.00', '79.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4098', '0', '180.00', '80.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4099', '0', '180.00', '81.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4100', '0', '180.00', '82.00', '104.00', '96.00', '44.00', '59.00', '39.00', '98.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4101', '0', '180.00', '83.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4102', '0', '180.00', '84.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4103', '0', '180.00', '85.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4104', '0', '180.00', '86.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4105', '0', '180.00', '87.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4106', '0', '180.00', '88.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4107', '0', '180.00', '89.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4108', '0', '180.00', '90.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4109', '0', '180.00', '91.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4110', '0', '180.00', '92.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4111', '0', '180.00', '93.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4112', '0', '180.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4113', '0', '180.00', '95.00', '111.00', '103.00', '44.00', '59.00', '39.00', '113.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4114', '0', '181.00', '56.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4115', '0', '181.00', '57.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4116', '0', '181.00', '58.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4117', '0', '181.00', '59.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4118', '0', '181.00', '60.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4119', '0', '181.00', '61.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4120', '0', '181.00', '62.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4121', '0', '181.00', '63.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4122', '0', '181.00', '64.00', '100.00', '80.00', '42.00', '59.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4123', '0', '181.00', '65.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4124', '0', '181.00', '66.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4125', '0', '181.00', '67.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4126', '0', '181.00', '68.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4127', '0', '181.00', '69.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4128', '0', '181.00', '70.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4129', '0', '181.00', '71.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4130', '0', '181.00', '72.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4131', '0', '181.00', '73.00', '103.00', '87.00', '42.00', '59.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4132', '0', '181.00', '74.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4133', '0', '181.00', '75.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4134', '0', '181.00', '76.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4135', '0', '181.00', '77.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4136', '0', '181.00', '78.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4137', '0', '181.00', '79.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4138', '0', '181.00', '80.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4139', '0', '181.00', '81.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4140', '0', '181.00', '82.00', '106.00', '94.00', '43.00', '59.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4141', '0', '181.00', '83.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4142', '0', '181.00', '84.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4143', '0', '181.00', '85.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4144', '0', '181.00', '86.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4145', '0', '181.00', '87.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4146', '0', '181.00', '88.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4147', '0', '181.00', '89.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4148', '0', '181.00', '90.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4149', '0', '181.00', '91.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4150', '0', '181.00', '92.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4151', '0', '181.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4152', '0', '181.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4153', '0', '181.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4154', '0', '181.00', '96.00', '111.00', '103.00', '44.00', '59.00', '39.00', '113.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4155', '0', '182.00', '57.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4156', '0', '182.00', '58.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4157', '0', '182.00', '59.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4158', '0', '182.00', '60.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4159', '0', '182.00', '61.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4160', '0', '182.00', '62.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4161', '0', '182.00', '63.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4162', '0', '182.00', '64.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4163', '0', '182.00', '65.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4164', '0', '182.00', '66.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4165', '0', '182.00', '67.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4166', '0', '182.00', '68.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4167', '0', '182.00', '69.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4168', '0', '182.00', '70.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4169', '0', '182.00', '71.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4170', '0', '182.00', '72.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4171', '0', '182.00', '73.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4172', '0', '182.00', '74.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4173', '0', '182.00', '75.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4174', '0', '182.00', '76.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4175', '0', '182.00', '77.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4176', '0', '182.00', '78.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4177', '0', '182.00', '79.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4178', '0', '182.00', '80.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4179', '0', '182.00', '81.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4180', '0', '182.00', '82.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4181', '0', '182.00', '83.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4182', '0', '182.00', '84.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4183', '0', '182.00', '85.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4184', '0', '182.00', '86.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4185', '0', '182.00', '87.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4186', '0', '182.00', '88.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4187', '0', '182.00', '89.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4188', '0', '182.00', '90.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4189', '0', '182.00', '91.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4190', '0', '182.00', '92.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4191', '0', '182.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4192', '0', '182.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4193', '0', '182.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4194', '0', '182.00', '96.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4195', '0', '182.00', '97.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4196', '0', '183.00', '58.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4197', '0', '183.00', '59.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4198', '0', '183.00', '60.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4199', '0', '183.00', '61.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4200', '0', '183.00', '62.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4201', '0', '183.00', '63.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4202', '0', '183.00', '64.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4203', '0', '183.00', '65.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4204', '0', '183.00', '66.00', '100.00', '80.00', '42.00', '59.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4205', '0', '183.00', '67.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4206', '0', '183.00', '68.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4207', '0', '183.00', '69.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4208', '0', '183.00', '70.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4209', '0', '183.00', '71.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4210', '0', '183.00', '72.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4211', '0', '183.00', '73.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4212', '0', '183.00', '74.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4213', '0', '183.00', '75.00', '103.00', '87.00', '42.00', '59.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4214', '0', '183.00', '76.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4215', '0', '183.00', '77.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4216', '0', '183.00', '78.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4217', '0', '183.00', '79.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4218', '0', '183.00', '80.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4219', '0', '183.00', '81.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4220', '0', '183.00', '82.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4221', '0', '183.00', '83.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4222', '0', '183.00', '84.00', '106.00', '94.00', '43.00', '59.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4223', '0', '183.00', '85.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4224', '0', '183.00', '86.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4225', '0', '183.00', '87.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4226', '0', '183.00', '88.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4227', '0', '183.00', '89.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4228', '0', '183.00', '90.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4229', '0', '183.00', '91.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4230', '0', '183.00', '92.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4231', '0', '183.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4232', '0', '183.00', '94.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4233', '0', '183.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4234', '0', '183.00', '96.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4235', '0', '183.00', '97.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4236', '0', '183.00', '98.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4237', '0', '184.00', '59.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4238', '0', '184.00', '60.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4239', '0', '184.00', '61.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4240', '0', '184.00', '62.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4241', '0', '184.00', '63.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4242', '0', '184.00', '64.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4243', '0', '184.00', '65.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4244', '0', '184.00', '66.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4245', '0', '184.00', '67.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4246', '0', '184.00', '68.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4247', '0', '184.00', '69.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4248', '0', '184.00', '70.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4249', '0', '184.00', '71.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4250', '0', '184.00', '72.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4251', '0', '184.00', '73.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4252', '0', '184.00', '74.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4253', '0', '184.00', '75.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4254', '0', '184.00', '76.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4255', '0', '184.00', '77.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4256', '0', '184.00', '78.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4257', '0', '184.00', '79.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4258', '0', '184.00', '80.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4259', '0', '184.00', '81.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4260', '0', '184.00', '82.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4261', '0', '184.00', '83.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4262', '0', '184.00', '84.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4263', '0', '184.00', '85.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4264', '0', '184.00', '86.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4265', '0', '184.00', '87.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4266', '0', '184.00', '88.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4267', '0', '184.00', '89.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4268', '0', '184.00', '90.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4269', '0', '184.00', '91.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4270', '0', '184.00', '92.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4271', '0', '184.00', '93.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4272', '0', '184.00', '94.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4273', '0', '184.00', '95.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4274', '0', '184.00', '96.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4275', '0', '184.00', '97.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4276', '0', '184.00', '98.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4277', '0', '184.00', '99.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4278', '0', '185.00', '60.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4279', '0', '185.00', '61.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4280', '0', '185.00', '62.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4281', '0', '185.00', '63.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4282', '0', '185.00', '64.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4283', '0', '185.00', '65.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4284', '0', '185.00', '66.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4285', '0', '185.00', '67.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4286', '0', '185.00', '68.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4287', '0', '185.00', '69.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4288', '0', '185.00', '70.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4289', '0', '185.00', '71.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4290', '0', '185.00', '72.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4291', '0', '185.00', '73.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4292', '0', '185.00', '74.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4293', '0', '185.00', '75.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4294', '0', '185.00', '76.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4295', '0', '185.00', '77.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4296', '0', '185.00', '78.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4297', '0', '185.00', '79.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4298', '0', '185.00', '80.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4299', '0', '185.00', '81.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4300', '0', '185.00', '82.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4301', '0', '185.00', '83.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4302', '0', '185.00', '84.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4303', '0', '185.00', '85.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4304', '0', '185.00', '86.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4305', '0', '185.00', '87.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4306', '0', '185.00', '88.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4307', '0', '185.00', '89.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4308', '0', '185.00', '90.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4309', '0', '185.00', '91.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4310', '0', '185.00', '92.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4311', '0', '185.00', '93.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4312', '0', '185.00', '94.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4313', '0', '185.00', '95.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4314', '0', '185.00', '96.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4315', '0', '185.00', '97.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4316', '0', '185.00', '98.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4317', '0', '185.00', '99.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4318', '0', '185.00', '100.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4319', '0', '186.00', '61.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4320', '0', '186.00', '62.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4321', '0', '186.00', '63.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4322', '0', '186.00', '64.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4323', '0', '186.00', '65.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4324', '0', '186.00', '66.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4325', '0', '186.00', '67.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4326', '0', '186.00', '68.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4327', '0', '186.00', '69.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4328', '0', '186.00', '70.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4329', '0', '186.00', '71.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4330', '0', '186.00', '72.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4331', '0', '186.00', '73.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4332', '0', '186.00', '74.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4333', '0', '186.00', '75.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4334', '0', '186.00', '76.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4335', '0', '186.00', '77.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4336', '0', '186.00', '78.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4337', '0', '186.00', '79.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4338', '0', '186.00', '80.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4339', '0', '186.00', '81.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4340', '0', '186.00', '82.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4341', '0', '186.00', '83.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4342', '0', '186.00', '84.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4343', '0', '186.00', '85.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4344', '0', '186.00', '86.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4345', '0', '186.00', '87.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4346', '0', '186.00', '88.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4347', '0', '186.00', '89.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4348', '0', '186.00', '90.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4349', '0', '186.00', '91.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4350', '0', '186.00', '92.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4351', '0', '186.00', '93.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4352', '0', '186.00', '94.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4353', '0', '186.00', '95.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4354', '0', '186.00', '96.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4355', '0', '186.00', '97.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4356', '0', '186.00', '98.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4357', '0', '186.00', '99.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4358', '0', '186.00', '100.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4359', '0', '186.00', '101.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_inch` VALUES ('4360', '0', '187.00', '62.00', '98.00', '78.00', '43.00', '61.00', '38.00', '80.00', '103.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4361', '0', '187.00', '63.00', '99.00', '79.00', '43.00', '61.00', '38.00', '81.00', '104.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4362', '0', '187.00', '64.00', '99.00', '79.00', '43.00', '61.00', '38.00', '81.00', '104.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4363', '0', '187.00', '65.00', '100.00', '80.00', '43.00', '61.00', '38.00', '82.00', '105.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4364', '0', '187.00', '66.00', '100.00', '80.00', '43.00', '61.00', '38.00', '82.00', '105.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4365', '0', '187.00', '67.00', '101.00', '81.00', '43.00', '61.00', '38.00', '83.00', '106.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4366', '0', '187.00', '68.00', '101.00', '81.00', '43.00', '61.00', '38.00', '83.00', '106.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4367', '0', '187.00', '69.00', '102.00', '82.00', '43.00', '61.00', '38.00', '84.00', '107.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4368', '0', '187.00', '70.00', '102.00', '82.00', '43.00', '61.00', '38.00', '84.00', '107.00', '59.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4369', '0', '187.00', '71.00', '101.00', '85.00', '43.00', '61.00', '39.00', '87.00', '105.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4370', '0', '187.00', '72.00', '102.00', '86.00', '43.00', '61.00', '39.00', '88.00', '106.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4371', '0', '187.00', '73.00', '102.00', '86.00', '43.00', '61.00', '39.00', '88.00', '106.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4372', '0', '187.00', '74.00', '103.00', '87.00', '43.00', '61.00', '39.00', '89.00', '107.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4373', '0', '187.00', '75.00', '103.00', '87.00', '43.00', '61.00', '39.00', '89.00', '107.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4374', '0', '187.00', '76.00', '104.00', '88.00', '43.00', '61.00', '39.00', '90.00', '108.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4375', '0', '187.00', '77.00', '104.00', '88.00', '43.00', '61.00', '39.00', '90.00', '108.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4376', '0', '187.00', '78.00', '105.00', '89.00', '43.00', '61.00', '39.00', '91.00', '109.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4377', '0', '187.00', '79.00', '105.00', '89.00', '43.00', '61.00', '39.00', '91.00', '109.00', '60.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4378', '0', '187.00', '80.00', '104.00', '92.00', '44.00', '61.00', '39.00', '94.00', '107.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4379', '0', '187.00', '81.00', '105.00', '93.00', '44.00', '61.00', '39.00', '95.00', '108.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4380', '0', '187.00', '82.00', '105.00', '93.00', '44.00', '61.00', '39.00', '95.00', '108.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4381', '0', '187.00', '83.00', '106.00', '94.00', '44.00', '61.00', '39.00', '96.00', '109.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4382', '0', '187.00', '84.00', '106.00', '94.00', '44.00', '61.00', '39.00', '96.00', '109.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4383', '0', '187.00', '85.00', '107.00', '95.00', '44.00', '61.00', '39.00', '97.00', '110.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4384', '0', '187.00', '86.00', '107.00', '95.00', '44.00', '61.00', '39.00', '97.00', '110.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4385', '0', '187.00', '87.00', '108.00', '96.00', '44.00', '61.00', '39.00', '98.00', '111.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4386', '0', '187.00', '88.00', '108.00', '96.00', '44.00', '61.00', '39.00', '98.00', '111.00', '61.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4387', '0', '187.00', '89.00', '107.00', '99.00', '45.00', '61.00', '40.00', '101.00', '109.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4388', '0', '187.00', '90.00', '108.00', '100.00', '45.00', '61.00', '40.00', '102.00', '110.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4389', '0', '187.00', '91.00', '108.00', '100.00', '45.00', '61.00', '40.00', '102.00', '110.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4390', '0', '187.00', '92.00', '109.00', '101.00', '45.00', '61.00', '40.00', '103.00', '111.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4391', '0', '187.00', '93.00', '109.00', '101.00', '45.00', '61.00', '40.00', '103.00', '111.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4392', '0', '187.00', '94.00', '110.00', '102.00', '45.00', '61.00', '40.00', '104.00', '112.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4393', '0', '187.00', '95.00', '110.00', '102.00', '45.00', '61.00', '40.00', '104.00', '112.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4394', '0', '187.00', '96.00', '111.00', '103.00', '45.00', '61.00', '40.00', '105.00', '113.00', '62.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4395', '0', '187.00', '97.00', '111.00', '103.00', '45.00', '61.00', '40.00', '105.00', '113.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4396', '0', '187.00', '98.00', '112.00', '104.00', '45.00', '61.00', '40.00', '106.00', '114.00', '63.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4397', '0', '187.00', '99.00', '112.00', '104.00', '45.00', '61.00', '40.00', '106.00', '114.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4398', '0', '187.00', '100.00', '113.00', '105.00', '45.00', '61.00', '40.00', '107.00', '115.00', '64.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4399', '0', '187.00', '101.00', '113.00', '105.00', '45.00', '61.00', '40.00', '107.00', '115.00', '65.00', '107.00');
INSERT INTO `standard_inch` VALUES ('4400', '0', '187.00', '102.00', '114.00', '106.00', '45.00', '61.00', '40.00', '108.00', '116.00', '65.00', '107.00');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('24', '1', '0', '[0],', '总公司', '总公司', '', null);
INSERT INTO `sys_dept` VALUES ('25', '2', '24', '[0],[24],', '开发部', '开发部', '', null);
INSERT INTO `sys_dept` VALUES ('26', '3', '24', '[0],[24],', '运营部', '运营部', '', null);
INSERT INTO `sys_dept` VALUES ('27', '4', '24', '[0],[24],', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('16', '0', '0', '状态', null);
INSERT INTO `sys_dict` VALUES ('17', '1', '16', '启用', null);
INSERT INTO `sys_dict` VALUES ('18', '2', '16', '禁用', null);
INSERT INTO `sys_dict` VALUES ('29', '0', '0', '性别', null);
INSERT INTO `sys_dict` VALUES ('30', '1', '29', '男', null);
INSERT INTO `sys_dict` VALUES ('31', '2', '29', '女', null);
INSERT INTO `sys_dict` VALUES ('35', '0', '0', '账号状态', null);
INSERT INTO `sys_dict` VALUES ('36', '1', '35', '启用', null);
INSERT INTO `sys_dict` VALUES ('37', '2', '35', '冻结', null);
INSERT INTO `sys_dict` VALUES ('38', '3', '35', '已删除', null);

-- ----------------------------
-- Table structure for sys_expense
-- ----------------------------
DROP TABLE IF EXISTS `sys_expense`;
CREATE TABLE `sys_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
  `desc` varchar(255) DEFAULT '' COMMENT '描述',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT NULL COMMENT '状态: 1.待提交  2:待审核   3.审核通过 4:驳回',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `processId` varchar(255) DEFAULT NULL COMMENT '流程定义id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='报销表';

-- ----------------------------
-- Records of sys_expense
-- ----------------------------

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('216', '登录失败日志', null, '2018-05-05 10:33:46', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('217', '登录日志', '1', '2018-05-05 10:41:27', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('218', '登录日志', '1', '2018-05-05 11:00:51', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('219', '登录失败日志', null, '2018-05-05 11:01:00', '成功', '账号:admin,账号密码错误', '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('220', '登录日志', '1', '2018-05-05 11:02:29', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('221', '登录日志', '1', '2018-05-05 11:03:02', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('222', '登录日志', '1', '2018-05-05 11:16:34', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('223', '退出日志', '1', '2018-05-05 12:08:20', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('224', '登录日志', '1', '2018-05-05 14:14:17', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('225', '登录日志', '1', '2018-05-05 14:16:15', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('226', '登录日志', '1', '2018-05-05 15:04:25', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('227', '登录日志', '1', '2018-05-05 15:08:11', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('228', '登录日志', '1', '2018-05-05 15:16:11', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('229', '登录日志', '1', '2018-05-05 16:11:45', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('230', '登录日志', '1', '2018-05-05 16:15:38', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('231', '登录日志', '1', '2018-05-05 16:19:26', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('232', '登录日志', '1', '2018-05-06 12:44:18', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('233', '登录日志', '1', '2018-05-06 12:53:08', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('234', '登录日志', '1', '2018-05-06 12:54:16', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('235', '登录日志', '1', '2018-05-06 12:55:48', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('236', '登录日志', '1', '2018-05-06 12:57:11', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('237', '登录日志', '1', '2018-05-06 12:58:42', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('238', '登录日志', '1', '2018-05-06 13:01:00', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('239', '登录日志', '1', '2018-05-06 13:40:58', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('240', '登录日志', '1', '2018-05-06 13:42:50', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('241', '登录日志', '1', '2018-05-06 13:47:28', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `sys_login_log` VALUES ('242', '登录日志', '1', '2018-05-06 13:50:38', '成功', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'fa-user', '#', '4', '1', '1', null, '1', '1');
INSERT INTO `sys_menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `sys_menu` VALUES ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('148', 'code', '0', '[0],', '代码生成', 'fa-code', '/code', '3', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);
INSERT INTO `sys_menu` VALUES ('168', 'expense', '0', '[0],', '报销管理', 'fa-clone', '#', '5', '1', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('169', 'expense_fill', 'expense', '[0],[expense],', '报销申请', '', '/expense', '1', '2', '1', null, '1', null);
INSERT INTO `sys_menu` VALUES ('170', 'expense_progress', 'expense', '[0],[expense],', '报销审批', '', '/process', '2', '2', '1', null, '1', null);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('6', '世界', '10', '欢迎使用Guns管理系统', '2017-01-11 08:53:20', '1');
INSERT INTO `sys_notice` VALUES ('8', '你好', null, '你好', '2017-05-10 19:28:57', '1');

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES ('550', '异常日志', '', '1', null, null, '2018-05-06 13:41:21', '失败', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.binding.BindingException: Parameter \'g\' not found. Available parameters are [gender, w, h, param3, param1, param2]\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:77)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.TProxy100.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:166)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:82)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.TProxy118.getByHW(Unknown Source)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImpl.getStandardByHW(StandardServiceImpl.java:35)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImplTTFastClassBySpringCGLIBTT179676d5.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at com.alibaba.druid.support.spring.stat.DruidStatInterceptor.invoke(DruidStatInterceptor.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImplTTEnhancerBySpringCGLIBTT4270a052.getStandardByHW(<generated>)\r\n	at com.stylefeng.guns.modular.system.controller.JeansController.upload(JeansController.java:108)\r\n	at com.stylefeng.guns.modular.system.controller.JeansControllerTTFastClassBySpringCGLIBTTf14f1307.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionHolderInterceptor.sessionKit(SessionHolderInterceptor.java:29)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.controller.JeansControllerTTEnhancerBySpringCGLIBTT927e97a9.upload(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:967)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:901)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:108)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1459)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: org.apache.ibatis.binding.BindingException: Parameter \'g\' not found. Available parameters are [gender, w, h, param3, param1, param2]\r\n	at org.apache.ibatis.binding.MapperMethodTParamMap.get(MapperMethod.java:202)\r\n	at org.apache.ibatis.reflection.wrapper.MapWrapper.get(MapWrapper.java:45)\r\n	at org.apache.ibatis.reflection.MetaObject.getValue(MetaObject.java:122)\r\n	at org.apache.ibatis.executor.BaseExecutor.createCacheKey(BaseExecutor.java:219)\r\n	at org.apache.ibatis.executor.CachingExecutor.createCacheKey(CachingExecutor.java:146)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:82)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy133.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:77)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 107 more\r\n');
INSERT INTO `sys_operation_log` VALUES ('551', '异常日志', '', '1', null, null, '2018-05-06 13:41:26', '失败', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.binding.BindingException: Parameter \'g\' not found. Available parameters are [gender, w, h, param3, param1, param2]\r\n	at org.mybatis.spring.MyBatisExceptionTranslator.translateExceptionIfPossible(MyBatisExceptionTranslator.java:77)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:446)\r\n	at com.sun.proxy.TProxy100.selectOne(Unknown Source)\r\n	at org.mybatis.spring.SqlSessionTemplate.selectOne(SqlSessionTemplate.java:166)\r\n	at org.apache.ibatis.binding.MapperMethod.execute(MapperMethod.java:82)\r\n	at org.apache.ibatis.binding.MapperProxy.invoke(MapperProxy.java:59)\r\n	at com.sun.proxy.TProxy118.getByHW(Unknown Source)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImpl.getStandardByHW(StandardServiceImpl.java:35)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImplTTFastClassBySpringCGLIBTT179676d5.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at com.alibaba.druid.support.spring.stat.DruidStatInterceptor.invoke(DruidStatInterceptor.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.service.impl.StandardServiceImplTTEnhancerBySpringCGLIBTT4270a052.getStandardByHW(<generated>)\r\n	at com.stylefeng.guns.modular.system.controller.JeansController.upload(JeansController.java:108)\r\n	at com.stylefeng.guns.modular.system.controller.JeansControllerTTFastClassBySpringCGLIBTTf14f1307.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionHolderInterceptor.sessionKit(SessionHolderInterceptor.java:29)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.controller.JeansControllerTTEnhancerBySpringCGLIBTT927e97a9.upload(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:967)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:901)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:108)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:199)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1459)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: org.apache.ibatis.binding.BindingException: Parameter \'g\' not found. Available parameters are [gender, w, h, param3, param1, param2]\r\n	at org.apache.ibatis.binding.MapperMethodTParamMap.get(MapperMethod.java:202)\r\n	at org.apache.ibatis.reflection.wrapper.MapWrapper.get(MapWrapper.java:45)\r\n	at org.apache.ibatis.reflection.MetaObject.getValue(MetaObject.java:122)\r\n	at org.apache.ibatis.executor.BaseExecutor.createCacheKey(BaseExecutor.java:219)\r\n	at org.apache.ibatis.executor.CachingExecutor.createCacheKey(CachingExecutor.java:146)\r\n	at org.apache.ibatis.executor.CachingExecutor.query(CachingExecutor.java:82)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.apache.ibatis.plugin.Plugin.invoke(Plugin.java:63)\r\n	at com.sun.proxy.TProxy133.query(Unknown Source)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:148)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectList(DefaultSqlSession.java:141)\r\n	at org.apache.ibatis.session.defaults.DefaultSqlSession.selectOne(DefaultSqlSession.java:77)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.mybatis.spring.SqlSessionTemplateTSqlSessionInterceptor.invoke(SqlSessionTemplate.java:433)\r\n	... 107 more\r\n');

-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` bigint(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3737 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_relation
-- ----------------------------
INSERT INTO `sys_relation` VALUES ('3377', '105', '5');
INSERT INTO `sys_relation` VALUES ('3378', '106', '5');
INSERT INTO `sys_relation` VALUES ('3379', '107', '5');
INSERT INTO `sys_relation` VALUES ('3380', '108', '5');
INSERT INTO `sys_relation` VALUES ('3381', '109', '5');
INSERT INTO `sys_relation` VALUES ('3382', '110', '5');
INSERT INTO `sys_relation` VALUES ('3383', '111', '5');
INSERT INTO `sys_relation` VALUES ('3384', '112', '5');
INSERT INTO `sys_relation` VALUES ('3385', '113', '5');
INSERT INTO `sys_relation` VALUES ('3386', '114', '5');
INSERT INTO `sys_relation` VALUES ('3387', '115', '5');
INSERT INTO `sys_relation` VALUES ('3388', '116', '5');
INSERT INTO `sys_relation` VALUES ('3389', '117', '5');
INSERT INTO `sys_relation` VALUES ('3390', '118', '5');
INSERT INTO `sys_relation` VALUES ('3391', '119', '5');
INSERT INTO `sys_relation` VALUES ('3392', '120', '5');
INSERT INTO `sys_relation` VALUES ('3393', '121', '5');
INSERT INTO `sys_relation` VALUES ('3394', '122', '5');
INSERT INTO `sys_relation` VALUES ('3395', '150', '5');
INSERT INTO `sys_relation` VALUES ('3396', '151', '5');
INSERT INTO `sys_relation` VALUES ('3679', '105', '1');
INSERT INTO `sys_relation` VALUES ('3680', '106', '1');
INSERT INTO `sys_relation` VALUES ('3681', '107', '1');
INSERT INTO `sys_relation` VALUES ('3682', '108', '1');
INSERT INTO `sys_relation` VALUES ('3683', '109', '1');
INSERT INTO `sys_relation` VALUES ('3684', '110', '1');
INSERT INTO `sys_relation` VALUES ('3685', '111', '1');
INSERT INTO `sys_relation` VALUES ('3686', '112', '1');
INSERT INTO `sys_relation` VALUES ('3687', '113', '1');
INSERT INTO `sys_relation` VALUES ('3688', '165', '1');
INSERT INTO `sys_relation` VALUES ('3689', '166', '1');
INSERT INTO `sys_relation` VALUES ('3690', '167', '1');
INSERT INTO `sys_relation` VALUES ('3691', '114', '1');
INSERT INTO `sys_relation` VALUES ('3692', '115', '1');
INSERT INTO `sys_relation` VALUES ('3693', '116', '1');
INSERT INTO `sys_relation` VALUES ('3694', '117', '1');
INSERT INTO `sys_relation` VALUES ('3695', '118', '1');
INSERT INTO `sys_relation` VALUES ('3696', '162', '1');
INSERT INTO `sys_relation` VALUES ('3697', '163', '1');
INSERT INTO `sys_relation` VALUES ('3698', '164', '1');
INSERT INTO `sys_relation` VALUES ('3699', '119', '1');
INSERT INTO `sys_relation` VALUES ('3700', '120', '1');
INSERT INTO `sys_relation` VALUES ('3701', '121', '1');
INSERT INTO `sys_relation` VALUES ('3702', '122', '1');
INSERT INTO `sys_relation` VALUES ('3703', '150', '1');
INSERT INTO `sys_relation` VALUES ('3704', '151', '1');
INSERT INTO `sys_relation` VALUES ('3705', '128', '1');
INSERT INTO `sys_relation` VALUES ('3706', '134', '1');
INSERT INTO `sys_relation` VALUES ('3707', '158', '1');
INSERT INTO `sys_relation` VALUES ('3708', '159', '1');
INSERT INTO `sys_relation` VALUES ('3709', '130', '1');
INSERT INTO `sys_relation` VALUES ('3710', '131', '1');
INSERT INTO `sys_relation` VALUES ('3711', '135', '1');
INSERT INTO `sys_relation` VALUES ('3712', '136', '1');
INSERT INTO `sys_relation` VALUES ('3713', '137', '1');
INSERT INTO `sys_relation` VALUES ('3714', '152', '1');
INSERT INTO `sys_relation` VALUES ('3715', '153', '1');
INSERT INTO `sys_relation` VALUES ('3716', '154', '1');
INSERT INTO `sys_relation` VALUES ('3717', '132', '1');
INSERT INTO `sys_relation` VALUES ('3718', '138', '1');
INSERT INTO `sys_relation` VALUES ('3719', '139', '1');
INSERT INTO `sys_relation` VALUES ('3720', '140', '1');
INSERT INTO `sys_relation` VALUES ('3721', '155', '1');
INSERT INTO `sys_relation` VALUES ('3722', '156', '1');
INSERT INTO `sys_relation` VALUES ('3723', '157', '1');
INSERT INTO `sys_relation` VALUES ('3724', '133', '1');
INSERT INTO `sys_relation` VALUES ('3725', '160', '1');
INSERT INTO `sys_relation` VALUES ('3726', '161', '1');
INSERT INTO `sys_relation` VALUES ('3727', '141', '1');
INSERT INTO `sys_relation` VALUES ('3728', '142', '1');
INSERT INTO `sys_relation` VALUES ('3729', '143', '1');
INSERT INTO `sys_relation` VALUES ('3730', '144', '1');
INSERT INTO `sys_relation` VALUES ('3731', '148', '1');
INSERT INTO `sys_relation` VALUES ('3732', '145', '1');
INSERT INTO `sys_relation` VALUES ('3733', '149', '1');
INSERT INTO `sys_relation` VALUES ('3734', '168', '1');
INSERT INTO `sys_relation` VALUES ('3735', '169', '1');
INSERT INTO `sys_relation` VALUES ('3736', '170', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `sys_role` VALUES ('5', '2', '1', '临时', '26', 'temp', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'girl.gif', 'admin', 'c8968208132fcc76c311403bfb59e756', 'abce', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `sys_user` VALUES ('44', null, 'test', 'c8968208132fcc76c311403bfb59e756', 'abce', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '3', '2017-05-16 20:33:37', null);
INSERT INTO `sys_user` VALUES ('45', null, 'boss', 'c8968208132fcc76c311403bfb59e756', 'abce', '老板', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:02', null);
INSERT INTO `sys_user` VALUES ('46', null, 'manager', 'c8968208132fcc76c311403bfb59e756', 'abce', '经理', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:24', null);

-- ----------------------------
-- View structure for jeans
-- ----------------------------
DROP VIEW IF EXISTS `jeans`;
CREATE ALGORITHM=UNDEFINED DEFINER=`skip-grants user`@`skip-grants host` SQL SECURITY DEFINER VIEW `jeans` AS select `spitem`.`id` AS `id`,`spitem`.`spid` AS `spid`,`spitem`.`name` AS `name`,`spitem`.`crotch` AS `crotch`,`spitem`.`waist` AS `waist`,`spitem`.`hip` AS `hip`,`spitem`.`frontWave` AS `frontWave`,`spitem`.`backWave` AS `backWave`,`spitem`.`length` AS `length`,`spitem`.`bottom` AS `bottom` from `spitem` ;
