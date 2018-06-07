/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zirui

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-10 12:45:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sl_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sl_admin`;
CREATE TABLE `sl_admin` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `verify` varchar(32) DEFAULT NULL COMMENT '验证串',
  `isadmin` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为管理员',
  `last_login_time` int(11) unsigned DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录ip',
  `login_count` mediumint(8) unsigned DEFAULT '0' COMMENT '登录统计',
  `create_time` int(11) unsigned NOT NULL COMMENT '记录创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '记录更新时间',
  `pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `group_id` int(11) DEFAULT NULL,
  `id` int(10) unsigned zerofill DEFAULT NULL,
  `cun_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_index` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sl_admin
-- ----------------------------
INSERT INTO `sl_admin` VALUES ('23', 'cdsile', '01ac3d95a020811609ceef9ed8336e2e', '', 'cdsile', '', '0', '', '0', '1525915832', '127.0.0.1', '0', '0', '0', 'public/images/1525502392你好.jpg', '2', '0000000000', '0');

-- ----------------------------
-- Table structure for `sl_anbj`
-- ----------------------------
DROP TABLE IF EXISTS `sl_anbj`;
CREATE TABLE `sl_anbj` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `beijing` char(100) DEFAULT NULL COMMENT '背景',
  `jianjie` varchar(250) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='sl_anbj模型主表';

-- ----------------------------
-- Records of sl_anbj
-- ----------------------------
INSERT INTO `sl_anbj` VALUES ('1', '2018-05-09 02:29:46', '案例背景', '广东某公司原是小规模，客户要求开专用发票。临时把公司改成一般纳税人，公司要交17%增值税。之前买的材料没法开回17%的发票，导致不能抵扣，多交了500多万税。');
INSERT INTO `sl_anbj` VALUES ('2', '2018-05-09 02:29:46', '案例背景', '广东某公司原是小规模，客户要求开专用发票。临时把公司改成一般纳税人，公司要交17%增值税。之前买的材料没法开回17%的发票，导致不能抵扣，多交了500多万税。');
INSERT INTO `sl_anbj` VALUES ('3', '2018-05-09 02:29:46', '案例背景', '广东某公司原是小规模，客户要求开专用发票。临时把公司改成一般纳税人，公司要交17%增值税。之前买的材料没法开回17%的发票，导致不能抵扣，多交了500多万税。');

-- ----------------------------
-- Table structure for `sl_banner`
-- ----------------------------
DROP TABLE IF EXISTS `sl_banner`;
CREATE TABLE `sl_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='sl_banner模型主表';

-- ----------------------------
-- Records of sl_banner
-- ----------------------------
INSERT INTO `sl_banner` VALUES ('5', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');
INSERT INTO `sl_banner` VALUES ('6', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');
INSERT INTO `sl_banner` VALUES ('7', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');
INSERT INTO `sl_banner` VALUES ('8', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');
INSERT INTO `sl_banner` VALUES ('9', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');
INSERT INTO `sl_banner` VALUES ('10', '2018-05-09 01:40:47', '/public/images/1525830047banner1.png');

-- ----------------------------
-- Table structure for `sl_bghj`
-- ----------------------------
DROP TABLE IF EXISTS `sl_bghj`;
CREATE TABLE `sl_bghj` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='sl_bghj模型主表';

-- ----------------------------
-- Records of sl_bghj
-- ----------------------------
INSERT INTO `sl_bghj` VALUES ('14', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('15', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('16', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('17', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('18', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('19', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('20', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('21', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('22', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('23', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');
INSERT INTO `sl_bghj` VALUES ('24', '2018-05-09 01:45:01', '/public/images/1525830301timg.jpg');

-- ----------------------------
-- Table structure for `sl_canshu`
-- ----------------------------
DROP TABLE IF EXISTS `sl_canshu`;
CREATE TABLE `sl_canshu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` varchar(10) CHARACTER SET utf8 DEFAULT '0' COMMENT '上级ID',
  `u1` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '参数说明',
  `u2` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '参数',
  `u3` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '图标',
  `u4` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_canshu
-- ----------------------------
INSERT INTO `sl_canshu` VALUES ('1', '0', '模型类型', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('2', '1', '表单模型', '/index.php?p=admin&c=biaodan&a=index', '', '');
INSERT INTO `sl_canshu` VALUES ('4', '0', '字段类型', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('6', '4', '文本框', 'char', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('7', '4', '文本编辑器', 'mediumtext', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('8', '4', '文本域', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('9', '4', '时间框', 'timestamp', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('10', '4', '单选', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('11', '4', '多选', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('12', '4', '图片', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('13', '4', '组图', 'text', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('14', '4', '数字', 'int', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('15', '4', '文件', 'varchar', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('16', '4', '密码', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES ('58', '4', '联动', ' varchar', ' ', '0');
INSERT INTO `sl_canshu` VALUES ('61', '0', '状态', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES ('242', '4', '下拉框', ' ', ' ', '0');
INSERT INTO `sl_canshu` VALUES ('243', '4', '金额', 'double', ' ', '0');
INSERT INTO `sl_canshu` VALUES ('276', '275', '待开奖', '待开奖', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('277', '275', '中奖', '中奖', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('278', '275', '未中奖', '未中奖', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('280', '279', '马来山', '马来山', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('281', '61', '2', '2', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('282', '0', '案例分类', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('283', '282', '税务筹划', '税务筹划', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('284', '282', '常年财税顾问', '常年财税顾问', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('285', '282', '财税风险分析/整理', '财税风险分析/整理', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('286', '282', '资质代办', '资质代办', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('287', '0', '咨询分类', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('288', '287', '常见问题', '常见问题', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('289', '287', '财税知识', '财税知识', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('290', '287', '财税百科', '财税百科', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('291', '287', '最新政策', '最新政策', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('292', '287', '聚焦知锐', '聚焦知锐', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('293', '0', '链接分类', ' ', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('294', '293', '常用链接', '常用链接', ' ', ' ');
INSERT INTO `sl_canshu` VALUES ('295', '293', '友情链接', '友情链接', ' ', ' ');

-- ----------------------------
-- Table structure for `sl_cgan`
-- ----------------------------
DROP TABLE IF EXISTS `sl_cgan`;
CREATE TABLE `sl_cgan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sl_cgan模型主表';

