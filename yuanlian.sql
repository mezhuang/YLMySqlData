/*
Navicat MySQL Data Transfer

Source Server         : localhost(root)
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : yuanlian

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-05 20:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commission_info
-- ----------------------------
DROP TABLE IF EXISTS `commission_info`;
CREATE TABLE `commission_info` (
  `commi_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_info` varchar(50) DEFAULT NULL,
  `commi_ratio` varchar(50) DEFAULT NULL,
  `commi_money` varchar(50) DEFAULT NULL COMMENT '佣金额度',
  `commi_phone` varchar(20) DEFAULT NULL,
  `is_task` varchar(10) DEFAULT NULL,
  `commi_status` varchar(5) DEFAULT NULL,
  `referee_phone` varchar(20) DEFAULT NULL COMMENT '分销商电话',
  `customer_phone` varchar(20) DEFAULT NULL COMMENT '分销商姓名',
  `customer_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission_info
-- ----------------------------
INSERT INTO `commission_info` VALUES ('111', '1', '0..03', '100', null, null, '1', '15208945149', '小黄', null);
INSERT INTO `commission_info` VALUES ('112', '??', '0.02', '200.0', null, null, '1', '15208945149', '15208945148', null);
INSERT INTO `commission_info` VALUES ('113', null, null, null, null, null, '1', null, '137', 'å?¡æ?¥');

-- ----------------------------
-- Table structure for customer_report
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
-- Table structure for goods_class
-- ----------------------------
DROP TABLE IF EXISTS `goods_class`;
CREATE TABLE `goods_class` (
  `goods_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_type` varchar(5) DEFAULT NULL,
  `onelevel_code` varchar(10) NOT NULL,
  `onelevel_name` varchar(30) DEFAULT NULL,
  `twolevel_code` varchar(20) NOT NULL COMMENT '分类编码',
  `twolevel_name` varchar(30) NOT NULL COMMENT '分类名称',
  `goods_class_url` varchar(100) DEFAULT NULL,
  `class_image_name` varchar(30) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`goods_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_class
-- ----------------------------
INSERT INTO `goods_class` VALUES ('1', '1', '01', '品类', '01001', '沙发', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'sofa.png', null);
INSERT INTO `goods_class` VALUES ('2', '1', '01', '品类', '01002', '床', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'bed.png', null);
INSERT INTO `goods_class` VALUES ('3', '1', '02', '风格', '02001', '现代中式', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'modern.png', null);
INSERT INTO `goods_class` VALUES ('4', '1', '02', '风格', '02002', '北欧轻奢', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'nordic.png', null);
INSERT INTO `goods_class` VALUES ('5', '1', '03', '空间', '03001', '客厅', null, null, null);
INSERT INTO `goods_class` VALUES ('6', '1', '03', '空间', '03002', '卧室', null, null, null);
INSERT INTO `goods_class` VALUES ('7', '1', '04', '套餐', '04001', '限时特惠', null, null, null);
INSERT INTO `goods_class` VALUES ('8', '1', '04', '套餐', '04002', '精英特惠', null, null, null);
INSERT INTO `goods_class` VALUES ('9', '1', '05', '品牌', '05001', '中深宅配', null, null, null);
INSERT INTO `goods_class` VALUES ('10', '2', '06', '展示位置', '06001', '首页轮播', null, null, null);
INSERT INTO `goods_class` VALUES ('11', '2', '06', '展示位置', '06002', '热销爆品', null, null, null);
INSERT INTO `goods_class` VALUES ('12', '2', '06', '展示位置', '06003', '精选推荐', null, null, null);
INSERT INTO `goods_class` VALUES ('13', '3', '07', '详情图片位置', '07001', '滚动轮播', null, null, null);
INSERT INTO `goods_class` VALUES ('14', '3', '07', '详情图片位置', '07002', '详情明细', null, null, null);
INSERT INTO `goods_class` VALUES ('15', '1', '01', '品类', '01003', '柜类', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'cabinets.png', null);
INSERT INTO `goods_class` VALUES ('16', '1', '01', '品类', '01004', '桌类', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'table.png', null);
INSERT INTO `goods_class` VALUES ('17', '1', '01', '品类', '01005', '几类', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'desks.png', null);
INSERT INTO `goods_class` VALUES ('18', '1', '01', '品类', '01006', '椅等', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'chair.png', null);
INSERT INTO `goods_class` VALUES ('19', '1', '01', '品类', '01007', '床垫', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'mattresses.png', null);
INSERT INTO `goods_class` VALUES ('20', '1', '01', '品类', '01008', '窗帘', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'household_goods.png', null);
INSERT INTO `goods_class` VALUES ('23', '1', '02', '风格', '02003', '简美', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'simple_american_style.png', null);
INSERT INTO `goods_class` VALUES ('24', '1', '02', '风格', '02004', '儿童', 'https://192.168.1.104:443/YLXcxMallBack/images/classImages/', 'children.png', null);

-- ----------------------------
-- Table structure for goods_class_map
-- ----------------------------
DROP TABLE IF EXISTS `goods_class_map`;
CREATE TABLE `goods_class_map` (
  `goods_class_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(50) NOT NULL COMMENT '商品id',
  `goods_twolevel_code` varchar(11) NOT NULL COMMENT '商品类型id',
  PRIMARY KEY (`goods_class_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_class_map
-- ----------------------------
INSERT INTO `goods_class_map` VALUES ('2', '842bac6b-f65f-45bf-9778-06c100f853ce', '01001');
INSERT INTO `goods_class_map` VALUES ('3', '842bac6b-f65f-45bf-9778-06c100f853ce', '02001');
INSERT INTO `goods_class_map` VALUES ('4', '842bac6b-f65f-45bf-9778-06c100f853ce', '03001');
INSERT INTO `goods_class_map` VALUES ('5', '842bac6b-f65f-45bf-9778-06c100f853ce', '04001');
INSERT INTO `goods_class_map` VALUES ('6', '842bac6b-f65f-45bf-9778-06c100f853ce', '05001');
INSERT INTO `goods_class_map` VALUES ('7', '842bac6b-f65f-45bf-9778-06c100f853ce', '06001');
INSERT INTO `goods_class_map` VALUES ('8', '972a11c9-088a-4869-997e-85a6c14c5f97', '01001');
INSERT INTO `goods_class_map` VALUES ('9', '972a11c9-088a-4869-997e-85a6c14c5f97', '02001');
INSERT INTO `goods_class_map` VALUES ('10', '972a11c9-088a-4869-997e-85a6c14c5f97', '03001');
INSERT INTO `goods_class_map` VALUES ('11', '972a11c9-088a-4869-997e-85a6c14c5f97', '04001');
INSERT INTO `goods_class_map` VALUES ('12', '972a11c9-088a-4869-997e-85a6c14c5f97', '05001');
INSERT INTO `goods_class_map` VALUES ('13', '972a11c9-088a-4869-997e-85a6c14c5f97', '06001');
INSERT INTO `goods_class_map` VALUES ('14', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '01001');
INSERT INTO `goods_class_map` VALUES ('15', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '02001');
INSERT INTO `goods_class_map` VALUES ('16', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '03001');
INSERT INTO `goods_class_map` VALUES ('17', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '04001');
INSERT INTO `goods_class_map` VALUES ('18', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '05001');
INSERT INTO `goods_class_map` VALUES ('19', 'b32df8ee-3d10-41d0-b110-a1c733f7eb81', '06001');
INSERT INTO `goods_class_map` VALUES ('20', '04c7e439-fafb-4efd-8c54-f65b918c0147', '01001');
INSERT INTO `goods_class_map` VALUES ('21', '04c7e439-fafb-4efd-8c54-f65b918c0147', '02001');
INSERT INTO `goods_class_map` VALUES ('22', '04c7e439-fafb-4efd-8c54-f65b918c0147', '03001');
INSERT INTO `goods_class_map` VALUES ('23', '04c7e439-fafb-4efd-8c54-f65b918c0147', '04001');
INSERT INTO `goods_class_map` VALUES ('24', '04c7e439-fafb-4efd-8c54-f65b918c0147', '05001');
INSERT INTO `goods_class_map` VALUES ('25', '04c7e439-fafb-4efd-8c54-f65b918c0147', '06001');
INSERT INTO `goods_class_map` VALUES ('26', '3877f645-449f-4780-bec1-4f3c1eba9da4', '01001');
INSERT INTO `goods_class_map` VALUES ('27', '3877f645-449f-4780-bec1-4f3c1eba9da4', '02001');
INSERT INTO `goods_class_map` VALUES ('28', '3877f645-449f-4780-bec1-4f3c1eba9da4', '03001');
INSERT INTO `goods_class_map` VALUES ('29', '3877f645-449f-4780-bec1-4f3c1eba9da4', '04001');
INSERT INTO `goods_class_map` VALUES ('30', '3877f645-449f-4780-bec1-4f3c1eba9da4', '05001');
INSERT INTO `goods_class_map` VALUES ('31', '3877f645-449f-4780-bec1-4f3c1eba9da4', '06001');
INSERT INTO `goods_class_map` VALUES ('32', '689c28f6-960e-423f-9e26-91712dc28150', '01001');
INSERT INTO `goods_class_map` VALUES ('33', '689c28f6-960e-423f-9e26-91712dc28150', '02001');
INSERT INTO `goods_class_map` VALUES ('34', '689c28f6-960e-423f-9e26-91712dc28150', '03001');
INSERT INTO `goods_class_map` VALUES ('35', '689c28f6-960e-423f-9e26-91712dc28150', '04001');
INSERT INTO `goods_class_map` VALUES ('36', '689c28f6-960e-423f-9e26-91712dc28150', '05001');
INSERT INTO `goods_class_map` VALUES ('37', '689c28f6-960e-423f-9e26-91712dc28150', '06001');
INSERT INTO `goods_class_map` VALUES ('38', '0065b556-6301-4d40-bf66-5c2124ce00b6', '01001');
INSERT INTO `goods_class_map` VALUES ('39', '0065b556-6301-4d40-bf66-5c2124ce00b6', '02001');
INSERT INTO `goods_class_map` VALUES ('40', '0065b556-6301-4d40-bf66-5c2124ce00b6', '03001');
INSERT INTO `goods_class_map` VALUES ('41', '0065b556-6301-4d40-bf66-5c2124ce00b6', '04001');
INSERT INTO `goods_class_map` VALUES ('42', '0065b556-6301-4d40-bf66-5c2124ce00b6', '05001');
INSERT INTO `goods_class_map` VALUES ('43', '0065b556-6301-4d40-bf66-5c2124ce00b6', '06001');
INSERT INTO `goods_class_map` VALUES ('44', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '01001');
INSERT INTO `goods_class_map` VALUES ('45', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '02001');
INSERT INTO `goods_class_map` VALUES ('46', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '03001');
INSERT INTO `goods_class_map` VALUES ('47', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '04001');
INSERT INTO `goods_class_map` VALUES ('48', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '05001');
INSERT INTO `goods_class_map` VALUES ('49', '01c47f87-d348-4b93-8cd7-c83311f21ccd', '06001');
INSERT INTO `goods_class_map` VALUES ('348', '0662f956-0199-40a5-a1d5-eb37ea7de002', '01002');
INSERT INTO `goods_class_map` VALUES ('349', '0662f956-0199-40a5-a1d5-eb37ea7de002', '02001');
INSERT INTO `goods_class_map` VALUES ('350', '0662f956-0199-40a5-a1d5-eb37ea7de002', '03001');
INSERT INTO `goods_class_map` VALUES ('351', '0662f956-0199-40a5-a1d5-eb37ea7de002', '04001');
INSERT INTO `goods_class_map` VALUES ('352', '0662f956-0199-40a5-a1d5-eb37ea7de002', '05002');
INSERT INTO `goods_class_map` VALUES ('353', '0662f956-0199-40a5-a1d5-eb37ea7de002', '06003');
INSERT INTO `goods_class_map` VALUES ('354', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '01001');
INSERT INTO `goods_class_map` VALUES ('355', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '02001');
INSERT INTO `goods_class_map` VALUES ('356', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '03001');
INSERT INTO `goods_class_map` VALUES ('357', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '04001');
INSERT INTO `goods_class_map` VALUES ('358', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '05001');
INSERT INTO `goods_class_map` VALUES ('359', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '06003');
INSERT INTO `goods_class_map` VALUES ('360', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '01001');
INSERT INTO `goods_class_map` VALUES ('361', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '02001');
INSERT INTO `goods_class_map` VALUES ('362', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '03001');
INSERT INTO `goods_class_map` VALUES ('363', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '04001');
INSERT INTO `goods_class_map` VALUES ('364', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '05001');
INSERT INTO `goods_class_map` VALUES ('365', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '06001');

-- ----------------------------
-- Table structure for goods_formatprice
-- ----------------------------
DROP TABLE IF EXISTS `goods_formatprice`;
CREATE TABLE `goods_formatprice` (
  `format_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(100) DEFAULT NULL COMMENT '商品标识',
  `format_name` varchar(20) DEFAULT NULL COMMENT '产品规格',
  `org_price` varchar(30) DEFAULT NULL COMMENT '原价',
  `curr_price` varchar(30) NOT NULL COMMENT '现价',
  PRIMARY KEY (`format_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_formatprice
-- ----------------------------
INSERT INTO `goods_formatprice` VALUES ('1', null, '2.5', '1000', '1200');
INSERT INTO `goods_formatprice` VALUES ('3', null, '', '', '');
INSERT INTO `goods_formatprice` VALUES ('5', null, '', '', '');
INSERT INTO `goods_formatprice` VALUES ('6', null, '1', '11', '11');
INSERT INTO `goods_formatprice` VALUES ('7', null, '', '', '');
INSERT INTO `goods_formatprice` VALUES ('8', null, '', '', '');
INSERT INTO `goods_formatprice` VALUES ('9', null, '2.5', '10000', '8000');
INSERT INTO `goods_formatprice` VALUES ('10', null, '2.8', '12000', '9000');
INSERT INTO `goods_formatprice` VALUES ('11', null, '2.5', '1200', '1000');
INSERT INTO `goods_formatprice` VALUES ('12', null, '2.9', '2500', '1200');
INSERT INTO `goods_formatprice` VALUES ('13', null, '2.5', '1000', '8000');
INSERT INTO `goods_formatprice` VALUES ('14', null, '2.9', '1800', '9000');
INSERT INTO `goods_formatprice` VALUES ('46', '0662f956-0199-40a5-a1d5-eb37ea7de002', '2700*850*650', '11', '11');
INSERT INTO `goods_formatprice` VALUES ('47', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '2700*850*650', '100', '11');
INSERT INTO `goods_formatprice` VALUES ('48', '69b576bd-0ad0-47d5-9cd1-583884c04fff', '180*100', '200', '12');
INSERT INTO `goods_formatprice` VALUES ('49', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '2700*850*650', '12000', '8900');
INSERT INTO `goods_formatprice` VALUES ('50', '922e6345-0551-4876-bdfe-bd04faa9b7d8', '1.8米', '200', '100');

-- ----------------------------
-- Table structure for goods_image
-- ----------------------------
DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image` (
  `goods_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(100) DEFAULT NULL,
  `goods_image_url` varchar(255) NOT NULL COMMENT '图片url',
  `position_code` varchar(30) DEFAULT NULL COMMENT '显示位置',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`goods_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_image
-- ----------------------------
INSERT INTO `goods_image` VALUES ('61', '5b53c608-0c4f-466b-8e29-cb3eaf7b1791', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('62', '5b53c608-0c4f-466b-8e29-cb3eaf7b1791', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('63', '5b53c608-0c4f-466b-8e29-cb3eaf7b1791', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage003.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('64', '8b902d3f-2cea-44c5-ad70-5d3da9e9dc75', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('65', '8b902d3f-2cea-44c5-ad70-5d3da9e9dc75', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('66', '8b902d3f-2cea-44c5-ad70-5d3da9e9dc75', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage003.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('70', '355979ce-97f1-40f9-99a3-6c436534f8d4', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('71', '355979ce-97f1-40f9-99a3-6c436534f8d4', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('72', '355979ce-97f1-40f9-99a3-6c436534f8d4', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage003.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('73', '1f0f8936-4266-45c3-89db-32704fdd6b40', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('74', '1f0f8936-4266-45c3-89db-32704fdd6b40', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('75', '1f0f8936-4266-45c3-89db-32704fdd6b40', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage003.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('97', '3154cfb5-97a1-434f-bdde-7c33e699310d', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('98', '3154cfb5-97a1-434f-bdde-7c33e699310d', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('99', 'd4168f1a-a2e6-4b3c-b0e0-780903bd5fc7', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('100', 'd4168f1a-a2e6-4b3c-b0e0-780903bd5fc7', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('130', '8b990ce3-9355-4e8d-94a1-c0f0a7afa1a6', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('131', '8b990ce3-9355-4e8d-94a1-c0f0a7afa1a6', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('132', 'accfd8d0-8d09-46d0-8a4c-e4dd5069338a', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('133', 'accfd8d0-8d09-46d0-8a4c-e4dd5069338a', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('146', '53d238ba-447b-40d8-94c3-e6e6cfe9dc36', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('147', '53d238ba-447b-40d8-94c3-e6e6cfe9dc36', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('148', '922e6345-0551-4876-bdfe-bd04faa9b7d8', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('149', '922e6345-0551-4876-bdfe-bd04faa9b7d8', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('150', '922e6345-0551-4876-bdfe-bd04faa9b7d8', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '001', null);
INSERT INTO `goods_image` VALUES ('151', '69b576bd-0ad0-47d5-9cd1-583884c04fff', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);
INSERT INTO `goods_image` VALUES ('152', '69b576bd-0ad0-47d5-9cd1-583884c04fff', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage002.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('153', '0662f956-0199-40a5-a1d5-eb37ea7de002', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07002', null);
INSERT INTO `goods_image` VALUES ('154', '922e6345-0551-4876-bdfe-bd04faa9b7d8', 'https://192.168.1.104:443/YLXcxMallBack/images/goodsImages/goodsimage001.jpg', '07001', null);

-- ----------------------------
-- Table structure for goods_image_mapbak
-- ----------------------------
DROP TABLE IF EXISTS `goods_image_mapbak`;
CREATE TABLE `goods_image_mapbak` (
  `goods_image_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` varchar(11) NOT NULL COMMENT '图片id',
  `goods_id` varchar(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`goods_image_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_image_mapbak
-- ----------------------------

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `goods_id` varchar(50) NOT NULL,
  `goods_tile` varchar(30) NOT NULL COMMENT '商品标题',
  `goods_model_number` varchar(30) NOT NULL COMMENT '型号',
  `goods_stock` varchar(11) NOT NULL COMMENT '库存',
  `format_price_no` varchar(11) DEFAULT NULL COMMENT '规格和价格条数',
  `image_file_no` varchar(11) DEFAULT NULL COMMENT '上传图片个数',
  `create_name` varchar(20) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_info
-- ----------------------------
INSERT INTO `goods_info` VALUES ('0662f956-0199-40a5-a1d5-eb37ea7de002', '床', '2', '10', '1', '1', '周芬', '2018-07-03 15:39:21', null);
INSERT INTO `goods_info` VALUES ('69b576bd-0ad0-47d5-9cd1-583884c04fff', '电视柜', 'L001', '10', '2', '2', '', '2018-07-03 15:47:34', null);
INSERT INTO `goods_info` VALUES ('922e6345-0551-4876-bdfe-bd04faa9b7d8', '沙发001', '123', '10', '2', '2', '', '2018-07-05 01:17:39', null);

-- ----------------------------
-- Table structure for goods_position_bak
-- ----------------------------
DROP TABLE IF EXISTS `goods_position_bak`;
CREATE TABLE `goods_position_bak` (
  `goods_position_id` int(11) DEFAULT NULL,
  `goods_positon_code` varchar(10) DEFAULT NULL,
  `goods_positon_name` varchar(20) DEFAULT NULL COMMENT '商品显示位置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_position_bak
-- ----------------------------

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL COMMENT '分组角色名称',
  `group_code` varchar(5) DEFAULT NULL COMMENT '用户类型：01系统管理员,02分销商,03客户,04导购员,05分销经理',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('18', '系统管理员', '10001');
INSERT INTO `group_info` VALUES ('19', '家居顾问', '10002');
INSERT INTO `group_info` VALUES ('20', '分销经纪人', '10003');
INSERT INTO `group_info` VALUES ('21', '分销经理', '10004');
INSERT INTO `group_info` VALUES ('22', '分销总监', '10005');
INSERT INTO `group_info` VALUES ('23', '推荐客户', '10006');
INSERT INTO `group_info` VALUES ('24', '普通客户', '10007');

-- ----------------------------
-- Table structure for group_user_map
-- ----------------------------
DROP TABLE IF EXISTS `group_user_map`;
CREATE TABLE `group_user_map` (
  `group_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`group_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_user_map
-- ----------------------------
INSERT INTO `group_user_map` VALUES ('3', '20', '4');
INSERT INTO `group_user_map` VALUES ('4', '18', '4');

-- ----------------------------
-- Table structure for power_group_map_bak
-- ----------------------------
DROP TABLE IF EXISTS `power_group_map_bak`;
CREATE TABLE `power_group_map_bak` (
  `power_group_id` varchar(50) NOT NULL,
  `power_id` varchar(50) DEFAULT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`power_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power_group_map_bak
-- ----------------------------
INSERT INTO `power_group_map_bak` VALUES ('1', '18', '18');
INSERT INTO `power_group_map_bak` VALUES ('2', '19', '19');
INSERT INTO `power_group_map_bak` VALUES ('3', '20', '20');
INSERT INTO `power_group_map_bak` VALUES ('4', '21', '21');

-- ----------------------------
-- Table structure for power_info_bak
-- ----------------------------
DROP TABLE IF EXISTS `power_info_bak`;
CREATE TABLE `power_info_bak` (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `power_code` varchar(5) DEFAULT NULL,
  `power_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `remark` varchar(50) DEFAULT NULL COMMENT '分组角色ID',
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户分组表';

-- ----------------------------
-- Records of power_info_bak
-- ----------------------------
INSERT INTO `power_info_bak` VALUES ('18', '10001', '系统管理', '测试环境');
INSERT INTO `power_info_bak` VALUES ('19', '10002', '家居顾问', null);
INSERT INTO `power_info_bak` VALUES ('20', '10003', '分销商', null);
INSERT INTO `power_info_bak` VALUES ('21', '10004', '普通用户', null);

-- ----------------------------
-- Table structure for product_info
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
-- Table structure for sales_info
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

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
INSERT INTO `sales_info` VALUES ('134', 'é¤?æ¡?', '7600', '2018-6-18', null, '137', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);
INSERT INTO `sales_info` VALUES ('135', 'é¤?æ¡?', '7600', '2018-6-18', null, '137', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', 'undefined', '1', null, null);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `dd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(30) NOT NULL COMMENT '微信唯一标识',
  `user_dear_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `user_reg_time` varchar(24) DEFAULT NULL COMMENT '用户注册时间',
  `manager_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('4', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', null, 'è¢?ä»?æ?­', '15208945149', '2018-06-13 10:43:12', '18876175897');
