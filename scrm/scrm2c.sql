/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 127.0.0.1:3306
 Source Schema         : scrm2c

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 05/06/2018 00:23:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动标题',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应抽奖规则',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `attend_require` int(10) NOT NULL DEFAULT 0 COMMENT '参加条件，位图，最低位是0位，0位表示微信授权，1位表示提交手机号。例如0x01表示微信授权，不需要手机号',
  `info` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `start_time` int(10) NOT NULL DEFAULT 0 COMMENT '活动开始时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '活动结束时间',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for attend_record
-- ----------------------------
DROP TABLE IF EXISTS `attend_record`;
CREATE TABLE `attend_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应抽奖规则ID',
  `activity_id` int(10) NOT NULL DEFAULT 0 COMMENT '活动ID',
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '参与抽奖用户ID',
  `is_hit` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否中奖，0-未中奖，1-中奖',
  `prize_rule` int(10) NOT NULL DEFAULT 0 COMMENT '奖品规则ID',
  `code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '使用的码',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户参与抽奖记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for code_increase
-- ----------------------------
DROP TABLE IF EXISTS `code_increase`;
CREATE TABLE `code_increase`  (
  `current_day` int(11) NOT NULL COMMENT '日期（20180531）',
  `increase` bigint(20) NOT NULL COMMENT '增长值',
  PRIMARY KEY (`current_day`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_increase
-- ----------------------------
INSERT INTO `code_increase` VALUES (20180601, 100042269);
INSERT INTO `code_increase` VALUES (20180602, 3025042);

-- ----------------------------
-- Table structure for code_scan_count
-- ----------------------------
DROP TABLE IF EXISTS `code_scan_count`;
CREATE TABLE `code_scan_count`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `pv_code` bigint(20) NOT NULL COMMENT '码序号',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'user表id',
  `pv_code_owner_id` int(11) NOT NULL COMMENT '码序号所属平台商户ID',
  `activity_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动ID',
  `activity_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `phone_registration_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机归属地',
  `vip_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会员类型',
  `prize_level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '奖品等级',
  `prize_id` bigint(20) NOT NULL COMMENT '奖品ID',
  `prize_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品名称',
  `prize_worth` int(11) NOT NULL COMMENT '奖品价值（元）',
  `scan_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '扫码地址',
  `scan_time` bigint(20) NOT NULL COMMENT '扫码时间',
  `scan_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扫码IP',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pv_code_owner_id_id`(`pv_code_owner_id`, `id`) USING BTREE,
  INDEX `idx_pv_code_owner_id_pv_code_id`(`pv_code_owner_id`, `pv_code`, `id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '扫码统计表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_scan_count
-- ----------------------------
INSERT INTO `code_scan_count` VALUES (1, '13844434343', 10001, 0, 1, 1, '测试活动', '四川省成都市', '高级会员', '一等奖', 1, '电饭锅', 300, '四川成都', 1527929936, '100.22.33.22', 1527929936);
INSERT INTO `code_scan_count` VALUES (34, '', 2018060100000000002, 0, 1, 1, 'test', '', '', '2', 3, 'Iphone X 256G', 8999, '', 1528010207, '', 1528010207);
INSERT INTO `code_scan_count` VALUES (35, '', 2018060100000000002, 0, 1, 1, 'test', '', '', '2', 3, 'Iphone X 256G', 8999, '', 1528010320, '', 1528010320);

-- ----------------------------
-- Table structure for code_segment
-- ----------------------------
DROP TABLE IF EXISTS `code_segment`;
CREATE TABLE `code_segment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '码段名称',
  `activity_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联活动ID',
  `active_count` bigint(20) NOT NULL DEFAULT 0 COMMENT '编码激活数',
  `total_count` bigint(20) NOT NULL COMMENT '编码总数',
  `start_num` bigint(20) NOT NULL COMMENT '码段开始值',
  `end_num` bigint(20) NOT NULL COMMENT '码段结束值',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注说明',
  `random_key` int(11) NOT NULL COMMENT '随机值（用于加密）',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态（0：未启用，1：启用，2：定时启用）',
  `enabled_time` bigint(20) NOT NULL COMMENT '定时启用时间',
  `gt_time` bigint(20) NOT NULL COMMENT '码段生成时间戳（毫秒，用于加密）',
  `owner_id` int(11) NOT NULL COMMENT '平台用户ID',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_start_num_end_num`(`start_num`, `end_num`) USING BTREE,
  INDEX `idx_owner_id`(`owner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '码段列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_segment
-- ----------------------------
INSERT INTO `code_segment` VALUES (10, '测试码段', 1, 1, 10000, 2018060100000000001, 2018060100000010000, '测试一下', 875857, 2, 1527788731, 1527928110206, 1, 1527784050, 1527928110);
INSERT INTO `code_segment` VALUES (11, '非常厉害', 0, 0, 1000, 2018060100000010001, 2018060100000011000, '测试', 443843, 0, 1527788535, 1527788535386, 1, 1527784080, 1527788535);
INSERT INTO `code_segment` VALUES (12, '非常好', 0, 0, 2000, 2018060100000011001, 2018060100000013000, '反问我分', 500989, 2, 1528911740, 1527788544962, 1, 1527784150, 1527788544);
INSERT INTO `code_segment` VALUES (13, '十五个', 0, 0, 15, 2018060100000013001, 2018060100000013015, '', 182927, 0, 0, 1527784209551, 1, 1527784209, 1527784209);
INSERT INTO `code_segment` VALUES (14, '非常多', 0, 0, 30, 2018060100000013016, 2018060100000013045, '', 776424, 0, 0, 1527784242165, 1, 1527784242, 1527784242);
INSERT INTO `code_segment` VALUES (15, '一亿', 0, 0, 100000000, 2018060100000013046, 2018060100100013045, '非常多', 967347, 0, 0, 1527784448240, 1, 1527784448, 1527784448);
INSERT INTO `code_segment` VALUES (16, 'fwefe', 0, 0, 10000, 2018060100100013046, 2018060100100023045, '', 916935, 0, 2018, 1527786835432, 1, 1527786835, 1527786835);
INSERT INTO `code_segment` VALUES (17, 'wefwef', 0, 0, 123, 2018060100100023046, 2018060100100023168, '', 732414, 0, 1527786915, 1527786918846, 1, 1527786918, 1527786918);
INSERT INTO `code_segment` VALUES (18, 'flwjflwje', 0, 0, 11000, 2018060100100023169, 2018060100100034168, '', 348733, 0, 1527787826, 1527787826137, 1, 1527787826, 1527787826);
INSERT INTO `code_segment` VALUES (19, '测试测试分为发', 0, 0, 1999, 2018060100100034169, 2018060100100036167, '', 969297, 2, 1527787864, 1527787896361, 1, 1527787896, 1527787896);
INSERT INTO `code_segment` VALUES (20, '厉害了', 0, 0, 323, 2018060100100036491, 2018060100100036813, '', 626728, 2, 1527805941, 1527787970397, 1, 1527787970, 1527787970);
INSERT INTO `code_segment` VALUES (21, '范围范文芳问', 0, 0, 2123, 2018060100100036814, 2018060100100038936, '', 338724, 0, 1527787990, 1527787990489, 1, 1527787990, 1527787990);
INSERT INTO `code_segment` VALUES (22, '34234234', 0, 0, 3333, 2018060100100038937, 2018060100100042269, '', 989825, 2, 1527874395, 1527788004794, 1, 1527788004, 1527788004);
INSERT INTO `code_segment` VALUES (23, 'fwefwef', 0, 0, 1000, 2018060200000000001, 2018060200000001000, '', 977725, 0, 1527928116, 1527928116731, 1, 1527928116, 1527928116);
INSERT INTO `code_segment` VALUES (24, '非常六加一', 0, 0, 3023042, 2018060200000001001, 2018060200003024042, '', 332453, 0, 1527928136, 1527928136855, 1, 1527928136, 1527928136);
INSERT INTO `code_segment` VALUES (25, 'wefwef', 0, 0, 1000, 2018060200003024043, 2018060200003025042, '', 126133, 0, 1527929936, 1527929936761, 1, 1527929936, 1527929936);

-- ----------------------------
-- Table structure for lottery_activity
-- ----------------------------
DROP TABLE IF EXISTS `lottery_activity`;
CREATE TABLE `lottery_activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动标题',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应抽奖规则',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `attend_require` int(10) NOT NULL DEFAULT 0 COMMENT '参加条件，位图，最低位是0位，0位表示微信授权，1位表示提交手机号。例如0x01表示微信授权，不需要手机号',
  `info` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `start_time` int(10) NOT NULL DEFAULT 0 COMMENT '活动开始时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '活动结束时间',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_activity
-- ----------------------------
INSERT INTO `lottery_activity` VALUES (1, 'test', 15, 1, 0, '1232323213ghhjhg', 1528214400, 1529424000, 1527931432, 1528052275);
INSERT INTO `lottery_activity` VALUES (2, '/v1/forklift/common/keyValue', 0, 1, 0, '', -28800, 1872000, 1528048973, 1528052293);
INSERT INTO `lottery_activity` VALUES (3, '', 0, 1, 0, '', 0, 0, 1528049041, 1528049041);
INSERT INTO `lottery_activity` VALUES (4, '123213', 0, 1, 0, '12321323', 2018, 2018, 1528049120, 1528049120);
INSERT INTO `lottery_activity` VALUES (5, 'tos', 21, 1, 0, '', 2018, 2018, 1528049792, 1528049792);
INSERT INTO `lottery_activity` VALUES (6, '', 25, 1, 0, '', 1528214400, 1529942400, 1528052491, 1528052491);

-- ----------------------------
-- Table structure for lottery_attend_record
-- ----------------------------
DROP TABLE IF EXISTS `lottery_attend_record`;
CREATE TABLE `lottery_attend_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应抽奖规则ID',
  `activity_id` int(10) NOT NULL DEFAULT 0 COMMENT '活动ID',
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '参与抽奖用户ID',
  `is_hit` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否中奖，0-未中奖，1-中奖',
  `prize_rule` int(10) NOT NULL DEFAULT 0 COMMENT '奖品规则ID',
  `code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '使用的码',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户参与抽奖记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for lottery_code_segment
-- ----------------------------
DROP TABLE IF EXISTS `lottery_code_segment`;
CREATE TABLE `lottery_code_segment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '码段名称',
  `activity_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联活动ID',
  `active_count` bigint(20) NOT NULL DEFAULT 0 COMMENT '编码激活数',
  `total_count` bigint(20) NOT NULL COMMENT '编码总数',
  `start_num` bigint(20) NOT NULL COMMENT '码段开始值',
  `end_num` bigint(20) NOT NULL COMMENT '码段结束值',
  `random_key` int(11) NOT NULL COMMENT '随机值（用于加密）',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态（0：停用，1：启用）',
  `gt_time` bigint(20) NOT NULL COMMENT '码段生成时间戳（毫秒，用于加密）',
  `owner_id` int(11) NOT NULL COMMENT '平台用户ID',
  `create_time` bigint(20) NOT NULL COMMENT '创建时间',
  `update_time` bigint(20) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_start_num_end_num`(`start_num`, `end_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '码段列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_code_segment
-- ----------------------------
INSERT INTO `lottery_code_segment` VALUES (1, '测试码段', 0, 0, 100, 1000000000000000001, 1000000000000000100, 0, 1, 0, 0, 1527337792, 1527423491);

-- ----------------------------
-- Table structure for lottery_prize_inventory
-- ----------------------------
DROP TABLE IF EXISTS `lottery_prize_inventory`;
CREATE TABLE `lottery_prize_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `prize_template_id` int(10) NOT NULL DEFAULT 0 COMMENT '奖品ID，prize_template的id',
  `prize_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '奖品类型，1-实物',
  `deliver_from` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-平台，2-商家',
  `deliver_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-物流，2-自提',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价格（元）, -100 随机，>=0表示价格',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品名称',
  `info` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品介绍',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品头像',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `total` int(10) NOT NULL DEFAULT 0 COMMENT '总量，包含已经出库的数量',
  `taken_count` int(10) NOT NULL DEFAULT 0 COMMENT '已使用，库存=总量-已使用',
  `assigned_count` int(10) NOT NULL DEFAULT 0 COMMENT '已分配，指被奖品规则分配的数量',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_prize_inventory
-- ----------------------------
INSERT INTO `lottery_prize_inventory` VALUES (1, 2, 1, 2, 2, 2999, '华为P20', '华为P20手机', '', 1, 1000, 101, 2, 1, 1527516409, 1527692560);
INSERT INTO `lottery_prize_inventory` VALUES (2, 1, 1, 2, 1, 1599, '小米手机MIX2S', '小米手机', '', 1, 100, 0, 0, 1, 1527779910, 1527779910);
INSERT INTO `lottery_prize_inventory` VALUES (3, 3, 1, 2, 1, 8999, 'Iphone X 256G', '全面屏，齐刘海，Iphone X 256G', '', 1, 10000, 0, 0, 1, 1527941778, 1527941778);

-- ----------------------------
-- Table structure for lottery_prize_record
-- ----------------------------
DROP TABLE IF EXISTS `lottery_prize_record`;
CREATE TABLE `lottery_prize_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_id` int(10) NOT NULL DEFAULT 0 COMMENT '活动ID',
  `prize_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '奖品规则ID',
  `prize_id` int(10) NOT NULL DEFAULT 0 COMMENT '库存ID',
  `pv_code` bigint(20) NOT NULL COMMENT '码序号',
  `code_scan_count_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '抽奖ID',
  `user_id` int(10) NOT NULL DEFAULT 0 COMMENT '参与抽奖用户ID',
  `prize_time` int(10) NOT NULL DEFAULT 0 COMMENT '中奖时间',
  `prize_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖品名称',
  `status` smallint(5) NOT NULL DEFAULT 0 COMMENT '对奖状态，1-未兑奖，2-已兑奖',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `pv_code`(`pv_code`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中奖记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_prize_record
-- ----------------------------
INSERT INTO `lottery_prize_record` VALUES (1, 1, 3, 3, 2018060100000000002, 34, 6000000, 1528010207, 'Iphone X 256G', 1, 1528010207);
INSERT INTO `lottery_prize_record` VALUES (2, 2, 3, 3, 2018060100000000003, 34, 6000001, 1528010207, 'Iphone X 256G', 2, 1528010207);

-- ----------------------------
-- Table structure for lottery_prize_rule
-- ----------------------------
DROP TABLE IF EXISTS `lottery_prize_rule`;
CREATE TABLE `lottery_prize_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '抽奖规则ID',
  `level` int(10) NOT NULL DEFAULT -1 COMMENT '奖品等级，999999-特等奖',
  `prize_inventory_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应奖品库存表id',
  `assigned_num` int(10) NOT NULL DEFAULT 0 COMMENT '奖品数目',
  `delivered_count` int(10) NOT NULL DEFAULT 0 COMMENT '已分配数量',
  `probability_set` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调整后的中奖概率',
  `user_limit` smallint(5) NOT NULL DEFAULT 0 COMMENT '单人中奖限制,0-无限制',
  `stat_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '单人统计标识,0-无，1-微信OpenID，2-手机号',
  `is_send_text` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发送中奖短信,0-不发送，1-发送短信',
  `text_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '短信内容',
  `equal_prizes` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '替换商品ID列表，逗号分割',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '状态，1-启用，0-停用',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lottery_rule_id`(`lottery_rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖品规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_prize_rule
-- ----------------------------
INSERT INTO `lottery_prize_rule` VALUES (1, 1, 999999, 2, 10, 0, '', 0, 0, 0, '', '', 1, 1527933719, 1527933719, 1);
INSERT INTO `lottery_prize_rule` VALUES (2, 1, 1, 1, 90, 0, '60', 0, 0, 0, '', '', 1, 1527941179, 1527941179, 1);
INSERT INTO `lottery_prize_rule` VALUES (3, 1, 2, 3, 90, 1, '', 0, 0, 0, '', '', 1, 1527941823, 1527941823, 1);

-- ----------------------------
-- Table structure for lottery_prize_template
-- ----------------------------
DROP TABLE IF EXISTS `lottery_prize_template`;
CREATE TABLE `lottery_prize_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品模板名称',
  `prize_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '奖品类型，1-实物',
  `deliver_from` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-平台，2-商家',
  `deliver_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-物流，2-自提',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `cost` tinyint(3) NOT NULL DEFAULT 0 COMMENT '是否扣费，1-是，0-否',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价格（元）, -100 随机，>=0表示价格',
  `info` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品介绍',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品头像',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖品模板' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_prize_template
-- ----------------------------
INSERT INTO `lottery_prize_template` VALUES (1, '小米手机MIX2S', 1, 2, 1, 1, 0, 1599, '小米手机', '', 1, 1527428746, 1527523842);
INSERT INTO `lottery_prize_template` VALUES (2, '华为P20', 1, 2, 2, 1, 0, 2999, '华为P20手机', '', 1, 1527517196, 1527523790);
INSERT INTO `lottery_prize_template` VALUES (3, 'Iphone X 256G', 1, 2, 1, 1, 0, 8999, '全面屏，齐刘海，Iphone X 256G', '', 1, 1527941761, 1527941761);

-- ----------------------------
-- Table structure for lottery_rule
-- ----------------------------
DROP TABLE IF EXISTS `lottery_rule`;
CREATE TABLE `lottery_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品名称',
  `algorithm` smallint(5) NOT NULL DEFAULT 0 COMMENT '抽奖算法，1-平均分布，2-绝对随机',
  `info` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '抽奖规则备注',
  `filter_user` tinyint(3) NOT NULL DEFAULT 0 COMMENT '抽奖用户过滤，0-无，1-黑名单，2-会员组',
  `vip_group_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '会员组类型，1-内部会员组，2-外部会员组',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '抽奖规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lottery_rule
-- ----------------------------
INSERT INTO `lottery_rule` VALUES (1, '买辣肠抽王者皮肤', 2, '买辣肠抽王者皮肤介绍', 2, 0, 1, 1, 1527607178, 1527607350);

-- ----------------------------
-- Table structure for prize_inventory
-- ----------------------------
DROP TABLE IF EXISTS `prize_inventory`;
CREATE TABLE `prize_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `prize_template_id` int(10) NOT NULL DEFAULT 0 COMMENT '奖品ID，prize_template的id',
  `prize_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '奖品类型，1-实物',
  `deliver_from` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-平台，2-商家',
  `deliver_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-物流，2-自提',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价格（元）, -100 随机，>=0表示价格',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品名称',
  `info` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品介绍',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品头像',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `total` int(10) NOT NULL DEFAULT 0 COMMENT '总量，包含已经出库的数量',
  `used` int(10) NOT NULL DEFAULT 0 COMMENT '已使用，库存=总量-已使用',
  `delivered_count` int(10) NOT NULL DEFAULT 0 COMMENT '已分配',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '库存' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of prize_inventory
-- ----------------------------
INSERT INTO `prize_inventory` VALUES (1, 2, 1, 2, 2, 2999, '华为P20', '华为P20手机', '', 0, 1000, 101, 2, 1, 1527516409, 1527524764);

-- ----------------------------
-- Table structure for prize_record
-- ----------------------------
DROP TABLE IF EXISTS `prize_record`;
CREATE TABLE `prize_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应抽奖规则ID',
  `activity_id` int(10) NOT NULL DEFAULT 0 COMMENT '活动ID',
  `prize_rule` int(10) NOT NULL DEFAULT 0 COMMENT '奖品规则ID',
  `attend_record_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '抽奖记录ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中奖记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for prize_rule
-- ----------------------------
DROP TABLE IF EXISTS `prize_rule`;
CREATE TABLE `prize_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `lottery_rule_id` int(10) NOT NULL DEFAULT 0 COMMENT '抽奖规则ID',
  `level` smallint(5) NOT NULL DEFAULT -1 COMMENT '奖品等级，999999-特等奖',
  `prize_inventory_id` int(10) NOT NULL DEFAULT 0 COMMENT '对应奖品库存表id',
  `deliver_num` int(10) NOT NULL DEFAULT 0 COMMENT '奖品数目',
  `delivered_count` int(10) NOT NULL DEFAULT 0 COMMENT '已分配数量',
  `probability_set` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '调整后的中奖概率',
  `stat_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '单人统计标识,0-无，1-微信OpenID，2-手机号',
  `equal_prizes` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '替换商品ID列表，逗号分割',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '状态，1-启用，0-停用',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lottery_rule_id`(`lottery_rule_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖品规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for prize_template
-- ----------------------------
DROP TABLE IF EXISTS `prize_template`;
CREATE TABLE `prize_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品模板名称',
  `prize_type` smallint(5) NOT NULL DEFAULT 0 COMMENT '奖品类型，1-实物',
  `deliver_from` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-平台，2-商家',
  `deliver_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-物流，2-自提',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '发奖方，1-启用，0-停用',
  `cost` tinyint(3) NOT NULL DEFAULT 0 COMMENT '是否扣费，1-是，0-否',
  `price` int(10) NOT NULL DEFAULT 0 COMMENT '价格（元）, -100 随机，>=0表示价格',
  `info` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品介绍',
  `avatar` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '奖品头像',
  `create_user_id` int(10) NOT NULL COMMENT '创建人ID',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖品模板' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of prize_template
-- ----------------------------
INSERT INTO `prize_template` VALUES (1, '小米手机MIX2S', 1, 2, 1, 1, 0, 1599, '小米手机', '', 1, 1527428746, 1527523842);
INSERT INTO `prize_template` VALUES (2, '华为P20', 1, 2, 2, 1, 0, 2999, '华为P20手机', '', 1, 1527517196, 1527523790);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'user表id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名字',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机',
  `province` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `zone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `detail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `prize_record_id` int(11) NOT NULL DEFAULT 0 COMMENT '奖品规则ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES (1, 6000001, '张三', '13844434343', '四川', '成都', '高薪', '133号', 0);

-- ----------------------------
-- Table structure for user_base_info
-- ----------------------------
DROP TABLE IF EXISTS `user_base_info`;
CREATE TABLE `user_base_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '头像相对地址',
  `phone_number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '手机号',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '用户登记的真名',
  `salt` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT 'userToken salt',
  `user_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT 'userToken',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0-保密，1-男，2-女',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `phone_number`(`phone_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6000005 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_base_info
-- ----------------------------
INSERT INTO `user_base_info` VALUES (6000000, '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', '', '0', '498dae14', '2152d7b9c4dc190901491cbb4e30029b', 1528036902, 1);
INSERT INTO `user_base_info` VALUES (6000001, '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', '13844434343', '0', 'c0349111', '1946625a37c08785da61f809ca226248', 1528037023, 1);
INSERT INTO `user_base_info` VALUES (6000002, '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', '', '0', '7d2dd944', '256474e176d11a44ba0dd7d3c76b8e0c', 1528037431, 1);
INSERT INTO `user_base_info` VALUES (6000003, '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', '', '0', 'eefbb887', '153425e14f9761076bb2e7d293621820', 1528037497, 1);
INSERT INTO `user_base_info` VALUES (6000004, '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', '', '0', '67250158', '31821e090afe3ed2a4a974c14d05eb76', 1528038109, 1);

-- ----------------------------
-- Table structure for user_third_token
-- ----------------------------
DROP TABLE IF EXISTS `user_third_token`;
CREATE TABLE `user_third_token`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'user表id',
  `open_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'open_id',
  `open_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'open_token',
  `open_nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方昵称',
  `open_avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方头像地址',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否有效，0-无效，1-有效',
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `open_id`(`open_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_third_token
-- ----------------------------
INSERT INTO `user_third_token` VALUES (1, 6000000, '10_dJemrV_F_WBbcDnFjDDfTPs2LZxfyR22qYFJcSwHm-ofgA8I4Frqvw4LuM8VW', 'oLgc-0-HLNhJ4mBlDptyNlLM9u0E', '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', 1, 0);
INSERT INTO `user_third_token` VALUES (2, 6000001, '10_Ka6Ej1XCM4wumI8yNExU_iXSRxoD3X2ud2YmJcSQ-SXj_FieRYNCAeDLCYkXZ', 'oLgc-0-HLNhJ4mBlDptyNlLM9u0E', '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', 0, 0);
INSERT INTO `user_third_token` VALUES (3, 6000002, '10_3fiO3laClUBYJdpVT6OscZNDgt9z8H8XuISw5AzWYBFPQU6sfwxM94F7AP8E0', 'oLgc-0-HLNhJ4mBlDptyNlLM9u0E', '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', 0, 0);
INSERT INTO `user_third_token` VALUES (4, 6000003, '10_69nqyWvYDfTQLu_k3a3T1qkzROq-xE2l3SPvrEqtPjdiUO3WAFtxT_UAR3dCx', 'oLgc-0-HLNhJ4mBlDptyNlLM9u0E', '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', 0, 0);
INSERT INTO `user_third_token` VALUES (5, 6000004, '10_jz6fvnK5r5tPaUzPuejoi2MMoSsX66utkG-Pbb6o-CXq_MfV5IlMv18LjhaFd', 'oLgc-0-HLNhJ4mBlDptyNlLM9u0E', '达文西', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Dibu6zwvcDHVHRicbfdYvk0aIMZJgaDrLkfT20pdk85QFqtA1GCTbhV7AOgVibDM65NC3foGtU8Y5x3rCbmxiaJXkA/132', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
