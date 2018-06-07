/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : photo_album

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-04-16 14:15:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sl_total
-- ----------------------------
DROP TABLE IF EXISTS `sl_total`;
CREATE TABLE `sl_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `num` char(100) DEFAULT NULL COMMENT 'num',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='sl_total模型主表';

-- ----------------------------
-- Records of sl_total
-- ----------------------------
INSERT INTO `sl_total` VALUES ('1', '2018-04-16 14:07:42', '2');
