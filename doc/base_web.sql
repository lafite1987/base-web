/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50618
Source Host           : localhost:3306
Source Database       : base_web

Target Server Type    : MYSQL
Target Server Version : 50618
File Encoding         : 65001

Date: 2018-04-15 10:28:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `type` int(4) DEFAULT NULL COMMENT '菜单所属分类，1为内勤人员功能菜单，2为外勤人员功能菜单',
  `parentId` bigint(11) NOT NULL COMMENT '父级菜单ID',
  `parentIdPath` varchar(500) NOT NULL COMMENT '父级菜单ID串联，便于查询，格式：$1$2$',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单链接',
  `orderNo` int(11) DEFAULT '0' COMMENT '排序',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `state` int(2) DEFAULT '1' COMMENT '数据状态',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `onMenu` tinyint(4) DEFAULT '1' COMMENT '是否显示在菜单',
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '管理平台', '1', '-1', '$', '/', '0', '管理平台', '1', '2013-01-21 14:19:22', '1', 'fa fa-bar-chart');
INSERT INTO `menu` VALUES ('2', '系统管理', '1', '1', '$1$', '/', '1', '系统管理', '1', '2013-01-23 10:12:31', '1', 'fa fa-bar-chart');
INSERT INTO `menu` VALUES ('3', '用户管理', '1', '2', '$1$2$', '/user', '1', '用户管理', '1', '2013-01-23 10:15:27', '1', 'fa fa-bar-chart');
INSERT INTO `menu` VALUES ('4', '菜单管理', '1', '2', '$1$2$', '/menu', '2', '菜单管理', '1', '2013-01-23 10:17:34', '1', 'fa fa-bar-chart');
INSERT INTO `menu` VALUES ('5', '角色管理', '1', '2', '$1$2$', '/role', '3', '角色管理', '1', '2013-01-24 14:28:03', '1', 'fa fa-bar-chart');
INSERT INTO `menu` VALUES ('9', '分配权限查看', '1', '5', '$1$2$5$', '/manager/role/privileges', '1', '', '1', '2015-10-16 00:14:17', '0', '');
INSERT INTO `menu` VALUES ('10', '分配权限提交', '1', '5', '$1$2$5$', '/manager/role/privileges/save', '2', '', '1', '2015-10-16 00:21:56', '0', '');
INSERT INTO `menu` VALUES ('11', '菜单详情', '1', '4', '$1$2$4$', '/manager/menu/detail', '1', '', '1', '2015-10-16 00:28:52', '0', '');
INSERT INTO `menu` VALUES ('12', '新增菜单提交', '1', '4', '$1$2$4$', '/manager/menu/add', '4', '', '1', '2015-10-16 00:29:56', '0', '');
INSERT INTO `menu` VALUES ('13', '修改菜单', '1', '4', '$1$2$4$', '/manager/menu/update', '3', '', '1', '2015-10-16 00:31:31', '0', '');
INSERT INTO `menu` VALUES ('16', '删除菜单', '1', '4', '$1$2$4$', '/manager/menu/del', '6', '', '1', '2015-10-16 00:36:38', '0', '');
INSERT INTO `menu` VALUES ('19', '新增用户提交', '1', '3', '$1$2$3$', '/manager/user/add', '2', '', '1', '2015-10-16 01:13:24', '0', '');
INSERT INTO `menu` VALUES ('20', '修改用户', '1', '3', '$1$2$3$', '/manager/user/detail', '3', '', '1', '2015-10-16 01:14:20', '0', '');
INSERT INTO `menu` VALUES ('21', '修改用户提交', '1', '3', '$1$2$3$', '/manager/user/update', '4', '', '1', '2015-10-16 01:14:36', '0', '');
INSERT INTO `menu` VALUES ('22', '删除用户', '1', '3', '$1$2$3$', '/manager/user/del', '5', '', '1', '2015-10-16 01:17:26', '0', '');
INSERT INTO `menu` VALUES ('24', '角色树形', '1', '5', '$1$2$5$', '/manager/role/api/tree', '3', '', '1', '2015-10-16 01:19:59', '0', '');
INSERT INTO `menu` VALUES ('25', '新增角色提交', '1', '5', '$1$2$5$', '/manager/role/add', '4', '', '1', '2015-10-16 01:20:46', '0', '');
INSERT INTO `menu` VALUES ('26', '修改角色', '1', '5', '$1$2$5$', '/manager/role/detail', '5', '', '1', '2015-10-16 01:21:27', '0', '');
INSERT INTO `menu` VALUES ('27', '修改角色提交', '1', '5', '$1$2$5$', '/manager/role/update', '6', '', '1', '2015-10-16 01:22:02', '0', '');
INSERT INTO `menu` VALUES ('28', '删除角色', '1', '5', '$1$2$5$', '/manager/role/del', '7', '', '1', '2015-10-16 01:23:42', '0', '');
INSERT INTO `menu` VALUES ('65', '用户列表', '1', '3', '$1$2$3$', '/manager/user/api/list', '7', '', '1', '2015-10-16 01:11:31', '0', '');
INSERT INTO `menu` VALUES ('66', '菜单树形', '1', '4', '$1$2$', '/manager/menu/api/list', '1', '', '1', '2013-01-23 10:17:34', '0', '');
INSERT INTO `menu` VALUES ('67', '分配角色查看', '1', '3', '$1$2$3$', '/manager/user/role/tree', '6', '', '1', '2017-01-01 21:24:41', '0', '');
INSERT INTO `menu` VALUES ('68', '分配角色提交', '1', '3', '$1$2$3$', '/manager/user/role/save', '7', '', '1', '2017-01-01 21:28:53', '0', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '角色级别',
  `parentId` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色的父节点',
  `parentIdPath` varchar(255) NOT NULL DEFAULT '' COMMENT '父节点路径',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '内勤管理角色名称',
  `desc` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `orderNo` int(11) NOT NULL DEFAULT '100',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `createTime` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updateTime` bigint(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '0', '$', '系统开发者', '系统开发者', '1', '1', '1523003738786', '1523003738786', '0');
INSERT INTO `role` VALUES ('2', '2', '1', '$1$', '超级管理员', '超级管理员', '1', '1', '1523003738786', '1523020563194', '0');
INSERT INTO `role` VALUES ('12', '3', '2', '$1$2$', '一部管理员', '一部管理员', '100', '1', '1523020767594', '1523022296891', '0');
INSERT INTO `role` VALUES ('13', '3', '2', '$1$2$', '二部管理员', '二部管理员', '100', '1', '1523022259424', '1523029615124', '0');
INSERT INTO `role` VALUES ('14', '4', '12', '$1$2$12$', '一部财务员', '一部财务员', '100', '1', '1523022348407', '1523022348407', '1');
INSERT INTO `role` VALUES ('15', '4', '13', '$1$2$13$', '二部助理', '二部助理', '100', '1', '1523022620503', '1523022620503', '1');
INSERT INTO `role` VALUES ('16', '4', '13', '$1$2$13$', '二部财务员', '二部财务员', '100', '1', '1523199132320', '1523199132320', '1');
INSERT INTO `role` VALUES ('17', '4', '13', '$1$2$13$', '二部财务员2', '二部财务员2', '100', '1', '1523199310601', '1523199310601', '1');
INSERT INTO `role` VALUES ('18', '4', '13', '$1$2$13$', '二部助理2', '二部助理2', '100', '1', '1523199437089', '1523199493969', '1');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `roleId` bigint(20) NOT NULL DEFAULT '0' COMMENT '角色id',
  `menuId` bigint(20) NOT NULL DEFAULT '0' COMMENT '权限菜单id',
  PRIMARY KEY (`roleId`,`menuId`),
  UNIQUE KEY `idx_role_menu` (`roleId`,`menuId`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色对应权限表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1');
INSERT INTO `role_menu` VALUES ('1', '2');
INSERT INTO `role_menu` VALUES ('1', '3');
INSERT INTO `role_menu` VALUES ('1', '4');
INSERT INTO `role_menu` VALUES ('1', '5');
INSERT INTO `role_menu` VALUES ('1', '9');
INSERT INTO `role_menu` VALUES ('1', '10');
INSERT INTO `role_menu` VALUES ('1', '11');
INSERT INTO `role_menu` VALUES ('1', '12');
INSERT INTO `role_menu` VALUES ('1', '13');
INSERT INTO `role_menu` VALUES ('1', '16');
INSERT INTO `role_menu` VALUES ('1', '19');
INSERT INTO `role_menu` VALUES ('1', '20');
INSERT INTO `role_menu` VALUES ('1', '21');
INSERT INTO `role_menu` VALUES ('1', '22');
INSERT INTO `role_menu` VALUES ('1', '24');
INSERT INTO `role_menu` VALUES ('1', '25');
INSERT INTO `role_menu` VALUES ('1', '26');
INSERT INTO `role_menu` VALUES ('1', '27');
INSERT INTO `role_menu` VALUES ('1', '28');
INSERT INTO `role_menu` VALUES ('1', '65');
INSERT INTO `role_menu` VALUES ('1', '66');
INSERT INTO `role_menu` VALUES ('1', '67');
INSERT INTO `role_menu` VALUES ('1', '68');
INSERT INTO `role_menu` VALUES ('2', '1');
INSERT INTO `role_menu` VALUES ('2', '2');
INSERT INTO `role_menu` VALUES ('2', '3');
INSERT INTO `role_menu` VALUES ('2', '4');
INSERT INTO `role_menu` VALUES ('2', '5');
INSERT INTO `role_menu` VALUES ('2', '9');
INSERT INTO `role_menu` VALUES ('2', '10');
INSERT INTO `role_menu` VALUES ('2', '11');
INSERT INTO `role_menu` VALUES ('2', '12');
INSERT INTO `role_menu` VALUES ('2', '13');
INSERT INTO `role_menu` VALUES ('2', '16');
INSERT INTO `role_menu` VALUES ('2', '19');
INSERT INTO `role_menu` VALUES ('2', '20');
INSERT INTO `role_menu` VALUES ('2', '21');
INSERT INTO `role_menu` VALUES ('2', '22');
INSERT INTO `role_menu` VALUES ('2', '24');
INSERT INTO `role_menu` VALUES ('2', '25');
INSERT INTO `role_menu` VALUES ('2', '26');
INSERT INTO `role_menu` VALUES ('2', '27');
INSERT INTO `role_menu` VALUES ('2', '28');
INSERT INTO `role_menu` VALUES ('2', '65');
INSERT INTO `role_menu` VALUES ('2', '66');
INSERT INTO `role_menu` VALUES ('2', '67');
INSERT INTO `role_menu` VALUES ('2', '68');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `password` varchar(256) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(32) NOT NULL DEFAULT '' COMMENT '盐',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '公司的个人邮箱，邮件提醒功能',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `createTime` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updateTime` bigint(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'dev', '68e89c8e73e38dc71e139497e764d4f66b78944d4d358702c6b7e6c30210af18', '834ec6', '开发者', '', '18028763997', '1', '1523003738786', '1523003738786', '0');
INSERT INTO `user` VALUES ('2', 'admin', '0c75f68693dfad5b3ef8d6581b21f5130fe312285821ad7f79e405b17dbed1e5', 'b9ecdc', '系统管理员', '', '12345678909', '1', '1523003738786', '1523003738786', '0');
INSERT INTO `user` VALUES ('20', 'honeyleo', '33285E1898CF7F622A551C742B28BB3B83D7C9B57581ACACBF85F308BE344503', 'c07e5c', 'honeyleo', '', '1234233423', '1', '1523003738786', '1523003789139', '0');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `roleId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_role` (`userId`,`roleId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
