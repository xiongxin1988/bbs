/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : itheima70

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2019-06-16 11:41:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bbs_reply`
-- ----------------------------
DROP TABLE IF EXISTS `bbs_reply`;
CREATE TABLE `bbs_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_reply
-- ----------------------------
INSERT INTO `bbs_reply` VALUES ('16', '8', '哟哟', '111111', '2019-06-16 09:14:43');
INSERT INTO `bbs_reply` VALUES ('17', null, 'xixi', 'dddddd', '2019-06-16 09:15:04');
INSERT INTO `bbs_reply` VALUES ('19', null, '牛逼', '你很牛逼', '2019-06-16 09:15:41');
INSERT INTO `bbs_reply` VALUES ('20', null, 'jack ma', '你真是个小机灵鬼', '2019-06-16 09:15:43');
INSERT INTO `bbs_reply` VALUES ('21', null, '肖强', '哈哈哈哈哈', '2019-06-16 09:15:58');
INSERT INTO `bbs_reply` VALUES ('24', null, '你爸爸', '你好', '2019-06-16 09:16:42');
INSERT INTO `bbs_reply` VALUES ('28', '30', '张三', '666666666', '2019-06-16 09:17:59');
INSERT INTO `bbs_reply` VALUES ('29', '30', '我们的访问地址', 'XXXX', '2019-06-16 09:18:01');
INSERT INTO `bbs_reply` VALUES ('32', '30', '小半', '66666666666', '2019-06-16 09:18:45');
INSERT INTO `bbs_reply` VALUES ('33', '30', '', '6666666666', '2019-06-16 09:19:18');
INSERT INTO `bbs_reply` VALUES ('38', null, 'yuily', 'yuily', '2019-06-16 10:03:28');
INSERT INTO `bbs_reply` VALUES ('39', '32', 'ds10086', '123456', '2019-06-16 10:03:54');
INSERT INTO `bbs_reply` VALUES ('42', '32', 'lee', 'lee', '2019-06-16 10:05:44');
INSERT INTO `bbs_reply` VALUES ('43', '32', 'ss', 'ss', '2019-06-16 10:06:44');
INSERT INTO `bbs_reply` VALUES ('44', '32', 'zhu', '123', '2019-06-16 10:06:48');
INSERT INTO `bbs_reply` VALUES ('45', '30', 'lec', '123456', '2019-06-16 10:07:01');
INSERT INTO `bbs_reply` VALUES ('46', '32', 'durant', 'durant', '2019-06-16 10:07:15');
INSERT INTO `bbs_reply` VALUES ('47', '32', 'huangxun', '111', '2019-06-16 10:07:48');
INSERT INTO `bbs_reply` VALUES ('50', '32', 'shiyue', '123', '2019-06-16 10:10:34');
INSERT INTO `bbs_reply` VALUES ('52', '32', 'lihanyi', 'lihanyi', '2019-06-16 10:11:57');
INSERT INTO `bbs_reply` VALUES ('53', '32', 'xiaoqiang', 'SSM', '2019-06-16 10:12:17');
INSERT INTO `bbs_reply` VALUES ('54', '32', 'haha', 'haha', '2019-06-16 10:12:21');
INSERT INTO `bbs_reply` VALUES ('55', '32', 'xiaoyao', '666', '2019-06-16 10:12:35');
INSERT INTO `bbs_reply` VALUES ('56', '32', 'chen', 'chenxuyang', '2019-06-16 10:12:51');
INSERT INTO `bbs_reply` VALUES ('57', '32', 'lec', '123456', '2019-06-16 10:13:03');
INSERT INTO `bbs_reply` VALUES ('59', '32', 'xiaoban', 'xiaoban', '2019-06-16 10:14:08');
INSERT INTO `bbs_reply` VALUES ('60', '32', 'csd', '123456', '2019-06-16 10:14:26');
INSERT INTO `bbs_reply` VALUES ('61', '32', 'wwh', 'wwh', '2019-06-16 10:14:41');
INSERT INTO `bbs_reply` VALUES ('62', '32', 'geda', 'liu18271880345', '2019-06-16 10:15:06');
INSERT INTO `bbs_reply` VALUES ('63', '32', 'weiwei', 'weiwei', '2019-06-16 10:18:29');
INSERT INTO `bbs_reply` VALUES ('64', '32', 'xs', '123456', '2019-06-16 10:18:45');
INSERT INTO `bbs_reply` VALUES ('65', '30', 'qqq', '1234', '2019-06-16 10:19:50');
INSERT INTO `bbs_reply` VALUES ('66', '32', 'qqq', 'aaa', '2019-06-16 10:20:35');
INSERT INTO `bbs_reply` VALUES ('67', '32', 'hyx', 'hyx', '2019-06-16 10:21:18');
INSERT INTO `bbs_reply` VALUES ('68', '32', 'lxj', 'lxj', '2019-06-16 10:22:14');

-- ----------------------------
-- Table structure for `bbs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `bbs_topic`;
CREATE TABLE `bbs_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bbs_topic
-- ----------------------------
INSERT INTO `bbs_topic` VALUES ('30', '授课导师', '192.168.35.29:8080/bbs/topic/add', '我的访问地址', '2019-06-16 09:17:44');
INSERT INTO `bbs_topic` VALUES ('32', 'svn', 'https://p52-xiongxin/svn/bbs/trunk/code/c70', 'svn地址', '2019-06-16 09:58:07');
INSERT INTO `bbs_topic` VALUES ('34', 'https://p52-xiongxin/svn/bbs/trunk', 'https://p52-xiongxin/svn/bbs/trunk', 'https://p52-xiongxin/svn/bbs/trunk', '2019-06-16 10:10:17');