-- ----------------------------
-- Records of sl_cgan
-- ----------------------------
INSERT INTO `sl_cgan` VALUES ('1', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('2', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('3', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('4', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('5', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('6', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('7', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');
INSERT INTO `sl_cgan` VALUES ('8', '2018-05-09 03:37:56', '案例', '/public/images/1525837076img_case.png');

-- ----------------------------
-- Table structure for `sl_chs`
-- ----------------------------
DROP TABLE IF EXISTS `sl_chs`;
CREATE TABLE `sl_chs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `zhiwu` char(100) DEFAULT NULL COMMENT '职务',
  `jianjie` varchar(250) DEFAULT NULL COMMENT '简介',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='sl_chs模型主表';

-- ----------------------------
-- Records of sl_chs
-- ----------------------------
INSERT INTO `sl_chs` VALUES ('1', '2018-05-09 02:02:53', '/public/images/1525831373timg.jpg', 'CEO', '我是负责打酱油的', '奥尔');
INSERT INTO `sl_chs` VALUES ('2', '2018-05-09 02:02:53', '/public/images/1525831373timg.jpg', 'CEO', '我是负责打酱油的', '奥尔');
INSERT INTO `sl_chs` VALUES ('3', '2018-05-09 02:02:53', '/public/images/1525831373timg.jpg', 'CEO', '我是负责打酱油的', '奥尔');
INSERT INTO `sl_chs` VALUES ('4', '2018-05-09 02:02:53', '/public/images/1525831373timg.jpg', 'CEO', '我是负责打酱油的', '奥尔');

-- ----------------------------
-- Table structure for `sl_cjwt`
-- ----------------------------
DROP TABLE IF EXISTS `sl_cjwt`;
CREATE TABLE `sl_cjwt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `wenti` char(100) DEFAULT NULL COMMENT '问题',
  `huida` varchar(250) DEFAULT NULL COMMENT '回答',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='sl_cjwt模型主表';

-- ----------------------------
-- Records of sl_cjwt
-- ----------------------------
INSERT INTO `sl_cjwt` VALUES ('1', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');
INSERT INTO `sl_cjwt` VALUES ('2', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');
INSERT INTO `sl_cjwt` VALUES ('3', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');
INSERT INTO `sl_cjwt` VALUES ('4', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');
INSERT INTO `sl_cjwt` VALUES ('5', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');
INSERT INTO `sl_cjwt` VALUES ('6', '2018-05-09 03:11:49', '常年财务顾问需要的材料有哪些', '申请发明专利，一般您需要提供：①准确的申请信息，②技术交底书，③委托书，④申请人为企业需要办理费用减缓的需要提供费减证明。');

-- ----------------------------
-- Table structure for `sl_column`
-- ----------------------------
DROP TABLE IF EXISTS `sl_column`;
CREATE TABLE `sl_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` varchar(50) CHARACTER SET utf8 DEFAULT '0' COMMENT '上一级的ID',
  `u1` varchar(250) CHARACTER SET utf8 DEFAULT '栏目名',
  `u2` varchar(250) CHARACTER SET utf8 DEFAULT '0' COMMENT '排序',
  `u3` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url连接地址',
  `u4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '显示状态',
  `laiyuan` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=980 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_column
-- ----------------------------
INSERT INTO `sl_column` VALUES ('8', '0', '内容管理', '1', '', '显示', '系统');
INSERT INTO `sl_column` VALUES ('10', '0', '用户管理', '2', '', '显示', '系统');
INSERT INTO `sl_column` VALUES ('12', '0', '系统管理', '4', '', '显示', '系统');
INSERT INTO `sl_column` VALUES ('14', '12', '系统日志', '2', '/index.php?p=admin&amp;c=system&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES ('15', '12', '网站配置', '1', '/index.php?p=admin&amp;c=peizhi&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES ('16', '12', '模型管理', '3', '/index.php?p=admin&amp;c=moxing&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES ('17', '12', '栏目管理', '4', '/index.php?p=admin&amp;c=lanmu&amp;a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES ('19', '10', '管理员管理', '0', '/index.php?p=admin&c=yonghu&a=index', '显示', '系统');
INSERT INTO `sl_column` VALUES ('857', '12', '参数管理', '0', '/index.php?p=admin&amp;c=canshu&amp;a=index', '显示', null);
INSERT INTO `sl_column` VALUES ('881', '0', '功能拓展', '5', '', '隐藏', '系统');
INSERT INTO `sl_column` VALUES ('976', '10', '管理员权限', '2', 'index.php?p=admin&amp;c=Group', '显示', null);
INSERT INTO `sl_column` VALUES ('979', '8', '转静列表', '0', 'index.php?p=admin&amp;c=static', '显示', null);

-- ----------------------------
-- Table structure for `sl_column_group`
-- ----------------------------
DROP TABLE IF EXISTS `sl_column_group`;
CREATE TABLE `sl_column_group` (
  `id` int(10) unsigned NOT NULL,
  `classid` varchar(50) CHARACTER SET utf8 DEFAULT '0' COMMENT '上一级的ID',
  `u1` varchar(250) CHARACTER SET utf8 DEFAULT '栏目名',
  `u2` varchar(250) CHARACTER SET utf8 DEFAULT '0' COMMENT '排序',
  `u3` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT 'url连接地址',
  `u4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '显示状态',
  `group_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `controller` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '控制器',
  `laiyuan` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '添加人',
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4165 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_column_group
-- ----------------------------
INSERT INTO `sl_column_group` VALUES ('8', '0', '内容管理', '1', '', '显示', '2', null, '系统', '4154');
INSERT INTO `sl_column_group` VALUES ('10', '0', '用户管理', '2', '', '显示', '2', null, '系统', '4155');
INSERT INTO `sl_column_group` VALUES ('12', '0', '系统管理', '4', '', '显示', '2', null, '系统', '4156');
INSERT INTO `sl_column_group` VALUES ('14', '12', '系统日志', '2', '/index.php?p=admin&amp;c=system&amp;a=index', '显示', '2', null, '系统', '4157');
INSERT INTO `sl_column_group` VALUES ('16', '12', '模型管理', '3', '/index.php?p=admin&amp;c=moxing&amp;a=index', '显示', '2', null, '系统', '4158');
INSERT INTO `sl_column_group` VALUES ('17', '12', '栏目管理', '4', '/index.php?p=admin&amp;c=lanmu&amp;a=index', '显示', '2', null, '系统', '4159');
INSERT INTO `sl_column_group` VALUES ('19', '10', '管理员管理', '0', '/index.php?p=admin&c=yonghu&a=index', '显示', '2', null, '系统', '4160');
INSERT INTO `sl_column_group` VALUES ('857', '12', '参数管理', '0', '/index.php?p=admin&amp;c=canshu&amp;a=index', '显示', '2', null, '', '4161');
INSERT INTO `sl_column_group` VALUES ('881', '0', '功能拓展', '5', '', '隐藏', '2', null, '系统', '4162');
INSERT INTO `sl_column_group` VALUES ('976', '10', '管理员权限', '2', 'index.php?p=admin&amp;c=Group', '显示', '2', null, '', '4163');
INSERT INTO `sl_column_group` VALUES ('979', '8', '转静列表', '0', 'index.php?p=admin&amp;c=static', '显示', '2', null, '', '4164');

-- ----------------------------
-- Table structure for `sl_csgw`
-- ----------------------------
DROP TABLE IF EXISTS `sl_csgw`;
CREATE TABLE `sl_csgw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  `zhiwu` char(100) DEFAULT NULL COMMENT '职务',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `lingyu` char(100) DEFAULT NULL COMMENT '领域',
  `anli` varchar(250) DEFAULT NULL COMMENT '案例',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='sl_csgw模型主表';

-- ----------------------------
-- Records of sl_csgw
-- ----------------------------
INSERT INTO `sl_csgw` VALUES ('7', '2018-05-09 02:52:52', '江大白', '我是顾问', '/public/images/1525834627img_fin_1.png', '巴拿马', '巴拿马');
INSERT INTO `sl_csgw` VALUES ('8', '2018-05-09 02:52:52', '江大白', '我是顾问', '/public/images/1525834627img_fin_1.png', '巴拿马', '巴拿马');
INSERT INTO `sl_csgw` VALUES ('9', '2018-05-09 02:52:52', '江大白', '我是顾问', '/public/images/1525834627img_fin_1.png', '巴拿马', '巴拿马');
INSERT INTO `sl_csgw` VALUES ('10', '2018-05-09 02:52:52', '江大白', '我是顾问', '/public/images/1525834627img_fin_1.png', '巴拿马', '巴拿马');
INSERT INTO `sl_csgw` VALUES ('11', '2018-05-09 02:52:52', '江大白', '我是顾问', '/public/images/1525834627img_fin_1.png', '巴拿马', '巴拿马');

-- ----------------------------
-- Table structure for `sl_dbrz`
-- ----------------------------
DROP TABLE IF EXISTS `sl_dbrz`;
CREATE TABLE `sl_dbrz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_id` char(100) DEFAULT '0' COMMENT '分类id',
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `caozuoren` char(100) DEFAULT NULL COMMENT '操作人',
  `shijian` char(100) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sl_dbrz模型主表';

-- ----------------------------
-- Records of sl_dbrz
-- ----------------------------

-- ----------------------------
-- Table structure for `sl_filed`
-- ----------------------------
DROP TABLE IF EXISTS `sl_filed`;
CREATE TABLE `sl_filed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` varchar(50) DEFAULT ' ' COMMENT '模型id',
  `u1` varchar(50) DEFAULT ' ' COMMENT '数据库字段名',
  `u2` varchar(50) DEFAULT ' ' COMMENT '字段名称',
  `u3` varchar(50) DEFAULT ' ' COMMENT '字段提示',
  `u4` varchar(10) DEFAULT '否' COMMENT '是否必填',
  `u5` varchar(10) DEFAULT '否' COMMENT '是否显示',
  `u6` varchar(10) DEFAULT '否' COMMENT '是否检索',
  `u7` varchar(50) DEFAULT '文本框' COMMENT '字段类型',
  `u8` varchar(250) DEFAULT ' ' COMMENT '默认值',
  `u9` varchar(50) DEFAULT '10%' COMMENT '列表CSS',
  `u10` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sl_filed
-- ----------------------------
INSERT INTO `sl_filed` VALUES ('962', '126', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '16');
INSERT INTO `sl_filed` VALUES ('964', '126', 'zhuangtai', '状态', ' 1未开启2为关闭', '否', '是', '是', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1011', '126', 'chengshi', '城市', ' ', '否', '是', '是', '文本框', 'sl_canshu|where classid=275|order by id desc|u1,u1', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1012', '126', 'quyu', '区域', ' ', '否', '是', '是', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1028', '4', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1029', '8', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1047', '11', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1073', '21', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1076', '21', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1077', '22', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1078', '22', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1079', '22', 'zhiwei', '职位', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1080', '22', 'jianjie', '简介', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1081', '22', 'dianhua', '电话', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1082', '22', 'anli', '案例', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1084', '23', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1085', '23', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1086', '24', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1087', '24', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1088', '25', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1089', '25', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1090', '26', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1091', '26', 'jianjie', '简介', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1092', '26', 'shipin', '视频', ' ', '否', '是', '否', '文件', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1093', '27', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1094', '27', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1095', '27', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1096', '27', 'fuwuneirong', '服务内容', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1097', '27', 'jianjie', '简介', ' ', '否', '是', '否', '文本编辑器', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1098', '27', 'fenlei', '分类', ' ', '否', '是', '否', '下拉框', 'sl_canshu|where classid=282|order by id desc|u1,u1', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1099', '28', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1100', '28', 'fenlei', '分类', '下拉', '否', '是', '否', '下拉框', ' sl_canshu|where classid=287|order by id desc|u1,u1', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1101', '28', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1102', '28', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1103', '28', 'neirong', '内容', ' ', '否', '是', '否', '文本编辑器', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1104', '28', 'renshu', '人数', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1105', '29', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1106', '29', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1107', '29', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1108', '30', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1109', '30', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1110', '30', 'zhiwu', '职务', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1111', '30', 'jianjie', '简介', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1112', '30', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1113', '31', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1114', '31', 'beijing', '背景', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1115', '31', 'jianjie', '简介', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1116', '32', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1117', '32', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1118', '32', 'xingye', '行业', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1119', '32', 'zengzhishui', '增值税', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1120', '32', 'qiyeshui', '企业税', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1121', '32', 'gerenshui', '个人税', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1122', '33', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1123', '33', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1124', '33', 'zhiwu', '职务', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1126', '33', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1127', '33', 'lingyu', '领域', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1128', '33', 'anli', '案例', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1129', '34', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1130', '34', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1131', '34', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1132', '34', 'kehuxuqiu', '客户需求', ' ', '否', '否', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1133', '34', 'chulifangan', '处理方案', ' ', '否', '是', '否', '文本编辑器', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1134', '35', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1135', '35', 'wenti', '问题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1136', '35', 'huida', '回答', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1137', '36', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1138', '36', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1139', '36', 'zhiwu', '职务', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1140', '36', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1141', '37', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1142', '37', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1143', '37', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1144', '38', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1145', '38', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1146', '38', 'jianjie', '简介', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1147', '38', 'zhiwei', '职位', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1148', '38', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1149', '39', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1150', '39', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1151', '39', 'neirong', '内容', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1152', '39', 'dianzan', '点赞', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1153', '39', 'wid', '文章id', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1154', '40', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1155', '40', 'dianhua', '电话', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1156', '40', 'xingming', '姓名', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1157', '41', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1158', '41', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1159', '22', 'tupian', '图片', ' ', '否', '是', '否', '图片', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1160', '42', 'dtime', '添加时间', ' ', '否', '否', '否', '时间框', 'CURRENT_TIMESTAMP', '10%', '2');
INSERT INTO `sl_filed` VALUES ('1161', '42', 'biaoti', '标题', ' ', '否', '是', '否', '文本框', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1162', '42', 'lianjie', '链接', ' ', '否', '是', '否', '文本域', ' ', '10%', '0');
INSERT INTO `sl_filed` VALUES ('1163', '42', 'fenlei', '分类', ' ', '否', '是', '否', '下拉框', ' sl_canshu|where classid=293|order by id desc|u1,u1', '10%', '0');

-- ----------------------------
-- Table structure for `sl_fwan`
-- ----------------------------
DROP TABLE IF EXISTS `sl_fwan`;
CREATE TABLE `sl_fwan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  `kehuxuqiu` char(100) DEFAULT NULL COMMENT '客户需求',
  `chulifangan` mediumtext COMMENT '处理方案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='sl_fwan模型主表';

-- ----------------------------
-- Records of sl_fwan
-- ----------------------------
INSERT INTO `sl_fwan` VALUES ('3', '2018-05-09 03:00:51', '/public/images/1525835233img_news.png', '爱我中华', '律师函起草后由您确认，更可不限次数修改。律师函寄送后，律师将继续跟进送达结果及协商进展。', '<p>可自己编辑啊的</p>');
INSERT INTO `sl_fwan` VALUES ('4', '2018-05-09 03:00:51', '/public/images/1525835233img_news.png', '爱我中华', '律师函起草后由您确认，更可不限次数修改。律师函寄送后，律师将继续跟进送达结果及协商进展。', '<p>可自己编辑啊的</p>');
INSERT INTO `sl_fwan` VALUES ('5', '2018-05-09 03:00:51', '/public/images/1525835233img_news.png', '爱我中华', '律师函起草后由您确认，更可不限次数修改。律师函寄送后，律师将继续跟进送达结果及协商进展。', '<p>可自己编辑啊的</p>');

-- ----------------------------
-- Table structure for `sl_fwtd`
-- ----------------------------
DROP TABLE IF EXISTS `sl_fwtd`;
CREATE TABLE `sl_fwtd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  `zhiwei` char(100) DEFAULT NULL COMMENT '职位',
  `jianjie` char(100) DEFAULT NULL COMMENT '简介',
  `dianhua` char(100) DEFAULT NULL COMMENT '电话',
  `anli` varchar(250) DEFAULT NULL COMMENT '案例',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='sl_fwtd模型主表';

-- ----------------------------
-- Records of sl_fwtd
-- ----------------------------
INSERT INTO `sl_fwtd` VALUES ('1', '2018-05-10 01:47:14', '张小明', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917589img_she_1.png');
INSERT INTO `sl_fwtd` VALUES ('2', '2018-05-10 01:47:14', '张大明', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917580img_she_1.png');
INSERT INTO `sl_fwtd` VALUES ('3', '2018-05-10 01:47:14', '张小年', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917572img_she_1.png');
INSERT INTO `sl_fwtd` VALUES ('4', '2018-05-10 01:47:14', '芊小白', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917561img_she_1.png');
INSERT INTO `sl_fwtd` VALUES ('5', '2018-05-10 01:47:14', '胡晓琴', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917546img_she_1.png');
INSERT INTO `sl_fwtd` VALUES ('6', '2018-05-10 01:47:14', '胡小强', '注册会计师  | CEO', '，代理记账，税务策划擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划..擅长领域：，代理记账，税务策划啊实打实阿萨德', '18582614572', '成都新都某药企，聘请我公司税务筹划，取得非常不错的效果，该药企14年在四川省内某市成立分公司，聘请当地一家税务师事务所做税务筹划，效果不显著，2016年再次聘请我们为分公司做税收筹划，两家公司我们从增值税、所得税省税达1000多万元。', '/public/images/1525917524img_she_1.png');

-- ----------------------------
-- Table structure for `sl_group`
-- ----------------------------
DROP TABLE IF EXISTS `sl_group`;
CREATE TABLE `sl_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zuming` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '组名',
  `rand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_group
-- ----------------------------
INSERT INTO `sl_group` VALUES ('2', '超级管理员', '7032');

-- ----------------------------
-- Table structure for `sl_gsjjt`
-- ----------------------------
DROP TABLE IF EXISTS `sl_gsjjt`;
CREATE TABLE `sl_gsjjt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='sl_gsjjt模型主表';

-- ----------------------------
-- Records of sl_gsjjt
-- ----------------------------
INSERT INTO `sl_gsjjt` VALUES ('1', '2018-05-09 10:07:29', '/public/images/1525860449img_about_4.png');
INSERT INTO `sl_gsjjt` VALUES ('2', '2018-05-09 10:07:29', '/public/images/1525860449img_about_4.png');
INSERT INTO `sl_gsjjt` VALUES ('3', '2018-05-09 10:07:29', '/public/images/1525860449img_about_4.png');
INSERT INTO `sl_gsjjt` VALUES ('4', '2018-05-09 10:07:29', '/public/images/1525860449img_about_4.png');

-- ----------------------------
-- Table structure for `sl_huifu`
-- ----------------------------
DROP TABLE IF EXISTS `sl_huifu`;
CREATE TABLE `sl_huifu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  `neirong` varchar(250) DEFAULT NULL COMMENT '内容',
  `dianzan` char(100) DEFAULT '0' COMMENT '点赞',
  `wid` char(100) DEFAULT NULL COMMENT '文章id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='sl_huifu模型主表';

-- ----------------------------
-- Records of sl_huifu
-- ----------------------------
INSERT INTO `sl_huifu` VALUES ('1', '2018-05-09 07:43:10', '杜拉拉', '你们都是大宝漆', '20', '63');
INSERT INTO `sl_huifu` VALUES ('2', '2018-05-09 15:59:52', null, '234234', null, '63');
INSERT INTO `sl_huifu` VALUES ('3', '2018-05-09 16:00:17', null, '234234', null, '63');
INSERT INTO `sl_huifu` VALUES ('4', '2018-05-09 16:00:58', null, '阿斯达四大', '0', '63');
INSERT INTO `sl_huifu` VALUES ('5', '2018-05-09 16:02:49', null, '234', '0', '63');
INSERT INTO `sl_huifu` VALUES ('6', '2018-05-09 16:03:03', null, '234', '4', '64');

-- ----------------------------
-- Table structure for `sl_khan`
-- ----------------------------
DROP TABLE IF EXISTS `sl_khan`;
CREATE TABLE `sl_khan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  `fuwuneirong` char(100) DEFAULT NULL COMMENT '服务内容',
  `jianjie` mediumtext COMMENT '简介',
  `fenlei` char(100) DEFAULT 'sl_canshu|where classid=282|order by id desc|u1,u1' COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='sl_khan模型主表';

-- ----------------------------
-- Records of sl_khan
-- ----------------------------
INSERT INTO `sl_khan` VALUES ('13', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '税务筹划');
INSERT INTO `sl_khan` VALUES ('14', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '常年财税顾问');
INSERT INTO `sl_khan` VALUES ('15', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('16', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('17', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('18', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('19', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('20', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');
INSERT INTO `sl_khan` VALUES ('21', '2018-05-08 09:11:26', '/public/images/1525830998你好.jpg', '成都知睿财税服务有限公司', '成都知睿财税服务有限公司', '<h4 style=\"padding: 0px 20px; margin: 0px; font-size: 14px; font-weight: normal; line-height: 40px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">啊实打实阿萨德阿萨德</h4><p><br/></p>', '财税风险分析/整理');

-- ----------------------------
-- Table structure for `sl_ljdz`
-- ----------------------------
DROP TABLE IF EXISTS `sl_ljdz`;
CREATE TABLE `sl_ljdz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  `lianjie` varchar(250) DEFAULT NULL COMMENT '链接',
  `fenlei` char(100) DEFAULT ' sl_canshu|where classid=293|order by id desc|u1,u1' COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='sl_ljdz模型主表';

-- ----------------------------
-- Records of sl_ljdz
-- ----------------------------
INSERT INTO `sl_ljdz` VALUES ('1', '2018-05-10 02:39:00', '百度', 'http://www.baidu.com', '友情链接');
INSERT INTO `sl_ljdz` VALUES ('2', '2018-05-10 02:39:00', '百度', 'http://www.baidu.com', '常用链接');

-- ----------------------------
-- Table structure for `sl_moxing`
-- ----------------------------
DROP TABLE IF EXISTS `sl_moxing`;
CREATE TABLE `sl_moxing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u1` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '数据库表名',
  `u2` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '模型中文名',
  `u3` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '模型类型',
  `u4` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '栏目列表模版',
  `u5` varchar(50) CHARACTER SET utf8 DEFAULT ' ' COMMENT '栏目内容模版',
  `u6` varchar(250) CHARACTER SET utf8 DEFAULT '/' COMMENT '栏目路径',
  `u7` varchar(500) CHARACTER SET utf8 DEFAULT ' ' COMMENT '右上角按钮',
  `u8` varchar(500) CHARACTER SET utf8 DEFAULT ' ' COMMENT '左下角按钮',
  `u9` varchar(5000) CHARACTER SET utf8 DEFAULT '<div><!-- <a href=''#'' target=_blank>查看</a> | --><a href="index.php?p=admin&c=autotable&a=copy&model_id=132&id=1">复制</a>|<a href="index.php?p=admin&c=autotable&a=edit&model_id=132&id=1">修改</a> |<a onclick="return confirm(''你确认将该信息删除 ?'');" href="index.php?p=',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_moxing
-- ----------------------------
INSERT INTO `sl_moxing` VALUES ('21', 'sl_banner', 'banner图', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('22', 'sl_fwtd', '服务团队', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('23', 'sl_ryjp', '荣誉奖牌', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('24', 'sl_zjzz', '证件资质', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('25', 'sl_bghj', '办公环境', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('26', 'sl_mtbd', '媒体报道', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('27', 'sl_khan', '客户案例', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('28', 'sl_zxzx', '咨询中心', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('29', 'sl_wdkh', '我的客户', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('30', 'sl_chs', '税务筹划师', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('31', 'sl_anbj', '案例背景', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('32', 'sl_yjch', '筹划效果', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('33', 'sl_csgw', '财税顾问', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('34', 'sl_fwan', '服务案例', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('35', 'sl_cjwt', '常见问题', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('36', 'sl_qyfw', '为您企业服务', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('37', 'sl_cgan', '成功案例', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('38', 'sl_zrtd', '知睿团队', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('39', 'sl_huifu', '评论列表', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('40', 'sl_yuyue', '预约列表', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('41', 'sl_gsjjt', '公司简介(图)', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');
INSERT INTO `sl_moxing` VALUES ('42', 'sl_ljdz', '链接地址', '表单模型', ' ', ' ', '/', ' ', ' ', '<div><!-- <a href=\'#\' target=_blank>查看</a> | --><a href=\"index.php?p=admin&c=autotable&a=copy&model_id=132&id=1\">复制</a>|<a href=\"index.php?p=admin&c=autotable&a=edit&model_id=132&id=1\">修改</a> |<a onclick=\"return confirm(\'你确认将该信息删除 ?\');\" href=\"index.php?p=');

-- ----------------------------
-- Table structure for `sl_mtbd`
-- ----------------------------
DROP TABLE IF EXISTS `sl_mtbd`;
CREATE TABLE `sl_mtbd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `jianjie` varchar(250) DEFAULT NULL COMMENT '简介',
  `shipin` char(100) DEFAULT NULL COMMENT '视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='sl_mtbd模型主表';

-- ----------------------------
-- Records of sl_mtbd
-- ----------------------------
INSERT INTO `sl_mtbd` VALUES ('3', '2018-05-08 08:49:50', '你们好啊', '/public/webuploader/upload/file_2018050940146movie.mp4');
INSERT INTO `sl_mtbd` VALUES ('4', '2018-05-08 08:49:50', '你们好啊', '/public/webuploader/upload/file_2018050940146movie.mp4');
INSERT INTO `sl_mtbd` VALUES ('5', '2018-05-08 08:49:50', '你们好啊', '/public/webuploader/upload/file_2018050940146movie.mp4');

-- ----------------------------
-- Table structure for `sl_qyfw`
-- ----------------------------
DROP TABLE IF EXISTS `sl_qyfw`;
CREATE TABLE `sl_qyfw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `zhiwu` char(100) DEFAULT NULL COMMENT '职务',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='sl_qyfw模型主表';

-- ----------------------------
-- Records of sl_qyfw
-- ----------------------------
INSERT INTO `sl_qyfw` VALUES ('1', '2018-05-09 03:22:34', '/public/images/1525836154img_fin_1.png', 'CEO|CTO', '杜拉拉');
INSERT INTO `sl_qyfw` VALUES ('2', '2018-05-09 03:22:34', '/public/images/1525836154img_fin_1.png', 'CEO|CTO', '杜拉拉');
INSERT INTO `sl_qyfw` VALUES ('3', '2018-05-09 03:22:34', '/public/images/1525836154img_fin_1.png', 'CEO|CTO', '杜拉拉');
INSERT INTO `sl_qyfw` VALUES ('4', '2018-05-09 03:22:34', '/public/images/1525836154img_fin_1.png', 'CEO|CTO', '杜拉拉');

-- ----------------------------
-- Table structure for `sl_ryjp`
-- ----------------------------
DROP TABLE IF EXISTS `sl_ryjp`;
CREATE TABLE `sl_ryjp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='sl_ryjp模型主表';

-- ----------------------------
-- Records of sl_ryjp
-- ----------------------------
INSERT INTO `sl_ryjp` VALUES ('16', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('17', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('18', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('19', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('20', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('21', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('22', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('23', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('24', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('25', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('26', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('27', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('28', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('29', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('30', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('31', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('32', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('33', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('34', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('35', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');
INSERT INTO `sl_ryjp` VALUES ('36', '2018-05-09 01:43:09', '/public/images/1525830189你好.jpg');

-- ----------------------------
-- Table structure for `sl_sort`
-- ----------------------------
DROP TABLE IF EXISTS `sl_sort`;
CREATE TABLE `sl_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned DEFAULT '0' COMMENT '模型id',
  `paixu` int(10) unsigned DEFAULT '0' COMMENT '排序',
  `sort_id` int(10) unsigned DEFAULT '0' COMMENT '所属父级id',
  `url` varchar(250) DEFAULT '#' COMMENT '栏目链接',
  `u1` varchar(250) DEFAULT NULL,
  `u2` varchar(250) DEFAULT NULL,
  `u3` varchar(250) DEFAULT NULL,
  `u4` varchar(250) DEFAULT NULL,
  `u5` varchar(250) DEFAULT ' ' COMMENT '栏目封面',
  `u6` varchar(500) DEFAULT ' ' COMMENT '栏目介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='sl_sort';

-- ----------------------------
-- Records of sl_sort
-- ----------------------------
INSERT INTO `sl_sort` VALUES ('23', '53', '0', '18', '#', '成功案例', 'list.html', 'goods.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('24', '53', '0', '23', '#', 'wap站点', 'list.html', 'goods.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('37', '53', '1', '25', '#', '品牌官网设计', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141411095850e27d24f56.jpg', '<dd>策划、设计、前端、程序开发全方位一条龙服务</dd>\r\n								<dd>充分了解企业文化、行业特点，体现企业特色</dd>\r\n								<dd>设计师一对一沟通，充分了解你的需求和想法</dd>\r\n								<dd>时刻掌握最新技术动向，打造高品质网站</dd>');
INSERT INTO `sl_sort` VALUES ('38', '53', '2', '25', '#', '商城网站开发', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141415155850e373d7b27.jpg', '<dd>专业量身定制设计、定制功能、定制后台开发</dd>\r\n								<dd>拥有资深开发团队，追求质量同时保证速度</dd>\r\n								<dd>追求完美，不断提升系统响应速度和稳定性</dd>\r\n								<dd>完善的测试流程，在上线之前解决问题</dd>');
INSERT INTO `sl_sort` VALUES ('39', '53', '3', '25', '#', '手机网站建设', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141415505850e396e2323.jpg', '<dd>个性设计，独一无二，用设计风格体现企业文化</dd>\r\n								<dd>精简代码、追求速度，兼容主流手机浏览器</dd>\r\n								<dd>和PC端数据同步，管理方便，全方位网络营销</dd>\r\n								<dd>零成本增加微信网站</dd>');
INSERT INTO `sl_sort` VALUES ('40', '53', '4', '25', '#', '平面设计、摄影', 'service.html', 'service.html', '/', 'public/uploads/20161214/201612141416245850e3b87be1c.jpg', '<dd>平面：画册设计，包装设计，标志设计</dd>\r\n								<dd>摄影：凭着多年的摄影经验为客户量身定做最适合的</dd>\r\n								<dd>摄影服务,对每一个项目都深入的研究，深刻洞察</dd>\r\n								<dd>每一个细节,立志成为行业的推动者和缔造者</dd>');
INSERT INTO `sl_sort` VALUES ('41', '53', '1', '27', '#', '手机网站', 'cases.html', 'articledetail.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('42', '53', '2', '27', '#', '企业案例', 'cases.html', 'articledetail.html', '/', '', ' ');
INSERT INTO `sl_sort` VALUES ('43', '53', '3', '27', '#', '购物商城', 'cases.html', 'articledetail.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('45', '53', '0', '29', '#', '企业网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '企业网站作为一个公司的网络名片，最主要的作用是展示公司形象和宣传公司的服务或产品，所...');
INSERT INTO `sl_sort` VALUES ('46', '53', '1', '29', '#', '旅游网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '随着互联网的迅速，越多越多人，尤其是上班白领，都喜欢在网上查看旅游相关信息，然后再网上直...');
INSERT INTO `sl_sort` VALUES ('47', '53', '2', '29', '#', '手机网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '着智能手机的迅速发展，移动互联网时代已经到来，这带给我们是一个机遇还是危机？全取决于...');
INSERT INTO `sl_sort` VALUES ('48', '53', '3', '29', '#', '商城网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '商城网站需要强大的后台管理系统、良好的用户购物体验、安全稳定的服务器空间，商城网站...\r\n');
INSERT INTO `sl_sort` VALUES ('49', '53', '5', '25', '#', '微信网站建设', 'service.html', 'service.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('50', '53', '6', '25', '#', '其他网站建设', 'service.html', 'service.html', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('64', '53', '4', '29', '#', '外贸网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '外贸网站的面向用户主要为国外客户，所以除了文字采用英文外，风格设计、页面编码、操作习惯都要适应国外客户需...');
INSERT INTO `sl_sort` VALUES ('65', '53', '5', '29', '#', '服装网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '风格上清新明快，符合最新审美观，制作精细，有积极开放的感觉；使用流行的大区块划分概念，配合使用大广告条，突出宣传...');
INSERT INTO `sl_sort` VALUES ('66', '53', '6', '29', '#', '集团上市公司解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '随着集团上市公司的不断壮大，集团企业、上市公司的信息需要采用各种途径公众于媒体、上级领导、内部员工、投...');
INSERT INTO `sl_sort` VALUES ('67', '53', '7', '29', '#', '酒店网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '在建设酒店网站时我们要充分考虑“酒店”的经营服务特色，因此我们在制作方案时会注重系统的实用性、可靠性、...');
INSERT INTO `sl_sort` VALUES ('68', '53', '4', '29', '8', '门户网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '门户网站不是简单的内容管理，而是新闻内容的聚合，做好门户网站，需要管理好网站的内容，同时...');
INSERT INTO `sl_sort` VALUES ('69', '53', '8', '29', '#', '搜索引擎优化解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '今天我们谈提高网站的价值，那么什么是网站的价值呢？很简单，网站的价值就是访客觉得有用，提高网站的价值，就是让更...');
INSERT INTO `sl_sort` VALUES ('70', '53', '9', '29', '9', '教育培训网站解决方案', 'solutions.html', 'articledetail.html', '/', ' ', '维尼开发的视频教学系统在视频教课程学行领域处在领先技术优势，给许多客户带了丰厚的盈利、扩大了市场的占有...');
INSERT INTO `sl_sort` VALUES ('71', '53', '0', '0', '#', '关于我们', '.DS_Store', '.DS_Store', '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('73', '77', '0', '0', '#', '解决方案', null, null, '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('74', '100', '0', '0', '#', 'class1', null, null, '/', ' ', ' ');
INSERT INTO `sl_sort` VALUES ('75', '103', '0', '0', '', '阿斯顿发生的', '', '', '/', '', '');

-- ----------------------------
-- Table structure for `sl_system`
-- ----------------------------
DROP TABLE IF EXISTS `sl_system`;
CREATE TABLE `sl_system` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u1` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `u2` varchar(250) CHARACTER SET utf8 DEFAULT NULL COMMENT '日志说明',
  `u3` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '访问ip',
  `u4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '日志类型',
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `yonghuming` char(100) DEFAULT NULL,
  `sql` text COMMENT '执行的sql语句',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111474 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sl_system
-- ----------------------------
INSERT INTO `sl_system` VALUES ('111430', 'cdsile', 'cdsile():登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-20 14:20:02', null, null);
INSERT INTO `sl_system` VALUES ('111431', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 14:21:02', null, null);
INSERT INTO `sl_system` VALUES ('111432', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:07:21', null, null);
INSERT INTO `sl_system` VALUES ('111433', 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:07:32', null, null);
INSERT INTO `sl_system` VALUES ('111434', 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:08:55', null, null);
INSERT INTO `sl_system` VALUES ('111435', 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:08:58', null, null);
INSERT INTO `sl_system` VALUES ('111436', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:09:26', null, null);
INSERT INTO `sl_system` VALUES ('111437', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-20 15:09:31', null, null);
INSERT INTO `sl_system` VALUES ('111438', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-21 14:51:11', null, null);
INSERT INTO `sl_system` VALUES ('111439', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-23 09:44:18', null, null);
INSERT INTO `sl_system` VALUES ('111440', 'cdsile', 'cdsile:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-23 10:11:30', null, null);
INSERT INTO `sl_system` VALUES ('111441', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-23 10:26:05', null, null);
INSERT INTO `sl_system` VALUES ('111442', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-24 11:09:01', null, null);
INSERT INTO `sl_system` VALUES ('111443', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-25 10:53:59', null, null);
INSERT INTO `sl_system` VALUES ('111444', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 09:55:38', null, null);
INSERT INTO `sl_system` VALUES ('111445', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:27:53', null, null);
INSERT INTO `sl_system` VALUES ('111446', 'cdsile', 'cdsile:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:27:59', null, null);
INSERT INTO `sl_system` VALUES ('111447', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:04', null, null);
INSERT INTO `sl_system` VALUES ('111448', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:09', null, null);
INSERT INTO `sl_system` VALUES ('111449', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:28:15', null, null);
INSERT INTO `sl_system` VALUES ('111450', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:29:05', null, null);
INSERT INTO `sl_system` VALUES ('111451', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:29:34', null, null);
INSERT INTO `sl_system` VALUES ('111452', 'cdsile', 'cdsile:登录失败，用户名或密码错误。操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:30:10', null, null);
INSERT INTO `sl_system` VALUES ('111453', 'cdsie', 'cdsie(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:30:33', null, null);
INSERT INTO `sl_system` VALUES ('111454', 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:30:42', null, null);
INSERT INTO `sl_system` VALUES ('111455', 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:30:58', null, null);
INSERT INTO `sl_system` VALUES ('111456', 'cdsie', 'cdsie:更改用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:31:23', null, null);
INSERT INTO `sl_system` VALUES ('111457', 'cdsie', 'cdsie:更改用户信息：失败。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=update', '127.0.0.1', '用户管理', '2018-04-26 14:35:09', null, null);
INSERT INTO `sl_system` VALUES ('111458', 'cdsie', 'cdsie:增加用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=insert', '127.0.0.1', '用户管理', '2018-04-26 14:39:03', null, null);
INSERT INTO `sl_system` VALUES ('111459', 'cdsie', 'cdsie:增加用户信息：成功。操作页面:www.ceshi.com/index.php?p=admin&amp;c=yonghu&amp;a=insert', '127.0.0.1', '用户管理', '2018-04-26 14:39:36', null, null);
INSERT INTO `sl_system` VALUES ('111460', '1234', '1234(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:39:46', null, null);
INSERT INTO `sl_system` VALUES ('111461', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.ceshi.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 14:40:14', null, null);
INSERT INTO `sl_system` VALUES ('111462', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-26 17:59:51', null, null);
INSERT INTO `sl_system` VALUES ('111463', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-27 10:31:46', null, null);
INSERT INTO `sl_system` VALUES ('111464', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-04-28 09:59:47', null, null);
INSERT INTO `sl_system` VALUES ('111465', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-02 09:26:18', null, null);
INSERT INTO `sl_system` VALUES ('111466', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-04 14:57:17', null, null);
INSERT INTO `sl_system` VALUES ('111467', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-05 11:44:07', null, null);
INSERT INTO `sl_system` VALUES ('111468', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-05 14:39:35', null, null);
INSERT INTO `sl_system` VALUES ('111469', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-07 10:13:57', null, null);
INSERT INTO `sl_system` VALUES ('111470', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.bbb.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-08 09:27:36', null, null);
INSERT INTO `sl_system` VALUES ('111471', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-08 15:17:27', null, null);
INSERT INTO `sl_system` VALUES ('111472', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-09 09:37:59', null, null);
INSERT INTO `sl_system` VALUES ('111473', 'cdsile', 'cdsile(超级管理员):登录成功,操作页面:www.zirui.com/index.php?p=admin&amp;c=login&amp;a=signin', '127.0.0.1', '管理员登录', '2018-05-10 09:30:32', null, null);

-- ----------------------------
-- Table structure for `sl_wdkh`
-- ----------------------------
DROP TABLE IF EXISTS `sl_wdkh`;
CREATE TABLE `sl_wdkh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='sl_wdkh模型主表';

-- ----------------------------
-- Records of sl_wdkh
-- ----------------------------
INSERT INTO `sl_wdkh` VALUES ('8', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('19', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('20', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('21', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('22', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('23', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('24', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('25', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('26', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('27', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('28', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('29', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');
INSERT INTO `sl_wdkh` VALUES ('30', '2018-05-08 10:29:23', '/public/images/1525831176你好.jpg', '我们的客户');

-- ----------------------------
-- Table structure for `sl_yjch`
-- ----------------------------
DROP TABLE IF EXISTS `sl_yjch`;
CREATE TABLE `sl_yjch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `xingye` char(100) DEFAULT NULL COMMENT '行业',
  `zengzhishui` char(100) DEFAULT NULL COMMENT '增值税',
  `qiyeshui` char(100) DEFAULT NULL COMMENT '企业税',
  `gerenshui` char(100) DEFAULT NULL COMMENT '个人税',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sl_yjch模型主表';

-- ----------------------------
-- Records of sl_yjch
-- ----------------------------
INSERT INTO `sl_yjch` VALUES ('1', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('2', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('3', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('4', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('5', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('6', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('7', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');
INSERT INTO `sl_yjch` VALUES ('8', '2018-05-09 02:36:20', '/public/images/1525833380你好.jpg', '游戏', '100%', '100%', '28-36%');

-- ----------------------------
-- Table structure for `sl_yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `sl_yuyue`;
CREATE TABLE `sl_yuyue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `dianhua` char(100) DEFAULT NULL COMMENT '电话',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='sl_yuyue模型主表';

-- ----------------------------
-- Records of sl_yuyue
-- ----------------------------
INSERT INTO `sl_yuyue` VALUES ('2', '2018-05-09 16:44:02', '18528479489', '哈哈哈哈');
INSERT INTO `sl_yuyue` VALUES ('3', '2018-05-09 16:45:30', '18582479520', '61556');

-- ----------------------------
-- Table structure for `sl_zjzz`
-- ----------------------------
DROP TABLE IF EXISTS `sl_zjzz`;
CREATE TABLE `sl_zjzz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='sl_zjzz模型主表';

-- ----------------------------
-- Records of sl_zjzz
-- ----------------------------
INSERT INTO `sl_zjzz` VALUES ('7', '2018-05-08 08:39:12', '/public/images/1525830238你好.jpg');
INSERT INTO `sl_zjzz` VALUES ('8', '2018-05-08 08:39:12', '/public/images/1525830238你好.jpg');
INSERT INTO `sl_zjzz` VALUES ('9', '2018-05-08 08:39:12', '/public/images/1525830238你好.jpg');
INSERT INTO `sl_zjzz` VALUES ('10', '2018-05-08 08:39:12', '/public/images/1525830238你好.jpg');
INSERT INTO `sl_zjzz` VALUES ('11', '2018-05-08 08:39:12', '/public/images/1525830238你好.jpg');

-- ----------------------------
-- Table structure for `sl_zrtd`
-- ----------------------------
DROP TABLE IF EXISTS `sl_zrtd`;
CREATE TABLE `sl_zrtd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `xingming` char(100) DEFAULT NULL COMMENT '姓名',
  `jianjie` varchar(250) DEFAULT NULL COMMENT '简介',
  `zhiwei` char(100) DEFAULT NULL COMMENT '职位',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='sl_zrtd模型主表';

-- ----------------------------
-- Records of sl_zrtd
-- ----------------------------
INSERT INTO `sl_zrtd` VALUES ('1', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('2', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('3', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('4', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('5', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('6', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('7', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('8', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('10', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');
INSERT INTO `sl_zrtd` VALUES ('11', '2018-05-09 06:55:57', '华为', '我很棒', 'CEO', '/public/images/1525848957img_team_1.png');

-- ----------------------------
-- Table structure for `sl_zxzx`
-- ----------------------------
DROP TABLE IF EXISTS `sl_zxzx`;
CREATE TABLE `sl_zxzx` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `fenlei` char(100) DEFAULT ' sl_canshu|where classid=287|order by id desc|u1,u1' COMMENT '分类',
  `tupian` varchar(250) DEFAULT NULL COMMENT '图片',
  `biaoti` char(100) DEFAULT NULL COMMENT '标题',
  `neirong` mediumtext COMMENT '内容',
  `renshu` char(100) DEFAULT NULL COMMENT '人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='sl_zxzx模型主表';

-- ----------------------------
-- Records of sl_zxzx
-- ----------------------------
INSERT INTO `sl_zxzx` VALUES ('1', '2018-05-08 09:42:57', '聚焦知锐', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: \">132公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算阿斯达四大所阿萨德阿萨德阿萨德阿萨德啊as打的</span></p>', '12');
INSERT INTO `sl_zxzx` VALUES ('10', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('11', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('12', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('13', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('14', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('15', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('16', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('17', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('18', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('19', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('20', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('21', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('22', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('23', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('24', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('25', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('26', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('27', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('28', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('29', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('30', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('31', '2018-05-08 09:42:57', '常见问题', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('32', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 12px; background-color: rgb(255, 255, 255);\">13公司目前为1500多家中小型企业提供代理记账服务，为500多家大阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德阿萨德中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算</span></p>', '12');
INSERT INTO `sl_zxzx` VALUES ('33', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('34', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('35', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('36', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('37', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('38', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('39', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('40', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('41', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('42', '2018-05-08 09:42:57', '财税百科', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('43', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('44', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('45', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('46', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('47', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('48', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('49', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('50', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('51', '2018-05-08 09:42:57', '最新政策', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('52', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('53', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('54', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('55', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('56', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('57', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('58', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('59', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('60', '2018-05-08 09:42:57', '财税知识', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 12px; background-color: rgb(255, 255, 255);&quot;&gt;13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算&lt;/span&gt;&lt;/p&gt;', '12');
INSERT INTO `sl_zxzx` VALUES ('61', '2018-05-08 09:42:57', '聚焦知锐', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: \">132公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算阿斯达四大所阿萨德阿萨德阿萨德阿萨德啊as打的</span></p>', '12');
INSERT INTO `sl_zxzx` VALUES ('62', '2018-05-08 09:42:57', '聚焦知锐', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: \">132公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算阿斯达四大所阿萨德阿萨德阿萨德阿萨德啊as打的</span></p>', '12');
INSERT INTO `sl_zxzx` VALUES ('63', '2018-05-08 09:42:57', '聚焦知锐', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: \">132公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算阿斯达四大所阿萨德阿萨德阿萨德阿萨德啊as打的</span></p>', '12');
INSERT INTO `sl_zxzx` VALUES ('64', '2018-05-08 09:42:57', '聚焦知锐', '/public/images/1525772577你好.jpg', '13公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算', '<p><span style=\"color: rgb(51, 51, 51); font-family: \">132公司目前为1500多家中小型企业提供代理记账服务，为500多家大中型企业提供财务顾问与咨询、税务顾问与咨询、所得税汇算、房地产企业土地增值税清算阿斯达四大所阿萨德阿萨德阿萨德阿萨德啊as打的</span></p>', '12');
