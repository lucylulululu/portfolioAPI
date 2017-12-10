/*
Navicat MySQL Data Transfer

Source Server         : portfolio
Source Server Version : 100210
Source Host           : localhost:3306
Source Database       : portfolio

Target Server Type    : MYSQL
Target Server Version : 100210
File Encoding         : 65001

Date: 2017-11-22 16:20:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `bid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章标题',
  `content` mediumblob DEFAULT NULL COMMENT '文章正文',
  `type` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '文章类型:',
  `uname` varchar(255) DEFAULT NULL,
  `uavatar` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '创建者用户编码',
  `create_time` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT '更新时间',
  `label` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户标签',
  `img_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片1',
  `img_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片2',
  `img_3` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片3',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='动态文章表，用于查询编辑动态文章信息。';

-- ----------------------------
-- Records of blog
-- ----------------------------
