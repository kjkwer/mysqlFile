/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : guli

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 02/06/2018 12:19:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sl_banner_neiye
-- ----------------------------
DROP TABLE IF EXISTS `sl_banner_neiye`;
CREATE TABLE `sl_banner_neiye`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `yemian` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面',
  `tupian` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'banner图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_banner_neiye模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_banner_neiye
-- ----------------------------
INSERT INTO `sl_banner_neiye` VALUES (1, '2018-06-02 11:56:52', '谷栗优势', '/public/images/1527911812zhaomubanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (2, '2018-06-02 12:01:11', '装修公司', '/public/images/1527912071zsbanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (3, '2018-06-02 12:01:34', '建筑材料', '/public/images/1527912094jianzhubanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (4, '2018-06-02 12:01:59', '优质房源', '/public/images/1527912119youzhifangyuanbanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (5, '2018-06-02 12:02:30', '家装学堂', '/public/images/1527912150xuetangbanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (6, '2018-06-02 12:02:51', '服务保障', '/public/images/1527912171baozhangbanner.jpg');
INSERT INTO `sl_banner_neiye` VALUES (7, '2018-06-02 12:03:17', '人才招募', '/public/images/1527912197zhaomubanner.jpg');

SET FOREIGN_KEY_CHECKS = 1;
