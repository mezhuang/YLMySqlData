/*
Navicat MySQL Data Transfer

Source Server         : localhost(root)
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : yuanlian

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-31 00:43:37
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
  `remark1` varchar(50) DEFAULT NULL COMMENT '备注',
  `remark2` varchar(50) DEFAULT NULL,
  `remark3` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goods_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_class
-- ----------------------------
INSERT INTO `goods_class` VALUES ('1', '1', '01', '品类', '01001', '沙发', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'sofa.png', null, null, null);
INSERT INTO `goods_class` VALUES ('2', '1', '01', '品类', '01002', '床', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'bed.png', null, null, null);
INSERT INTO `goods_class` VALUES ('3', '1', '02', '风格', '02001', '现代中式', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'modern.png', null, null, null);
INSERT INTO `goods_class` VALUES ('4', '1', '02', '风格', '02002', '北欧轻奢', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'nordic.png', null, null, null);
INSERT INTO `goods_class` VALUES ('5', '1', '03', '空间', '03001', '客厅', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('6', '1', '03', '空间', '03002', '卧室', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('7', '2', '04', '套餐', '04001', '限时特惠套餐', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'sofa.png', '中深宅配100%全实木 胡桃木 试营业特惠套餐:全套16件，只需19800元', '活动时间:2018年5月12日-2018年6月12日，过时不候。', '25000');
INSERT INTO `goods_class` VALUES ('8', '2', '04', '套餐', '04002', '精英特惠', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'modern.png', '中深宅配100%全实木 胡桃木 试营业特惠套餐:全套16件，只需29800元', '活动时间:2018年8月12日-2018年8月12日，过时不候。', '25000');
INSERT INTO `goods_class` VALUES ('9', '1', '05', '品牌', '05001', '中深宅配', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('10', '3', '06', '首页展示位置', '06001', '首页轮播', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('11', '3', '06', '首页展示位置', '06002', '热销爆品', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('12', '3', '06', '首页展示位置', '06003', '精选推荐', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('13', '3', '07', '详情页图片位置', '07001', '滚动轮播', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('14', '3', '07', '详情页图片位置', '07002', '详情明细', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', null, null, null, null);
INSERT INTO `goods_class` VALUES ('15', '1', '01', '品类', '01003', '柜类', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'cabinets.png', null, null, null);
INSERT INTO `goods_class` VALUES ('16', '1', '01', '品类', '01004', '桌类', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'table.png', null, null, null);
INSERT INTO `goods_class` VALUES ('17', '1', '01', '品类', '01005', '几类', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'desks.png', null, null, null);
INSERT INTO `goods_class` VALUES ('18', '1', '01', '品类', '01006', '椅等', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'chair.png', null, null, null);
INSERT INTO `goods_class` VALUES ('19', '1', '01', '品类', '01007', '床垫', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'mattresses.png', null, null, null);
INSERT INTO `goods_class` VALUES ('20', '1', '01', '品类', '01008', '窗帘', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'household_goods.png', null, null, null);
INSERT INTO `goods_class` VALUES ('23', '1', '02', '风格', '02003', '简美', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'simple_american_style.png', null, null, null);
INSERT INTO `goods_class` VALUES ('24', '1', '02', '风格', '02004', '儿童', 'https://192.168.1.100:443/YLXcxMallBack/images/classImages/', 'children.png', null, null, null);

-- ----------------------------
-- Table structure for goods_class_map
-- ----------------------------
DROP TABLE IF EXISTS `goods_class_map`;
CREATE TABLE `goods_class_map` (
  `goods_class_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(50) NOT NULL COMMENT '商品id',
  `goods_twolevel_code` varchar(11) NOT NULL COMMENT '商品类型id',
  PRIMARY KEY (`goods_class_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;

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
INSERT INTO `goods_class_map` VALUES ('402', '21f75103-e8be-4be7-98b7-72b18a420bcc', '01001');
INSERT INTO `goods_class_map` VALUES ('403', '21f75103-e8be-4be7-98b7-72b18a420bcc', '02001');
INSERT INTO `goods_class_map` VALUES ('404', '21f75103-e8be-4be7-98b7-72b18a420bcc', '03001');
INSERT INTO `goods_class_map` VALUES ('405', '21f75103-e8be-4be7-98b7-72b18a420bcc', '04001');
INSERT INTO `goods_class_map` VALUES ('406', '21f75103-e8be-4be7-98b7-72b18a420bcc', '05001');
INSERT INTO `goods_class_map` VALUES ('407', '21f75103-e8be-4be7-98b7-72b18a420bcc', '06001');
INSERT INTO `goods_class_map` VALUES ('408', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '01002');
INSERT INTO `goods_class_map` VALUES ('409', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '02001');
INSERT INTO `goods_class_map` VALUES ('410', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '03001');
INSERT INTO `goods_class_map` VALUES ('411', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '04001');
INSERT INTO `goods_class_map` VALUES ('412', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '05001');
INSERT INTO `goods_class_map` VALUES ('413', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '06001');
INSERT INTO `goods_class_map` VALUES ('414', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '01002');
INSERT INTO `goods_class_map` VALUES ('415', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '02001');
INSERT INTO `goods_class_map` VALUES ('416', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '03001');
INSERT INTO `goods_class_map` VALUES ('417', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '04001');
INSERT INTO `goods_class_map` VALUES ('418', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '05001');
INSERT INTO `goods_class_map` VALUES ('419', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '06001');

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_formatprice
-- ----------------------------
INSERT INTO `goods_formatprice` VALUES ('6', null, '1', '11', '11');
INSERT INTO `goods_formatprice` VALUES ('9', null, '2.5', '10000', '8000');
INSERT INTO `goods_formatprice` VALUES ('10', null, '2.8', '12000', '9000');
INSERT INTO `goods_formatprice` VALUES ('11', null, '2.5', '1200', '1000');
INSERT INTO `goods_formatprice` VALUES ('12', null, '2.9', '2500', '1200');
INSERT INTO `goods_formatprice` VALUES ('13', null, '2.5', '1000', '8000');
INSERT INTO `goods_formatprice` VALUES ('14', null, '2.9', '1800', '9000');
INSERT INTO `goods_formatprice` VALUES ('55', '94a94e34-c4cc-4ad3-96f1-8f8368c1e420', '2700*850*650', '12000', '8900');
INSERT INTO `goods_formatprice` VALUES ('56', '21f75103-e8be-4be7-98b7-72b18a420bcc', '2700*850*650', '12000', '8900');
INSERT INTO `goods_formatprice` VALUES ('57', '21f75103-e8be-4be7-98b7-72b18a420bcc', '2.7*43*2323', '200', '100');
INSERT INTO `goods_formatprice` VALUES ('58', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '2700*850*650', '12000', '87000');

-- ----------------------------
-- Table structure for goods_image
-- ----------------------------
DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image` (
  `goods_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(100) DEFAULT NULL,
  `goods_image_server` varchar(100) NOT NULL COMMENT '图片url',
  `goods_image_url` varchar(100) NOT NULL,
  `goods_image_url_sl` varchar(100) DEFAULT NULL,
  `position_code` varchar(30) DEFAULT NULL COMMENT '显示位置',
  `position_name` varchar(20) DEFAULT NULL,
  `goods_image_text` varchar(150) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`goods_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_image
-- ----------------------------
INSERT INTO `goods_image` VALUES ('158', '94a94e34-c4cc-4ad3-96f1-8f8368c1e420', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/94a94e34-c4cc-4ad3-96f1-8f8368c1e420001.jpg', 'images/goodsImages_sl/94a94e34-c4cc-4ad3-96f1-8f8368c1e420001.jpg', '07001', '', null, null);
INSERT INTO `goods_image` VALUES ('159', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', 'images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '07001', '商品详情轮播图', '这款沙发不错哦', null);
INSERT INTO `goods_image` VALUES ('160', '21f75103-e8be-4be7-98b7-72b18a420bcc', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', 'images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '07002', '商品详情明细图', '这张床不错哦', null);
INSERT INTO `goods_image` VALUES ('161', '21f75103-e8be-4be7-98b7-72b18a420bcc', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', 'images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '07003', '商品首次展示图', '这个柜子不错哦', null);
INSERT INTO `goods_image` VALUES ('162', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', 'images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '07004', '套餐活动图', '这个茶几不错哦', null);

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `goods_id` varchar(50) NOT NULL,
  `goods_title` varchar(30) NOT NULL COMMENT '商品标题',
  `goods_sub_title` varchar(80) DEFAULT NULL,
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
INSERT INTO `goods_info` VALUES ('21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', null, 'L098', '10', '2', '1', '', '2018-07-19 17:28:11', null);
INSERT INTO `goods_info` VALUES ('3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', null, 'L098', '10', '1', '1', '', '2018-07-19 18:36:59', null);

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order` (
  `goods_order_id` varchar(50) NOT NULL,
  `open_id` varchar(30) DEFAULT NULL,
  `order_status` varchar(10) DEFAULT NULL COMMENT '商品状态,01待付款；02已付款；03已发货；04待评价',
  `total_num` varchar(10) DEFAULT NULL COMMENT '购买数量',
  `total_fee` varchar(20) DEFAULT NULL COMMENT '购买金额',
  `receive_address_id` varchar(30) DEFAULT NULL,
  `pay_time` varchar(20) DEFAULT NULL COMMENT '付款时间',
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goods_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES ('201807231257567421', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '01', '6', '122700', '6', '00:00:00', '2018-07-23 12:57:10');
INSERT INTO `goods_order` VALUES ('201807231324305171', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '01', '6', '122700', '6', '00:00:00', '2018-07-23 13:24:01');
INSERT INTO `goods_order` VALUES ('201807231713448931', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '01', '6', '122700', '6', '00:00:00', '2018-07-23 17:13:19');
INSERT INTO `goods_order` VALUES ('201807231853856741', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '01', '6', '122700', '6', '00:00:00', '2018-07-23 18:53:50');
INSERT INTO `goods_order` VALUES ('201807231858965981', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '02', '6', '122700', '6', '00:00:00', '2018-07-23 18:58:41');
INSERT INTO `goods_order` VALUES ('201807302352373389', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '01', '1', '25000', '6', '00:00:00', '2018-07-30 23:52:54');

-- ----------------------------
-- Table structure for goods_order_map
-- ----------------------------
DROP TABLE IF EXISTS `goods_order_map`;
CREATE TABLE `goods_order_map` (
  `goods_order_map_id` int(12) NOT NULL AUTO_INCREMENT,
  `goods_order_id` varchar(50) DEFAULT NULL,
  `goods_id` varchar(80) DEFAULT NULL,
  `goods_tile` varchar(80) DEFAULT NULL,
  `goods_format` varchar(30) DEFAULT NULL,
  `goods_price` varchar(30) DEFAULT NULL,
  `buy_number` varchar(10) DEFAULT NULL,
  `goods_image_url` varchar(255) DEFAULT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goods_order_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_order_map
-- ----------------------------
INSERT INTO `goods_order_map` VALUES ('127', '201807231257567421', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('128', '201807231257567421', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '8900', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('129', '201807231257567421', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('130', '201807231257567421', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2.7*43*2323', '8900', '11', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('131', '201807231257567421', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '100', '1', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('132', '201807231257567421', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '87000', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 12:57:10');
INSERT INTO `goods_order_map` VALUES ('133', '201807231324305171', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('134', '201807231324305171', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '8900', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('135', '201807231324305171', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('136', '201807231324305171', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2.7*43*2323', '8900', '11', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('137', '201807231324305171', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '100', '1', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('138', '201807231324305171', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '87000', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 13:24:01');
INSERT INTO `goods_order_map` VALUES ('139', '201807231713448931', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('140', '201807231713448931', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '8900', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('141', '201807231713448931', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('142', '201807231713448931', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2.7*43*2323', '8900', '11', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('143', '201807231713448931', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '100', '1', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('144', '201807231713448931', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '87000', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 17:13:19');
INSERT INTO `goods_order_map` VALUES ('145', '201807231853856741', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('146', '201807231853856741', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '8900', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('147', '201807231853856741', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('148', '201807231853856741', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2.7*43*2323', '8900', '11', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('149', '201807231853856741', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '100', '1', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('150', '201807231853856741', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '87000', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:53:51');
INSERT INTO `goods_order_map` VALUES ('151', '201807231858965981', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('152', '201807231858965981', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '8900', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('153', '201807231858965981', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '8900', '8', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('154', '201807231858965981', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2.7*43*2323', '8900', '11', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('155', '201807231858965981', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', '2700*850*650', '100', '1', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('156', '201807231858965981', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', '2700*850*650', '87000', '4', 'https://192.168.1.103:443/YLXcxMallBack/images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', '2018-07-23 18:58:41');
INSERT INTO `goods_order_map` VALUES ('157', '201807302352373389', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', null, '25000', '1', 'https://192.168.1.100:443/YLXcxMallBack/images/goodsImages/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', '2018-07-30 23:52:55');

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
-- Table structure for receive_goods_address
-- ----------------------------
DROP TABLE IF EXISTS `receive_goods_address`;
CREATE TABLE `receive_goods_address` (
  `receive_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(30) DEFAULT NULL,
  `receive_name` varchar(30) DEFAULT NULL,
  `receive_phone` varchar(12) DEFAULT NULL COMMENT '收货手机号',
  `receive_area` varchar(30) DEFAULT NULL COMMENT '所在区域',
  `detailed_address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `create_time` varchar(30) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`receive_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receive_goods_address
-- ----------------------------
INSERT INTO `receive_goods_address` VALUES ('6', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '周芬', '15208945149', '海南省海口市美兰区', '振发横路中景花园5栋701', '2018-07-19 17:00:46');

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
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `shopping_cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) DEFAULT NULL,
  `goods_id` varchar(50) DEFAULT NULL,
  `goods_title` varchar(100) DEFAULT NULL,
  `goods_image_server` varchar(100) DEFAULT NULL,
  `goods_image_url` varchar(150) DEFAULT NULL COMMENT '图片地址',
  `goods_unit_price` varchar(30) DEFAULT NULL,
  `goods_price` varchar(30) DEFAULT NULL COMMENT '所选产品价格',
  `format_code` varchar(30) DEFAULT NULL COMMENT '产品规格',
  `buy_number` varchar(255) DEFAULT NULL COMMENT '购买数量',
  `is_select` varchar(1) DEFAULT NULL COMMENT '是否已选中',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`shopping_cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('16', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', null, '8900', '55', '8', '0', '2018-07-17 12:59:36');
INSERT INTO `shopping_cart` VALUES ('19', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', null, '8900', '56', '4', '0', '2018-07-17 14:03:09');
INSERT INTO `shopping_cart` VALUES ('20', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', null, '8900', '55', '8', '0', '2018-07-17 14:31:47');
INSERT INTO `shopping_cart` VALUES ('21', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', null, '8900', '57', '11', '0', '2018-07-17 15:18:17');
INSERT INTO `shopping_cart` VALUES ('22', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', null, '100', '58', '1', '0', '2018-07-17 15:29:53');
INSERT INTO `shopping_cart` VALUES ('23', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '3fdfe89f-3f9b-4d55-8f54-fc608b587f94', '床001', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages_sl/3fdfe89f-3f9b-4d55-8f54-fc608b587f94001.jpg', null, '87000', '58', '4', '0', '2018-07-19 22:54:19');
INSERT INTO `shopping_cart` VALUES ('24', 'ozLOG5LWXLjDpxZLrD1DxXIKxHWg', '21f75103-e8be-4be7-98b7-72b18a420bcc', '沙发002', 'https://192.168.1.100:443/YLXcxMallBack/', 'images/goodsImages/21f75103-e8be-4be7-98b7-72b18a420bcc001.jpg', null, '25000', '与客服确认', '3', '0', '2018-07-30 23:46:24');

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
