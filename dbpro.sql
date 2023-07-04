/*
Navicat MySQL Data Transfer

Source Server         : DBPro
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : dbpro

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2023-07-04 21:49:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admininfo`
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `adminname` varchar(255) DEFAULT NULL COMMENT '用户名',
  `adminpwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `admincreatetime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `adminnumber` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `adminmail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `islock` varchar(255) DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息';

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', '123', '123', null, null, null, null);
INSERT INTO `admininfo` VALUES ('2', '17122897', '123', null, '18575556203', null, null);
INSERT INTO `admininfo` VALUES ('3', '123', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('4', '1234', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('5', '12345', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('6', '123456', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('7', '2222', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('8', '22222', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('9', '222222', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);
INSERT INTO `admininfo` VALUES ('10', '2222222', '202cb962ac59075b964b07152d234b70', null, '18575556203', '894071177@qq.com', null);

-- ----------------------------
-- Table structure for `caruser`
-- ----------------------------
DROP TABLE IF EXISTS `caruser`;
CREATE TABLE `caruser` (
  `caruserid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `carusername` varchar(255) DEFAULT NULL COMMENT '姓名',
  `caruserphone` varchar(255) DEFAULT NULL COMMENT '电话',
  `carusercardid` varchar(255) DEFAULT NULL COMMENT '身份证',
  `carusertype` varchar(255) DEFAULT NULL COMMENT '人员类别',
  `carusermanager` varchar(255) DEFAULT NULL COMMENT '所属用户adminid',
  PRIMARY KEY (`caruserid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='乘车人信息';

-- ----------------------------
-- Records of caruser
-- ----------------------------
INSERT INTO `caruser` VALUES ('1', '王哲祥', '18575556203', '410182199905306037', null, '3');
INSERT INTO `caruser` VALUES ('2', '韦永志', '15238689661', '111111111111111', null, null);
INSERT INTO `caruser` VALUES ('3', '韦永志', '15238689661', '111111111111111', null, null);

-- ----------------------------
-- Table structure for `city`
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cityname` varchar(255) NOT NULL COMMENT '城市',
  PRIMARY KEY (`cityid`,`cityname`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='城市信息';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '蚌埠');
INSERT INTO `city` VALUES ('2', '北京');
INSERT INTO `city` VALUES ('3', '沧州');
INSERT INTO `city` VALUES ('4', '常州');
INSERT INTO `city` VALUES ('5', '滁州');
INSERT INTO `city` VALUES ('6', '丹阳');
INSERT INTO `city` VALUES ('7', '德州');
INSERT INTO `city` VALUES ('8', '定远');
INSERT INTO `city` VALUES ('9', '杭州');
INSERT INTO `city` VALUES ('10', '济南');
INSERT INTO `city` VALUES ('11', '嘉兴');
INSERT INTO `city` VALUES ('12', '昆山');
INSERT INTO `city` VALUES ('13', '廊坊');
INSERT INTO `city` VALUES ('14', '南京');
INSERT INTO `city` VALUES ('15', '曲阜');
INSERT INTO `city` VALUES ('16', '上海');
INSERT INTO `city` VALUES ('17', '苏州');
INSERT INTO `city` VALUES ('18', '宿州');
INSERT INTO `city` VALUES ('19', '泰安');
INSERT INTO `city` VALUES ('20', '滕州');
INSERT INTO `city` VALUES ('21', '天津');
INSERT INTO `city` VALUES ('22', '无锡');
INSERT INTO `city` VALUES ('23', '徐州');
INSERT INTO `city` VALUES ('24', '镇江');
INSERT INTO `city` VALUES ('25', '枣庄');

-- ----------------------------
-- Table structure for `citystation`
-- ----------------------------
DROP TABLE IF EXISTS `citystation`;
CREATE TABLE `citystation` (
  `citystationid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cityid` int(11) DEFAULT NULL COMMENT '城市编号',
  `stationid` int(11) DEFAULT NULL COMMENT '车站城市',
  PRIMARY KEY (`citystationid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='城市车站信息';

-- ----------------------------
-- Records of citystation
-- ----------------------------
INSERT INTO `citystation` VALUES ('1', '1', '1');
INSERT INTO `citystation` VALUES ('2', '2', '2');
INSERT INTO `citystation` VALUES ('3', '3', '3');
INSERT INTO `citystation` VALUES ('4', '4', '4');
INSERT INTO `citystation` VALUES ('5', '5', '5');
INSERT INTO `citystation` VALUES ('6', '6', '6');
INSERT INTO `citystation` VALUES ('7', '7', '7');
INSERT INTO `citystation` VALUES ('8', '8', '8');
INSERT INTO `citystation` VALUES ('9', '9', '9');
INSERT INTO `citystation` VALUES ('10', '10', '10');
INSERT INTO `citystation` VALUES ('11', '11', '11');
INSERT INTO `citystation` VALUES ('12', '12', '12');
INSERT INTO `citystation` VALUES ('13', '13', '13');
INSERT INTO `citystation` VALUES ('14', '14', '14');
INSERT INTO `citystation` VALUES ('15', '15', '15');
INSERT INTO `citystation` VALUES ('16', '16', '16');
INSERT INTO `citystation` VALUES ('17', '16', '17');
INSERT INTO `citystation` VALUES ('18', '17', '18');
INSERT INTO `citystation` VALUES ('19', '18', '19');
INSERT INTO `citystation` VALUES ('20', '19', '20');
INSERT INTO `citystation` VALUES ('21', '20', '21');
INSERT INTO `citystation` VALUES ('22', '21', '22');
INSERT INTO `citystation` VALUES ('23', '22', '23');
INSERT INTO `citystation` VALUES ('24', '23', '24');
INSERT INTO `citystation` VALUES ('25', '24', '25');
INSERT INTO `citystation` VALUES ('26', '25', '26');

-- ----------------------------
-- Table structure for `g1`
-- ----------------------------
DROP TABLE IF EXISTS `g1`;
CREATE TABLE `g1` (
  `seatid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键号',
  `seatname` int(11) DEFAULT NULL COMMENT '座位号',
  `seatstatue` varchar(255) DEFAULT NULL COMMENT '座位状态',
  `seatinterval` varchar(255) DEFAULT NULL COMMENT '区间归属',
  `seattype` varchar(255) DEFAULT NULL COMMENT '特1号车厢一2号车厢二3号车厢',
  PRIMARY KEY (`seatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of g1
-- ----------------------------
INSERT INTO `g1` VALUES ('1', '1', '0', '1', '0');
INSERT INTO `g1` VALUES ('2', '1', '0', '1', '1');
INSERT INTO `g1` VALUES ('3', '1', '0', '1', '2');
INSERT INTO `g1` VALUES ('4', '1', '0', '2', '0');
INSERT INTO `g1` VALUES ('5', '1', '0', '2', '1');
INSERT INTO `g1` VALUES ('6', '1', '0', '2', '2');
INSERT INTO `g1` VALUES ('7', '1', '0', '3', '0');
INSERT INTO `g1` VALUES ('8', '1', '0', '3', '1');
INSERT INTO `g1` VALUES ('9', '1', '0', '3', '2');
INSERT INTO `g1` VALUES ('10', '1', '0', '4', '0');
INSERT INTO `g1` VALUES ('11', '1', '0', '4', '1');
INSERT INTO `g1` VALUES ('12', '1', '0', '4', '2');
INSERT INTO `g1` VALUES ('13', '1', '0', '5', '0');
INSERT INTO `g1` VALUES ('14', '1', '0', '5', '1');
INSERT INTO `g1` VALUES ('15', '1', '0', '5', '2');
INSERT INTO `g1` VALUES ('16', '1', '0', '6', '0');
INSERT INTO `g1` VALUES ('17', '1', '0', '6', '1');
INSERT INTO `g1` VALUES ('18', '1', '0', '6', '2');
INSERT INTO `g1` VALUES ('19', '1', '0', '7', '0');
INSERT INTO `g1` VALUES ('20', '1', '0', '7', '1');
INSERT INTO `g1` VALUES ('21', '1', '0', '7', '2');
INSERT INTO `g1` VALUES ('22', '1', '0', '8', '0');
INSERT INTO `g1` VALUES ('23', '1', '0', '8', '1');
INSERT INTO `g1` VALUES ('24', '1', '0', '8', '2');
INSERT INTO `g1` VALUES ('25', '2', '0', '1', '0');
INSERT INTO `g1` VALUES ('26', '2', '0', '1', '1');
INSERT INTO `g1` VALUES ('27', '2', '0', '1', '2');
INSERT INTO `g1` VALUES ('28', '2', '0', '2', '0');
INSERT INTO `g1` VALUES ('29', '2', '0', '2', '1');
INSERT INTO `g1` VALUES ('30', '2', '0', '2', '2');
INSERT INTO `g1` VALUES ('31', '2', '0', '3', '0');
INSERT INTO `g1` VALUES ('32', '2', '0', '3', '1');
INSERT INTO `g1` VALUES ('33', '2', '0', '3', '2');
INSERT INTO `g1` VALUES ('34', '2', '0', '4', '0');
INSERT INTO `g1` VALUES ('35', '2', '0', '4', '1');
INSERT INTO `g1` VALUES ('36', '2', '0', '4', '2');
INSERT INTO `g1` VALUES ('37', '2', '0', '5', '0');
INSERT INTO `g1` VALUES ('38', '2', '0', '5', '1');
INSERT INTO `g1` VALUES ('39', '2', '0', '5', '2');
INSERT INTO `g1` VALUES ('40', '2', '0', '6', '0');
INSERT INTO `g1` VALUES ('41', '2', '0', '6', '1');
INSERT INTO `g1` VALUES ('42', '2', '0', '6', '2');
INSERT INTO `g1` VALUES ('43', '2', '0', '7', '0');
INSERT INTO `g1` VALUES ('44', '2', '0', '7', '1');
INSERT INTO `g1` VALUES ('45', '2', '0', '7', '2');
INSERT INTO `g1` VALUES ('46', '2', '0', '8', '0');
INSERT INTO `g1` VALUES ('47', '2', '0', '8', '1');
INSERT INTO `g1` VALUES ('48', '2', '0', '8', '2');
INSERT INTO `g1` VALUES ('49', '3', '0', '1', '0');
INSERT INTO `g1` VALUES ('50', '3', '0', '1', '1');
INSERT INTO `g1` VALUES ('51', '3', '0', '1', '2');
INSERT INTO `g1` VALUES ('52', '3', '0', '2', '0');
INSERT INTO `g1` VALUES ('53', '3', '0', '2', '1');
INSERT INTO `g1` VALUES ('54', '3', '0', '2', '2');
INSERT INTO `g1` VALUES ('55', '3', '0', '3', '0');
INSERT INTO `g1` VALUES ('56', '3', '0', '3', '1');
INSERT INTO `g1` VALUES ('57', '3', '0', '3', '2');
INSERT INTO `g1` VALUES ('58', '3', '0', '4', '0');
INSERT INTO `g1` VALUES ('59', '3', '0', '4', '1');
INSERT INTO `g1` VALUES ('60', '3', '0', '4', '2');
INSERT INTO `g1` VALUES ('61', '3', '0', '5', '0');
INSERT INTO `g1` VALUES ('62', '3', '0', '5', '1');
INSERT INTO `g1` VALUES ('63', '3', '0', '5', '2');
INSERT INTO `g1` VALUES ('64', '3', '0', '6', '0');
INSERT INTO `g1` VALUES ('65', '3', '0', '6', '1');
INSERT INTO `g1` VALUES ('66', '3', '0', '6', '2');
INSERT INTO `g1` VALUES ('67', '3', '0', '7', '0');
INSERT INTO `g1` VALUES ('68', '3', '0', '7', '1');
INSERT INTO `g1` VALUES ('69', '3', '0', '7', '2');
INSERT INTO `g1` VALUES ('70', '3', '0', '8', '0');
INSERT INTO `g1` VALUES ('71', '3', '0', '8', '1');
INSERT INTO `g1` VALUES ('72', '3', '0', '8', '2');
INSERT INTO `g1` VALUES ('73', '4', '0', '1', '0');
INSERT INTO `g1` VALUES ('74', '4', '0', '1', '1');
INSERT INTO `g1` VALUES ('75', '4', '0', '1', '2');
INSERT INTO `g1` VALUES ('76', '4', '0', '2', '0');
INSERT INTO `g1` VALUES ('77', '4', '0', '2', '1');
INSERT INTO `g1` VALUES ('78', '4', '0', '2', '2');
INSERT INTO `g1` VALUES ('79', '4', '0', '3', '0');
INSERT INTO `g1` VALUES ('80', '4', '0', '3', '1');
INSERT INTO `g1` VALUES ('81', '4', '0', '3', '2');
INSERT INTO `g1` VALUES ('82', '4', '0', '4', '0');
INSERT INTO `g1` VALUES ('83', '4', '0', '4', '1');
INSERT INTO `g1` VALUES ('84', '4', '0', '4', '2');
INSERT INTO `g1` VALUES ('85', '4', '0', '5', '0');
INSERT INTO `g1` VALUES ('86', '4', '0', '5', '1');
INSERT INTO `g1` VALUES ('87', '4', '0', '5', '2');
INSERT INTO `g1` VALUES ('88', '4', '0', '6', '0');
INSERT INTO `g1` VALUES ('89', '4', '0', '6', '1');
INSERT INTO `g1` VALUES ('90', '4', '0', '6', '2');
INSERT INTO `g1` VALUES ('91', '4', '0', '7', '0');
INSERT INTO `g1` VALUES ('92', '4', '0', '7', '1');
INSERT INTO `g1` VALUES ('93', '4', '0', '7', '2');
INSERT INTO `g1` VALUES ('94', '4', '0', '8', '0');
INSERT INTO `g1` VALUES ('95', '4', '0', '8', '1');
INSERT INTO `g1` VALUES ('96', '4', '0', '8', '2');
INSERT INTO `g1` VALUES ('97', '5', '0', '1', '0');
INSERT INTO `g1` VALUES ('98', '5', '0', '1', '1');
INSERT INTO `g1` VALUES ('99', '5', '0', '1', '2');
INSERT INTO `g1` VALUES ('100', '5', '0', '2', '0');
INSERT INTO `g1` VALUES ('101', '5', '0', '2', '1');
INSERT INTO `g1` VALUES ('102', '5', '0', '2', '2');
INSERT INTO `g1` VALUES ('103', '5', '0', '3', '0');
INSERT INTO `g1` VALUES ('104', '5', '0', '3', '1');
INSERT INTO `g1` VALUES ('105', '5', '0', '3', '2');
INSERT INTO `g1` VALUES ('106', '5', '0', '4', '0');
INSERT INTO `g1` VALUES ('107', '5', '0', '4', '1');
INSERT INTO `g1` VALUES ('108', '5', '0', '4', '2');
INSERT INTO `g1` VALUES ('109', '5', '0', '5', '0');
INSERT INTO `g1` VALUES ('110', '5', '0', '5', '1');
INSERT INTO `g1` VALUES ('111', '5', '0', '5', '2');
INSERT INTO `g1` VALUES ('112', '5', '0', '6', '0');
INSERT INTO `g1` VALUES ('113', '5', '0', '6', '1');
INSERT INTO `g1` VALUES ('114', '5', '0', '6', '2');
INSERT INTO `g1` VALUES ('115', '5', '0', '7', '0');
INSERT INTO `g1` VALUES ('116', '5', '0', '7', '1');
INSERT INTO `g1` VALUES ('117', '5', '0', '7', '2');
INSERT INTO `g1` VALUES ('118', '5', '0', '8', '0');
INSERT INTO `g1` VALUES ('119', '5', '0', '8', '1');
INSERT INTO `g1` VALUES ('120', '5', '0', '8', '2');
INSERT INTO `g1` VALUES ('121', '6', '0', '1', '0');
INSERT INTO `g1` VALUES ('122', '6', '0', '1', '1');
INSERT INTO `g1` VALUES ('123', '6', '0', '1', '2');
INSERT INTO `g1` VALUES ('124', '6', '0', '2', '0');
INSERT INTO `g1` VALUES ('125', '6', '0', '2', '1');
INSERT INTO `g1` VALUES ('126', '6', '0', '2', '2');
INSERT INTO `g1` VALUES ('127', '6', '0', '3', '0');
INSERT INTO `g1` VALUES ('128', '6', '0', '3', '1');
INSERT INTO `g1` VALUES ('129', '6', '0', '3', '2');
INSERT INTO `g1` VALUES ('130', '6', '0', '4', '0');
INSERT INTO `g1` VALUES ('131', '6', '0', '4', '1');
INSERT INTO `g1` VALUES ('132', '6', '0', '4', '2');
INSERT INTO `g1` VALUES ('133', '6', '0', '5', '0');
INSERT INTO `g1` VALUES ('134', '6', '0', '5', '1');
INSERT INTO `g1` VALUES ('135', '6', '0', '5', '2');
INSERT INTO `g1` VALUES ('136', '6', '0', '6', '0');
INSERT INTO `g1` VALUES ('137', '6', '0', '6', '1');
INSERT INTO `g1` VALUES ('138', '6', '0', '6', '2');
INSERT INTO `g1` VALUES ('139', '6', '0', '7', '0');
INSERT INTO `g1` VALUES ('140', '6', '0', '7', '1');
INSERT INTO `g1` VALUES ('141', '6', '0', '7', '2');
INSERT INTO `g1` VALUES ('142', '6', '0', '8', '0');
INSERT INTO `g1` VALUES ('143', '6', '0', '8', '1');
INSERT INTO `g1` VALUES ('144', '6', '0', '8', '2');
INSERT INTO `g1` VALUES ('145', '7', '0', '1', '0');
INSERT INTO `g1` VALUES ('146', '7', '0', '1', '1');
INSERT INTO `g1` VALUES ('147', '7', '0', '1', '2');
INSERT INTO `g1` VALUES ('148', '7', '0', '2', '0');
INSERT INTO `g1` VALUES ('149', '7', '0', '2', '1');
INSERT INTO `g1` VALUES ('150', '7', '0', '2', '2');
INSERT INTO `g1` VALUES ('151', '7', '0', '3', '0');
INSERT INTO `g1` VALUES ('152', '7', '0', '3', '1');
INSERT INTO `g1` VALUES ('153', '7', '0', '3', '2');
INSERT INTO `g1` VALUES ('154', '7', '0', '4', '0');
INSERT INTO `g1` VALUES ('155', '7', '0', '4', '1');
INSERT INTO `g1` VALUES ('156', '7', '0', '4', '2');
INSERT INTO `g1` VALUES ('157', '7', '0', '5', '0');
INSERT INTO `g1` VALUES ('158', '7', '0', '5', '1');
INSERT INTO `g1` VALUES ('159', '7', '0', '5', '2');
INSERT INTO `g1` VALUES ('160', '7', '0', '6', '0');
INSERT INTO `g1` VALUES ('161', '7', '0', '6', '1');
INSERT INTO `g1` VALUES ('162', '7', '0', '6', '2');
INSERT INTO `g1` VALUES ('163', '7', '0', '7', '0');
INSERT INTO `g1` VALUES ('164', '7', '0', '7', '1');
INSERT INTO `g1` VALUES ('165', '7', '0', '7', '2');
INSERT INTO `g1` VALUES ('166', '7', '0', '8', '0');
INSERT INTO `g1` VALUES ('167', '7', '0', '8', '1');
INSERT INTO `g1` VALUES ('168', '7', '0', '8', '2');
INSERT INTO `g1` VALUES ('169', '8', '0', '1', '0');
INSERT INTO `g1` VALUES ('170', '8', '0', '1', '1');
INSERT INTO `g1` VALUES ('171', '8', '0', '1', '2');
INSERT INTO `g1` VALUES ('172', '8', '0', '2', '0');
INSERT INTO `g1` VALUES ('173', '8', '0', '2', '1');
INSERT INTO `g1` VALUES ('174', '8', '0', '2', '2');
INSERT INTO `g1` VALUES ('175', '8', '0', '3', '0');
INSERT INTO `g1` VALUES ('176', '8', '0', '3', '1');
INSERT INTO `g1` VALUES ('177', '8', '0', '3', '2');
INSERT INTO `g1` VALUES ('178', '8', '0', '4', '0');
INSERT INTO `g1` VALUES ('179', '8', '0', '4', '1');
INSERT INTO `g1` VALUES ('180', '8', '0', '4', '2');
INSERT INTO `g1` VALUES ('181', '8', '0', '5', '0');
INSERT INTO `g1` VALUES ('182', '8', '0', '5', '1');
INSERT INTO `g1` VALUES ('183', '8', '0', '5', '2');
INSERT INTO `g1` VALUES ('184', '8', '0', '6', '0');
INSERT INTO `g1` VALUES ('185', '8', '0', '6', '1');
INSERT INTO `g1` VALUES ('186', '8', '0', '6', '2');
INSERT INTO `g1` VALUES ('187', '8', '0', '7', '0');
INSERT INTO `g1` VALUES ('188', '8', '0', '7', '1');
INSERT INTO `g1` VALUES ('189', '8', '0', '7', '2');
INSERT INTO `g1` VALUES ('190', '8', '0', '8', '0');
INSERT INTO `g1` VALUES ('191', '8', '0', '8', '1');
INSERT INTO `g1` VALUES ('192', '8', '0', '8', '2');
INSERT INTO `g1` VALUES ('193', '9', '0', '1', '0');
INSERT INTO `g1` VALUES ('194', '9', '0', '1', '1');
INSERT INTO `g1` VALUES ('195', '9', '0', '1', '2');
INSERT INTO `g1` VALUES ('196', '9', '0', '2', '0');
INSERT INTO `g1` VALUES ('197', '9', '0', '2', '1');
INSERT INTO `g1` VALUES ('198', '9', '0', '2', '2');
INSERT INTO `g1` VALUES ('199', '9', '0', '3', '0');
INSERT INTO `g1` VALUES ('200', '9', '0', '3', '1');
INSERT INTO `g1` VALUES ('201', '9', '0', '3', '2');
INSERT INTO `g1` VALUES ('202', '9', '0', '4', '0');
INSERT INTO `g1` VALUES ('203', '9', '0', '4', '1');
INSERT INTO `g1` VALUES ('204', '9', '0', '4', '2');
INSERT INTO `g1` VALUES ('205', '9', '0', '5', '0');
INSERT INTO `g1` VALUES ('206', '9', '0', '5', '1');
INSERT INTO `g1` VALUES ('207', '9', '0', '5', '2');
INSERT INTO `g1` VALUES ('208', '9', '0', '6', '0');
INSERT INTO `g1` VALUES ('209', '9', '0', '6', '1');
INSERT INTO `g1` VALUES ('210', '9', '0', '6', '2');
INSERT INTO `g1` VALUES ('211', '9', '0', '7', '0');
INSERT INTO `g1` VALUES ('212', '9', '0', '7', '1');
INSERT INTO `g1` VALUES ('213', '9', '0', '7', '2');
INSERT INTO `g1` VALUES ('214', '9', '0', '8', '0');
INSERT INTO `g1` VALUES ('215', '9', '0', '8', '1');
INSERT INTO `g1` VALUES ('216', '9', '0', '8', '2');
INSERT INTO `g1` VALUES ('217', '10', '0', '1', '0');
INSERT INTO `g1` VALUES ('218', '10', '0', '1', '1');
INSERT INTO `g1` VALUES ('219', '10', '0', '1', '2');
INSERT INTO `g1` VALUES ('220', '10', '0', '2', '0');
INSERT INTO `g1` VALUES ('221', '10', '0', '2', '1');
INSERT INTO `g1` VALUES ('222', '10', '0', '2', '2');
INSERT INTO `g1` VALUES ('223', '10', '0', '3', '0');
INSERT INTO `g1` VALUES ('224', '10', '0', '3', '1');
INSERT INTO `g1` VALUES ('225', '10', '0', '3', '2');
INSERT INTO `g1` VALUES ('226', '10', '0', '4', '0');
INSERT INTO `g1` VALUES ('227', '10', '0', '4', '1');
INSERT INTO `g1` VALUES ('228', '10', '0', '4', '2');
INSERT INTO `g1` VALUES ('229', '10', '0', '5', '0');
INSERT INTO `g1` VALUES ('230', '10', '0', '5', '1');
INSERT INTO `g1` VALUES ('231', '10', '0', '5', '2');
INSERT INTO `g1` VALUES ('232', '10', '0', '6', '0');
INSERT INTO `g1` VALUES ('233', '10', '0', '6', '1');
INSERT INTO `g1` VALUES ('234', '10', '0', '6', '2');
INSERT INTO `g1` VALUES ('235', '10', '0', '7', '0');
INSERT INTO `g1` VALUES ('236', '10', '0', '7', '1');
INSERT INTO `g1` VALUES ('237', '10', '0', '7', '2');
INSERT INTO `g1` VALUES ('238', '10', '0', '8', '0');
INSERT INTO `g1` VALUES ('239', '10', '0', '8', '1');
INSERT INTO `g1` VALUES ('240', '10', '0', '8', '2');
INSERT INTO `g1` VALUES ('241', '11', '0', '1', '0');
INSERT INTO `g1` VALUES ('242', '11', '0', '1', '1');
INSERT INTO `g1` VALUES ('243', '11', '0', '1', '2');
INSERT INTO `g1` VALUES ('244', '11', '0', '2', '0');
INSERT INTO `g1` VALUES ('245', '11', '0', '2', '1');
INSERT INTO `g1` VALUES ('246', '11', '0', '2', '2');
INSERT INTO `g1` VALUES ('247', '11', '0', '3', '0');
INSERT INTO `g1` VALUES ('248', '11', '0', '3', '1');
INSERT INTO `g1` VALUES ('249', '11', '0', '3', '2');
INSERT INTO `g1` VALUES ('250', '11', '0', '4', '0');
INSERT INTO `g1` VALUES ('251', '11', '0', '4', '1');
INSERT INTO `g1` VALUES ('252', '11', '0', '4', '2');
INSERT INTO `g1` VALUES ('253', '11', '0', '5', '0');
INSERT INTO `g1` VALUES ('254', '11', '0', '5', '1');
INSERT INTO `g1` VALUES ('255', '11', '0', '5', '2');
INSERT INTO `g1` VALUES ('256', '11', '0', '6', '0');
INSERT INTO `g1` VALUES ('257', '11', '0', '6', '1');
INSERT INTO `g1` VALUES ('258', '11', '0', '6', '2');
INSERT INTO `g1` VALUES ('259', '11', '0', '7', '0');
INSERT INTO `g1` VALUES ('260', '11', '0', '7', '1');
INSERT INTO `g1` VALUES ('261', '11', '0', '7', '2');
INSERT INTO `g1` VALUES ('262', '11', '0', '8', '0');
INSERT INTO `g1` VALUES ('263', '11', '0', '8', '1');
INSERT INTO `g1` VALUES ('264', '11', '0', '8', '2');
INSERT INTO `g1` VALUES ('265', '12', '0', '1', '0');
INSERT INTO `g1` VALUES ('266', '12', '0', '1', '1');
INSERT INTO `g1` VALUES ('267', '12', '0', '1', '2');
INSERT INTO `g1` VALUES ('268', '12', '0', '2', '0');
INSERT INTO `g1` VALUES ('269', '12', '0', '2', '1');
INSERT INTO `g1` VALUES ('270', '12', '0', '2', '2');
INSERT INTO `g1` VALUES ('271', '12', '0', '3', '0');
INSERT INTO `g1` VALUES ('272', '12', '0', '3', '1');
INSERT INTO `g1` VALUES ('273', '12', '0', '3', '2');
INSERT INTO `g1` VALUES ('274', '12', '0', '4', '0');
INSERT INTO `g1` VALUES ('275', '12', '0', '4', '1');
INSERT INTO `g1` VALUES ('276', '12', '0', '4', '2');
INSERT INTO `g1` VALUES ('277', '12', '0', '5', '0');
INSERT INTO `g1` VALUES ('278', '12', '0', '5', '1');
INSERT INTO `g1` VALUES ('279', '12', '0', '5', '2');
INSERT INTO `g1` VALUES ('280', '12', '0', '6', '0');
INSERT INTO `g1` VALUES ('281', '12', '0', '6', '1');
INSERT INTO `g1` VALUES ('282', '12', '0', '6', '2');
INSERT INTO `g1` VALUES ('283', '12', '0', '7', '0');
INSERT INTO `g1` VALUES ('284', '12', '0', '7', '1');
INSERT INTO `g1` VALUES ('285', '12', '0', '7', '2');
INSERT INTO `g1` VALUES ('286', '12', '0', '8', '0');
INSERT INTO `g1` VALUES ('287', '12', '0', '8', '1');
INSERT INTO `g1` VALUES ('288', '12', '0', '8', '2');
INSERT INTO `g1` VALUES ('289', '13', '1', '1', '0');
INSERT INTO `g1` VALUES ('290', '13', '0', '1', '1');
INSERT INTO `g1` VALUES ('291', '13', '0', '1', '2');
INSERT INTO `g1` VALUES ('292', '13', '1', '2', '0');
INSERT INTO `g1` VALUES ('293', '13', '0', '2', '1');
INSERT INTO `g1` VALUES ('294', '13', '0', '2', '2');
INSERT INTO `g1` VALUES ('295', '13', '1', '3', '0');
INSERT INTO `g1` VALUES ('296', '13', '0', '3', '1');
INSERT INTO `g1` VALUES ('297', '13', '0', '3', '2');
INSERT INTO `g1` VALUES ('298', '13', '1', '4', '0');
INSERT INTO `g1` VALUES ('299', '13', '0', '4', '1');
INSERT INTO `g1` VALUES ('300', '13', '0', '4', '2');
INSERT INTO `g1` VALUES ('301', '13', '1', '5', '0');
INSERT INTO `g1` VALUES ('302', '13', '0', '5', '1');
INSERT INTO `g1` VALUES ('303', '13', '0', '5', '2');
INSERT INTO `g1` VALUES ('304', '13', '1', '6', '0');
INSERT INTO `g1` VALUES ('305', '13', '0', '6', '1');
INSERT INTO `g1` VALUES ('306', '13', '0', '6', '2');
INSERT INTO `g1` VALUES ('307', '13', '1', '7', '0');
INSERT INTO `g1` VALUES ('308', '13', '0', '7', '1');
INSERT INTO `g1` VALUES ('309', '13', '0', '7', '2');
INSERT INTO `g1` VALUES ('310', '13', '1', '8', '0');
INSERT INTO `g1` VALUES ('311', '13', '0', '8', '1');
INSERT INTO `g1` VALUES ('312', '13', '0', '8', '2');
INSERT INTO `g1` VALUES ('313', '14', '0', '1', '0');
INSERT INTO `g1` VALUES ('314', '14', '0', '1', '1');
INSERT INTO `g1` VALUES ('315', '14', '0', '1', '2');
INSERT INTO `g1` VALUES ('316', '14', '0', '2', '0');
INSERT INTO `g1` VALUES ('317', '14', '0', '2', '1');
INSERT INTO `g1` VALUES ('318', '14', '0', '2', '2');
INSERT INTO `g1` VALUES ('319', '14', '0', '3', '0');
INSERT INTO `g1` VALUES ('320', '14', '0', '3', '1');
INSERT INTO `g1` VALUES ('321', '14', '0', '3', '2');
INSERT INTO `g1` VALUES ('322', '14', '0', '4', '0');
INSERT INTO `g1` VALUES ('323', '14', '0', '4', '1');
INSERT INTO `g1` VALUES ('324', '14', '0', '4', '2');
INSERT INTO `g1` VALUES ('325', '14', '0', '5', '0');
INSERT INTO `g1` VALUES ('326', '14', '0', '5', '1');
INSERT INTO `g1` VALUES ('327', '14', '0', '5', '2');
INSERT INTO `g1` VALUES ('328', '14', '0', '6', '0');
INSERT INTO `g1` VALUES ('329', '14', '0', '6', '1');
INSERT INTO `g1` VALUES ('330', '14', '0', '6', '2');
INSERT INTO `g1` VALUES ('331', '14', '0', '7', '0');
INSERT INTO `g1` VALUES ('332', '14', '0', '7', '1');
INSERT INTO `g1` VALUES ('333', '14', '0', '7', '2');
INSERT INTO `g1` VALUES ('334', '14', '0', '8', '0');
INSERT INTO `g1` VALUES ('335', '14', '0', '8', '1');
INSERT INTO `g1` VALUES ('336', '14', '0', '8', '2');
INSERT INTO `g1` VALUES ('337', '15', '0', '1', '0');
INSERT INTO `g1` VALUES ('338', '15', '0', '1', '1');
INSERT INTO `g1` VALUES ('339', '15', '0', '1', '2');
INSERT INTO `g1` VALUES ('340', '15', '0', '2', '0');
INSERT INTO `g1` VALUES ('341', '15', '0', '2', '1');
INSERT INTO `g1` VALUES ('342', '15', '0', '2', '2');
INSERT INTO `g1` VALUES ('343', '15', '0', '3', '0');
INSERT INTO `g1` VALUES ('344', '15', '0', '3', '1');
INSERT INTO `g1` VALUES ('345', '15', '0', '3', '2');
INSERT INTO `g1` VALUES ('346', '15', '0', '4', '0');
INSERT INTO `g1` VALUES ('347', '15', '0', '4', '1');
INSERT INTO `g1` VALUES ('348', '15', '0', '4', '2');
INSERT INTO `g1` VALUES ('349', '15', '0', '5', '0');
INSERT INTO `g1` VALUES ('350', '15', '0', '5', '1');
INSERT INTO `g1` VALUES ('351', '15', '0', '5', '2');
INSERT INTO `g1` VALUES ('352', '15', '0', '6', '0');
INSERT INTO `g1` VALUES ('353', '15', '0', '6', '1');
INSERT INTO `g1` VALUES ('354', '15', '0', '6', '2');
INSERT INTO `g1` VALUES ('355', '15', '0', '7', '0');
INSERT INTO `g1` VALUES ('356', '15', '0', '7', '1');
INSERT INTO `g1` VALUES ('357', '15', '0', '7', '2');
INSERT INTO `g1` VALUES ('358', '15', '0', '8', '0');
INSERT INTO `g1` VALUES ('359', '15', '0', '8', '1');
INSERT INTO `g1` VALUES ('360', '15', '0', '8', '2');
INSERT INTO `g1` VALUES ('361', '16', '0', '1', '0');
INSERT INTO `g1` VALUES ('362', '16', '0', '1', '1');
INSERT INTO `g1` VALUES ('363', '16', '0', '1', '2');
INSERT INTO `g1` VALUES ('364', '16', '0', '2', '0');
INSERT INTO `g1` VALUES ('365', '16', '0', '2', '1');
INSERT INTO `g1` VALUES ('366', '16', '0', '2', '2');
INSERT INTO `g1` VALUES ('367', '16', '0', '3', '0');
INSERT INTO `g1` VALUES ('368', '16', '0', '3', '1');
INSERT INTO `g1` VALUES ('369', '16', '0', '3', '2');
INSERT INTO `g1` VALUES ('370', '16', '0', '4', '0');
INSERT INTO `g1` VALUES ('371', '16', '0', '4', '1');
INSERT INTO `g1` VALUES ('372', '16', '0', '4', '2');
INSERT INTO `g1` VALUES ('373', '16', '0', '5', '0');
INSERT INTO `g1` VALUES ('374', '16', '0', '5', '1');
INSERT INTO `g1` VALUES ('375', '16', '0', '5', '2');
INSERT INTO `g1` VALUES ('376', '16', '0', '6', '0');
INSERT INTO `g1` VALUES ('377', '16', '0', '6', '1');
INSERT INTO `g1` VALUES ('378', '16', '0', '6', '2');
INSERT INTO `g1` VALUES ('379', '16', '0', '7', '0');
INSERT INTO `g1` VALUES ('380', '16', '0', '7', '1');
INSERT INTO `g1` VALUES ('381', '16', '0', '7', '2');
INSERT INTO `g1` VALUES ('382', '16', '0', '8', '0');
INSERT INTO `g1` VALUES ('383', '16', '0', '8', '1');
INSERT INTO `g1` VALUES ('384', '16', '0', '8', '2');
INSERT INTO `g1` VALUES ('385', '17', '1', '1', '0');
INSERT INTO `g1` VALUES ('386', '17', '0', '1', '1');
INSERT INTO `g1` VALUES ('387', '17', '0', '1', '2');
INSERT INTO `g1` VALUES ('388', '17', '1', '2', '0');
INSERT INTO `g1` VALUES ('389', '17', '0', '2', '1');
INSERT INTO `g1` VALUES ('390', '17', '0', '2', '2');
INSERT INTO `g1` VALUES ('391', '17', '1', '3', '0');
INSERT INTO `g1` VALUES ('392', '17', '0', '3', '1');
INSERT INTO `g1` VALUES ('393', '17', '0', '3', '2');
INSERT INTO `g1` VALUES ('394', '17', '1', '4', '0');
INSERT INTO `g1` VALUES ('395', '17', '0', '4', '1');
INSERT INTO `g1` VALUES ('396', '17', '0', '4', '2');
INSERT INTO `g1` VALUES ('397', '17', '1', '5', '0');
INSERT INTO `g1` VALUES ('398', '17', '0', '5', '1');
INSERT INTO `g1` VALUES ('399', '17', '0', '5', '2');
INSERT INTO `g1` VALUES ('400', '17', '1', '6', '0');
INSERT INTO `g1` VALUES ('401', '17', '0', '6', '1');
INSERT INTO `g1` VALUES ('402', '17', '0', '6', '2');
INSERT INTO `g1` VALUES ('403', '17', '1', '7', '0');
INSERT INTO `g1` VALUES ('404', '17', '0', '7', '1');
INSERT INTO `g1` VALUES ('405', '17', '0', '7', '2');
INSERT INTO `g1` VALUES ('406', '17', '1', '8', '0');
INSERT INTO `g1` VALUES ('407', '17', '0', '8', '1');
INSERT INTO `g1` VALUES ('408', '17', '0', '8', '2');
INSERT INTO `g1` VALUES ('409', '18', '0', '1', '0');
INSERT INTO `g1` VALUES ('410', '18', '0', '1', '1');
INSERT INTO `g1` VALUES ('411', '18', '0', '1', '2');
INSERT INTO `g1` VALUES ('412', '18', '0', '2', '0');
INSERT INTO `g1` VALUES ('413', '18', '0', '2', '1');
INSERT INTO `g1` VALUES ('414', '18', '0', '2', '2');
INSERT INTO `g1` VALUES ('415', '18', '0', '3', '0');
INSERT INTO `g1` VALUES ('416', '18', '0', '3', '1');
INSERT INTO `g1` VALUES ('417', '18', '0', '3', '2');
INSERT INTO `g1` VALUES ('418', '18', '0', '4', '0');
INSERT INTO `g1` VALUES ('419', '18', '0', '4', '1');
INSERT INTO `g1` VALUES ('420', '18', '0', '4', '2');
INSERT INTO `g1` VALUES ('421', '18', '0', '5', '0');
INSERT INTO `g1` VALUES ('422', '18', '0', '5', '1');
INSERT INTO `g1` VALUES ('423', '18', '0', '5', '2');
INSERT INTO `g1` VALUES ('424', '18', '0', '6', '0');
INSERT INTO `g1` VALUES ('425', '18', '0', '6', '1');
INSERT INTO `g1` VALUES ('426', '18', '0', '6', '2');
INSERT INTO `g1` VALUES ('427', '18', '0', '7', '0');
INSERT INTO `g1` VALUES ('428', '18', '0', '7', '1');
INSERT INTO `g1` VALUES ('429', '18', '0', '7', '2');
INSERT INTO `g1` VALUES ('430', '18', '0', '8', '0');
INSERT INTO `g1` VALUES ('431', '18', '0', '8', '1');
INSERT INTO `g1` VALUES ('432', '18', '0', '8', '2');
INSERT INTO `g1` VALUES ('433', '19', '0', '1', '0');
INSERT INTO `g1` VALUES ('434', '19', '0', '1', '1');
INSERT INTO `g1` VALUES ('435', '19', '0', '1', '2');
INSERT INTO `g1` VALUES ('436', '19', '0', '2', '0');
INSERT INTO `g1` VALUES ('437', '19', '0', '2', '1');
INSERT INTO `g1` VALUES ('438', '19', '0', '2', '2');
INSERT INTO `g1` VALUES ('439', '19', '0', '3', '0');
INSERT INTO `g1` VALUES ('440', '19', '0', '3', '1');
INSERT INTO `g1` VALUES ('441', '19', '0', '3', '2');
INSERT INTO `g1` VALUES ('442', '19', '0', '4', '0');
INSERT INTO `g1` VALUES ('443', '19', '0', '4', '1');
INSERT INTO `g1` VALUES ('444', '19', '0', '4', '2');
INSERT INTO `g1` VALUES ('445', '19', '0', '5', '0');
INSERT INTO `g1` VALUES ('446', '19', '0', '5', '1');
INSERT INTO `g1` VALUES ('447', '19', '0', '5', '2');
INSERT INTO `g1` VALUES ('448', '19', '0', '6', '0');
INSERT INTO `g1` VALUES ('449', '19', '0', '6', '1');
INSERT INTO `g1` VALUES ('450', '19', '0', '6', '2');
INSERT INTO `g1` VALUES ('451', '19', '0', '7', '0');
INSERT INTO `g1` VALUES ('452', '19', '0', '7', '1');
INSERT INTO `g1` VALUES ('453', '19', '0', '7', '2');
INSERT INTO `g1` VALUES ('454', '19', '0', '8', '0');
INSERT INTO `g1` VALUES ('455', '19', '0', '8', '1');
INSERT INTO `g1` VALUES ('456', '19', '0', '8', '2');
INSERT INTO `g1` VALUES ('457', '20', '0', '1', '0');
INSERT INTO `g1` VALUES ('458', '20', '0', '1', '1');
INSERT INTO `g1` VALUES ('459', '20', '0', '1', '2');
INSERT INTO `g1` VALUES ('460', '20', '0', '2', '0');
INSERT INTO `g1` VALUES ('461', '20', '0', '2', '1');
INSERT INTO `g1` VALUES ('462', '20', '0', '2', '2');
INSERT INTO `g1` VALUES ('463', '20', '0', '3', '0');
INSERT INTO `g1` VALUES ('464', '20', '0', '3', '1');
INSERT INTO `g1` VALUES ('465', '20', '0', '3', '2');
INSERT INTO `g1` VALUES ('466', '20', '0', '4', '0');
INSERT INTO `g1` VALUES ('467', '20', '0', '4', '1');
INSERT INTO `g1` VALUES ('468', '20', '0', '4', '2');
INSERT INTO `g1` VALUES ('469', '20', '0', '5', '0');
INSERT INTO `g1` VALUES ('470', '20', '0', '5', '1');
INSERT INTO `g1` VALUES ('471', '20', '0', '5', '2');
INSERT INTO `g1` VALUES ('472', '20', '0', '6', '0');
INSERT INTO `g1` VALUES ('473', '20', '0', '6', '1');
INSERT INTO `g1` VALUES ('474', '20', '0', '6', '2');
INSERT INTO `g1` VALUES ('475', '20', '0', '7', '0');
INSERT INTO `g1` VALUES ('476', '20', '0', '7', '1');
INSERT INTO `g1` VALUES ('477', '20', '0', '7', '2');
INSERT INTO `g1` VALUES ('478', '20', '0', '8', '0');
INSERT INTO `g1` VALUES ('479', '20', '0', '8', '1');
INSERT INTO `g1` VALUES ('480', '20', '0', '8', '2');
INSERT INTO `g1` VALUES ('481', '21', '0', '1', '0');
INSERT INTO `g1` VALUES ('482', '21', '0', '1', '1');
INSERT INTO `g1` VALUES ('483', '21', '0', '1', '2');
INSERT INTO `g1` VALUES ('484', '21', '0', '2', '0');
INSERT INTO `g1` VALUES ('485', '21', '0', '2', '1');
INSERT INTO `g1` VALUES ('486', '21', '0', '2', '2');
INSERT INTO `g1` VALUES ('487', '21', '0', '3', '0');
INSERT INTO `g1` VALUES ('488', '21', '0', '3', '1');
INSERT INTO `g1` VALUES ('489', '21', '0', '3', '2');
INSERT INTO `g1` VALUES ('490', '21', '0', '4', '0');
INSERT INTO `g1` VALUES ('491', '21', '0', '4', '1');
INSERT INTO `g1` VALUES ('492', '21', '0', '4', '2');
INSERT INTO `g1` VALUES ('493', '21', '0', '5', '0');
INSERT INTO `g1` VALUES ('494', '21', '0', '5', '1');
INSERT INTO `g1` VALUES ('495', '21', '0', '5', '2');
INSERT INTO `g1` VALUES ('496', '21', '0', '6', '0');
INSERT INTO `g1` VALUES ('497', '21', '0', '6', '1');
INSERT INTO `g1` VALUES ('498', '21', '0', '6', '2');
INSERT INTO `g1` VALUES ('499', '21', '0', '7', '0');
INSERT INTO `g1` VALUES ('500', '21', '0', '7', '1');
INSERT INTO `g1` VALUES ('501', '21', '0', '7', '2');
INSERT INTO `g1` VALUES ('502', '21', '0', '8', '0');
INSERT INTO `g1` VALUES ('503', '21', '0', '8', '1');
INSERT INTO `g1` VALUES ('504', '21', '0', '8', '2');
INSERT INTO `g1` VALUES ('505', '22', '0', '1', '0');
INSERT INTO `g1` VALUES ('506', '22', '0', '1', '1');
INSERT INTO `g1` VALUES ('507', '22', '0', '1', '2');
INSERT INTO `g1` VALUES ('508', '22', '0', '2', '0');
INSERT INTO `g1` VALUES ('509', '22', '0', '2', '1');
INSERT INTO `g1` VALUES ('510', '22', '0', '2', '2');
INSERT INTO `g1` VALUES ('511', '22', '0', '3', '0');
INSERT INTO `g1` VALUES ('512', '22', '0', '3', '1');
INSERT INTO `g1` VALUES ('513', '22', '0', '3', '2');
INSERT INTO `g1` VALUES ('514', '22', '0', '4', '0');
INSERT INTO `g1` VALUES ('515', '22', '0', '4', '1');
INSERT INTO `g1` VALUES ('516', '22', '0', '4', '2');
INSERT INTO `g1` VALUES ('517', '22', '0', '5', '0');
INSERT INTO `g1` VALUES ('518', '22', '0', '5', '1');
INSERT INTO `g1` VALUES ('519', '22', '0', '5', '2');
INSERT INTO `g1` VALUES ('520', '22', '0', '6', '0');
INSERT INTO `g1` VALUES ('521', '22', '0', '6', '1');
INSERT INTO `g1` VALUES ('522', '22', '0', '6', '2');
INSERT INTO `g1` VALUES ('523', '22', '0', '7', '0');
INSERT INTO `g1` VALUES ('524', '22', '0', '7', '1');
INSERT INTO `g1` VALUES ('525', '22', '0', '7', '2');
INSERT INTO `g1` VALUES ('526', '22', '0', '8', '0');
INSERT INTO `g1` VALUES ('527', '22', '0', '8', '1');
INSERT INTO `g1` VALUES ('528', '22', '0', '8', '2');
INSERT INTO `g1` VALUES ('529', '23', '0', '1', '0');
INSERT INTO `g1` VALUES ('530', '23', '0', '1', '1');
INSERT INTO `g1` VALUES ('531', '23', '0', '1', '2');
INSERT INTO `g1` VALUES ('532', '23', '0', '2', '0');
INSERT INTO `g1` VALUES ('533', '23', '0', '2', '1');
INSERT INTO `g1` VALUES ('534', '23', '0', '2', '2');
INSERT INTO `g1` VALUES ('535', '23', '0', '3', '0');
INSERT INTO `g1` VALUES ('536', '23', '0', '3', '1');
INSERT INTO `g1` VALUES ('537', '23', '0', '3', '2');
INSERT INTO `g1` VALUES ('538', '23', '0', '4', '0');
INSERT INTO `g1` VALUES ('539', '23', '0', '4', '1');
INSERT INTO `g1` VALUES ('540', '23', '0', '4', '2');
INSERT INTO `g1` VALUES ('541', '23', '0', '5', '0');
INSERT INTO `g1` VALUES ('542', '23', '0', '5', '1');
INSERT INTO `g1` VALUES ('543', '23', '0', '5', '2');
INSERT INTO `g1` VALUES ('544', '23', '0', '6', '0');
INSERT INTO `g1` VALUES ('545', '23', '0', '6', '1');
INSERT INTO `g1` VALUES ('546', '23', '0', '6', '2');
INSERT INTO `g1` VALUES ('547', '23', '0', '7', '0');
INSERT INTO `g1` VALUES ('548', '23', '0', '7', '1');
INSERT INTO `g1` VALUES ('549', '23', '0', '7', '2');
INSERT INTO `g1` VALUES ('550', '23', '0', '8', '0');
INSERT INTO `g1` VALUES ('551', '23', '0', '8', '1');
INSERT INTO `g1` VALUES ('552', '23', '0', '8', '2');
INSERT INTO `g1` VALUES ('553', '24', '0', '1', '0');
INSERT INTO `g1` VALUES ('554', '24', '0', '1', '1');
INSERT INTO `g1` VALUES ('555', '24', '0', '1', '2');
INSERT INTO `g1` VALUES ('556', '24', '0', '2', '0');
INSERT INTO `g1` VALUES ('557', '24', '0', '2', '1');
INSERT INTO `g1` VALUES ('558', '24', '0', '2', '2');
INSERT INTO `g1` VALUES ('559', '24', '0', '3', '0');
INSERT INTO `g1` VALUES ('560', '24', '0', '3', '1');
INSERT INTO `g1` VALUES ('561', '24', '0', '3', '2');
INSERT INTO `g1` VALUES ('562', '24', '0', '4', '0');
INSERT INTO `g1` VALUES ('563', '24', '0', '4', '1');
INSERT INTO `g1` VALUES ('564', '24', '0', '4', '2');
INSERT INTO `g1` VALUES ('565', '24', '0', '5', '0');
INSERT INTO `g1` VALUES ('566', '24', '0', '5', '1');
INSERT INTO `g1` VALUES ('567', '24', '0', '5', '2');
INSERT INTO `g1` VALUES ('568', '24', '0', '6', '0');
INSERT INTO `g1` VALUES ('569', '24', '0', '6', '1');
INSERT INTO `g1` VALUES ('570', '24', '0', '6', '2');
INSERT INTO `g1` VALUES ('571', '24', '0', '7', '0');
INSERT INTO `g1` VALUES ('572', '24', '0', '7', '1');
INSERT INTO `g1` VALUES ('573', '24', '0', '7', '2');
INSERT INTO `g1` VALUES ('574', '24', '0', '8', '0');
INSERT INTO `g1` VALUES ('575', '24', '0', '8', '1');
INSERT INTO `g1` VALUES ('576', '24', '0', '8', '2');
INSERT INTO `g1` VALUES ('577', '25', '0', '1', '0');
INSERT INTO `g1` VALUES ('578', '25', '0', '1', '1');
INSERT INTO `g1` VALUES ('579', '25', '0', '1', '2');
INSERT INTO `g1` VALUES ('580', '25', '0', '2', '0');
INSERT INTO `g1` VALUES ('581', '25', '0', '2', '1');
INSERT INTO `g1` VALUES ('582', '25', '0', '2', '2');
INSERT INTO `g1` VALUES ('583', '25', '0', '3', '0');
INSERT INTO `g1` VALUES ('584', '25', '0', '3', '1');
INSERT INTO `g1` VALUES ('585', '25', '0', '3', '2');
INSERT INTO `g1` VALUES ('586', '25', '0', '4', '0');
INSERT INTO `g1` VALUES ('587', '25', '0', '4', '1');
INSERT INTO `g1` VALUES ('588', '25', '0', '4', '2');
INSERT INTO `g1` VALUES ('589', '25', '0', '5', '0');
INSERT INTO `g1` VALUES ('590', '25', '0', '5', '1');
INSERT INTO `g1` VALUES ('591', '25', '0', '5', '2');
INSERT INTO `g1` VALUES ('592', '25', '0', '6', '0');
INSERT INTO `g1` VALUES ('593', '25', '0', '6', '1');
INSERT INTO `g1` VALUES ('594', '25', '0', '6', '2');
INSERT INTO `g1` VALUES ('595', '25', '0', '7', '0');
INSERT INTO `g1` VALUES ('596', '25', '0', '7', '1');
INSERT INTO `g1` VALUES ('597', '25', '0', '7', '2');
INSERT INTO `g1` VALUES ('598', '25', '0', '8', '0');
INSERT INTO `g1` VALUES ('599', '25', '0', '8', '1');
INSERT INTO `g1` VALUES ('600', '25', '0', '8', '2');
INSERT INTO `g1` VALUES ('601', '26', '0', '1', '0');
INSERT INTO `g1` VALUES ('602', '26', '0', '1', '1');
INSERT INTO `g1` VALUES ('603', '26', '0', '1', '2');
INSERT INTO `g1` VALUES ('604', '26', '0', '2', '0');
INSERT INTO `g1` VALUES ('605', '26', '0', '2', '1');
INSERT INTO `g1` VALUES ('606', '26', '0', '2', '2');
INSERT INTO `g1` VALUES ('607', '26', '0', '3', '0');
INSERT INTO `g1` VALUES ('608', '26', '0', '3', '1');
INSERT INTO `g1` VALUES ('609', '26', '0', '3', '2');
INSERT INTO `g1` VALUES ('610', '26', '0', '4', '0');
INSERT INTO `g1` VALUES ('611', '26', '0', '4', '1');
INSERT INTO `g1` VALUES ('612', '26', '0', '4', '2');
INSERT INTO `g1` VALUES ('613', '26', '0', '5', '0');
INSERT INTO `g1` VALUES ('614', '26', '0', '5', '1');
INSERT INTO `g1` VALUES ('615', '26', '0', '5', '2');
INSERT INTO `g1` VALUES ('616', '26', '0', '6', '0');
INSERT INTO `g1` VALUES ('617', '26', '0', '6', '1');
INSERT INTO `g1` VALUES ('618', '26', '0', '6', '2');
INSERT INTO `g1` VALUES ('619', '26', '0', '7', '0');
INSERT INTO `g1` VALUES ('620', '26', '0', '7', '1');
INSERT INTO `g1` VALUES ('621', '26', '0', '7', '2');
INSERT INTO `g1` VALUES ('622', '26', '0', '8', '0');
INSERT INTO `g1` VALUES ('623', '26', '0', '8', '1');
INSERT INTO `g1` VALUES ('624', '26', '0', '8', '2');
INSERT INTO `g1` VALUES ('625', '27', '0', '1', '0');
INSERT INTO `g1` VALUES ('626', '27', '0', '1', '1');
INSERT INTO `g1` VALUES ('627', '27', '0', '1', '2');
INSERT INTO `g1` VALUES ('628', '27', '0', '2', '0');
INSERT INTO `g1` VALUES ('629', '27', '0', '2', '1');
INSERT INTO `g1` VALUES ('630', '27', '0', '2', '2');
INSERT INTO `g1` VALUES ('631', '27', '0', '3', '0');
INSERT INTO `g1` VALUES ('632', '27', '0', '3', '1');
INSERT INTO `g1` VALUES ('633', '27', '0', '3', '2');
INSERT INTO `g1` VALUES ('634', '27', '0', '4', '0');
INSERT INTO `g1` VALUES ('635', '27', '0', '4', '1');
INSERT INTO `g1` VALUES ('636', '27', '0', '4', '2');
INSERT INTO `g1` VALUES ('637', '27', '0', '5', '0');
INSERT INTO `g1` VALUES ('638', '27', '0', '5', '1');
INSERT INTO `g1` VALUES ('639', '27', '0', '5', '2');
INSERT INTO `g1` VALUES ('640', '27', '0', '6', '0');
INSERT INTO `g1` VALUES ('641', '27', '0', '6', '1');
INSERT INTO `g1` VALUES ('642', '27', '0', '6', '2');
INSERT INTO `g1` VALUES ('643', '27', '0', '7', '0');
INSERT INTO `g1` VALUES ('644', '27', '0', '7', '1');
INSERT INTO `g1` VALUES ('645', '27', '0', '7', '2');
INSERT INTO `g1` VALUES ('646', '27', '0', '8', '0');
INSERT INTO `g1` VALUES ('647', '27', '0', '8', '1');
INSERT INTO `g1` VALUES ('648', '27', '0', '8', '2');
INSERT INTO `g1` VALUES ('649', '28', '0', '1', '0');
INSERT INTO `g1` VALUES ('650', '28', '0', '1', '1');
INSERT INTO `g1` VALUES ('651', '28', '0', '1', '2');
INSERT INTO `g1` VALUES ('652', '28', '0', '2', '0');
INSERT INTO `g1` VALUES ('653', '28', '0', '2', '1');
INSERT INTO `g1` VALUES ('654', '28', '0', '2', '2');
INSERT INTO `g1` VALUES ('655', '28', '0', '3', '0');
INSERT INTO `g1` VALUES ('656', '28', '0', '3', '1');
INSERT INTO `g1` VALUES ('657', '28', '0', '3', '2');
INSERT INTO `g1` VALUES ('658', '28', '0', '4', '0');
INSERT INTO `g1` VALUES ('659', '28', '0', '4', '1');
INSERT INTO `g1` VALUES ('660', '28', '0', '4', '2');
INSERT INTO `g1` VALUES ('661', '28', '0', '5', '0');
INSERT INTO `g1` VALUES ('662', '28', '0', '5', '1');
INSERT INTO `g1` VALUES ('663', '28', '0', '5', '2');
INSERT INTO `g1` VALUES ('664', '28', '0', '6', '0');
INSERT INTO `g1` VALUES ('665', '28', '0', '6', '1');
INSERT INTO `g1` VALUES ('666', '28', '0', '6', '2');
INSERT INTO `g1` VALUES ('667', '28', '0', '7', '0');
INSERT INTO `g1` VALUES ('668', '28', '0', '7', '1');
INSERT INTO `g1` VALUES ('669', '28', '0', '7', '2');
INSERT INTO `g1` VALUES ('670', '28', '0', '8', '0');
INSERT INTO `g1` VALUES ('671', '28', '0', '8', '1');
INSERT INTO `g1` VALUES ('672', '28', '0', '8', '2');
INSERT INTO `g1` VALUES ('673', '29', '0', '1', '0');
INSERT INTO `g1` VALUES ('674', '29', '0', '1', '1');
INSERT INTO `g1` VALUES ('675', '29', '0', '1', '2');
INSERT INTO `g1` VALUES ('676', '29', '0', '2', '0');
INSERT INTO `g1` VALUES ('677', '29', '0', '2', '1');
INSERT INTO `g1` VALUES ('678', '29', '0', '2', '2');
INSERT INTO `g1` VALUES ('679', '29', '0', '3', '0');
INSERT INTO `g1` VALUES ('680', '29', '0', '3', '1');
INSERT INTO `g1` VALUES ('681', '29', '0', '3', '2');
INSERT INTO `g1` VALUES ('682', '29', '0', '4', '0');
INSERT INTO `g1` VALUES ('683', '29', '0', '4', '1');
INSERT INTO `g1` VALUES ('684', '29', '0', '4', '2');
INSERT INTO `g1` VALUES ('685', '29', '0', '5', '0');
INSERT INTO `g1` VALUES ('686', '29', '0', '5', '1');
INSERT INTO `g1` VALUES ('687', '29', '0', '5', '2');
INSERT INTO `g1` VALUES ('688', '29', '0', '6', '0');
INSERT INTO `g1` VALUES ('689', '29', '0', '6', '1');
INSERT INTO `g1` VALUES ('690', '29', '0', '6', '2');
INSERT INTO `g1` VALUES ('691', '29', '0', '7', '0');
INSERT INTO `g1` VALUES ('692', '29', '0', '7', '1');
INSERT INTO `g1` VALUES ('693', '29', '0', '7', '2');
INSERT INTO `g1` VALUES ('694', '29', '0', '8', '0');
INSERT INTO `g1` VALUES ('695', '29', '0', '8', '1');
INSERT INTO `g1` VALUES ('696', '29', '0', '8', '2');
INSERT INTO `g1` VALUES ('697', '30', '0', '1', '0');
INSERT INTO `g1` VALUES ('698', '30', '0', '1', '1');
INSERT INTO `g1` VALUES ('699', '30', '0', '1', '2');
INSERT INTO `g1` VALUES ('700', '30', '0', '2', '0');
INSERT INTO `g1` VALUES ('701', '30', '0', '2', '1');
INSERT INTO `g1` VALUES ('702', '30', '0', '2', '2');
INSERT INTO `g1` VALUES ('703', '30', '0', '3', '0');
INSERT INTO `g1` VALUES ('704', '30', '0', '3', '1');
INSERT INTO `g1` VALUES ('705', '30', '0', '3', '2');
INSERT INTO `g1` VALUES ('706', '30', '0', '4', '0');
INSERT INTO `g1` VALUES ('707', '30', '0', '4', '1');
INSERT INTO `g1` VALUES ('708', '30', '0', '4', '2');
INSERT INTO `g1` VALUES ('709', '30', '0', '5', '0');
INSERT INTO `g1` VALUES ('710', '30', '0', '5', '1');
INSERT INTO `g1` VALUES ('711', '30', '0', '5', '2');
INSERT INTO `g1` VALUES ('712', '30', '0', '6', '0');
INSERT INTO `g1` VALUES ('713', '30', '0', '6', '1');
INSERT INTO `g1` VALUES ('714', '30', '0', '6', '2');
INSERT INTO `g1` VALUES ('715', '30', '0', '7', '0');
INSERT INTO `g1` VALUES ('716', '30', '0', '7', '1');
INSERT INTO `g1` VALUES ('717', '30', '0', '7', '2');
INSERT INTO `g1` VALUES ('718', '30', '0', '8', '0');
INSERT INTO `g1` VALUES ('719', '30', '0', '8', '1');
INSERT INTO `g1` VALUES ('720', '30', '0', '8', '2');

-- ----------------------------
-- Table structure for `g102`
-- ----------------------------
DROP TABLE IF EXISTS `g102`;
CREATE TABLE `g102` (
  `seatid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键号',
  `seatname` int(11) DEFAULT NULL COMMENT '座位号',
  `seatstatue` varchar(255) DEFAULT NULL COMMENT '座位状态',
  `seatinterval` varchar(255) DEFAULT NULL COMMENT '区间归属',
  `seattype` varchar(255) DEFAULT NULL COMMENT '特1号车厢一2号车厢二3号车厢',
  PRIMARY KEY (`seatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='G102座位信息';

-- ----------------------------
-- Records of g102
-- ----------------------------
INSERT INTO `g102` VALUES ('1', '1', '0', '1', '0');
INSERT INTO `g102` VALUES ('2', '1', '0', '2', '0');
INSERT INTO `g102` VALUES ('3', '1', '0', '3', '0');
INSERT INTO `g102` VALUES ('4', '1', '0', '4', '0');
INSERT INTO `g102` VALUES ('5', '1', '0', '5', '0');
INSERT INTO `g102` VALUES ('6', '1', '0', '6', '0');
INSERT INTO `g102` VALUES ('7', '1', '0', '7', '0');
INSERT INTO `g102` VALUES ('8', '1', '0', '8', '0');
INSERT INTO `g102` VALUES ('9', '1', '0', '1', '1');
INSERT INTO `g102` VALUES ('10', '1', '0', '2', '1');
INSERT INTO `g102` VALUES ('11', '1', '0', '3', '1');
INSERT INTO `g102` VALUES ('12', '1', '0', '4', '1');
INSERT INTO `g102` VALUES ('13', '1', '0', '5', '1');
INSERT INTO `g102` VALUES ('14', '1', '0', '6', '1');
INSERT INTO `g102` VALUES ('15', '1', '0', '7', '1');
INSERT INTO `g102` VALUES ('16', '1', '0', '8', '1');
INSERT INTO `g102` VALUES ('17', '1', '0', '1', '2');
INSERT INTO `g102` VALUES ('18', '1', '0', '2', '2');
INSERT INTO `g102` VALUES ('19', '1', '0', '3', '2');
INSERT INTO `g102` VALUES ('20', '1', '0', '4', '2');
INSERT INTO `g102` VALUES ('21', '1', '0', '5', '2');
INSERT INTO `g102` VALUES ('22', '1', '0', '6', '2');
INSERT INTO `g102` VALUES ('23', '1', '0', '7', '2');
INSERT INTO `g102` VALUES ('24', '1', '0', '8', '2');
INSERT INTO `g102` VALUES ('25', '2', '0', '1', '0');
INSERT INTO `g102` VALUES ('26', '2', '0', '2', '0');
INSERT INTO `g102` VALUES ('27', '2', '0', '3', '0');
INSERT INTO `g102` VALUES ('28', '2', '0', '4', '0');
INSERT INTO `g102` VALUES ('29', '2', '0', '5', '0');
INSERT INTO `g102` VALUES ('30', '2', '0', '6', '0');
INSERT INTO `g102` VALUES ('31', '2', '0', '7', '0');
INSERT INTO `g102` VALUES ('32', '2', '0', '8', '0');
INSERT INTO `g102` VALUES ('33', '2', '0', '1', '1');
INSERT INTO `g102` VALUES ('34', '2', '0', '2', '1');
INSERT INTO `g102` VALUES ('35', '2', '0', '3', '1');
INSERT INTO `g102` VALUES ('36', '2', '0', '4', '1');
INSERT INTO `g102` VALUES ('37', '2', '0', '5', '1');
INSERT INTO `g102` VALUES ('38', '2', '0', '6', '1');
INSERT INTO `g102` VALUES ('39', '2', '0', '7', '1');
INSERT INTO `g102` VALUES ('40', '2', '0', '8', '1');
INSERT INTO `g102` VALUES ('41', '2', '0', '1', '2');
INSERT INTO `g102` VALUES ('42', '2', '0', '2', '2');
INSERT INTO `g102` VALUES ('43', '2', '0', '3', '2');
INSERT INTO `g102` VALUES ('44', '2', '0', '4', '2');
INSERT INTO `g102` VALUES ('45', '2', '0', '5', '2');
INSERT INTO `g102` VALUES ('46', '2', '0', '6', '2');
INSERT INTO `g102` VALUES ('47', '2', '0', '7', '2');
INSERT INTO `g102` VALUES ('48', '2', '0', '8', '2');
INSERT INTO `g102` VALUES ('49', '3', '0', '1', '0');
INSERT INTO `g102` VALUES ('50', '3', '0', '2', '0');
INSERT INTO `g102` VALUES ('51', '3', '0', '3', '0');
INSERT INTO `g102` VALUES ('52', '3', '0', '4', '0');
INSERT INTO `g102` VALUES ('53', '3', '0', '5', '0');
INSERT INTO `g102` VALUES ('54', '3', '0', '6', '0');
INSERT INTO `g102` VALUES ('55', '3', '0', '7', '0');
INSERT INTO `g102` VALUES ('56', '3', '0', '8', '0');
INSERT INTO `g102` VALUES ('57', '3', '0', '1', '1');
INSERT INTO `g102` VALUES ('58', '3', '0', '2', '1');
INSERT INTO `g102` VALUES ('59', '3', '0', '3', '1');
INSERT INTO `g102` VALUES ('60', '3', '0', '4', '1');
INSERT INTO `g102` VALUES ('61', '3', '0', '5', '1');
INSERT INTO `g102` VALUES ('62', '3', '0', '6', '1');
INSERT INTO `g102` VALUES ('63', '3', '0', '7', '1');
INSERT INTO `g102` VALUES ('64', '3', '0', '8', '1');
INSERT INTO `g102` VALUES ('65', '3', '0', '1', '2');
INSERT INTO `g102` VALUES ('66', '3', '0', '2', '2');
INSERT INTO `g102` VALUES ('67', '3', '0', '3', '2');
INSERT INTO `g102` VALUES ('68', '3', '0', '4', '2');
INSERT INTO `g102` VALUES ('69', '3', '0', '5', '2');
INSERT INTO `g102` VALUES ('70', '3', '0', '6', '2');
INSERT INTO `g102` VALUES ('71', '3', '0', '7', '2');
INSERT INTO `g102` VALUES ('72', '3', '0', '8', '2');
INSERT INTO `g102` VALUES ('73', '4', '0', '1', '0');
INSERT INTO `g102` VALUES ('74', '4', '0', '2', '0');
INSERT INTO `g102` VALUES ('75', '4', '0', '3', '0');
INSERT INTO `g102` VALUES ('76', '4', '0', '4', '0');
INSERT INTO `g102` VALUES ('77', '4', '0', '5', '0');
INSERT INTO `g102` VALUES ('78', '4', '0', '6', '0');
INSERT INTO `g102` VALUES ('79', '4', '0', '7', '0');
INSERT INTO `g102` VALUES ('80', '4', '0', '8', '0');
INSERT INTO `g102` VALUES ('81', '4', '0', '1', '1');
INSERT INTO `g102` VALUES ('82', '4', '0', '2', '1');
INSERT INTO `g102` VALUES ('83', '4', '0', '3', '1');
INSERT INTO `g102` VALUES ('84', '4', '0', '4', '1');
INSERT INTO `g102` VALUES ('85', '4', '0', '5', '1');
INSERT INTO `g102` VALUES ('86', '4', '0', '6', '1');
INSERT INTO `g102` VALUES ('87', '4', '0', '7', '1');
INSERT INTO `g102` VALUES ('88', '4', '0', '8', '1');
INSERT INTO `g102` VALUES ('89', '4', '0', '1', '2');
INSERT INTO `g102` VALUES ('90', '4', '0', '2', '2');
INSERT INTO `g102` VALUES ('91', '4', '0', '3', '2');
INSERT INTO `g102` VALUES ('92', '4', '0', '4', '2');
INSERT INTO `g102` VALUES ('93', '4', '0', '5', '2');
INSERT INTO `g102` VALUES ('94', '4', '0', '6', '2');
INSERT INTO `g102` VALUES ('95', '4', '0', '7', '2');
INSERT INTO `g102` VALUES ('96', '4', '0', '8', '2');
INSERT INTO `g102` VALUES ('97', '5', '0', '1', '0');
INSERT INTO `g102` VALUES ('98', '5', '0', '2', '0');
INSERT INTO `g102` VALUES ('99', '5', '0', '3', '0');
INSERT INTO `g102` VALUES ('100', '5', '0', '4', '0');
INSERT INTO `g102` VALUES ('101', '5', '0', '5', '0');
INSERT INTO `g102` VALUES ('102', '5', '0', '6', '0');
INSERT INTO `g102` VALUES ('103', '5', '0', '7', '0');
INSERT INTO `g102` VALUES ('104', '5', '0', '8', '0');
INSERT INTO `g102` VALUES ('105', '5', '0', '1', '1');
INSERT INTO `g102` VALUES ('106', '5', '0', '2', '1');
INSERT INTO `g102` VALUES ('107', '5', '0', '3', '1');
INSERT INTO `g102` VALUES ('108', '5', '0', '4', '1');
INSERT INTO `g102` VALUES ('109', '5', '0', '5', '1');
INSERT INTO `g102` VALUES ('110', '5', '0', '6', '1');
INSERT INTO `g102` VALUES ('111', '5', '0', '7', '1');
INSERT INTO `g102` VALUES ('112', '5', '0', '8', '1');
INSERT INTO `g102` VALUES ('113', '5', '0', '1', '2');
INSERT INTO `g102` VALUES ('114', '5', '0', '2', '2');
INSERT INTO `g102` VALUES ('115', '5', '0', '3', '2');
INSERT INTO `g102` VALUES ('116', '5', '0', '4', '2');
INSERT INTO `g102` VALUES ('117', '5', '0', '5', '2');
INSERT INTO `g102` VALUES ('118', '5', '0', '6', '2');
INSERT INTO `g102` VALUES ('119', '5', '0', '7', '2');
INSERT INTO `g102` VALUES ('120', '5', '0', '8', '2');
INSERT INTO `g102` VALUES ('121', '6', '0', '1', '0');
INSERT INTO `g102` VALUES ('122', '6', '0', '2', '0');
INSERT INTO `g102` VALUES ('123', '6', '0', '3', '0');
INSERT INTO `g102` VALUES ('124', '6', '0', '4', '0');
INSERT INTO `g102` VALUES ('125', '6', '0', '5', '0');
INSERT INTO `g102` VALUES ('126', '6', '0', '6', '0');
INSERT INTO `g102` VALUES ('127', '6', '0', '7', '0');
INSERT INTO `g102` VALUES ('128', '6', '0', '8', '0');
INSERT INTO `g102` VALUES ('129', '6', '0', '1', '1');
INSERT INTO `g102` VALUES ('130', '6', '0', '2', '1');
INSERT INTO `g102` VALUES ('131', '6', '0', '3', '1');
INSERT INTO `g102` VALUES ('132', '6', '0', '4', '1');
INSERT INTO `g102` VALUES ('133', '6', '0', '5', '1');
INSERT INTO `g102` VALUES ('134', '6', '0', '6', '1');
INSERT INTO `g102` VALUES ('135', '6', '0', '7', '1');
INSERT INTO `g102` VALUES ('136', '6', '0', '8', '1');
INSERT INTO `g102` VALUES ('137', '6', '0', '1', '2');
INSERT INTO `g102` VALUES ('138', '6', '0', '2', '2');
INSERT INTO `g102` VALUES ('139', '6', '0', '3', '2');
INSERT INTO `g102` VALUES ('140', '6', '0', '4', '2');
INSERT INTO `g102` VALUES ('141', '6', '0', '5', '2');
INSERT INTO `g102` VALUES ('142', '6', '0', '6', '2');
INSERT INTO `g102` VALUES ('143', '6', '0', '7', '2');
INSERT INTO `g102` VALUES ('144', '6', '0', '8', '2');
INSERT INTO `g102` VALUES ('145', '7', '0', '1', '0');
INSERT INTO `g102` VALUES ('146', '7', '0', '2', '0');
INSERT INTO `g102` VALUES ('147', '7', '0', '3', '0');
INSERT INTO `g102` VALUES ('148', '7', '0', '4', '0');
INSERT INTO `g102` VALUES ('149', '7', '0', '5', '0');
INSERT INTO `g102` VALUES ('150', '7', '0', '6', '0');
INSERT INTO `g102` VALUES ('151', '7', '0', '7', '0');
INSERT INTO `g102` VALUES ('152', '7', '0', '8', '0');
INSERT INTO `g102` VALUES ('153', '7', '0', '1', '1');
INSERT INTO `g102` VALUES ('154', '7', '0', '2', '1');
INSERT INTO `g102` VALUES ('155', '7', '0', '3', '1');
INSERT INTO `g102` VALUES ('156', '7', '0', '4', '1');
INSERT INTO `g102` VALUES ('157', '7', '0', '5', '1');
INSERT INTO `g102` VALUES ('158', '7', '0', '6', '1');
INSERT INTO `g102` VALUES ('159', '7', '0', '7', '1');
INSERT INTO `g102` VALUES ('160', '7', '0', '8', '1');
INSERT INTO `g102` VALUES ('161', '7', '0', '1', '2');
INSERT INTO `g102` VALUES ('162', '7', '0', '2', '2');
INSERT INTO `g102` VALUES ('163', '7', '0', '3', '2');
INSERT INTO `g102` VALUES ('164', '7', '0', '4', '2');
INSERT INTO `g102` VALUES ('165', '7', '0', '5', '2');
INSERT INTO `g102` VALUES ('166', '7', '0', '6', '2');
INSERT INTO `g102` VALUES ('167', '7', '0', '7', '2');
INSERT INTO `g102` VALUES ('168', '7', '0', '8', '2');
INSERT INTO `g102` VALUES ('169', '8', '0', '1', '0');
INSERT INTO `g102` VALUES ('170', '8', '0', '2', '0');
INSERT INTO `g102` VALUES ('171', '8', '0', '3', '0');
INSERT INTO `g102` VALUES ('172', '8', '0', '4', '0');
INSERT INTO `g102` VALUES ('173', '8', '0', '5', '0');
INSERT INTO `g102` VALUES ('174', '8', '0', '6', '0');
INSERT INTO `g102` VALUES ('175', '8', '0', '7', '0');
INSERT INTO `g102` VALUES ('176', '8', '0', '8', '0');
INSERT INTO `g102` VALUES ('177', '8', '0', '1', '1');
INSERT INTO `g102` VALUES ('178', '8', '0', '2', '1');
INSERT INTO `g102` VALUES ('179', '8', '0', '3', '1');
INSERT INTO `g102` VALUES ('180', '8', '0', '4', '1');
INSERT INTO `g102` VALUES ('181', '8', '0', '5', '1');
INSERT INTO `g102` VALUES ('182', '8', '0', '6', '1');
INSERT INTO `g102` VALUES ('183', '8', '0', '7', '1');
INSERT INTO `g102` VALUES ('184', '8', '0', '8', '1');
INSERT INTO `g102` VALUES ('185', '8', '0', '1', '2');
INSERT INTO `g102` VALUES ('186', '8', '0', '2', '2');
INSERT INTO `g102` VALUES ('187', '8', '0', '3', '2');
INSERT INTO `g102` VALUES ('188', '8', '0', '4', '2');
INSERT INTO `g102` VALUES ('189', '8', '0', '5', '2');
INSERT INTO `g102` VALUES ('190', '8', '0', '6', '2');
INSERT INTO `g102` VALUES ('191', '8', '0', '7', '2');
INSERT INTO `g102` VALUES ('192', '8', '0', '8', '2');
INSERT INTO `g102` VALUES ('193', '9', '0', '1', '0');
INSERT INTO `g102` VALUES ('194', '9', '0', '2', '0');
INSERT INTO `g102` VALUES ('195', '9', '0', '3', '0');
INSERT INTO `g102` VALUES ('196', '9', '0', '4', '0');
INSERT INTO `g102` VALUES ('197', '9', '0', '5', '0');
INSERT INTO `g102` VALUES ('198', '9', '0', '6', '0');
INSERT INTO `g102` VALUES ('199', '9', '0', '7', '0');
INSERT INTO `g102` VALUES ('200', '9', '0', '8', '0');
INSERT INTO `g102` VALUES ('201', '9', '0', '1', '1');
INSERT INTO `g102` VALUES ('202', '9', '0', '2', '1');
INSERT INTO `g102` VALUES ('203', '9', '0', '3', '1');
INSERT INTO `g102` VALUES ('204', '9', '0', '4', '1');
INSERT INTO `g102` VALUES ('205', '9', '0', '5', '1');
INSERT INTO `g102` VALUES ('206', '9', '0', '6', '1');
INSERT INTO `g102` VALUES ('207', '9', '0', '7', '1');
INSERT INTO `g102` VALUES ('208', '9', '0', '8', '1');
INSERT INTO `g102` VALUES ('209', '9', '0', '1', '2');
INSERT INTO `g102` VALUES ('210', '9', '0', '2', '2');
INSERT INTO `g102` VALUES ('211', '9', '0', '3', '2');
INSERT INTO `g102` VALUES ('212', '9', '0', '4', '2');
INSERT INTO `g102` VALUES ('213', '9', '0', '5', '2');
INSERT INTO `g102` VALUES ('214', '9', '0', '6', '2');
INSERT INTO `g102` VALUES ('215', '9', '0', '7', '2');
INSERT INTO `g102` VALUES ('216', '9', '0', '8', '2');
INSERT INTO `g102` VALUES ('217', '10', '0', '1', '0');
INSERT INTO `g102` VALUES ('218', '10', '0', '2', '0');
INSERT INTO `g102` VALUES ('219', '10', '0', '3', '0');
INSERT INTO `g102` VALUES ('220', '10', '0', '4', '0');
INSERT INTO `g102` VALUES ('221', '10', '0', '5', '0');
INSERT INTO `g102` VALUES ('222', '10', '0', '6', '0');
INSERT INTO `g102` VALUES ('223', '10', '0', '7', '0');
INSERT INTO `g102` VALUES ('224', '10', '0', '8', '0');
INSERT INTO `g102` VALUES ('225', '10', '0', '1', '1');
INSERT INTO `g102` VALUES ('226', '10', '0', '2', '1');
INSERT INTO `g102` VALUES ('227', '10', '0', '3', '1');
INSERT INTO `g102` VALUES ('228', '10', '0', '4', '1');
INSERT INTO `g102` VALUES ('229', '10', '0', '5', '1');
INSERT INTO `g102` VALUES ('230', '10', '0', '6', '1');
INSERT INTO `g102` VALUES ('231', '10', '0', '7', '1');
INSERT INTO `g102` VALUES ('232', '10', '0', '8', '1');
INSERT INTO `g102` VALUES ('233', '10', '0', '1', '2');
INSERT INTO `g102` VALUES ('234', '10', '0', '2', '2');
INSERT INTO `g102` VALUES ('235', '10', '0', '3', '2');
INSERT INTO `g102` VALUES ('236', '10', '0', '4', '2');
INSERT INTO `g102` VALUES ('237', '10', '0', '5', '2');
INSERT INTO `g102` VALUES ('238', '10', '0', '6', '2');
INSERT INTO `g102` VALUES ('239', '10', '0', '7', '2');
INSERT INTO `g102` VALUES ('240', '10', '0', '8', '2');
INSERT INTO `g102` VALUES ('241', '11', '0', '1', '0');
INSERT INTO `g102` VALUES ('242', '11', '0', '2', '0');
INSERT INTO `g102` VALUES ('243', '11', '0', '3', '0');
INSERT INTO `g102` VALUES ('244', '11', '0', '4', '0');
INSERT INTO `g102` VALUES ('245', '11', '0', '5', '0');
INSERT INTO `g102` VALUES ('246', '11', '0', '6', '0');
INSERT INTO `g102` VALUES ('247', '11', '0', '7', '0');
INSERT INTO `g102` VALUES ('248', '11', '0', '8', '0');
INSERT INTO `g102` VALUES ('249', '11', '0', '1', '1');
INSERT INTO `g102` VALUES ('250', '11', '0', '2', '1');
INSERT INTO `g102` VALUES ('251', '11', '0', '3', '1');
INSERT INTO `g102` VALUES ('252', '11', '0', '4', '1');
INSERT INTO `g102` VALUES ('253', '11', '0', '5', '1');
INSERT INTO `g102` VALUES ('254', '11', '0', '6', '1');
INSERT INTO `g102` VALUES ('255', '11', '0', '7', '1');
INSERT INTO `g102` VALUES ('256', '11', '0', '8', '1');
INSERT INTO `g102` VALUES ('257', '11', '0', '1', '2');
INSERT INTO `g102` VALUES ('258', '11', '0', '2', '2');
INSERT INTO `g102` VALUES ('259', '11', '0', '3', '2');
INSERT INTO `g102` VALUES ('260', '11', '0', '4', '2');
INSERT INTO `g102` VALUES ('261', '11', '0', '5', '2');
INSERT INTO `g102` VALUES ('262', '11', '0', '6', '2');
INSERT INTO `g102` VALUES ('263', '11', '0', '7', '2');
INSERT INTO `g102` VALUES ('264', '11', '0', '8', '2');
INSERT INTO `g102` VALUES ('265', '12', '0', '1', '0');
INSERT INTO `g102` VALUES ('266', '12', '0', '2', '0');
INSERT INTO `g102` VALUES ('267', '12', '0', '3', '0');
INSERT INTO `g102` VALUES ('268', '12', '0', '4', '0');
INSERT INTO `g102` VALUES ('269', '12', '0', '5', '0');
INSERT INTO `g102` VALUES ('270', '12', '0', '6', '0');
INSERT INTO `g102` VALUES ('271', '12', '0', '7', '0');
INSERT INTO `g102` VALUES ('272', '12', '0', '8', '0');
INSERT INTO `g102` VALUES ('273', '12', '0', '1', '1');
INSERT INTO `g102` VALUES ('274', '12', '0', '2', '1');
INSERT INTO `g102` VALUES ('275', '12', '0', '3', '1');
INSERT INTO `g102` VALUES ('276', '12', '0', '4', '1');
INSERT INTO `g102` VALUES ('277', '12', '0', '5', '1');
INSERT INTO `g102` VALUES ('278', '12', '0', '6', '1');
INSERT INTO `g102` VALUES ('279', '12', '0', '7', '1');
INSERT INTO `g102` VALUES ('280', '12', '0', '8', '1');
INSERT INTO `g102` VALUES ('281', '12', '0', '1', '2');
INSERT INTO `g102` VALUES ('282', '12', '0', '2', '2');
INSERT INTO `g102` VALUES ('283', '12', '0', '3', '2');
INSERT INTO `g102` VALUES ('284', '12', '0', '4', '2');
INSERT INTO `g102` VALUES ('285', '12', '0', '5', '2');
INSERT INTO `g102` VALUES ('286', '12', '0', '6', '2');
INSERT INTO `g102` VALUES ('287', '12', '0', '7', '2');
INSERT INTO `g102` VALUES ('288', '12', '0', '8', '2');
INSERT INTO `g102` VALUES ('289', '13', '0', '1', '0');
INSERT INTO `g102` VALUES ('290', '13', '0', '2', '0');
INSERT INTO `g102` VALUES ('291', '13', '0', '3', '0');
INSERT INTO `g102` VALUES ('292', '13', '0', '4', '0');
INSERT INTO `g102` VALUES ('293', '13', '0', '5', '0');
INSERT INTO `g102` VALUES ('294', '13', '0', '6', '0');
INSERT INTO `g102` VALUES ('295', '13', '0', '7', '0');
INSERT INTO `g102` VALUES ('296', '13', '0', '8', '0');
INSERT INTO `g102` VALUES ('297', '13', '0', '1', '1');
INSERT INTO `g102` VALUES ('298', '13', '0', '2', '1');
INSERT INTO `g102` VALUES ('299', '13', '0', '3', '1');
INSERT INTO `g102` VALUES ('300', '13', '0', '4', '1');
INSERT INTO `g102` VALUES ('301', '13', '0', '5', '1');
INSERT INTO `g102` VALUES ('302', '13', '0', '6', '1');
INSERT INTO `g102` VALUES ('303', '13', '0', '7', '1');
INSERT INTO `g102` VALUES ('304', '13', '0', '8', '1');
INSERT INTO `g102` VALUES ('305', '13', '0', '1', '2');
INSERT INTO `g102` VALUES ('306', '13', '0', '2', '2');
INSERT INTO `g102` VALUES ('307', '13', '0', '3', '2');
INSERT INTO `g102` VALUES ('308', '13', '0', '4', '2');
INSERT INTO `g102` VALUES ('309', '13', '0', '5', '2');
INSERT INTO `g102` VALUES ('310', '13', '0', '6', '2');
INSERT INTO `g102` VALUES ('311', '13', '0', '7', '2');
INSERT INTO `g102` VALUES ('312', '13', '0', '8', '2');
INSERT INTO `g102` VALUES ('313', '14', '0', '1', '0');
INSERT INTO `g102` VALUES ('314', '14', '0', '2', '0');
INSERT INTO `g102` VALUES ('315', '14', '0', '3', '0');
INSERT INTO `g102` VALUES ('316', '14', '0', '4', '0');
INSERT INTO `g102` VALUES ('317', '14', '0', '5', '0');
INSERT INTO `g102` VALUES ('318', '14', '0', '6', '0');
INSERT INTO `g102` VALUES ('319', '14', '0', '7', '0');
INSERT INTO `g102` VALUES ('320', '14', '0', '8', '0');
INSERT INTO `g102` VALUES ('321', '14', '0', '1', '1');
INSERT INTO `g102` VALUES ('322', '14', '0', '2', '1');
INSERT INTO `g102` VALUES ('323', '14', '0', '3', '1');
INSERT INTO `g102` VALUES ('324', '14', '0', '4', '1');
INSERT INTO `g102` VALUES ('325', '14', '0', '5', '1');
INSERT INTO `g102` VALUES ('326', '14', '0', '6', '1');
INSERT INTO `g102` VALUES ('327', '14', '0', '7', '1');
INSERT INTO `g102` VALUES ('328', '14', '0', '8', '1');
INSERT INTO `g102` VALUES ('329', '14', '0', '1', '2');
INSERT INTO `g102` VALUES ('330', '14', '0', '2', '2');
INSERT INTO `g102` VALUES ('331', '14', '0', '3', '2');
INSERT INTO `g102` VALUES ('332', '14', '0', '4', '2');
INSERT INTO `g102` VALUES ('333', '14', '0', '5', '2');
INSERT INTO `g102` VALUES ('334', '14', '0', '6', '2');
INSERT INTO `g102` VALUES ('335', '14', '0', '7', '2');
INSERT INTO `g102` VALUES ('336', '14', '0', '8', '2');
INSERT INTO `g102` VALUES ('337', '15', '0', '1', '0');
INSERT INTO `g102` VALUES ('338', '15', '0', '2', '0');
INSERT INTO `g102` VALUES ('339', '15', '0', '3', '0');
INSERT INTO `g102` VALUES ('340', '15', '0', '4', '0');
INSERT INTO `g102` VALUES ('341', '15', '0', '5', '0');
INSERT INTO `g102` VALUES ('342', '15', '0', '6', '0');
INSERT INTO `g102` VALUES ('343', '15', '0', '7', '0');
INSERT INTO `g102` VALUES ('344', '15', '0', '8', '0');
INSERT INTO `g102` VALUES ('345', '15', '0', '1', '1');
INSERT INTO `g102` VALUES ('346', '15', '0', '2', '1');
INSERT INTO `g102` VALUES ('347', '15', '0', '3', '1');
INSERT INTO `g102` VALUES ('348', '15', '0', '4', '1');
INSERT INTO `g102` VALUES ('349', '15', '0', '5', '1');
INSERT INTO `g102` VALUES ('350', '15', '0', '6', '1');
INSERT INTO `g102` VALUES ('351', '15', '0', '7', '1');
INSERT INTO `g102` VALUES ('352', '15', '0', '8', '1');
INSERT INTO `g102` VALUES ('353', '15', '0', '1', '2');
INSERT INTO `g102` VALUES ('354', '15', '0', '2', '2');
INSERT INTO `g102` VALUES ('355', '15', '0', '3', '2');
INSERT INTO `g102` VALUES ('356', '15', '0', '4', '2');
INSERT INTO `g102` VALUES ('357', '15', '0', '5', '2');
INSERT INTO `g102` VALUES ('358', '15', '0', '6', '2');
INSERT INTO `g102` VALUES ('359', '15', '0', '7', '2');
INSERT INTO `g102` VALUES ('360', '15', '0', '8', '2');
INSERT INTO `g102` VALUES ('361', '16', '0', '1', '0');
INSERT INTO `g102` VALUES ('362', '16', '0', '2', '0');
INSERT INTO `g102` VALUES ('363', '16', '0', '3', '0');
INSERT INTO `g102` VALUES ('364', '16', '0', '4', '0');
INSERT INTO `g102` VALUES ('365', '16', '0', '5', '0');
INSERT INTO `g102` VALUES ('366', '16', '0', '6', '0');
INSERT INTO `g102` VALUES ('367', '16', '0', '7', '0');
INSERT INTO `g102` VALUES ('368', '16', '0', '8', '0');
INSERT INTO `g102` VALUES ('369', '16', '0', '1', '1');
INSERT INTO `g102` VALUES ('370', '16', '0', '2', '1');
INSERT INTO `g102` VALUES ('371', '16', '0', '3', '1');
INSERT INTO `g102` VALUES ('372', '16', '0', '4', '1');
INSERT INTO `g102` VALUES ('373', '16', '0', '5', '1');
INSERT INTO `g102` VALUES ('374', '16', '0', '6', '1');
INSERT INTO `g102` VALUES ('375', '16', '0', '7', '1');
INSERT INTO `g102` VALUES ('376', '16', '0', '8', '1');
INSERT INTO `g102` VALUES ('377', '16', '0', '1', '2');
INSERT INTO `g102` VALUES ('378', '16', '0', '2', '2');
INSERT INTO `g102` VALUES ('379', '16', '0', '3', '2');
INSERT INTO `g102` VALUES ('380', '16', '0', '4', '2');
INSERT INTO `g102` VALUES ('381', '16', '0', '5', '2');
INSERT INTO `g102` VALUES ('382', '16', '0', '6', '2');
INSERT INTO `g102` VALUES ('383', '16', '0', '7', '2');
INSERT INTO `g102` VALUES ('384', '16', '0', '8', '2');
INSERT INTO `g102` VALUES ('385', '17', '0', '1', '0');
INSERT INTO `g102` VALUES ('386', '17', '0', '2', '0');
INSERT INTO `g102` VALUES ('387', '17', '0', '3', '0');
INSERT INTO `g102` VALUES ('388', '17', '0', '4', '0');
INSERT INTO `g102` VALUES ('389', '17', '0', '5', '0');
INSERT INTO `g102` VALUES ('390', '17', '0', '6', '0');
INSERT INTO `g102` VALUES ('391', '17', '0', '7', '0');
INSERT INTO `g102` VALUES ('392', '17', '0', '8', '0');
INSERT INTO `g102` VALUES ('393', '17', '0', '1', '1');
INSERT INTO `g102` VALUES ('394', '17', '0', '2', '1');
INSERT INTO `g102` VALUES ('395', '17', '0', '3', '1');
INSERT INTO `g102` VALUES ('396', '17', '0', '4', '1');
INSERT INTO `g102` VALUES ('397', '17', '0', '5', '1');
INSERT INTO `g102` VALUES ('398', '17', '0', '6', '1');
INSERT INTO `g102` VALUES ('399', '17', '0', '7', '1');
INSERT INTO `g102` VALUES ('400', '17', '0', '8', '1');
INSERT INTO `g102` VALUES ('401', '17', '0', '1', '2');
INSERT INTO `g102` VALUES ('402', '17', '0', '2', '2');
INSERT INTO `g102` VALUES ('403', '17', '0', '3', '2');
INSERT INTO `g102` VALUES ('404', '17', '0', '4', '2');
INSERT INTO `g102` VALUES ('405', '17', '0', '5', '2');
INSERT INTO `g102` VALUES ('406', '17', '0', '6', '2');
INSERT INTO `g102` VALUES ('407', '17', '0', '7', '2');
INSERT INTO `g102` VALUES ('408', '17', '0', '8', '2');
INSERT INTO `g102` VALUES ('409', '18', '0', '1', '0');
INSERT INTO `g102` VALUES ('410', '18', '0', '2', '0');
INSERT INTO `g102` VALUES ('411', '18', '0', '3', '0');
INSERT INTO `g102` VALUES ('412', '18', '0', '4', '0');
INSERT INTO `g102` VALUES ('413', '18', '0', '5', '0');
INSERT INTO `g102` VALUES ('414', '18', '0', '6', '0');
INSERT INTO `g102` VALUES ('415', '18', '0', '7', '0');
INSERT INTO `g102` VALUES ('416', '18', '0', '8', '0');
INSERT INTO `g102` VALUES ('417', '18', '0', '1', '1');
INSERT INTO `g102` VALUES ('418', '18', '0', '2', '1');
INSERT INTO `g102` VALUES ('419', '18', '0', '3', '1');
INSERT INTO `g102` VALUES ('420', '18', '0', '4', '1');
INSERT INTO `g102` VALUES ('421', '18', '0', '5', '1');
INSERT INTO `g102` VALUES ('422', '18', '0', '6', '1');
INSERT INTO `g102` VALUES ('423', '18', '0', '7', '1');
INSERT INTO `g102` VALUES ('424', '18', '0', '8', '1');
INSERT INTO `g102` VALUES ('425', '18', '0', '1', '2');
INSERT INTO `g102` VALUES ('426', '18', '0', '2', '2');
INSERT INTO `g102` VALUES ('427', '18', '0', '3', '2');
INSERT INTO `g102` VALUES ('428', '18', '0', '4', '2');
INSERT INTO `g102` VALUES ('429', '18', '0', '5', '2');
INSERT INTO `g102` VALUES ('430', '18', '0', '6', '2');
INSERT INTO `g102` VALUES ('431', '18', '0', '7', '2');
INSERT INTO `g102` VALUES ('432', '18', '0', '8', '2');
INSERT INTO `g102` VALUES ('433', '19', '0', '1', '0');
INSERT INTO `g102` VALUES ('434', '19', '0', '2', '0');
INSERT INTO `g102` VALUES ('435', '19', '0', '3', '0');
INSERT INTO `g102` VALUES ('436', '19', '0', '4', '0');
INSERT INTO `g102` VALUES ('437', '19', '0', '5', '0');
INSERT INTO `g102` VALUES ('438', '19', '0', '6', '0');
INSERT INTO `g102` VALUES ('439', '19', '0', '7', '0');
INSERT INTO `g102` VALUES ('440', '19', '0', '8', '0');
INSERT INTO `g102` VALUES ('441', '19', '0', '1', '1');
INSERT INTO `g102` VALUES ('442', '19', '0', '2', '1');
INSERT INTO `g102` VALUES ('443', '19', '0', '3', '1');
INSERT INTO `g102` VALUES ('444', '19', '0', '4', '1');
INSERT INTO `g102` VALUES ('445', '19', '0', '5', '1');
INSERT INTO `g102` VALUES ('446', '19', '0', '6', '1');
INSERT INTO `g102` VALUES ('447', '19', '0', '7', '1');
INSERT INTO `g102` VALUES ('448', '19', '0', '8', '1');
INSERT INTO `g102` VALUES ('449', '19', '0', '1', '2');
INSERT INTO `g102` VALUES ('450', '19', '0', '2', '2');
INSERT INTO `g102` VALUES ('451', '19', '0', '3', '2');
INSERT INTO `g102` VALUES ('452', '19', '0', '4', '2');
INSERT INTO `g102` VALUES ('453', '19', '0', '5', '2');
INSERT INTO `g102` VALUES ('454', '19', '0', '6', '2');
INSERT INTO `g102` VALUES ('455', '19', '0', '7', '2');
INSERT INTO `g102` VALUES ('456', '19', '0', '8', '2');
INSERT INTO `g102` VALUES ('457', '20', '0', '1', '0');
INSERT INTO `g102` VALUES ('458', '20', '0', '2', '0');
INSERT INTO `g102` VALUES ('459', '20', '0', '3', '0');
INSERT INTO `g102` VALUES ('460', '20', '0', '4', '0');
INSERT INTO `g102` VALUES ('461', '20', '0', '5', '0');
INSERT INTO `g102` VALUES ('462', '20', '0', '6', '0');
INSERT INTO `g102` VALUES ('463', '20', '0', '7', '0');
INSERT INTO `g102` VALUES ('464', '20', '0', '8', '0');
INSERT INTO `g102` VALUES ('465', '20', '0', '1', '1');
INSERT INTO `g102` VALUES ('466', '20', '0', '2', '1');
INSERT INTO `g102` VALUES ('467', '20', '0', '3', '1');
INSERT INTO `g102` VALUES ('468', '20', '0', '4', '1');
INSERT INTO `g102` VALUES ('469', '20', '0', '5', '1');
INSERT INTO `g102` VALUES ('470', '20', '0', '6', '1');
INSERT INTO `g102` VALUES ('471', '20', '0', '7', '1');
INSERT INTO `g102` VALUES ('472', '20', '0', '8', '1');
INSERT INTO `g102` VALUES ('473', '20', '0', '1', '2');
INSERT INTO `g102` VALUES ('474', '20', '0', '2', '2');
INSERT INTO `g102` VALUES ('475', '20', '0', '3', '2');
INSERT INTO `g102` VALUES ('476', '20', '0', '4', '2');
INSERT INTO `g102` VALUES ('477', '20', '0', '5', '2');
INSERT INTO `g102` VALUES ('478', '20', '0', '6', '2');
INSERT INTO `g102` VALUES ('479', '20', '0', '7', '2');
INSERT INTO `g102` VALUES ('480', '20', '0', '8', '2');
INSERT INTO `g102` VALUES ('481', '21', '0', '1', '0');
INSERT INTO `g102` VALUES ('482', '21', '0', '2', '0');
INSERT INTO `g102` VALUES ('483', '21', '0', '3', '0');
INSERT INTO `g102` VALUES ('484', '21', '0', '4', '0');
INSERT INTO `g102` VALUES ('485', '21', '0', '5', '0');
INSERT INTO `g102` VALUES ('486', '21', '0', '6', '0');
INSERT INTO `g102` VALUES ('487', '21', '0', '7', '0');
INSERT INTO `g102` VALUES ('488', '21', '0', '8', '0');
INSERT INTO `g102` VALUES ('489', '21', '0', '1', '1');
INSERT INTO `g102` VALUES ('490', '21', '0', '2', '1');
INSERT INTO `g102` VALUES ('491', '21', '0', '3', '1');
INSERT INTO `g102` VALUES ('492', '21', '0', '4', '1');
INSERT INTO `g102` VALUES ('493', '21', '0', '5', '1');
INSERT INTO `g102` VALUES ('494', '21', '0', '6', '1');
INSERT INTO `g102` VALUES ('495', '21', '0', '7', '1');
INSERT INTO `g102` VALUES ('496', '21', '0', '8', '1');
INSERT INTO `g102` VALUES ('497', '21', '0', '1', '2');
INSERT INTO `g102` VALUES ('498', '21', '0', '2', '2');
INSERT INTO `g102` VALUES ('499', '21', '0', '3', '2');
INSERT INTO `g102` VALUES ('500', '21', '0', '4', '2');
INSERT INTO `g102` VALUES ('501', '21', '0', '5', '2');
INSERT INTO `g102` VALUES ('502', '21', '0', '6', '2');
INSERT INTO `g102` VALUES ('503', '21', '0', '7', '2');
INSERT INTO `g102` VALUES ('504', '21', '0', '8', '2');
INSERT INTO `g102` VALUES ('505', '22', '0', '1', '0');
INSERT INTO `g102` VALUES ('506', '22', '0', '2', '0');
INSERT INTO `g102` VALUES ('507', '22', '0', '3', '0');
INSERT INTO `g102` VALUES ('508', '22', '0', '4', '0');
INSERT INTO `g102` VALUES ('509', '22', '0', '5', '0');
INSERT INTO `g102` VALUES ('510', '22', '0', '6', '0');
INSERT INTO `g102` VALUES ('511', '22', '0', '7', '0');
INSERT INTO `g102` VALUES ('512', '22', '0', '8', '0');
INSERT INTO `g102` VALUES ('513', '22', '0', '1', '1');
INSERT INTO `g102` VALUES ('514', '22', '0', '2', '1');
INSERT INTO `g102` VALUES ('515', '22', '0', '3', '1');
INSERT INTO `g102` VALUES ('516', '22', '0', '4', '1');
INSERT INTO `g102` VALUES ('517', '22', '0', '5', '1');
INSERT INTO `g102` VALUES ('518', '22', '0', '6', '1');
INSERT INTO `g102` VALUES ('519', '22', '0', '7', '1');
INSERT INTO `g102` VALUES ('520', '22', '0', '8', '1');
INSERT INTO `g102` VALUES ('521', '22', '0', '1', '2');
INSERT INTO `g102` VALUES ('522', '22', '0', '2', '2');
INSERT INTO `g102` VALUES ('523', '22', '0', '3', '2');
INSERT INTO `g102` VALUES ('524', '22', '0', '4', '2');
INSERT INTO `g102` VALUES ('525', '22', '0', '5', '2');
INSERT INTO `g102` VALUES ('526', '22', '0', '6', '2');
INSERT INTO `g102` VALUES ('527', '22', '0', '7', '2');
INSERT INTO `g102` VALUES ('528', '22', '0', '8', '2');
INSERT INTO `g102` VALUES ('529', '23', '0', '1', '0');
INSERT INTO `g102` VALUES ('530', '23', '0', '2', '0');
INSERT INTO `g102` VALUES ('531', '23', '0', '3', '0');
INSERT INTO `g102` VALUES ('532', '23', '0', '4', '0');
INSERT INTO `g102` VALUES ('533', '23', '0', '5', '0');
INSERT INTO `g102` VALUES ('534', '23', '0', '6', '0');
INSERT INTO `g102` VALUES ('535', '23', '0', '7', '0');
INSERT INTO `g102` VALUES ('536', '23', '0', '8', '0');
INSERT INTO `g102` VALUES ('537', '23', '0', '1', '1');
INSERT INTO `g102` VALUES ('538', '23', '0', '2', '1');
INSERT INTO `g102` VALUES ('539', '23', '0', '3', '1');
INSERT INTO `g102` VALUES ('540', '23', '0', '4', '1');
INSERT INTO `g102` VALUES ('541', '23', '0', '5', '1');
INSERT INTO `g102` VALUES ('542', '23', '0', '6', '1');
INSERT INTO `g102` VALUES ('543', '23', '0', '7', '1');
INSERT INTO `g102` VALUES ('544', '23', '0', '8', '1');
INSERT INTO `g102` VALUES ('545', '23', '0', '1', '2');
INSERT INTO `g102` VALUES ('546', '23', '0', '2', '2');
INSERT INTO `g102` VALUES ('547', '23', '0', '3', '2');
INSERT INTO `g102` VALUES ('548', '23', '0', '4', '2');
INSERT INTO `g102` VALUES ('549', '23', '0', '5', '2');
INSERT INTO `g102` VALUES ('550', '23', '0', '6', '2');
INSERT INTO `g102` VALUES ('551', '23', '0', '7', '2');
INSERT INTO `g102` VALUES ('552', '23', '0', '8', '2');
INSERT INTO `g102` VALUES ('553', '24', '0', '1', '0');
INSERT INTO `g102` VALUES ('554', '24', '0', '2', '0');
INSERT INTO `g102` VALUES ('555', '24', '0', '3', '0');
INSERT INTO `g102` VALUES ('556', '24', '0', '4', '0');
INSERT INTO `g102` VALUES ('557', '24', '0', '5', '0');
INSERT INTO `g102` VALUES ('558', '24', '0', '6', '0');
INSERT INTO `g102` VALUES ('559', '24', '0', '7', '0');
INSERT INTO `g102` VALUES ('560', '24', '0', '8', '0');
INSERT INTO `g102` VALUES ('561', '24', '0', '1', '1');
INSERT INTO `g102` VALUES ('562', '24', '0', '2', '1');
INSERT INTO `g102` VALUES ('563', '24', '0', '3', '1');
INSERT INTO `g102` VALUES ('564', '24', '0', '4', '1');
INSERT INTO `g102` VALUES ('565', '24', '0', '5', '1');
INSERT INTO `g102` VALUES ('566', '24', '0', '6', '1');
INSERT INTO `g102` VALUES ('567', '24', '0', '7', '1');
INSERT INTO `g102` VALUES ('568', '24', '0', '8', '1');
INSERT INTO `g102` VALUES ('569', '24', '0', '1', '2');
INSERT INTO `g102` VALUES ('570', '24', '0', '2', '2');
INSERT INTO `g102` VALUES ('571', '24', '0', '3', '2');
INSERT INTO `g102` VALUES ('572', '24', '0', '4', '2');
INSERT INTO `g102` VALUES ('573', '24', '0', '5', '2');
INSERT INTO `g102` VALUES ('574', '24', '0', '6', '2');
INSERT INTO `g102` VALUES ('575', '24', '0', '7', '2');
INSERT INTO `g102` VALUES ('576', '24', '0', '8', '2');
INSERT INTO `g102` VALUES ('577', '25', '0', '1', '0');
INSERT INTO `g102` VALUES ('578', '25', '0', '2', '0');
INSERT INTO `g102` VALUES ('579', '25', '0', '3', '0');
INSERT INTO `g102` VALUES ('580', '25', '0', '4', '0');
INSERT INTO `g102` VALUES ('581', '25', '0', '5', '0');
INSERT INTO `g102` VALUES ('582', '25', '0', '6', '0');
INSERT INTO `g102` VALUES ('583', '25', '0', '7', '0');
INSERT INTO `g102` VALUES ('584', '25', '0', '8', '0');
INSERT INTO `g102` VALUES ('585', '25', '0', '1', '1');
INSERT INTO `g102` VALUES ('586', '25', '0', '2', '1');
INSERT INTO `g102` VALUES ('587', '25', '0', '3', '1');
INSERT INTO `g102` VALUES ('588', '25', '0', '4', '1');
INSERT INTO `g102` VALUES ('589', '25', '0', '5', '1');
INSERT INTO `g102` VALUES ('590', '25', '0', '6', '1');
INSERT INTO `g102` VALUES ('591', '25', '0', '7', '1');
INSERT INTO `g102` VALUES ('592', '25', '0', '8', '1');
INSERT INTO `g102` VALUES ('593', '25', '0', '1', '2');
INSERT INTO `g102` VALUES ('594', '25', '0', '2', '2');
INSERT INTO `g102` VALUES ('595', '25', '0', '3', '2');
INSERT INTO `g102` VALUES ('596', '25', '0', '4', '2');
INSERT INTO `g102` VALUES ('597', '25', '0', '5', '2');
INSERT INTO `g102` VALUES ('598', '25', '0', '6', '2');
INSERT INTO `g102` VALUES ('599', '25', '0', '7', '2');
INSERT INTO `g102` VALUES ('600', '25', '0', '8', '2');
INSERT INTO `g102` VALUES ('601', '26', '0', '1', '0');
INSERT INTO `g102` VALUES ('602', '26', '0', '2', '0');
INSERT INTO `g102` VALUES ('603', '26', '0', '3', '0');
INSERT INTO `g102` VALUES ('604', '26', '0', '4', '0');
INSERT INTO `g102` VALUES ('605', '26', '0', '5', '0');
INSERT INTO `g102` VALUES ('606', '26', '0', '6', '0');
INSERT INTO `g102` VALUES ('607', '26', '0', '7', '0');
INSERT INTO `g102` VALUES ('608', '26', '0', '8', '0');
INSERT INTO `g102` VALUES ('609', '26', '0', '1', '1');
INSERT INTO `g102` VALUES ('610', '26', '0', '2', '1');
INSERT INTO `g102` VALUES ('611', '26', '0', '3', '1');
INSERT INTO `g102` VALUES ('612', '26', '0', '4', '1');
INSERT INTO `g102` VALUES ('613', '26', '0', '5', '1');
INSERT INTO `g102` VALUES ('614', '26', '0', '6', '1');
INSERT INTO `g102` VALUES ('615', '26', '0', '7', '1');
INSERT INTO `g102` VALUES ('616', '26', '0', '8', '1');
INSERT INTO `g102` VALUES ('617', '26', '0', '1', '2');
INSERT INTO `g102` VALUES ('618', '26', '0', '2', '2');
INSERT INTO `g102` VALUES ('619', '26', '0', '3', '2');
INSERT INTO `g102` VALUES ('620', '26', '0', '4', '2');
INSERT INTO `g102` VALUES ('621', '26', '0', '5', '2');
INSERT INTO `g102` VALUES ('622', '26', '0', '6', '2');
INSERT INTO `g102` VALUES ('623', '26', '0', '7', '2');
INSERT INTO `g102` VALUES ('624', '26', '0', '8', '2');
INSERT INTO `g102` VALUES ('625', '27', '0', '1', '0');
INSERT INTO `g102` VALUES ('626', '27', '0', '2', '0');
INSERT INTO `g102` VALUES ('627', '27', '0', '3', '0');
INSERT INTO `g102` VALUES ('628', '27', '0', '4', '0');
INSERT INTO `g102` VALUES ('629', '27', '0', '5', '0');
INSERT INTO `g102` VALUES ('630', '27', '0', '6', '0');
INSERT INTO `g102` VALUES ('631', '27', '0', '7', '0');
INSERT INTO `g102` VALUES ('632', '27', '0', '8', '0');
INSERT INTO `g102` VALUES ('633', '27', '0', '1', '1');
INSERT INTO `g102` VALUES ('634', '27', '0', '2', '1');
INSERT INTO `g102` VALUES ('635', '27', '0', '3', '1');
INSERT INTO `g102` VALUES ('636', '27', '0', '4', '1');
INSERT INTO `g102` VALUES ('637', '27', '0', '5', '1');
INSERT INTO `g102` VALUES ('638', '27', '0', '6', '1');
INSERT INTO `g102` VALUES ('639', '27', '0', '7', '1');
INSERT INTO `g102` VALUES ('640', '27', '0', '8', '1');
INSERT INTO `g102` VALUES ('641', '27', '0', '1', '2');
INSERT INTO `g102` VALUES ('642', '27', '0', '2', '2');
INSERT INTO `g102` VALUES ('643', '27', '0', '3', '2');
INSERT INTO `g102` VALUES ('644', '27', '0', '4', '2');
INSERT INTO `g102` VALUES ('645', '27', '0', '5', '2');
INSERT INTO `g102` VALUES ('646', '27', '0', '6', '2');
INSERT INTO `g102` VALUES ('647', '27', '0', '7', '2');
INSERT INTO `g102` VALUES ('648', '27', '0', '8', '2');
INSERT INTO `g102` VALUES ('649', '28', '0', '1', '0');
INSERT INTO `g102` VALUES ('650', '28', '0', '2', '0');
INSERT INTO `g102` VALUES ('651', '28', '0', '3', '0');
INSERT INTO `g102` VALUES ('652', '28', '0', '4', '0');
INSERT INTO `g102` VALUES ('653', '28', '0', '5', '0');
INSERT INTO `g102` VALUES ('654', '28', '0', '6', '0');
INSERT INTO `g102` VALUES ('655', '28', '0', '7', '0');
INSERT INTO `g102` VALUES ('656', '28', '0', '8', '0');
INSERT INTO `g102` VALUES ('657', '28', '0', '1', '1');
INSERT INTO `g102` VALUES ('658', '28', '0', '2', '1');
INSERT INTO `g102` VALUES ('659', '28', '0', '3', '1');
INSERT INTO `g102` VALUES ('660', '28', '0', '4', '1');
INSERT INTO `g102` VALUES ('661', '28', '0', '5', '1');
INSERT INTO `g102` VALUES ('662', '28', '0', '6', '1');
INSERT INTO `g102` VALUES ('663', '28', '0', '7', '1');
INSERT INTO `g102` VALUES ('664', '28', '0', '8', '1');
INSERT INTO `g102` VALUES ('665', '28', '0', '1', '2');
INSERT INTO `g102` VALUES ('666', '28', '0', '2', '2');
INSERT INTO `g102` VALUES ('667', '28', '0', '3', '2');
INSERT INTO `g102` VALUES ('668', '28', '0', '4', '2');
INSERT INTO `g102` VALUES ('669', '28', '0', '5', '2');
INSERT INTO `g102` VALUES ('670', '28', '0', '6', '2');
INSERT INTO `g102` VALUES ('671', '28', '0', '7', '2');
INSERT INTO `g102` VALUES ('672', '28', '0', '8', '2');
INSERT INTO `g102` VALUES ('673', '29', '0', '1', '0');
INSERT INTO `g102` VALUES ('674', '29', '0', '2', '0');
INSERT INTO `g102` VALUES ('675', '29', '0', '3', '0');
INSERT INTO `g102` VALUES ('676', '29', '0', '4', '0');
INSERT INTO `g102` VALUES ('677', '29', '0', '5', '0');
INSERT INTO `g102` VALUES ('678', '29', '0', '6', '0');
INSERT INTO `g102` VALUES ('679', '29', '0', '7', '0');
INSERT INTO `g102` VALUES ('680', '29', '0', '8', '0');
INSERT INTO `g102` VALUES ('681', '29', '0', '1', '1');
INSERT INTO `g102` VALUES ('682', '29', '0', '2', '1');
INSERT INTO `g102` VALUES ('683', '29', '0', '3', '1');
INSERT INTO `g102` VALUES ('684', '29', '0', '4', '1');
INSERT INTO `g102` VALUES ('685', '29', '0', '5', '1');
INSERT INTO `g102` VALUES ('686', '29', '0', '6', '1');
INSERT INTO `g102` VALUES ('687', '29', '0', '7', '1');
INSERT INTO `g102` VALUES ('688', '29', '0', '8', '1');
INSERT INTO `g102` VALUES ('689', '29', '0', '1', '2');
INSERT INTO `g102` VALUES ('690', '29', '0', '2', '2');
INSERT INTO `g102` VALUES ('691', '29', '0', '3', '2');
INSERT INTO `g102` VALUES ('692', '29', '0', '4', '2');
INSERT INTO `g102` VALUES ('693', '29', '0', '5', '2');
INSERT INTO `g102` VALUES ('694', '29', '0', '6', '2');
INSERT INTO `g102` VALUES ('695', '29', '0', '7', '2');
INSERT INTO `g102` VALUES ('696', '29', '0', '8', '2');
INSERT INTO `g102` VALUES ('697', '30', '0', '1', '0');
INSERT INTO `g102` VALUES ('698', '30', '0', '2', '0');
INSERT INTO `g102` VALUES ('699', '30', '0', '3', '0');
INSERT INTO `g102` VALUES ('700', '30', '0', '4', '0');
INSERT INTO `g102` VALUES ('701', '30', '0', '5', '0');
INSERT INTO `g102` VALUES ('702', '30', '0', '6', '0');
INSERT INTO `g102` VALUES ('703', '30', '0', '7', '0');
INSERT INTO `g102` VALUES ('704', '30', '0', '8', '0');
INSERT INTO `g102` VALUES ('705', '30', '0', '1', '1');
INSERT INTO `g102` VALUES ('706', '30', '0', '2', '1');
INSERT INTO `g102` VALUES ('707', '30', '0', '3', '1');
INSERT INTO `g102` VALUES ('708', '30', '0', '4', '1');
INSERT INTO `g102` VALUES ('709', '30', '0', '5', '1');
INSERT INTO `g102` VALUES ('710', '30', '0', '6', '1');
INSERT INTO `g102` VALUES ('711', '30', '0', '7', '1');
INSERT INTO `g102` VALUES ('712', '30', '0', '8', '1');
INSERT INTO `g102` VALUES ('713', '30', '0', '1', '2');
INSERT INTO `g102` VALUES ('714', '30', '0', '2', '2');
INSERT INTO `g102` VALUES ('715', '30', '0', '3', '2');
INSERT INTO `g102` VALUES ('716', '30', '0', '4', '2');
INSERT INTO `g102` VALUES ('717', '30', '0', '5', '2');
INSERT INTO `g102` VALUES ('718', '30', '0', '6', '2');
INSERT INTO `g102` VALUES ('719', '30', '0', '7', '2');
INSERT INTO `g102` VALUES ('720', '30', '0', '8', '2');

-- ----------------------------
-- Table structure for `g103`
-- ----------------------------
DROP TABLE IF EXISTS `g103`;
CREATE TABLE `g103` (
  `seatid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键号',
  `seatname` int(11) DEFAULT NULL COMMENT '座位号',
  `seatstatue` varchar(255) DEFAULT NULL COMMENT '座位状态',
  `seatinterval` varchar(255) DEFAULT NULL COMMENT '区间归属',
  `seattype` varchar(255) DEFAULT NULL COMMENT '特1号车厢一2号车厢二3号车厢',
  PRIMARY KEY (`seatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='G130座位信息';

-- ----------------------------
-- Records of g103
-- ----------------------------
INSERT INTO `g103` VALUES ('1', '1', '0', '1', '0');
INSERT INTO `g103` VALUES ('2', '1', '0', '2', '0');
INSERT INTO `g103` VALUES ('3', '1', '0', '3', '0');
INSERT INTO `g103` VALUES ('4', '1', '0', '4', '0');
INSERT INTO `g103` VALUES ('5', '1', '0', '5', '0');
INSERT INTO `g103` VALUES ('6', '1', '0', '6', '0');
INSERT INTO `g103` VALUES ('7', '1', '0', '7', '0');
INSERT INTO `g103` VALUES ('8', '1', '0', '8', '0');
INSERT INTO `g103` VALUES ('9', '1', '0', '1', '1');
INSERT INTO `g103` VALUES ('10', '1', '0', '2', '1');
INSERT INTO `g103` VALUES ('11', '1', '0', '3', '1');
INSERT INTO `g103` VALUES ('12', '1', '0', '4', '1');
INSERT INTO `g103` VALUES ('13', '1', '0', '5', '1');
INSERT INTO `g103` VALUES ('14', '1', '0', '6', '1');
INSERT INTO `g103` VALUES ('15', '1', '0', '7', '1');
INSERT INTO `g103` VALUES ('16', '1', '0', '8', '1');
INSERT INTO `g103` VALUES ('17', '1', '0', '1', '2');
INSERT INTO `g103` VALUES ('18', '1', '0', '2', '2');
INSERT INTO `g103` VALUES ('19', '1', '0', '3', '2');
INSERT INTO `g103` VALUES ('20', '1', '0', '4', '2');
INSERT INTO `g103` VALUES ('21', '1', '0', '5', '2');
INSERT INTO `g103` VALUES ('22', '1', '0', '6', '2');
INSERT INTO `g103` VALUES ('23', '1', '0', '7', '2');
INSERT INTO `g103` VALUES ('24', '1', '0', '8', '2');
INSERT INTO `g103` VALUES ('25', '2', '0', '1', '0');
INSERT INTO `g103` VALUES ('26', '2', '0', '2', '0');
INSERT INTO `g103` VALUES ('27', '2', '0', '3', '0');
INSERT INTO `g103` VALUES ('28', '2', '0', '4', '0');
INSERT INTO `g103` VALUES ('29', '2', '0', '5', '0');
INSERT INTO `g103` VALUES ('30', '2', '0', '6', '0');
INSERT INTO `g103` VALUES ('31', '2', '0', '7', '0');
INSERT INTO `g103` VALUES ('32', '2', '0', '8', '0');
INSERT INTO `g103` VALUES ('33', '2', '0', '1', '1');
INSERT INTO `g103` VALUES ('34', '2', '0', '2', '1');
INSERT INTO `g103` VALUES ('35', '2', '0', '3', '1');
INSERT INTO `g103` VALUES ('36', '2', '0', '4', '1');
INSERT INTO `g103` VALUES ('37', '2', '0', '5', '1');
INSERT INTO `g103` VALUES ('38', '2', '0', '6', '1');
INSERT INTO `g103` VALUES ('39', '2', '0', '7', '1');
INSERT INTO `g103` VALUES ('40', '2', '0', '8', '1');
INSERT INTO `g103` VALUES ('41', '2', '0', '1', '2');
INSERT INTO `g103` VALUES ('42', '2', '0', '2', '2');
INSERT INTO `g103` VALUES ('43', '2', '0', '3', '2');
INSERT INTO `g103` VALUES ('44', '2', '0', '4', '2');
INSERT INTO `g103` VALUES ('45', '2', '0', '5', '2');
INSERT INTO `g103` VALUES ('46', '2', '0', '6', '2');
INSERT INTO `g103` VALUES ('47', '2', '0', '7', '2');
INSERT INTO `g103` VALUES ('48', '2', '0', '8', '2');
INSERT INTO `g103` VALUES ('49', '3', '0', '1', '0');
INSERT INTO `g103` VALUES ('50', '3', '0', '2', '0');
INSERT INTO `g103` VALUES ('51', '3', '0', '3', '0');
INSERT INTO `g103` VALUES ('52', '3', '0', '4', '0');
INSERT INTO `g103` VALUES ('53', '3', '0', '5', '0');
INSERT INTO `g103` VALUES ('54', '3', '0', '6', '0');
INSERT INTO `g103` VALUES ('55', '3', '0', '7', '0');
INSERT INTO `g103` VALUES ('56', '3', '0', '8', '0');
INSERT INTO `g103` VALUES ('57', '3', '0', '1', '1');
INSERT INTO `g103` VALUES ('58', '3', '0', '2', '1');
INSERT INTO `g103` VALUES ('59', '3', '0', '3', '1');
INSERT INTO `g103` VALUES ('60', '3', '0', '4', '1');
INSERT INTO `g103` VALUES ('61', '3', '0', '5', '1');
INSERT INTO `g103` VALUES ('62', '3', '0', '6', '1');
INSERT INTO `g103` VALUES ('63', '3', '0', '7', '1');
INSERT INTO `g103` VALUES ('64', '3', '0', '8', '1');
INSERT INTO `g103` VALUES ('65', '3', '0', '1', '2');
INSERT INTO `g103` VALUES ('66', '3', '0', '2', '2');
INSERT INTO `g103` VALUES ('67', '3', '0', '3', '2');
INSERT INTO `g103` VALUES ('68', '3', '0', '4', '2');
INSERT INTO `g103` VALUES ('69', '3', '0', '5', '2');
INSERT INTO `g103` VALUES ('70', '3', '0', '6', '2');
INSERT INTO `g103` VALUES ('71', '3', '0', '7', '2');
INSERT INTO `g103` VALUES ('72', '3', '0', '8', '2');
INSERT INTO `g103` VALUES ('73', '4', '0', '1', '0');
INSERT INTO `g103` VALUES ('74', '4', '0', '2', '0');
INSERT INTO `g103` VALUES ('75', '4', '0', '3', '0');
INSERT INTO `g103` VALUES ('76', '4', '0', '4', '0');
INSERT INTO `g103` VALUES ('77', '4', '0', '5', '0');
INSERT INTO `g103` VALUES ('78', '4', '0', '6', '0');
INSERT INTO `g103` VALUES ('79', '4', '0', '7', '0');
INSERT INTO `g103` VALUES ('80', '4', '0', '8', '0');
INSERT INTO `g103` VALUES ('81', '4', '0', '1', '1');
INSERT INTO `g103` VALUES ('82', '4', '0', '2', '1');
INSERT INTO `g103` VALUES ('83', '4', '0', '3', '1');
INSERT INTO `g103` VALUES ('84', '4', '0', '4', '1');
INSERT INTO `g103` VALUES ('85', '4', '0', '5', '1');
INSERT INTO `g103` VALUES ('86', '4', '0', '6', '1');
INSERT INTO `g103` VALUES ('87', '4', '0', '7', '1');
INSERT INTO `g103` VALUES ('88', '4', '0', '8', '1');
INSERT INTO `g103` VALUES ('89', '4', '0', '1', '2');
INSERT INTO `g103` VALUES ('90', '4', '0', '2', '2');
INSERT INTO `g103` VALUES ('91', '4', '0', '3', '2');
INSERT INTO `g103` VALUES ('92', '4', '0', '4', '2');
INSERT INTO `g103` VALUES ('93', '4', '0', '5', '2');
INSERT INTO `g103` VALUES ('94', '4', '0', '6', '2');
INSERT INTO `g103` VALUES ('95', '4', '0', '7', '2');
INSERT INTO `g103` VALUES ('96', '4', '0', '8', '2');
INSERT INTO `g103` VALUES ('97', '5', '0', '1', '0');
INSERT INTO `g103` VALUES ('98', '5', '0', '2', '0');
INSERT INTO `g103` VALUES ('99', '5', '0', '3', '0');
INSERT INTO `g103` VALUES ('100', '5', '0', '4', '0');
INSERT INTO `g103` VALUES ('101', '5', '0', '5', '0');
INSERT INTO `g103` VALUES ('102', '5', '0', '6', '0');
INSERT INTO `g103` VALUES ('103', '5', '0', '7', '0');
INSERT INTO `g103` VALUES ('104', '5', '0', '8', '0');
INSERT INTO `g103` VALUES ('105', '5', '0', '1', '1');
INSERT INTO `g103` VALUES ('106', '5', '0', '2', '1');
INSERT INTO `g103` VALUES ('107', '5', '0', '3', '1');
INSERT INTO `g103` VALUES ('108', '5', '0', '4', '1');
INSERT INTO `g103` VALUES ('109', '5', '0', '5', '1');
INSERT INTO `g103` VALUES ('110', '5', '0', '6', '1');
INSERT INTO `g103` VALUES ('111', '5', '0', '7', '1');
INSERT INTO `g103` VALUES ('112', '5', '0', '8', '1');
INSERT INTO `g103` VALUES ('113', '5', '0', '1', '2');
INSERT INTO `g103` VALUES ('114', '5', '0', '2', '2');
INSERT INTO `g103` VALUES ('115', '5', '0', '3', '2');
INSERT INTO `g103` VALUES ('116', '5', '0', '4', '2');
INSERT INTO `g103` VALUES ('117', '5', '0', '5', '2');
INSERT INTO `g103` VALUES ('118', '5', '0', '6', '2');
INSERT INTO `g103` VALUES ('119', '5', '0', '7', '2');
INSERT INTO `g103` VALUES ('120', '5', '0', '8', '2');
INSERT INTO `g103` VALUES ('121', '6', '0', '1', '0');
INSERT INTO `g103` VALUES ('122', '6', '0', '2', '0');
INSERT INTO `g103` VALUES ('123', '6', '0', '3', '0');
INSERT INTO `g103` VALUES ('124', '6', '0', '4', '0');
INSERT INTO `g103` VALUES ('125', '6', '0', '5', '0');
INSERT INTO `g103` VALUES ('126', '6', '0', '6', '0');
INSERT INTO `g103` VALUES ('127', '6', '0', '7', '0');
INSERT INTO `g103` VALUES ('128', '6', '0', '8', '0');
INSERT INTO `g103` VALUES ('129', '6', '0', '1', '1');
INSERT INTO `g103` VALUES ('130', '6', '0', '2', '1');
INSERT INTO `g103` VALUES ('131', '6', '0', '3', '1');
INSERT INTO `g103` VALUES ('132', '6', '0', '4', '1');
INSERT INTO `g103` VALUES ('133', '6', '0', '5', '1');
INSERT INTO `g103` VALUES ('134', '6', '0', '6', '1');
INSERT INTO `g103` VALUES ('135', '6', '0', '7', '1');
INSERT INTO `g103` VALUES ('136', '6', '0', '8', '1');
INSERT INTO `g103` VALUES ('137', '6', '0', '1', '2');
INSERT INTO `g103` VALUES ('138', '6', '0', '2', '2');
INSERT INTO `g103` VALUES ('139', '6', '0', '3', '2');
INSERT INTO `g103` VALUES ('140', '6', '0', '4', '2');
INSERT INTO `g103` VALUES ('141', '6', '0', '5', '2');
INSERT INTO `g103` VALUES ('142', '6', '0', '6', '2');
INSERT INTO `g103` VALUES ('143', '6', '0', '7', '2');
INSERT INTO `g103` VALUES ('144', '6', '0', '8', '2');
INSERT INTO `g103` VALUES ('145', '7', '0', '1', '0');
INSERT INTO `g103` VALUES ('146', '7', '0', '2', '0');
INSERT INTO `g103` VALUES ('147', '7', '0', '3', '0');
INSERT INTO `g103` VALUES ('148', '7', '0', '4', '0');
INSERT INTO `g103` VALUES ('149', '7', '0', '5', '0');
INSERT INTO `g103` VALUES ('150', '7', '0', '6', '0');
INSERT INTO `g103` VALUES ('151', '7', '0', '7', '0');
INSERT INTO `g103` VALUES ('152', '7', '0', '8', '0');
INSERT INTO `g103` VALUES ('153', '7', '0', '1', '1');
INSERT INTO `g103` VALUES ('154', '7', '0', '2', '1');
INSERT INTO `g103` VALUES ('155', '7', '0', '3', '1');
INSERT INTO `g103` VALUES ('156', '7', '0', '4', '1');
INSERT INTO `g103` VALUES ('157', '7', '0', '5', '1');
INSERT INTO `g103` VALUES ('158', '7', '0', '6', '1');
INSERT INTO `g103` VALUES ('159', '7', '0', '7', '1');
INSERT INTO `g103` VALUES ('160', '7', '0', '8', '1');
INSERT INTO `g103` VALUES ('161', '7', '0', '1', '2');
INSERT INTO `g103` VALUES ('162', '7', '0', '2', '2');
INSERT INTO `g103` VALUES ('163', '7', '0', '3', '2');
INSERT INTO `g103` VALUES ('164', '7', '0', '4', '2');
INSERT INTO `g103` VALUES ('165', '7', '0', '5', '2');
INSERT INTO `g103` VALUES ('166', '7', '0', '6', '2');
INSERT INTO `g103` VALUES ('167', '7', '0', '7', '2');
INSERT INTO `g103` VALUES ('168', '7', '0', '8', '2');
INSERT INTO `g103` VALUES ('169', '8', '0', '1', '0');
INSERT INTO `g103` VALUES ('170', '8', '0', '2', '0');
INSERT INTO `g103` VALUES ('171', '8', '0', '3', '0');
INSERT INTO `g103` VALUES ('172', '8', '0', '4', '0');
INSERT INTO `g103` VALUES ('173', '8', '0', '5', '0');
INSERT INTO `g103` VALUES ('174', '8', '0', '6', '0');
INSERT INTO `g103` VALUES ('175', '8', '0', '7', '0');
INSERT INTO `g103` VALUES ('176', '8', '0', '8', '0');
INSERT INTO `g103` VALUES ('177', '8', '0', '1', '1');
INSERT INTO `g103` VALUES ('178', '8', '0', '2', '1');
INSERT INTO `g103` VALUES ('179', '8', '0', '3', '1');
INSERT INTO `g103` VALUES ('180', '8', '0', '4', '1');
INSERT INTO `g103` VALUES ('181', '8', '0', '5', '1');
INSERT INTO `g103` VALUES ('182', '8', '0', '6', '1');
INSERT INTO `g103` VALUES ('183', '8', '0', '7', '1');
INSERT INTO `g103` VALUES ('184', '8', '0', '8', '1');
INSERT INTO `g103` VALUES ('185', '8', '0', '1', '2');
INSERT INTO `g103` VALUES ('186', '8', '0', '2', '2');
INSERT INTO `g103` VALUES ('187', '8', '0', '3', '2');
INSERT INTO `g103` VALUES ('188', '8', '0', '4', '2');
INSERT INTO `g103` VALUES ('189', '8', '0', '5', '2');
INSERT INTO `g103` VALUES ('190', '8', '0', '6', '2');
INSERT INTO `g103` VALUES ('191', '8', '0', '7', '2');
INSERT INTO `g103` VALUES ('192', '8', '0', '8', '2');
INSERT INTO `g103` VALUES ('193', '9', '0', '1', '0');
INSERT INTO `g103` VALUES ('194', '9', '0', '2', '0');
INSERT INTO `g103` VALUES ('195', '9', '0', '3', '0');
INSERT INTO `g103` VALUES ('196', '9', '0', '4', '0');
INSERT INTO `g103` VALUES ('197', '9', '0', '5', '0');
INSERT INTO `g103` VALUES ('198', '9', '0', '6', '0');
INSERT INTO `g103` VALUES ('199', '9', '0', '7', '0');
INSERT INTO `g103` VALUES ('200', '9', '0', '8', '0');
INSERT INTO `g103` VALUES ('201', '9', '0', '1', '1');
INSERT INTO `g103` VALUES ('202', '9', '0', '2', '1');
INSERT INTO `g103` VALUES ('203', '9', '0', '3', '1');
INSERT INTO `g103` VALUES ('204', '9', '0', '4', '1');
INSERT INTO `g103` VALUES ('205', '9', '0', '5', '1');
INSERT INTO `g103` VALUES ('206', '9', '0', '6', '1');
INSERT INTO `g103` VALUES ('207', '9', '0', '7', '1');
INSERT INTO `g103` VALUES ('208', '9', '0', '8', '1');
INSERT INTO `g103` VALUES ('209', '9', '0', '1', '2');
INSERT INTO `g103` VALUES ('210', '9', '0', '2', '2');
INSERT INTO `g103` VALUES ('211', '9', '0', '3', '2');
INSERT INTO `g103` VALUES ('212', '9', '0', '4', '2');
INSERT INTO `g103` VALUES ('213', '9', '0', '5', '2');
INSERT INTO `g103` VALUES ('214', '9', '0', '6', '2');
INSERT INTO `g103` VALUES ('215', '9', '0', '7', '2');
INSERT INTO `g103` VALUES ('216', '9', '0', '8', '2');
INSERT INTO `g103` VALUES ('217', '10', '0', '1', '0');
INSERT INTO `g103` VALUES ('218', '10', '0', '2', '0');
INSERT INTO `g103` VALUES ('219', '10', '0', '3', '0');
INSERT INTO `g103` VALUES ('220', '10', '0', '4', '0');
INSERT INTO `g103` VALUES ('221', '10', '0', '5', '0');
INSERT INTO `g103` VALUES ('222', '10', '0', '6', '0');
INSERT INTO `g103` VALUES ('223', '10', '0', '7', '0');
INSERT INTO `g103` VALUES ('224', '10', '0', '8', '0');
INSERT INTO `g103` VALUES ('225', '10', '0', '1', '1');
INSERT INTO `g103` VALUES ('226', '10', '0', '2', '1');
INSERT INTO `g103` VALUES ('227', '10', '0', '3', '1');
INSERT INTO `g103` VALUES ('228', '10', '0', '4', '1');
INSERT INTO `g103` VALUES ('229', '10', '0', '5', '1');
INSERT INTO `g103` VALUES ('230', '10', '0', '6', '1');
INSERT INTO `g103` VALUES ('231', '10', '0', '7', '1');
INSERT INTO `g103` VALUES ('232', '10', '0', '8', '1');
INSERT INTO `g103` VALUES ('233', '10', '0', '1', '2');
INSERT INTO `g103` VALUES ('234', '10', '0', '2', '2');
INSERT INTO `g103` VALUES ('235', '10', '0', '3', '2');
INSERT INTO `g103` VALUES ('236', '10', '0', '4', '2');
INSERT INTO `g103` VALUES ('237', '10', '0', '5', '2');
INSERT INTO `g103` VALUES ('238', '10', '0', '6', '2');
INSERT INTO `g103` VALUES ('239', '10', '0', '7', '2');
INSERT INTO `g103` VALUES ('240', '10', '0', '8', '2');
INSERT INTO `g103` VALUES ('241', '11', '0', '1', '0');
INSERT INTO `g103` VALUES ('242', '11', '0', '2', '0');
INSERT INTO `g103` VALUES ('243', '11', '0', '3', '0');
INSERT INTO `g103` VALUES ('244', '11', '0', '4', '0');
INSERT INTO `g103` VALUES ('245', '11', '0', '5', '0');
INSERT INTO `g103` VALUES ('246', '11', '0', '6', '0');
INSERT INTO `g103` VALUES ('247', '11', '0', '7', '0');
INSERT INTO `g103` VALUES ('248', '11', '0', '8', '0');
INSERT INTO `g103` VALUES ('249', '11', '0', '1', '1');
INSERT INTO `g103` VALUES ('250', '11', '0', '2', '1');
INSERT INTO `g103` VALUES ('251', '11', '0', '3', '1');
INSERT INTO `g103` VALUES ('252', '11', '0', '4', '1');
INSERT INTO `g103` VALUES ('253', '11', '0', '5', '1');
INSERT INTO `g103` VALUES ('254', '11', '0', '6', '1');
INSERT INTO `g103` VALUES ('255', '11', '0', '7', '1');
INSERT INTO `g103` VALUES ('256', '11', '0', '8', '1');
INSERT INTO `g103` VALUES ('257', '11', '0', '1', '2');
INSERT INTO `g103` VALUES ('258', '11', '0', '2', '2');
INSERT INTO `g103` VALUES ('259', '11', '0', '3', '2');
INSERT INTO `g103` VALUES ('260', '11', '0', '4', '2');
INSERT INTO `g103` VALUES ('261', '11', '0', '5', '2');
INSERT INTO `g103` VALUES ('262', '11', '0', '6', '2');
INSERT INTO `g103` VALUES ('263', '11', '0', '7', '2');
INSERT INTO `g103` VALUES ('264', '11', '0', '8', '2');
INSERT INTO `g103` VALUES ('265', '12', '0', '1', '0');
INSERT INTO `g103` VALUES ('266', '12', '0', '2', '0');
INSERT INTO `g103` VALUES ('267', '12', '0', '3', '0');
INSERT INTO `g103` VALUES ('268', '12', '0', '4', '0');
INSERT INTO `g103` VALUES ('269', '12', '0', '5', '0');
INSERT INTO `g103` VALUES ('270', '12', '0', '6', '0');
INSERT INTO `g103` VALUES ('271', '12', '0', '7', '0');
INSERT INTO `g103` VALUES ('272', '12', '0', '8', '0');
INSERT INTO `g103` VALUES ('273', '12', '0', '1', '1');
INSERT INTO `g103` VALUES ('274', '12', '0', '2', '1');
INSERT INTO `g103` VALUES ('275', '12', '0', '3', '1');
INSERT INTO `g103` VALUES ('276', '12', '0', '4', '1');
INSERT INTO `g103` VALUES ('277', '12', '0', '5', '1');
INSERT INTO `g103` VALUES ('278', '12', '0', '6', '1');
INSERT INTO `g103` VALUES ('279', '12', '0', '7', '1');
INSERT INTO `g103` VALUES ('280', '12', '0', '8', '1');
INSERT INTO `g103` VALUES ('281', '12', '0', '1', '2');
INSERT INTO `g103` VALUES ('282', '12', '0', '2', '2');
INSERT INTO `g103` VALUES ('283', '12', '0', '3', '2');
INSERT INTO `g103` VALUES ('284', '12', '0', '4', '2');
INSERT INTO `g103` VALUES ('285', '12', '0', '5', '2');
INSERT INTO `g103` VALUES ('286', '12', '0', '6', '2');
INSERT INTO `g103` VALUES ('287', '12', '0', '7', '2');
INSERT INTO `g103` VALUES ('288', '12', '0', '8', '2');
INSERT INTO `g103` VALUES ('289', '13', '0', '1', '0');
INSERT INTO `g103` VALUES ('290', '13', '0', '2', '0');
INSERT INTO `g103` VALUES ('291', '13', '0', '3', '0');
INSERT INTO `g103` VALUES ('292', '13', '0', '4', '0');
INSERT INTO `g103` VALUES ('293', '13', '0', '5', '0');
INSERT INTO `g103` VALUES ('294', '13', '0', '6', '0');
INSERT INTO `g103` VALUES ('295', '13', '0', '7', '0');
INSERT INTO `g103` VALUES ('296', '13', '0', '8', '0');
INSERT INTO `g103` VALUES ('297', '13', '0', '1', '1');
INSERT INTO `g103` VALUES ('298', '13', '0', '2', '1');
INSERT INTO `g103` VALUES ('299', '13', '0', '3', '1');
INSERT INTO `g103` VALUES ('300', '13', '0', '4', '1');
INSERT INTO `g103` VALUES ('301', '13', '0', '5', '1');
INSERT INTO `g103` VALUES ('302', '13', '0', '6', '1');
INSERT INTO `g103` VALUES ('303', '13', '0', '7', '1');
INSERT INTO `g103` VALUES ('304', '13', '0', '8', '1');
INSERT INTO `g103` VALUES ('305', '13', '1', '1', '2');
INSERT INTO `g103` VALUES ('306', '13', '1', '2', '2');
INSERT INTO `g103` VALUES ('307', '13', '1', '3', '2');
INSERT INTO `g103` VALUES ('308', '13', '1', '4', '2');
INSERT INTO `g103` VALUES ('309', '13', '1', '5', '2');
INSERT INTO `g103` VALUES ('310', '13', '1', '6', '2');
INSERT INTO `g103` VALUES ('311', '13', '1', '7', '2');
INSERT INTO `g103` VALUES ('312', '13', '1', '8', '2');
INSERT INTO `g103` VALUES ('313', '14', '0', '1', '0');
INSERT INTO `g103` VALUES ('314', '14', '0', '2', '0');
INSERT INTO `g103` VALUES ('315', '14', '0', '3', '0');
INSERT INTO `g103` VALUES ('316', '14', '0', '4', '0');
INSERT INTO `g103` VALUES ('317', '14', '0', '5', '0');
INSERT INTO `g103` VALUES ('318', '14', '0', '6', '0');
INSERT INTO `g103` VALUES ('319', '14', '0', '7', '0');
INSERT INTO `g103` VALUES ('320', '14', '0', '8', '0');
INSERT INTO `g103` VALUES ('321', '14', '0', '1', '1');
INSERT INTO `g103` VALUES ('322', '14', '0', '2', '1');
INSERT INTO `g103` VALUES ('323', '14', '0', '3', '1');
INSERT INTO `g103` VALUES ('324', '14', '0', '4', '1');
INSERT INTO `g103` VALUES ('325', '14', '0', '5', '1');
INSERT INTO `g103` VALUES ('326', '14', '0', '6', '1');
INSERT INTO `g103` VALUES ('327', '14', '0', '7', '1');
INSERT INTO `g103` VALUES ('328', '14', '0', '8', '1');
INSERT INTO `g103` VALUES ('329', '14', '0', '1', '2');
INSERT INTO `g103` VALUES ('330', '14', '0', '2', '2');
INSERT INTO `g103` VALUES ('331', '14', '0', '3', '2');
INSERT INTO `g103` VALUES ('332', '14', '0', '4', '2');
INSERT INTO `g103` VALUES ('333', '14', '0', '5', '2');
INSERT INTO `g103` VALUES ('334', '14', '0', '6', '2');
INSERT INTO `g103` VALUES ('335', '14', '0', '7', '2');
INSERT INTO `g103` VALUES ('336', '14', '0', '8', '2');
INSERT INTO `g103` VALUES ('337', '15', '0', '1', '0');
INSERT INTO `g103` VALUES ('338', '15', '0', '2', '0');
INSERT INTO `g103` VALUES ('339', '15', '0', '3', '0');
INSERT INTO `g103` VALUES ('340', '15', '0', '4', '0');
INSERT INTO `g103` VALUES ('341', '15', '0', '5', '0');
INSERT INTO `g103` VALUES ('342', '15', '0', '6', '0');
INSERT INTO `g103` VALUES ('343', '15', '0', '7', '0');
INSERT INTO `g103` VALUES ('344', '15', '0', '8', '0');
INSERT INTO `g103` VALUES ('345', '15', '0', '1', '1');
INSERT INTO `g103` VALUES ('346', '15', '0', '2', '1');
INSERT INTO `g103` VALUES ('347', '15', '0', '3', '1');
INSERT INTO `g103` VALUES ('348', '15', '0', '4', '1');
INSERT INTO `g103` VALUES ('349', '15', '0', '5', '1');
INSERT INTO `g103` VALUES ('350', '15', '0', '6', '1');
INSERT INTO `g103` VALUES ('351', '15', '0', '7', '1');
INSERT INTO `g103` VALUES ('352', '15', '0', '8', '1');
INSERT INTO `g103` VALUES ('353', '15', '0', '1', '2');
INSERT INTO `g103` VALUES ('354', '15', '0', '2', '2');
INSERT INTO `g103` VALUES ('355', '15', '0', '3', '2');
INSERT INTO `g103` VALUES ('356', '15', '0', '4', '2');
INSERT INTO `g103` VALUES ('357', '15', '0', '5', '2');
INSERT INTO `g103` VALUES ('358', '15', '0', '6', '2');
INSERT INTO `g103` VALUES ('359', '15', '0', '7', '2');
INSERT INTO `g103` VALUES ('360', '15', '0', '8', '2');
INSERT INTO `g103` VALUES ('361', '16', '0', '1', '0');
INSERT INTO `g103` VALUES ('362', '16', '0', '2', '0');
INSERT INTO `g103` VALUES ('363', '16', '0', '3', '0');
INSERT INTO `g103` VALUES ('364', '16', '0', '4', '0');
INSERT INTO `g103` VALUES ('365', '16', '0', '5', '0');
INSERT INTO `g103` VALUES ('366', '16', '0', '6', '0');
INSERT INTO `g103` VALUES ('367', '16', '0', '7', '0');
INSERT INTO `g103` VALUES ('368', '16', '0', '8', '0');
INSERT INTO `g103` VALUES ('369', '16', '0', '1', '1');
INSERT INTO `g103` VALUES ('370', '16', '0', '2', '1');
INSERT INTO `g103` VALUES ('371', '16', '0', '3', '1');
INSERT INTO `g103` VALUES ('372', '16', '0', '4', '1');
INSERT INTO `g103` VALUES ('373', '16', '0', '5', '1');
INSERT INTO `g103` VALUES ('374', '16', '0', '6', '1');
INSERT INTO `g103` VALUES ('375', '16', '0', '7', '1');
INSERT INTO `g103` VALUES ('376', '16', '0', '8', '1');
INSERT INTO `g103` VALUES ('377', '16', '0', '1', '2');
INSERT INTO `g103` VALUES ('378', '16', '0', '2', '2');
INSERT INTO `g103` VALUES ('379', '16', '0', '3', '2');
INSERT INTO `g103` VALUES ('380', '16', '0', '4', '2');
INSERT INTO `g103` VALUES ('381', '16', '0', '5', '2');
INSERT INTO `g103` VALUES ('382', '16', '0', '6', '2');
INSERT INTO `g103` VALUES ('383', '16', '0', '7', '2');
INSERT INTO `g103` VALUES ('384', '16', '0', '8', '2');
INSERT INTO `g103` VALUES ('385', '17', '0', '1', '0');
INSERT INTO `g103` VALUES ('386', '17', '0', '2', '0');
INSERT INTO `g103` VALUES ('387', '17', '0', '3', '0');
INSERT INTO `g103` VALUES ('388', '17', '0', '4', '0');
INSERT INTO `g103` VALUES ('389', '17', '0', '5', '0');
INSERT INTO `g103` VALUES ('390', '17', '0', '6', '0');
INSERT INTO `g103` VALUES ('391', '17', '0', '7', '0');
INSERT INTO `g103` VALUES ('392', '17', '0', '8', '0');
INSERT INTO `g103` VALUES ('393', '17', '0', '1', '1');
INSERT INTO `g103` VALUES ('394', '17', '0', '2', '1');
INSERT INTO `g103` VALUES ('395', '17', '0', '3', '1');
INSERT INTO `g103` VALUES ('396', '17', '0', '4', '1');
INSERT INTO `g103` VALUES ('397', '17', '0', '5', '1');
INSERT INTO `g103` VALUES ('398', '17', '0', '6', '1');
INSERT INTO `g103` VALUES ('399', '17', '0', '7', '1');
INSERT INTO `g103` VALUES ('400', '17', '0', '8', '1');
INSERT INTO `g103` VALUES ('401', '17', '0', '1', '2');
INSERT INTO `g103` VALUES ('402', '17', '0', '2', '2');
INSERT INTO `g103` VALUES ('403', '17', '0', '3', '2');
INSERT INTO `g103` VALUES ('404', '17', '0', '4', '2');
INSERT INTO `g103` VALUES ('405', '17', '0', '5', '2');
INSERT INTO `g103` VALUES ('406', '17', '0', '6', '2');
INSERT INTO `g103` VALUES ('407', '17', '0', '7', '2');
INSERT INTO `g103` VALUES ('408', '17', '0', '8', '2');
INSERT INTO `g103` VALUES ('409', '18', '1', '1', '0');
INSERT INTO `g103` VALUES ('410', '18', '1', '2', '0');
INSERT INTO `g103` VALUES ('411', '18', '0', '3', '0');
INSERT INTO `g103` VALUES ('412', '18', '0', '4', '0');
INSERT INTO `g103` VALUES ('413', '18', '0', '5', '0');
INSERT INTO `g103` VALUES ('414', '18', '0', '6', '0');
INSERT INTO `g103` VALUES ('415', '18', '0', '7', '0');
INSERT INTO `g103` VALUES ('416', '18', '0', '8', '0');
INSERT INTO `g103` VALUES ('417', '18', '0', '1', '1');
INSERT INTO `g103` VALUES ('418', '18', '0', '2', '1');
INSERT INTO `g103` VALUES ('419', '18', '0', '3', '1');
INSERT INTO `g103` VALUES ('420', '18', '0', '4', '1');
INSERT INTO `g103` VALUES ('421', '18', '0', '5', '1');
INSERT INTO `g103` VALUES ('422', '18', '0', '6', '1');
INSERT INTO `g103` VALUES ('423', '18', '0', '7', '1');
INSERT INTO `g103` VALUES ('424', '18', '0', '8', '1');
INSERT INTO `g103` VALUES ('425', '18', '0', '1', '2');
INSERT INTO `g103` VALUES ('426', '18', '0', '2', '2');
INSERT INTO `g103` VALUES ('427', '18', '0', '3', '2');
INSERT INTO `g103` VALUES ('428', '18', '0', '4', '2');
INSERT INTO `g103` VALUES ('429', '18', '0', '5', '2');
INSERT INTO `g103` VALUES ('430', '18', '0', '6', '2');
INSERT INTO `g103` VALUES ('431', '18', '0', '7', '2');
INSERT INTO `g103` VALUES ('432', '18', '0', '8', '2');
INSERT INTO `g103` VALUES ('433', '19', '0', '1', '0');
INSERT INTO `g103` VALUES ('434', '19', '0', '2', '0');
INSERT INTO `g103` VALUES ('435', '19', '0', '3', '0');
INSERT INTO `g103` VALUES ('436', '19', '0', '4', '0');
INSERT INTO `g103` VALUES ('437', '19', '0', '5', '0');
INSERT INTO `g103` VALUES ('438', '19', '0', '6', '0');
INSERT INTO `g103` VALUES ('439', '19', '0', '7', '0');
INSERT INTO `g103` VALUES ('440', '19', '0', '8', '0');
INSERT INTO `g103` VALUES ('441', '19', '0', '1', '1');
INSERT INTO `g103` VALUES ('442', '19', '0', '2', '1');
INSERT INTO `g103` VALUES ('443', '19', '0', '3', '1');
INSERT INTO `g103` VALUES ('444', '19', '0', '4', '1');
INSERT INTO `g103` VALUES ('445', '19', '0', '5', '1');
INSERT INTO `g103` VALUES ('446', '19', '0', '6', '1');
INSERT INTO `g103` VALUES ('447', '19', '0', '7', '1');
INSERT INTO `g103` VALUES ('448', '19', '0', '8', '1');
INSERT INTO `g103` VALUES ('449', '19', '0', '1', '2');
INSERT INTO `g103` VALUES ('450', '19', '0', '2', '2');
INSERT INTO `g103` VALUES ('451', '19', '0', '3', '2');
INSERT INTO `g103` VALUES ('452', '19', '0', '4', '2');
INSERT INTO `g103` VALUES ('453', '19', '0', '5', '2');
INSERT INTO `g103` VALUES ('454', '19', '0', '6', '2');
INSERT INTO `g103` VALUES ('455', '19', '0', '7', '2');
INSERT INTO `g103` VALUES ('456', '19', '0', '8', '2');
INSERT INTO `g103` VALUES ('457', '20', '0', '1', '0');
INSERT INTO `g103` VALUES ('458', '20', '0', '2', '0');
INSERT INTO `g103` VALUES ('459', '20', '0', '3', '0');
INSERT INTO `g103` VALUES ('460', '20', '0', '4', '0');
INSERT INTO `g103` VALUES ('461', '20', '0', '5', '0');
INSERT INTO `g103` VALUES ('462', '20', '0', '6', '0');
INSERT INTO `g103` VALUES ('463', '20', '0', '7', '0');
INSERT INTO `g103` VALUES ('464', '20', '0', '8', '0');
INSERT INTO `g103` VALUES ('465', '20', '0', '1', '1');
INSERT INTO `g103` VALUES ('466', '20', '0', '2', '1');
INSERT INTO `g103` VALUES ('467', '20', '0', '3', '1');
INSERT INTO `g103` VALUES ('468', '20', '0', '4', '1');
INSERT INTO `g103` VALUES ('469', '20', '0', '5', '1');
INSERT INTO `g103` VALUES ('470', '20', '0', '6', '1');
INSERT INTO `g103` VALUES ('471', '20', '0', '7', '1');
INSERT INTO `g103` VALUES ('472', '20', '0', '8', '1');
INSERT INTO `g103` VALUES ('473', '20', '0', '1', '2');
INSERT INTO `g103` VALUES ('474', '20', '0', '2', '2');
INSERT INTO `g103` VALUES ('475', '20', '0', '3', '2');
INSERT INTO `g103` VALUES ('476', '20', '0', '4', '2');
INSERT INTO `g103` VALUES ('477', '20', '0', '5', '2');
INSERT INTO `g103` VALUES ('478', '20', '0', '6', '2');
INSERT INTO `g103` VALUES ('479', '20', '0', '7', '2');
INSERT INTO `g103` VALUES ('480', '20', '0', '8', '2');
INSERT INTO `g103` VALUES ('481', '21', '0', '1', '0');
INSERT INTO `g103` VALUES ('482', '21', '0', '2', '0');
INSERT INTO `g103` VALUES ('483', '21', '0', '3', '0');
INSERT INTO `g103` VALUES ('484', '21', '0', '4', '0');
INSERT INTO `g103` VALUES ('485', '21', '0', '5', '0');
INSERT INTO `g103` VALUES ('486', '21', '0', '6', '0');
INSERT INTO `g103` VALUES ('487', '21', '0', '7', '0');
INSERT INTO `g103` VALUES ('488', '21', '0', '8', '0');
INSERT INTO `g103` VALUES ('489', '21', '0', '1', '1');
INSERT INTO `g103` VALUES ('490', '21', '0', '2', '1');
INSERT INTO `g103` VALUES ('491', '21', '0', '3', '1');
INSERT INTO `g103` VALUES ('492', '21', '0', '4', '1');
INSERT INTO `g103` VALUES ('493', '21', '0', '5', '1');
INSERT INTO `g103` VALUES ('494', '21', '0', '6', '1');
INSERT INTO `g103` VALUES ('495', '21', '0', '7', '1');
INSERT INTO `g103` VALUES ('496', '21', '0', '8', '1');
INSERT INTO `g103` VALUES ('497', '21', '0', '1', '2');
INSERT INTO `g103` VALUES ('498', '21', '0', '2', '2');
INSERT INTO `g103` VALUES ('499', '21', '0', '3', '2');
INSERT INTO `g103` VALUES ('500', '21', '0', '4', '2');
INSERT INTO `g103` VALUES ('501', '21', '0', '5', '2');
INSERT INTO `g103` VALUES ('502', '21', '0', '6', '2');
INSERT INTO `g103` VALUES ('503', '21', '0', '7', '2');
INSERT INTO `g103` VALUES ('504', '21', '0', '8', '2');
INSERT INTO `g103` VALUES ('505', '22', '0', '1', '0');
INSERT INTO `g103` VALUES ('506', '22', '0', '2', '0');
INSERT INTO `g103` VALUES ('507', '22', '0', '3', '0');
INSERT INTO `g103` VALUES ('508', '22', '0', '4', '0');
INSERT INTO `g103` VALUES ('509', '22', '0', '5', '0');
INSERT INTO `g103` VALUES ('510', '22', '0', '6', '0');
INSERT INTO `g103` VALUES ('511', '22', '0', '7', '0');
INSERT INTO `g103` VALUES ('512', '22', '0', '8', '0');
INSERT INTO `g103` VALUES ('513', '22', '0', '1', '1');
INSERT INTO `g103` VALUES ('514', '22', '0', '2', '1');
INSERT INTO `g103` VALUES ('515', '22', '0', '3', '1');
INSERT INTO `g103` VALUES ('516', '22', '0', '4', '1');
INSERT INTO `g103` VALUES ('517', '22', '0', '5', '1');
INSERT INTO `g103` VALUES ('518', '22', '0', '6', '1');
INSERT INTO `g103` VALUES ('519', '22', '0', '7', '1');
INSERT INTO `g103` VALUES ('520', '22', '0', '8', '1');
INSERT INTO `g103` VALUES ('521', '22', '0', '1', '2');
INSERT INTO `g103` VALUES ('522', '22', '0', '2', '2');
INSERT INTO `g103` VALUES ('523', '22', '0', '3', '2');
INSERT INTO `g103` VALUES ('524', '22', '0', '4', '2');
INSERT INTO `g103` VALUES ('525', '22', '0', '5', '2');
INSERT INTO `g103` VALUES ('526', '22', '0', '6', '2');
INSERT INTO `g103` VALUES ('527', '22', '0', '7', '2');
INSERT INTO `g103` VALUES ('528', '22', '0', '8', '2');
INSERT INTO `g103` VALUES ('529', '23', '0', '1', '0');
INSERT INTO `g103` VALUES ('530', '23', '0', '2', '0');
INSERT INTO `g103` VALUES ('531', '23', '0', '3', '0');
INSERT INTO `g103` VALUES ('532', '23', '0', '4', '0');
INSERT INTO `g103` VALUES ('533', '23', '0', '5', '0');
INSERT INTO `g103` VALUES ('534', '23', '0', '6', '0');
INSERT INTO `g103` VALUES ('535', '23', '0', '7', '0');
INSERT INTO `g103` VALUES ('536', '23', '0', '8', '0');
INSERT INTO `g103` VALUES ('537', '23', '0', '1', '1');
INSERT INTO `g103` VALUES ('538', '23', '0', '2', '1');
INSERT INTO `g103` VALUES ('539', '23', '0', '3', '1');
INSERT INTO `g103` VALUES ('540', '23', '0', '4', '1');
INSERT INTO `g103` VALUES ('541', '23', '0', '5', '1');
INSERT INTO `g103` VALUES ('542', '23', '0', '6', '1');
INSERT INTO `g103` VALUES ('543', '23', '0', '7', '1');
INSERT INTO `g103` VALUES ('544', '23', '0', '8', '1');
INSERT INTO `g103` VALUES ('545', '23', '0', '1', '2');
INSERT INTO `g103` VALUES ('546', '23', '0', '2', '2');
INSERT INTO `g103` VALUES ('547', '23', '0', '3', '2');
INSERT INTO `g103` VALUES ('548', '23', '0', '4', '2');
INSERT INTO `g103` VALUES ('549', '23', '0', '5', '2');
INSERT INTO `g103` VALUES ('550', '23', '0', '6', '2');
INSERT INTO `g103` VALUES ('551', '23', '0', '7', '2');
INSERT INTO `g103` VALUES ('552', '23', '0', '8', '2');
INSERT INTO `g103` VALUES ('553', '24', '0', '1', '0');
INSERT INTO `g103` VALUES ('554', '24', '0', '2', '0');
INSERT INTO `g103` VALUES ('555', '24', '0', '3', '0');
INSERT INTO `g103` VALUES ('556', '24', '0', '4', '0');
INSERT INTO `g103` VALUES ('557', '24', '0', '5', '0');
INSERT INTO `g103` VALUES ('558', '24', '0', '6', '0');
INSERT INTO `g103` VALUES ('559', '24', '0', '7', '0');
INSERT INTO `g103` VALUES ('560', '24', '0', '8', '0');
INSERT INTO `g103` VALUES ('561', '24', '0', '1', '1');
INSERT INTO `g103` VALUES ('562', '24', '0', '2', '1');
INSERT INTO `g103` VALUES ('563', '24', '0', '3', '1');
INSERT INTO `g103` VALUES ('564', '24', '0', '4', '1');
INSERT INTO `g103` VALUES ('565', '24', '0', '5', '1');
INSERT INTO `g103` VALUES ('566', '24', '0', '6', '1');
INSERT INTO `g103` VALUES ('567', '24', '0', '7', '1');
INSERT INTO `g103` VALUES ('568', '24', '0', '8', '1');
INSERT INTO `g103` VALUES ('569', '24', '0', '1', '2');
INSERT INTO `g103` VALUES ('570', '24', '0', '2', '2');
INSERT INTO `g103` VALUES ('571', '24', '0', '3', '2');
INSERT INTO `g103` VALUES ('572', '24', '0', '4', '2');
INSERT INTO `g103` VALUES ('573', '24', '0', '5', '2');
INSERT INTO `g103` VALUES ('574', '24', '0', '6', '2');
INSERT INTO `g103` VALUES ('575', '24', '0', '7', '2');
INSERT INTO `g103` VALUES ('576', '24', '0', '8', '2');
INSERT INTO `g103` VALUES ('577', '25', '0', '1', '0');
INSERT INTO `g103` VALUES ('578', '25', '0', '2', '0');
INSERT INTO `g103` VALUES ('579', '25', '0', '3', '0');
INSERT INTO `g103` VALUES ('580', '25', '0', '4', '0');
INSERT INTO `g103` VALUES ('581', '25', '0', '5', '0');
INSERT INTO `g103` VALUES ('582', '25', '0', '6', '0');
INSERT INTO `g103` VALUES ('583', '25', '0', '7', '0');
INSERT INTO `g103` VALUES ('584', '25', '0', '8', '0');
INSERT INTO `g103` VALUES ('585', '25', '0', '1', '1');
INSERT INTO `g103` VALUES ('586', '25', '0', '2', '1');
INSERT INTO `g103` VALUES ('587', '25', '0', '3', '1');
INSERT INTO `g103` VALUES ('588', '25', '0', '4', '1');
INSERT INTO `g103` VALUES ('589', '25', '0', '5', '1');
INSERT INTO `g103` VALUES ('590', '25', '0', '6', '1');
INSERT INTO `g103` VALUES ('591', '25', '0', '7', '1');
INSERT INTO `g103` VALUES ('592', '25', '0', '8', '1');
INSERT INTO `g103` VALUES ('593', '25', '0', '1', '2');
INSERT INTO `g103` VALUES ('594', '25', '0', '2', '2');
INSERT INTO `g103` VALUES ('595', '25', '0', '3', '2');
INSERT INTO `g103` VALUES ('596', '25', '0', '4', '2');
INSERT INTO `g103` VALUES ('597', '25', '0', '5', '2');
INSERT INTO `g103` VALUES ('598', '25', '0', '6', '2');
INSERT INTO `g103` VALUES ('599', '25', '0', '7', '2');
INSERT INTO `g103` VALUES ('600', '25', '0', '8', '2');
INSERT INTO `g103` VALUES ('601', '26', '0', '1', '0');
INSERT INTO `g103` VALUES ('602', '26', '0', '2', '0');
INSERT INTO `g103` VALUES ('603', '26', '0', '3', '0');
INSERT INTO `g103` VALUES ('604', '26', '0', '4', '0');
INSERT INTO `g103` VALUES ('605', '26', '0', '5', '0');
INSERT INTO `g103` VALUES ('606', '26', '0', '6', '0');
INSERT INTO `g103` VALUES ('607', '26', '0', '7', '0');
INSERT INTO `g103` VALUES ('608', '26', '0', '8', '0');
INSERT INTO `g103` VALUES ('609', '26', '0', '1', '1');
INSERT INTO `g103` VALUES ('610', '26', '0', '2', '1');
INSERT INTO `g103` VALUES ('611', '26', '0', '3', '1');
INSERT INTO `g103` VALUES ('612', '26', '0', '4', '1');
INSERT INTO `g103` VALUES ('613', '26', '0', '5', '1');
INSERT INTO `g103` VALUES ('614', '26', '0', '6', '1');
INSERT INTO `g103` VALUES ('615', '26', '0', '7', '1');
INSERT INTO `g103` VALUES ('616', '26', '0', '8', '1');
INSERT INTO `g103` VALUES ('617', '26', '0', '1', '2');
INSERT INTO `g103` VALUES ('618', '26', '0', '2', '2');
INSERT INTO `g103` VALUES ('619', '26', '0', '3', '2');
INSERT INTO `g103` VALUES ('620', '26', '0', '4', '2');
INSERT INTO `g103` VALUES ('621', '26', '0', '5', '2');
INSERT INTO `g103` VALUES ('622', '26', '0', '6', '2');
INSERT INTO `g103` VALUES ('623', '26', '0', '7', '2');
INSERT INTO `g103` VALUES ('624', '26', '0', '8', '2');
INSERT INTO `g103` VALUES ('625', '27', '0', '1', '0');
INSERT INTO `g103` VALUES ('626', '27', '0', '2', '0');
INSERT INTO `g103` VALUES ('627', '27', '0', '3', '0');
INSERT INTO `g103` VALUES ('628', '27', '0', '4', '0');
INSERT INTO `g103` VALUES ('629', '27', '0', '5', '0');
INSERT INTO `g103` VALUES ('630', '27', '0', '6', '0');
INSERT INTO `g103` VALUES ('631', '27', '0', '7', '0');
INSERT INTO `g103` VALUES ('632', '27', '0', '8', '0');
INSERT INTO `g103` VALUES ('633', '27', '0', '1', '1');
INSERT INTO `g103` VALUES ('634', '27', '0', '2', '1');
INSERT INTO `g103` VALUES ('635', '27', '0', '3', '1');
INSERT INTO `g103` VALUES ('636', '27', '0', '4', '1');
INSERT INTO `g103` VALUES ('637', '27', '0', '5', '1');
INSERT INTO `g103` VALUES ('638', '27', '0', '6', '1');
INSERT INTO `g103` VALUES ('639', '27', '0', '7', '1');
INSERT INTO `g103` VALUES ('640', '27', '0', '8', '1');
INSERT INTO `g103` VALUES ('641', '27', '0', '1', '2');
INSERT INTO `g103` VALUES ('642', '27', '0', '2', '2');
INSERT INTO `g103` VALUES ('643', '27', '0', '3', '2');
INSERT INTO `g103` VALUES ('644', '27', '0', '4', '2');
INSERT INTO `g103` VALUES ('645', '27', '0', '5', '2');
INSERT INTO `g103` VALUES ('646', '27', '0', '6', '2');
INSERT INTO `g103` VALUES ('647', '27', '0', '7', '2');
INSERT INTO `g103` VALUES ('648', '27', '0', '8', '2');
INSERT INTO `g103` VALUES ('649', '28', '0', '1', '0');
INSERT INTO `g103` VALUES ('650', '28', '0', '2', '0');
INSERT INTO `g103` VALUES ('651', '28', '0', '3', '0');
INSERT INTO `g103` VALUES ('652', '28', '0', '4', '0');
INSERT INTO `g103` VALUES ('653', '28', '0', '5', '0');
INSERT INTO `g103` VALUES ('654', '28', '0', '6', '0');
INSERT INTO `g103` VALUES ('655', '28', '0', '7', '0');
INSERT INTO `g103` VALUES ('656', '28', '0', '8', '0');
INSERT INTO `g103` VALUES ('657', '28', '0', '1', '1');
INSERT INTO `g103` VALUES ('658', '28', '0', '2', '1');
INSERT INTO `g103` VALUES ('659', '28', '0', '3', '1');
INSERT INTO `g103` VALUES ('660', '28', '0', '4', '1');
INSERT INTO `g103` VALUES ('661', '28', '0', '5', '1');
INSERT INTO `g103` VALUES ('662', '28', '0', '6', '1');
INSERT INTO `g103` VALUES ('663', '28', '0', '7', '1');
INSERT INTO `g103` VALUES ('664', '28', '0', '8', '1');
INSERT INTO `g103` VALUES ('665', '28', '0', '1', '2');
INSERT INTO `g103` VALUES ('666', '28', '0', '2', '2');
INSERT INTO `g103` VALUES ('667', '28', '0', '3', '2');
INSERT INTO `g103` VALUES ('668', '28', '0', '4', '2');
INSERT INTO `g103` VALUES ('669', '28', '0', '5', '2');
INSERT INTO `g103` VALUES ('670', '28', '0', '6', '2');
INSERT INTO `g103` VALUES ('671', '28', '0', '7', '2');
INSERT INTO `g103` VALUES ('672', '28', '0', '8', '2');
INSERT INTO `g103` VALUES ('673', '29', '0', '1', '0');
INSERT INTO `g103` VALUES ('674', '29', '0', '2', '0');
INSERT INTO `g103` VALUES ('675', '29', '0', '3', '0');
INSERT INTO `g103` VALUES ('676', '29', '0', '4', '0');
INSERT INTO `g103` VALUES ('677', '29', '0', '5', '0');
INSERT INTO `g103` VALUES ('678', '29', '0', '6', '0');
INSERT INTO `g103` VALUES ('679', '29', '0', '7', '0');
INSERT INTO `g103` VALUES ('680', '29', '0', '8', '0');
INSERT INTO `g103` VALUES ('681', '29', '0', '1', '1');
INSERT INTO `g103` VALUES ('682', '29', '0', '2', '1');
INSERT INTO `g103` VALUES ('683', '29', '0', '3', '1');
INSERT INTO `g103` VALUES ('684', '29', '0', '4', '1');
INSERT INTO `g103` VALUES ('685', '29', '0', '5', '1');
INSERT INTO `g103` VALUES ('686', '29', '0', '6', '1');
INSERT INTO `g103` VALUES ('687', '29', '0', '7', '1');
INSERT INTO `g103` VALUES ('688', '29', '0', '8', '1');
INSERT INTO `g103` VALUES ('689', '29', '0', '1', '2');
INSERT INTO `g103` VALUES ('690', '29', '0', '2', '2');
INSERT INTO `g103` VALUES ('691', '29', '0', '3', '2');
INSERT INTO `g103` VALUES ('692', '29', '0', '4', '2');
INSERT INTO `g103` VALUES ('693', '29', '0', '5', '2');
INSERT INTO `g103` VALUES ('694', '29', '0', '6', '2');
INSERT INTO `g103` VALUES ('695', '29', '0', '7', '2');
INSERT INTO `g103` VALUES ('696', '29', '0', '8', '2');
INSERT INTO `g103` VALUES ('697', '30', '0', '1', '0');
INSERT INTO `g103` VALUES ('698', '30', '0', '2', '0');
INSERT INTO `g103` VALUES ('699', '30', '0', '3', '0');
INSERT INTO `g103` VALUES ('700', '30', '0', '4', '0');
INSERT INTO `g103` VALUES ('701', '30', '0', '5', '0');
INSERT INTO `g103` VALUES ('702', '30', '0', '6', '0');
INSERT INTO `g103` VALUES ('703', '30', '0', '7', '0');
INSERT INTO `g103` VALUES ('704', '30', '0', '8', '0');
INSERT INTO `g103` VALUES ('705', '30', '0', '1', '1');
INSERT INTO `g103` VALUES ('706', '30', '0', '2', '1');
INSERT INTO `g103` VALUES ('707', '30', '0', '3', '1');
INSERT INTO `g103` VALUES ('708', '30', '0', '4', '1');
INSERT INTO `g103` VALUES ('709', '30', '0', '5', '1');
INSERT INTO `g103` VALUES ('710', '30', '0', '6', '1');
INSERT INTO `g103` VALUES ('711', '30', '0', '7', '1');
INSERT INTO `g103` VALUES ('712', '30', '0', '8', '1');
INSERT INTO `g103` VALUES ('713', '30', '0', '1', '2');
INSERT INTO `g103` VALUES ('714', '30', '0', '2', '2');
INSERT INTO `g103` VALUES ('715', '30', '0', '3', '2');
INSERT INTO `g103` VALUES ('716', '30', '0', '4', '2');
INSERT INTO `g103` VALUES ('717', '30', '0', '5', '2');
INSERT INTO `g103` VALUES ('718', '30', '0', '6', '2');
INSERT INTO `g103` VALUES ('719', '30', '0', '7', '2');
INSERT INTO `g103` VALUES ('720', '30', '0', '8', '2');

-- ----------------------------
-- Table structure for `newtable`
-- ----------------------------
DROP TABLE IF EXISTS `newtable`;
CREATE TABLE `newtable` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id号',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息';

-- ----------------------------
-- Records of newtable
-- ----------------------------

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `ordercaruserid` int(255) DEFAULT NULL COMMENT '乘车人编号',
  `orderadminid` varchar(255) DEFAULT NULL COMMENT '下单用户',
  `ordertime` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `orderstate` varchar(255) DEFAULT NULL COMMENT '订单状态',
  `ordertranbid` int(11) DEFAULT NULL COMMENT '车次编号',
  `orderseatid` int(11) DEFAULT NULL COMMENT '座位编号',
  `orderendid` varchar(255) DEFAULT NULL,
  `orderstartid` varchar(255) DEFAULT NULL,
  `orderseatclass` varchar(255) DEFAULT NULL,
  `ordermoney` varchar(255) DEFAULT NULL COMMENT '订单金额',
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单信息';

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('4', '1', '3', '2023-05-10 19:49:57', '已退票', '1', '12', '9', '1', 'bus', '1318');
INSERT INTO `orderinfo` VALUES ('5', '1', '3', '2023-05-10 20:42:09', '已退票', '1', '6', '9', '1', 'bus', '1318');
INSERT INTO `orderinfo` VALUES ('6', '1', '3', '2023-05-10 23:24:24', '已退票', '1', '17', '9', '1', 'bus', '1318');
INSERT INTO `orderinfo` VALUES ('7', '1', '3', '2023-05-11 00:12:59', '已付款', '1', '18', '3', '1', 'bus', '406');
INSERT INTO `orderinfo` VALUES ('8', '1', '3', '2023-05-11 19:00:50', '未支付', '16', '13', '9', '1', 'bus', '1318');
INSERT INTO `orderinfo` VALUES ('9', '1', '3', '2023-05-11 19:03:34', '已付款', '16', '17', '9', '1', 'bus', '1318');
INSERT INTO `orderinfo` VALUES ('10', '1', '3', '2023-07-04 20:28:50', '已付款', '1', '13', '9', '1', 'sec', '593');

-- ----------------------------
-- Table structure for `priceinfo`
-- ----------------------------
DROP TABLE IF EXISTS `priceinfo`;
CREATE TABLE `priceinfo` (
  `priceid` int(11) NOT NULL AUTO_INCREMENT COMMENT '价格id',
  `sitenum` int(11) DEFAULT NULL COMMENT '车厢号',
  `price` varchar(255) DEFAULT NULL COMMENT '价格',
  `stationnamefm` varchar(255) DEFAULT NULL COMMENT '起点站',
  `stationnameto` varchar(255) DEFAULT NULL COMMENT '终点站',
  PRIMARY KEY (`priceid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='价格信息';

-- ----------------------------
-- Records of priceinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `route`
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `routeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stationid` varchar(255) DEFAULT NULL COMMENT '车次号',
  `stationrankid` varchar(255) DEFAULT NULL COMMENT '车次顺序号',
  `time` varchar(255) DEFAULT NULL COMMENT '时间',
  `routenumber` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL COMMENT '里程',
  PRIMARY KEY (`routeid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='路线信息';

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('1', '2', '1', '06:20', '1', '0');
INSERT INTO `route` VALUES ('2', '3', '2', '07:15', '1', '210');
INSERT INTO `route` VALUES ('3', '10', '3', '08:04', '1', '406');
INSERT INTO `route` VALUES ('4', '24', '4', '09:09', '1', '692');
INSERT INTO `route` VALUES ('5', '19', '5', '09:33', '1', '760');
INSERT INTO `route` VALUES ('6', '1', '6', '09:58', '1', '848');
INSERT INTO `route` VALUES ('7', '14', '7', '10:43', '1', '1023');
INSERT INTO `route` VALUES ('8', '23', '8', '11:29', '1', '1210');
INSERT INTO `route` VALUES ('9', '16', '9', '11:58', '1', '1318');
INSERT INTO `route` VALUES ('10', '16', '1', '06:37', '2', '0');
INSERT INTO `route` VALUES ('11', '23', '2', '07:07', '2', '108');
INSERT INTO `route` VALUES ('12', '25', '3', '07:39', '2', '230');
INSERT INTO `route` VALUES ('13', '14', '4', '08:04', '2', '295');
INSERT INTO `route` VALUES ('14', '1', '5', '08:56', '2', '416');
INSERT INTO `route` VALUES ('15', '24', '6', '09:34', '2', '626');
INSERT INTO `route` VALUES ('16', '10', '7', '10:42', '2', '912');
INSERT INTO `route` VALUES ('17', '22', '8', '11:56', '2', '1196');
INSERT INTO `route` VALUES ('18', '13', '9', '12:16', '2', '1258');
INSERT INTO `route` VALUES ('19', '2', '10', '12:38', '2', '1318');

-- ----------------------------
-- Table structure for `station`
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `stationid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `stationname` varchar(255) DEFAULT NULL COMMENT '车站名',
  PRIMARY KEY (`stationid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车站信息';

-- ----------------------------
-- Records of station
-- ----------------------------
INSERT INTO `station` VALUES ('1', '蚌埠南站');
INSERT INTO `station` VALUES ('2', '北京南站');
INSERT INTO `station` VALUES ('3', '沧州西站');
INSERT INTO `station` VALUES ('4', '常州北站');
INSERT INTO `station` VALUES ('5', '滁州站');
INSERT INTO `station` VALUES ('6', '丹阳北站');
INSERT INTO `station` VALUES ('7', '德州东站');
INSERT INTO `station` VALUES ('8', '定远站');
INSERT INTO `station` VALUES ('9', '杭州东站');
INSERT INTO `station` VALUES ('10', '济南西站');
INSERT INTO `station` VALUES ('11', '嘉兴南站');
INSERT INTO `station` VALUES ('12', '昆山南站');
INSERT INTO `station` VALUES ('13', '廊坊站');
INSERT INTO `station` VALUES ('14', '南京南站');
INSERT INTO `station` VALUES ('15', '曲阜东站');
INSERT INTO `station` VALUES ('16', '上海虹桥站');
INSERT INTO `station` VALUES ('17', '上海站');
INSERT INTO `station` VALUES ('18', '苏州北站');
INSERT INTO `station` VALUES ('19', '宿州东站');
INSERT INTO `station` VALUES ('20', '泰安站');
INSERT INTO `station` VALUES ('21', '滕州东站');
INSERT INTO `station` VALUES ('22', '天津南站');
INSERT INTO `station` VALUES ('23', '无锡东站');
INSERT INTO `station` VALUES ('24', '徐州东站');
INSERT INTO `station` VALUES ('25', '镇江南站');
INSERT INTO `station` VALUES ('26', '枣庄站');

-- ----------------------------
-- Table structure for `superadmininfo`
-- ----------------------------
DROP TABLE IF EXISTS `superadmininfo`;
CREATE TABLE `superadmininfo` (
  `superadminid` int(11) NOT NULL AUTO_INCREMENT COMMENT '超级用户编号',
  `superadminname` varchar(255) DEFAULT NULL COMMENT '超级用户名',
  `superadminpwd` varchar(255) DEFAULT NULL COMMENT '超级用户密码',
  PRIMARY KEY (`superadminid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='超级用户信息';

-- ----------------------------
-- Records of superadmininfo
-- ----------------------------
INSERT INTO `superadmininfo` VALUES ('1', 'superadmin', '123456');

-- ----------------------------
-- Table structure for `train`
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `trainid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `trainname` varchar(255) DEFAULT NULL COMMENT '列车名',
  `traintype` varchar(255) DEFAULT NULL COMMENT '列车类型',
  PRIMARY KEY (`trainid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='列车信息';

-- ----------------------------
-- Records of train
-- ----------------------------

-- ----------------------------
-- Table structure for `tranb`
-- ----------------------------
DROP TABLE IF EXISTS `tranb`;
CREATE TABLE `tranb` (
  `tranbid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tranbname` varchar(255) DEFAULT NULL COMMENT '车次名',
  `routeid` varchar(255) DEFAULT NULL COMMENT '路线号',
  `tranbdate` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`tranbid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车次信息';

-- ----------------------------
-- Records of tranb
-- ----------------------------
INSERT INTO `tranb` VALUES ('1', 'G103', '1', '2023-05-10');
INSERT INTO `tranb` VALUES ('2', 'G102', '2', '2023-05-10');
INSERT INTO `tranb` VALUES ('16', 'G1', '1', '2023-05-11');

-- ----------------------------
-- Table structure for `tranbseat`
-- ----------------------------
DROP TABLE IF EXISTS `tranbseat`;
CREATE TABLE `tranbseat` (
  `tranbseatid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tranbid` varchar(255) DEFAULT NULL COMMENT '车次号',
  `seattb` varchar(255) DEFAULT NULL COMMENT '座位表',
  `businessclass` varchar(255) DEFAULT NULL COMMENT '商务座',
  `firstclass` varchar(255) DEFAULT NULL COMMENT '一等座',
  `secondclass` varchar(255) DEFAULT NULL COMMENT '二等座',
  PRIMARY KEY (`tranbseatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车次座位信息';

-- ----------------------------
-- Records of tranbseat
-- ----------------------------
INSERT INTO `tranbseat` VALUES ('1', '1', 'G103', '0', '0', '0');
INSERT INTO `tranbseat` VALUES ('2', '2', 'G102', '0', '0', '0');
INSERT INTO `tranbseat` VALUES ('12', '16', 'G1', '0', '0', '0');

-- ----------------------------
-- Table structure for `tranbtrain`
-- ----------------------------
DROP TABLE IF EXISTS `tranbtrain`;
CREATE TABLE `tranbtrain` (
  `tranbtrainid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `trainid` varchar(255) DEFAULT NULL COMMENT '列车号',
  `trainbid` varchar(255) DEFAULT NULL COMMENT '车次号',
  PRIMARY KEY (`tranbtrainid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='车次列车信息';

-- ----------------------------
-- Records of tranbtrain
-- ----------------------------

-- ----------------------------
-- Procedure structure for `createseat`
-- ----------------------------
DROP PROCEDURE IF EXISTS `createseat`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createseat`(in tbname varchar(255))
begin 
SET @sql := CONCAT(
	'CREATE TABLE ', tbname, ' (
  `seatid` int(11) NOT NULL AUTO_INCREMENT COMMENT ''主键号'',
  `seatname` int(11) DEFAULT NULL COMMENT ''座位号'',
  `seatstatue` varchar(255) DEFAULT NULL COMMENT ''座位状态'',
  `seatinterval` varchar(255) DEFAULT NULL COMMENT ''区间归属'',
  `seattype` varchar(255) DEFAULT NULL COMMENT ''特1号车厢一2号车厢二3号车厢'',
  PRIMARY KEY (`seatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;');
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insertseat`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertseat`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertseat`(IN tbname VARCHAR(255), IN num INT)
BEGIN 
  DECLARE i INT;
	DECLARE j INT;
	DECLARE m INT;
  SET i=1;
	SET j=1;
	SET m=0;
  SET @sql = ''; -- 定义变量用于动态生成SQL语句。
  
  WHILE (i <= 30) DO
		SET j=1;
		WHILE (j<=num) DO
			SET m=0;
			WHILE (m<=2) DO
    -- 动态拼接SQL字符串，注意要使用反引号包围表名，使用单引号包围值。
				SET @sql = CONCAT('INSERT INTO `', tbname, '` (`seatname`, `seatstatue`, `seatinterval`, `seattype`) VALUES (', i, ',0,', j, ',', m, ')');
				  -- 执行动态生成的SQL语句
				PREPARE stmt FROM @sql;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
			SET m=m+1;
			END WHILE;
			SET j=j+1;
		END WHILE;
		SET i=i+1;
  END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insert_G102`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_G102`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_G102`(IN num INT)
BEGIN
  DECLARE i INT;
  SET i=1;
  WHILE (i<=num) DO
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,0);
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,0);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,0);
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,1);
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,1);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,1);
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,2);
    INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,2);
		INSERT INTO G102(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,2);
    SET i=i+1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insert_G130`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_G130`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_G130`(IN num INT)
BEGIN
  DECLARE i INT;
  SET i=1;
  WHILE (i<=num) DO
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,0);
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,0);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,0);
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,1);
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,1);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,1);
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,1,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,2,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,3,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,4,2);
    INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,5,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,6,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,7,2);
		INSERT INTO G130(seatname, seatstatue,seatinterval,seattype) 
			VALUES(i,0,8,2);
    SET i=i+1;
  END WHILE;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `stationtri`;
DELIMITER ;;
CREATE TRIGGER `stationtri` AFTER DELETE ON `station` FOR EACH ROW DELETE from citystation where stationid=OLD.stationid
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tranbtri1`;
DELIMITER ;;
CREATE TRIGGER `tranbtri1` AFTER INSERT ON `tranb` FOR EACH ROW insert into tranbseat(tranbid,seattb,businessclass,firstclass,secondclass) values(new.tranbid, new.tranbname, '0','0','0' )
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tranbtri2`;
DELIMITER ;;
CREATE TRIGGER `tranbtri2` AFTER DELETE ON `tranb` FOR EACH ROW delete from tranbseat where tranbid=old.tranbid
;;
DELIMITER ;
