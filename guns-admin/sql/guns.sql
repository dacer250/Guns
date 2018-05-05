/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-05-05 11:22:26
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
-- Table structure for standard_female
-- ----------------------------
DROP TABLE IF EXISTS `standard_female`;
CREATE TABLE `standard_female` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2713 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard_female
-- ----------------------------
INSERT INTO `standard_female` VALUES ('1357', '155.00', '30.00', '75.00', '55.00', '38.00', '52.00', '32.00', '57.00', '82.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1358', '155.00', '31.00', '76.00', '56.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1359', '155.00', '32.00', '76.00', '56.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1360', '155.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1361', '155.00', '34.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1362', '155.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1363', '155.00', '36.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1364', '155.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1365', '155.00', '38.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1366', '155.00', '39.00', '78.00', '62.00', '38.00', '52.00', '33.00', '64.00', '84.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1367', '155.00', '40.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1368', '155.00', '41.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1369', '155.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1370', '155.00', '43.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1371', '155.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1372', '155.00', '45.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1373', '155.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1374', '155.00', '47.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1375', '155.00', '48.00', '81.00', '69.00', '39.00', '52.00', '33.00', '71.00', '86.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1376', '155.00', '49.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1377', '155.00', '50.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1378', '155.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1379', '155.00', '52.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1380', '155.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1381', '155.00', '54.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1382', '155.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1383', '155.00', '56.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1384', '155.00', '57.00', '84.00', '76.00', '40.00', '52.00', '34.00', '78.00', '88.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1385', '155.00', '57.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1386', '155.00', '58.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1387', '155.00', '59.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1388', '155.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1389', '155.00', '61.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1390', '155.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1391', '155.00', '63.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1392', '155.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1393', '155.00', '65.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1394', '155.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '56.00', '96.00');
INSERT INTO `standard_female` VALUES ('1395', '155.00', '67.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '57.00', '96.00');
INSERT INTO `standard_female` VALUES ('1396', '155.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '57.00', '96.00');
INSERT INTO `standard_female` VALUES ('1397', '155.00', '69.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '58.00', '96.00');
INSERT INTO `standard_female` VALUES ('1398', '155.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '58.00', '96.00');
INSERT INTO `standard_female` VALUES ('1399', '156.00', '31.00', '76.00', '60.00', '38.00', '52.00', '32.00', '58.00', '83.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1400', '156.00', '32.00', '76.00', '59.00', '38.00', '52.00', '32.00', '58.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1401', '156.00', '33.00', '77.00', '59.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1402', '156.00', '34.00', '77.00', '58.00', '38.00', '52.00', '32.00', '59.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1403', '156.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1404', '156.00', '36.00', '78.00', '57.00', '38.00', '52.00', '32.00', '60.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1405', '156.00', '37.00', '79.00', '57.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1406', '156.00', '38.00', '79.00', '56.00', '38.00', '52.00', '32.00', '61.00', '87.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1407', '156.00', '39.00', '80.00', '56.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '96.00');
INSERT INTO `standard_female` VALUES ('1408', '156.00', '40.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '85.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1409', '156.00', '41.00', '79.00', '63.00', '38.00', '52.00', '33.00', '65.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1410', '156.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1411', '156.00', '43.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1412', '156.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1413', '156.00', '45.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1414', '156.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1415', '156.00', '47.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '89.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1416', '156.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '53.00', '96.00');
INSERT INTO `standard_female` VALUES ('1417', '156.00', '49.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '87.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1418', '156.00', '50.00', '82.00', '70.00', '39.00', '52.00', '33.00', '72.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1419', '156.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1420', '156.00', '52.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1421', '156.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1422', '156.00', '54.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1423', '156.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1424', '156.00', '56.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '91.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1425', '156.00', '57.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '96.00');
INSERT INTO `standard_female` VALUES ('1426', '156.00', '58.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '89.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1427', '156.00', '59.00', '85.00', '77.00', '40.00', '52.00', '34.00', '79.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1428', '156.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1429', '156.00', '61.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1430', '156.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1431', '156.00', '63.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1432', '156.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1433', '156.00', '65.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '93.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1434', '156.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '96.00');
INSERT INTO `standard_female` VALUES ('1435', '156.00', '67.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '94.00', '56.00', '96.00');
INSERT INTO `standard_female` VALUES ('1436', '156.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '57.00', '96.00');
INSERT INTO `standard_female` VALUES ('1437', '156.00', '69.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '95.00', '57.00', '96.00');
INSERT INTO `standard_female` VALUES ('1438', '156.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '58.00', '96.00');
INSERT INTO `standard_female` VALUES ('1439', '156.00', '71.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '96.00', '58.00', '96.00');
INSERT INTO `standard_female` VALUES ('1440', '157.00', '32.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1441', '157.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '84.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1442', '157.00', '34.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1443', '157.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1444', '157.00', '36.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1445', '157.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1446', '157.00', '38.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1447', '157.00', '39.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1448', '157.00', '40.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '52.00', '97.00');
INSERT INTO `standard_female` VALUES ('1449', '157.00', '41.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1450', '157.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1451', '157.00', '43.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1452', '157.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1453', '157.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1454', '157.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1455', '157.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1456', '157.00', '47.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1457', '157.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1458', '157.00', '49.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '89.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1459', '157.00', '50.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1460', '157.00', '51.00', '83.00', '71.00', '39.00', '52.00', '33.00', '73.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1461', '157.00', '52.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1462', '157.00', '53.00', '84.00', '72.00', '39.00', '52.00', '33.00', '74.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1463', '157.00', '54.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1464', '157.00', '55.00', '85.00', '73.00', '39.00', '52.00', '33.00', '75.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1465', '157.00', '56.00', '86.00', '74.00', '39.00', '52.00', '33.00', '76.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1466', '157.00', '58.00', '87.00', '75.00', '39.00', '52.00', '33.00', '77.00', '92.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1467', '157.00', '59.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1468', '157.00', '60.00', '86.00', '78.00', '40.00', '52.00', '34.00', '80.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1469', '157.00', '61.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1470', '157.00', '62.00', '87.00', '79.00', '40.00', '52.00', '34.00', '81.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1471', '157.00', '63.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1472', '157.00', '64.00', '88.00', '80.00', '40.00', '52.00', '34.00', '82.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1473', '157.00', '65.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1474', '157.00', '66.00', '89.00', '81.00', '40.00', '52.00', '34.00', '83.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1475', '157.00', '67.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1476', '157.00', '68.00', '90.00', '82.00', '40.00', '52.00', '34.00', '84.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1477', '157.00', '69.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_female` VALUES ('1478', '157.00', '70.00', '91.00', '83.00', '40.00', '52.00', '34.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_female` VALUES ('1479', '157.00', '71.00', '92.00', '84.00', '40.00', '52.00', '34.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_female` VALUES ('1480', '157.00', '72.00', '92.00', '84.00', '40.00', '52.00', '34.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_female` VALUES ('1481', '158.00', '33.00', '77.00', '57.00', '38.00', '52.00', '32.00', '59.00', '85.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1482', '158.00', '34.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '85.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1483', '158.00', '35.00', '78.00', '58.00', '38.00', '52.00', '32.00', '60.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1484', '158.00', '36.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '86.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1485', '158.00', '37.00', '79.00', '59.00', '38.00', '52.00', '32.00', '61.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1486', '158.00', '38.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1487', '158.00', '39.00', '80.00', '60.00', '38.00', '52.00', '32.00', '62.00', '87.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1488', '158.00', '40.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1489', '158.00', '41.00', '81.00', '61.00', '38.00', '52.00', '32.00', '63.00', '88.00', '53.00', '97.00');
INSERT INTO `standard_female` VALUES ('1490', '158.00', '42.00', '80.00', '64.00', '38.00', '52.00', '33.00', '66.00', '87.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1491', '158.00', '43.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '87.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1492', '158.00', '44.00', '81.00', '65.00', '38.00', '52.00', '33.00', '67.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1493', '158.00', '45.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '88.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1494', '158.00', '46.00', '82.00', '66.00', '38.00', '52.00', '33.00', '68.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1495', '158.00', '47.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '89.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1496', '158.00', '48.00', '83.00', '67.00', '38.00', '52.00', '33.00', '69.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1497', '158.00', '49.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '90.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1498', '158.00', '50.00', '84.00', '68.00', '38.00', '52.00', '33.00', '70.00', '91.00', '54.00', '97.00');
INSERT INTO `standard_female` VALUES ('1499', '158.00', '51.00', '83.00', '71.00', '39.00', '52.00', '34.00', '73.00', '89.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1500', '158.00', '52.00', '84.00', '72.00', '39.00', '52.00', '34.00', '74.00', '89.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1501', '158.00', '53.00', '84.00', '72.00', '39.00', '52.00', '34.00', '74.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1502', '158.00', '54.00', '85.00', '73.00', '39.00', '52.00', '34.00', '75.00', '90.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1503', '158.00', '55.00', '85.00', '73.00', '39.00', '52.00', '34.00', '75.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1504', '158.00', '56.00', '86.00', '74.00', '39.00', '52.00', '34.00', '76.00', '91.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1505', '158.00', '57.00', '86.00', '74.00', '39.00', '52.00', '34.00', '76.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1506', '158.00', '58.00', '87.00', '75.00', '39.00', '52.00', '34.00', '77.00', '92.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1507', '158.00', '59.00', '87.00', '75.00', '39.00', '52.00', '34.00', '77.00', '93.00', '55.00', '97.00');
INSERT INTO `standard_female` VALUES ('1508', '158.00', '60.00', '86.00', '78.00', '40.00', '52.00', '35.00', '80.00', '91.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1509', '158.00', '61.00', '87.00', '79.00', '40.00', '52.00', '35.00', '81.00', '91.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1510', '158.00', '62.00', '87.00', '79.00', '40.00', '52.00', '35.00', '81.00', '92.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1511', '158.00', '63.00', '88.00', '80.00', '40.00', '52.00', '35.00', '82.00', '92.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1512', '158.00', '64.00', '88.00', '80.00', '40.00', '52.00', '35.00', '82.00', '93.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1513', '158.00', '65.00', '89.00', '81.00', '40.00', '52.00', '35.00', '83.00', '93.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1514', '158.00', '66.00', '89.00', '81.00', '40.00', '52.00', '35.00', '83.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1515', '158.00', '67.00', '90.00', '82.00', '40.00', '52.00', '35.00', '84.00', '94.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1516', '158.00', '68.00', '90.00', '82.00', '40.00', '52.00', '35.00', '84.00', '95.00', '56.00', '97.00');
INSERT INTO `standard_female` VALUES ('1517', '158.00', '69.00', '91.00', '83.00', '40.00', '52.00', '35.00', '85.00', '95.00', '57.00', '97.00');
INSERT INTO `standard_female` VALUES ('1518', '158.00', '70.00', '91.00', '83.00', '40.00', '52.00', '35.00', '85.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_female` VALUES ('1519', '158.00', '71.00', '92.00', '84.00', '40.00', '52.00', '35.00', '86.00', '96.00', '58.00', '97.00');
INSERT INTO `standard_female` VALUES ('1520', '158.00', '72.00', '92.00', '84.00', '40.00', '52.00', '35.00', '86.00', '97.00', '59.00', '97.00');
INSERT INTO `standard_female` VALUES ('1521', '158.00', '73.00', '93.00', '85.00', '40.00', '52.00', '35.00', '87.00', '97.00', '59.00', '97.00');
INSERT INTO `standard_female` VALUES ('1522', '159.00', '34.00', '78.00', '58.00', '38.00', '53.00', '32.00', '60.00', '85.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1523', '159.00', '35.00', '79.00', '59.00', '38.00', '53.00', '32.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1524', '159.00', '36.00', '79.00', '59.00', '38.00', '53.00', '32.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1525', '159.00', '37.00', '80.00', '60.00', '38.00', '53.00', '32.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1526', '159.00', '38.00', '80.00', '60.00', '38.00', '53.00', '32.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1527', '159.00', '39.00', '81.00', '61.00', '38.00', '53.00', '32.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1528', '159.00', '40.00', '81.00', '61.00', '38.00', '53.00', '32.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1529', '159.00', '41.00', '82.00', '62.00', '38.00', '53.00', '32.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1530', '159.00', '42.00', '82.00', '62.00', '38.00', '53.00', '32.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1531', '159.00', '43.00', '81.00', '65.00', '38.00', '53.00', '33.00', '67.00', '87.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1532', '159.00', '44.00', '82.00', '66.00', '38.00', '53.00', '33.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1533', '159.00', '45.00', '82.00', '66.00', '38.00', '53.00', '33.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1534', '159.00', '46.00', '83.00', '67.00', '38.00', '53.00', '33.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1535', '159.00', '47.00', '83.00', '67.00', '38.00', '53.00', '33.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1536', '159.00', '48.00', '84.00', '68.00', '38.00', '53.00', '33.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1537', '159.00', '49.00', '84.00', '68.00', '38.00', '53.00', '33.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1538', '159.00', '50.00', '85.00', '69.00', '38.00', '53.00', '33.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1539', '159.00', '51.00', '85.00', '69.00', '38.00', '53.00', '33.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1540', '159.00', '52.00', '84.00', '72.00', '39.00', '53.00', '33.00', '74.00', '89.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1541', '159.00', '53.00', '85.00', '73.00', '39.00', '53.00', '33.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1542', '159.00', '54.00', '85.00', '73.00', '39.00', '53.00', '33.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1543', '159.00', '55.00', '86.00', '74.00', '39.00', '53.00', '33.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1544', '159.00', '56.00', '86.00', '74.00', '39.00', '53.00', '33.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1545', '159.00', '57.00', '87.00', '75.00', '39.00', '53.00', '33.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1546', '159.00', '58.00', '87.00', '75.00', '39.00', '53.00', '33.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1547', '159.00', '58.00', '88.00', '76.00', '39.00', '53.00', '33.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1548', '159.00', '60.00', '88.00', '76.00', '39.00', '53.00', '33.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1549', '159.00', '61.00', '87.00', '79.00', '40.00', '53.00', '34.00', '81.00', '91.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1550', '159.00', '62.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1551', '159.00', '63.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1552', '159.00', '63.00', '88.00', '80.00', '40.00', '53.00', '34.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1553', '159.00', '64.00', '89.00', '81.00', '40.00', '53.00', '34.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1554', '159.00', '65.00', '89.00', '81.00', '40.00', '53.00', '34.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1555', '159.00', '66.00', '90.00', '82.00', '40.00', '53.00', '34.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1556', '159.00', '67.00', '90.00', '82.00', '40.00', '53.00', '34.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1557', '159.00', '68.00', '91.00', '83.00', '40.00', '53.00', '34.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1558', '159.00', '69.00', '91.00', '83.00', '40.00', '53.00', '34.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1559', '159.00', '70.00', '92.00', '84.00', '40.00', '53.00', '34.00', '86.00', '96.00', '57.00', '98.00');
INSERT INTO `standard_female` VALUES ('1560', '159.00', '71.00', '92.00', '84.00', '40.00', '53.00', '34.00', '86.00', '96.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1561', '159.00', '72.00', '93.00', '85.00', '40.00', '53.00', '34.00', '87.00', '97.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1562', '159.00', '73.00', '93.00', '85.00', '40.00', '53.00', '34.00', '87.00', '97.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1563', '159.00', '74.00', '94.00', '86.00', '40.00', '53.00', '34.00', '88.00', '98.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1564', '160.00', '35.00', '79.00', '59.00', '39.00', '53.00', '33.00', '61.00', '86.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1565', '160.00', '36.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1566', '160.00', '37.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1567', '160.00', '38.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1568', '160.00', '39.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1569', '160.00', '40.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1570', '160.00', '41.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1571', '160.00', '42.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1572', '160.00', '43.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1573', '160.00', '44.00', '82.00', '66.00', '39.00', '53.00', '34.00', '68.00', '88.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1574', '160.00', '45.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1575', '160.00', '46.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1576', '160.00', '47.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1577', '160.00', '48.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1578', '160.00', '49.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1579', '160.00', '50.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1580', '160.00', '51.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1581', '160.00', '52.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1582', '160.00', '53.00', '85.00', '73.00', '40.00', '53.00', '34.00', '75.00', '90.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1583', '160.00', '54.00', '86.00', '74.00', '40.00', '53.00', '34.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1584', '160.00', '55.00', '86.00', '74.00', '40.00', '53.00', '34.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1585', '160.00', '56.00', '87.00', '75.00', '40.00', '53.00', '34.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1586', '160.00', '57.00', '87.00', '75.00', '40.00', '53.00', '34.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1587', '160.00', '58.00', '88.00', '76.00', '40.00', '53.00', '34.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1588', '160.00', '59.00', '88.00', '76.00', '40.00', '53.00', '34.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1589', '160.00', '60.00', '89.00', '77.00', '40.00', '53.00', '34.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1590', '160.00', '61.00', '89.00', '77.00', '40.00', '53.00', '34.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1591', '160.00', '62.00', '88.00', '80.00', '41.00', '53.00', '35.00', '82.00', '92.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1592', '160.00', '63.00', '89.00', '81.00', '41.00', '53.00', '35.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1593', '160.00', '64.00', '89.00', '81.00', '41.00', '53.00', '35.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1594', '160.00', '65.00', '90.00', '82.00', '41.00', '53.00', '35.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1595', '160.00', '66.00', '90.00', '82.00', '41.00', '53.00', '35.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1596', '160.00', '67.00', '91.00', '83.00', '41.00', '53.00', '35.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1597', '160.00', '68.00', '91.00', '83.00', '41.00', '53.00', '35.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1598', '160.00', '69.00', '92.00', '84.00', '41.00', '53.00', '35.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1599', '160.00', '70.00', '92.00', '84.00', '41.00', '53.00', '35.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1600', '160.00', '71.00', '93.00', '85.00', '41.00', '53.00', '35.00', '87.00', '97.00', '57.00', '98.00');
INSERT INTO `standard_female` VALUES ('1601', '160.00', '72.00', '93.00', '85.00', '41.00', '53.00', '35.00', '87.00', '97.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1602', '160.00', '73.00', '94.00', '86.00', '41.00', '53.00', '35.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1603', '160.00', '74.00', '94.00', '86.00', '41.00', '53.00', '35.00', '88.00', '98.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1604', '160.00', '75.00', '95.00', '87.00', '41.00', '53.00', '35.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1605', '161.00', '36.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1606', '161.00', '37.00', '80.00', '60.00', '39.00', '53.00', '33.00', '62.00', '87.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1607', '161.00', '38.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1608', '161.00', '39.00', '81.00', '61.00', '39.00', '53.00', '33.00', '63.00', '88.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1609', '161.00', '40.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1610', '161.00', '41.00', '82.00', '62.00', '39.00', '53.00', '33.00', '64.00', '89.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1611', '161.00', '42.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1612', '161.00', '43.00', '83.00', '63.00', '39.00', '53.00', '33.00', '65.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1613', '161.00', '44.00', '84.00', '64.00', '39.00', '53.00', '33.00', '66.00', '91.00', '53.00', '98.00');
INSERT INTO `standard_female` VALUES ('1614', '161.00', '45.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1615', '161.00', '46.00', '83.00', '67.00', '39.00', '53.00', '34.00', '69.00', '89.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1616', '161.00', '47.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1617', '161.00', '48.00', '84.00', '68.00', '39.00', '53.00', '34.00', '70.00', '90.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1618', '161.00', '49.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1619', '161.00', '50.00', '85.00', '69.00', '39.00', '53.00', '34.00', '71.00', '91.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1620', '161.00', '51.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1621', '161.00', '52.00', '86.00', '70.00', '39.00', '53.00', '34.00', '72.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1622', '161.00', '53.00', '87.00', '71.00', '39.00', '53.00', '34.00', '73.00', '93.00', '54.00', '98.00');
INSERT INTO `standard_female` VALUES ('1623', '161.00', '54.00', '86.00', '74.00', '40.00', '53.00', '35.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1624', '161.00', '55.00', '86.00', '74.00', '40.00', '53.00', '35.00', '76.00', '91.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1625', '161.00', '56.00', '87.00', '75.00', '40.00', '53.00', '35.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1626', '161.00', '57.00', '87.00', '75.00', '40.00', '53.00', '35.00', '77.00', '92.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1627', '161.00', '58.00', '88.00', '76.00', '40.00', '53.00', '35.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1628', '161.00', '59.00', '88.00', '76.00', '40.00', '53.00', '35.00', '78.00', '93.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1629', '161.00', '60.00', '89.00', '77.00', '40.00', '53.00', '35.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1630', '161.00', '61.00', '89.00', '77.00', '40.00', '53.00', '35.00', '79.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1631', '161.00', '62.00', '90.00', '78.00', '40.00', '53.00', '35.00', '80.00', '95.00', '55.00', '98.00');
INSERT INTO `standard_female` VALUES ('1632', '161.00', '63.00', '89.00', '81.00', '41.00', '53.00', '36.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1633', '161.00', '64.00', '89.00', '81.00', '41.00', '53.00', '36.00', '83.00', '93.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1634', '161.00', '65.00', '90.00', '82.00', '41.00', '53.00', '36.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1635', '161.00', '66.00', '90.00', '82.00', '41.00', '53.00', '36.00', '84.00', '94.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1636', '161.00', '67.00', '91.00', '83.00', '41.00', '53.00', '36.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1637', '161.00', '68.00', '91.00', '83.00', '41.00', '53.00', '36.00', '85.00', '95.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1638', '161.00', '69.00', '92.00', '84.00', '41.00', '53.00', '36.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1639', '161.00', '70.00', '92.00', '84.00', '41.00', '53.00', '36.00', '86.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1640', '161.00', '71.00', '93.00', '85.00', '41.00', '53.00', '36.00', '87.00', '97.00', '56.00', '98.00');
INSERT INTO `standard_female` VALUES ('1641', '161.00', '72.00', '93.00', '85.00', '41.00', '53.00', '36.00', '87.00', '97.00', '57.00', '98.00');
INSERT INTO `standard_female` VALUES ('1642', '161.00', '73.00', '94.00', '86.00', '41.00', '53.00', '36.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1643', '161.00', '74.00', '94.00', '86.00', '41.00', '53.00', '36.00', '88.00', '98.00', '58.00', '98.00');
INSERT INTO `standard_female` VALUES ('1644', '161.00', '75.00', '95.00', '87.00', '41.00', '53.00', '36.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1645', '161.00', '76.00', '95.00', '87.00', '41.00', '53.00', '36.00', '89.00', '99.00', '59.00', '98.00');
INSERT INTO `standard_female` VALUES ('1646', '162.00', '37.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '87.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1647', '162.00', '38.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1648', '162.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1649', '162.00', '40.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1650', '162.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1651', '162.00', '42.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1652', '162.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1653', '162.00', '44.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1654', '162.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1655', '162.00', '46.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '89.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1656', '162.00', '47.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1657', '162.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1658', '162.00', '49.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1659', '162.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1660', '162.00', '51.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1661', '162.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1662', '162.00', '53.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1663', '162.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1664', '162.00', '55.00', '87.00', '75.00', '40.00', '54.00', '35.00', '77.00', '91.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1665', '162.00', '56.00', '87.00', '75.00', '40.00', '54.00', '35.00', '77.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1666', '162.00', '57.00', '88.00', '76.00', '40.00', '54.00', '35.00', '78.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1667', '162.00', '58.00', '88.00', '76.00', '40.00', '54.00', '35.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1668', '162.00', '59.00', '89.00', '77.00', '40.00', '54.00', '35.00', '79.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1669', '162.00', '60.00', '89.00', '77.00', '40.00', '54.00', '35.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1670', '162.00', '61.00', '90.00', '78.00', '40.00', '54.00', '35.00', '80.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1671', '162.00', '62.00', '90.00', '78.00', '40.00', '54.00', '35.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1672', '162.00', '63.00', '91.00', '79.00', '40.00', '54.00', '35.00', '81.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1673', '162.00', '64.00', '90.00', '82.00', '41.00', '54.00', '36.00', '84.00', '93.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1674', '162.00', '65.00', '90.00', '82.00', '41.00', '54.00', '36.00', '84.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1675', '162.00', '66.00', '91.00', '83.00', '41.00', '54.00', '36.00', '85.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1676', '162.00', '67.00', '91.00', '83.00', '41.00', '54.00', '36.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1677', '162.00', '68.00', '92.00', '84.00', '41.00', '54.00', '36.00', '86.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1678', '162.00', '69.00', '92.00', '84.00', '41.00', '54.00', '36.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1679', '162.00', '70.00', '93.00', '85.00', '41.00', '54.00', '36.00', '87.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1680', '162.00', '71.00', '93.00', '85.00', '41.00', '54.00', '36.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1681', '162.00', '72.00', '94.00', '86.00', '41.00', '54.00', '36.00', '88.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1682', '162.00', '73.00', '94.00', '86.00', '41.00', '54.00', '36.00', '88.00', '98.00', '58.00', '99.00');
INSERT INTO `standard_female` VALUES ('1683', '162.00', '74.00', '95.00', '87.00', '41.00', '54.00', '36.00', '89.00', '98.00', '59.00', '99.00');
INSERT INTO `standard_female` VALUES ('1684', '162.00', '75.00', '95.00', '87.00', '41.00', '54.00', '36.00', '89.00', '99.00', '59.00', '99.00');
INSERT INTO `standard_female` VALUES ('1685', '162.00', '76.00', '96.00', '88.00', '41.00', '54.00', '36.00', '90.00', '99.00', '60.00', '99.00');
INSERT INTO `standard_female` VALUES ('1686', '162.00', '77.00', '96.00', '88.00', '41.00', '54.00', '36.00', '90.00', '100.00', '60.00', '99.00');
INSERT INTO `standard_female` VALUES ('1687', '163.00', '38.00', '81.00', '61.00', '39.00', '54.00', '33.00', '63.00', '88.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1688', '163.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1689', '163.00', '40.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1690', '163.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1691', '163.00', '42.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1692', '163.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1693', '163.00', '44.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1694', '163.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1695', '163.00', '46.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '99.00');
INSERT INTO `standard_female` VALUES ('1696', '163.00', '47.00', '84.00', '68.00', '39.00', '54.00', '34.00', '70.00', '90.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1697', '163.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1698', '163.00', '49.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1699', '163.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1700', '163.00', '51.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1701', '163.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1702', '163.00', '53.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1703', '163.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1704', '163.00', '55.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '99.00');
INSERT INTO `standard_female` VALUES ('1705', '163.00', '56.00', '87.00', '75.00', '40.00', '54.00', '34.00', '77.00', '92.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1706', '163.00', '57.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1707', '163.00', '58.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1708', '163.00', '59.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1709', '163.00', '60.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1710', '163.00', '61.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1711', '163.00', '62.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1712', '163.00', '63.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1713', '163.00', '64.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '99.00');
INSERT INTO `standard_female` VALUES ('1714', '163.00', '65.00', '90.00', '82.00', '41.00', '54.00', '35.00', '84.00', '94.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1715', '163.00', '66.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1716', '163.00', '67.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1717', '163.00', '68.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1718', '163.00', '69.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1719', '163.00', '70.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1720', '163.00', '71.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1721', '163.00', '72.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1722', '163.00', '73.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '99.00');
INSERT INTO `standard_female` VALUES ('1723', '163.00', '74.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '58.00', '99.00');
INSERT INTO `standard_female` VALUES ('1724', '163.00', '75.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '59.00', '99.00');
INSERT INTO `standard_female` VALUES ('1725', '163.00', '76.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '59.00', '99.00');
INSERT INTO `standard_female` VALUES ('1726', '163.00', '77.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '60.00', '99.00');
INSERT INTO `standard_female` VALUES ('1727', '163.00', '78.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '101.00', '60.00', '99.00');
INSERT INTO `standard_female` VALUES ('1728', '164.00', '39.00', '82.00', '62.00', '39.00', '54.00', '33.00', '64.00', '89.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1729', '164.00', '40.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '89.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1730', '164.00', '41.00', '83.00', '63.00', '39.00', '54.00', '33.00', '65.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1731', '164.00', '42.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1732', '164.00', '43.00', '84.00', '64.00', '39.00', '54.00', '33.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1733', '164.00', '44.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1734', '164.00', '45.00', '85.00', '65.00', '39.00', '54.00', '33.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1735', '164.00', '46.00', '86.00', '66.00', '39.00', '54.00', '33.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1736', '164.00', '47.00', '86.00', '66.00', '39.00', '54.00', '33.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1737', '164.00', '48.00', '85.00', '69.00', '39.00', '54.00', '34.00', '71.00', '91.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1738', '164.00', '49.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '91.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1739', '164.00', '50.00', '86.00', '70.00', '39.00', '54.00', '34.00', '72.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1740', '164.00', '51.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1741', '164.00', '52.00', '87.00', '71.00', '39.00', '54.00', '34.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1742', '164.00', '53.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1743', '164.00', '54.00', '88.00', '72.00', '39.00', '54.00', '34.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1744', '164.00', '55.00', '89.00', '73.00', '39.00', '54.00', '34.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1745', '164.00', '56.00', '89.00', '73.00', '39.00', '54.00', '34.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1746', '164.00', '57.00', '88.00', '76.00', '40.00', '54.00', '34.00', '78.00', '93.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1747', '164.00', '58.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '93.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1748', '164.00', '59.00', '89.00', '77.00', '40.00', '54.00', '34.00', '79.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1749', '164.00', '60.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1750', '164.00', '61.00', '90.00', '78.00', '40.00', '54.00', '34.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1751', '164.00', '62.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1752', '164.00', '63.00', '91.00', '79.00', '40.00', '54.00', '34.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1753', '164.00', '64.00', '92.00', '80.00', '40.00', '54.00', '34.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1754', '164.00', '65.00', '92.00', '80.00', '40.00', '54.00', '34.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1755', '164.00', '66.00', '91.00', '83.00', '41.00', '54.00', '35.00', '85.00', '95.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1756', '164.00', '67.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '95.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1757', '164.00', '68.00', '92.00', '84.00', '41.00', '54.00', '35.00', '86.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1758', '164.00', '69.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1759', '164.00', '70.00', '93.00', '85.00', '41.00', '54.00', '35.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1760', '164.00', '71.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1761', '164.00', '72.00', '94.00', '86.00', '41.00', '54.00', '35.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1762', '164.00', '73.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1763', '164.00', '74.00', '95.00', '87.00', '41.00', '54.00', '35.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1764', '164.00', '75.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '99.00', '58.00', '100.00');
INSERT INTO `standard_female` VALUES ('1765', '164.00', '76.00', '96.00', '88.00', '41.00', '54.00', '35.00', '90.00', '100.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1766', '164.00', '77.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '100.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1767', '164.00', '78.00', '97.00', '89.00', '41.00', '54.00', '35.00', '91.00', '101.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1768', '164.00', '79.00', '98.00', '90.00', '41.00', '54.00', '35.00', '92.00', '101.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1769', '165.00', '40.00', '83.00', '63.00', '39.00', '55.00', '34.00', '65.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1770', '165.00', '41.00', '84.00', '64.00', '39.00', '55.00', '34.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1771', '165.00', '42.00', '84.00', '64.00', '39.00', '55.00', '34.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1772', '165.00', '43.00', '85.00', '65.00', '39.00', '55.00', '34.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1773', '165.00', '44.00', '85.00', '65.00', '39.00', '55.00', '34.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1774', '165.00', '45.00', '86.00', '66.00', '39.00', '55.00', '34.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1775', '165.00', '46.00', '86.00', '66.00', '39.00', '55.00', '34.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1776', '165.00', '47.00', '87.00', '67.00', '39.00', '55.00', '34.00', '69.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1777', '165.00', '48.00', '87.00', '67.00', '39.00', '55.00', '34.00', '69.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1778', '165.00', '49.00', '86.00', '70.00', '39.00', '55.00', '35.00', '72.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1779', '165.00', '50.00', '87.00', '71.00', '39.00', '55.00', '35.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1780', '165.00', '51.00', '87.00', '71.00', '39.00', '55.00', '35.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1781', '165.00', '52.00', '88.00', '72.00', '39.00', '55.00', '35.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1782', '165.00', '53.00', '88.00', '72.00', '39.00', '55.00', '35.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1783', '165.00', '54.00', '89.00', '73.00', '39.00', '55.00', '35.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1784', '165.00', '55.00', '89.00', '73.00', '39.00', '55.00', '35.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1785', '165.00', '56.00', '90.00', '74.00', '39.00', '55.00', '35.00', '76.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1786', '165.00', '57.00', '90.00', '74.00', '39.00', '55.00', '35.00', '76.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1787', '165.00', '58.00', '89.00', '77.00', '40.00', '55.00', '35.00', '79.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1788', '165.00', '59.00', '90.00', '78.00', '40.00', '55.00', '35.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1789', '165.00', '60.00', '90.00', '78.00', '40.00', '55.00', '35.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1790', '165.00', '61.00', '91.00', '79.00', '40.00', '55.00', '35.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1791', '165.00', '62.00', '91.00', '79.00', '40.00', '55.00', '35.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1792', '165.00', '63.00', '92.00', '80.00', '40.00', '55.00', '35.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1793', '165.00', '64.00', '92.00', '80.00', '40.00', '55.00', '35.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1794', '165.00', '65.00', '93.00', '81.00', '40.00', '55.00', '35.00', '83.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1795', '165.00', '65.00', '94.00', '82.00', '41.00', '56.00', '35.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1796', '165.00', '66.00', '93.00', '81.00', '40.00', '55.00', '35.00', '83.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1797', '165.00', '67.00', '92.00', '84.00', '41.00', '55.00', '36.00', '86.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1798', '165.00', '68.00', '93.00', '85.00', '41.00', '55.00', '36.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1799', '165.00', '69.00', '93.00', '85.00', '41.00', '55.00', '36.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1800', '165.00', '70.00', '94.00', '86.00', '41.00', '55.00', '36.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1801', '165.00', '71.00', '94.00', '86.00', '41.00', '55.00', '36.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1802', '165.00', '72.00', '95.00', '87.00', '41.00', '55.00', '36.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1803', '165.00', '73.00', '95.00', '87.00', '41.00', '55.00', '36.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1804', '165.00', '74.00', '96.00', '88.00', '41.00', '55.00', '36.00', '90.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1805', '165.00', '75.00', '96.00', '88.00', '41.00', '55.00', '36.00', '90.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1806', '165.00', '76.00', '97.00', '89.00', '41.00', '55.00', '36.00', '91.00', '100.00', '58.00', '100.00');
INSERT INTO `standard_female` VALUES ('1807', '165.00', '77.00', '97.00', '89.00', '41.00', '55.00', '36.00', '91.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1808', '165.00', '78.00', '98.00', '90.00', '41.00', '55.00', '36.00', '92.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1809', '165.00', '79.00', '98.00', '90.00', '41.00', '55.00', '36.00', '92.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1810', '165.00', '80.00', '99.00', '91.00', '41.00', '55.00', '36.00', '93.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1811', '166.00', '41.00', '84.00', '64.00', '40.00', '55.00', '34.00', '66.00', '90.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1812', '166.00', '42.00', '84.00', '64.00', '40.00', '55.00', '34.00', '66.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1813', '166.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1814', '166.00', '44.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1815', '166.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1816', '166.00', '46.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1817', '166.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1818', '166.00', '48.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1819', '166.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '54.00', '100.00');
INSERT INTO `standard_female` VALUES ('1820', '166.00', '50.00', '87.00', '71.00', '40.00', '55.00', '35.00', '73.00', '92.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1821', '166.00', '51.00', '87.00', '71.00', '40.00', '55.00', '35.00', '73.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1822', '166.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '93.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1823', '166.00', '53.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1824', '166.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1825', '166.00', '55.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1826', '166.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1827', '166.00', '57.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1828', '166.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '55.00', '100.00');
INSERT INTO `standard_female` VALUES ('1829', '166.00', '59.00', '90.00', '78.00', '41.00', '55.00', '35.00', '80.00', '94.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1830', '166.00', '60.00', '90.00', '78.00', '41.00', '55.00', '35.00', '80.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1831', '166.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '95.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1832', '166.00', '62.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1833', '166.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1834', '166.00', '64.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1835', '166.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1836', '166.00', '66.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1837', '166.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '56.00', '100.00');
INSERT INTO `standard_female` VALUES ('1838', '166.00', '68.00', '93.00', '85.00', '42.00', '55.00', '36.00', '87.00', '96.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1839', '166.00', '69.00', '93.00', '85.00', '42.00', '55.00', '36.00', '87.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1840', '166.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '97.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1841', '166.00', '71.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1842', '166.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1843', '166.00', '73.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1844', '166.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1845', '166.00', '75.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1846', '166.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '57.00', '100.00');
INSERT INTO `standard_female` VALUES ('1847', '166.00', '77.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '100.00');
INSERT INTO `standard_female` VALUES ('1848', '166.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1849', '166.00', '79.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '59.00', '100.00');
INSERT INTO `standard_female` VALUES ('1850', '166.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1851', '166.00', '81.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '100.00');
INSERT INTO `standard_female` VALUES ('1852', '167.00', '42.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1853', '167.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '91.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1854', '167.00', '44.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1855', '167.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1856', '167.00', '46.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1857', '167.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1858', '167.00', '48.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1859', '167.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1860', '167.00', '50.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1861', '167.00', '51.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '93.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1862', '167.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1863', '167.00', '53.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1864', '167.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1865', '167.00', '55.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1866', '167.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1867', '167.00', '57.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1868', '167.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1869', '167.00', '59.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1870', '167.00', '60.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '95.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1871', '167.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1872', '167.00', '62.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1873', '167.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1874', '167.00', '64.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1875', '167.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1876', '167.00', '66.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1877', '167.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1878', '167.00', '68.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1879', '167.00', '69.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '97.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1880', '167.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1881', '167.00', '71.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1882', '167.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1883', '167.00', '73.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1884', '167.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1885', '167.00', '75.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1886', '167.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1887', '167.00', '77.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1888', '167.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_female` VALUES ('1889', '167.00', '79.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '60.00', '101.00');
INSERT INTO `standard_female` VALUES ('1890', '167.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_female` VALUES ('1891', '167.00', '81.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '103.00', '61.00', '101.00');
INSERT INTO `standard_female` VALUES ('1892', '167.00', '82.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_female` VALUES ('1893', '168.00', '43.00', '85.00', '65.00', '40.00', '55.00', '34.00', '67.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1894', '168.00', '44.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '92.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1895', '168.00', '45.00', '86.00', '66.00', '40.00', '55.00', '34.00', '68.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1896', '168.00', '46.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1897', '168.00', '47.00', '87.00', '67.00', '40.00', '55.00', '34.00', '69.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1898', '168.00', '48.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1899', '168.00', '49.00', '88.00', '68.00', '40.00', '55.00', '34.00', '70.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1900', '168.00', '50.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1901', '168.00', '51.00', '89.00', '69.00', '40.00', '55.00', '34.00', '71.00', '96.00', '55.00', '101.00');
INSERT INTO `standard_female` VALUES ('1902', '168.00', '52.00', '88.00', '72.00', '40.00', '55.00', '35.00', '74.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1903', '168.00', '53.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1904', '168.00', '54.00', '89.00', '73.00', '40.00', '55.00', '35.00', '75.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1905', '168.00', '55.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1906', '168.00', '56.00', '90.00', '74.00', '40.00', '55.00', '35.00', '76.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1907', '168.00', '57.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1908', '168.00', '58.00', '91.00', '75.00', '40.00', '55.00', '35.00', '77.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1909', '168.00', '59.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '97.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1910', '168.00', '60.00', '92.00', '76.00', '40.00', '55.00', '35.00', '78.00', '98.00', '56.00', '101.00');
INSERT INTO `standard_female` VALUES ('1911', '168.00', '61.00', '91.00', '79.00', '41.00', '55.00', '35.00', '81.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1912', '168.00', '62.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '96.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1913', '168.00', '63.00', '92.00', '80.00', '41.00', '55.00', '35.00', '82.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1914', '168.00', '64.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '97.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1915', '168.00', '65.00', '93.00', '81.00', '41.00', '55.00', '35.00', '83.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1916', '168.00', '66.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1917', '168.00', '67.00', '94.00', '82.00', '41.00', '55.00', '35.00', '84.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1918', '168.00', '68.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1919', '168.00', '69.00', '95.00', '83.00', '41.00', '55.00', '35.00', '85.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_female` VALUES ('1920', '168.00', '70.00', '94.00', '86.00', '42.00', '55.00', '36.00', '88.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1921', '168.00', '71.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '98.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1922', '168.00', '72.00', '95.00', '87.00', '42.00', '55.00', '36.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1923', '168.00', '73.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1924', '168.00', '74.00', '96.00', '88.00', '42.00', '55.00', '36.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1925', '168.00', '75.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1926', '168.00', '76.00', '97.00', '89.00', '42.00', '55.00', '36.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1927', '168.00', '77.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1928', '168.00', '78.00', '98.00', '90.00', '42.00', '55.00', '36.00', '92.00', '102.00', '58.00', '101.00');
INSERT INTO `standard_female` VALUES ('1929', '168.00', '79.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_female` VALUES ('1930', '168.00', '80.00', '99.00', '91.00', '42.00', '55.00', '36.00', '93.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_female` VALUES ('1931', '168.00', '81.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '103.00', '60.00', '101.00');
INSERT INTO `standard_female` VALUES ('1932', '168.00', '82.00', '100.00', '92.00', '42.00', '55.00', '36.00', '94.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_female` VALUES ('1933', '168.00', '83.00', '101.00', '93.00', '42.00', '55.00', '36.00', '95.00', '104.00', '61.00', '101.00');
INSERT INTO `standard_female` VALUES ('1934', '169.00', '44.00', '86.00', '66.00', '40.00', '56.00', '34.00', '68.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1935', '169.00', '45.00', '87.00', '67.00', '40.00', '56.00', '34.00', '69.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1936', '169.00', '46.00', '87.00', '67.00', '40.00', '56.00', '34.00', '69.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1937', '169.00', '47.00', '88.00', '68.00', '40.00', '56.00', '34.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1938', '169.00', '48.00', '88.00', '68.00', '40.00', '56.00', '34.00', '70.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1939', '169.00', '49.00', '89.00', '69.00', '40.00', '56.00', '34.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1940', '169.00', '50.00', '89.00', '69.00', '40.00', '56.00', '34.00', '71.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1941', '169.00', '51.00', '90.00', '70.00', '40.00', '56.00', '34.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1942', '169.00', '52.00', '90.00', '70.00', '40.00', '56.00', '34.00', '72.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1943', '169.00', '53.00', '89.00', '73.00', '40.00', '56.00', '35.00', '75.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1944', '169.00', '54.00', '90.00', '74.00', '40.00', '56.00', '35.00', '76.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1945', '169.00', '55.00', '90.00', '74.00', '40.00', '56.00', '35.00', '76.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1946', '169.00', '56.00', '91.00', '75.00', '40.00', '56.00', '35.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1947', '169.00', '57.00', '91.00', '75.00', '40.00', '56.00', '35.00', '77.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1948', '169.00', '58.00', '92.00', '76.00', '40.00', '56.00', '35.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1949', '169.00', '59.00', '92.00', '76.00', '40.00', '56.00', '35.00', '78.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1950', '169.00', '60.00', '93.00', '77.00', '40.00', '56.00', '35.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1951', '169.00', '61.00', '93.00', '77.00', '40.00', '56.00', '35.00', '79.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1952', '169.00', '62.00', '92.00', '80.00', '41.00', '56.00', '35.00', '82.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1953', '169.00', '63.00', '93.00', '81.00', '41.00', '56.00', '35.00', '83.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1954', '169.00', '64.00', '93.00', '81.00', '41.00', '56.00', '35.00', '83.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1955', '169.00', '66.00', '94.00', '82.00', '41.00', '56.00', '35.00', '84.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1956', '169.00', '67.00', '95.00', '83.00', '41.00', '56.00', '35.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1957', '169.00', '68.00', '95.00', '83.00', '41.00', '56.00', '35.00', '85.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1958', '169.00', '69.00', '96.00', '84.00', '41.00', '56.00', '35.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1959', '169.00', '70.00', '96.00', '84.00', '41.00', '56.00', '35.00', '86.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1960', '169.00', '71.00', '95.00', '87.00', '42.00', '56.00', '36.00', '89.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1961', '169.00', '72.00', '96.00', '88.00', '42.00', '56.00', '36.00', '90.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1962', '169.00', '73.00', '96.00', '88.00', '42.00', '56.00', '36.00', '90.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1963', '169.00', '74.00', '97.00', '89.00', '42.00', '56.00', '36.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1964', '169.00', '75.00', '97.00', '89.00', '42.00', '56.00', '36.00', '91.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1965', '169.00', '76.00', '98.00', '90.00', '42.00', '56.00', '36.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1966', '169.00', '77.00', '98.00', '90.00', '42.00', '56.00', '36.00', '92.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1967', '169.00', '78.00', '99.00', '91.00', '42.00', '56.00', '36.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1968', '169.00', '79.00', '99.00', '91.00', '42.00', '56.00', '36.00', '93.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('1969', '169.00', '80.00', '100.00', '92.00', '42.00', '56.00', '36.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('1970', '169.00', '81.00', '100.00', '92.00', '42.00', '56.00', '36.00', '94.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_female` VALUES ('1971', '169.00', '82.00', '101.00', '93.00', '42.00', '56.00', '36.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_female` VALUES ('1972', '169.00', '83.00', '101.00', '93.00', '42.00', '56.00', '36.00', '95.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('1973', '169.00', '84.00', '102.00', '94.00', '42.00', '56.00', '36.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('1974', '170.00', '45.00', '87.00', '67.00', '40.00', '56.00', '35.00', '69.00', '93.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1975', '170.00', '46.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1976', '170.00', '47.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1977', '170.00', '48.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1978', '170.00', '49.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1979', '170.00', '50.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1980', '170.00', '51.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1981', '170.00', '52.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1982', '170.00', '53.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '55.00', '102.00');
INSERT INTO `standard_female` VALUES ('1983', '170.00', '54.00', '90.00', '74.00', '40.00', '56.00', '36.00', '76.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1984', '170.00', '55.00', '91.00', '75.00', '40.00', '56.00', '36.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1985', '170.00', '56.00', '91.00', '75.00', '40.00', '56.00', '36.00', '77.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1986', '170.00', '57.00', '92.00', '76.00', '40.00', '56.00', '36.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1987', '170.00', '58.00', '92.00', '76.00', '40.00', '56.00', '36.00', '78.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1988', '170.00', '59.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1989', '170.00', '60.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1990', '170.00', '61.00', '94.00', '78.00', '40.00', '56.00', '36.00', '80.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1991', '170.00', '62.00', '94.00', '78.00', '40.00', '56.00', '36.00', '80.00', '99.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('1992', '170.00', '63.00', '93.00', '81.00', '41.00', '56.00', '36.00', '83.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1993', '170.00', '64.00', '94.00', '82.00', '41.00', '56.00', '36.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1994', '170.00', '65.00', '94.00', '82.00', '41.00', '56.00', '36.00', '84.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1995', '170.00', '66.00', '95.00', '83.00', '41.00', '56.00', '36.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1996', '170.00', '67.00', '95.00', '83.00', '41.00', '56.00', '36.00', '85.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1997', '170.00', '68.00', '96.00', '84.00', '41.00', '56.00', '36.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1998', '170.00', '69.00', '96.00', '84.00', '41.00', '56.00', '36.00', '86.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('1999', '170.00', '70.00', '97.00', '85.00', '41.00', '56.00', '36.00', '87.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2000', '170.00', '71.00', '97.00', '85.00', '41.00', '56.00', '36.00', '87.00', '101.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2001', '170.00', '72.00', '96.00', '88.00', '42.00', '56.00', '37.00', '90.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2002', '170.00', '73.00', '97.00', '89.00', '42.00', '56.00', '37.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2003', '170.00', '74.00', '97.00', '89.00', '42.00', '56.00', '37.00', '91.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2004', '170.00', '75.00', '98.00', '90.00', '42.00', '56.00', '37.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2005', '170.00', '76.00', '98.00', '90.00', '42.00', '56.00', '37.00', '92.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2006', '170.00', '77.00', '99.00', '91.00', '42.00', '56.00', '37.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2007', '170.00', '78.00', '99.00', '91.00', '42.00', '56.00', '37.00', '93.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2008', '170.00', '79.00', '100.00', '92.00', '42.00', '56.00', '37.00', '94.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2009', '170.00', '80.00', '100.00', '92.00', '42.00', '56.00', '37.00', '94.00', '103.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2010', '170.00', '81.00', '101.00', '93.00', '42.00', '56.00', '37.00', '95.00', '104.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2011', '170.00', '82.00', '101.00', '93.00', '42.00', '56.00', '37.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_female` VALUES ('2012', '170.00', '83.00', '102.00', '94.00', '42.00', '56.00', '37.00', '96.00', '105.00', '60.00', '102.00');
INSERT INTO `standard_female` VALUES ('2013', '170.00', '84.00', '102.00', '94.00', '42.00', '56.00', '37.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('2014', '170.00', '85.00', '103.00', '95.00', '42.00', '56.00', '37.00', '97.00', '106.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('2015', '171.00', '46.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2016', '171.00', '47.00', '88.00', '68.00', '40.00', '56.00', '35.00', '70.00', '94.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2017', '171.00', '48.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2018', '171.00', '49.00', '89.00', '69.00', '40.00', '56.00', '35.00', '71.00', '95.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2019', '171.00', '50.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2020', '171.00', '51.00', '90.00', '70.00', '40.00', '56.00', '35.00', '72.00', '96.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2021', '171.00', '52.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2022', '171.00', '53.00', '91.00', '71.00', '40.00', '56.00', '35.00', '73.00', '97.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2023', '171.00', '54.00', '92.00', '72.00', '40.00', '56.00', '35.00', '74.00', '98.00', '56.00', '102.00');
INSERT INTO `standard_female` VALUES ('2024', '171.00', '55.00', '91.00', '75.00', '40.00', '56.00', '36.00', '121.00', '96.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2025', '171.00', '56.00', '91.00', '75.00', '40.00', '56.00', '36.00', '110.00', '96.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2026', '171.00', '57.00', '92.00', '76.00', '40.00', '56.00', '36.00', '100.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2027', '171.00', '58.00', '92.00', '76.00', '40.00', '56.00', '36.00', '89.00', '97.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2028', '171.00', '59.00', '93.00', '77.00', '40.00', '56.00', '36.00', '79.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2029', '171.00', '60.00', '93.00', '77.00', '40.00', '56.00', '36.00', '68.00', '98.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2030', '171.00', '61.00', '94.00', '78.00', '40.00', '56.00', '36.00', '58.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2031', '171.00', '62.00', '94.00', '78.00', '40.00', '56.00', '36.00', '47.00', '99.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2032', '171.00', '63.00', '95.00', '79.00', '40.00', '56.00', '36.00', '37.00', '100.00', '57.00', '102.00');
INSERT INTO `standard_female` VALUES ('2033', '171.00', '64.00', '94.00', '82.00', '41.00', '56.00', '37.00', '84.00', '98.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2034', '171.00', '65.00', '94.00', '82.00', '41.00', '56.00', '37.00', '84.00', '98.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2035', '171.00', '66.00', '95.00', '83.00', '41.00', '56.00', '37.00', '85.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2036', '171.00', '67.00', '95.00', '83.00', '41.00', '56.00', '37.00', '85.00', '99.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2037', '171.00', '68.00', '96.00', '84.00', '41.00', '56.00', '37.00', '86.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2038', '171.00', '69.00', '96.00', '84.00', '41.00', '56.00', '37.00', '86.00', '100.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2039', '171.00', '70.00', '97.00', '85.00', '41.00', '56.00', '37.00', '87.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2040', '171.00', '71.00', '97.00', '85.00', '41.00', '56.00', '37.00', '87.00', '101.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2041', '171.00', '72.00', '98.00', '86.00', '41.00', '56.00', '37.00', '88.00', '102.00', '58.00', '102.00');
INSERT INTO `standard_female` VALUES ('2042', '171.00', '73.00', '97.00', '89.00', '42.00', '56.00', '38.00', '91.00', '100.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2043', '171.00', '74.00', '97.00', '89.00', '42.00', '56.00', '38.00', '91.00', '100.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2044', '171.00', '75.00', '98.00', '90.00', '42.00', '56.00', '38.00', '92.00', '101.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2045', '171.00', '76.00', '98.00', '90.00', '42.00', '56.00', '38.00', '92.00', '101.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2046', '171.00', '77.00', '99.00', '91.00', '42.00', '56.00', '38.00', '93.00', '102.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2047', '171.00', '78.00', '99.00', '91.00', '42.00', '56.00', '38.00', '93.00', '102.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2048', '171.00', '79.00', '100.00', '92.00', '42.00', '56.00', '38.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2049', '171.00', '80.00', '100.00', '92.00', '42.00', '56.00', '38.00', '94.00', '103.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2050', '171.00', '81.00', '101.00', '93.00', '42.00', '56.00', '38.00', '95.00', '104.00', '59.00', '102.00');
INSERT INTO `standard_female` VALUES ('2051', '171.00', '82.00', '101.00', '93.00', '42.00', '56.00', '38.00', '95.00', '104.00', '60.00', '102.00');
INSERT INTO `standard_female` VALUES ('2052', '171.00', '83.00', '102.00', '94.00', '42.00', '56.00', '38.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('2053', '171.00', '84.00', '102.00', '94.00', '42.00', '56.00', '38.00', '96.00', '105.00', '61.00', '102.00');
INSERT INTO `standard_female` VALUES ('2054', '171.00', '85.00', '103.00', '95.00', '42.00', '56.00', '38.00', '97.00', '106.00', '62.00', '102.00');
INSERT INTO `standard_female` VALUES ('2055', '171.00', '86.00', '103.00', '95.00', '42.00', '56.00', '38.00', '97.00', '106.00', '62.00', '102.00');
INSERT INTO `standard_female` VALUES ('2056', '172.00', '47.00', '89.00', '69.00', '40.00', '57.00', '35.00', '71.00', '94.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2057', '172.00', '48.00', '89.00', '69.00', '40.00', '57.00', '35.00', '71.00', '95.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2058', '172.00', '49.00', '90.00', '70.00', '40.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2059', '172.00', '50.00', '90.00', '70.00', '40.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2060', '172.00', '51.00', '91.00', '71.00', '40.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2061', '172.00', '52.00', '91.00', '71.00', '40.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2062', '172.00', '53.00', '92.00', '72.00', '40.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2063', '172.00', '54.00', '92.00', '72.00', '40.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2064', '172.00', '55.00', '93.00', '73.00', '40.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2065', '172.00', '56.00', '92.00', '76.00', '40.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2066', '172.00', '57.00', '92.00', '76.00', '40.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2067', '172.00', '58.00', '93.00', '77.00', '40.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2068', '172.00', '59.00', '93.00', '77.00', '40.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2069', '172.00', '60.00', '94.00', '78.00', '40.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2070', '172.00', '61.00', '94.00', '78.00', '40.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2071', '172.00', '62.00', '95.00', '79.00', '40.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2072', '172.00', '63.00', '95.00', '79.00', '40.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2073', '172.00', '64.00', '96.00', '80.00', '40.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2074', '172.00', '65.00', '95.00', '83.00', '41.00', '57.00', '37.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2075', '172.00', '66.00', '95.00', '83.00', '41.00', '57.00', '37.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2076', '172.00', '67.00', '96.00', '84.00', '41.00', '57.00', '37.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2077', '172.00', '68.00', '96.00', '84.00', '41.00', '57.00', '37.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2078', '172.00', '69.00', '97.00', '85.00', '41.00', '57.00', '37.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2079', '172.00', '70.00', '97.00', '85.00', '41.00', '57.00', '37.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2080', '172.00', '71.00', '98.00', '86.00', '41.00', '57.00', '37.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2081', '172.00', '72.00', '98.00', '86.00', '41.00', '57.00', '37.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2082', '172.00', '73.00', '99.00', '87.00', '41.00', '57.00', '37.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2083', '172.00', '74.00', '98.00', '90.00', '42.00', '57.00', '38.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2084', '172.00', '75.00', '98.00', '90.00', '42.00', '57.00', '38.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2085', '172.00', '76.00', '99.00', '91.00', '42.00', '57.00', '38.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2086', '172.00', '77.00', '99.00', '91.00', '42.00', '57.00', '38.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2087', '172.00', '78.00', '100.00', '92.00', '42.00', '57.00', '38.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2088', '172.00', '79.00', '100.00', '92.00', '42.00', '57.00', '38.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2089', '172.00', '80.00', '101.00', '93.00', '42.00', '57.00', '38.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2090', '172.00', '81.00', '101.00', '93.00', '42.00', '57.00', '38.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2091', '172.00', '82.00', '102.00', '94.00', '42.00', '57.00', '38.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2092', '172.00', '83.00', '102.00', '94.00', '42.00', '57.00', '38.00', '96.00', '105.00', '60.00', '103.00');
INSERT INTO `standard_female` VALUES ('2093', '172.00', '84.00', '103.00', '95.00', '42.00', '57.00', '38.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_female` VALUES ('2094', '172.00', '85.00', '103.00', '95.00', '42.00', '57.00', '38.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_female` VALUES ('2095', '172.00', '86.00', '104.00', '96.00', '42.00', '57.00', '38.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_female` VALUES ('2096', '172.00', '87.00', '104.00', '96.00', '42.00', '57.00', '38.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_female` VALUES ('2097', '173.00', '48.00', '89.00', '69.00', '41.00', '57.00', '35.00', '71.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2098', '173.00', '49.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2099', '173.00', '50.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2100', '173.00', '51.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2101', '173.00', '52.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2102', '173.00', '53.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2103', '173.00', '54.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2104', '173.00', '55.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2105', '173.00', '56.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '103.00');
INSERT INTO `standard_female` VALUES ('2106', '173.00', '57.00', '92.00', '76.00', '41.00', '57.00', '36.00', '78.00', '97.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2107', '173.00', '58.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2108', '173.00', '59.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2109', '173.00', '60.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2110', '173.00', '61.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2111', '173.00', '62.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2112', '173.00', '63.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2113', '173.00', '64.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2114', '173.00', '65.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '103.00');
INSERT INTO `standard_female` VALUES ('2115', '173.00', '66.00', '95.00', '83.00', '42.00', '57.00', '36.00', '85.00', '99.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2116', '173.00', '67.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2117', '173.00', '68.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2118', '173.00', '69.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2119', '173.00', '70.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2120', '173.00', '71.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2121', '173.00', '72.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2122', '173.00', '73.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2123', '173.00', '74.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '103.00');
INSERT INTO `standard_female` VALUES ('2124', '173.00', '75.00', '98.00', '90.00', '43.00', '57.00', '37.00', '92.00', '101.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2125', '173.00', '76.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2126', '173.00', '77.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2127', '173.00', '78.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2128', '173.00', '79.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2129', '173.00', '80.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2130', '173.00', '81.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2131', '173.00', '82.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2132', '173.00', '83.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '103.00');
INSERT INTO `standard_female` VALUES ('2133', '173.00', '84.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '60.00', '103.00');
INSERT INTO `standard_female` VALUES ('2134', '173.00', '85.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '61.00', '103.00');
INSERT INTO `standard_female` VALUES ('2135', '173.00', '86.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '61.00', '103.00');
INSERT INTO `standard_female` VALUES ('2136', '173.00', '87.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '62.00', '103.00');
INSERT INTO `standard_female` VALUES ('2137', '173.00', '88.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '62.00', '103.00');
INSERT INTO `standard_female` VALUES ('2138', '174.00', '49.00', '90.00', '70.00', '41.00', '57.00', '35.00', '72.00', '96.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2139', '174.00', '50.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2140', '174.00', '51.00', '91.00', '71.00', '41.00', '57.00', '35.00', '73.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2141', '174.00', '52.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2142', '174.00', '53.00', '92.00', '72.00', '41.00', '57.00', '35.00', '74.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2143', '174.00', '54.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2144', '174.00', '55.00', '93.00', '73.00', '41.00', '57.00', '35.00', '75.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2145', '174.00', '56.00', '94.00', '74.00', '41.00', '57.00', '35.00', '76.00', '100.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2146', '174.00', '57.00', '94.00', '74.00', '41.00', '57.00', '35.00', '76.00', '100.00', '56.00', '104.00');
INSERT INTO `standard_female` VALUES ('2147', '174.00', '58.00', '93.00', '77.00', '41.00', '57.00', '36.00', '79.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2148', '174.00', '59.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2149', '174.00', '60.00', '94.00', '78.00', '41.00', '57.00', '36.00', '80.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2150', '174.00', '61.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2151', '174.00', '62.00', '95.00', '79.00', '41.00', '57.00', '36.00', '81.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2152', '174.00', '63.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2153', '174.00', '64.00', '96.00', '80.00', '41.00', '57.00', '36.00', '82.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2154', '174.00', '65.00', '97.00', '81.00', '41.00', '57.00', '36.00', '83.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2155', '174.00', '66.00', '97.00', '81.00', '41.00', '57.00', '36.00', '83.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2156', '174.00', '67.00', '96.00', '84.00', '42.00', '57.00', '36.00', '86.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2157', '174.00', '68.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2158', '174.00', '69.00', '97.00', '85.00', '42.00', '57.00', '36.00', '87.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2159', '174.00', '70.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2160', '174.00', '71.00', '98.00', '86.00', '42.00', '57.00', '36.00', '88.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2161', '174.00', '72.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2162', '174.00', '73.00', '99.00', '87.00', '42.00', '57.00', '36.00', '89.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2163', '174.00', '74.00', '100.00', '88.00', '42.00', '57.00', '36.00', '90.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2164', '174.00', '75.00', '100.00', '88.00', '42.00', '57.00', '36.00', '90.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2165', '174.00', '76.00', '99.00', '91.00', '43.00', '57.00', '37.00', '93.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2166', '174.00', '77.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2167', '174.00', '78.00', '100.00', '92.00', '43.00', '57.00', '37.00', '94.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2168', '174.00', '79.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2169', '174.00', '80.00', '101.00', '93.00', '43.00', '57.00', '37.00', '95.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2170', '174.00', '81.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2171', '174.00', '82.00', '102.00', '94.00', '43.00', '57.00', '37.00', '96.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2172', '174.00', '83.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2173', '174.00', '84.00', '103.00', '95.00', '43.00', '57.00', '37.00', '97.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2174', '174.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2175', '174.00', '85.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2176', '174.00', '86.00', '104.00', '96.00', '43.00', '57.00', '37.00', '98.00', '107.00', '61.00', '104.00');
INSERT INTO `standard_female` VALUES ('2177', '174.00', '87.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '61.00', '104.00');
INSERT INTO `standard_female` VALUES ('2178', '174.00', '88.00', '105.00', '97.00', '43.00', '57.00', '37.00', '99.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2179', '174.00', '89.00', '106.00', '98.00', '43.00', '57.00', '37.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2180', '175.00', '50.00', '91.00', '71.00', '41.00', '58.00', '36.00', '113.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2181', '175.00', '51.00', '92.00', '72.00', '41.00', '58.00', '36.00', '104.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2182', '175.00', '52.00', '92.00', '72.00', '41.00', '58.00', '36.00', '94.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2183', '175.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '85.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2184', '175.00', '54.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2185', '175.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '66.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2186', '175.00', '56.00', '94.00', '74.00', '41.00', '58.00', '36.00', '56.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2187', '175.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '47.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2188', '175.00', '58.00', '95.00', '75.00', '41.00', '58.00', '36.00', '37.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2189', '175.00', '59.00', '94.00', '78.00', '41.00', '58.00', '37.00', '80.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2190', '175.00', '60.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2191', '175.00', '61.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2192', '175.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2193', '175.00', '63.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2194', '175.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2195', '175.00', '65.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2196', '175.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2197', '175.00', '67.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2198', '175.00', '68.00', '97.00', '85.00', '42.00', '58.00', '37.00', '87.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2199', '175.00', '69.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2200', '175.00', '70.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2201', '175.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2202', '175.00', '72.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2203', '175.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2204', '175.00', '74.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2205', '175.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2206', '175.00', '76.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2207', '175.00', '77.00', '100.00', '92.00', '43.00', '58.00', '38.00', '94.00', '103.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2208', '175.00', '78.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '103.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2209', '175.00', '79.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2210', '175.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2211', '175.00', '81.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2212', '175.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2213', '175.00', '83.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2214', '175.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2215', '175.00', '85.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2216', '175.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '107.00', '61.00', '104.00');
INSERT INTO `standard_female` VALUES ('2217', '175.00', '87.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2218', '175.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '108.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2219', '175.00', '89.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '63.00', '104.00');
INSERT INTO `standard_female` VALUES ('2220', '175.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '109.00', '63.00', '104.00');
INSERT INTO `standard_female` VALUES ('2221', '176.00', '51.00', '92.00', '72.00', '41.00', '58.00', '36.00', '74.00', '97.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2222', '176.00', '52.00', '92.00', '72.00', '41.00', '58.00', '36.00', '74.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2223', '176.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2224', '176.00', '54.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2225', '176.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2226', '176.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2227', '176.00', '56.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2228', '176.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2229', '176.00', '58.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2230', '176.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '104.00');
INSERT INTO `standard_female` VALUES ('2231', '176.00', '60.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2232', '176.00', '61.00', '95.00', '79.00', '41.00', '58.00', '37.00', '81.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2233', '176.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2234', '176.00', '63.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2235', '176.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2236', '176.00', '65.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2237', '176.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2238', '176.00', '67.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2239', '176.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '104.00');
INSERT INTO `standard_female` VALUES ('2240', '176.00', '69.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2241', '176.00', '70.00', '98.00', '86.00', '42.00', '58.00', '37.00', '88.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2242', '176.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2243', '176.00', '72.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2244', '176.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2245', '176.00', '74.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2246', '176.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2247', '176.00', '76.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2248', '176.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '104.00');
INSERT INTO `standard_female` VALUES ('2249', '176.00', '78.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2250', '176.00', '79.00', '101.00', '93.00', '43.00', '58.00', '38.00', '95.00', '104.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2251', '176.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2252', '176.00', '81.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2253', '176.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2254', '176.00', '83.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2255', '176.00', '85.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2256', '176.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '104.00');
INSERT INTO `standard_female` VALUES ('2257', '176.00', '87.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '61.00', '104.00');
INSERT INTO `standard_female` VALUES ('2258', '176.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2259', '176.00', '89.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '62.00', '104.00');
INSERT INTO `standard_female` VALUES ('2260', '176.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '63.00', '104.00');
INSERT INTO `standard_female` VALUES ('2261', '176.00', '91.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '63.00', '104.00');
INSERT INTO `standard_female` VALUES ('2262', '177.00', '52.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '98.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2263', '177.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2264', '177.00', '54.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2265', '177.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2266', '177.00', '56.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2267', '177.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2268', '177.00', '58.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2269', '177.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2270', '177.00', '60.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2271', '177.00', '61.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '100.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2272', '177.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2273', '177.00', '63.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2274', '177.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2275', '177.00', '65.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2276', '177.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2277', '177.00', '67.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2278', '177.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2279', '177.00', '69.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2280', '177.00', '70.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '102.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2281', '177.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2282', '177.00', '72.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2283', '177.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2284', '177.00', '74.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2285', '177.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2286', '177.00', '76.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2287', '177.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2288', '177.00', '78.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2289', '177.00', '79.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '104.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2290', '177.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2291', '177.00', '81.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2292', '177.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2293', '177.00', '83.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2294', '177.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2295', '177.00', '85.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2296', '177.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2297', '177.00', '87.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2298', '177.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '61.00', '105.00');
INSERT INTO `standard_female` VALUES ('2299', '177.00', '89.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '109.00', '62.00', '105.00');
INSERT INTO `standard_female` VALUES ('2300', '177.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '62.00', '105.00');
INSERT INTO `standard_female` VALUES ('2301', '177.00', '91.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '110.00', '63.00', '105.00');
INSERT INTO `standard_female` VALUES ('2302', '177.00', '92.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '63.00', '105.00');
INSERT INTO `standard_female` VALUES ('2303', '178.00', '53.00', '93.00', '73.00', '41.00', '58.00', '36.00', '75.00', '99.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2304', '178.00', '54.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2305', '178.00', '55.00', '94.00', '74.00', '41.00', '58.00', '36.00', '76.00', '100.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2306', '178.00', '56.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2307', '178.00', '57.00', '95.00', '75.00', '41.00', '58.00', '36.00', '77.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2308', '178.00', '58.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '101.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2309', '178.00', '59.00', '96.00', '76.00', '41.00', '58.00', '36.00', '78.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2310', '178.00', '60.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '102.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2311', '178.00', '61.00', '97.00', '77.00', '41.00', '58.00', '36.00', '79.00', '103.00', '57.00', '105.00');
INSERT INTO `standard_female` VALUES ('2312', '178.00', '62.00', '96.00', '80.00', '41.00', '58.00', '37.00', '82.00', '101.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2313', '178.00', '63.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2314', '178.00', '64.00', '97.00', '81.00', '41.00', '58.00', '37.00', '83.00', '102.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2315', '178.00', '65.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2316', '178.00', '66.00', '98.00', '82.00', '41.00', '58.00', '37.00', '84.00', '103.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2317', '178.00', '67.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2318', '178.00', '68.00', '99.00', '83.00', '41.00', '58.00', '37.00', '85.00', '104.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2319', '178.00', '69.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '105.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2320', '178.00', '70.00', '100.00', '84.00', '41.00', '58.00', '37.00', '86.00', '105.00', '58.00', '105.00');
INSERT INTO `standard_female` VALUES ('2321', '178.00', '71.00', '99.00', '87.00', '42.00', '58.00', '37.00', '89.00', '103.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2322', '178.00', '72.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2323', '178.00', '73.00', '100.00', '88.00', '42.00', '58.00', '37.00', '90.00', '104.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2324', '178.00', '74.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2325', '178.00', '75.00', '101.00', '89.00', '42.00', '58.00', '37.00', '91.00', '105.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2326', '178.00', '76.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2327', '178.00', '77.00', '102.00', '90.00', '42.00', '58.00', '37.00', '92.00', '106.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2328', '178.00', '78.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '107.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2329', '178.00', '79.00', '103.00', '91.00', '42.00', '58.00', '37.00', '93.00', '107.00', '59.00', '105.00');
INSERT INTO `standard_female` VALUES ('2330', '178.00', '80.00', '102.00', '94.00', '43.00', '58.00', '38.00', '96.00', '105.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2331', '178.00', '81.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2332', '178.00', '82.00', '103.00', '95.00', '43.00', '58.00', '38.00', '97.00', '106.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2333', '178.00', '83.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2334', '178.00', '84.00', '104.00', '96.00', '43.00', '58.00', '38.00', '98.00', '107.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2335', '178.00', '85.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2336', '178.00', '86.00', '105.00', '97.00', '43.00', '58.00', '38.00', '99.00', '108.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2337', '178.00', '87.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2338', '178.00', '88.00', '106.00', '98.00', '43.00', '58.00', '38.00', '100.00', '109.00', '60.00', '105.00');
INSERT INTO `standard_female` VALUES ('2339', '178.00', '89.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '61.00', '105.00');
INSERT INTO `standard_female` VALUES ('2340', '178.00', '90.00', '107.00', '99.00', '43.00', '58.00', '38.00', '101.00', '110.00', '62.00', '105.00');
INSERT INTO `standard_female` VALUES ('2341', '178.00', '91.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '62.00', '105.00');
INSERT INTO `standard_female` VALUES ('2342', '178.00', '92.00', '108.00', '100.00', '43.00', '58.00', '38.00', '102.00', '111.00', '63.00', '105.00');
INSERT INTO `standard_female` VALUES ('2343', '178.00', '93.00', '109.00', '101.00', '43.00', '58.00', '38.00', '103.00', '112.00', '63.00', '105.00');
INSERT INTO `standard_female` VALUES ('2344', '179.00', '54.00', '94.00', '74.00', '42.00', '59.00', '36.00', '76.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2345', '179.00', '55.00', '95.00', '75.00', '42.00', '59.00', '36.00', '77.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2346', '179.00', '56.00', '95.00', '75.00', '42.00', '59.00', '36.00', '77.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2347', '179.00', '57.00', '96.00', '76.00', '42.00', '59.00', '36.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2348', '179.00', '58.00', '96.00', '76.00', '42.00', '59.00', '36.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2349', '179.00', '59.00', '97.00', '77.00', '42.00', '59.00', '36.00', '79.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2350', '179.00', '60.00', '97.00', '77.00', '42.00', '59.00', '36.00', '79.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2351', '179.00', '61.00', '98.00', '78.00', '42.00', '59.00', '36.00', '80.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2352', '179.00', '62.00', '98.00', '78.00', '42.00', '59.00', '36.00', '80.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2353', '179.00', '63.00', '97.00', '81.00', '42.00', '59.00', '37.00', '83.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2354', '179.00', '64.00', '98.00', '82.00', '42.00', '59.00', '37.00', '84.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2355', '179.00', '65.00', '98.00', '82.00', '42.00', '59.00', '37.00', '84.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2356', '179.00', '66.00', '99.00', '83.00', '42.00', '59.00', '37.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2357', '179.00', '67.00', '99.00', '83.00', '42.00', '59.00', '37.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2358', '179.00', '68.00', '100.00', '84.00', '42.00', '59.00', '37.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2359', '179.00', '69.00', '100.00', '84.00', '42.00', '59.00', '37.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2360', '179.00', '70.00', '101.00', '85.00', '42.00', '59.00', '37.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2361', '179.00', '71.00', '101.00', '85.00', '42.00', '59.00', '37.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2362', '179.00', '72.00', '100.00', '88.00', '43.00', '59.00', '37.00', '90.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2363', '179.00', '73.00', '101.00', '89.00', '43.00', '59.00', '37.00', '91.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2364', '179.00', '74.00', '101.00', '89.00', '43.00', '59.00', '37.00', '91.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2365', '179.00', '75.00', '102.00', '90.00', '43.00', '59.00', '37.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2366', '179.00', '76.00', '102.00', '90.00', '43.00', '59.00', '37.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2367', '179.00', '77.00', '103.00', '91.00', '43.00', '59.00', '37.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2368', '179.00', '78.00', '103.00', '91.00', '43.00', '59.00', '37.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2369', '179.00', '79.00', '104.00', '92.00', '43.00', '59.00', '37.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2370', '179.00', '80.00', '104.00', '92.00', '43.00', '59.00', '37.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2371', '179.00', '81.00', '103.00', '95.00', '44.00', '59.00', '38.00', '97.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2372', '179.00', '82.00', '104.00', '96.00', '44.00', '59.00', '38.00', '98.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2373', '179.00', '83.00', '104.00', '96.00', '44.00', '59.00', '38.00', '98.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2374', '179.00', '84.00', '105.00', '97.00', '44.00', '59.00', '38.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2375', '179.00', '85.00', '105.00', '97.00', '44.00', '59.00', '38.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2376', '179.00', '86.00', '106.00', '98.00', '44.00', '59.00', '38.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2377', '179.00', '87.00', '106.00', '98.00', '44.00', '59.00', '38.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2378', '179.00', '88.00', '107.00', '99.00', '44.00', '59.00', '38.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2379', '179.00', '89.00', '107.00', '99.00', '44.00', '59.00', '38.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2380', '179.00', '90.00', '108.00', '100.00', '44.00', '59.00', '38.00', '102.00', '110.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2381', '179.00', '91.00', '108.00', '100.00', '44.00', '59.00', '38.00', '102.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2382', '179.00', '92.00', '109.00', '101.00', '44.00', '59.00', '38.00', '103.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2383', '179.00', '93.00', '109.00', '101.00', '44.00', '59.00', '38.00', '103.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2384', '179.00', '94.00', '110.00', '102.00', '44.00', '59.00', '38.00', '104.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2385', '180.00', '55.00', '95.00', '75.00', '42.00', '59.00', '37.00', '77.00', '100.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2386', '180.00', '56.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2387', '180.00', '57.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2388', '180.00', '58.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2389', '180.00', '59.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2390', '180.00', '60.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2391', '180.00', '61.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2392', '180.00', '62.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2393', '180.00', '63.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2394', '180.00', '64.00', '98.00', '82.00', '42.00', '59.00', '38.00', '84.00', '102.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2395', '180.00', '65.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2396', '180.00', '66.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2397', '180.00', '67.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2398', '180.00', '68.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2399', '180.00', '69.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2400', '180.00', '70.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2401', '180.00', '71.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2402', '180.00', '72.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2403', '180.00', '73.00', '101.00', '89.00', '43.00', '59.00', '38.00', '91.00', '104.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2404', '180.00', '74.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2405', '180.00', '75.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2406', '180.00', '76.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2407', '180.00', '77.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2408', '180.00', '78.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2409', '180.00', '79.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2410', '180.00', '80.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2411', '180.00', '81.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2412', '180.00', '82.00', '104.00', '96.00', '44.00', '59.00', '39.00', '98.00', '106.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2413', '180.00', '83.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2414', '180.00', '84.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2415', '180.00', '85.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2416', '180.00', '86.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2417', '180.00', '87.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2418', '180.00', '88.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2419', '180.00', '89.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2420', '180.00', '90.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2421', '180.00', '91.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2422', '180.00', '92.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2423', '180.00', '93.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2424', '180.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2425', '180.00', '95.00', '111.00', '103.00', '44.00', '59.00', '39.00', '113.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2426', '181.00', '56.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2427', '181.00', '57.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2428', '181.00', '58.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2429', '181.00', '59.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2430', '181.00', '60.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2431', '181.00', '61.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2432', '181.00', '62.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2433', '181.00', '63.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2434', '181.00', '64.00', '100.00', '80.00', '42.00', '59.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2435', '181.00', '65.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2436', '181.00', '66.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2437', '181.00', '67.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2438', '181.00', '68.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2439', '181.00', '69.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2440', '181.00', '70.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2441', '181.00', '71.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2442', '181.00', '72.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2443', '181.00', '73.00', '103.00', '87.00', '42.00', '59.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2444', '181.00', '74.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2445', '181.00', '75.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2446', '181.00', '76.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2447', '181.00', '77.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2448', '181.00', '78.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2449', '181.00', '79.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2450', '181.00', '80.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2451', '181.00', '81.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2452', '181.00', '82.00', '106.00', '94.00', '43.00', '59.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2453', '181.00', '83.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2454', '181.00', '84.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2455', '181.00', '85.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2456', '181.00', '86.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2457', '181.00', '87.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2458', '181.00', '88.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2459', '181.00', '89.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2460', '181.00', '90.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2461', '181.00', '91.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2462', '181.00', '92.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2463', '181.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '111.00', '111.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2464', '181.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2465', '181.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '112.00', '112.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2466', '181.00', '96.00', '111.00', '103.00', '44.00', '59.00', '39.00', '113.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2467', '182.00', '57.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2468', '182.00', '58.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2469', '182.00', '59.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2470', '182.00', '60.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2471', '182.00', '61.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2472', '182.00', '62.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2473', '182.00', '63.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2474', '182.00', '64.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2475', '182.00', '65.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2476', '182.00', '66.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2477', '182.00', '67.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2478', '182.00', '68.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2479', '182.00', '69.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2480', '182.00', '70.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2481', '182.00', '71.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2482', '182.00', '72.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2483', '182.00', '73.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2484', '182.00', '74.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2485', '182.00', '75.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2486', '182.00', '76.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2487', '182.00', '77.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2488', '182.00', '78.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2489', '182.00', '79.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2490', '182.00', '80.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2491', '182.00', '81.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2492', '182.00', '82.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2493', '182.00', '83.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2494', '182.00', '84.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2495', '182.00', '85.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2496', '182.00', '86.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2497', '182.00', '87.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2498', '182.00', '88.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2499', '182.00', '89.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2500', '182.00', '90.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2501', '182.00', '91.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2502', '182.00', '92.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2503', '182.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2504', '182.00', '94.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2505', '182.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2506', '182.00', '96.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2507', '182.00', '97.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2508', '183.00', '58.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '101.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2509', '183.00', '59.00', '96.00', '76.00', '42.00', '59.00', '37.00', '78.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2510', '183.00', '60.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2511', '183.00', '61.00', '97.00', '77.00', '42.00', '59.00', '37.00', '79.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2512', '183.00', '62.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2513', '183.00', '63.00', '98.00', '78.00', '42.00', '59.00', '37.00', '80.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2514', '183.00', '64.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2515', '183.00', '65.00', '99.00', '79.00', '42.00', '59.00', '37.00', '81.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2516', '183.00', '66.00', '100.00', '80.00', '42.00', '59.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2517', '183.00', '67.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '103.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2518', '183.00', '68.00', '99.00', '83.00', '42.00', '59.00', '38.00', '85.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2519', '183.00', '69.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2520', '183.00', '70.00', '100.00', '84.00', '42.00', '59.00', '38.00', '86.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2521', '183.00', '71.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2522', '183.00', '72.00', '101.00', '85.00', '42.00', '59.00', '38.00', '87.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2523', '183.00', '73.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2524', '183.00', '74.00', '102.00', '86.00', '42.00', '59.00', '38.00', '88.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2525', '183.00', '75.00', '103.00', '87.00', '42.00', '59.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2526', '183.00', '76.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '105.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2527', '183.00', '77.00', '102.00', '90.00', '43.00', '59.00', '38.00', '92.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2528', '183.00', '78.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2529', '183.00', '79.00', '103.00', '91.00', '43.00', '59.00', '38.00', '93.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2530', '183.00', '80.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2531', '183.00', '81.00', '104.00', '92.00', '43.00', '59.00', '38.00', '94.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2532', '183.00', '82.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2533', '183.00', '83.00', '105.00', '93.00', '43.00', '59.00', '38.00', '95.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2534', '183.00', '84.00', '106.00', '94.00', '43.00', '59.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2535', '183.00', '85.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '107.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2536', '183.00', '86.00', '105.00', '97.00', '44.00', '59.00', '39.00', '99.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2537', '183.00', '87.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2538', '183.00', '88.00', '106.00', '98.00', '44.00', '59.00', '39.00', '100.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2539', '183.00', '89.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2540', '183.00', '90.00', '107.00', '99.00', '44.00', '59.00', '39.00', '101.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2541', '183.00', '91.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2542', '183.00', '92.00', '108.00', '100.00', '44.00', '59.00', '39.00', '102.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2543', '183.00', '93.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '111.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2544', '183.00', '94.00', '109.00', '101.00', '44.00', '59.00', '39.00', '103.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2545', '183.00', '95.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '112.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2546', '183.00', '96.00', '110.00', '102.00', '44.00', '59.00', '39.00', '104.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2547', '183.00', '97.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2548', '183.00', '98.00', '111.00', '103.00', '44.00', '59.00', '39.00', '105.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2549', '184.00', '59.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2550', '184.00', '60.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2551', '184.00', '61.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2552', '184.00', '62.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2553', '184.00', '63.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2554', '184.00', '64.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2555', '184.00', '65.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2556', '184.00', '66.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2557', '184.00', '67.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2558', '184.00', '68.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2559', '184.00', '69.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2560', '184.00', '70.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2561', '184.00', '71.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2562', '184.00', '72.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2563', '184.00', '73.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2564', '184.00', '74.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2565', '184.00', '75.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2566', '184.00', '76.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2567', '184.00', '77.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2568', '184.00', '78.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2569', '184.00', '79.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2570', '184.00', '80.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2571', '184.00', '81.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2572', '184.00', '82.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2573', '184.00', '83.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2574', '184.00', '84.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2575', '184.00', '85.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2576', '184.00', '86.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2577', '184.00', '87.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2578', '184.00', '88.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2579', '184.00', '89.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2580', '184.00', '90.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2581', '184.00', '91.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2582', '184.00', '92.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2583', '184.00', '93.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2584', '184.00', '94.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2585', '184.00', '95.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2586', '184.00', '96.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2587', '184.00', '97.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2588', '184.00', '98.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2589', '184.00', '99.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2590', '185.00', '60.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2591', '185.00', '61.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2592', '185.00', '62.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2593', '185.00', '63.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2594', '185.00', '64.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2595', '185.00', '65.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2596', '185.00', '66.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2597', '185.00', '67.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2598', '185.00', '68.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2599', '185.00', '69.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2600', '185.00', '70.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2601', '185.00', '71.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2602', '185.00', '72.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2603', '185.00', '73.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2604', '185.00', '74.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2605', '185.00', '75.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2606', '185.00', '76.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2607', '185.00', '77.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2608', '185.00', '78.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2609', '185.00', '79.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2610', '185.00', '80.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2611', '185.00', '81.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2612', '185.00', '82.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2613', '185.00', '83.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2614', '185.00', '84.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2615', '185.00', '85.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2616', '185.00', '86.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2617', '185.00', '87.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2618', '185.00', '88.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2619', '185.00', '89.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2620', '185.00', '90.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2621', '185.00', '91.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2622', '185.00', '92.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2623', '185.00', '93.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2624', '185.00', '94.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2625', '185.00', '95.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2626', '185.00', '96.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2627', '185.00', '97.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2628', '185.00', '98.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2629', '185.00', '99.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2630', '185.00', '100.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2631', '186.00', '61.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2632', '186.00', '62.00', '97.00', '77.00', '42.00', '60.00', '37.00', '79.00', '102.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2633', '186.00', '63.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2634', '186.00', '64.00', '98.00', '78.00', '42.00', '60.00', '37.00', '80.00', '103.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2635', '186.00', '65.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2636', '186.00', '66.00', '99.00', '79.00', '42.00', '60.00', '37.00', '81.00', '104.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2637', '186.00', '67.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2638', '186.00', '68.00', '100.00', '80.00', '42.00', '60.00', '37.00', '82.00', '105.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2639', '186.00', '69.00', '101.00', '81.00', '42.00', '60.00', '37.00', '83.00', '106.00', '58.00', '106.00');
INSERT INTO `standard_female` VALUES ('2640', '186.00', '70.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2641', '186.00', '71.00', '100.00', '84.00', '42.00', '60.00', '38.00', '86.00', '104.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2642', '186.00', '72.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2643', '186.00', '73.00', '101.00', '85.00', '42.00', '60.00', '38.00', '87.00', '105.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2644', '186.00', '74.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2645', '186.00', '75.00', '102.00', '86.00', '42.00', '60.00', '38.00', '88.00', '106.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2646', '186.00', '76.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2647', '186.00', '77.00', '103.00', '87.00', '42.00', '60.00', '38.00', '89.00', '107.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2648', '186.00', '78.00', '104.00', '88.00', '42.00', '60.00', '38.00', '90.00', '108.00', '59.00', '106.00');
INSERT INTO `standard_female` VALUES ('2649', '186.00', '79.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2650', '186.00', '80.00', '103.00', '91.00', '43.00', '60.00', '38.00', '93.00', '106.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2651', '186.00', '81.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2652', '186.00', '82.00', '104.00', '92.00', '43.00', '60.00', '38.00', '94.00', '107.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2653', '186.00', '83.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2654', '186.00', '84.00', '105.00', '93.00', '43.00', '60.00', '38.00', '95.00', '108.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2655', '186.00', '85.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2656', '186.00', '86.00', '106.00', '94.00', '43.00', '60.00', '38.00', '96.00', '109.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2657', '186.00', '87.00', '107.00', '95.00', '43.00', '60.00', '38.00', '97.00', '110.00', '60.00', '106.00');
INSERT INTO `standard_female` VALUES ('2658', '186.00', '88.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2659', '186.00', '89.00', '106.00', '98.00', '44.00', '60.00', '39.00', '100.00', '108.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2660', '186.00', '90.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2661', '186.00', '91.00', '107.00', '99.00', '44.00', '60.00', '39.00', '101.00', '109.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2662', '186.00', '92.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2663', '186.00', '93.00', '108.00', '100.00', '44.00', '60.00', '39.00', '102.00', '110.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2664', '186.00', '94.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2665', '186.00', '95.00', '109.00', '101.00', '44.00', '60.00', '39.00', '103.00', '111.00', '61.00', '106.00');
INSERT INTO `standard_female` VALUES ('2666', '186.00', '96.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2667', '186.00', '97.00', '110.00', '102.00', '44.00', '60.00', '39.00', '104.00', '112.00', '62.00', '106.00');
INSERT INTO `standard_female` VALUES ('2668', '186.00', '98.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2669', '186.00', '99.00', '111.00', '103.00', '44.00', '60.00', '39.00', '105.00', '113.00', '63.00', '106.00');
INSERT INTO `standard_female` VALUES ('2670', '186.00', '100.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2671', '186.00', '101.00', '112.00', '104.00', '44.00', '60.00', '39.00', '106.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_female` VALUES ('2672', '187.00', '62.00', '98.00', '78.00', '43.00', '61.00', '38.00', '80.00', '103.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2673', '187.00', '63.00', '99.00', '79.00', '43.00', '61.00', '38.00', '81.00', '104.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2674', '187.00', '64.00', '99.00', '79.00', '43.00', '61.00', '38.00', '81.00', '104.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2675', '187.00', '65.00', '100.00', '80.00', '43.00', '61.00', '38.00', '82.00', '105.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2676', '187.00', '66.00', '100.00', '80.00', '43.00', '61.00', '38.00', '82.00', '105.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2677', '187.00', '67.00', '101.00', '81.00', '43.00', '61.00', '38.00', '83.00', '106.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2678', '187.00', '68.00', '101.00', '81.00', '43.00', '61.00', '38.00', '83.00', '106.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2679', '187.00', '69.00', '102.00', '82.00', '43.00', '61.00', '38.00', '84.00', '107.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2680', '187.00', '70.00', '102.00', '82.00', '43.00', '61.00', '38.00', '84.00', '107.00', '59.00', '107.00');
INSERT INTO `standard_female` VALUES ('2681', '187.00', '71.00', '101.00', '85.00', '43.00', '61.00', '39.00', '87.00', '105.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2682', '187.00', '72.00', '102.00', '86.00', '43.00', '61.00', '39.00', '88.00', '106.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2683', '187.00', '73.00', '102.00', '86.00', '43.00', '61.00', '39.00', '88.00', '106.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2684', '187.00', '74.00', '103.00', '87.00', '43.00', '61.00', '39.00', '89.00', '107.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2685', '187.00', '75.00', '103.00', '87.00', '43.00', '61.00', '39.00', '89.00', '107.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2686', '187.00', '76.00', '104.00', '88.00', '43.00', '61.00', '39.00', '90.00', '108.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2687', '187.00', '77.00', '104.00', '88.00', '43.00', '61.00', '39.00', '90.00', '108.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2688', '187.00', '78.00', '105.00', '89.00', '43.00', '61.00', '39.00', '91.00', '109.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2689', '187.00', '79.00', '105.00', '89.00', '43.00', '61.00', '39.00', '91.00', '109.00', '60.00', '107.00');
INSERT INTO `standard_female` VALUES ('2690', '187.00', '80.00', '104.00', '92.00', '44.00', '61.00', '39.00', '94.00', '107.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2691', '187.00', '81.00', '105.00', '93.00', '44.00', '61.00', '39.00', '95.00', '108.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2692', '187.00', '82.00', '105.00', '93.00', '44.00', '61.00', '39.00', '95.00', '108.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2693', '187.00', '83.00', '106.00', '94.00', '44.00', '61.00', '39.00', '96.00', '109.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2694', '187.00', '84.00', '106.00', '94.00', '44.00', '61.00', '39.00', '96.00', '109.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2695', '187.00', '85.00', '107.00', '95.00', '44.00', '61.00', '39.00', '97.00', '110.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2696', '187.00', '86.00', '107.00', '95.00', '44.00', '61.00', '39.00', '97.00', '110.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2697', '187.00', '87.00', '108.00', '96.00', '44.00', '61.00', '39.00', '98.00', '111.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2698', '187.00', '88.00', '108.00', '96.00', '44.00', '61.00', '39.00', '98.00', '111.00', '61.00', '107.00');
INSERT INTO `standard_female` VALUES ('2699', '187.00', '89.00', '107.00', '99.00', '45.00', '61.00', '40.00', '101.00', '109.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2700', '187.00', '90.00', '108.00', '100.00', '45.00', '61.00', '40.00', '102.00', '110.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2701', '187.00', '91.00', '108.00', '100.00', '45.00', '61.00', '40.00', '102.00', '110.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2702', '187.00', '92.00', '109.00', '101.00', '45.00', '61.00', '40.00', '103.00', '111.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2703', '187.00', '93.00', '109.00', '101.00', '45.00', '61.00', '40.00', '103.00', '111.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2704', '187.00', '94.00', '110.00', '102.00', '45.00', '61.00', '40.00', '104.00', '112.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2705', '187.00', '95.00', '110.00', '102.00', '45.00', '61.00', '40.00', '104.00', '112.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2706', '187.00', '96.00', '111.00', '103.00', '45.00', '61.00', '40.00', '105.00', '113.00', '62.00', '107.00');
INSERT INTO `standard_female` VALUES ('2707', '187.00', '97.00', '111.00', '103.00', '45.00', '61.00', '40.00', '105.00', '113.00', '63.00', '107.00');
INSERT INTO `standard_female` VALUES ('2708', '187.00', '98.00', '112.00', '104.00', '45.00', '61.00', '40.00', '106.00', '114.00', '63.00', '107.00');
INSERT INTO `standard_female` VALUES ('2709', '187.00', '99.00', '112.00', '104.00', '45.00', '61.00', '40.00', '106.00', '114.00', '64.00', '107.00');
INSERT INTO `standard_female` VALUES ('2710', '187.00', '100.00', '113.00', '105.00', '45.00', '61.00', '40.00', '107.00', '115.00', '64.00', '107.00');
INSERT INTO `standard_female` VALUES ('2711', '187.00', '101.00', '113.00', '105.00', '45.00', '61.00', '40.00', '107.00', '115.00', '65.00', '107.00');
INSERT INTO `standard_female` VALUES ('2712', '187.00', '102.00', '114.00', '106.00', '45.00', '61.00', '40.00', '108.00', '116.00', '65.00', '107.00');

-- ----------------------------
-- Table structure for standard_male
-- ----------------------------
DROP TABLE IF EXISTS `standard_male`;
CREATE TABLE `standard_male` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3045 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of standard_male
-- ----------------------------
INSERT INTO `standard_male` VALUES ('1523', '160.00', '42.00', '85.00', '69.00', '40.00', '56.00', '35.00', '71.00', '90.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1524', '160.00', '43.00', '85.50', '69.50', '40.00', '56.00', '35.00', '71.50', '89.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1525', '160.00', '44.00', '86.00', '70.00', '40.10', '56.00', '35.00', '72.00', '89.50', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1526', '160.00', '45.00', '86.50', '70.50', '40.20', '56.00', '35.00', '72.50', '90.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1527', '160.00', '46.00', '87.00', '71.00', '40.30', '56.00', '35.00', '73.00', '90.50', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1528', '160.00', '47.00', '85.00', '71.00', '40.30', '56.00', '36.00', '73.00', '89.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1529', '160.00', '48.00', '85.50', '71.50', '40.30', '56.00', '36.00', '73.50', '89.50', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1530', '160.00', '49.00', '86.00', '72.00', '40.30', '56.00', '36.00', '74.00', '90.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1531', '160.00', '50.00', '86.50', '72.50', '40.30', '56.00', '36.00', '74.50', '90.50', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1532', '160.00', '51.00', '87.00', '73.00', '40.30', '56.00', '36.00', '75.00', '91.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1533', '160.00', '52.00', '87.00', '75.00', '41.00', '56.00', '36.00', '77.00', '90.00', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1534', '160.00', '53.00', '87.50', '75.50', '41.00', '56.00', '36.00', '77.50', '90.50', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1535', '160.00', '54.00', '88.00', '76.00', '41.00', '56.00', '36.00', '78.00', '91.00', '53.20', '98.00');
INSERT INTO `standard_male` VALUES ('1536', '160.00', '55.00', '88.50', '76.50', '41.00', '56.00', '36.00', '78.50', '91.50', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1537', '160.00', '56.00', '89.00', '77.00', '41.00', '56.00', '36.00', '79.00', '92.00', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1538', '160.00', '57.00', '89.00', '79.00', '41.00', '56.00', '36.00', '81.00', '92.00', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1539', '160.00', '58.00', '89.50', '79.50', '41.00', '56.00', '36.00', '81.50', '92.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1540', '160.00', '59.00', '90.00', '80.00', '41.00', '56.00', '36.00', '82.00', '93.00', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1541', '160.00', '60.00', '90.50', '80.50', '41.00', '56.00', '36.00', '82.50', '93.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1542', '160.00', '61.00', '91.00', '81.00', '41.00', '56.00', '36.00', '83.00', '94.00', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1543', '160.00', '62.00', '91.50', '81.50', '41.00', '56.00', '36.00', '83.50', '94.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1544', '160.00', '63.00', '91.00', '83.00', '41.00', '56.00', '37.00', '85.00', '94.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1545', '160.00', '64.00', '91.50', '83.50', '41.00', '56.00', '37.00', '85.50', '94.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1546', '160.00', '65.00', '92.00', '84.00', '41.00', '56.00', '37.00', '86.00', '95.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1547', '160.00', '66.00', '92.50', '84.50', '41.00', '56.00', '37.00', '86.50', '95.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1548', '160.00', '67.00', '93.00', '85.00', '41.00', '56.00', '37.00', '87.00', '96.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1549', '160.00', '68.00', '93.50', '85.50', '41.00', '56.00', '37.00', '87.50', '96.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1550', '160.00', '69.00', '93.00', '89.00', '42.00', '56.00', '37.00', '91.00', '96.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1551', '160.00', '70.00', '93.50', '89.50', '42.00', '56.00', '37.00', '91.50', '96.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1552', '160.00', '71.00', '94.00', '90.00', '42.00', '56.00', '37.00', '92.00', '97.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1553', '160.00', '72.00', '94.50', '90.50', '42.00', '56.00', '37.00', '92.50', '97.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1554', '160.00', '73.00', '95.00', '91.00', '42.00', '56.00', '37.00', '93.00', '98.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1555', '160.00', '74.00', '95.50', '91.50', '42.00', '56.00', '37.00', '93.50', '98.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1556', '160.00', '75.00', '94.50', '94.50', '43.00', '56.00', '38.00', '96.50', '102.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1557', '160.00', '76.00', '95.00', '95.00', '43.00', '56.00', '38.00', '97.00', '103.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1558', '160.00', '77.00', '95.50', '95.50', '43.00', '56.00', '38.00', '97.50', '103.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1559', '160.00', '78.00', '96.00', '96.00', '43.00', '56.00', '38.00', '98.00', '104.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1560', '160.00', '79.00', '96.50', '96.50', '43.00', '56.00', '38.00', '98.50', '104.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1561', '160.00', '80.00', '97.00', '97.00', '43.00', '56.00', '38.00', '99.00', '105.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1562', '160.00', '81.00', '97.50', '97.50', '43.00', '56.00', '38.00', '99.50', '105.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1563', '160.00', '82.00', '98.00', '98.00', '43.00', '56.00', '38.00', '100.00', '106.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1564', '160.00', '83.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '58.00', '98.00');
INSERT INTO `standard_male` VALUES ('1565', '160.00', '84.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '59.00', '98.00');
INSERT INTO `standard_male` VALUES ('1566', '160.00', '85.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '59.00', '98.00');
INSERT INTO `standard_male` VALUES ('1567', '160.00', '86.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '60.00', '98.00');
INSERT INTO `standard_male` VALUES ('1568', '160.00', '87.00', '101.00', '101.00', '43.00', '56.00', '38.00', '103.00', '109.00', '60.00', '98.00');
INSERT INTO `standard_male` VALUES ('1569', '161.00', '43.00', '85.40', '69.40', '40.00', '56.00', '35.00', '71.40', '88.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1570', '161.00', '44.00', '85.90', '69.90', '40.00', '56.00', '35.00', '71.90', '88.50', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1571', '161.00', '45.00', '86.40', '70.40', '40.00', '56.00', '35.00', '72.40', '89.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1572', '161.00', '46.00', '86.90', '70.90', '40.00', '56.00', '35.00', '72.90', '89.50', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1573', '161.00', '47.00', '87.40', '71.40', '40.00', '56.00', '35.00', '73.40', '90.00', '51.00', '98.00');
INSERT INTO `standard_male` VALUES ('1574', '161.00', '48.00', '85.40', '71.40', '40.00', '56.00', '36.00', '73.40', '89.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1575', '161.00', '49.00', '85.90', '71.90', '40.00', '56.00', '36.00', '73.90', '89.50', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1576', '161.00', '50.00', '86.40', '72.40', '40.00', '56.00', '36.00', '74.40', '90.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1577', '161.00', '51.00', '86.90', '72.90', '40.00', '56.00', '36.00', '74.90', '90.50', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1578', '161.00', '52.00', '87.40', '73.40', '40.00', '56.00', '36.00', '75.40', '91.00', '52.00', '98.00');
INSERT INTO `standard_male` VALUES ('1579', '161.00', '53.00', '87.40', '75.40', '41.00', '56.00', '36.00', '77.40', '90.00', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1580', '161.00', '54.00', '87.90', '75.90', '41.00', '56.00', '36.00', '77.90', '90.50', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1581', '161.00', '55.00', '88.40', '76.40', '41.00', '56.00', '36.00', '78.40', '91.00', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1582', '161.00', '56.00', '88.90', '76.90', '41.00', '56.00', '36.00', '78.90', '91.50', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1583', '161.00', '57.00', '89.40', '77.40', '41.00', '56.00', '36.00', '79.40', '92.00', '53.00', '98.00');
INSERT INTO `standard_male` VALUES ('1584', '161.00', '58.00', '89.40', '79.40', '41.00', '56.00', '36.00', '81.40', '92.00', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1585', '161.00', '59.00', '89.90', '79.90', '41.00', '56.00', '36.00', '81.90', '92.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1586', '161.00', '60.00', '90.40', '80.40', '41.00', '56.00', '36.00', '82.40', '93.00', '53.60', '98.00');
INSERT INTO `standard_male` VALUES ('1587', '161.00', '61.00', '90.90', '80.90', '41.00', '56.00', '36.00', '82.90', '93.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1588', '161.00', '62.00', '91.40', '81.40', '41.00', '56.00', '36.00', '83.40', '94.00', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1589', '161.00', '63.00', '91.90', '81.90', '41.00', '56.00', '36.00', '83.90', '94.50', '54.00', '98.00');
INSERT INTO `standard_male` VALUES ('1590', '161.00', '64.00', '91.40', '83.40', '41.00', '56.00', '37.00', '85.40', '94.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1591', '161.00', '65.00', '91.90', '83.90', '41.00', '56.00', '37.00', '85.90', '94.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1592', '161.00', '66.00', '92.40', '84.40', '41.00', '56.00', '37.00', '86.40', '95.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1593', '161.00', '67.00', '92.90', '84.90', '41.00', '56.00', '37.00', '86.90', '95.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1594', '161.00', '68.00', '93.40', '85.40', '41.00', '56.00', '37.00', '87.40', '96.00', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1595', '161.00', '69.00', '93.90', '85.90', '41.00', '56.00', '37.00', '87.90', '96.50', '55.00', '98.00');
INSERT INTO `standard_male` VALUES ('1596', '161.00', '70.00', '93.40', '89.40', '42.00', '56.00', '37.00', '91.40', '96.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1597', '161.00', '71.00', '93.90', '89.90', '42.00', '56.00', '37.00', '91.90', '96.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1598', '161.00', '72.00', '94.40', '90.40', '42.00', '56.00', '37.00', '92.40', '97.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1599', '161.00', '73.00', '94.90', '90.90', '42.00', '56.00', '37.00', '92.90', '97.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1600', '161.00', '74.00', '95.40', '91.40', '42.00', '56.00', '37.00', '93.40', '98.00', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1601', '161.00', '75.00', '95.90', '91.90', '42.00', '56.00', '37.00', '93.90', '98.50', '56.00', '98.00');
INSERT INTO `standard_male` VALUES ('1602', '161.00', '76.00', '94.90', '94.90', '43.00', '56.00', '38.00', '96.90', '102.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1603', '161.00', '77.00', '95.40', '95.40', '43.00', '56.00', '38.00', '97.40', '103.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1604', '161.00', '78.00', '95.90', '95.90', '43.00', '56.00', '38.00', '97.90', '103.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1605', '161.00', '79.00', '96.40', '96.40', '43.00', '56.00', '38.00', '98.40', '104.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1606', '161.00', '80.00', '96.90', '96.90', '43.00', '56.00', '38.00', '98.90', '104.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1607', '161.00', '81.00', '97.40', '97.40', '43.00', '56.00', '38.00', '99.40', '105.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1608', '161.00', '82.00', '97.90', '97.90', '43.00', '56.00', '38.00', '99.90', '105.50', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1609', '161.00', '83.00', '98.40', '98.40', '43.00', '56.00', '38.00', '100.40', '106.00', '57.00', '98.00');
INSERT INTO `standard_male` VALUES ('1610', '161.00', '84.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '58.00', '98.00');
INSERT INTO `standard_male` VALUES ('1611', '161.00', '85.00', '99.00', '99.00', '43.00', '56.00', '38.00', '101.00', '107.00', '59.00', '98.00');
INSERT INTO `standard_male` VALUES ('1612', '161.00', '86.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '59.00', '98.00');
INSERT INTO `standard_male` VALUES ('1613', '161.00', '87.00', '100.00', '100.00', '43.00', '56.00', '38.00', '102.00', '108.00', '60.00', '98.00');
INSERT INTO `standard_male` VALUES ('1614', '161.00', '88.00', '101.00', '101.00', '43.00', '56.00', '38.00', '103.00', '109.00', '60.00', '98.00');
INSERT INTO `standard_male` VALUES ('1615', '162.00', '44.00', '85.80', '69.80', '41.00', '56.60', '35.00', '71.80', '89.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1616', '162.00', '45.00', '86.30', '70.30', '41.00', '56.60', '35.00', '72.30', '89.50', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1617', '162.00', '46.00', '86.80', '70.80', '41.00', '56.60', '35.00', '72.80', '90.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1618', '162.00', '47.00', '87.30', '71.30', '41.00', '56.60', '35.00', '73.30', '90.50', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1619', '162.00', '48.00', '87.80', '71.80', '41.00', '56.60', '35.00', '73.80', '91.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1620', '162.00', '49.00', '85.80', '71.80', '41.00', '56.60', '36.00', '73.80', '90.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1621', '162.00', '50.00', '86.30', '72.30', '41.00', '56.60', '36.00', '74.30', '90.50', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1622', '162.00', '51.00', '86.80', '72.80', '41.00', '56.60', '36.00', '74.80', '91.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1623', '162.00', '52.00', '87.30', '73.30', '41.00', '56.60', '36.00', '75.30', '91.50', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1624', '162.00', '53.00', '87.80', '73.80', '41.00', '56.60', '36.00', '75.80', '92.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1625', '162.00', '54.00', '87.80', '75.80', '42.00', '56.60', '36.00', '77.80', '91.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1626', '162.00', '55.00', '88.30', '76.30', '42.00', '56.60', '36.00', '78.30', '91.50', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1627', '162.00', '56.00', '88.80', '76.80', '42.00', '56.60', '36.00', '78.80', '92.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1628', '162.00', '57.00', '89.30', '77.30', '42.00', '56.60', '36.00', '79.30', '92.50', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1629', '162.00', '58.00', '89.80', '77.80', '42.00', '56.60', '36.00', '79.80', '93.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1630', '162.00', '59.00', '89.80', '79.80', '42.00', '56.60', '36.00', '81.80', '93.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1631', '162.00', '60.00', '90.30', '80.30', '42.00', '56.60', '36.00', '82.30', '93.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1632', '162.00', '61.00', '90.80', '80.80', '42.00', '56.60', '36.00', '82.80', '94.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1633', '162.00', '62.00', '91.30', '81.30', '42.00', '56.60', '36.00', '83.30', '94.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1634', '162.00', '63.00', '91.80', '81.80', '42.00', '56.60', '36.00', '83.80', '95.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1635', '162.00', '64.00', '92.30', '82.30', '42.00', '56.60', '36.00', '84.30', '95.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1636', '162.00', '65.00', '91.80', '83.80', '42.00', '56.60', '37.00', '85.80', '95.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1637', '162.00', '66.00', '92.30', '84.30', '42.00', '56.60', '37.00', '86.30', '95.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1638', '162.00', '67.00', '92.80', '84.80', '42.00', '56.60', '37.00', '86.80', '96.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1639', '162.00', '68.00', '93.30', '85.30', '42.00', '56.60', '37.00', '87.30', '96.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1640', '162.00', '69.00', '93.80', '85.80', '42.00', '56.60', '37.00', '87.80', '97.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1641', '162.00', '70.00', '94.30', '86.30', '42.00', '56.60', '37.00', '88.30', '97.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1642', '162.00', '71.00', '93.80', '89.80', '43.00', '56.60', '37.00', '91.80', '97.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1643', '162.00', '72.00', '94.30', '90.30', '43.00', '56.60', '37.00', '92.30', '97.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1644', '162.00', '73.00', '94.80', '90.80', '43.00', '56.60', '37.00', '92.80', '98.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1645', '162.00', '74.00', '95.30', '91.30', '43.00', '56.60', '37.00', '93.30', '98.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1646', '162.00', '75.00', '95.80', '91.80', '43.00', '56.60', '37.00', '93.80', '99.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1647', '162.00', '76.00', '96.30', '92.30', '43.00', '56.60', '37.00', '94.30', '99.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1648', '162.00', '77.00', '95.30', '95.30', '44.00', '56.60', '38.00', '97.30', '103.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1649', '162.00', '78.00', '95.80', '95.80', '44.00', '56.60', '38.00', '97.80', '104.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1650', '162.00', '79.00', '96.30', '96.30', '44.00', '56.60', '38.00', '98.30', '104.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1651', '162.00', '80.00', '96.80', '96.80', '44.00', '56.60', '38.00', '98.80', '105.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1652', '162.00', '81.00', '97.30', '97.30', '44.00', '56.60', '38.00', '99.30', '105.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1653', '162.00', '82.00', '97.80', '97.80', '44.00', '56.60', '38.00', '99.80', '106.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1654', '162.00', '83.00', '98.30', '98.30', '44.00', '56.60', '38.00', '100.30', '106.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1655', '162.00', '84.00', '98.80', '98.80', '44.00', '56.60', '38.00', '100.80', '107.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1656', '162.00', '85.00', '99.00', '99.00', '44.00', '57.00', '38.00', '101.00', '108.00', '59.00', '99.00');
INSERT INTO `standard_male` VALUES ('1657', '162.00', '86.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '108.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1658', '162.00', '87.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '109.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1659', '162.00', '89.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '110.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1660', '162.00', '101.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '109.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1661', '163.00', '45.00', '85.80', '69.80', '41.00', '56.60', '35.00', '71.80', '89.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1662', '163.00', '46.00', '86.30', '70.30', '41.00', '56.60', '35.00', '72.30', '89.50', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1663', '163.00', '47.00', '86.80', '70.80', '41.00', '56.60', '35.00', '72.80', '90.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1664', '163.00', '48.00', '87.30', '71.30', '41.00', '56.60', '35.00', '73.30', '90.50', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1665', '163.00', '49.00', '87.80', '71.80', '41.00', '56.60', '35.00', '73.80', '91.00', '52.00', '98.60');
INSERT INTO `standard_male` VALUES ('1666', '163.00', '50.00', '85.80', '71.80', '41.00', '56.60', '36.00', '73.80', '90.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1667', '163.00', '51.00', '86.30', '72.30', '41.00', '56.60', '36.00', '74.30', '90.50', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1668', '163.00', '52.00', '86.80', '72.80', '41.00', '56.60', '36.00', '74.80', '91.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1669', '163.00', '53.00', '87.30', '73.30', '41.00', '56.60', '36.00', '75.30', '91.50', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1670', '163.00', '54.00', '87.80', '73.80', '41.00', '56.60', '36.00', '75.80', '92.00', '53.00', '98.60');
INSERT INTO `standard_male` VALUES ('1671', '163.00', '55.00', '87.80', '75.80', '42.00', '56.60', '36.00', '77.80', '91.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1672', '163.00', '56.00', '88.30', '76.30', '42.00', '56.60', '36.00', '78.30', '91.50', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1673', '163.00', '57.00', '88.80', '76.80', '42.00', '56.60', '36.00', '78.80', '92.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1674', '163.00', '58.00', '89.30', '77.30', '42.00', '56.60', '36.00', '79.30', '92.50', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1675', '163.00', '59.00', '89.80', '77.80', '42.00', '56.60', '36.00', '79.80', '93.00', '54.00', '98.60');
INSERT INTO `standard_male` VALUES ('1676', '163.00', '60.00', '89.80', '79.80', '42.00', '56.60', '36.00', '81.80', '93.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1677', '163.00', '61.00', '90.30', '80.30', '42.00', '56.60', '36.00', '82.30', '93.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1678', '163.00', '62.00', '90.80', '80.80', '42.00', '56.60', '36.00', '82.80', '94.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1679', '163.00', '63.00', '91.30', '81.30', '42.00', '56.60', '36.00', '83.30', '94.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1680', '163.00', '64.00', '91.80', '81.80', '42.00', '56.60', '36.00', '83.80', '95.00', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1681', '163.00', '65.00', '92.30', '82.30', '42.00', '56.60', '36.00', '84.30', '95.50', '55.00', '98.60');
INSERT INTO `standard_male` VALUES ('1682', '163.00', '66.00', '91.80', '83.80', '42.00', '56.60', '37.00', '85.80', '95.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1683', '163.00', '67.00', '92.30', '84.30', '42.00', '56.60', '37.00', '86.30', '95.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1684', '163.00', '68.00', '92.80', '84.80', '42.00', '56.60', '37.00', '86.80', '96.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1685', '163.00', '69.00', '93.30', '85.30', '42.00', '56.60', '37.00', '87.30', '96.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1686', '163.00', '70.00', '93.80', '85.80', '42.00', '56.60', '37.00', '87.80', '97.00', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1687', '163.00', '71.00', '94.30', '86.30', '42.00', '56.60', '37.00', '88.30', '97.50', '56.00', '98.60');
INSERT INTO `standard_male` VALUES ('1688', '163.00', '72.00', '93.80', '89.80', '43.00', '56.60', '37.00', '91.80', '97.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1689', '163.00', '73.00', '94.30', '90.30', '43.00', '56.60', '37.00', '92.30', '97.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1690', '163.00', '74.00', '94.80', '90.80', '43.00', '56.60', '37.00', '92.80', '98.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1691', '163.00', '75.00', '95.30', '91.30', '43.00', '56.60', '37.00', '93.30', '98.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1692', '163.00', '76.00', '95.80', '91.80', '43.00', '56.60', '37.00', '93.80', '99.00', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1693', '163.00', '77.00', '96.30', '92.30', '43.00', '56.60', '37.00', '94.30', '99.50', '57.00', '98.60');
INSERT INTO `standard_male` VALUES ('1694', '163.00', '78.00', '95.30', '95.30', '44.00', '56.60', '38.00', '97.30', '103.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1695', '163.00', '79.00', '95.80', '95.80', '44.00', '56.60', '38.00', '97.80', '104.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1696', '163.00', '80.00', '96.30', '96.30', '44.00', '56.60', '38.00', '98.30', '104.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1697', '163.00', '81.00', '96.80', '96.80', '44.00', '56.60', '38.00', '98.80', '105.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1698', '163.00', '82.00', '97.30', '97.30', '44.00', '56.60', '38.00', '99.30', '105.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1699', '163.00', '83.00', '97.80', '97.80', '44.00', '56.60', '38.00', '99.80', '106.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1700', '163.00', '84.00', '98.30', '98.30', '44.00', '56.60', '38.00', '100.30', '106.50', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1701', '163.00', '85.00', '98.80', '98.80', '44.00', '56.60', '38.00', '100.80', '107.00', '58.00', '98.60');
INSERT INTO `standard_male` VALUES ('1702', '163.00', '86.00', '99.00', '99.00', '44.00', '57.00', '38.00', '101.00', '108.00', '59.00', '99.00');
INSERT INTO `standard_male` VALUES ('1703', '163.00', '87.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '108.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1704', '163.00', '88.00', '100.00', '100.00', '44.00', '57.00', '38.00', '102.00', '109.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1705', '163.00', '89.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '109.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1706', '163.00', '90.00', '101.00', '101.00', '44.00', '57.00', '38.00', '103.00', '110.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1707', '164.00', '46.00', '86.60', '70.60', '41.00', '57.20', '36.00', '72.60', '90.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1708', '164.00', '47.00', '87.10', '71.10', '41.00', '57.20', '36.00', '73.10', '90.50', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1709', '164.00', '48.00', '87.60', '71.60', '41.00', '57.20', '36.00', '73.60', '91.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1710', '164.00', '49.00', '88.10', '72.10', '41.00', '57.20', '36.00', '74.10', '91.50', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1711', '164.00', '50.00', '88.60', '72.60', '41.00', '57.20', '36.00', '74.60', '92.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1712', '164.00', '51.00', '88.60', '72.60', '41.00', '57.20', '37.00', '74.60', '91.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1713', '164.00', '52.00', '89.10', '73.10', '41.00', '57.20', '37.00', '75.10', '91.50', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1714', '164.00', '53.00', '89.60', '73.60', '41.00', '57.20', '37.00', '75.60', '92.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1715', '164.00', '54.00', '90.10', '74.10', '41.00', '57.20', '37.00', '76.10', '92.50', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1716', '164.00', '55.00', '90.60', '74.60', '41.00', '57.20', '37.00', '76.60', '93.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1717', '164.00', '56.00', '90.60', '76.60', '42.00', '57.20', '37.00', '78.60', '92.00', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1718', '164.00', '57.00', '91.10', '77.10', '42.00', '57.20', '37.00', '79.10', '92.50', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1719', '164.00', '58.00', '91.60', '77.60', '42.00', '57.20', '37.00', '79.60', '93.00', '54.10', '99.20');
INSERT INTO `standard_male` VALUES ('1720', '164.00', '59.00', '92.10', '78.10', '42.00', '57.20', '37.00', '80.10', '93.50', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1721', '164.00', '60.00', '92.60', '78.60', '42.00', '57.20', '37.00', '80.60', '94.00', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1722', '164.00', '61.00', '92.60', '80.60', '42.00', '57.20', '37.00', '82.60', '95.00', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1723', '164.00', '62.00', '93.10', '81.10', '42.00', '57.20', '37.00', '83.10', '95.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1724', '164.00', '63.00', '93.60', '81.60', '42.00', '57.20', '37.00', '83.60', '96.00', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1725', '164.00', '64.00', '94.10', '82.10', '42.00', '57.20', '37.00', '84.10', '96.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1726', '164.00', '65.00', '94.60', '82.60', '42.00', '57.20', '37.00', '84.60', '97.00', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1727', '164.00', '66.00', '95.10', '83.10', '42.00', '57.20', '37.00', '85.10', '97.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1728', '164.00', '67.00', '94.60', '86.60', '42.00', '57.20', '38.00', '88.60', '97.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1729', '164.00', '68.00', '95.10', '87.10', '42.00', '57.20', '38.00', '89.10', '97.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1730', '164.00', '69.00', '95.60', '87.60', '42.00', '57.20', '37.80', '89.60', '98.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1731', '164.00', '70.00', '96.10', '88.10', '42.00', '57.20', '37.80', '90.10', '98.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1732', '164.00', '71.00', '96.60', '88.60', '42.00', '57.20', '37.80', '90.60', '99.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1733', '164.00', '72.00', '97.10', '89.10', '42.00', '57.20', '37.80', '91.10', '99.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1734', '164.00', '73.00', '96.60', '92.60', '43.00', '57.20', '37.80', '94.60', '100.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1735', '164.00', '74.00', '97.10', '93.10', '43.00', '57.20', '37.80', '95.10', '100.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1736', '164.00', '75.00', '97.60', '93.60', '43.00', '57.20', '37.80', '95.60', '101.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1737', '164.00', '76.00', '98.10', '94.10', '43.00', '57.20', '37.80', '96.10', '101.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1738', '164.00', '77.00', '98.60', '94.60', '43.00', '57.20', '37.80', '96.60', '102.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1739', '164.00', '78.00', '99.10', '95.10', '43.00', '57.20', '37.80', '97.10', '102.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1740', '164.00', '79.00', '98.10', '98.10', '44.00', '57.20', '39.00', '100.10', '105.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1741', '164.00', '80.00', '98.60', '98.60', '44.00', '57.20', '39.00', '100.60', '106.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1742', '164.00', '81.00', '99.10', '99.10', '44.00', '57.20', '39.00', '101.10', '106.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1743', '164.00', '82.00', '99.60', '99.60', '44.00', '57.20', '39.00', '101.60', '107.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1744', '164.00', '83.00', '100.10', '100.10', '44.00', '57.20', '39.00', '102.10', '107.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1745', '164.00', '84.00', '100.60', '100.60', '44.00', '57.20', '39.00', '102.60', '108.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1746', '164.00', '85.00', '101.10', '101.10', '44.00', '57.20', '39.00', '103.10', '108.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1747', '164.00', '86.00', '101.60', '101.60', '44.00', '57.20', '39.00', '103.60', '109.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1748', '164.00', '87.00', '102.00', '102.00', '44.00', '57.00', '39.00', '104.00', '110.00', '59.00', '99.00');
INSERT INTO `standard_male` VALUES ('1749', '164.00', '88.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '110.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1750', '164.00', '89.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '111.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1751', '164.00', '90.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '111.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1752', '164.00', '91.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '112.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1753', '165.00', '47.00', '86.60', '70.60', '41.00', '57.20', '36.00', '72.60', '90.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1754', '165.00', '48.00', '87.10', '71.10', '41.00', '57.20', '36.00', '73.10', '90.50', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1755', '165.00', '49.00', '87.60', '71.60', '41.00', '57.20', '35.80', '73.60', '91.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1756', '165.00', '50.00', '88.10', '72.10', '41.00', '57.20', '36.00', '74.10', '91.50', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1757', '165.00', '51.00', '88.60', '72.60', '41.00', '57.20', '36.00', '74.60', '92.00', '52.00', '99.20');
INSERT INTO `standard_male` VALUES ('1758', '165.00', '52.00', '88.60', '72.60', '41.00', '57.20', '37.00', '74.60', '91.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1759', '165.00', '53.00', '89.10', '73.10', '41.00', '57.20', '37.00', '75.10', '91.50', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1760', '165.00', '54.00', '89.60', '73.60', '41.00', '57.20', '37.00', '75.60', '92.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1761', '165.00', '55.00', '90.10', '74.10', '41.00', '57.20', '37.00', '76.10', '92.50', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1762', '165.00', '56.00', '90.60', '74.60', '41.00', '57.20', '37.00', '76.60', '93.00', '53.00', '99.20');
INSERT INTO `standard_male` VALUES ('1763', '165.00', '57.00', '90.60', '76.60', '42.00', '57.20', '37.00', '78.60', '92.00', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1764', '165.00', '58.00', '91.10', '77.10', '42.00', '57.20', '37.00', '79.10', '92.50', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1765', '165.00', '59.00', '91.60', '77.60', '42.00', '57.20', '37.00', '79.60', '93.00', '54.10', '99.20');
INSERT INTO `standard_male` VALUES ('1766', '165.00', '60.00', '92.10', '78.10', '42.00', '57.20', '37.00', '80.10', '93.50', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1767', '165.00', '61.00', '92.60', '78.60', '42.00', '57.20', '37.00', '80.60', '94.00', '54.00', '99.20');
INSERT INTO `standard_male` VALUES ('1768', '165.00', '62.00', '92.60', '80.60', '42.00', '57.20', '37.00', '82.60', '95.00', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1769', '165.00', '63.00', '93.10', '81.10', '42.00', '57.20', '37.00', '83.10', '95.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1770', '165.00', '64.00', '93.60', '81.60', '42.00', '57.20', '37.00', '83.60', '96.00', '54.60', '99.20');
INSERT INTO `standard_male` VALUES ('1771', '165.00', '65.00', '94.10', '82.10', '42.00', '57.20', '37.00', '84.10', '96.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1772', '165.00', '66.00', '94.60', '82.60', '42.00', '57.20', '37.00', '84.60', '97.00', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1773', '165.00', '67.00', '95.10', '83.10', '42.00', '57.20', '37.00', '85.10', '97.50', '55.00', '99.20');
INSERT INTO `standard_male` VALUES ('1774', '165.00', '68.00', '94.60', '86.60', '42.00', '57.20', '38.00', '88.60', '97.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1775', '165.00', '69.00', '95.10', '87.10', '42.00', '57.20', '38.00', '89.10', '97.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1776', '165.00', '70.00', '95.60', '87.60', '42.00', '57.20', '38.00', '89.60', '98.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1777', '165.00', '71.00', '96.10', '88.10', '42.00', '57.20', '38.00', '90.10', '98.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1778', '165.00', '72.00', '96.60', '88.60', '42.00', '57.20', '38.00', '90.60', '99.00', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1779', '165.00', '73.00', '97.10', '89.10', '42.00', '57.20', '38.00', '91.10', '99.50', '56.00', '99.20');
INSERT INTO `standard_male` VALUES ('1780', '165.00', '74.00', '96.60', '92.60', '43.00', '57.20', '38.00', '94.60', '100.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1781', '165.00', '75.00', '97.10', '93.10', '43.00', '57.20', '38.00', '95.10', '100.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1782', '165.00', '76.00', '97.60', '93.60', '43.00', '57.20', '38.00', '95.60', '101.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1783', '165.00', '77.00', '98.10', '94.10', '43.00', '57.20', '38.00', '96.10', '101.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1784', '165.00', '78.00', '98.60', '94.60', '43.00', '57.20', '38.00', '96.60', '102.00', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1785', '165.00', '79.00', '99.10', '95.10', '43.00', '57.20', '38.00', '97.10', '102.50', '57.00', '99.20');
INSERT INTO `standard_male` VALUES ('1786', '165.00', '80.00', '98.10', '98.10', '44.00', '57.20', '39.00', '100.10', '105.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1787', '165.00', '81.00', '98.60', '98.60', '44.00', '57.20', '39.00', '100.60', '106.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1788', '165.00', '82.00', '99.10', '99.10', '44.00', '57.20', '39.00', '101.10', '106.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1789', '165.00', '83.00', '99.60', '99.60', '44.30', '57.20', '39.00', '101.60', '107.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1790', '165.00', '84.00', '100.10', '100.10', '44.00', '57.20', '39.00', '102.10', '107.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1791', '165.00', '85.00', '100.60', '100.60', '44.00', '57.20', '39.00', '102.60', '108.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1792', '165.00', '86.00', '101.10', '101.10', '44.00', '57.20', '39.00', '103.10', '108.50', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1793', '165.00', '87.00', '101.60', '101.60', '44.00', '57.20', '39.00', '103.60', '109.00', '58.00', '99.20');
INSERT INTO `standard_male` VALUES ('1794', '165.00', '88.00', '102.00', '102.00', '44.00', '57.00', '39.00', '104.00', '110.00', '59.00', '99.00');
INSERT INTO `standard_male` VALUES ('1795', '165.00', '89.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '110.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1796', '165.00', '90.00', '103.00', '103.00', '44.00', '57.00', '39.00', '105.00', '111.00', '60.00', '99.00');
INSERT INTO `standard_male` VALUES ('1797', '165.00', '91.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '111.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1798', '165.00', '92.00', '104.00', '104.00', '44.00', '57.00', '39.00', '106.00', '112.00', '61.00', '99.00');
INSERT INTO `standard_male` VALUES ('1799', '166.00', '48.00', '87.40', '71.40', '42.00', '57.80', '36.00', '73.40', '90.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1800', '166.00', '49.00', '87.90', '71.90', '42.00', '57.80', '36.00', '73.90', '90.50', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1801', '166.00', '50.00', '88.40', '72.40', '42.00', '57.80', '36.00', '74.40', '91.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1802', '166.00', '51.00', '88.90', '72.90', '42.00', '57.80', '36.00', '74.90', '91.50', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1803', '166.00', '52.00', '89.40', '73.40', '42.00', '57.80', '36.00', '75.40', '92.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1804', '166.00', '53.00', '87.40', '73.40', '42.00', '57.80', '37.00', '75.40', '91.00', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1805', '166.00', '54.00', '87.90', '73.90', '42.00', '57.80', '37.00', '75.90', '91.50', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1806', '166.00', '55.00', '88.40', '74.40', '42.00', '57.80', '37.00', '76.40', '92.00', '54.40', '99.80');
INSERT INTO `standard_male` VALUES ('1807', '166.00', '56.00', '88.90', '74.90', '42.00', '57.80', '37.00', '76.90', '92.50', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1808', '166.00', '57.00', '89.40', '75.40', '42.00', '57.80', '37.00', '77.40', '93.00', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1809', '166.00', '58.00', '89.40', '77.40', '43.00', '57.80', '37.00', '79.40', '92.00', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1810', '166.00', '59.00', '89.90', '77.90', '43.00', '57.80', '37.00', '79.90', '92.50', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1811', '166.00', '60.00', '90.40', '78.40', '43.00', '57.80', '37.00', '80.40', '93.00', '54.60', '99.80');
INSERT INTO `standard_male` VALUES ('1812', '166.00', '61.00', '90.90', '78.90', '43.00', '57.80', '37.00', '80.90', '93.50', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1813', '166.00', '62.00', '91.40', '79.40', '43.00', '57.80', '37.00', '81.40', '94.00', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1814', '166.00', '63.00', '91.40', '81.40', '43.00', '57.80', '37.00', '83.40', '95.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1815', '166.00', '64.00', '91.90', '81.90', '43.00', '57.80', '37.00', '83.90', '95.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1816', '166.00', '65.00', '92.40', '82.40', '43.00', '57.80', '37.00', '84.40', '96.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1817', '166.00', '66.00', '92.90', '82.90', '43.00', '57.80', '37.00', '84.90', '96.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1818', '166.00', '67.00', '93.40', '83.40', '43.00', '57.80', '37.00', '85.40', '97.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1819', '166.00', '68.00', '93.90', '83.90', '43.00', '57.80', '37.00', '85.90', '97.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1820', '166.00', '69.00', '93.40', '85.40', '43.00', '57.80', '38.00', '87.40', '97.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1821', '166.00', '70.00', '93.90', '85.90', '43.00', '57.80', '38.00', '87.90', '97.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1822', '166.00', '71.00', '94.40', '86.40', '43.00', '57.80', '38.00', '88.40', '98.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1823', '166.00', '72.00', '94.90', '86.90', '43.00', '57.80', '38.00', '88.90', '98.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1824', '166.00', '73.00', '95.40', '87.40', '43.00', '57.80', '38.00', '89.40', '99.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1825', '166.00', '74.00', '95.90', '87.90', '43.00', '57.80', '38.00', '89.90', '99.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1826', '166.00', '75.00', '95.40', '91.40', '44.00', '57.80', '38.00', '93.40', '100.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1827', '166.00', '76.00', '95.90', '91.90', '44.00', '57.80', '38.00', '93.90', '100.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1828', '166.00', '77.00', '96.40', '92.40', '43.50', '57.80', '38.00', '94.40', '101.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1829', '166.00', '78.00', '96.90', '92.90', '44.00', '57.80', '38.00', '94.90', '101.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1830', '166.00', '79.00', '97.40', '93.40', '44.00', '57.80', '38.00', '95.40', '102.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1831', '166.00', '80.00', '97.90', '93.90', '44.00', '57.80', '38.00', '95.90', '102.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1832', '166.00', '81.00', '96.90', '96.90', '45.00', '57.80', '39.00', '98.90', '105.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1833', '166.00', '82.00', '97.40', '97.40', '45.00', '57.80', '39.00', '99.40', '106.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1834', '166.00', '83.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1835', '166.00', '83.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1836', '166.00', '84.00', '98.40', '98.40', '44.50', '57.80', '39.00', '100.40', '107.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1837', '166.00', '85.00', '98.90', '98.90', '45.00', '57.80', '39.00', '100.90', '107.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1838', '166.00', '86.00', '99.40', '99.40', '45.00', '57.80', '39.00', '101.40', '108.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1839', '166.00', '87.00', '99.90', '99.90', '45.00', '57.80', '39.00', '101.90', '108.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1840', '166.00', '88.00', '100.40', '100.40', '45.00', '57.80', '39.00', '102.40', '109.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1841', '166.00', '89.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '110.00', '60.00', '100.00');
INSERT INTO `standard_male` VALUES ('1842', '166.00', '90.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '110.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1843', '166.00', '91.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1844', '166.00', '92.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '111.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1845', '166.00', '93.00', '103.00', '103.00', '45.00', '58.00', '39.00', '105.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1846', '167.00', '49.00', '87.40', '71.40', '42.00', '57.80', '36.00', '73.40', '91.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1847', '167.00', '50.00', '87.90', '71.90', '42.00', '57.80', '36.00', '73.90', '91.50', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1848', '167.00', '51.00', '88.40', '72.40', '42.00', '57.80', '36.00', '74.40', '92.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1849', '167.00', '52.00', '88.90', '72.90', '42.00', '57.80', '36.00', '74.90', '92.50', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1850', '167.00', '53.00', '89.40', '73.40', '42.00', '57.80', '36.00', '75.40', '93.00', '53.00', '99.80');
INSERT INTO `standard_male` VALUES ('1851', '167.00', '54.00', '87.40', '73.40', '42.00', '57.80', '37.00', '75.40', '92.00', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1852', '167.00', '55.00', '87.90', '73.90', '42.00', '57.80', '37.00', '75.90', '92.50', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1853', '167.00', '56.00', '88.40', '74.40', '42.00', '57.80', '37.00', '76.40', '93.00', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1854', '167.00', '57.00', '88.90', '74.90', '42.00', '57.80', '37.00', '76.90', '93.50', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1855', '167.00', '58.00', '89.40', '75.40', '42.00', '57.80', '37.00', '77.40', '94.00', '54.00', '99.80');
INSERT INTO `standard_male` VALUES ('1856', '167.00', '59.00', '89.40', '77.40', '43.00', '57.80', '37.00', '79.40', '93.00', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1857', '167.00', '60.00', '89.90', '77.90', '43.00', '57.80', '37.00', '79.90', '93.50', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1858', '167.00', '61.00', '90.40', '78.40', '43.00', '57.80', '37.00', '80.40', '94.00', '54.60', '99.80');
INSERT INTO `standard_male` VALUES ('1859', '167.00', '62.00', '90.90', '78.90', '43.00', '57.80', '37.00', '80.90', '94.50', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1860', '167.00', '63.00', '91.40', '79.40', '43.00', '57.80', '37.00', '81.40', '95.00', '55.00', '99.80');
INSERT INTO `standard_male` VALUES ('1861', '167.00', '64.00', '91.40', '81.40', '43.00', '57.80', '37.00', '83.40', '96.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1862', '167.00', '65.00', '91.90', '81.90', '43.00', '57.80', '37.00', '83.90', '96.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1863', '167.00', '66.00', '92.40', '82.40', '43.00', '57.80', '37.00', '84.40', '97.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1864', '167.00', '67.00', '92.90', '82.90', '43.00', '57.80', '37.00', '84.90', '97.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1865', '167.00', '68.00', '93.40', '83.40', '43.00', '57.80', '37.00', '85.40', '98.00', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1866', '167.00', '69.00', '93.90', '83.90', '43.00', '57.80', '37.00', '85.90', '98.50', '56.00', '99.80');
INSERT INTO `standard_male` VALUES ('1867', '167.00', '70.00', '93.40', '85.40', '43.00', '57.80', '38.00', '87.40', '98.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1868', '167.00', '71.00', '93.90', '85.90', '43.00', '57.80', '38.00', '87.90', '98.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1869', '167.00', '72.00', '94.40', '86.40', '43.00', '57.80', '38.00', '88.40', '99.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1870', '167.00', '73.00', '94.90', '86.90', '43.00', '57.80', '38.00', '88.90', '99.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1871', '167.00', '74.00', '95.40', '87.40', '43.00', '57.80', '38.00', '89.40', '100.00', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1872', '167.00', '75.00', '95.90', '87.90', '43.00', '57.80', '38.00', '89.90', '100.50', '57.00', '99.80');
INSERT INTO `standard_male` VALUES ('1873', '167.00', '76.00', '95.40', '91.40', '44.00', '57.80', '38.00', '93.40', '101.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1874', '167.00', '77.00', '95.90', '91.90', '44.00', '57.80', '38.00', '93.90', '101.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1875', '167.00', '78.00', '96.40', '92.40', '44.00', '57.80', '38.00', '94.40', '102.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1876', '167.00', '79.00', '96.90', '92.90', '44.00', '57.80', '38.00', '94.90', '102.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1877', '167.00', '80.00', '97.40', '93.40', '44.00', '57.80', '38.00', '95.40', '103.00', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1878', '167.00', '81.00', '97.90', '93.90', '44.00', '57.80', '38.00', '95.90', '103.50', '58.00', '99.80');
INSERT INTO `standard_male` VALUES ('1879', '167.00', '82.00', '96.90', '96.90', '45.00', '57.80', '39.00', '98.90', '106.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1880', '167.00', '83.00', '97.40', '97.40', '45.00', '57.80', '39.00', '99.40', '107.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1881', '167.00', '84.00', '97.90', '97.90', '45.00', '57.80', '39.00', '99.90', '107.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1882', '167.00', '85.00', '98.40', '98.40', '45.00', '57.80', '39.00', '100.40', '108.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1883', '167.00', '86.00', '98.90', '98.90', '45.00', '57.80', '39.00', '100.90', '108.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1884', '167.00', '87.00', '99.40', '99.40', '45.00', '57.80', '39.00', '101.40', '109.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1885', '167.00', '88.00', '99.90', '99.90', '45.00', '57.80', '39.00', '101.90', '109.50', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1886', '167.00', '89.00', '100.40', '100.40', '45.00', '57.80', '39.00', '102.40', '110.00', '59.00', '99.80');
INSERT INTO `standard_male` VALUES ('1887', '167.00', '90.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '111.00', '60.00', '100.00');
INSERT INTO `standard_male` VALUES ('1888', '167.00', '91.00', '101.00', '101.00', '45.00', '58.00', '39.00', '103.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1889', '167.00', '92.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1890', '167.00', '93.00', '102.00', '102.00', '45.00', '58.00', '39.00', '104.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1891', '167.00', '94.00', '103.00', '103.00', '45.00', '58.00', '39.00', '105.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1892', '168.00', '50.00', '88.20', '72.20', '42.00', '58.40', '37.00', '76.20', '91.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1893', '168.00', '51.00', '88.70', '72.70', '42.00', '58.40', '37.00', '75.70', '91.50', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1894', '168.00', '52.00', '89.20', '73.20', '42.00', '58.40', '37.00', '75.20', '92.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1895', '168.00', '53.00', '89.70', '73.70', '42.00', '58.40', '37.00', '74.70', '92.50', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1896', '168.00', '54.00', '90.20', '74.20', '42.00', '58.40', '37.00', '74.20', '93.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1897', '168.00', '55.00', '88.20', '74.20', '42.00', '58.40', '38.00', '76.20', '92.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1898', '168.00', '56.00', '88.70', '74.70', '42.00', '58.40', '38.00', '76.70', '92.50', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1899', '168.00', '57.00', '89.20', '75.20', '42.00', '58.40', '38.00', '77.20', '93.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1900', '168.00', '58.00', '89.70', '75.70', '42.00', '58.40', '38.00', '77.70', '93.50', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1901', '168.00', '59.00', '90.20', '76.20', '42.00', '58.40', '38.00', '78.20', '94.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1902', '168.00', '60.00', '90.20', '78.20', '43.00', '58.40', '38.00', '80.20', '93.00', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1903', '168.00', '61.00', '90.70', '78.70', '43.00', '58.40', '38.00', '80.70', '93.50', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1904', '168.00', '62.00', '91.20', '79.20', '43.00', '58.40', '38.00', '81.20', '94.00', '55.10', '100.40');
INSERT INTO `standard_male` VALUES ('1905', '168.00', '63.00', '91.70', '79.70', '43.00', '58.40', '38.00', '81.70', '94.50', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1906', '168.00', '64.00', '92.20', '80.20', '43.00', '58.40', '38.00', '82.20', '95.00', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1907', '168.00', '65.00', '92.20', '82.20', '43.00', '58.40', '38.00', '84.20', '96.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1908', '168.00', '66.00', '92.70', '82.70', '43.00', '58.40', '38.00', '84.70', '96.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1909', '168.00', '67.00', '93.20', '83.20', '43.00', '58.40', '38.00', '85.20', '97.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1910', '168.00', '68.00', '93.70', '83.70', '43.00', '58.40', '38.00', '85.70', '97.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1911', '168.00', '69.00', '94.20', '84.20', '43.00', '58.40', '38.00', '86.20', '98.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1912', '168.00', '70.00', '94.70', '84.70', '43.00', '58.40', '38.00', '86.70', '98.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1913', '168.00', '71.00', '94.20', '86.20', '43.00', '58.40', '39.00', '88.20', '98.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1914', '168.00', '72.00', '94.70', '86.70', '43.00', '58.40', '39.00', '88.70', '98.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1915', '168.00', '73.00', '95.20', '87.20', '43.00', '58.40', '39.00', '89.20', '99.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1916', '168.00', '74.00', '95.70', '87.70', '43.00', '58.40', '39.00', '89.70', '99.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1917', '168.00', '75.00', '96.20', '88.20', '43.00', '58.40', '39.00', '90.20', '100.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1918', '168.00', '76.00', '96.70', '88.70', '43.00', '58.40', '39.00', '90.70', '100.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1919', '168.00', '77.00', '96.20', '92.20', '44.00', '58.40', '39.00', '94.20', '101.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1920', '168.00', '78.00', '96.70', '92.70', '44.00', '58.40', '39.00', '94.70', '101.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1921', '168.00', '79.00', '97.20', '93.20', '44.00', '58.40', '39.00', '95.20', '102.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1922', '168.00', '80.00', '97.70', '93.70', '44.00', '58.40', '39.00', '95.70', '102.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1923', '168.00', '81.00', '98.20', '94.20', '44.00', '58.40', '39.00', '96.20', '103.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1924', '168.00', '82.00', '98.70', '94.70', '44.00', '58.40', '39.00', '96.70', '103.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1925', '168.00', '83.00', '97.70', '97.70', '45.00', '58.40', '40.00', '99.70', '106.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1926', '168.00', '84.00', '98.20', '98.20', '45.00', '58.40', '40.00', '100.20', '107.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1927', '168.00', '85.00', '98.70', '98.70', '45.00', '58.40', '40.00', '100.70', '107.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1928', '168.00', '86.00', '99.20', '99.20', '45.00', '58.40', '40.00', '101.20', '108.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1929', '168.00', '87.00', '99.70', '99.70', '45.00', '58.40', '40.00', '101.70', '108.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1930', '168.00', '88.00', '100.20', '100.20', '45.00', '58.40', '40.00', '102.20', '109.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1931', '168.00', '89.00', '100.70', '100.70', '45.00', '58.40', '40.00', '102.70', '109.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1932', '168.00', '90.00', '101.20', '101.20', '45.00', '58.40', '40.00', '103.20', '110.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1933', '168.00', '91.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '111.00', '60.00', '100.00');
INSERT INTO `standard_male` VALUES ('1934', '168.00', '92.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '111.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1935', '168.00', '93.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1936', '168.00', '94.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '112.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1937', '168.00', '95.00', '104.00', '104.00', '45.00', '58.00', '40.00', '106.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1938', '169.00', '51.00', '88.20', '72.20', '42.00', '58.40', '37.00', '74.20', '92.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1939', '169.00', '52.00', '88.70', '72.70', '42.00', '58.40', '37.00', '74.70', '92.50', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1940', '169.00', '53.00', '89.20', '73.20', '42.00', '58.40', '37.00', '75.20', '93.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1941', '169.00', '54.00', '89.70', '73.70', '42.00', '58.40', '37.00', '75.70', '93.50', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1942', '169.00', '55.00', '90.20', '74.20', '42.00', '58.40', '37.00', '76.20', '94.00', '53.00', '100.40');
INSERT INTO `standard_male` VALUES ('1943', '169.00', '56.00', '88.20', '74.20', '42.00', '58.40', '38.00', '76.20', '93.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1944', '169.00', '57.00', '88.70', '74.70', '42.00', '58.40', '38.00', '76.70', '93.50', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1945', '169.00', '58.00', '89.20', '75.20', '42.00', '58.40', '38.00', '77.20', '94.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1946', '169.00', '59.00', '89.70', '75.70', '42.00', '58.40', '38.00', '77.70', '94.50', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1947', '169.00', '60.00', '90.20', '76.20', '42.00', '58.40', '38.00', '78.20', '95.00', '54.00', '100.40');
INSERT INTO `standard_male` VALUES ('1948', '169.00', '61.00', '90.20', '78.20', '43.00', '58.40', '38.00', '80.20', '94.00', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1949', '169.00', '62.00', '90.70', '78.70', '43.00', '58.40', '38.00', '80.70', '94.50', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1950', '169.00', '63.00', '91.20', '79.20', '43.00', '58.40', '38.00', '81.20', '95.00', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1951', '169.00', '64.00', '91.70', '79.70', '43.00', '58.40', '38.00', '81.70', '95.50', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1952', '169.00', '65.00', '92.20', '80.20', '43.00', '58.40', '38.00', '82.20', '96.00', '55.00', '100.40');
INSERT INTO `standard_male` VALUES ('1953', '169.00', '66.00', '92.20', '82.20', '43.00', '58.40', '38.00', '84.20', '98.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1954', '169.00', '67.00', '92.70', '82.70', '43.00', '58.40', '38.00', '84.70', '98.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1955', '169.00', '68.00', '93.20', '83.20', '43.00', '58.40', '38.00', '85.20', '99.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1956', '169.00', '69.00', '93.70', '83.70', '43.00', '58.40', '38.00', '85.70', '99.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1957', '169.00', '70.00', '94.20', '84.20', '43.00', '58.40', '38.00', '86.20', '100.00', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1958', '169.00', '71.00', '94.70', '84.70', '43.00', '58.40', '38.00', '86.70', '100.50', '56.00', '100.40');
INSERT INTO `standard_male` VALUES ('1959', '169.00', '72.00', '94.20', '86.20', '43.00', '58.40', '39.00', '88.20', '99.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1960', '169.00', '73.00', '94.70', '86.70', '43.00', '58.40', '39.00', '88.70', '99.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1961', '169.00', '74.00', '95.20', '87.20', '43.00', '58.40', '39.00', '89.20', '100.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1962', '169.00', '75.00', '95.70', '87.70', '43.00', '58.40', '39.00', '89.70', '100.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1963', '169.00', '76.00', '96.20', '88.20', '43.00', '58.40', '39.00', '90.20', '101.00', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1964', '169.00', '77.00', '96.70', '88.70', '43.00', '58.40', '39.00', '90.70', '101.50', '57.00', '100.40');
INSERT INTO `standard_male` VALUES ('1965', '169.00', '78.00', '96.20', '92.20', '44.00', '58.40', '39.00', '94.20', '101.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1966', '169.00', '79.00', '96.70', '92.70', '44.00', '58.40', '39.00', '94.70', '101.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1967', '169.00', '80.00', '97.20', '93.20', '44.00', '58.40', '39.00', '95.20', '102.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1968', '169.00', '81.00', '97.70', '93.70', '44.00', '58.40', '39.00', '95.70', '102.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1969', '169.00', '82.00', '98.20', '94.20', '44.00', '58.40', '39.00', '96.20', '103.00', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1970', '169.00', '83.00', '98.70', '94.70', '44.00', '58.40', '39.00', '96.70', '103.50', '58.00', '100.40');
INSERT INTO `standard_male` VALUES ('1971', '169.00', '84.00', '97.70', '97.70', '45.00', '58.40', '40.00', '99.70', '107.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1972', '169.00', '85.00', '98.20', '98.20', '45.00', '58.40', '40.00', '100.20', '108.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1973', '169.00', '86.00', '98.70', '98.70', '45.00', '58.40', '40.00', '100.70', '108.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1974', '169.00', '87.00', '99.20', '99.20', '45.00', '58.40', '40.00', '101.20', '109.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1975', '169.00', '88.00', '99.70', '99.70', '45.00', '58.40', '40.00', '101.70', '109.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1976', '169.00', '89.00', '100.20', '100.20', '45.00', '58.40', '40.00', '102.20', '110.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1977', '169.00', '90.00', '100.70', '100.70', '45.00', '58.40', '40.00', '102.70', '110.50', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1978', '169.00', '91.00', '101.20', '101.20', '45.00', '58.40', '40.00', '103.20', '111.00', '59.00', '100.40');
INSERT INTO `standard_male` VALUES ('1979', '169.00', '92.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '112.00', '60.00', '100.00');
INSERT INTO `standard_male` VALUES ('1980', '169.00', '93.00', '102.00', '102.00', '45.00', '58.00', '40.00', '104.00', '112.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1981', '169.00', '94.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '113.00', '61.00', '100.00');
INSERT INTO `standard_male` VALUES ('1982', '169.00', '95.00', '103.00', '103.00', '45.00', '58.00', '40.00', '105.00', '113.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1983', '169.00', '96.00', '104.00', '104.00', '45.00', '58.00', '40.00', '106.00', '114.00', '62.00', '100.00');
INSERT INTO `standard_male` VALUES ('1984', '170.00', '52.00', '89.00', '73.00', '43.00', '59.00', '37.00', '75.00', '92.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('1985', '170.00', '53.00', '89.50', '73.50', '43.00', '59.00', '37.00', '75.50', '92.50', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('1986', '170.00', '54.00', '90.00', '74.00', '43.00', '59.00', '37.00', '76.00', '93.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('1987', '170.00', '55.00', '90.50', '74.50', '43.00', '59.00', '37.00', '76.50', '93.50', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('1988', '170.00', '56.00', '91.00', '75.00', '43.00', '59.00', '37.00', '77.00', '94.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('1989', '170.00', '57.00', '89.00', '75.00', '43.00', '59.00', '38.00', '77.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('1990', '170.00', '58.00', '89.50', '75.50', '43.00', '59.00', '38.00', '77.50', '93.50', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('1991', '170.00', '59.00', '90.00', '76.00', '43.00', '59.00', '38.00', '78.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('1992', '170.00', '60.00', '90.50', '76.50', '43.00', '59.00', '38.00', '78.50', '94.50', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('1993', '170.00', '61.00', '91.00', '77.00', '43.00', '59.00', '38.00', '79.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('1994', '170.00', '62.00', '91.00', '79.00', '44.00', '59.00', '38.00', '81.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('1995', '170.00', '63.00', '91.50', '79.50', '44.00', '59.00', '38.00', '81.50', '94.50', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('1996', '170.00', '64.00', '92.00', '80.00', '44.00', '59.00', '38.00', '82.00', '95.00', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('1997', '170.00', '65.00', '92.50', '80.50', '44.00', '59.00', '38.00', '82.50', '95.50', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('1998', '170.00', '66.00', '93.00', '81.00', '44.00', '59.00', '38.00', '83.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('1999', '170.00', '67.00', '93.00', '83.00', '44.00', '59.00', '38.00', '85.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2000', '170.00', '68.00', '93.50', '83.50', '44.00', '59.00', '38.00', '85.50', '98.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2001', '170.00', '69.00', '94.00', '84.00', '44.00', '59.00', '38.00', '86.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2002', '170.00', '70.00', '94.50', '84.50', '44.00', '59.00', '38.00', '86.50', '99.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2003', '170.00', '71.00', '95.00', '85.00', '44.00', '59.00', '38.00', '87.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2004', '170.00', '72.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2005', '170.00', '72.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2006', '170.00', '73.00', '95.00', '87.00', '44.00', '59.00', '39.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2007', '170.00', '74.00', '95.50', '87.50', '44.00', '59.00', '39.00', '89.50', '99.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2008', '170.00', '75.00', '96.00', '88.00', '44.00', '59.00', '39.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2009', '170.00', '76.00', '96.50', '88.50', '44.00', '59.00', '39.00', '90.50', '100.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2010', '170.00', '77.00', '97.00', '89.00', '44.00', '59.00', '39.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2011', '170.00', '78.00', '97.50', '89.50', '44.00', '59.00', '39.00', '91.50', '101.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2012', '170.00', '79.00', '97.00', '93.00', '45.00', '59.00', '39.00', '95.00', '101.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2013', '170.00', '80.00', '97.50', '93.50', '45.00', '59.00', '39.00', '95.50', '101.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2014', '170.00', '81.00', '98.00', '94.00', '45.00', '59.00', '39.00', '96.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2015', '170.00', '82.00', '98.50', '94.50', '45.00', '59.00', '39.00', '96.50', '102.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2016', '170.00', '83.00', '99.00', '95.00', '45.00', '59.00', '39.00', '97.00', '103.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2017', '170.00', '84.00', '99.50', '95.50', '45.00', '59.00', '39.00', '97.50', '103.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2018', '170.00', '85.00', '98.50', '98.50', '46.00', '59.00', '40.00', '100.50', '107.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2019', '170.00', '86.00', '99.00', '99.00', '46.00', '59.00', '40.00', '101.00', '108.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2020', '170.00', '87.00', '99.50', '99.50', '46.00', '59.00', '40.00', '101.50', '108.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2021', '170.00', '88.00', '100.00', '100.00', '46.00', '59.00', '40.00', '102.00', '109.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2022', '170.00', '89.00', '100.50', '100.50', '46.00', '59.00', '40.00', '102.50', '109.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2023', '170.00', '90.00', '101.00', '101.00', '46.00', '59.00', '40.00', '103.00', '110.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2024', '170.00', '91.00', '101.50', '101.50', '46.00', '59.00', '40.00', '103.50', '110.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2025', '170.00', '92.00', '102.00', '102.00', '46.00', '59.00', '40.00', '104.00', '111.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2026', '170.00', '93.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '61.00', '101.00');
INSERT INTO `standard_male` VALUES ('2027', '170.00', '94.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '62.00', '101.00');
INSERT INTO `standard_male` VALUES ('2028', '170.00', '95.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '62.00', '101.00');
INSERT INTO `standard_male` VALUES ('2029', '170.00', '96.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '63.00', '101.00');
INSERT INTO `standard_male` VALUES ('2030', '170.00', '97.00', '105.00', '105.00', '46.00', '59.00', '40.00', '107.00', '114.00', '63.00', '101.00');
INSERT INTO `standard_male` VALUES ('2031', '171.00', '53.00', '89.00', '73.00', '43.00', '59.00', '37.00', '75.00', '92.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('2032', '171.00', '54.00', '89.50', '73.50', '43.00', '59.00', '37.00', '75.50', '92.50', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('2033', '171.00', '55.00', '90.00', '74.00', '43.00', '59.00', '37.00', '76.00', '93.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('2034', '171.00', '56.00', '90.50', '74.50', '43.00', '59.00', '37.00', '76.50', '93.50', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('2035', '171.00', '57.00', '91.00', '75.00', '43.00', '59.00', '37.00', '77.00', '94.00', '54.00', '101.00');
INSERT INTO `standard_male` VALUES ('2036', '171.00', '58.00', '89.00', '75.00', '43.00', '59.00', '38.00', '77.00', '93.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('2037', '171.00', '59.00', '89.50', '75.50', '43.00', '59.00', '38.00', '77.50', '93.50', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('2038', '171.00', '60.00', '90.00', '76.00', '43.00', '59.00', '38.00', '78.00', '94.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('2039', '171.00', '61.00', '90.50', '76.50', '43.00', '59.00', '38.00', '78.50', '94.50', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('2040', '171.00', '62.00', '91.00', '77.00', '43.00', '59.00', '38.00', '79.00', '95.00', '55.00', '101.00');
INSERT INTO `standard_male` VALUES ('2041', '171.00', '63.00', '91.00', '79.00', '44.00', '59.00', '38.00', '81.00', '94.00', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('2042', '171.00', '64.00', '91.50', '79.50', '44.00', '59.00', '38.00', '81.50', '94.50', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('2043', '171.00', '65.00', '92.00', '80.00', '44.00', '59.00', '38.00', '82.00', '95.00', '55.60', '101.00');
INSERT INTO `standard_male` VALUES ('2044', '171.00', '66.00', '92.50', '80.50', '44.00', '59.00', '38.00', '82.50', '95.50', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('2045', '171.00', '67.00', '93.00', '81.00', '44.00', '59.00', '38.00', '83.00', '96.00', '56.00', '101.00');
INSERT INTO `standard_male` VALUES ('2046', '171.00', '68.00', '93.00', '83.00', '44.00', '59.00', '38.00', '85.00', '98.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2047', '171.00', '69.00', '93.50', '83.50', '44.00', '59.00', '38.00', '85.50', '98.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2048', '171.00', '70.00', '94.00', '84.00', '44.00', '59.00', '38.00', '86.00', '99.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2049', '171.00', '71.00', '94.50', '84.50', '44.00', '59.00', '38.00', '86.50', '99.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2050', '171.00', '72.00', '95.00', '85.00', '44.00', '59.00', '38.00', '87.00', '100.00', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2051', '171.00', '73.00', '95.50', '85.50', '44.00', '59.00', '38.00', '87.50', '100.50', '57.00', '101.00');
INSERT INTO `standard_male` VALUES ('2052', '171.00', '74.00', '95.00', '87.00', '44.00', '59.00', '39.00', '89.00', '99.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2053', '171.00', '75.00', '95.50', '87.50', '44.00', '59.00', '39.00', '89.50', '99.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2054', '171.00', '76.00', '96.00', '88.00', '44.00', '59.00', '39.00', '90.00', '100.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2055', '171.00', '77.00', '96.50', '88.50', '44.00', '59.00', '39.00', '90.50', '100.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2056', '171.00', '78.00', '97.00', '89.00', '44.00', '59.00', '39.00', '91.00', '101.00', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2057', '171.00', '79.00', '97.50', '89.50', '44.00', '59.00', '39.00', '91.50', '101.50', '58.00', '101.00');
INSERT INTO `standard_male` VALUES ('2058', '171.00', '80.00', '97.00', '93.00', '45.00', '59.00', '39.00', '95.00', '101.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2059', '171.00', '81.00', '97.50', '93.50', '45.00', '59.00', '39.00', '95.50', '101.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2060', '171.00', '82.00', '98.00', '94.00', '45.00', '59.00', '39.00', '96.00', '102.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2061', '171.00', '83.00', '98.50', '94.50', '45.00', '59.00', '39.00', '96.50', '102.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2062', '171.00', '84.00', '99.00', '95.00', '45.00', '59.00', '39.00', '97.00', '103.00', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2063', '171.00', '85.00', '99.50', '95.50', '45.00', '59.00', '39.00', '97.50', '103.50', '59.00', '101.00');
INSERT INTO `standard_male` VALUES ('2064', '171.00', '86.00', '98.50', '98.50', '46.00', '59.00', '40.00', '100.50', '107.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2065', '171.00', '87.00', '99.00', '99.00', '46.00', '59.00', '40.00', '101.00', '108.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2066', '171.00', '88.00', '99.50', '99.50', '46.00', '59.00', '40.00', '101.50', '108.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2067', '171.00', '89.00', '100.00', '100.00', '46.00', '59.00', '40.00', '102.00', '109.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2068', '171.00', '90.00', '100.50', '100.50', '46.00', '59.00', '40.00', '102.50', '109.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2069', '171.00', '91.00', '101.00', '101.00', '46.00', '59.00', '40.00', '103.00', '110.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2070', '171.00', '92.00', '101.50', '101.50', '46.00', '59.00', '40.00', '103.50', '110.50', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2071', '171.00', '93.00', '102.00', '102.00', '46.00', '59.00', '40.00', '104.00', '111.00', '60.00', '101.00');
INSERT INTO `standard_male` VALUES ('2072', '171.00', '94.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '61.00', '101.00');
INSERT INTO `standard_male` VALUES ('2073', '171.00', '95.00', '103.00', '103.00', '46.00', '59.00', '40.00', '105.00', '112.00', '62.00', '101.00');
INSERT INTO `standard_male` VALUES ('2074', '171.00', '96.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '62.00', '101.00');
INSERT INTO `standard_male` VALUES ('2075', '171.00', '97.00', '104.00', '104.00', '46.00', '59.00', '40.00', '106.00', '113.00', '63.00', '101.00');
INSERT INTO `standard_male` VALUES ('2076', '171.00', '98.00', '105.00', '105.00', '46.00', '59.00', '40.00', '107.00', '114.00', '63.00', '101.00');
INSERT INTO `standard_male` VALUES ('2077', '172.00', '54.00', '89.80', '73.80', '43.00', '59.60', '37.00', '75.80', '93.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2078', '172.00', '55.00', '90.30', '74.30', '43.00', '59.60', '37.00', '76.30', '93.50', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2079', '172.00', '56.00', '90.80', '74.80', '43.00', '59.60', '37.00', '76.80', '94.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2080', '172.00', '57.00', '91.30', '75.30', '43.00', '59.60', '37.00', '77.30', '94.50', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2081', '172.00', '58.00', '91.80', '75.80', '43.00', '59.60', '37.00', '77.80', '95.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2082', '172.00', '59.00', '89.80', '75.80', '43.00', '59.60', '38.00', '77.80', '94.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2083', '172.00', '60.00', '90.30', '76.30', '43.00', '59.60', '38.00', '78.30', '94.50', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2084', '172.00', '61.00', '90.80', '76.80', '43.00', '59.60', '38.00', '78.80', '95.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2085', '172.00', '62.00', '91.30', '77.30', '43.00', '59.60', '38.00', '79.30', '95.50', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2086', '172.00', '63.00', '91.80', '77.80', '43.00', '59.60', '38.00', '79.80', '96.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2087', '172.00', '64.00', '91.80', '79.80', '44.00', '59.60', '38.00', '81.80', '95.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2088', '172.00', '65.00', '92.30', '80.30', '44.00', '59.60', '38.00', '82.30', '95.50', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2089', '172.00', '66.00', '92.80', '80.80', '44.00', '59.60', '38.00', '82.80', '96.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2090', '172.00', '67.00', '93.30', '81.30', '44.00', '59.60', '38.00', '83.30', '96.50', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2091', '172.00', '68.00', '93.80', '81.80', '44.00', '59.60', '38.00', '83.80', '97.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2092', '172.00', '69.00', '93.80', '83.80', '44.00', '59.60', '38.00', '85.80', '99.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2093', '172.00', '70.00', '94.30', '84.30', '44.00', '59.60', '38.00', '86.30', '99.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2094', '172.00', '71.00', '94.80', '84.80', '44.00', '59.60', '38.00', '86.80', '100.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2095', '172.00', '72.00', '95.30', '85.30', '44.00', '59.60', '38.00', '87.30', '100.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2096', '172.00', '73.00', '95.80', '85.80', '44.00', '59.60', '38.00', '87.80', '101.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2097', '172.00', '74.00', '96.30', '86.30', '44.00', '59.60', '38.00', '88.30', '101.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2098', '172.00', '75.00', '95.80', '87.80', '44.00', '59.60', '39.00', '89.80', '100.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2099', '172.00', '76.00', '96.30', '88.30', '44.00', '59.60', '39.00', '90.30', '100.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2100', '172.00', '77.00', '96.80', '88.80', '44.00', '59.60', '39.00', '90.80', '101.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2101', '172.00', '78.00', '97.30', '89.30', '44.00', '59.60', '39.00', '91.30', '101.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2102', '172.00', '79.00', '97.80', '89.80', '44.00', '59.60', '39.00', '91.80', '102.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2103', '172.00', '80.00', '98.30', '90.30', '44.00', '59.60', '39.00', '92.30', '102.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2104', '172.00', '81.00', '97.80', '93.80', '45.00', '59.60', '39.00', '95.80', '102.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2105', '172.00', '82.00', '98.30', '94.30', '45.00', '59.60', '39.00', '96.30', '102.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2106', '172.00', '83.00', '98.80', '94.80', '45.00', '59.60', '39.00', '96.80', '103.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2107', '172.00', '84.00', '99.30', '95.30', '45.00', '59.60', '39.00', '97.30', '103.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2108', '172.00', '85.00', '99.80', '95.80', '45.00', '59.60', '39.00', '97.80', '104.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2109', '172.00', '86.00', '100.30', '96.30', '45.00', '59.60', '39.00', '98.30', '104.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2110', '172.00', '87.00', '99.30', '99.30', '46.00', '59.60', '40.00', '104.30', '108.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2111', '172.00', '88.00', '99.80', '99.80', '46.00', '59.60', '40.00', '103.80', '109.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2112', '172.00', '89.00', '100.30', '100.30', '46.00', '59.60', '40.00', '103.30', '109.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2113', '172.00', '90.00', '100.80', '100.80', '46.00', '59.60', '40.00', '102.80', '110.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2114', '172.00', '91.00', '101.30', '101.30', '46.00', '59.60', '40.00', '102.30', '110.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2115', '172.00', '92.00', '101.80', '101.80', '46.00', '59.60', '40.00', '101.80', '111.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2116', '172.00', '93.00', '102.30', '102.30', '46.00', '59.60', '40.00', '101.30', '111.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2117', '172.00', '94.00', '102.80', '102.80', '46.00', '59.60', '40.00', '100.80', '112.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2118', '172.00', '95.00', '103.00', '103.00', '46.00', '60.00', '40.00', '100.00', '113.00', '61.00', '102.00');
INSERT INTO `standard_male` VALUES ('2119', '172.00', '96.00', '104.00', '104.00', '46.00', '60.00', '40.00', '100.00', '113.00', '62.00', '102.00');
INSERT INTO `standard_male` VALUES ('2120', '172.00', '97.00', '104.00', '104.00', '46.00', '60.00', '40.00', '99.00', '114.00', '62.00', '102.00');
INSERT INTO `standard_male` VALUES ('2121', '172.00', '97.00', '104.00', '104.00', '46.00', '60.00', '40.00', '106.00', '113.00', '62.00', '102.00');
INSERT INTO `standard_male` VALUES ('2122', '172.00', '98.00', '105.00', '105.00', '46.00', '60.00', '40.00', '99.00', '114.00', '63.00', '102.00');
INSERT INTO `standard_male` VALUES ('2123', '172.00', '99.00', '105.00', '105.00', '46.00', '60.00', '40.00', '98.00', '115.00', '63.00', '102.00');
INSERT INTO `standard_male` VALUES ('2124', '173.00', '55.00', '89.80', '73.80', '43.00', '59.60', '37.00', '75.80', '93.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2125', '173.00', '56.00', '90.30', '74.30', '43.00', '59.60', '37.00', '76.30', '93.50', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2126', '173.00', '57.00', '90.80', '74.80', '43.00', '59.60', '37.40', '76.80', '94.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2127', '173.00', '58.00', '91.30', '75.30', '43.00', '59.60', '37.00', '77.30', '94.50', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2128', '173.00', '59.00', '91.80', '75.80', '43.00', '59.60', '37.00', '77.80', '95.00', '54.00', '101.60');
INSERT INTO `standard_male` VALUES ('2129', '173.00', '60.00', '89.80', '75.80', '43.00', '59.60', '38.00', '77.80', '94.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2130', '173.00', '61.00', '90.30', '76.30', '43.00', '59.60', '38.00', '78.30', '94.50', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2131', '173.00', '62.00', '90.80', '76.80', '43.00', '59.60', '38.00', '78.80', '95.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2132', '173.00', '63.00', '91.30', '77.30', '43.00', '59.60', '38.00', '79.30', '95.50', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2133', '173.00', '64.00', '91.80', '77.80', '43.00', '59.60', '38.00', '79.80', '96.00', '55.00', '101.60');
INSERT INTO `standard_male` VALUES ('2134', '173.00', '65.00', '91.80', '79.80', '44.00', '59.60', '38.00', '81.80', '95.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2135', '173.00', '66.00', '92.30', '80.30', '44.00', '59.60', '38.00', '82.30', '95.50', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2136', '173.00', '67.00', '92.80', '80.80', '44.00', '59.60', '38.00', '82.80', '96.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2137', '173.00', '68.00', '93.30', '81.30', '44.00', '59.60', '38.00', '83.30', '96.50', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2138', '173.00', '69.00', '93.80', '81.80', '44.00', '59.60', '38.00', '83.80', '97.00', '56.00', '101.60');
INSERT INTO `standard_male` VALUES ('2139', '173.00', '70.00', '93.80', '83.80', '44.00', '59.60', '38.00', '85.80', '99.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2140', '173.00', '71.00', '94.30', '84.30', '44.00', '59.60', '38.00', '86.30', '99.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2141', '173.00', '72.00', '94.80', '84.80', '44.00', '59.60', '38.00', '86.80', '100.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2142', '173.00', '73.00', '95.30', '85.30', '44.00', '59.60', '38.00', '87.30', '100.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2143', '173.00', '74.00', '95.80', '85.80', '44.00', '59.60', '38.00', '87.80', '101.00', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2144', '173.00', '75.00', '96.30', '86.30', '44.00', '59.60', '38.00', '88.30', '101.50', '57.00', '101.60');
INSERT INTO `standard_male` VALUES ('2145', '173.00', '76.00', '95.80', '87.80', '44.00', '59.60', '39.00', '89.80', '100.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2146', '173.00', '77.00', '96.30', '88.30', '44.00', '59.60', '39.00', '90.30', '100.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2147', '173.00', '78.00', '96.80', '88.80', '44.00', '59.60', '39.00', '90.80', '101.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2148', '173.00', '79.00', '97.30', '89.30', '44.00', '59.60', '39.00', '91.30', '101.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2149', '173.00', '80.00', '97.80', '89.80', '44.00', '59.60', '39.00', '91.80', '102.00', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2150', '173.00', '81.00', '98.30', '90.30', '44.00', '59.60', '39.00', '92.30', '102.50', '58.00', '101.60');
INSERT INTO `standard_male` VALUES ('2151', '173.00', '82.00', '97.80', '93.80', '45.00', '59.60', '39.00', '95.80', '102.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2152', '173.00', '83.00', '98.30', '94.30', '45.00', '59.60', '39.00', '96.30', '102.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2153', '173.00', '84.00', '98.80', '94.80', '45.00', '59.60', '39.00', '96.80', '103.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2154', '173.00', '85.00', '99.30', '95.30', '45.00', '59.60', '39.00', '97.30', '103.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2155', '173.00', '86.00', '99.80', '95.80', '45.00', '59.60', '39.00', '97.80', '104.00', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2156', '173.00', '87.00', '100.30', '96.30', '45.00', '59.60', '39.00', '98.30', '104.50', '59.00', '101.60');
INSERT INTO `standard_male` VALUES ('2157', '173.00', '88.00', '99.30', '99.30', '46.00', '59.60', '40.00', '101.30', '108.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2158', '173.00', '89.00', '99.80', '99.80', '46.00', '59.60', '40.00', '101.80', '109.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2159', '173.00', '90.00', '100.30', '100.30', '46.00', '59.60', '40.00', '102.30', '109.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2160', '173.00', '91.00', '100.80', '100.80', '46.00', '59.60', '40.00', '102.80', '110.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2161', '173.00', '92.00', '101.30', '101.30', '46.00', '59.60', '40.00', '103.30', '110.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2162', '173.00', '93.00', '101.80', '101.80', '46.00', '59.60', '40.00', '103.80', '111.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2163', '173.00', '94.00', '102.30', '102.30', '46.00', '59.60', '40.00', '104.30', '111.50', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2164', '173.00', '95.00', '102.80', '102.80', '46.00', '59.60', '40.00', '104.80', '112.00', '60.00', '101.60');
INSERT INTO `standard_male` VALUES ('2165', '173.00', '96.00', '103.00', '103.00', '46.00', '60.00', '40.00', '105.00', '113.00', '61.00', '102.00');
INSERT INTO `standard_male` VALUES ('2166', '173.00', '98.00', '104.00', '104.00', '46.00', '60.00', '40.00', '106.00', '114.00', '62.00', '102.00');
INSERT INTO `standard_male` VALUES ('2167', '173.00', '99.00', '105.00', '105.00', '46.00', '60.00', '40.00', '107.00', '114.00', '63.00', '102.00');
INSERT INTO `standard_male` VALUES ('2168', '173.00', '100.00', '105.00', '105.00', '46.00', '60.00', '40.00', '107.00', '115.00', '63.00', '102.00');
INSERT INTO `standard_male` VALUES ('2169', '174.00', '56.00', '90.60', '74.60', '43.00', '60.20', '38.00', '76.60', '94.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2170', '174.00', '57.00', '91.10', '75.10', '43.00', '60.20', '38.00', '77.10', '94.50', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2171', '174.00', '58.00', '91.60', '75.60', '43.00', '60.20', '38.00', '77.60', '95.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2172', '174.00', '59.00', '92.10', '76.10', '43.00', '60.20', '38.00', '78.10', '95.50', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2173', '174.00', '60.00', '92.60', '76.60', '43.00', '60.20', '38.00', '78.60', '96.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2174', '174.00', '61.00', '90.60', '76.60', '43.00', '60.20', '39.00', '78.60', '95.00', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2175', '174.00', '62.00', '91.10', '77.10', '43.00', '60.20', '39.00', '79.10', '95.50', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2176', '174.00', '63.00', '91.60', '77.60', '43.00', '60.20', '39.00', '79.60', '96.00', '56.40', '103.20');
INSERT INTO `standard_male` VALUES ('2177', '174.00', '64.00', '92.10', '78.10', '43.00', '60.20', '39.00', '80.10', '96.50', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2178', '174.00', '65.00', '92.60', '78.60', '43.00', '60.20', '39.00', '80.60', '97.00', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2179', '174.00', '66.00', '92.60', '80.60', '44.00', '60.20', '39.00', '82.60', '96.00', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2180', '174.00', '67.00', '93.10', '81.10', '44.00', '60.20', '39.00', '83.10', '96.50', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2181', '174.00', '68.00', '93.60', '81.60', '44.00', '60.20', '39.00', '83.60', '97.00', '56.60', '103.20');
INSERT INTO `standard_male` VALUES ('2182', '174.00', '69.00', '94.10', '82.10', '44.00', '60.20', '39.00', '84.10', '97.50', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2183', '174.00', '70.00', '94.60', '82.60', '44.00', '60.20', '39.00', '84.60', '98.00', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2184', '174.00', '71.00', '94.60', '84.60', '44.00', '60.20', '39.00', '86.60', '99.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2185', '174.00', '72.00', '95.10', '85.10', '44.00', '60.20', '39.00', '87.10', '99.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2186', '174.00', '73.00', '95.60', '85.60', '44.00', '60.20', '39.00', '87.60', '100.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2187', '174.00', '74.00', '96.10', '86.10', '44.00', '60.20', '39.00', '88.10', '100.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2188', '174.00', '75.00', '96.60', '86.60', '44.00', '60.20', '39.00', '88.60', '101.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2189', '174.00', '76.00', '97.10', '87.10', '44.00', '60.20', '39.00', '89.10', '101.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2190', '174.00', '77.00', '96.60', '88.60', '44.00', '60.20', '40.00', '90.60', '102.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2191', '174.00', '78.00', '97.10', '89.10', '44.00', '60.20', '40.00', '91.10', '102.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2192', '174.00', '79.00', '97.60', '89.60', '44.00', '60.20', '40.00', '91.60', '103.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2193', '174.00', '80.00', '98.10', '90.10', '44.00', '60.20', '40.00', '92.10', '103.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2194', '174.00', '81.00', '98.60', '90.60', '44.00', '60.20', '40.00', '92.60', '104.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2195', '174.00', '82.00', '99.10', '91.10', '44.00', '60.20', '40.00', '93.10', '104.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2196', '174.00', '83.00', '98.60', '94.60', '45.00', '60.20', '40.00', '96.60', '104.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2197', '174.00', '84.00', '99.10', '95.10', '45.00', '60.20', '40.00', '97.10', '104.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2198', '174.00', '85.00', '99.60', '95.60', '45.00', '60.20', '40.00', '97.60', '105.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2199', '174.00', '86.00', '100.10', '96.10', '45.00', '60.20', '40.00', '98.10', '105.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2200', '174.00', '87.00', '100.60', '96.60', '45.00', '60.20', '40.00', '98.60', '106.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2201', '174.00', '88.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2202', '174.00', '89.00', '100.10', '100.10', '46.00', '60.20', '41.00', '102.10', '110.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2203', '174.00', '90.00', '100.60', '100.60', '46.00', '60.20', '41.00', '102.60', '111.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2204', '174.00', '91.00', '101.10', '101.10', '46.00', '60.20', '41.00', '103.10', '111.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2205', '174.00', '92.00', '101.60', '101.60', '46.00', '60.20', '41.00', '103.60', '112.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2206', '174.00', '93.00', '102.10', '102.10', '46.00', '60.20', '41.00', '104.10', '112.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2207', '174.00', '94.00', '102.60', '102.60', '46.00', '60.20', '41.00', '104.60', '113.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2208', '174.00', '95.00', '103.10', '103.10', '46.00', '60.20', '41.00', '105.10', '113.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2209', '174.00', '96.00', '103.60', '103.60', '46.00', '60.20', '41.00', '105.60', '114.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2210', '174.00', '97.00', '104.00', '104.00', '46.00', '60.00', '41.00', '106.00', '115.00', '62.00', '103.00');
INSERT INTO `standard_male` VALUES ('2211', '174.00', '98.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '115.00', '63.00', '103.00');
INSERT INTO `standard_male` VALUES ('2212', '174.00', '99.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '116.00', '63.00', '103.00');
INSERT INTO `standard_male` VALUES ('2213', '174.00', '100.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '116.00', '64.00', '103.00');
INSERT INTO `standard_male` VALUES ('2214', '174.00', '101.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '117.00', '64.00', '103.00');
INSERT INTO `standard_male` VALUES ('2215', '175.00', '57.00', '90.60', '74.60', '43.00', '60.20', '38.00', '76.60', '94.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2216', '175.00', '58.00', '91.10', '75.10', '43.00', '60.20', '38.00', '77.10', '94.50', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2217', '175.00', '59.00', '91.60', '75.60', '43.00', '60.20', '37.80', '77.60', '95.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2218', '175.00', '60.00', '92.10', '76.10', '43.00', '60.20', '38.00', '78.10', '95.50', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2219', '175.00', '61.00', '92.60', '76.60', '43.00', '60.20', '38.00', '78.60', '96.00', '55.00', '103.20');
INSERT INTO `standard_male` VALUES ('2220', '175.00', '62.00', '90.60', '76.60', '43.00', '60.20', '39.00', '78.60', '95.00', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2221', '175.00', '63.00', '91.10', '77.10', '43.00', '60.20', '39.00', '79.10', '95.50', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2222', '175.00', '64.00', '91.60', '77.60', '43.00', '60.20', '39.00', '79.60', '96.00', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2223', '175.00', '65.00', '92.10', '78.10', '43.00', '60.20', '39.00', '80.10', '96.50', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2224', '175.00', '66.00', '92.60', '78.60', '43.00', '60.20', '39.00', '80.60', '97.00', '56.00', '103.20');
INSERT INTO `standard_male` VALUES ('2225', '175.00', '67.00', '92.60', '80.60', '44.00', '60.20', '39.00', '82.60', '96.00', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2226', '175.00', '68.00', '93.10', '81.10', '44.00', '60.20', '39.00', '83.10', '96.50', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2227', '175.00', '69.00', '93.60', '81.60', '44.00', '60.20', '39.00', '83.60', '97.00', '56.80', '103.20');
INSERT INTO `standard_male` VALUES ('2228', '175.00', '70.00', '94.10', '82.10', '44.00', '60.20', '39.00', '84.10', '97.50', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2229', '175.00', '71.00', '94.60', '82.60', '44.00', '60.20', '39.00', '84.60', '98.00', '57.00', '103.20');
INSERT INTO `standard_male` VALUES ('2230', '175.00', '72.00', '94.60', '84.60', '44.00', '60.20', '39.00', '86.60', '99.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2231', '175.00', '73.00', '95.10', '85.10', '44.00', '60.20', '39.00', '87.10', '99.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2232', '175.00', '74.00', '95.60', '85.60', '44.00', '60.20', '39.00', '87.60', '100.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2233', '175.00', '75.00', '96.10', '86.10', '44.00', '60.20', '39.00', '88.10', '100.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2234', '175.00', '76.00', '96.60', '86.60', '44.00', '60.20', '39.00', '88.60', '101.00', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2235', '175.00', '77.00', '97.10', '87.10', '44.00', '60.20', '39.00', '89.10', '101.50', '58.00', '103.20');
INSERT INTO `standard_male` VALUES ('2236', '175.00', '78.00', '96.60', '88.60', '44.00', '60.20', '40.00', '90.60', '102.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2237', '175.00', '79.00', '97.10', '89.10', '44.00', '60.20', '40.00', '91.10', '102.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2238', '175.00', '80.00', '97.60', '89.60', '44.00', '60.20', '40.00', '91.60', '103.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2239', '175.00', '81.00', '98.10', '90.10', '44.00', '60.20', '40.00', '92.10', '103.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2240', '175.00', '82.00', '98.60', '90.60', '44.00', '60.20', '40.00', '92.60', '104.00', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2241', '175.00', '83.00', '99.10', '91.10', '44.00', '60.20', '40.00', '93.10', '104.50', '59.00', '103.20');
INSERT INTO `standard_male` VALUES ('2242', '175.00', '84.00', '98.60', '94.60', '45.00', '60.20', '40.00', '96.60', '104.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2243', '175.00', '85.00', '99.10', '95.10', '45.00', '60.20', '40.00', '97.10', '104.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2244', '175.00', '86.00', '99.60', '95.60', '45.50', '60.20', '40.00', '97.60', '105.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2245', '175.00', '87.00', '100.10', '96.10', '45.00', '60.20', '40.00', '98.10', '105.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2246', '175.00', '88.00', '100.60', '96.60', '45.00', '60.20', '40.00', '98.60', '106.00', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2247', '175.00', '89.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2248', '175.00', '89.00', '101.10', '97.10', '45.00', '60.20', '40.00', '99.10', '106.50', '60.00', '103.20');
INSERT INTO `standard_male` VALUES ('2249', '175.00', '90.00', '100.10', '100.10', '46.00', '60.20', '41.00', '102.10', '110.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2250', '175.00', '91.00', '100.60', '100.60', '46.00', '60.20', '41.00', '102.60', '111.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2251', '175.00', '92.00', '101.10', '101.10', '46.00', '60.20', '41.00', '103.10', '111.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2252', '175.00', '93.00', '101.60', '101.60', '46.50', '60.20', '41.00', '103.60', '112.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2253', '175.00', '94.00', '102.10', '102.10', '46.00', '60.20', '41.00', '104.10', '112.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2254', '175.00', '95.00', '102.60', '102.60', '46.00', '60.20', '41.00', '104.60', '113.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2255', '175.00', '96.00', '103.10', '103.10', '46.00', '60.20', '41.00', '105.10', '113.50', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2256', '175.00', '97.00', '103.60', '103.60', '46.00', '60.20', '41.00', '105.60', '114.00', '61.00', '103.20');
INSERT INTO `standard_male` VALUES ('2257', '175.00', '98.00', '104.00', '104.00', '46.00', '60.00', '41.00', '106.00', '115.00', '62.00', '103.00');
INSERT INTO `standard_male` VALUES ('2258', '175.00', '99.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '115.00', '63.00', '103.00');
INSERT INTO `standard_male` VALUES ('2259', '175.00', '100.00', '105.00', '105.00', '46.00', '60.00', '41.00', '107.00', '116.00', '63.00', '103.00');
INSERT INTO `standard_male` VALUES ('2260', '175.00', '101.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '116.00', '64.00', '103.00');
INSERT INTO `standard_male` VALUES ('2261', '175.00', '102.00', '106.00', '106.00', '46.00', '60.00', '41.00', '108.00', '117.00', '64.00', '103.00');
INSERT INTO `standard_male` VALUES ('2262', '176.00', '58.00', '91.40', '75.40', '44.00', '60.80', '38.00', '77.40', '94.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2263', '176.00', '59.00', '91.90', '75.90', '44.00', '60.80', '38.00', '77.90', '94.50', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2264', '176.00', '60.00', '92.40', '76.40', '44.00', '60.80', '38.00', '78.40', '95.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2265', '176.00', '61.00', '92.90', '76.90', '44.00', '60.80', '38.00', '78.90', '95.50', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2266', '176.00', '62.00', '93.40', '77.40', '44.00', '60.80', '38.00', '79.40', '96.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2267', '176.00', '63.00', '91.40', '77.40', '44.00', '60.80', '39.00', '79.40', '95.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2268', '176.00', '64.00', '91.90', '77.90', '44.00', '60.80', '39.00', '79.90', '95.50', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2269', '176.00', '65.00', '92.40', '78.40', '44.00', '60.80', '39.00', '80.40', '96.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2270', '176.00', '66.00', '92.90', '78.90', '44.00', '60.80', '39.00', '80.90', '96.50', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2271', '176.00', '67.00', '93.40', '79.40', '44.00', '60.80', '39.00', '81.40', '97.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2272', '176.00', '68.00', '93.40', '81.40', '45.00', '60.80', '39.00', '83.40', '96.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2273', '176.00', '69.00', '93.90', '81.90', '45.00', '60.80', '39.00', '83.90', '96.50', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2274', '176.00', '70.00', '94.40', '82.40', '45.00', '60.80', '39.00', '84.40', '97.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2275', '176.00', '71.00', '94.90', '82.90', '45.00', '60.80', '39.00', '84.90', '97.50', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2276', '176.00', '72.00', '95.40', '83.40', '45.00', '60.80', '39.00', '85.40', '98.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2277', '176.00', '73.00', '95.40', '85.40', '45.00', '60.80', '39.00', '87.40', '99.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2278', '176.00', '74.00', '95.90', '85.90', '45.00', '60.80', '39.00', '87.90', '99.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2279', '176.00', '75.00', '96.40', '86.40', '45.00', '60.80', '39.00', '88.40', '100.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2280', '176.00', '76.00', '96.90', '86.90', '45.00', '60.80', '39.00', '88.90', '100.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2281', '176.00', '77.00', '97.40', '87.40', '45.00', '60.80', '39.00', '89.40', '101.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2282', '176.00', '78.00', '97.90', '87.90', '45.00', '60.80', '39.00', '89.90', '101.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2283', '176.00', '79.00', '97.40', '89.40', '45.00', '60.80', '41.00', '91.40', '102.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2284', '176.00', '80.00', '97.90', '89.90', '45.00', '60.80', '41.00', '91.90', '102.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2285', '176.00', '81.00', '98.40', '90.40', '45.00', '60.80', '41.00', '92.40', '103.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2286', '176.00', '82.00', '98.90', '90.90', '45.00', '60.80', '41.00', '92.90', '103.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2287', '176.00', '83.00', '99.40', '91.40', '45.00', '60.80', '41.00', '93.40', '104.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2288', '176.00', '84.00', '99.90', '91.90', '45.00', '60.80', '41.00', '93.90', '104.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2289', '176.00', '85.00', '99.40', '95.40', '46.00', '60.80', '41.00', '97.40', '104.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2290', '176.00', '86.00', '99.90', '95.90', '46.00', '60.80', '41.00', '97.90', '104.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2291', '176.00', '87.00', '100.40', '96.40', '45.90', '60.80', '41.00', '98.40', '105.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2292', '176.00', '88.00', '100.90', '96.90', '46.00', '60.80', '41.00', '98.90', '105.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2293', '176.00', '89.00', '101.40', '97.40', '46.00', '60.80', '41.00', '99.40', '106.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2294', '176.00', '90.00', '101.90', '97.90', '46.00', '60.80', '41.00', '99.90', '106.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2295', '176.00', '91.00', '100.90', '100.90', '47.00', '60.80', '42.00', '102.90', '110.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2296', '176.00', '92.00', '101.40', '101.40', '47.00', '60.80', '42.00', '103.40', '111.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2297', '176.00', '93.00', '101.90', '101.90', '47.00', '60.80', '42.00', '103.90', '111.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2298', '176.00', '94.00', '102.40', '102.40', '46.90', '60.80', '42.00', '104.40', '112.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2299', '176.00', '95.00', '102.90', '102.90', '47.00', '60.80', '42.00', '104.90', '112.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2300', '176.00', '96.00', '103.40', '103.40', '47.00', '60.80', '42.00', '105.40', '113.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2301', '176.00', '97.00', '103.90', '103.90', '47.00', '60.80', '42.00', '105.90', '113.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2302', '176.00', '98.00', '104.40', '104.40', '47.00', '60.80', '42.00', '106.40', '114.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2303', '176.00', '99.00', '105.00', '105.00', '47.00', '61.00', '42.00', '107.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2304', '176.00', '100.00', '105.00', '105.00', '47.00', '61.00', '42.00', '107.00', '115.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2305', '176.00', '101.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2306', '176.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2307', '176.00', '103.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2308', '177.00', '59.00', '91.40', '75.40', '44.00', '60.80', '38.00', '77.40', '95.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2309', '177.00', '60.00', '91.90', '75.90', '44.00', '60.80', '38.00', '77.90', '95.50', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2310', '177.00', '61.00', '92.40', '76.40', '44.00', '60.80', '38.00', '78.40', '96.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2311', '177.00', '62.00', '92.90', '76.90', '44.00', '60.80', '38.00', '78.90', '96.50', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2312', '177.00', '63.00', '93.40', '77.40', '44.00', '60.80', '38.00', '79.40', '97.00', '55.00', '103.80');
INSERT INTO `standard_male` VALUES ('2313', '177.00', '64.00', '91.40', '77.40', '44.00', '60.80', '39.00', '79.40', '96.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2314', '177.00', '65.00', '91.90', '77.90', '44.00', '60.80', '39.00', '79.90', '96.50', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2315', '177.00', '66.00', '92.40', '78.40', '44.00', '60.80', '39.00', '80.40', '97.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2316', '177.00', '67.00', '92.90', '78.90', '44.00', '60.80', '39.00', '80.90', '97.50', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2317', '177.00', '68.00', '93.40', '79.40', '44.00', '60.80', '39.00', '81.40', '98.00', '56.00', '103.80');
INSERT INTO `standard_male` VALUES ('2318', '177.00', '69.00', '93.40', '81.40', '45.00', '60.80', '39.00', '83.40', '97.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2319', '177.00', '70.00', '93.90', '81.90', '45.00', '60.80', '39.00', '83.90', '97.50', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2320', '177.00', '71.00', '94.40', '82.40', '45.00', '60.80', '39.00', '84.40', '98.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2321', '177.00', '72.00', '94.90', '82.90', '45.00', '60.80', '39.00', '84.90', '98.50', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2322', '177.00', '73.00', '95.40', '83.40', '45.00', '60.80', '39.00', '85.40', '99.00', '57.00', '103.80');
INSERT INTO `standard_male` VALUES ('2323', '177.00', '74.00', '95.40', '85.40', '45.00', '60.80', '39.00', '87.40', '100.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2324', '177.00', '75.00', '95.90', '85.90', '45.00', '60.80', '39.00', '87.90', '100.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2325', '177.00', '76.00', '96.40', '86.40', '45.00', '60.80', '39.00', '88.40', '101.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2326', '177.00', '77.00', '96.90', '86.90', '45.00', '60.80', '39.00', '88.90', '101.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2327', '177.00', '78.00', '97.40', '87.40', '45.00', '60.80', '39.00', '89.40', '102.00', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2328', '177.00', '79.00', '97.90', '87.90', '45.00', '60.80', '39.00', '89.90', '102.50', '58.00', '103.80');
INSERT INTO `standard_male` VALUES ('2329', '177.00', '80.00', '97.40', '89.40', '45.00', '60.80', '40.00', '91.40', '103.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2330', '177.00', '81.00', '97.90', '89.90', '45.00', '60.80', '40.00', '91.90', '103.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2331', '177.00', '82.00', '98.40', '90.40', '45.00', '60.80', '40.00', '92.40', '104.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2332', '177.00', '83.00', '98.90', '90.90', '45.00', '60.80', '40.00', '92.90', '104.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2333', '177.00', '84.00', '99.40', '91.40', '45.00', '60.80', '40.00', '93.40', '105.00', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2334', '177.00', '85.00', '99.90', '91.90', '45.00', '60.80', '40.00', '93.90', '105.50', '59.00', '103.80');
INSERT INTO `standard_male` VALUES ('2335', '177.00', '86.00', '99.40', '95.40', '46.00', '60.80', '40.00', '97.40', '105.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2336', '177.00', '87.00', '99.90', '95.90', '46.00', '60.80', '40.00', '97.90', '105.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2337', '177.00', '88.00', '100.40', '96.40', '46.00', '60.80', '40.00', '98.40', '106.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2338', '177.00', '89.00', '100.90', '96.90', '46.00', '60.80', '40.00', '98.90', '106.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2339', '177.00', '90.00', '101.40', '97.40', '46.00', '60.80', '40.00', '99.40', '107.00', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2340', '177.00', '91.00', '101.90', '97.90', '46.00', '60.80', '40.00', '99.90', '107.50', '60.00', '103.80');
INSERT INTO `standard_male` VALUES ('2341', '177.00', '92.00', '100.90', '100.90', '47.00', '60.80', '41.00', '102.90', '111.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2342', '177.00', '93.00', '101.40', '101.40', '47.00', '60.80', '41.00', '103.40', '112.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2343', '177.00', '94.00', '101.90', '101.90', '47.00', '60.80', '41.00', '103.90', '112.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2344', '177.00', '95.00', '102.40', '102.40', '47.00', '60.80', '41.00', '104.40', '113.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2345', '177.00', '96.00', '102.90', '102.90', '47.00', '60.80', '41.00', '104.90', '113.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2346', '177.00', '97.00', '103.40', '103.40', '47.00', '60.80', '41.00', '105.40', '114.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2347', '177.00', '98.00', '103.90', '103.90', '47.00', '60.80', '41.00', '105.90', '114.50', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2348', '177.00', '99.00', '104.40', '104.40', '47.00', '60.80', '41.00', '106.40', '115.00', '61.00', '103.80');
INSERT INTO `standard_male` VALUES ('2349', '177.00', '100.00', '105.00', '105.00', '47.00', '61.00', '41.00', '107.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2350', '177.00', '101.00', '105.00', '105.00', '47.00', '61.00', '41.00', '107.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2351', '177.00', '102.00', '106.00', '106.00', '47.00', '61.00', '41.00', '108.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2352', '177.00', '103.00', '106.00', '106.00', '47.00', '61.00', '41.00', '108.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2353', '177.00', '104.00', '107.00', '107.00', '47.00', '61.00', '41.00', '109.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2354', '178.00', '60.00', '92.20', '76.20', '44.00', '61.40', '39.00', '78.20', '95.00', '56.00', '103.40');
INSERT INTO `standard_male` VALUES ('2355', '178.00', '61.00', '92.70', '76.70', '44.00', '61.40', '39.00', '78.70', '95.50', '56.00', '103.40');
INSERT INTO `standard_male` VALUES ('2356', '178.00', '62.00', '93.20', '77.20', '44.00', '61.40', '39.00', '79.20', '96.00', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2357', '178.00', '63.00', '93.70', '77.70', '44.00', '61.40', '39.00', '79.70', '96.50', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2358', '178.00', '64.00', '94.20', '78.20', '44.00', '61.40', '39.00', '80.20', '97.00', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2359', '178.00', '65.00', '92.20', '78.20', '44.00', '61.40', '40.00', '80.20', '96.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2360', '178.00', '66.00', '92.70', '78.70', '44.00', '61.40', '40.00', '80.70', '96.50', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2361', '178.00', '67.00', '93.20', '79.20', '44.00', '61.40', '40.00', '81.20', '97.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2362', '178.00', '68.00', '93.70', '79.70', '44.00', '61.40', '40.00', '81.70', '97.50', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2363', '178.00', '69.00', '94.20', '80.20', '44.00', '61.40', '40.00', '82.20', '98.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2364', '178.00', '70.00', '94.20', '82.20', '45.00', '61.40', '40.00', '84.20', '97.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2365', '178.00', '71.00', '94.70', '82.70', '45.00', '61.40', '40.00', '84.70', '97.50', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2366', '178.00', '72.00', '95.20', '83.20', '45.00', '61.40', '40.00', '85.20', '98.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2367', '178.00', '73.00', '95.70', '83.70', '45.00', '61.40', '40.00', '85.70', '98.50', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2368', '178.00', '74.00', '96.20', '84.20', '45.00', '61.40', '40.00', '86.20', '99.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2369', '178.00', '75.00', '96.20', '86.20', '45.00', '61.40', '40.00', '88.20', '100.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2370', '178.00', '76.00', '96.70', '86.70', '45.00', '61.40', '40.00', '88.70', '100.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2371', '178.00', '77.00', '97.20', '87.20', '45.00', '61.40', '40.00', '89.20', '101.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2372', '178.00', '78.00', '97.70', '87.70', '45.00', '61.40', '40.00', '89.70', '101.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2373', '178.00', '79.00', '98.20', '88.20', '45.00', '61.40', '40.00', '90.20', '102.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2374', '178.00', '80.00', '98.70', '88.70', '45.00', '61.40', '40.00', '90.70', '102.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2375', '178.00', '81.00', '98.20', '90.20', '45.00', '61.40', '41.00', '92.20', '103.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2376', '178.00', '82.00', '98.70', '90.70', '45.00', '61.40', '41.00', '92.70', '103.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2377', '178.00', '83.00', '99.20', '91.20', '45.00', '61.40', '41.00', '93.20', '104.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2378', '178.00', '84.00', '99.70', '91.70', '45.00', '61.40', '41.00', '93.70', '104.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2379', '178.00', '85.00', '100.20', '92.20', '45.00', '61.40', '41.00', '94.20', '105.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2380', '178.00', '86.00', '100.70', '92.70', '45.00', '61.40', '41.00', '94.70', '105.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2381', '178.00', '87.00', '100.20', '96.20', '46.00', '61.40', '41.00', '98.20', '105.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2382', '178.00', '88.00', '100.70', '96.70', '46.00', '61.40', '41.00', '98.70', '105.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2383', '178.00', '89.00', '101.20', '97.20', '46.00', '61.40', '41.00', '99.20', '106.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2384', '178.00', '90.00', '101.70', '97.70', '46.00', '61.40', '41.00', '99.70', '106.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2385', '178.00', '91.00', '102.20', '98.20', '46.00', '61.40', '41.00', '100.20', '107.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2386', '178.00', '92.00', '102.70', '98.70', '46.00', '61.40', '41.00', '100.70', '107.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2387', '178.00', '93.00', '101.70', '101.70', '47.00', '61.40', '42.00', '103.70', '111.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2388', '178.00', '94.00', '102.20', '102.20', '47.00', '61.40', '42.00', '104.20', '112.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2389', '178.00', '95.00', '102.70', '102.70', '47.00', '61.40', '42.00', '104.70', '112.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2390', '178.00', '96.00', '103.20', '103.20', '47.00', '61.40', '42.00', '105.20', '113.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2391', '178.00', '97.00', '103.70', '103.70', '47.00', '61.40', '42.00', '105.70', '113.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2392', '178.00', '98.00', '104.20', '104.20', '47.00', '61.40', '42.00', '106.20', '114.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2393', '178.00', '99.00', '104.70', '104.70', '47.00', '61.40', '42.00', '106.70', '114.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2394', '178.00', '100.00', '105.20', '105.20', '47.00', '61.40', '42.00', '107.20', '115.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2395', '178.00', '101.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2396', '178.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '116.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2397', '178.00', '103.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2398', '178.00', '104.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '117.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2399', '178.00', '105.00', '108.00', '108.00', '47.00', '61.00', '42.00', '110.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2400', '179.00', '61.00', '92.20', '76.20', '44.00', '61.40', '39.00', '78.20', '97.00', '56.00', '103.40');
INSERT INTO `standard_male` VALUES ('2401', '179.00', '62.00', '92.70', '76.70', '44.00', '61.40', '39.00', '78.70', '97.50', '56.00', '103.40');
INSERT INTO `standard_male` VALUES ('2402', '179.00', '63.00', '93.20', '77.20', '44.00', '61.40', '38.60', '79.20', '98.00', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2403', '179.00', '64.00', '93.70', '77.70', '44.00', '61.40', '39.00', '79.70', '98.50', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2404', '179.00', '65.00', '94.20', '78.20', '44.00', '61.40', '39.00', '80.20', '99.00', '56.00', '104.40');
INSERT INTO `standard_male` VALUES ('2405', '179.00', '66.00', '92.20', '78.20', '44.00', '61.40', '40.00', '80.20', '98.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2406', '179.00', '67.00', '92.70', '78.70', '44.00', '61.40', '40.00', '80.70', '98.50', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2407', '179.00', '68.00', '93.20', '79.20', '44.00', '61.40', '40.00', '81.20', '99.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2408', '179.00', '69.00', '93.70', '79.70', '44.00', '61.40', '40.00', '81.70', '99.50', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2409', '179.00', '70.00', '94.20', '80.20', '44.00', '61.40', '40.00', '82.20', '100.00', '57.00', '104.40');
INSERT INTO `standard_male` VALUES ('2410', '179.00', '71.00', '94.20', '82.20', '45.00', '61.40', '40.00', '84.20', '98.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2411', '179.00', '72.00', '94.70', '82.70', '45.00', '61.40', '40.00', '84.70', '98.50', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2412', '179.00', '73.00', '95.20', '83.20', '45.00', '61.40', '40.00', '85.20', '99.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2413', '179.00', '74.00', '95.70', '83.70', '45.00', '61.40', '40.00', '85.70', '99.50', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2414', '179.00', '75.00', '96.20', '84.20', '45.00', '61.40', '40.00', '86.20', '100.00', '58.00', '104.40');
INSERT INTO `standard_male` VALUES ('2415', '179.00', '76.00', '96.20', '86.20', '45.00', '61.40', '40.00', '88.20', '101.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2416', '179.00', '77.00', '96.70', '86.70', '45.00', '61.40', '40.00', '88.70', '101.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2417', '179.00', '78.00', '97.20', '87.20', '45.00', '61.40', '40.00', '89.20', '102.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2418', '179.00', '79.00', '97.70', '87.70', '45.00', '61.40', '40.00', '89.70', '102.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2419', '179.00', '80.00', '98.20', '88.20', '45.00', '61.40', '40.00', '90.20', '103.00', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2420', '179.00', '81.00', '98.70', '88.70', '45.00', '61.40', '40.00', '90.70', '103.50', '59.00', '104.40');
INSERT INTO `standard_male` VALUES ('2421', '179.00', '82.00', '98.20', '90.20', '45.00', '61.40', '41.00', '92.20', '105.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2422', '179.00', '83.00', '98.70', '90.70', '45.00', '61.40', '41.00', '92.70', '105.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2423', '179.00', '84.00', '99.20', '91.20', '45.00', '61.40', '41.00', '93.20', '106.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2424', '179.00', '85.00', '99.70', '91.70', '45.00', '61.40', '41.00', '93.70', '106.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2425', '179.00', '86.00', '100.20', '92.20', '45.00', '61.40', '41.00', '94.20', '107.00', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2426', '179.00', '87.00', '100.70', '92.70', '45.00', '61.40', '41.00', '94.70', '107.50', '60.00', '104.40');
INSERT INTO `standard_male` VALUES ('2427', '179.00', '88.00', '100.20', '96.20', '46.00', '61.40', '41.00', '98.20', '110.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2428', '179.00', '89.00', '100.70', '96.70', '46.00', '61.40', '41.00', '98.70', '110.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2429', '179.00', '90.00', '101.20', '97.20', '46.00', '61.40', '41.00', '99.20', '111.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2430', '179.00', '91.00', '101.70', '97.70', '46.00', '61.40', '41.00', '99.70', '111.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2431', '179.00', '92.00', '102.20', '98.20', '46.00', '61.40', '41.00', '100.20', '112.00', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2432', '179.00', '93.00', '102.70', '98.70', '46.00', '61.40', '41.00', '100.70', '112.50', '61.00', '104.40');
INSERT INTO `standard_male` VALUES ('2433', '179.00', '94.00', '101.70', '101.70', '47.00', '61.40', '42.00', '103.70', '112.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2434', '179.00', '95.00', '102.20', '102.20', '47.00', '61.40', '42.00', '104.20', '113.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2435', '179.00', '96.00', '102.70', '102.70', '47.00', '61.40', '42.00', '104.70', '113.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2436', '179.00', '97.00', '103.20', '103.20', '47.00', '61.40', '42.00', '105.20', '114.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2437', '179.00', '98.00', '103.70', '103.70', '47.00', '61.40', '42.00', '105.70', '114.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2438', '179.00', '99.00', '104.20', '104.20', '47.00', '61.40', '42.00', '106.20', '115.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2439', '179.00', '100.00', '104.70', '104.70', '47.00', '61.40', '42.00', '106.70', '115.50', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2440', '179.00', '101.00', '105.20', '105.20', '47.00', '61.40', '42.00', '107.20', '116.00', '62.00', '104.40');
INSERT INTO `standard_male` VALUES ('2441', '179.00', '102.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2442', '179.00', '103.00', '106.00', '106.00', '47.00', '61.00', '42.00', '108.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2443', '179.00', '104.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2444', '179.00', '105.00', '107.00', '107.00', '47.00', '61.00', '42.00', '109.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2445', '179.00', '106.00', '108.00', '108.00', '47.00', '61.00', '42.00', '110.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2446', '180.00', '62.00', '93.00', '77.00', '45.00', '62.00', '39.00', '79.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2447', '180.00', '63.00', '93.50', '77.50', '45.00', '62.00', '39.00', '79.50', '97.50', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2448', '180.00', '64.00', '94.00', '78.00', '45.00', '62.00', '39.00', '80.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2449', '180.00', '65.00', '94.50', '78.50', '45.00', '62.00', '39.00', '80.50', '98.50', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2450', '180.00', '66.00', '95.00', '79.00', '45.00', '62.00', '39.00', '81.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2451', '180.00', '67.00', '95.00', '81.00', '45.00', '62.00', '40.00', '83.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2452', '180.00', '68.00', '95.50', '81.50', '45.00', '62.00', '40.00', '83.50', '98.50', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2453', '180.00', '69.00', '96.00', '82.00', '45.00', '62.00', '40.00', '84.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2454', '180.00', '70.00', '96.50', '82.50', '45.00', '62.00', '40.00', '84.50', '99.50', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2455', '180.00', '71.00', '97.00', '83.00', '45.00', '62.00', '40.00', '85.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2456', '180.00', '72.00', '95.00', '83.00', '46.00', '62.00', '40.00', '85.00', '98.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2457', '180.00', '73.00', '95.50', '83.50', '46.00', '62.00', '40.00', '85.50', '98.50', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2458', '180.00', '74.00', '96.00', '84.00', '46.00', '62.00', '40.00', '86.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2459', '180.00', '75.00', '96.50', '84.50', '46.00', '62.00', '40.00', '86.50', '99.50', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2460', '180.00', '76.00', '97.00', '85.00', '46.00', '62.00', '40.00', '87.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2461', '180.00', '77.00', '97.00', '87.00', '46.00', '62.00', '40.00', '89.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2462', '180.00', '78.00', '97.50', '87.50', '46.00', '62.00', '40.00', '89.50', '101.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2463', '180.00', '79.00', '98.00', '88.00', '46.00', '62.00', '40.00', '90.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2464', '180.00', '80.00', '98.50', '88.50', '46.00', '62.00', '40.00', '90.50', '102.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2465', '180.00', '81.00', '99.00', '89.00', '46.00', '62.00', '40.00', '91.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2466', '180.00', '82.00', '99.50', '89.50', '46.00', '62.00', '40.00', '91.50', '103.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2467', '180.00', '83.00', '101.00', '93.00', '46.00', '62.00', '41.00', '95.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2468', '180.00', '84.00', '101.50', '93.50', '46.00', '62.00', '41.00', '95.50', '105.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2469', '180.00', '85.00', '102.00', '94.00', '46.00', '62.00', '41.00', '96.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2470', '180.00', '86.00', '102.50', '94.50', '46.00', '62.00', '41.00', '96.50', '106.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2471', '180.00', '87.00', '103.00', '95.00', '46.00', '62.00', '41.00', '97.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2472', '180.00', '88.00', '103.50', '95.50', '46.00', '62.00', '41.00', '97.50', '107.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2473', '180.00', '89.00', '103.00', '99.00', '47.00', '62.00', '41.00', '101.00', '110.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2474', '180.00', '90.00', '103.50', '99.50', '47.00', '62.00', '41.00', '101.50', '110.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2475', '180.00', '91.00', '104.00', '100.00', '47.00', '62.00', '41.00', '102.00', '111.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2476', '180.00', '92.00', '104.50', '100.50', '47.00', '62.00', '41.00', '102.50', '111.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2477', '180.00', '93.00', '105.00', '101.00', '47.00', '62.00', '41.00', '103.00', '112.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2478', '180.00', '94.00', '105.50', '101.50', '47.00', '62.00', '41.00', '103.50', '112.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2479', '180.00', '95.00', '104.50', '104.50', '48.00', '62.00', '42.00', '106.50', '112.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2480', '180.00', '96.00', '105.00', '105.00', '48.00', '62.00', '42.00', '107.00', '113.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2481', '180.00', '97.00', '105.50', '105.50', '48.00', '62.00', '42.00', '107.50', '113.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2482', '180.00', '98.00', '106.00', '106.00', '48.00', '62.00', '42.00', '108.00', '114.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2483', '180.00', '99.00', '106.50', '106.50', '48.00', '62.00', '42.00', '108.50', '114.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2484', '180.00', '100.00', '107.00', '107.00', '48.00', '62.00', '42.00', '109.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2485', '180.00', '101.00', '107.50', '107.50', '48.00', '62.00', '42.00', '109.50', '115.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2486', '180.00', '102.00', '108.00', '108.00', '48.00', '62.00', '42.00', '110.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2487', '180.00', '103.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2488', '180.00', '104.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2489', '180.00', '105.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2490', '180.00', '106.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2491', '180.00', '107.00', '111.00', '111.00', '48.00', '62.00', '42.00', '113.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2492', '181.00', '63.00', '93.00', '77.00', '45.00', '62.00', '39.00', '79.00', '97.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2493', '181.00', '64.00', '93.50', '77.50', '45.00', '62.00', '39.00', '79.50', '97.50', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2494', '181.00', '65.00', '94.00', '78.00', '45.00', '62.00', '39.00', '80.00', '98.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2495', '181.00', '66.00', '94.50', '78.50', '45.00', '62.00', '39.00', '80.50', '98.50', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2496', '181.00', '67.00', '95.00', '79.00', '45.00', '62.00', '39.00', '81.00', '99.00', '56.00', '104.00');
INSERT INTO `standard_male` VALUES ('2497', '181.00', '68.00', '95.00', '81.00', '45.00', '62.00', '40.00', '83.00', '98.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2498', '181.00', '69.00', '95.50', '81.50', '45.00', '62.00', '40.00', '83.50', '98.50', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2499', '181.00', '70.00', '96.00', '82.00', '45.00', '62.00', '40.00', '84.00', '99.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2500', '181.00', '71.00', '96.50', '82.50', '45.00', '62.00', '40.00', '84.50', '99.50', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2501', '181.00', '72.00', '97.00', '83.00', '45.00', '62.00', '40.00', '85.00', '100.00', '57.00', '104.00');
INSERT INTO `standard_male` VALUES ('2502', '181.00', '73.00', '95.00', '83.00', '46.00', '62.00', '40.00', '85.00', '98.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2503', '181.00', '74.00', '95.50', '83.50', '46.00', '62.00', '40.00', '85.50', '98.50', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2504', '181.00', '75.00', '96.00', '84.00', '46.00', '62.00', '40.00', '86.00', '99.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2505', '181.00', '76.00', '96.50', '84.50', '46.00', '62.00', '40.00', '86.50', '99.50', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2506', '181.00', '77.00', '97.00', '85.00', '46.00', '62.00', '40.00', '87.00', '100.00', '58.00', '104.00');
INSERT INTO `standard_male` VALUES ('2507', '181.00', '78.00', '97.00', '87.00', '46.00', '62.00', '40.00', '89.00', '101.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2508', '181.00', '79.00', '97.50', '87.50', '46.00', '62.00', '40.00', '89.50', '101.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2509', '181.00', '80.00', '98.00', '88.00', '46.00', '62.00', '40.00', '90.00', '102.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2510', '181.00', '81.00', '98.50', '88.50', '46.00', '62.00', '40.00', '90.50', '102.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2511', '181.00', '82.00', '99.00', '89.00', '46.00', '62.00', '40.00', '91.00', '103.00', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2512', '181.00', '83.00', '99.50', '89.50', '46.00', '62.00', '40.00', '91.50', '103.50', '59.00', '104.00');
INSERT INTO `standard_male` VALUES ('2513', '181.00', '84.00', '101.00', '93.00', '46.00', '62.00', '41.00', '95.00', '105.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2514', '181.00', '85.00', '101.50', '93.50', '46.00', '62.00', '41.00', '95.50', '105.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2515', '181.00', '86.00', '102.00', '94.00', '46.00', '62.00', '41.00', '96.00', '106.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2516', '181.00', '87.00', '102.50', '94.50', '46.00', '62.00', '41.00', '96.50', '106.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2517', '181.00', '88.00', '103.00', '95.00', '46.00', '62.00', '41.00', '97.00', '107.00', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2518', '181.00', '89.00', '103.50', '95.50', '46.00', '62.00', '41.00', '97.50', '107.50', '60.00', '104.00');
INSERT INTO `standard_male` VALUES ('2519', '181.00', '90.00', '103.00', '99.00', '47.00', '62.00', '41.00', '101.00', '110.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2520', '181.00', '91.00', '103.50', '99.50', '47.00', '62.00', '41.00', '101.50', '110.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2521', '181.00', '92.00', '104.00', '100.00', '47.00', '62.00', '41.00', '102.00', '111.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2522', '181.00', '93.00', '104.50', '100.50', '47.00', '62.00', '41.00', '102.50', '111.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2523', '181.00', '94.00', '105.00', '101.00', '47.00', '62.00', '41.00', '103.00', '112.00', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2524', '181.00', '95.00', '105.50', '101.50', '47.00', '62.00', '41.00', '103.50', '112.50', '61.00', '104.00');
INSERT INTO `standard_male` VALUES ('2525', '181.00', '96.00', '104.50', '104.50', '48.00', '62.00', '42.00', '106.50', '112.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2526', '181.00', '97.00', '105.00', '105.00', '48.00', '62.00', '42.00', '107.00', '113.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2527', '181.00', '98.00', '105.50', '105.50', '48.00', '62.00', '42.00', '107.50', '113.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2528', '181.00', '99.00', '106.00', '106.00', '48.00', '62.00', '42.00', '108.00', '114.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2529', '181.00', '100.00', '106.50', '106.50', '48.00', '62.00', '42.00', '108.50', '114.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2530', '181.00', '101.00', '107.00', '107.00', '48.00', '62.00', '42.00', '109.00', '115.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2531', '181.00', '102.00', '107.50', '107.50', '48.00', '62.00', '42.00', '109.50', '115.50', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2532', '181.00', '103.00', '108.00', '108.00', '48.00', '62.00', '42.00', '110.00', '116.00', '62.00', '104.00');
INSERT INTO `standard_male` VALUES ('2533', '181.00', '104.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '63.00', '104.00');
INSERT INTO `standard_male` VALUES ('2534', '181.00', '105.00', '109.00', '109.00', '48.00', '62.00', '42.00', '111.00', '117.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2535', '181.00', '106.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '64.00', '104.00');
INSERT INTO `standard_male` VALUES ('2536', '181.00', '107.00', '110.00', '110.00', '48.00', '62.00', '42.00', '112.00', '118.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2537', '181.00', '108.00', '111.00', '111.00', '48.00', '62.00', '42.00', '113.00', '119.00', '65.00', '104.00');
INSERT INTO `standard_male` VALUES ('2538', '182.00', '64.00', '93.80', '77.80', '45.00', '62.60', '39.00', '79.80', '98.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2539', '182.00', '65.00', '94.30', '78.30', '45.00', '62.60', '39.00', '80.30', '98.50', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2540', '182.00', '66.00', '94.80', '78.80', '45.00', '62.60', '39.00', '80.80', '99.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2541', '182.00', '67.00', '95.30', '79.30', '45.00', '62.60', '39.00', '81.30', '99.50', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2542', '182.00', '68.00', '95.80', '79.80', '45.00', '62.60', '39.00', '81.80', '100.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2543', '182.00', '69.00', '93.80', '81.80', '45.00', '62.60', '40.00', '83.80', '99.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2544', '182.00', '70.00', '94.30', '82.30', '45.00', '62.60', '40.00', '84.30', '99.50', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2545', '182.00', '71.00', '94.80', '82.80', '45.00', '62.60', '40.00', '84.80', '100.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2546', '182.00', '72.00', '95.30', '83.30', '45.00', '62.60', '40.00', '85.30', '100.50', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2547', '182.00', '73.00', '95.80', '83.80', '45.00', '62.60', '40.00', '85.80', '101.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2548', '182.00', '74.00', '95.80', '83.80', '46.00', '62.60', '40.00', '85.80', '100.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2549', '182.00', '75.00', '96.30', '84.30', '46.00', '62.60', '40.00', '86.30', '100.50', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2550', '182.00', '76.00', '96.80', '84.80', '46.00', '62.60', '40.00', '86.80', '101.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2551', '182.00', '77.00', '97.30', '85.30', '46.00', '62.60', '40.00', '87.30', '101.50', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2552', '182.00', '78.00', '97.80', '85.80', '46.00', '62.60', '40.00', '87.80', '102.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2553', '182.00', '79.00', '97.80', '87.80', '46.00', '62.60', '40.00', '89.80', '102.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2554', '182.00', '80.00', '98.30', '88.30', '46.00', '62.60', '40.00', '90.30', '102.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2555', '182.00', '81.00', '98.80', '88.80', '46.00', '62.60', '40.00', '90.80', '103.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2556', '182.00', '82.00', '99.30', '89.30', '46.00', '62.60', '40.00', '91.30', '103.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2557', '182.00', '83.00', '99.80', '89.80', '46.00', '62.60', '40.00', '91.80', '104.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2558', '182.00', '84.00', '100.30', '90.30', '46.00', '62.60', '40.00', '92.30', '104.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2559', '182.00', '85.00', '99.80', '93.80', '46.00', '62.60', '41.00', '95.80', '106.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2560', '182.00', '86.00', '100.30', '94.30', '46.00', '62.60', '41.00', '96.30', '106.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2561', '182.00', '87.00', '100.80', '94.80', '46.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2562', '182.00', '88.00', '101.30', '95.30', '46.00', '62.60', '41.00', '97.30', '107.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2563', '182.00', '89.00', '101.80', '95.80', '46.00', '62.60', '41.00', '97.80', '108.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2564', '182.00', '90.00', '102.30', '96.30', '46.00', '62.60', '41.00', '98.30', '108.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2565', '182.00', '91.00', '101.80', '99.80', '47.00', '62.60', '41.00', '101.80', '111.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2566', '182.00', '92.00', '102.30', '100.30', '47.00', '62.60', '41.00', '102.30', '111.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2567', '182.00', '93.00', '102.80', '100.80', '47.00', '62.60', '41.00', '102.80', '112.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2568', '182.00', '94.00', '103.30', '101.30', '47.00', '62.60', '41.00', '103.30', '112.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2569', '182.00', '95.00', '103.80', '101.80', '47.00', '62.60', '41.00', '103.80', '113.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2570', '182.00', '96.00', '104.30', '102.30', '47.00', '62.60', '41.00', '104.30', '113.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2571', '182.00', '97.00', '103.30', '103.30', '48.00', '62.60', '42.00', '105.30', '113.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2572', '182.00', '98.00', '103.80', '103.80', '48.00', '62.60', '42.00', '105.80', '114.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2573', '182.00', '99.00', '104.30', '104.30', '48.00', '62.60', '42.00', '106.30', '114.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2574', '182.00', '100.00', '104.80', '104.80', '48.00', '62.60', '42.00', '106.80', '115.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2575', '182.00', '101.00', '105.30', '105.30', '48.00', '62.60', '42.00', '107.30', '115.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2576', '182.00', '102.00', '105.80', '105.80', '48.00', '62.60', '42.00', '107.80', '116.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2577', '182.00', '103.00', '106.30', '106.30', '48.00', '62.60', '42.00', '108.30', '116.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2578', '182.00', '104.00', '106.80', '106.80', '48.00', '62.60', '42.00', '108.80', '117.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2579', '182.00', '105.00', '107.00', '107.00', '48.00', '63.00', '42.00', '109.00', '118.00', '64.00', '105.00');
INSERT INTO `standard_male` VALUES ('2580', '182.00', '106.00', '108.00', '108.00', '48.00', '63.00', '42.00', '110.00', '118.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2581', '182.00', '107.00', '108.00', '108.00', '48.00', '63.00', '42.00', '110.00', '119.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2582', '182.00', '108.00', '109.00', '109.00', '48.00', '63.00', '42.00', '111.00', '119.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2583', '182.00', '109.00', '109.00', '109.00', '48.00', '63.00', '42.00', '111.00', '120.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2584', '183.00', '65.00', '93.80', '77.80', '46.00', '62.60', '39.00', '79.80', '98.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2585', '183.00', '66.00', '94.30', '78.30', '46.00', '62.60', '39.00', '80.30', '98.50', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2586', '183.00', '67.00', '94.80', '78.80', '46.00', '62.60', '39.00', '80.80', '99.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2587', '183.00', '68.00', '95.30', '79.30', '46.00', '62.60', '39.00', '81.30', '99.50', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2588', '183.00', '69.00', '95.80', '79.80', '46.00', '62.60', '39.00', '81.80', '100.00', '57.00', '104.60');
INSERT INTO `standard_male` VALUES ('2589', '183.00', '70.00', '93.80', '81.80', '46.00', '62.60', '40.00', '83.80', '99.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2590', '183.00', '71.00', '94.30', '82.30', '46.00', '62.60', '40.00', '84.30', '99.50', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2591', '183.00', '72.00', '94.80', '82.80', '46.00', '62.60', '40.00', '84.80', '100.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2592', '183.00', '73.00', '95.30', '83.30', '46.00', '62.60', '40.00', '85.30', '100.50', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2593', '183.00', '74.00', '95.80', '83.80', '46.00', '62.60', '40.00', '85.80', '101.00', '58.00', '104.60');
INSERT INTO `standard_male` VALUES ('2594', '183.00', '75.00', '95.80', '83.80', '47.00', '62.60', '40.00', '85.80', '100.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2595', '183.00', '76.00', '96.30', '84.30', '47.00', '62.60', '40.00', '86.30', '100.50', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2596', '183.00', '77.00', '96.80', '84.80', '47.00', '62.60', '40.00', '86.80', '101.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2597', '183.00', '78.00', '97.30', '85.30', '47.00', '62.60', '40.00', '87.30', '101.50', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2598', '183.00', '79.00', '97.80', '85.80', '47.00', '62.60', '40.00', '87.80', '102.00', '59.00', '104.60');
INSERT INTO `standard_male` VALUES ('2599', '183.00', '80.00', '97.80', '87.80', '47.00', '62.60', '40.00', '89.80', '102.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2600', '183.00', '81.00', '98.30', '88.30', '47.00', '62.60', '40.00', '90.30', '102.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2601', '183.00', '82.00', '98.80', '88.80', '47.00', '62.60', '40.00', '90.80', '103.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2602', '183.00', '83.00', '99.30', '89.30', '47.00', '62.60', '40.00', '91.30', '103.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2603', '183.00', '84.00', '99.80', '89.80', '47.00', '62.60', '40.00', '91.80', '104.00', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2604', '183.00', '85.00', '100.30', '90.30', '47.00', '62.60', '40.00', '92.30', '104.50', '60.00', '104.60');
INSERT INTO `standard_male` VALUES ('2605', '183.00', '86.00', '99.80', '93.80', '47.00', '62.60', '41.00', '95.80', '106.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2606', '183.00', '87.00', '100.30', '94.30', '47.00', '62.60', '41.00', '96.30', '106.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2607', '183.00', '88.00', '100.80', '94.80', '47.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2608', '183.00', '88.00', '100.80', '94.80', '47.00', '62.60', '41.00', '96.80', '107.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2609', '183.00', '89.00', '101.30', '95.30', '47.00', '62.60', '41.00', '97.30', '107.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2610', '183.00', '90.00', '101.80', '95.80', '47.00', '62.60', '41.00', '97.80', '108.00', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2611', '183.00', '91.00', '102.30', '96.30', '47.00', '62.60', '41.00', '98.30', '108.50', '61.00', '104.60');
INSERT INTO `standard_male` VALUES ('2612', '183.00', '92.00', '101.80', '99.80', '48.00', '62.60', '41.00', '101.80', '111.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2613', '183.00', '93.00', '102.30', '100.30', '48.00', '62.60', '41.00', '102.30', '111.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2614', '183.00', '94.00', '102.80', '100.80', '48.00', '62.60', '41.00', '102.80', '112.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2615', '183.00', '95.00', '103.30', '101.30', '48.00', '62.60', '41.00', '103.30', '112.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2616', '183.00', '96.00', '103.80', '101.80', '48.00', '62.60', '41.00', '103.80', '113.00', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2617', '183.00', '97.00', '104.30', '102.30', '48.00', '62.60', '41.00', '104.30', '113.50', '62.00', '104.60');
INSERT INTO `standard_male` VALUES ('2618', '183.00', '98.00', '103.30', '103.30', '49.00', '62.60', '42.00', '105.30', '113.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2619', '183.00', '99.00', '103.80', '103.80', '49.00', '62.60', '42.00', '105.80', '114.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2620', '183.00', '100.00', '104.30', '104.30', '49.00', '62.60', '42.00', '106.30', '114.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2621', '183.00', '101.00', '104.80', '104.80', '49.00', '62.60', '42.00', '106.80', '115.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2622', '183.00', '102.00', '105.30', '105.30', '49.00', '62.60', '42.00', '107.30', '115.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2623', '183.00', '103.00', '105.80', '105.80', '49.00', '62.60', '42.00', '107.80', '116.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2624', '183.00', '104.00', '106.30', '106.30', '49.00', '62.60', '42.00', '108.30', '116.50', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2625', '183.00', '105.00', '106.80', '106.80', '49.00', '62.60', '42.00', '108.80', '117.00', '63.00', '104.60');
INSERT INTO `standard_male` VALUES ('2626', '183.00', '106.00', '107.00', '107.00', '49.00', '63.00', '42.00', '109.00', '118.00', '64.00', '105.00');
INSERT INTO `standard_male` VALUES ('2627', '183.00', '107.00', '108.00', '108.00', '49.00', '63.00', '42.00', '110.00', '118.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2628', '183.00', '108.00', '108.00', '108.00', '49.00', '63.00', '42.00', '110.00', '119.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2629', '183.00', '109.00', '109.00', '109.00', '49.00', '63.00', '42.00', '111.00', '119.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2630', '183.00', '110.00', '109.00', '109.00', '49.00', '63.00', '42.00', '111.00', '120.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2631', '184.00', '66.00', '94.60', '78.60', '46.00', '63.20', '40.00', '80.60', '95.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2632', '184.00', '67.00', '95.10', '79.10', '46.00', '63.20', '40.00', '81.10', '95.50', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2633', '184.00', '68.00', '95.60', '79.60', '46.00', '63.20', '40.00', '81.60', '96.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2634', '184.00', '69.00', '96.10', '80.10', '46.00', '63.20', '40.00', '82.10', '96.50', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2635', '184.00', '70.00', '96.60', '80.60', '46.00', '63.20', '40.00', '82.60', '97.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2636', '184.00', '71.00', '96.60', '82.60', '46.00', '63.20', '41.00', '84.60', '97.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2637', '184.00', '72.00', '97.10', '83.10', '46.00', '63.20', '41.00', '85.10', '97.50', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2638', '184.00', '73.00', '97.60', '83.60', '46.00', '63.20', '41.00', '85.60', '98.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2639', '184.00', '74.00', '98.10', '84.10', '46.00', '63.20', '41.00', '86.10', '98.50', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2640', '184.00', '75.00', '98.60', '84.60', '46.00', '63.20', '41.00', '86.60', '99.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2641', '184.00', '76.00', '96.40', '84.60', '47.00', '63.20', '41.00', '86.60', '100.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2642', '184.00', '77.00', '97.00', '85.10', '47.00', '63.20', '41.00', '87.10', '100.50', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2643', '184.00', '78.00', '97.60', '85.60', '47.00', '63.20', '41.00', '87.60', '101.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2644', '184.00', '79.00', '98.20', '86.10', '47.00', '63.20', '41.00', '88.10', '101.50', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2645', '184.00', '80.00', '98.80', '86.60', '47.00', '63.20', '41.00', '88.60', '102.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2646', '184.00', '81.00', '98.60', '88.60', '47.00', '63.20', '41.00', '90.60', '100.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2647', '184.00', '82.00', '99.10', '89.10', '47.00', '63.20', '41.00', '91.10', '100.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2648', '184.00', '83.00', '99.60', '89.60', '47.00', '63.20', '41.00', '91.60', '101.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2649', '184.00', '84.00', '100.10', '90.10', '47.00', '63.20', '41.00', '92.10', '101.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2650', '184.00', '85.00', '100.60', '90.60', '47.00', '63.20', '41.00', '92.60', '102.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2651', '184.00', '86.00', '101.10', '91.10', '47.00', '63.20', '41.00', '93.10', '102.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2652', '184.00', '87.00', '102.60', '94.60', '47.00', '63.20', '42.00', '96.60', '104.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2653', '184.00', '88.00', '103.10', '95.10', '47.00', '63.20', '42.00', '97.10', '104.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2654', '184.00', '89.00', '103.60', '95.60', '47.00', '63.20', '42.00', '97.60', '105.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2655', '184.00', '90.00', '104.10', '96.10', '47.00', '63.20', '42.00', '98.10', '105.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2656', '184.00', '91.00', '104.60', '96.60', '47.00', '63.20', '42.00', '98.60', '106.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2657', '184.00', '92.00', '105.10', '97.10', '47.00', '63.20', '42.00', '99.10', '106.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2658', '184.00', '93.00', '104.60', '100.60', '48.00', '63.20', '42.00', '102.60', '104.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2659', '184.00', '94.00', '105.10', '101.10', '48.00', '63.20', '42.00', '103.10', '104.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2660', '184.00', '95.00', '105.60', '101.60', '48.00', '63.20', '42.00', '103.60', '105.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2661', '184.00', '96.00', '106.10', '102.10', '48.00', '63.20', '42.00', '104.10', '105.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2662', '184.00', '97.00', '106.60', '102.60', '48.00', '63.20', '42.00', '104.60', '106.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2663', '184.00', '98.00', '107.10', '103.10', '48.00', '63.20', '42.00', '105.10', '106.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2664', '184.00', '99.00', '106.10', '106.10', '49.00', '63.20', '43.00', '108.10', '111.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2665', '184.00', '100.00', '106.60', '106.60', '49.00', '63.20', '43.00', '108.60', '112.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2666', '184.00', '101.00', '107.10', '107.10', '49.00', '63.20', '43.00', '109.10', '112.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2667', '184.00', '102.00', '107.60', '107.60', '49.00', '63.20', '43.00', '109.60', '113.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2668', '184.00', '103.00', '108.10', '108.10', '49.00', '63.20', '43.00', '110.10', '113.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2669', '184.00', '104.00', '108.60', '108.60', '49.00', '63.20', '43.00', '110.60', '114.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2670', '184.00', '105.00', '109.10', '109.10', '49.00', '63.20', '43.00', '111.10', '114.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2671', '184.00', '106.00', '109.60', '109.60', '49.00', '63.20', '43.00', '111.60', '115.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2672', '184.00', '107.00', '110.00', '110.00', '49.00', '63.00', '43.00', '112.00', '116.00', '64.00', '105.00');
INSERT INTO `standard_male` VALUES ('2673', '184.00', '108.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '116.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2674', '184.00', '109.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '117.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2675', '184.00', '110.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '117.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2676', '184.00', '111.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '118.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2677', '185.00', '67.00', '94.60', '78.60', '46.00', '63.20', '40.00', '80.60', '95.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2678', '185.00', '68.00', '95.10', '79.10', '46.00', '63.20', '40.00', '81.10', '95.50', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2679', '185.00', '69.00', '95.60', '79.60', '46.00', '63.20', '40.00', '81.60', '96.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2680', '185.00', '70.00', '96.10', '80.10', '46.00', '63.20', '40.00', '82.10', '96.50', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2681', '185.00', '71.00', '96.60', '80.60', '46.00', '63.20', '40.00', '82.60', '97.00', '57.00', '105.20');
INSERT INTO `standard_male` VALUES ('2682', '185.00', '72.00', '96.60', '82.60', '46.00', '63.20', '41.00', '84.60', '97.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2683', '185.00', '73.00', '97.10', '83.10', '46.00', '63.20', '41.00', '85.10', '97.50', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2684', '185.00', '74.00', '97.60', '83.60', '46.00', '63.20', '41.00', '85.60', '98.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2685', '185.00', '75.00', '98.10', '84.10', '46.00', '63.20', '41.00', '86.10', '98.50', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2686', '185.00', '76.00', '98.60', '84.60', '46.00', '63.20', '41.00', '86.60', '99.00', '58.00', '105.20');
INSERT INTO `standard_male` VALUES ('2687', '185.00', '77.00', '96.60', '84.60', '47.00', '63.20', '41.00', '86.60', '100.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2688', '185.00', '78.00', '97.10', '85.10', '47.00', '63.20', '41.00', '87.10', '100.50', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2689', '185.00', '79.00', '97.60', '85.60', '47.00', '63.20', '41.00', '87.60', '101.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2690', '185.00', '80.00', '98.10', '86.10', '47.00', '63.20', '41.00', '88.10', '101.50', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2691', '185.00', '81.00', '98.60', '86.60', '47.00', '63.20', '41.00', '88.60', '102.00', '59.00', '105.20');
INSERT INTO `standard_male` VALUES ('2692', '185.00', '82.00', '98.60', '88.60', '47.00', '63.20', '41.00', '90.60', '100.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2693', '185.00', '83.00', '99.10', '89.10', '47.00', '63.20', '41.00', '91.10', '100.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2694', '185.00', '84.00', '99.60', '89.60', '47.00', '63.20', '41.00', '91.60', '101.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2695', '185.00', '85.00', '100.10', '90.10', '47.00', '63.20', '41.00', '92.10', '101.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2696', '185.00', '86.00', '100.60', '90.60', '47.00', '63.20', '41.00', '92.60', '102.00', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2697', '185.00', '87.00', '101.10', '91.10', '47.00', '63.20', '41.00', '93.10', '102.50', '60.00', '105.20');
INSERT INTO `standard_male` VALUES ('2698', '185.00', '88.00', '102.60', '94.60', '47.00', '63.20', '42.00', '96.60', '104.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2699', '185.00', '89.00', '103.10', '95.10', '47.00', '63.20', '42.00', '97.10', '104.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2700', '185.00', '90.00', '103.60', '95.60', '47.00', '63.20', '42.00', '97.60', '105.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2701', '185.00', '91.00', '104.10', '96.10', '47.00', '63.20', '42.00', '98.10', '105.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2702', '185.00', '92.00', '104.60', '96.60', '47.00', '63.20', '42.00', '98.60', '106.00', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2703', '185.00', '93.00', '105.10', '97.10', '47.00', '63.20', '42.00', '99.10', '106.50', '61.00', '105.20');
INSERT INTO `standard_male` VALUES ('2704', '185.00', '94.00', '104.60', '100.60', '48.00', '63.20', '42.00', '102.60', '104.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2705', '185.00', '95.00', '105.10', '101.10', '48.00', '63.20', '42.00', '103.10', '104.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2706', '185.00', '96.00', '105.60', '101.60', '48.00', '63.20', '42.00', '103.60', '105.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2707', '185.00', '97.00', '106.10', '102.10', '48.00', '63.20', '42.00', '104.10', '105.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2708', '185.00', '98.00', '106.60', '102.60', '48.00', '63.20', '42.00', '104.60', '106.00', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2709', '185.00', '99.00', '107.10', '103.10', '48.00', '63.20', '42.00', '105.10', '106.50', '62.00', '105.20');
INSERT INTO `standard_male` VALUES ('2710', '185.00', '100.00', '106.10', '106.10', '49.00', '63.20', '43.00', '108.10', '111.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2711', '185.00', '101.00', '106.60', '106.60', '49.00', '63.20', '43.00', '108.60', '112.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2712', '185.00', '102.00', '107.10', '107.10', '49.00', '63.20', '43.00', '109.10', '112.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2713', '185.00', '103.00', '107.60', '107.60', '49.00', '63.20', '43.00', '109.60', '113.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2714', '185.00', '104.00', '108.10', '108.10', '49.00', '63.20', '43.00', '110.10', '113.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2715', '185.00', '105.00', '108.60', '108.60', '49.00', '63.20', '43.00', '110.60', '114.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2716', '185.00', '106.00', '109.10', '109.10', '49.00', '63.20', '43.00', '111.10', '114.50', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2717', '185.00', '107.00', '109.60', '109.60', '49.00', '63.20', '43.00', '111.60', '115.00', '63.00', '105.20');
INSERT INTO `standard_male` VALUES ('2718', '185.00', '108.00', '110.00', '110.00', '49.00', '63.00', '43.00', '112.00', '116.00', '64.00', '105.00');
INSERT INTO `standard_male` VALUES ('2719', '185.00', '109.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '116.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2720', '185.00', '110.00', '111.00', '111.00', '49.00', '63.00', '43.00', '113.00', '117.00', '65.00', '105.00');
INSERT INTO `standard_male` VALUES ('2721', '185.00', '111.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '117.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2722', '185.00', '112.00', '112.00', '112.00', '49.00', '63.00', '43.00', '114.00', '118.00', '66.00', '105.00');
INSERT INTO `standard_male` VALUES ('2723', '186.00', '68.00', '95.40', '79.40', '46.00', '63.80', '40.00', '81.40', '95.00', '57.00', '105.80');
INSERT INTO `standard_male` VALUES ('2724', '186.00', '69.00', '95.90', '79.90', '46.00', '63.80', '40.00', '81.90', '95.50', '57.00', '105.80');
INSERT INTO `standard_male` VALUES ('2725', '186.00', '70.00', '96.40', '80.40', '46.00', '63.80', '40.00', '82.40', '96.00', '57.00', '105.80');
INSERT INTO `standard_male` VALUES ('2726', '186.00', '71.00', '96.90', '80.90', '46.00', '63.80', '40.00', '82.90', '96.50', '57.00', '105.80');
INSERT INTO `standard_male` VALUES ('2727', '186.00', '72.00', '97.40', '81.40', '46.00', '63.80', '40.00', '83.40', '97.00', '57.00', '105.80');
INSERT INTO `standard_male` VALUES ('2728', '186.00', '73.00', '95.40', '81.40', '46.00', '63.80', '41.00', '83.40', '97.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2729', '186.00', '74.00', '95.90', '81.90', '46.00', '63.80', '41.00', '83.90', '97.50', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2730', '186.00', '75.00', '96.40', '82.40', '46.00', '63.80', '41.00', '84.40', '98.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2731', '186.00', '76.00', '96.90', '82.90', '46.00', '63.80', '41.00', '84.90', '98.50', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2732', '186.00', '77.00', '97.40', '83.40', '46.00', '63.80', '41.00', '85.40', '99.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2733', '186.00', '78.00', '97.40', '85.40', '47.00', '63.80', '41.00', '87.40', '100.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2734', '186.00', '79.00', '97.90', '85.90', '47.00', '63.80', '41.00', '87.90', '100.50', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2735', '186.00', '80.00', '98.40', '86.40', '47.00', '63.80', '41.00', '88.40', '101.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2736', '186.00', '81.00', '98.90', '86.90', '47.00', '63.80', '41.00', '88.90', '101.50', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2737', '186.00', '82.00', '99.40', '87.40', '47.00', '63.80', '41.00', '89.40', '102.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2738', '186.00', '83.00', '99.40', '89.40', '47.00', '63.80', '41.00', '91.40', '100.00', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2739', '186.00', '84.00', '99.90', '89.90', '47.00', '63.80', '41.00', '91.90', '100.50', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2740', '186.00', '85.00', '100.40', '90.40', '47.00', '63.80', '41.00', '92.40', '101.00', '59.60', '105.80');
INSERT INTO `standard_male` VALUES ('2741', '186.00', '86.00', '100.90', '90.90', '47.00', '63.80', '41.00', '92.90', '101.50', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2742', '186.00', '87.00', '101.40', '91.40', '47.00', '63.80', '41.00', '93.40', '102.00', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2743', '186.00', '88.00', '101.90', '91.90', '47.00', '63.80', '41.00', '93.90', '102.50', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2744', '186.00', '89.00', '101.40', '93.40', '47.00', '63.80', '42.00', '95.40', '104.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2745', '186.00', '90.00', '101.90', '93.90', '47.00', '63.80', '42.00', '95.90', '104.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2746', '186.00', '91.00', '102.40', '94.40', '47.00', '63.80', '42.00', '96.40', '105.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2747', '186.00', '92.00', '102.90', '94.90', '47.00', '63.80', '42.00', '96.90', '105.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2748', '186.00', '93.00', '103.40', '95.40', '47.00', '63.80', '42.00', '97.40', '106.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2749', '186.00', '94.00', '103.90', '95.90', '47.00', '63.80', '42.00', '97.90', '106.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2750', '186.00', '95.00', '103.40', '99.40', '48.00', '63.80', '42.00', '101.40', '104.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2751', '186.00', '96.00', '103.90', '99.90', '48.00', '63.80', '42.00', '101.90', '104.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2752', '186.00', '97.00', '104.40', '100.40', '48.00', '63.80', '42.00', '102.40', '105.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2753', '186.00', '98.00', '104.90', '100.90', '48.00', '63.80', '42.00', '102.90', '105.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2754', '186.00', '99.00', '105.40', '101.40', '48.00', '63.80', '42.00', '103.40', '106.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2755', '186.00', '100.00', '105.90', '101.90', '48.00', '63.80', '42.00', '103.90', '106.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2756', '186.00', '101.00', '104.90', '104.90', '49.00', '63.80', '43.00', '106.90', '111.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2757', '186.00', '102.00', '105.40', '105.40', '49.00', '63.80', '43.00', '107.40', '112.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2758', '186.00', '103.00', '105.90', '105.90', '49.00', '63.80', '43.00', '107.90', '112.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2759', '186.00', '104.00', '106.40', '106.40', '49.00', '63.80', '43.00', '108.40', '113.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2760', '186.00', '105.00', '106.90', '106.90', '49.00', '63.80', '43.00', '108.90', '113.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2761', '186.00', '106.00', '107.40', '107.40', '49.00', '63.80', '43.00', '109.40', '114.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2762', '186.00', '107.00', '107.90', '107.90', '49.00', '63.80', '43.00', '109.90', '114.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2763', '186.00', '108.00', '108.40', '108.40', '49.00', '63.80', '43.00', '110.40', '115.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2764', '186.00', '109.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '64.00', '106.00');
INSERT INTO `standard_male` VALUES ('2765', '186.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '65.00', '106.00');
INSERT INTO `standard_male` VALUES ('2766', '186.00', '111.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '65.00', '106.00');
INSERT INTO `standard_male` VALUES ('2767', '186.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2768', '186.00', '113.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '118.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2769', '187.00', '69.00', '95.40', '79.40', '46.00', '63.80', '40.00', '81.40', '96.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2770', '187.00', '70.00', '95.90', '79.90', '46.00', '63.80', '40.00', '81.90', '96.50', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2771', '187.00', '71.00', '96.40', '80.40', '46.00', '63.80', '40.00', '82.40', '97.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2772', '187.00', '72.00', '96.90', '80.90', '46.00', '63.80', '40.00', '82.90', '97.50', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2773', '187.00', '73.00', '97.40', '81.40', '46.00', '63.80', '40.00', '83.40', '98.00', '58.00', '105.80');
INSERT INTO `standard_male` VALUES ('2774', '187.00', '74.00', '95.40', '81.40', '46.00', '63.80', '41.00', '83.40', '98.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2775', '187.00', '75.00', '95.90', '81.90', '46.00', '63.80', '41.00', '83.90', '98.50', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2776', '187.00', '76.00', '96.40', '82.40', '46.00', '63.80', '41.00', '84.40', '99.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2777', '187.00', '77.00', '96.90', '82.90', '46.00', '63.80', '41.00', '84.90', '99.50', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2778', '187.00', '78.00', '97.40', '83.40', '46.00', '63.80', '41.00', '85.40', '100.00', '59.00', '105.80');
INSERT INTO `standard_male` VALUES ('2779', '187.00', '79.00', '97.40', '85.40', '47.00', '63.80', '41.00', '87.40', '101.00', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2780', '187.00', '80.00', '97.90', '85.90', '47.00', '63.80', '41.00', '87.90', '101.50', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2781', '187.00', '81.00', '98.40', '86.40', '47.00', '63.80', '41.00', '88.40', '102.00', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2782', '187.00', '82.00', '98.90', '86.90', '47.00', '63.80', '41.00', '88.90', '102.50', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2783', '187.00', '83.00', '99.40', '87.40', '47.00', '63.80', '41.00', '89.40', '103.00', '60.00', '105.80');
INSERT INTO `standard_male` VALUES ('2784', '187.00', '84.00', '99.40', '89.40', '47.00', '63.80', '41.00', '91.40', '101.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2785', '187.00', '85.00', '99.90', '89.90', '47.00', '63.80', '41.00', '91.90', '101.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2786', '187.00', '86.00', '100.40', '90.40', '47.00', '63.80', '41.00', '92.40', '102.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2787', '187.00', '87.00', '100.90', '90.90', '47.00', '63.80', '41.00', '92.90', '102.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2788', '187.00', '88.00', '101.40', '91.40', '47.00', '63.80', '41.00', '93.40', '103.00', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2789', '187.00', '89.00', '101.90', '91.90', '47.00', '63.80', '41.00', '93.90', '103.50', '61.00', '105.80');
INSERT INTO `standard_male` VALUES ('2790', '187.00', '90.00', '101.40', '93.40', '47.00', '63.80', '42.00', '95.40', '105.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2791', '187.00', '91.00', '101.90', '93.90', '47.00', '63.80', '42.00', '95.90', '105.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2792', '187.00', '92.00', '102.40', '94.40', '47.00', '63.80', '42.00', '96.40', '106.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2793', '187.00', '93.00', '102.90', '94.90', '47.00', '63.80', '42.00', '96.90', '106.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2794', '187.00', '94.00', '103.40', '95.40', '47.00', '63.80', '42.00', '97.40', '107.00', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2795', '187.00', '95.00', '103.90', '95.90', '47.00', '63.80', '42.00', '97.90', '107.50', '62.00', '105.80');
INSERT INTO `standard_male` VALUES ('2796', '187.00', '96.00', '103.40', '99.40', '48.00', '63.80', '42.00', '101.40', '105.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2797', '187.00', '97.00', '103.90', '99.90', '48.00', '63.80', '42.00', '101.90', '105.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2798', '187.00', '98.00', '104.40', '100.40', '48.00', '63.80', '42.00', '102.40', '106.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2799', '187.00', '99.00', '104.90', '100.90', '48.00', '63.80', '42.00', '102.90', '106.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2800', '187.00', '100.00', '105.40', '101.40', '48.00', '63.80', '42.00', '103.40', '107.00', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2801', '187.00', '101.00', '105.90', '101.90', '48.00', '63.80', '42.00', '103.90', '107.50', '63.00', '105.80');
INSERT INTO `standard_male` VALUES ('2802', '187.00', '102.00', '104.90', '104.90', '49.00', '63.80', '43.00', '106.90', '112.50', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2803', '187.00', '103.00', '105.40', '105.40', '49.00', '63.80', '43.00', '107.40', '113.00', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2804', '187.00', '104.00', '105.90', '105.90', '49.00', '63.80', '43.00', '107.90', '113.50', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2805', '187.00', '105.00', '106.40', '106.40', '49.00', '63.80', '43.00', '108.40', '114.00', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2806', '187.00', '106.00', '106.90', '106.90', '49.00', '63.80', '43.00', '108.90', '114.50', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2807', '187.00', '107.00', '107.40', '107.40', '49.00', '63.80', '43.00', '109.40', '115.00', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2808', '187.00', '108.00', '107.90', '107.90', '49.00', '63.80', '43.00', '109.90', '115.50', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2809', '187.00', '109.00', '108.40', '108.40', '49.00', '63.80', '43.00', '110.40', '116.00', '64.00', '105.80');
INSERT INTO `standard_male` VALUES ('2810', '187.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '65.00', '106.00');
INSERT INTO `standard_male` VALUES ('2811', '187.00', '111.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2812', '187.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2813', '187.00', '113.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '67.00', '106.00');
INSERT INTO `standard_male` VALUES ('2814', '187.00', '114.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '119.00', '67.00', '106.00');
INSERT INTO `standard_male` VALUES ('2815', '188.00', '70.00', '96.00', '80.00', '46.00', '64.00', '40.00', '82.00', '96.00', '58.00', '106.00');
INSERT INTO `standard_male` VALUES ('2816', '188.00', '71.00', '96.00', '80.00', '46.00', '64.00', '40.00', '82.00', '97.00', '58.00', '106.00');
INSERT INTO `standard_male` VALUES ('2817', '188.00', '72.00', '97.00', '81.00', '46.00', '64.00', '40.00', '83.00', '97.00', '58.00', '106.00');
INSERT INTO `standard_male` VALUES ('2818', '188.00', '73.00', '97.00', '81.00', '46.00', '64.00', '40.00', '83.00', '98.00', '58.00', '106.00');
INSERT INTO `standard_male` VALUES ('2819', '188.00', '74.00', '98.00', '82.00', '46.00', '64.00', '40.00', '84.00', '98.00', '58.00', '106.00');
INSERT INTO `standard_male` VALUES ('2820', '188.00', '75.00', '95.00', '82.00', '46.00', '64.00', '41.00', '84.00', '98.00', '59.00', '106.00');
INSERT INTO `standard_male` VALUES ('2821', '188.00', '76.00', '95.00', '82.00', '46.00', '64.00', '41.00', '84.00', '99.00', '59.00', '106.00');
INSERT INTO `standard_male` VALUES ('2822', '188.00', '77.00', '96.00', '83.00', '46.00', '64.00', '41.00', '85.00', '99.00', '59.00', '106.00');
INSERT INTO `standard_male` VALUES ('2823', '188.00', '78.00', '96.00', '83.00', '46.00', '64.00', '41.00', '85.00', '100.00', '59.00', '106.00');
INSERT INTO `standard_male` VALUES ('2824', '188.00', '79.00', '97.00', '84.00', '46.00', '64.00', '41.00', '86.00', '100.00', '59.00', '106.00');
INSERT INTO `standard_male` VALUES ('2825', '188.00', '80.00', '98.00', '86.00', '47.00', '64.00', '41.00', '88.00', '101.00', '60.00', '106.00');
INSERT INTO `standard_male` VALUES ('2826', '188.00', '80.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2827', '188.00', '81.00', '98.00', '86.00', '47.00', '64.00', '41.00', '88.00', '102.00', '60.00', '106.00');
INSERT INTO `standard_male` VALUES ('2828', '188.00', '82.00', '99.00', '87.00', '47.00', '64.00', '41.00', '89.00', '102.00', '60.00', '106.00');
INSERT INTO `standard_male` VALUES ('2829', '188.00', '83.00', '99.00', '87.00', '47.00', '64.00', '41.00', '89.00', '103.00', '60.00', '106.00');
INSERT INTO `standard_male` VALUES ('2830', '188.00', '84.00', '100.00', '88.00', '47.00', '64.00', '41.00', '90.00', '103.00', '60.00', '106.00');
INSERT INTO `standard_male` VALUES ('2831', '188.00', '85.00', '100.00', '90.00', '47.00', '64.00', '41.00', '92.00', '101.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2832', '188.00', '86.00', '100.00', '90.00', '47.00', '64.00', '41.00', '92.00', '102.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2833', '188.00', '87.00', '101.00', '91.00', '47.00', '64.00', '41.00', '93.00', '102.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2834', '188.00', '88.00', '101.00', '91.00', '47.00', '64.00', '41.00', '93.00', '103.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2835', '188.00', '89.00', '102.00', '92.00', '47.00', '64.00', '41.00', '94.00', '103.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2836', '188.00', '90.00', '102.00', '92.00', '47.00', '64.00', '41.00', '94.00', '104.00', '61.00', '106.00');
INSERT INTO `standard_male` VALUES ('2837', '188.00', '91.00', '102.00', '94.00', '47.00', '64.00', '42.00', '96.00', '105.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2838', '188.00', '92.00', '102.00', '94.00', '47.00', '64.00', '42.00', '96.00', '106.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2839', '188.00', '93.00', '103.00', '95.00', '47.00', '64.00', '42.00', '97.00', '106.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2840', '188.00', '94.00', '103.00', '95.00', '47.00', '64.00', '42.00', '97.00', '107.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2841', '188.00', '95.00', '104.00', '96.00', '47.00', '64.00', '42.00', '98.00', '107.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2842', '188.00', '96.00', '104.00', '96.00', '47.00', '64.00', '42.00', '98.00', '108.00', '62.00', '106.00');
INSERT INTO `standard_male` VALUES ('2843', '188.00', '97.00', '104.00', '100.00', '48.00', '64.00', '42.00', '102.00', '105.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2844', '188.00', '98.00', '104.00', '100.00', '48.00', '64.00', '42.00', '102.00', '106.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2845', '188.00', '99.00', '105.00', '101.00', '48.00', '64.00', '42.00', '103.00', '106.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2846', '188.00', '100.00', '105.00', '101.00', '48.00', '64.00', '42.00', '103.00', '107.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2847', '188.00', '101.00', '106.00', '102.00', '48.00', '64.00', '42.00', '104.00', '107.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2848', '188.00', '102.00', '106.00', '102.00', '48.00', '64.00', '42.00', '104.00', '108.00', '63.00', '106.00');
INSERT INTO `standard_male` VALUES ('2849', '188.00', '103.00', '105.00', '105.00', '49.00', '64.00', '43.00', '107.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_male` VALUES ('2850', '188.00', '104.00', '106.00', '106.00', '49.00', '64.00', '43.00', '108.00', '113.00', '64.00', '106.00');
INSERT INTO `standard_male` VALUES ('2851', '188.00', '105.00', '106.00', '106.00', '49.00', '64.00', '43.00', '108.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_male` VALUES ('2852', '188.00', '106.00', '107.00', '107.00', '49.00', '64.00', '43.00', '109.00', '114.00', '64.00', '106.00');
INSERT INTO `standard_male` VALUES ('2853', '188.00', '107.00', '107.00', '107.00', '49.00', '64.00', '43.00', '109.00', '115.00', '65.00', '106.00');
INSERT INTO `standard_male` VALUES ('2854', '188.00', '108.00', '108.00', '108.00', '49.00', '64.00', '43.00', '110.00', '115.00', '65.00', '106.00');
INSERT INTO `standard_male` VALUES ('2855', '188.00', '109.00', '108.00', '108.00', '49.00', '64.00', '43.00', '110.00', '116.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2856', '188.00', '110.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '116.00', '66.00', '106.00');
INSERT INTO `standard_male` VALUES ('2857', '188.00', '111.00', '109.00', '109.00', '49.00', '64.00', '43.00', '111.00', '117.00', '67.00', '106.00');
INSERT INTO `standard_male` VALUES ('2858', '188.00', '112.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '117.00', '67.00', '106.00');
INSERT INTO `standard_male` VALUES ('2859', '188.00', '113.00', '110.00', '110.00', '49.00', '64.00', '43.00', '112.00', '118.00', '68.00', '106.00');
INSERT INTO `standard_male` VALUES ('2860', '188.00', '114.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '118.00', '68.00', '106.00');
INSERT INTO `standard_male` VALUES ('2861', '188.00', '115.00', '111.00', '111.00', '49.00', '64.00', '43.00', '113.00', '119.00', '69.00', '106.00');
INSERT INTO `standard_male` VALUES ('2862', '189.00', '71.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2863', '189.00', '72.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2864', '189.00', '73.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2865', '189.00', '74.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2866', '189.00', '75.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2867', '189.00', '76.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2868', '189.00', '77.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2869', '189.00', '78.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2870', '189.00', '79.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2871', '189.00', '81.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2872', '189.00', '82.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2873', '189.00', '83.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2874', '189.00', '84.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2875', '189.00', '85.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2876', '189.00', '86.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2877', '189.00', '87.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2878', '189.00', '88.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2879', '189.00', '89.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2880', '189.00', '90.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2881', '189.00', '91.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2882', '189.00', '92.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2883', '189.00', '93.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2884', '189.00', '94.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2885', '189.00', '95.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2886', '189.00', '96.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2887', '189.00', '97.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2888', '189.00', '98.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2889', '189.00', '99.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2890', '189.00', '100.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2891', '189.00', '101.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2892', '189.00', '102.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2893', '189.00', '103.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2894', '189.00', '104.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2895', '189.00', '105.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2896', '189.00', '106.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2897', '189.00', '107.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2898', '189.00', '108.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2899', '189.00', '109.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2900', '189.00', '110.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2901', '189.00', '111.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2902', '189.00', '112.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2903', '189.00', '113.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2904', '189.00', '114.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2905', '189.00', '115.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2906', '189.00', '116.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_male` VALUES ('2907', '190.00', '73.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2908', '190.00', '74.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2909', '190.00', '75.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2910', '190.00', '76.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2911', '190.00', '77.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2912', '190.00', '78.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2913', '190.00', '79.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2914', '190.00', '80.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2915', '190.00', '81.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2916', '190.00', '82.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2917', '190.00', '83.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2918', '190.00', '84.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2919', '190.00', '85.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2920', '190.00', '86.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2921', '190.00', '87.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2922', '190.00', '88.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2923', '190.00', '89.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2924', '190.00', '90.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2925', '190.00', '91.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2926', '190.00', '92.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2927', '190.00', '93.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2928', '190.00', '94.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2929', '190.00', '95.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2930', '190.00', '96.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2931', '190.00', '97.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2932', '190.00', '98.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2933', '190.00', '99.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2934', '190.00', '100.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2935', '190.00', '101.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2936', '190.00', '102.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2937', '190.00', '103.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2938', '190.00', '104.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2939', '190.00', '105.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2940', '190.00', '106.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2941', '190.00', '107.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2942', '190.00', '108.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2943', '190.00', '109.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2944', '190.00', '110.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2945', '190.00', '111.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2946', '190.00', '112.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2947', '190.00', '113.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2948', '190.00', '114.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2949', '190.00', '115.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2950', '190.00', '116.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2951', '190.00', '117.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2952', '190.00', '118.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_male` VALUES ('2953', '191.00', '74.00', '97.00', '81.00', '47.00', '65.00', '41.00', '83.00', '97.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2954', '191.00', '75.00', '98.00', '82.00', '47.00', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2955', '191.00', '76.00', '98.00', '82.00', '47.30', '65.00', '41.00', '84.00', '98.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2956', '191.00', '77.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2957', '191.00', '78.00', '99.00', '83.00', '47.00', '65.00', '41.00', '85.00', '99.00', '60.00', '107.00');
INSERT INTO `standard_male` VALUES ('2958', '191.00', '79.00', '97.00', '83.00', '47.00', '65.00', '42.00', '85.00', '99.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2959', '191.00', '80.00', '98.00', '84.00', '47.00', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2960', '191.00', '81.00', '98.00', '84.00', '47.30', '65.00', '42.00', '86.00', '100.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2961', '191.00', '82.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2962', '191.00', '83.00', '99.00', '85.00', '47.00', '65.00', '42.00', '87.00', '101.00', '61.00', '107.00');
INSERT INTO `standard_male` VALUES ('2963', '191.00', '84.00', '99.00', '87.00', '48.00', '65.00', '42.00', '89.00', '102.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2964', '191.00', '85.00', '100.00', '88.00', '48.00', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2965', '191.00', '86.00', '100.00', '88.00', '48.30', '65.00', '42.00', '90.00', '103.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2966', '191.00', '87.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2967', '191.00', '88.00', '101.00', '89.00', '48.00', '65.00', '42.00', '91.00', '104.00', '62.00', '107.00');
INSERT INTO `standard_male` VALUES ('2968', '191.00', '89.00', '101.00', '91.00', '48.00', '65.00', '42.00', '93.00', '102.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2969', '191.00', '90.00', '102.00', '92.00', '48.00', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2970', '191.00', '91.00', '102.00', '92.00', '48.30', '65.00', '42.00', '94.00', '103.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2971', '191.00', '92.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2972', '191.00', '93.00', '103.00', '93.00', '48.00', '65.00', '42.00', '95.00', '104.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2973', '191.00', '94.00', '104.00', '94.00', '48.00', '65.00', '42.00', '96.00', '105.00', '63.00', '107.00');
INSERT INTO `standard_male` VALUES ('2974', '191.00', '95.00', '103.00', '95.00', '48.00', '65.00', '43.00', '97.00', '106.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2975', '191.00', '96.00', '104.00', '96.00', '48.00', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2976', '191.00', '97.00', '104.00', '96.00', '48.30', '65.00', '43.00', '98.00', '107.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2977', '191.00', '98.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2978', '191.00', '99.00', '105.00', '97.00', '48.00', '65.00', '43.00', '99.00', '108.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2979', '191.00', '100.00', '106.00', '98.00', '48.00', '65.00', '43.00', '100.00', '109.00', '64.00', '107.00');
INSERT INTO `standard_male` VALUES ('2980', '191.00', '101.00', '105.00', '101.00', '49.00', '65.00', '43.00', '103.00', '106.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2981', '191.00', '102.00', '106.00', '102.00', '49.00', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2982', '191.00', '103.00', '106.00', '102.00', '49.30', '65.00', '43.00', '104.00', '107.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2983', '191.00', '104.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2984', '191.00', '105.00', '107.00', '103.00', '49.00', '65.00', '43.00', '105.00', '108.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2985', '191.00', '106.00', '108.00', '104.00', '49.00', '65.00', '43.00', '106.00', '109.00', '65.00', '107.00');
INSERT INTO `standard_male` VALUES ('2986', '191.00', '107.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2987', '191.00', '108.00', '107.00', '107.00', '50.00', '65.00', '44.00', '109.00', '114.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2988', '191.00', '109.00', '108.00', '108.00', '50.00', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2989', '191.00', '110.00', '108.00', '108.00', '50.30', '65.00', '44.00', '110.00', '115.00', '66.00', '107.00');
INSERT INTO `standard_male` VALUES ('2990', '191.00', '111.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2991', '191.00', '112.00', '109.00', '109.00', '50.00', '65.00', '44.00', '111.00', '116.00', '67.00', '107.00');
INSERT INTO `standard_male` VALUES ('2992', '191.00', '113.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2993', '191.00', '114.00', '110.00', '110.00', '50.00', '65.00', '44.00', '112.00', '117.00', '68.00', '107.00');
INSERT INTO `standard_male` VALUES ('2994', '191.00', '115.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2995', '191.00', '116.00', '111.00', '111.00', '50.00', '65.00', '44.00', '113.00', '118.00', '69.00', '107.00');
INSERT INTO `standard_male` VALUES ('2996', '191.00', '117.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2997', '191.00', '118.00', '112.00', '112.00', '50.00', '65.00', '44.00', '114.00', '119.00', '70.00', '107.00');
INSERT INTO `standard_male` VALUES ('2998', '191.00', '119.00', '113.00', '113.00', '50.00', '65.00', '44.00', '115.00', '120.00', '71.00', '107.00');
INSERT INTO `standard_male` VALUES ('2999', '192.00', '75.00', '98.00', '82.00', '47.00', '66.00', '41.00', '84.00', '97.00', '60.00', '108.00');
INSERT INTO `standard_male` VALUES ('3000', '192.00', '76.00', '98.00', '82.00', '47.00', '66.00', '41.00', '84.00', '98.00', '60.00', '108.00');
INSERT INTO `standard_male` VALUES ('3001', '192.00', '77.00', '99.00', '83.00', '47.00', '66.00', '41.00', '85.00', '98.00', '60.00', '108.00');
INSERT INTO `standard_male` VALUES ('3002', '192.00', '78.00', '99.00', '83.00', '47.00', '66.00', '41.00', '85.00', '99.00', '60.00', '108.00');
INSERT INTO `standard_male` VALUES ('3003', '192.00', '79.00', '100.00', '84.00', '47.00', '66.00', '41.00', '86.00', '99.00', '60.00', '108.00');
INSERT INTO `standard_male` VALUES ('3004', '192.00', '80.00', '98.00', '84.00', '47.00', '66.00', '42.00', '86.00', '99.00', '61.00', '108.00');
INSERT INTO `standard_male` VALUES ('3005', '192.00', '81.00', '98.00', '84.00', '47.00', '66.00', '42.00', '86.00', '100.00', '61.00', '108.00');
INSERT INTO `standard_male` VALUES ('3006', '192.00', '82.00', '99.00', '85.00', '47.00', '66.00', '42.00', '87.00', '100.00', '61.00', '108.00');
INSERT INTO `standard_male` VALUES ('3007', '192.00', '83.00', '99.00', '85.00', '47.00', '66.00', '42.00', '87.00', '101.00', '61.00', '108.00');
INSERT INTO `standard_male` VALUES ('3008', '192.00', '84.00', '100.00', '86.00', '47.00', '66.00', '42.00', '88.00', '101.00', '61.00', '108.00');
INSERT INTO `standard_male` VALUES ('3009', '192.00', '85.00', '100.00', '88.00', '48.00', '66.00', '42.00', '90.00', '102.00', '62.00', '108.00');
INSERT INTO `standard_male` VALUES ('3010', '192.00', '86.00', '100.00', '88.00', '48.00', '66.00', '42.00', '90.00', '103.00', '62.00', '108.00');
INSERT INTO `standard_male` VALUES ('3011', '192.00', '87.00', '101.00', '89.00', '48.00', '66.00', '42.00', '91.00', '103.00', '62.00', '108.00');
INSERT INTO `standard_male` VALUES ('3012', '192.00', '88.00', '101.00', '89.00', '48.00', '66.00', '42.00', '91.00', '104.00', '62.00', '108.00');
INSERT INTO `standard_male` VALUES ('3013', '192.00', '89.00', '102.00', '90.00', '48.00', '66.00', '42.00', '92.00', '104.00', '62.00', '108.00');
INSERT INTO `standard_male` VALUES ('3014', '192.00', '90.00', '102.00', '92.00', '48.00', '66.00', '42.00', '94.00', '102.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3015', '192.00', '91.00', '102.00', '92.00', '48.00', '66.00', '42.00', '94.00', '103.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3016', '192.00', '92.00', '103.00', '93.00', '48.00', '66.00', '42.00', '95.00', '103.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3017', '192.00', '93.00', '103.00', '93.00', '48.00', '66.00', '42.00', '95.00', '104.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3018', '192.00', '94.00', '104.00', '94.00', '48.00', '66.00', '42.00', '96.00', '104.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3019', '192.00', '95.00', '104.00', '94.00', '48.00', '66.00', '42.00', '96.00', '105.00', '63.00', '108.00');
INSERT INTO `standard_male` VALUES ('3020', '192.00', '96.00', '104.00', '96.00', '48.00', '66.00', '43.00', '98.00', '106.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3021', '192.00', '97.00', '104.00', '96.00', '48.00', '66.00', '43.00', '98.00', '107.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3022', '192.00', '98.00', '105.00', '97.00', '48.00', '66.00', '43.00', '99.00', '107.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3023', '192.00', '99.00', '105.00', '97.00', '48.00', '66.00', '43.00', '99.00', '108.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3024', '192.00', '100.00', '106.00', '98.00', '48.00', '66.00', '43.00', '100.00', '108.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3025', '192.00', '101.00', '106.00', '98.00', '48.00', '66.00', '43.00', '100.00', '109.00', '64.00', '108.00');
INSERT INTO `standard_male` VALUES ('3026', '192.00', '102.00', '106.00', '102.00', '49.00', '66.00', '43.00', '104.00', '106.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3027', '192.00', '103.00', '106.00', '102.00', '49.00', '66.00', '43.00', '104.00', '107.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3028', '192.00', '104.00', '107.00', '103.00', '49.00', '66.00', '43.00', '105.00', '107.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3029', '192.00', '105.00', '107.00', '103.00', '49.00', '66.00', '43.00', '105.00', '108.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3030', '192.00', '106.00', '108.00', '104.00', '49.00', '66.00', '43.00', '106.00', '108.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3031', '192.00', '107.00', '108.00', '104.00', '49.00', '66.00', '43.00', '106.00', '109.00', '65.00', '108.00');
INSERT INTO `standard_male` VALUES ('3032', '192.00', '108.00', '107.00', '107.00', '50.00', '66.00', '44.00', '109.00', '114.00', '66.00', '108.00');
INSERT INTO `standard_male` VALUES ('3033', '192.00', '109.00', '108.00', '108.00', '50.00', '66.00', '44.00', '110.00', '114.00', '66.00', '108.00');
INSERT INTO `standard_male` VALUES ('3034', '192.00', '110.00', '108.00', '108.00', '50.00', '66.00', '44.00', '110.00', '115.00', '66.00', '108.00');
INSERT INTO `standard_male` VALUES ('3035', '192.00', '111.00', '109.00', '109.00', '50.00', '66.00', '44.00', '111.00', '115.00', '66.00', '108.00');
INSERT INTO `standard_male` VALUES ('3036', '192.00', '112.00', '109.00', '109.00', '50.00', '66.00', '44.00', '111.00', '116.00', '67.00', '108.00');
INSERT INTO `standard_male` VALUES ('3037', '192.00', '113.00', '110.00', '110.00', '50.00', '66.00', '44.00', '112.00', '116.00', '67.00', '108.00');
INSERT INTO `standard_male` VALUES ('3038', '192.00', '114.00', '110.00', '110.00', '50.00', '66.00', '44.00', '112.00', '117.00', '68.00', '108.00');
INSERT INTO `standard_male` VALUES ('3039', '192.00', '115.00', '111.00', '111.00', '50.00', '66.00', '44.00', '113.00', '117.00', '68.00', '108.00');
INSERT INTO `standard_male` VALUES ('3040', '192.00', '116.00', '111.00', '111.00', '50.00', '66.00', '44.00', '113.00', '118.00', '69.00', '108.00');
INSERT INTO `standard_male` VALUES ('3041', '192.00', '117.00', '112.00', '112.00', '50.00', '66.00', '44.00', '114.00', '118.00', '69.00', '108.00');
INSERT INTO `standard_male` VALUES ('3042', '192.00', '118.00', '112.00', '112.00', '50.00', '66.00', '44.00', '114.00', '119.00', '70.00', '108.00');
INSERT INTO `standard_male` VALUES ('3043', '192.00', '119.00', '113.00', '113.00', '50.00', '66.00', '44.00', '115.00', '119.00', '70.00', '108.00');
INSERT INTO `standard_male` VALUES ('3044', '192.00', '120.00', '113.00', '113.00', '50.00', '66.00', '44.00', '115.00', '120.00', '71.00', '108.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COMMENT='登录记录';

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
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------

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
