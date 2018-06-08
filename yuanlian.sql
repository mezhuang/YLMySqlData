/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : yuanlian

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-08 16:57:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commission_info`
-- ----------------------------
DROP TABLE IF EXISTS `commission_info`;
CREATE TABLE `commission_info` (
  `commi_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_info` varchar(50) DEFAULT NULL,
  `commi_ratio` varchar(50) DEFAULT NULL,
  `commi_money` varchar(50) DEFAULT NULL COMMENT '佣金额度',
  `is_task` varchar(10) DEFAULT NULL,
  `commi_status` varchar(5) DEFAULT NULL,
  `referee_phone` varchar(20) NOT NULL COMMENT '分销商电话',
  `customer_phone` varchar(20) DEFAULT NULL COMMENT '分销商姓名',
  `customer_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_info
-- ----------------------------
INSERT INTO `commission_info` VALUES ('111', '1', '0..03', '100', null, '1', '15208945149', '小黄', null);
INSERT INTO `commission_info` VALUES ('112', '??', '0.02', '200.0', null, '1', '15208945149', '15208945148', null);

-- ----------------------------
-- Table structure for `customer_report`
-- ----------------------------
DROP TABLE IF EXISTS `customer_report`;
CREATE TABLE `customer_report` (
  `customer_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_phone` varchar(11) NOT NULL COMMENT '客户电话',
  `visit_time` varchar(12) DEFAULT NULL COMMENT '到访时间',
  `task_phone` varchar(11) DEFAULT NULL COMMENT '带看人电话',
  `is_task` varchar(8) DEFAULT NULL COMMENT '是否带看',
  `guide_phone` varchar(50) DEFAULT NULL COMMENT '导购员',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `report_time` varchar(12) DEFAULT NULL COMMENT '报备日期',
  `referee_phone` varchar(12) DEFAULT NULL,
  `open_id` varchar(30) NOT NULL COMMENT '平台唯一标识',
  `is_expire` varchar(1) DEFAULT NULL COMMENT '是否超过保护期',
  PRIMARY KEY (`customer_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_report
-- ----------------------------
INSERT INTO `customer_report` VALUES ('25', '15208945148', '2016-11-08', '15208945488', '1', '店长18876175897', '大热李开复绝对是', '2016-11-08', null, 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', null);
INSERT INTO `customer_report` VALUES ('26', '18876451249', '2016-11-08', '13346215429', '1', '周芬15208945149', '反对法的', '2016-11-08', null, 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', null);

-- ----------------------------
-- Table structure for `group_info`
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL COMMENT '分组角色名称',
  `group_code` varchar(5) DEFAULT NULL COMMENT '用户类型：01系统管理员,02分销商,03客户,04导购员,05分销经理',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('18', '系统管理员', '10001');
INSERT INTO `group_info` VALUES ('19', '家居顾问', '10002');
INSERT INTO `group_info` VALUES ('20', '分销经理', '10003');
INSERT INTO `group_info` VALUES ('21', '分销经纪人', '10004');
INSERT INTO `group_info` VALUES ('22', '普通用户', '10005');

-- ----------------------------
-- Table structure for `group_user_map`
-- ----------------------------
DROP TABLE IF EXISTS `group_user_map`;
CREATE TABLE `group_user_map` (
  `group_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`group_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_user_map
-- ----------------------------
INSERT INTO `group_user_map` VALUES ('1', '18', '18');
INSERT INTO `group_user_map` VALUES ('3', '19', '18');
INSERT INTO `group_user_map` VALUES ('4', '20', '18');
INSERT INTO `group_user_map` VALUES ('15', '21', '18');
INSERT INTO `group_user_map` VALUES ('16', '19', '61');
INSERT INTO `group_user_map` VALUES ('19', '19', '62');
INSERT INTO `group_user_map` VALUES ('20', '19', '63');
INSERT INTO `group_user_map` VALUES ('21', '19', '64');

-- ----------------------------
-- Table structure for `power_group_map`
-- ----------------------------
DROP TABLE IF EXISTS `power_group_map`;
CREATE TABLE `power_group_map` (
  `power_group_id` varchar(50) NOT NULL,
  `power_id` varchar(50) DEFAULT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`power_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power_group_map
-- ----------------------------
INSERT INTO `power_group_map` VALUES ('1', '18', '18');
INSERT INTO `power_group_map` VALUES ('2', '19', '19');
INSERT INTO `power_group_map` VALUES ('3', '20', '20');
INSERT INTO `power_group_map` VALUES ('4', '21', '21');

-- ----------------------------
-- Table structure for `power_info`
-- ----------------------------
DROP TABLE IF EXISTS `power_info`;
CREATE TABLE `power_info` (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `power_code` varchar(5) DEFAULT NULL,
  `power_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `remark` varchar(50) DEFAULT NULL COMMENT '分组角色ID',
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户分组表';

-- ----------------------------
-- Records of power_info
-- ----------------------------
INSERT INTO `power_info` VALUES ('18', '10001', '系统管理', '测试环境');
INSERT INTO `power_info` VALUES ('19', '10002', '家居顾问', null);
INSERT INTO `power_info` VALUES ('20', '10003', '分销商', null);
INSERT INTO `power_info` VALUES ('21', '10004', '普通用户', null);

-- ----------------------------
-- Table structure for `product_info`
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(11) NOT NULL COMMENT '产品名称',
  `product_number` varchar(11) NOT NULL COMMENT '产品型号',
  `product_price` varchar(12) NOT NULL COMMENT '产品价格',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_info
-- ----------------------------

-- ----------------------------
-- Table structure for `sales_info`
-- ----------------------------
DROP TABLE IF EXISTS `sales_info`;
CREATE TABLE `sales_info` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_info` varchar(200) NOT NULL COMMENT '产品ID',
  `trans_money` varchar(50) NOT NULL COMMENT '成交价格',
  `trans_time` varchar(30) NOT NULL,
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL COMMENT '客户电话',
  `open_id` varchar(50) DEFAULT NULL COMMENT '导购员电话',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `is_task` varchar(2) DEFAULT NULL COMMENT '分销商是否带看',
  `task_name` varchar(50) DEFAULT NULL,
  `task_phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales_info
-- ----------------------------
INSERT INTO `sales_info` VALUES ('111', '11', '10000', '2018-06-03 11:46:17', '小张', '15208945148', '15208945149', '44', '1', null, null);
INSERT INTO `sales_info` VALUES ('112', '12', '20000', '2018-06-08 10:09:21', '小红', '15208951424', '15208945149', '55', '1', null, null);
INSERT INTO `sales_info` VALUES ('113', '??', 'undefined', 'undefined', null, '136', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('114', '??', '1000', '2018-6-18', null, '137', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('115', '??', '1000', '2018-6-18', null, '137', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('116', '??', '1000', '2018-6-18', null, '137', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('117', '??', '1000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('118', '??', '1000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('119', '??', '1000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('120', '??', '1000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('121', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('122', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('123', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('124', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('125', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('126', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('127', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('128', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('129', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('130', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('131', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('132', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('133', '??', '10000', '2018-6-18', null, '15208945148', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `dd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` varchar(50) NOT NULL,
  `open_id` varchar(30) NOT NULL COMMENT '微信唯一标识',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(12) DEFAULT NULL COMMENT '用户电话',
  `user_reg_time` varchar(24) DEFAULT NULL COMMENT '用户注册时间',
  `user_type` varchar(3) DEFAULT NULL,
  `employee_code` varchar(20) DEFAULT NULL,
  `superior_code` varchar(30) DEFAULT NULL COMMENT '上级',
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('100', 'ozLOG5LWXLjDpxZLrD1DxXIKx888', '善哥', '155241223', '2018-06-03 01:18:55', null, null, null);
INSERT INTO `user_info` VALUES ('105', 'fffff', null, null, '2018-06-03 11:34:07', null, null, null);
INSERT INTO `user_info` VALUES ('106', 'fffff', null, null, '2018-06-03 11:37:48', null, null, null);
INSERT INTO `user_info` VALUES ('107', 'fffff', 'yyy', '15264', '2018-06-03 11:42:29', null, null, null);
INSERT INTO `user_info` VALUES ('108', 'fffff', 'yyy', '15264', '2018-06-03 11:46:17', null, null, null);
INSERT INTO `user_info` VALUES ('113', 'fffff', 'yyy', '15264', '2018-06-03 11:56:08', null, null, null);
INSERT INTO `user_info` VALUES ('114', 'fffff', 'xiaoliu', '18812345678', '2018-06-03 12:36:55', null, null, null);
INSERT INTO `user_info` VALUES ('18', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '袁仕旭', '15208945149', null, null, null, '08001');
INSERT INTO `user_info` VALUES ('61', '', '分销经理', '18876175897', null, null, '08001', null);
INSERT INTO `user_info` VALUES ('62', '', '周芬', '15208985488', null, null, null, null);
INSERT INTO `user_info` VALUES ('63', '', '小白', '15201245203', null, null, null, null);
