/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : guojia

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 04/06/2018 16:13:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sl_admin
-- ----------------------------
DROP TABLE IF EXISTS `sl_admin`;
CREATE TABLE `sl_admin`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电子邮件',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  `verify` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '验证串',
  `isadmin` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否为管理员',
  `last_login_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_login_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `login_count` mediumint(8) UNSIGNED NULL DEFAULT 0 COMMENT '登录统计',
  `create_time` int(11) UNSIGNED NOT NULL COMMENT '记录创建时间',
  `update_time` int(11) UNSIGNED NOT NULL COMMENT '记录更新时间',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `group_id` int(11) NULL DEFAULT NULL,
  `id` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `cun_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username_index`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sl_admin
-- ----------------------------
INSERT INTO `sl_admin` VALUES (23, 'cdsile', '01ac3d95a020811609ceef9ed8336e2e', '', 'cdsile', '', 0, '', 0, 1527759486, '127.0.0.1', 0, 0, 0, 'public/images/1527641614timg.jpg', 2, 0000000000, 0);

-- ----------------------------
-- Table structure for sl_bangding
-- ----------------------------
DROP TABLE IF EXISTS `sl_bangding`;
CREATE TABLE `sl_bangding`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `dizhi` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `zhanghao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_bangding模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_bangding
-- ----------------------------
INSERT INTO `sl_bangding` VALUES (1, '2018-05-30 14:55:45', '127.0.0.1', '王晶');

-- ----------------------------
-- Table structure for sl_canshu
-- ----------------------------
DROP TABLE IF EXISTS `sl_canshu`;
CREATE TABLE `sl_canshu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上级ID',
  `u1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '参数说明',
  `u2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '参数',
  `u3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '图标',
  `u4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 320 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_canshu
-- ----------------------------
INSERT INTO `sl_canshu` VALUES (1, '0', '模型类型', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (2, '1', '表单模型', '/index.php?p=admin&c=biaodan&a=index', '', '');
INSERT INTO `sl_canshu` VALUES (4, '0', '字段类型', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (6, '4', '文本框', 'char', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (7, '4', '文本编辑器', 'mediumtext', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (8, '4', '文本域', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (9, '4', '时间框', 'timestamp', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (10, '4', '单选', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (11, '4', '多选', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (12, '4', '图片', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (13, '4', '组图', 'text', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (14, '4', '数字', 'int', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (15, '4', '文件', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (16, '4', '密码', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES (58, '4', '联动', ' varchar', ' ', '0');
INSERT INTO `sl_canshu` VALUES (61, '0', '状态', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES (242, '4', '下拉框', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES (296, '0', '分类', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (297, '296', '工业污水处理设备', '工业污水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (298, '296', '制药废水处理设备', '制药废水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (299, '0', '新闻', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (300, '299', '公司新闻', '公司新闻', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (301, '0', '工程案例', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (302, '301', '生活污水处理方案', '生活污水处理方案', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (303, '301', '医院污水处理方案', '医院污水处理方案', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (304, '299', '行业新闻', '行业新闻', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (305, '296', '污水处理加药设备', '污水处理加药设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (306, '296', '洗涤废水处理设备', '洗涤废水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (307, '296', '污水处理过滤设备', '污水处理过滤设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (308, '296', '光解废气处理设备', '光解废气处理设备', ' ', '1');
INSERT INTO `sl_canshu` VALUES (311, '296', '食品污水处理设备', '食品污水处理设备', ' ', '9');
INSERT INTO `sl_canshu` VALUES (315, '296', '医院污水处理设备', '医院污水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (316, '296', '生活污水处理设备', ' 生活污水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (318, '296', '玻璃钢污水处理设备', ' 玻璃钢污水处理设备', ' ', ' ');
INSERT INTO `sl_canshu` VALUES (319, '296', '一体化污水处理设备', '一体化污水处理设备', ' ', ' ');

-- ----------------------------
-- Table structure for sl_column
-- ----------------------------
DROP TABLE IF EXISTS `sl_column`;
CREATE TABLE `sl_column`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上一级的ID',
  `u1` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '栏目名',
  `u2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '排序',
  `u3` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url连接地址',
  `u4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示状态',
  `laiyuan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1005 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_column
