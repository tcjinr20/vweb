/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : hvedio

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 18/04/2018 14:22:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vh_admin
-- ----------------------------
DROP TABLE IF EXISTS `vh_admin`;
CREATE TABLE `vh_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `nichen` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `pass` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `lognum` int(10) DEFAULT 0,
  `logtime` int(10) UNSIGNED DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `vh_admin_log`;
CREATE TABLE `vh_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `ua` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `logtime` int(10) UNSIGNED DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_ads
-- ----------------------------
DROP TABLE IF EXISTS `vh_ads`;
CREATE TABLE `vh_ads`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `yid` tinyint(1) DEFAULT 0,
  `bs` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `neir` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_class
-- ----------------------------
DROP TABLE IF EXISTS `vh_class`;
CREATE TABLE `vh_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `xid` int(10) UNSIGNED DEFAULT 0,
  `fid` int(10) UNSIGNED DEFAULT 0,
  `skin` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'list.html',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_gbook
-- ----------------------------
DROP TABLE IF EXISTS `vh_gbook`;
CREATE TABLE `vh_gbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` tinyint(1) DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `hfcontent` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `addtime` int(10) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_link
-- ----------------------------
DROP TABLE IF EXISTS `vh_link`;
CREATE TABLE `vh_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(10) UNSIGNED DEFAULT 0,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `pic` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_pages
-- ----------------------------
DROP TABLE IF EXISTS `vh_pages`;
CREATE TABLE `vh_pages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bs` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `yid` tinyint(1) DEFAULT 0,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_player
-- ----------------------------
DROP TABLE IF EXISTS `vh_player`;
CREATE TABLE `vh_player`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `bs` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `js` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `xid` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bs`(`bs`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vh_vod
-- ----------------------------
DROP TABLE IF EXISTS `vh_vod`;
CREATE TABLE `vh_vod`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `pic2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `cid` int(10) UNSIGNED DEFAULT 0,
  `tid` tinyint(1) DEFAULT 0,
  `zid` tinyint(1) DEFAULT 0,
  `yid` tinyint(1) DEFAULT 0,
  `state` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `daoyan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `zhuyan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `diqu` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `yuyan` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `year` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `info` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `hits` int(10) UNSIGNED DEFAULT 0,
  `yhits` int(10) UNSIGNED DEFAULT 0,
  `zhits` int(10) UNSIGNED DEFAULT 0,
  `rhits` int(10) UNSIGNED DEFAULT 0,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `skin` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'play.html',
  `url` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `addtime` int(10) UNSIGNED DEFAULT 0,
  `torrent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
