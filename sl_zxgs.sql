/*
Navicat MySQL Data Transfer

Source Server         : guli1
Source Server Version : 50165
Source Host           : 211.149.227.219:3306
Source Database       : guli

Target Server Type    : MYSQL
Target Server Version : 50165
File Encoding         : 65001

Date: 2018-05-25 18:21:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sl_zxgs
-- ----------------------------
DROP TABLE IF EXISTS `sl_zxgs`;
CREATE TABLE `sl_zxgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `mingcheng` char(100) DEFAULT NULL COMMENT '名称',
  `quyu` char(100) DEFAULT ' sl_areas||order by id asc|id,mingcheng' COMMENT '区域',
  `leixing` char(100) DEFAULT ' sl_leixing||order by id asc|id,mingcheng' COMMENT '类型',
  `fengge` char(100) DEFAULT 'sl_fengge||order by id asc|id,mingcheng' COMMENT '风格',
  `zixun` int(11) DEFAULT NULL COMMENT '咨询人数',
  `weizhi` char(100) DEFAULT NULL COMMENT '位置',
  `jianjie` mediumtext COMMENT '公司简介',
  `lanshu` int(11) DEFAULT NULL COMMENT '浏览数',
  `logo` varchar(250) DEFAULT NULL COMMENT 'Logo',
  `guimo` varchar(250) DEFAULT NULL COMMENT '公司规模',
  `fuwu` varchar(250) DEFAULT NULL COMMENT '装后服务',
  `cqsj` varchar(250) DEFAULT NULL COMMENT '初期设计/量房',
  `cqys` varchar(250) DEFAULT NULL COMMENT '初期预算/洽谈方式',
  `sheji` varchar(250) DEFAULT NULL COMMENT '深化设计',
  `yusuan` varchar(250) DEFAULT NULL COMMENT '深化预算',
  `zhiliang` varchar(250) DEFAULT NULL COMMENT '材料质量',
  `hetong` varchar(250) DEFAULT NULL COMMENT '合同规范性',
  `tese` varchar(250) DEFAULT NULL COMMENT '特色服务',
  `fuwuquyu` char(100) DEFAULT NULL COMMENT '服务区域',
  `zhuanchang` char(100) DEFAULT NULL COMMENT '服务专长',
  `gongzhuang` char(100) DEFAULT NULL COMMENT '公装',
  `jiawei` char(100) DEFAULT NULL COMMENT '承接价位',
  `zhuanchangfengge` char(100) DEFAULT NULL COMMENT '专长风格',
  `tupian` varchar(250) DEFAULT NULL COMMENT '封面图',
  `anli` char(100) DEFAULT NULL COMMENT '案例',
  `gongdi` char(100) DEFAULT NULL COMMENT '工地',
  `shejishi` char(100) DEFAULT NULL COMMENT '设计师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='sl_zxgs模型主表';

-- ----------------------------
-- Records of sl_zxgs
-- ----------------------------
INSERT INTO `sl_zxgs` VALUES ('1', '2018-05-15 16:43:07', '谷栗装饰', '2', '1', '1', '123', '都江堰东能财富广场903', '<p style=\"text-indent: 32px; text-align: justify;\"><span style=\"font-family: 微软雅黑, \">“谷栗网O2O互联网家装/工装信息服务平台”项目是将线下装饰公司、个体施工队伍、材料商家、设计团队、个人设计师进行全面整合到平台上，由平台为入驻商家提供店铺服务、产品展示服务、营销推广等服务。平台同时对入驻商家进行实时监督，确保平台的透明化、规范化以及秩序化。在线上平台主要建立PC端口、移动端口、微信端口等受众面较广的营销端口开展引流及推广，在线下平台将不定期组织平台入驻商家开展各类营销活动，进行线下市场拓展及推广，确保平台入驻商家在线上及线下的双重利益。</span></p>', '272', '/public/images/1527141997谷栗网定稿2.jpg', '公司总面积1200余平方米，材料展厅面积800余平方米，办公服务厅400余平方米，现有员工60余人，年销售额1.2亿元。', '公司严格按照国家相关标准执行售后服务，提供7x24小时上门服务等。', '公司提供免费的方案设计和预算报价', '根据客户的风格喜好和个性化设计预算出合理的价格提供给客户参考', null, null, null, null, null, null, null, null, null, null, '/public/images/1527154525f852c72ade5b960a1788f9f56d9f09ef.jpg', null, null, null);