-- ----------------------------
INSERT INTO `sl_column` VALUES (8, '0', '内容管理', '1', '', '显示', '系统');
INSERT INTO `sl_column` VALUES (10, '0', '用户管理', '2', '', '显示', '系统');
INSERT INTO `sl_column` VALUES (12, '0', '系统管理', '4', '', '显示', '系统');
INSERT INTO `sl_column` VALUES (14, '12', '系统日志', '2', '/index.php?p=admin&amp;c=system&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES (16, '12', '模型管理', '3', '/index.php?p=admin&amp;c=moxing&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES (17, '12', '栏目管理', '4', '/index.php?p=admin&amp;c=lanmu&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES (19, '10', '管理员管理', '0', '/index.php?p=admin&c=yonghu&a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES (857, '12', '参数管理', '0', '/index.php?p=admin&amp;c=canshu&amp;a=index', '显示', NULL);
INSERT INTO `sl_column` VALUES (881, '0', '功能拓展', '5', '', '隐藏', '系统');
INSERT INTO `sl_column` VALUES (976, '10', '管理员权限', '2', 'index.php?p=admin&amp;c=Group', '显示', NULL);
INSERT INTO `sl_column` VALUES (1003, '0', '网站管理', '0', NULL, '显示', NULL);
INSERT INTO `sl_column` VALUES (1004, '1003', 'TDK填写', '0', 'index.php?p=admin&amp;c=stdk', '显示', NULL);

-- ----------------------------
-- Table structure for sl_column_group
-- ----------------------------
DROP TABLE IF EXISTS `sl_column_group`;
CREATE TABLE `sl_column_group`  (
  `id` int(10) UNSIGNED NOT NULL,
  `classid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上一级的ID',
  `u1` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '栏目名',
  `u2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '排序',
  `u3` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url连接地址',
  `u4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示状态',
  `group_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `controller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控制器',
  `laiyuan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人',
  `col_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`col_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4352 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_column_group
-- ----------------------------
INSERT INTO `sl_column_group` VALUES (8, '0', '内容管理', '1', '', '显示', '2', NULL, '系统', 4340);
INSERT INTO `sl_column_group` VALUES (10, '0', '用户管理', '2', '', '显示', '2', NULL, '系统', 4341);
INSERT INTO `sl_column_group` VALUES (12, '0', '系统管理', '4', '', '显示', '2', NULL, '系统', 4342);
INSERT INTO `sl_column_group` VALUES (14, '12', '系统日志', '2', '/index.php?p=admin&amp;c=system&amp;a=index', '显示', '2', NULL, '系统', 4343);
INSERT INTO `sl_column_group` VALUES (16, '12', '模型管理', '3', '/index.php?p=admin&amp;c=moxing&amp;a=index', '显示', '2', NULL, '系统', 4344);
INSERT INTO `sl_column_group` VALUES (17, '12', '栏目管理', '4', '/index.php?p=admin&amp;c=lanmu&amp;a=index', '显示', '2', NULL, '系统', 4345);
INSERT INTO `sl_column_group` VALUES (19, '10', '管理员管理', '0', '/index.php?p=admin&c=yonghu&a=index', '显示', '2', NULL, '系统', 4346);
INSERT INTO `sl_column_group` VALUES (857, '12', '参数管理', '0', '/index.php?p=admin&amp;c=canshu&amp;a=index', '显示', '2', NULL, '', 4347);
INSERT INTO `sl_column_group` VALUES (881, '0', '功能拓展', '5', '', '隐藏', '2', NULL, '系统', 4348);
INSERT INTO `sl_column_group` VALUES (976, '10', '管理员权限', '2', 'index.php?p=admin&amp;c=Group', '显示', '2', NULL, '', 4349);
INSERT INTO `sl_column_group` VALUES (1003, '0', '网站管理', '0', '', '显示', '2', NULL, '', 4350);
INSERT INTO `sl_column_group` VALUES (1004, '1003', 'TDK填写', '0', 'index.php?p=admin&amp;c=stdk', '显示', '2', NULL, '', 4351);

-- ----------------------------
-- Table structure for sl_dzjl
-- ----------------------------
DROP TABLE IF EXISTS `sl_dzjl`;
CREATE TABLE `sl_dzjl`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `yonghu` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `bianhao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `shijian` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_dzjl模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_dzjl
-- ----------------------------
INSERT INTO `sl_dzjl` VALUES (1, '2018-05-30 18:16:28', '王晶', '105', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (2, '2018-05-30 18:16:48', '王晶', '5', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (3, '2018-05-30 18:17:00', '王晶', '6', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (4, '2018-05-30 18:17:12', '王晶', '109', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (5, '2018-05-30 18:17:21', '王晶', '110', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (6, '2018-05-30 18:17:32', '王晶', '40', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (7, '2018-05-30 18:18:45', '王晶', '111', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (8, '2018-05-30 18:24:14', '王晶', '112', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (9, '2018-05-30 18:24:27', '王晶', '113', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (10, '2018-05-30 18:25:17', '王晶', '114', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (11, '2018-05-30 18:25:41', '王晶', '115', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (12, '2018-05-30 18:29:50', '王晶', '116', '2018-05-30');
INSERT INTO `sl_dzjl` VALUES (13, '2018-05-31 17:37:20', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (14, '2018-05-31 17:37:22', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (15, '2018-05-31 17:37:23', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (16, '2018-05-31 17:37:24', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (17, '2018-05-31 17:37:24', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (18, '2018-05-31 17:37:24', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (19, '2018-05-31 17:37:24', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (20, '2018-05-31 17:37:25', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (21, '2018-05-31 17:37:25', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (22, '2018-05-31 17:37:25', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (23, '2018-05-31 17:37:25', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (24, '2018-05-31 17:37:25', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (25, '2018-05-31 17:37:31', '王晶', '111', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (26, '2018-05-31 17:37:32', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (27, '2018-05-31 17:37:33', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (28, '2018-05-31 17:37:34', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (29, '2018-05-31 17:37:34', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (30, '2018-05-31 17:37:34', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (31, '2018-05-31 17:37:34', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (32, '2018-05-31 17:37:35', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (33, '2018-05-31 17:37:35', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (34, '2018-05-31 17:37:35', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (35, '2018-05-31 17:37:35', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (36, '2018-05-31 17:37:35', '王晶', '114', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (37, '2018-05-31 17:37:39', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (38, '2018-05-31 17:37:40', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (39, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (40, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (41, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (42, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (43, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (44, '2018-05-31 17:37:41', '王晶', '112', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (45, '2018-05-31 17:46:34', '王晶', '116', '2018-05-31');
INSERT INTO `sl_dzjl` VALUES (46, '2018-05-31 17:46:36', '王晶', '117', '2018-05-31');

-- ----------------------------
-- Table structure for sl_filed
-- ----------------------------
DROP TABLE IF EXISTS `sl_filed`;
CREATE TABLE `sl_filed`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '模型id',
  `u1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '数据库字段名',
  `u2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '字段名称',
  `u3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '字段提示',
  `u4` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否必填',
  `u5` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否显示',
  `u6` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否检索',
  `u7` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '文本框' COMMENT '字段类型',
  `u8` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '默认值',
  `u9` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '10%' COMMENT '列表CSS',
  `u10` int(10) NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_filed
-- ----------------------------
INSERT INTO `sl_filed` VALUES (1100, '12', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1101, '12', 'gequ', '歌曲', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1102, '12', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1103, '12', 'piaoshu', '票数', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1104, '12', 'wenjian', '文件', ' ', '否', '是', '否', '文件', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1105, '13', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1106, '13', 'gequbianhao', '歌曲编号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1107, '13', 'gequmingcheng', '歌曲名称', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1108, '13', 'geshou', '歌手', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1109, '13', 'yonghubianhao', '用户编号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1110, '13', 'yonghuxingming', '用户姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1111, '14', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1112, '14', 'yonghuming', '用户名', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1113, '14', 'mima', '密码', ' ', '否', '是', '否', '密码', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1114, '15', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1115, '15', 'dizhi', '地址', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1116, '15', 'zhanghao', '账号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1117, '16', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1118, '16', 'yonghubianhao', '用户编号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1119, '16', 'yonghuxingming', '用户姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1120, '16', 'neirong', '内容', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1121, '16', 'geshou', '歌手', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1122, '16', 'gequ', '歌曲', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1123, '16', 'gequbianhao', '歌曲编号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1125, '16', 'dianzanshu', '点赞数', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1126, '17', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', 2);
INSERT INTO `sl_filed` VALUES (1127, '17', 'yonghu', '用户', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1128, '17', 'bianhao', '编号', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);
INSERT INTO `sl_filed` VALUES (1129, '17', 'shijian', '时间', ' ', '否', '是', '否', '文本框', ' ', '10%', 0);

-- ----------------------------
-- Table structure for sl_group
-- ----------------------------
DROP TABLE IF EXISTS `sl_group`;
CREATE TABLE `sl_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zuming` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名',
  `rand` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_group
-- ----------------------------
INSERT INTO `sl_group` VALUES (2, '超级管理员', '879');

-- ----------------------------
-- Table structure for sl_jilu
-- ----------------------------
DROP TABLE IF EXISTS `sl_jilu`;
CREATE TABLE `sl_jilu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `gequbianhao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲编号',
  `gequmingcheng` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲名称',
  `geshou` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌手',
  `yonghubianhao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `yonghuxingming` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_jilu模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_jilu
-- ----------------------------
INSERT INTO `sl_jilu` VALUES (21, '2018-05-30 14:21:50', '2', '死了都要爱', '曾俊峰1', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (22, '2018-05-30 14:21:55', '3', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (23, '2018-05-30 14:21:58', '4', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (24, '2018-05-30 14:22:00', '5', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (25, '2018-05-30 14:22:03', '6', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (26, '2018-05-30 14:22:06', '7', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (27, '2018-05-30 14:22:09', '8', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (28, '2018-05-30 14:22:12', '9', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (29, '2018-05-30 14:22:15', '10', '死了都要爱', '曾俊峰', '1', '王晶');
INSERT INTO `sl_jilu` VALUES (30, '2018-05-30 14:22:17', '11', '死了都要爱', '曾俊峰', '1', '王晶');

-- ----------------------------
-- Table structure for sl_ly
-- ----------------------------
DROP TABLE IF EXISTS `sl_ly`;
CREATE TABLE `sl_ly`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `yonghubianhao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `yonghuxingming` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `neirong` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `geshou` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌手',
  `gequ` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲',
  `gequbianhao` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲编号',
  `dianzanshu` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_ly模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_ly
-- ----------------------------
INSERT INTO `sl_ly` VALUES (111, '2018-05-30 18:18:42', '1', '王晶', '234234', '曾俊峰1', '01死了都要爱11', '2', '14');
INSERT INTO `sl_ly` VALUES (112, '2018-05-30 18:24:10', '1', '王晶', '234234', '曾俊峰', '02死了都要爱', '3', '9');
INSERT INTO `sl_ly` VALUES (113, '2018-05-30 18:24:24', '1', '王晶', '3425', '曾俊峰', '03死了都要爱', '4', '1');
INSERT INTO `sl_ly` VALUES (114, '2018-05-30 18:25:13', '1', '王晶', '234234', '曾俊峰1', '01死了都要爱11', '2', '12');
INSERT INTO `sl_ly` VALUES (115, '2018-05-30 18:25:38', '1', '王晶', '234324', '曾俊峰1', '01死了都要爱11', '2', '1');
INSERT INTO `sl_ly` VALUES (116, '2018-05-30 18:29:46', '1', '王晶', '234', '曾俊峰1', '01死了都要爱11', '2', '2');
INSERT INTO `sl_ly` VALUES (117, '2018-05-30 18:34:41', '1', '王晶', '2234234234234', '曾俊峰1', '01死了都要爱11', '2', '1');

-- ----------------------------
-- Table structure for sl_moxing
-- ----------------------------
DROP TABLE IF EXISTS `sl_moxing`;
CREATE TABLE `sl_moxing`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '数据库表名',
  `u2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '模型中文名',
  `u3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '模型类型',
  `u4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '栏目列表模版',
  `u5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '栏目内容模版',
  `u6` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '栏目路径',
  `u7` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '右上角按钮',
  `u8` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '左下角按钮',
  `u9` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_moxing
-- ----------------------------
INSERT INTO `sl_moxing` VALUES (12, 'sl_qumu', '歌曲曲目', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES (13, 'sl_jilu', '投票记录', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES (14, 'sl_user', '员工表', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES (15, 'sl_bangding', '绑定记录', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES (16, 'sl_ly', '用户留言', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES (17, 'sl_dzjl', '点赞记录', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');

-- ----------------------------
-- Table structure for sl_qumu
-- ----------------------------
DROP TABLE IF EXISTS `sl_qumu`;
CREATE TABLE `sl_qumu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `gequ` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲',
  `xingming` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `piaoshu` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '票数',
  `wenjian` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_qumu模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_qumu
-- ----------------------------
INSERT INTO `sl_qumu` VALUES (2, '2018-05-30 02:21:22', '死了都要爱11', '曾俊峰1', '37', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (3, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (4, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (5, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (6, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (7, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (8, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (9, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (10, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');
INSERT INTO `sl_qumu` VALUES (11, '2018-05-30 02:21:22', '死了都要爱', '曾俊峰', '27', '/public/webuploader/upload/file_2018053096503儿歌 - 娃哈哈.mp3');

-- ----------------------------
-- Table structure for sl_sort
-- ----------------------------
DROP TABLE IF EXISTS `sl_sort`;
CREATE TABLE `sl_sort`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '模型id',
  `paixu` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '排序',
  `sort_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '所属父级id',
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '栏目链接',
  `u1` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u3` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u4` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `u5` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '栏目封面',
  `u6` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT ' ' COMMENT '栏目介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_sort' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_sort
-- ----------------------------
INSERT INTO `sl_sort` VALUES (23, 53, 0, 18, '#', '成功案例', 'list.html', 'goods.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (24, 53, 0, 23, '#', 'wap站点', 'list.html', 'goods.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (37, 53, 1, 25, '#', '品牌官网设计', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141411095850e27d24f56.jpg', '<dd>策划、设计、前端、程序开发全方位一条龙服务</dd>\r\n								<dd>充分了解企业文化、行业特点，体现企业特色</dd>\r\n								<dd>设计师一对一沟通，充分了解你的需求和想法</dd>\r\n								<dd>时刻掌握最新技术动向，打造高品质网站</dd>');
INSERT INTO `sl_sort` VALUES (38, 53, 2, 25, '#', '商城网站开发', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141415155850e373d7b27.jpg', '<dd>专业量身定制设计、定制功能、定制后台开发</dd>\r\n								<dd>拥有资深开发团队，追求质量同时保证速度</dd>\r\n								<dd>追求完美，不断提升系统响应速度和稳定性</dd>\r\n								<dd>完善的测试流程，在上线之前解决问题</dd>');
INSERT INTO `sl_sort` VALUES (39, 53, 3, 25, '#', '手机网站建设', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141415505850e396e2323.jpg', '<dd>个性设计，独一无二，用设计风格体现企业文化</dd>\r\n								<dd>精简代码、追求速度，兼容主流手机浏览器</dd>\r\n								<dd>和PC端数据同步，管理方便，全方位网络营销</dd>\r\n								<dd>零成本增加微信网站</dd>');
INSERT INTO `sl_sort` VALUES (40, 53, 4, 25, '#', '平面设计、摄影', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141416245850e3b87be1c.jpg', '<dd>平面：画册设计，包装设计，标志设计</dd>\r\n								<dd>摄影：凭着多年的摄影经验为客户量身定做最适合的</dd>\r\n								<dd>摄影服务,对每一个项目都深入的研究，深刻洞察</dd>\r\n								<dd>每一个细节,立志成为行业的推动者和缔造者</dd>');
INSERT INTO `sl_sort` VALUES (41, 53, 1, 27, '#', '手机网站', 'cases.html', 'articledetail.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (42, 53, 2, 27, '#', '企业案例', 'cases.html', 'articledetail.html', '/', '', ' ');
INSERT INTO `sl_sort` VALUES (43, 53, 3, 27, '#', '购物商城', 'cases.html', 'articledetail.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (45, 53, 0, 29, '#', '企业网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '企业网站作为一个公司的网络名片，最主要的作用是展示公司形象和宣传公司的服务或产品，所...');
INSERT INTO `sl_sort` VALUES (46, 53, 1, 29, '#', '旅游网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '随着互联网的迅速，越多越多人，尤其是上班白领，都喜欢在网上查看旅游相关信息，然后再网上直...');
INSERT INTO `sl_sort` VALUES (47, 53, 2, 29, '#', '手机网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '着智能手机的迅速发展，移动互联网时代已经到来，这带给我们是一个机遇还是危机？全取决于...');
INSERT INTO `sl_sort` VALUES (48, 53, 3, 29, '#', '商城网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '商城网站需要强大的后台管理系统、良好的用户购物体验、安全稳定的服务器空间，商城网站...\r\n');
INSERT INTO `sl_sort` VALUES (49, 53, 5, 25, '#', '微信网站建设', 'service.html', 'service.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (50, 53, 6, 25, '#', '其他网站建设', 'service.html', 'service.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (64, 53, 4, 29, '#', '外贸网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '外贸网站的面向用户主要为国外客户，所以除了文字采用英文外，风格设计、页面编码、操作习惯都要适应国外客户需...');
INSERT INTO `sl_sort` VALUES (65, 53, 5, 29, '#', '服装网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '风格上清新明快，符合最新审美观，制作精细，有积极开放的感觉；使用流行的大区块划分概念，配合使用大广告条，突出宣传...');
INSERT INTO `sl_sort` VALUES (66, 53, 6, 29, '#', '集团上市公司解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '随着集团上市公司的不断壮大，集团企业、上市公司的信息需要采用各种途径公众于媒体、上级领导、内部员工、投...');
INSERT INTO `sl_sort` VALUES (67, 53, 7, 29, '#', '酒店网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '在建设酒店网站时我们要充分考虑“酒店”的经营服务特色，因此我们在制作方案时会注重系统的实用性、可靠性、...');
INSERT INTO `sl_sort` VALUES (68, 53, 4, 29, '8', '门户网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '门户网站不是简单的内容管理，而是新闻内容的聚合，做好门户网站，需要管理好网站的内容，同时...');
INSERT INTO `sl_sort` VALUES (69, 53, 8, 29, '#', '搜索引擎优化解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '今天我们谈提高网站的价值，那么什么是网站的价值呢？很简单，网站的价值就是访客觉得有用，提高网站的价值，就是让更...');
INSERT INTO `sl_sort` VALUES (70, 53, 9, 29, '9', '教育培训网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '维尼开发的视频教学系统在视频教课程学行领域处在领先技术优势，给许多客户带了丰厚的盈利、扩大了市场的占有...');
INSERT INTO `sl_sort` VALUES (71, 53, 0, 0, '#', '关于我们', '.DS_Store', '.DS_Store', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (73, 77, 0, 0, '#', '解决方案', NULL, NULL, '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (74, 100, 0, 0, '#', 'class1', NULL, NULL, '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES (75, 103, 0, 0, '', '阿斯顿发生的', '', '', '/', '', '');

-- ----------------------------
-- Table structure for sl_system
-- ----------------------------
DROP TABLE IF EXISTS `sl_system`;
CREATE TABLE `sl_system`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `u2` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志说明',
  `u3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问ip',
  `u4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型',
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `yonghuming` char(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sql` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '执行的sql语句',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111501 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_system
-- ----------------------------
INSERT INTO `sl_system` VALUES (111430, 'cdsile', 'cdsile():登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-20 14:20:02', NULL, NULL);
INSERT INTO `sl_system` VALUES (111431, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 14:21:02', NULL, NULL);
INSERT INTO `sl_system` VALUES (111432, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:07:21', NULL, NULL);
INSERT INTO `sl_system` VALUES (111433, 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:07:32', NULL, NULL);
INSERT INTO `sl_system` VALUES (111434, 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:08:55', NULL, NULL);
INSERT INTO `sl_system` VALUES (111435, 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:08:58', NULL, NULL);
INSERT INTO `sl_system` VALUES (111436, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:09:26', NULL, NULL);
INSERT INTO `sl_system` VALUES (111437, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:09:31', NULL, NULL);
INSERT INTO `sl_system` VALUES (111438, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-21 14:51:11', NULL, NULL);
INSERT INTO `sl_system` VALUES (111439, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-23 09:44:18', NULL, NULL);
INSERT INTO `sl_system` VALUES (111440, 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-23 10:11:30', NULL, NULL);
INSERT INTO `sl_system` VALUES (111441, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-23 10:26:05', NULL, NULL);
INSERT INTO `sl_system` VALUES (111442, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-24 11:09:01', NULL, NULL);
INSERT INTO `sl_system` VALUES (111443, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-25 10:53:59', NULL, NULL);
INSERT INTO `sl_system` VALUES (111444, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 09:55:38', NULL, NULL);
INSERT INTO `sl_system` VALUES (111445, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:27:53', NULL, NULL);
INSERT INTO `sl_system` VALUES (111446, 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:27:59', NULL, NULL);
INSERT INTO `sl_system` VALUES (111447, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:04', NULL, NULL);
INSERT INTO `sl_system` VALUES (111448, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:09', NULL, NULL);
INSERT INTO `sl_system` VALUES (111449, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:15', NULL, NULL);
INSERT INTO `sl_system` VALUES (111450, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:29:05', NULL, NULL);
INSERT INTO `sl_system` VALUES (111451, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:29:34', NULL, NULL);
INSERT INTO `sl_system` VALUES (111452, 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:30:10', NULL, NULL);
INSERT INTO `sl_system` VALUES (111453, 'cdsie', 'cdsie(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:30:33', NULL, NULL);
INSERT INTO `sl_system` VALUES (111454, 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:30:42', NULL, NULL);
INSERT INTO `sl_system` VALUES (111455, 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:30:58', NULL, NULL);
INSERT INTO `sl_system` VALUES (111456, 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:31:23', NULL, NULL);
INSERT INTO `sl_system` VALUES (111457, 'cdsie', 'cdsie:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:35:09', NULL, NULL);
INSERT INTO `sl_system` VALUES (111458, 'cdsie', 'cdsie:增加用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=insert', '127.0.0.1', '用户管理', '2018-04-26 14:39:03', NULL, NULL);
INSERT INTO `sl_system` VALUES (111459, 'cdsie', 'cdsie:增加用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=insert', '127.0.0.1', '用户管理', '2018-04-26 14:39:36', NULL, NULL);
INSERT INTO `sl_system` VALUES (111460, '1234', '1234(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:39:46', NULL, NULL);
INSERT INTO `sl_system` VALUES (111461, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:40:14', NULL, NULL);
INSERT INTO `sl_system` VALUES (111462, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 17:59:51', NULL, NULL);
INSERT INTO `sl_system` VALUES (111463, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-27 10:31:46', NULL, NULL);
INSERT INTO `sl_system` VALUES (111464, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-28 09:59:47', NULL, NULL);
INSERT INTO `sl_system` VALUES (111465, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-02 09:26:18', NULL, NULL);
INSERT INTO `sl_system` VALUES (111466, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-04 14:57:17', NULL, NULL);
INSERT INTO `sl_system` VALUES (111467, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-05 11:44:07', NULL, NULL);
INSERT INTO `sl_system` VALUES (111468, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-05 14:39:35', NULL, NULL);
INSERT INTO `sl_system` VALUES (111469, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-07 10:13:57', NULL, NULL);
INSERT INTO `sl_system` VALUES (111470, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-08 09:27:36', NULL, NULL);
INSERT INTO `sl_system` VALUES (111471, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-08 15:17:27', NULL, NULL);
INSERT INTO `sl_system` VALUES (111472, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-09 09:37:59', NULL, NULL);
INSERT INTO `sl_system` VALUES (111473, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-10 09:30:32', NULL, NULL);
INSERT INTO `sl_system` VALUES (111474, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-11 17:12:05', NULL, NULL);
INSERT INTO `sl_system` VALUES (111475, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-11 23:12:49', NULL, NULL);
INSERT INTO `sl_system` VALUES (111476, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.huaqing.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-14 09:38:59', NULL, NULL);
INSERT INTO `sl_system` VALUES (111477, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.huaqing.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-15 09:34:46', NULL, NULL);
INSERT INTO `sl_system` VALUES (111478, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.210.9.17', '管理员登录', '2018-05-16 14:36:59', NULL, NULL);
INSERT INTO `sl_system` VALUES (111479, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.210.9.17', '管理员登录', '2018-05-16 17:02:43', NULL, NULL);
INSERT INTO `sl_system` VALUES (111480, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-21 14:11:20', NULL, NULL);
INSERT INTO `sl_system` VALUES (111481, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.160', '管理员登录', '2018-05-21 14:22:38', NULL, NULL);
INSERT INTO `sl_system` VALUES (111482, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-22 11:11:39', NULL, NULL);
INSERT INTO `sl_system` VALUES (111483, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-22 16:56:28', NULL, NULL);
INSERT INTO `sl_system` VALUES (111484, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-23 11:03:32', NULL, NULL);
INSERT INTO `sl_system` VALUES (111485, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.209.149.175', '管理员登录', '2018-05-23 11:21:32', NULL, NULL);
INSERT INTO `sl_system` VALUES (111486, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.209.149.175', '管理员登录', '2018-05-23 15:37:24', NULL, NULL);
INSERT INTO `sl_system` VALUES (111487, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.209.149.175', '管理员登录', '2018-05-23 15:51:54', NULL, NULL);
INSERT INTO `sl_system` VALUES (111488, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '222.211.206.242', '管理员登录', '2018-05-23 21:03:25', NULL, NULL);
INSERT INTO `sl_system` VALUES (111489, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-24 08:43:58', NULL, NULL);
INSERT INTO `sl_system` VALUES (111490, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.162', '管理员登录', '2018-05-24 10:06:53', NULL, NULL);
INSERT INTO `sl_system` VALUES (111491, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.162', '管理员登录', '2018-05-24 11:37:38', NULL, NULL);
INSERT INTO `sl_system` VALUES (111492, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.162', '管理员登录', '2018-05-24 12:21:29', NULL, NULL);
INSERT INTO `sl_system` VALUES (111493, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-24 12:52:25', NULL, NULL);
INSERT INTO `sl_system` VALUES (111494, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.214.254.203', '管理员登录', '2018-05-24 16:20:39', NULL, NULL);
INSERT INTO `sl_system` VALUES (111495, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.162', '管理员登录', '2018-05-25 10:15:28', NULL, NULL);
INSERT INTO `sl_system` VALUES (111496, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '171.223.101.162', '管理员登录', '2018-05-25 17:38:53', NULL, NULL);
INSERT INTO `sl_system` VALUES (111497, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '117.172.9.129', '管理员登录', '2018-05-27 23:28:44', NULL, NULL);
INSERT INTO `sl_system` VALUES (111498, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:ceshi15.dianziqingtie.com/index.php?p=admin&amp;c=login&amp;a=signin', '118.113.3.61', '管理员登录', '2018-05-28 11:14:39', NULL, NULL);
INSERT INTO `sl_system` VALUES (111499, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.guojia.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-30 08:50:32', NULL, NULL);
INSERT INTO `sl_system` VALUES (111500, 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.guojia.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-31 17:38:06', NULL, NULL);

-- ----------------------------
-- Table structure for sl_user
-- ----------------------------
DROP TABLE IF EXISTS `sl_user`;
CREATE TABLE `sl_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `yonghuming` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `mima` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'sl_user模型主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sl_user
-- ----------------------------
INSERT INTO `sl_user` VALUES (1, '2018-05-30 05:01:11', '王晶', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
