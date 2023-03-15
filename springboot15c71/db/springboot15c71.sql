/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : springboot15c71

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2022-03-07 21:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2030-05-07 14:46:28', '1', '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES ('2', '2030-05-07 14:46:28', '2', '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES ('3', '2030-05-07 14:46:28', '3', '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES ('4', '2030-05-07 14:46:28', '4', '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES ('5', '2030-05-07 14:46:28', '5', '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES ('6', '2030-05-07 14:46:28', '6', '宇宙银河系月球1号', '月某', '13823888886', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zhekouyongpin' COMMENT '手机表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '手机id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '手机名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1638938802363 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线帮助';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('51', '2030-05-07 14:46:28', '1', '1', '提问1', '回复1', '1');
INSERT INTO `chat` VALUES ('52', '2030-05-07 14:46:28', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('53', '2030-05-07 14:46:28', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('54', '2030-05-07 14:46:28', '4', '4', '提问4', '回复4', '4');
INSERT INTO `chat` VALUES ('55', '2030-05-07 14:46:28', '5', '5', '提问5', '回复5', '5');
INSERT INTO `chat` VALUES ('56', '2030-05-07 14:46:28', '6', '6', '提问6', '回复6', '6');

-- ----------------------------
-- Table structure for chongwuyongpin
-- ----------------------------
DROP TABLE IF EXISTS `chongwuyongpin`;
CREATE TABLE `chongwuyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '手机编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '手机名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '手机分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '手机详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商城手机';

-- ----------------------------
-- Records of chongwuyongpin
-- ----------------------------
INSERT INTO `chongwuyongpin` VALUES ('21', '2030-05-07 14:46:28', '手机编号1', '手机名称1', '手机分类1', '品牌1', 'http://localhost:8080/springboot15c71/upload/1646658292314.jpeg', '<p>手机详情1</p>', '2022-03-07 21:04:42', '11', '6999');
INSERT INTO `chongwuyongpin` VALUES ('22', '2030-05-07 14:46:28', '手机编号2', '手机名称2', '手机分类2', '品牌2', 'http://localhost:8080/springboot15c71/upload/1646658303714.jpeg', '<p>手机详情2</p>', '2022-03-07 21:04:57', '8', '8999');
INSERT INTO `chongwuyongpin` VALUES ('23', '2030-05-07 14:46:28', '手机编号3', '手机名称3', '手机分类3', '品牌3', 'http://localhost:8080/springboot15c71/upload/1646658315480.jpeg', '<p>手机详情3</p>', '2022-03-07 21:05:08', '10', '5999');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springboot15c71/upload/1646658502702.jpeg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springboot15c71/upload/1646658511253.jpeg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springboot15c71/upload/1646658520569.jpeg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for discusschongwuyongpin
-- ----------------------------
DROP TABLE IF EXISTS `discusschongwuyongpin`;
CREATE TABLE `discusschongwuyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商城手机评论表';

-- ----------------------------
-- Records of discusschongwuyongpin
-- ----------------------------
INSERT INTO `discusschongwuyongpin` VALUES ('121', '2030-05-07 14:46:28', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusschongwuyongpin` VALUES ('122', '2030-05-07 14:46:28', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusschongwuyongpin` VALUES ('123', '2030-05-07 14:46:28', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusschongwuyongpin` VALUES ('124', '2030-05-07 14:46:28', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusschongwuyongpin` VALUES ('125', '2030-05-07 14:46:28', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusschongwuyongpin` VALUES ('126', '2030-05-07 14:46:28', '6', '6', '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusszhekouyongpin
-- ----------------------------
DROP TABLE IF EXISTS `discusszhekouyongpin`;
CREATE TABLE `discusszhekouyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='秒杀手机评论表';

-- ----------------------------
-- Records of discusszhekouyongpin
-- ----------------------------
INSERT INTO `discusszhekouyongpin` VALUES ('131', '2030-05-07 14:46:28', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusszhekouyongpin` VALUES ('132', '2030-05-07 14:46:28', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusszhekouyongpin` VALUES ('133', '2030-05-07 14:46:28', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusszhekouyongpin` VALUES ('134', '2030-05-07 14:46:28', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusszhekouyongpin` VALUES ('135', '2030-05-07 14:46:28', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusszhekouyongpin` VALUES ('136', '2030-05-07 14:46:28', '6', '6', '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('111', '2030-05-07 14:46:28', '1', '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES ('112', '2030-05-07 14:46:28', '2', '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES ('113', '2030-05-07 14:46:28', '3', '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES ('114', '2030-05-07 14:46:28', '4', '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES ('115', '2030-05-07 14:46:28', '5', '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES ('116', '2030-05-07 14:46:28', '6', '用户名6', '留言内容6', '回复内容6');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='商城资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('101', '2030-05-07 14:46:28', '标题1', '简介1', 'http://localhost:8080/springboot15c71/upload/1646658478065.jpeg', '<p>内容1</p>');
INSERT INTO `news` VALUES ('102', '2030-05-07 14:46:28', '标题2', '简介2', 'http://localhost:8080/springboot15c71/upload/1646658490247.jpeg', '<p>内容2</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zhekouyongpin' COMMENT '手机表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '手机id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '手机名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '手机图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '秒杀价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '秒杀总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '手机分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='手机分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('31', '2030-05-07 14:46:28', '手机分类1');
INSERT INTO `shangpinfenlei` VALUES ('32', '2030-05-07 14:46:28', '手机分类2');
INSERT INTO `shangpinfenlei` VALUES ('33', '2030-05-07 14:46:28', '手机分类3');
INSERT INTO `shangpinfenlei` VALUES ('34', '2030-05-07 14:46:28', '手机分类4');
INSERT INTO `shangpinfenlei` VALUES ('35', '2030-05-07 14:46:28', '手机分类5');
INSERT INTO `shangpinfenlei` VALUES ('36', '2030-05-07 14:46:28', '手机分类6');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1620370051373', '11', 'yonghu', '用户', 'lyolz9r4dax0ri0p2sy1pw9t7n1crou6', '2030-05-07 14:47:35', '2030-05-07 15:47:36');
INSERT INTO `token` VALUES ('2', '1', 'abo', 'users', '管理员', 'cx7boky6wigu1vrckflnu3lokw6cuquo', '2030-05-07 14:47:41', '2022-03-07 22:04:38');
INSERT INTO `token` VALUES ('3', '1637811957278', '1', 'yonghu', '用户', 'alzhrouk50ofxllr0zzrdq494k9xky0y', '2030-11-25 11:46:05', '2021-12-08 17:06:34');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2030-05-07 14:46:28');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1637811957279 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('11', '2030-05-07 14:46:28', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian1.jpg', '100');
INSERT INTO `yonghu` VALUES ('12', '2030-05-07 14:46:28', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian2.jpg', '100');
INSERT INTO `yonghu` VALUES ('13', '2030-05-07 14:46:28', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian3.jpg', '100');
INSERT INTO `yonghu` VALUES ('14', '2030-05-07 14:46:28', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian4.jpg', '100');
INSERT INTO `yonghu` VALUES ('15', '2030-05-07 14:46:28', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian5.jpg', '100');
INSERT INTO `yonghu` VALUES ('16', '2030-05-07 14:46:28', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', 'http://localhost:8080/springboot15c71/upload/yonghu_zhaopian6.jpg', '100');
INSERT INTO `yonghu` VALUES ('1620370051373', '2030-05-07 14:47:31', '11', '11', '色粉', '11', null, '11122211111', null, '0');
INSERT INTO `yonghu` VALUES ('1637811957278', '2030-11-25 11:45:57', '1', '1', '1', '23', null, '13212345678', null, '0');

-- ----------------------------
-- Table structure for zhekouyongpin
-- ----------------------------
DROP TABLE IF EXISTS `zhekouyongpin`;
CREATE TABLE `zhekouyongpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '手机编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '手机名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '手机分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '手机详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='秒杀手机';

-- ----------------------------
-- Records of zhekouyongpin
-- ----------------------------
INSERT INTO `zhekouyongpin` VALUES ('41', '2030-05-07 14:46:28', '手机编号1', '手机名称1', '手机分类1', '品牌1', 'http://localhost:8080/springboot15c71/upload/1646658449366.jpeg', '<p>手机详情1</p>', '2022-03-07 21:07:21', '7', '9999');
INSERT INTO `zhekouyongpin` VALUES ('42', '2030-05-07 14:46:28', '手机编号2', '手机名称2', '手机分类2', '品牌2', 'http://localhost:8080/springboot15c71/upload/1646658461044.jpeg', '<p>手机详情2</p>', '2022-03-07 21:07:34', '7', '7999');
