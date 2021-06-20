/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50634
 Source Host           : localhost:3306
 Source Schema         : layui_file

 Target Server Type    : MySQL
 Target Server Version : 50634
 File Encoding         : 65001

 Date: 11/06/2021 18:34:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_auth_account
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_account`;
CREATE TABLE `t_auth_account`  (
  `accountID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '账号信息表',
  `userCode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `userPwd` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `userQQ` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ账号',
  `userWechat` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信账号',
  `userWeibo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微博账号',
  `isFrozen` tinyint(4) NULL DEFAULT 0 COMMENT '是否被冻结（1已冻结，0没冻结）',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`accountID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_account
-- ----------------------------
INSERT INTO `t_auth_account` VALUES (1, 'admin1', 'FE85E814FD656A2D490B842C6D33019D', NULL, NULL, NULL, 0, 1);
INSERT INTO `t_auth_account` VALUES (2, 'admin', 'FE85E814FD656A2D490B842C6D33019D', NULL, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for t_auth_action
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_action`;
CREATE TABLE `t_auth_action`  (
  `actionID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '按钮信息表',
  `menuID` bigint(20) NULL DEFAULT NULL COMMENT '菜单编号',
  `actionName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `actionType` bigint(20) NULL DEFAULT NULL COMMENT '按钮类型（类型表）',
  `actionSeat` tinyint(4) NULL DEFAULT NULL COMMENT '按钮位置（1头部按钮，2表格按钮）',
  `callType` tinyint(4) NULL DEFAULT NULL COMMENT '调用方式（1样式，2函数，3Layui）',
  `actionEvent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮路径',
  `actionIcon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮图标',
  `actionSort` int(11) NULL DEFAULT NULL COMMENT '按钮排序',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述内容',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT NULL COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`actionID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_action
-- ----------------------------
INSERT INTO `t_auth_action` VALUES (1, 103, '新增用户', 1, 1, 3, 'lay-event=\"add\"', 'layui-icon-add-1', 1, '', '2019-08-02 16:58:45', 1, 1);
INSERT INTO `t_auth_action` VALUES (2, 103, '批量删除', 4, 1, 3, 'lay-event=\"dels\"', 'layui-icon-delete', 2, '', '2019-08-02 16:59:27', 1, 1);
INSERT INTO `t_auth_action` VALUES (3, 103, '添加', 2, 2, 3, 'lay-event=\"friend\"', 'layui-icon-add-1', 3, '', '2019-08-02 17:01:58', 1, 0);
INSERT INTO `t_auth_action` VALUES (4, 103, '编辑', 3, 2, 3, 'lay-event=\"edit\"', 'layui-icon-edit', 4, '', '2019-08-02 17:02:38', 1, 1);
INSERT INTO `t_auth_action` VALUES (5, 103, '删除', 4, 2, 3, 'lay-event=\"del\"', 'layui-icon-delete', 5, '', '2019-08-02 16:14:27', 1, 1);
INSERT INTO `t_auth_action` VALUES (6, 100, '新增根菜单', 1, 1, 3, 'data-type=\"add\"', 'layui-icon-add-1', 1, '', '2019-08-05 11:11:46', 1, 1);
INSERT INTO `t_auth_action` VALUES (7, 100, '批量删除', 4, 1, 3, 'data-type=\"dels\"', 'layui-icon-delete', 2, '', '2019-08-05 11:12:08', 1, 1);
INSERT INTO `t_auth_action` VALUES (8, 100, '图标', 5, 2, 3, 'lay-event=\"icon\"', 'layui-icon-picture', 3, '', '2019-08-05 11:12:39', 1, 1);
INSERT INTO `t_auth_action` VALUES (9, 100, '按钮', 6, 2, 3, 'lay-event=\"action\"', 'layui-icon-component', 4, '', '2019-08-05 11:13:00', 1, 1);
INSERT INTO `t_auth_action` VALUES (10, 100, '编辑', 3, 2, 3, 'lay-event=\"edit\"', 'layui-icon-edit', 5, '', '2019-08-05 11:13:24', 1, 1);
INSERT INTO `t_auth_action` VALUES (11, 100, '删除', 4, 2, 3, 'lay-event=\"del\"', 'layui-icon-delete', 6, '', '2019-08-05 11:14:00', 1, 1);
INSERT INTO `t_auth_action` VALUES (12, 100, '新增', 1, 2, 3, 'lay-event=\"add\"', 'layui-icon-add-1', 7, '', '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (13, 101, '批量删除', 4, 1, 3, 'data-type=\"dels\"', 'layui-icon-delete', 1, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (14, 101, '查看', 2, 2, 3, 'lay-event=\"detail\"', 'layui-icon-search', 2, NULL, '2019-08-05 11:14:17', 1, 0);
INSERT INTO `t_auth_action` VALUES (15, 101, '新增下属角色', 1, 2, 3, 'lay-event=\"add\"', 'layui-icon-add-1', 3, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (16, 101, '编辑', 3, 2, 3, 'lay-event=\"edit\"', 'layui-icon-edit', 4, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (17, 104, '新增', 1, 1, 3, 'data-type=\"add\"', 'layui-icon-add-1', 1, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (18, 104, '编辑', 3, 2, 3, 'lay-event=\"edit\"', 'layui-icon-edit', 2, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (19, 104, '删除', 4, 2, 3, 'lay-event=\"del\"', 'layui-icon-delete', 3, NULL, '2019-08-05 11:14:17', 1, 1);
INSERT INTO `t_auth_action` VALUES (20, 105, '发送', 1, 1, 3, 'data-type=\"send\"', '', 1, '', '2019-12-25 12:09:51', 1, 1);
INSERT INTO `t_auth_action` VALUES (21, 112, '新增', 1, 1, 3, 'data-type=\"add\"', 'layui-icon-add-1', 1, '', '2020-06-22 14:49:06', 1, 1);
INSERT INTO `t_auth_action` VALUES (22, 112, '批量删除', 4, 1, 3, 'data-type=\"dels\"', 'layui-icon-delete', 2, NULL, '2020-06-22 14:50:15', 1, 1);
INSERT INTO `t_auth_action` VALUES (23, 112, '查看', 3, 2, 3, 'lay-event=\"detail\"', 'layui-icon-search', 2, '', '2020-06-22 14:49:57', 1, 1);
INSERT INTO `t_auth_action` VALUES (24, 112, '删除', 4, 2, 3, 'lay-event=\"del\"', 'layui-icon-delete', 4, '', '2020-06-22 14:50:15', 1, 1);

-- ----------------------------
-- Table structure for t_auth_actiontype
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_actiontype`;
CREATE TABLE `t_auth_actiontype`  (
  `typeID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '按钮类型表(用作前端判断条件)',
  `typeName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `typeSort` int(11) NULL DEFAULT NULL COMMENT '类型排序',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`typeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_actiontype
-- ----------------------------
INSERT INTO `t_auth_actiontype` VALUES (1, '新增', 1, 1);
INSERT INTO `t_auth_actiontype` VALUES (2, '查看', 2, 1);
INSERT INTO `t_auth_actiontype` VALUES (3, '编辑', 3, 1);
INSERT INTO `t_auth_actiontype` VALUES (4, '删除', 4, 1);
INSERT INTO `t_auth_actiontype` VALUES (5, '图标', 5, 1);
INSERT INTO `t_auth_actiontype` VALUES (6, '按钮', 6, 1);

-- ----------------------------
-- Table structure for t_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_menu`;
CREATE TABLE `t_auth_menu`  (
  `menuID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单信息表',
  `menuType` tinyint(4) NULL DEFAULT NULL COMMENT '菜单类型（1iframe模式，2全屏模式，3外部链接，4通讯系统）',
  `menuName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `menuText` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单文本',
  `menuPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `menuIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `menuSort` int(11) NULL DEFAULT NULL COMMENT '菜单排序',
  `parentID` bigint(20) NULL DEFAULT NULL COMMENT '父级编号（0代表根目录）',
  `menuLevel` tinyint(4) NULL DEFAULT NULL COMMENT '菜单等级',
  `isRoot` tinyint(4) NULL DEFAULT 0 COMMENT '是否根目录（1是，0否）',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述内容',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT NULL COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`menuID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_menu
-- ----------------------------
INSERT INTO `t_auth_menu` VALUES (1, 1, '主页', '', 'home/console', '&#xe777;', 0, 0, 1, 0, NULL, '2019-08-07 14:45:40', 1, 1);
INSERT INTO `t_auth_menu` VALUES (2, 1, '权限管理', '', '', '&#xeb68;', 1, 0, 1, 1, NULL, '2019-08-07 14:45:40', 1, 1);
INSERT INTO `t_auth_menu` VALUES (3, 1, '系统配置', '', '', '&#xeb90;', 2, 0, 1, 1, NULL, '2019-08-07 14:45:02', 1, 1);
INSERT INTO `t_auth_menu` VALUES (4, 1, '星星邮件', NULL, NULL, '&#xe71e;', 3, 0, 1, 1, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (5, 1, '文件云盘', '文件管理', '', '&#xe733;', 4, 0, 1, 1, NULL, '2020-03-19 19:47:12', 1, 1);
INSERT INTO `t_auth_menu` VALUES (6, 1, '工作流', '工作流', NULL, '&#xeb67;', 5, 0, 1, 1, NULL, '2020-03-20 19:47:12', 1, 0);
INSERT INTO `t_auth_menu` VALUES (100, 1, '菜单管理', '菜单管理', 'auth/menu/list', NULL, 1, 2, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (101, 1, '角色管理', '角色管理', 'auth/role/list', NULL, 2, 2, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (102, 1, '权限分配', '权限分配', 'auth/power/list', NULL, 2, 2, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (103, 1, '用户管理', '用户管理', 'auth/user/list', NULL, 3, 2, 2, 0, NULL, '2019-08-07 14:45:40', 1, 1);
INSERT INTO `t_auth_menu` VALUES (104, 1, '常量配置', '常量配置理', 'ligent/const/list', NULL, 1, 3, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (105, 1, '发邮件', '发邮件', 'mail/mailer/send', NULL, 1, 4, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (106, 1, '收件箱', '收件箱', 'mail/mailer/inbox', NULL, 2, 4, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (107, 1, '发件箱', '发件箱', 'mail/mailer/outbox', NULL, 3, 4, 2, 0, NULL, '2019-08-07 14:45:40', 1, 0);
INSERT INTO `t_auth_menu` VALUES (108, 1, '共享文件云', '共享文件云', 'file/docu/view', NULL, 1, 5, 2, 0, NULL, '2020-03-19 20:51:36', 1, 0);
INSERT INTO `t_auth_menu` VALUES (109, 1, '文件云盘', '文件云盘', 'file/docu/cloud', '', 2, 5, 2, 0, NULL, '2020-03-26 16:48:49', 1, 1);
INSERT INTO `t_auth_menu` VALUES (110, 4, 'IM通讯系统', '通讯系统', 'im', NULL, 1, 6, 2, 0, NULL, '2020-03-20 20:51:36', 1, 0);
INSERT INTO `t_auth_menu` VALUES (111, 1, '操作日志', '操作日志', 'base/log/list', NULL, 1, 3, 2, 0, NULL, '2020-06-15 09:49:49', 1, 1);
INSERT INTO `t_auth_menu` VALUES (112, 1, '工作流管理', '工作流管理', 'flow/order/list', NULL, 1, 6, 2, 0, NULL, '2020-06-22 14:48:00', 1, 0);

-- ----------------------------
-- Table structure for t_auth_role
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_role`;
CREATE TABLE `t_auth_role`  (
  `roleID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色信息表',
  `roleName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `roleAlias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色别名',
  `parentID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级编号',
  `roleRank` int(11) NULL DEFAULT NULL COMMENT '角色等级',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述内容',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT NULL COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`roleID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_role
-- ----------------------------
INSERT INTO `t_auth_role` VALUES (1, '超级管理员', '管理员', '0', 1, NULL, '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (2, '总公司管理员', '管理员', '1', 2, '总公司系统数据管理', '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (3, '子公司管理员', '管理员', '1', 50, '子公司系统数据管理', '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (4, '总经理', '总经理', '0', 100, NULL, '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (5, '部门经理', '部门经理', '4', 200, '', '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (6, '客服', '客服', '4', 500, NULL, '2019-08-06 10:26:05', 1, 1);
INSERT INTO `t_auth_role` VALUES (7, '普通员工', '普通员工', '4', 500, '', '2019-08-07 14:46:37', 1, 1);

-- ----------------------------
-- Table structure for t_auth_roleaction
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_roleaction`;
CREATE TABLE `t_auth_roleaction`  (
  `raID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色按钮映射表',
  `roleID` bigint(20) NULL DEFAULT NULL COMMENT '角色编号',
  `actionID` bigint(20) NULL DEFAULT NULL COMMENT '按钮编号',
  PRIMARY KEY (`raID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_roleaction
-- ----------------------------
INSERT INTO `t_auth_roleaction` VALUES (1, 1, 1);
INSERT INTO `t_auth_roleaction` VALUES (2, 1, 2);
INSERT INTO `t_auth_roleaction` VALUES (3, 1, 3);
INSERT INTO `t_auth_roleaction` VALUES (4, 1, 4);
INSERT INTO `t_auth_roleaction` VALUES (5, 1, 5);
INSERT INTO `t_auth_roleaction` VALUES (6, 1, 6);
INSERT INTO `t_auth_roleaction` VALUES (7, 1, 7);
INSERT INTO `t_auth_roleaction` VALUES (8, 1, 8);
INSERT INTO `t_auth_roleaction` VALUES (9, 1, 9);
INSERT INTO `t_auth_roleaction` VALUES (10, 1, 10);
INSERT INTO `t_auth_roleaction` VALUES (11, 1, 11);
INSERT INTO `t_auth_roleaction` VALUES (12, 1, 12);
INSERT INTO `t_auth_roleaction` VALUES (13, 1, 13);
INSERT INTO `t_auth_roleaction` VALUES (14, 1, 14);
INSERT INTO `t_auth_roleaction` VALUES (15, 1, 15);
INSERT INTO `t_auth_roleaction` VALUES (16, 1, 16);
INSERT INTO `t_auth_roleaction` VALUES (25, 1, 17);
INSERT INTO `t_auth_roleaction` VALUES (26, 1, 18);
INSERT INTO `t_auth_roleaction` VALUES (27, 1, 19);
INSERT INTO `t_auth_roleaction` VALUES (28, 1, 20);
INSERT INTO `t_auth_roleaction` VALUES (29, 2, 1);
INSERT INTO `t_auth_roleaction` VALUES (30, 2, 2);
INSERT INTO `t_auth_roleaction` VALUES (31, 2, 3);
INSERT INTO `t_auth_roleaction` VALUES (32, 2, 4);
INSERT INTO `t_auth_roleaction` VALUES (33, 2, 5);
INSERT INTO `t_auth_roleaction` VALUES (34, 3, 5);
INSERT INTO `t_auth_roleaction` VALUES (35, 3, 4);
INSERT INTO `t_auth_roleaction` VALUES (36, 3, 3);
INSERT INTO `t_auth_roleaction` VALUES (37, 3, 2);
INSERT INTO `t_auth_roleaction` VALUES (38, 3, 1);
INSERT INTO `t_auth_roleaction` VALUES (39, 4, 1);
INSERT INTO `t_auth_roleaction` VALUES (40, 4, 2);
INSERT INTO `t_auth_roleaction` VALUES (41, 4, 3);
INSERT INTO `t_auth_roleaction` VALUES (42, 4, 4);
INSERT INTO `t_auth_roleaction` VALUES (43, 4, 5);
INSERT INTO `t_auth_roleaction` VALUES (44, 5, 5);
INSERT INTO `t_auth_roleaction` VALUES (45, 5, 4);
INSERT INTO `t_auth_roleaction` VALUES (46, 5, 3);
INSERT INTO `t_auth_roleaction` VALUES (47, 5, 2);
INSERT INTO `t_auth_roleaction` VALUES (48, 5, 1);
INSERT INTO `t_auth_roleaction` VALUES (49, 2, 20);
INSERT INTO `t_auth_roleaction` VALUES (50, 3, 20);
INSERT INTO `t_auth_roleaction` VALUES (51, 4, 20);
INSERT INTO `t_auth_roleaction` VALUES (52, 5, 20);
INSERT INTO `t_auth_roleaction` VALUES (53, 6, 20);
INSERT INTO `t_auth_roleaction` VALUES (54, 7, 20);
INSERT INTO `t_auth_roleaction` VALUES (55, 1, 21);
INSERT INTO `t_auth_roleaction` VALUES (56, 1, 22);
INSERT INTO `t_auth_roleaction` VALUES (57, 1, 23);
INSERT INTO `t_auth_roleaction` VALUES (58, 1, 24);

-- ----------------------------
-- Table structure for t_auth_rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_rolemenu`;
CREATE TABLE `t_auth_rolemenu`  (
  `rmID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色菜单映射表',
  `roleID` bigint(20) NULL DEFAULT NULL COMMENT '角色编号',
  `menuID` bigint(20) NULL DEFAULT NULL COMMENT '菜单编号',
  PRIMARY KEY (`rmID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_rolemenu
-- ----------------------------
INSERT INTO `t_auth_rolemenu` VALUES (2, 1, 2);
INSERT INTO `t_auth_rolemenu` VALUES (3, 1, 3);
INSERT INTO `t_auth_rolemenu` VALUES (4, 1, 4);
INSERT INTO `t_auth_rolemenu` VALUES (6, 1, 102);
INSERT INTO `t_auth_rolemenu` VALUES (7, 1, 103);
INSERT INTO `t_auth_rolemenu` VALUES (8, 1, 104);
INSERT INTO `t_auth_rolemenu` VALUES (10, 1, 105);
INSERT INTO `t_auth_rolemenu` VALUES (11, 1, 106);
INSERT INTO `t_auth_rolemenu` VALUES (12, 1, 107);
INSERT INTO `t_auth_rolemenu` VALUES (13, 1, 5);
INSERT INTO `t_auth_rolemenu` VALUES (14, 1, 108);
INSERT INTO `t_auth_rolemenu` VALUES (20, 3, 1);
INSERT INTO `t_auth_rolemenu` VALUES (21, 4, 1);
INSERT INTO `t_auth_rolemenu` VALUES (22, 5, 1);
INSERT INTO `t_auth_rolemenu` VALUES (23, 6, 1);
INSERT INTO `t_auth_rolemenu` VALUES (24, 7, 1);
INSERT INTO `t_auth_rolemenu` VALUES (25, 2, 2);
INSERT INTO `t_auth_rolemenu` VALUES (26, 2, 103);
INSERT INTO `t_auth_rolemenu` VALUES (27, 3, 103);
INSERT INTO `t_auth_rolemenu` VALUES (28, 3, 2);
INSERT INTO `t_auth_rolemenu` VALUES (29, 4, 2);
INSERT INTO `t_auth_rolemenu` VALUES (30, 4, 103);
INSERT INTO `t_auth_rolemenu` VALUES (31, 5, 103);
INSERT INTO `t_auth_rolemenu` VALUES (32, 5, 2);
INSERT INTO `t_auth_rolemenu` VALUES (33, 2, 5);
INSERT INTO `t_auth_rolemenu` VALUES (34, 2, 108);
INSERT INTO `t_auth_rolemenu` VALUES (35, 3, 5);
INSERT INTO `t_auth_rolemenu` VALUES (36, 3, 108);
INSERT INTO `t_auth_rolemenu` VALUES (37, 4, 5);
INSERT INTO `t_auth_rolemenu` VALUES (38, 4, 108);
INSERT INTO `t_auth_rolemenu` VALUES (39, 5, 5);
INSERT INTO `t_auth_rolemenu` VALUES (40, 6, 5);
INSERT INTO `t_auth_rolemenu` VALUES (41, 6, 108);
INSERT INTO `t_auth_rolemenu` VALUES (42, 7, 5);
INSERT INTO `t_auth_rolemenu` VALUES (43, 7, 108);
INSERT INTO `t_auth_rolemenu` VALUES (44, 5, 108);
INSERT INTO `t_auth_rolemenu` VALUES (45, 2, 4);
INSERT INTO `t_auth_rolemenu` VALUES (46, 2, 105);
INSERT INTO `t_auth_rolemenu` VALUES (47, 2, 106);
INSERT INTO `t_auth_rolemenu` VALUES (48, 2, 107);
INSERT INTO `t_auth_rolemenu` VALUES (49, 3, 107);
INSERT INTO `t_auth_rolemenu` VALUES (50, 3, 106);
INSERT INTO `t_auth_rolemenu` VALUES (51, 3, 105);
INSERT INTO `t_auth_rolemenu` VALUES (52, 3, 4);
INSERT INTO `t_auth_rolemenu` VALUES (53, 4, 4);
INSERT INTO `t_auth_rolemenu` VALUES (54, 4, 105);
INSERT INTO `t_auth_rolemenu` VALUES (55, 4, 106);
INSERT INTO `t_auth_rolemenu` VALUES (56, 4, 107);
INSERT INTO `t_auth_rolemenu` VALUES (57, 5, 107);
INSERT INTO `t_auth_rolemenu` VALUES (58, 5, 106);
INSERT INTO `t_auth_rolemenu` VALUES (59, 5, 105);
INSERT INTO `t_auth_rolemenu` VALUES (60, 5, 4);
INSERT INTO `t_auth_rolemenu` VALUES (61, 6, 4);
INSERT INTO `t_auth_rolemenu` VALUES (62, 6, 105);
INSERT INTO `t_auth_rolemenu` VALUES (63, 6, 106);
INSERT INTO `t_auth_rolemenu` VALUES (64, 6, 107);
INSERT INTO `t_auth_rolemenu` VALUES (65, 7, 107);
INSERT INTO `t_auth_rolemenu` VALUES (66, 7, 106);
INSERT INTO `t_auth_rolemenu` VALUES (67, 7, 105);
INSERT INTO `t_auth_rolemenu` VALUES (68, 7, 4);
INSERT INTO `t_auth_rolemenu` VALUES (69, 1, 109);
INSERT INTO `t_auth_rolemenu` VALUES (70, 2, 109);
INSERT INTO `t_auth_rolemenu` VALUES (71, 3, 109);
INSERT INTO `t_auth_rolemenu` VALUES (72, 4, 109);
INSERT INTO `t_auth_rolemenu` VALUES (73, 5, 109);
INSERT INTO `t_auth_rolemenu` VALUES (74, 6, 109);
INSERT INTO `t_auth_rolemenu` VALUES (75, 7, 109);
INSERT INTO `t_auth_rolemenu` VALUES (76, 1, 111);
INSERT INTO `t_auth_rolemenu` VALUES (77, 1, 6);
INSERT INTO `t_auth_rolemenu` VALUES (78, 2, 6);
INSERT INTO `t_auth_rolemenu` VALUES (79, 3, 6);
INSERT INTO `t_auth_rolemenu` VALUES (80, 1, 112);
INSERT INTO `t_auth_rolemenu` VALUES (82, 1, 1);
INSERT INTO `t_auth_rolemenu` VALUES (83, 2, 1);
INSERT INTO `t_auth_rolemenu` VALUES (84, 1, 100);
INSERT INTO `t_auth_rolemenu` VALUES (85, 1, 101);
INSERT INTO `t_auth_rolemenu` VALUES (86, 6, 2);
INSERT INTO `t_auth_rolemenu` VALUES (87, 7, 2);
INSERT INTO `t_auth_rolemenu` VALUES (88, 6, 103);
INSERT INTO `t_auth_rolemenu` VALUES (89, 7, 103);

-- ----------------------------
-- Table structure for t_auth_roleuser
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_roleuser`;
CREATE TABLE `t_auth_roleuser`  (
  `ruID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色用户映射表',
  `roleID` bigint(20) NULL DEFAULT NULL COMMENT '角色编号',
  `userID` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`ruID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_roleuser
-- ----------------------------
INSERT INTO `t_auth_roleuser` VALUES (1, 1, 1, 1);
INSERT INTO `t_auth_roleuser` VALUES (2, 1, 2, 1);
INSERT INTO `t_auth_roleuser` VALUES (3, 1, 3, 1);
INSERT INTO `t_auth_roleuser` VALUES (4, 6, 4, 1);
INSERT INTO `t_auth_roleuser` VALUES (6, 6, 6, 1);
INSERT INTO `t_auth_roleuser` VALUES (7, 6, 7, 1);
INSERT INTO `t_auth_roleuser` VALUES (8, 6, 8, 1);
INSERT INTO `t_auth_roleuser` VALUES (9, 6, 9, 1);
INSERT INTO `t_auth_roleuser` VALUES (10, 6, 10, 1);
INSERT INTO `t_auth_roleuser` VALUES (12, 6, 12, 1);
INSERT INTO `t_auth_roleuser` VALUES (13, 6, 13, 1);
INSERT INTO `t_auth_roleuser` VALUES (14, 6, 14, 1);
INSERT INTO `t_auth_roleuser` VALUES (15, 6, 15, 1);
INSERT INTO `t_auth_roleuser` VALUES (16, 6, 16, 1);
INSERT INTO `t_auth_roleuser` VALUES (17, 6, 17, 1);
INSERT INTO `t_auth_roleuser` VALUES (18, 6, 18, 1);
INSERT INTO `t_auth_roleuser` VALUES (19, 6, 19, 1);
INSERT INTO `t_auth_roleuser` VALUES (20, 6, 20, 1);
INSERT INTO `t_auth_roleuser` VALUES (21, 6, 21, 1);
INSERT INTO `t_auth_roleuser` VALUES (22, 6, 22, 1);
INSERT INTO `t_auth_roleuser` VALUES (23, 6, 23, 1);
INSERT INTO `t_auth_roleuser` VALUES (24, 6, 24, 1);
INSERT INTO `t_auth_roleuser` VALUES (25, 6, 25, 1);
INSERT INTO `t_auth_roleuser` VALUES (26, 6, 26, 1);
INSERT INTO `t_auth_roleuser` VALUES (27, 6, 27, 1);
INSERT INTO `t_auth_roleuser` VALUES (28, 6, 28, 1);
INSERT INTO `t_auth_roleuser` VALUES (29, 6, 29, 1);
INSERT INTO `t_auth_roleuser` VALUES (30, 6, 30, 1);
INSERT INTO `t_auth_roleuser` VALUES (31, 6, 31, 1);
INSERT INTO `t_auth_roleuser` VALUES (32, 6, 32, 1);
INSERT INTO `t_auth_roleuser` VALUES (33, 6, 33, 1);
INSERT INTO `t_auth_roleuser` VALUES (34, 6, 34, 1);
INSERT INTO `t_auth_roleuser` VALUES (35, 6, 35, 1);
INSERT INTO `t_auth_roleuser` VALUES (36, 6, 36, 1);
INSERT INTO `t_auth_roleuser` VALUES (37, 6, 37, 1);
INSERT INTO `t_auth_roleuser` VALUES (38, 6, 38, 1);
INSERT INTO `t_auth_roleuser` VALUES (39, 6, 39, 1);
INSERT INTO `t_auth_roleuser` VALUES (40, 6, 40, 1);
INSERT INTO `t_auth_roleuser` VALUES (41, 6, 41, 1);
INSERT INTO `t_auth_roleuser` VALUES (42, 6, 42, 1);
INSERT INTO `t_auth_roleuser` VALUES (43, 6, 43, 1);
INSERT INTO `t_auth_roleuser` VALUES (44, 6, 44, 1);
INSERT INTO `t_auth_roleuser` VALUES (45, 6, 45, 1);
INSERT INTO `t_auth_roleuser` VALUES (46, 6, 46, 1);
INSERT INTO `t_auth_roleuser` VALUES (47, 6, 47, 1);
INSERT INTO `t_auth_roleuser` VALUES (48, 6, 48, 1);
INSERT INTO `t_auth_roleuser` VALUES (49, 6, 49, 1);
INSERT INTO `t_auth_roleuser` VALUES (50, 6, 50, 1);
INSERT INTO `t_auth_roleuser` VALUES (51, 6, 51, 1);
INSERT INTO `t_auth_roleuser` VALUES (52, 6, 52, 1);
INSERT INTO `t_auth_roleuser` VALUES (53, 6, 53, 1);
INSERT INTO `t_auth_roleuser` VALUES (54, 6, 54, 1);
INSERT INTO `t_auth_roleuser` VALUES (55, 6, 55, 1);
INSERT INTO `t_auth_roleuser` VALUES (56, 6, 56, 1);
INSERT INTO `t_auth_roleuser` VALUES (57, 6, 57, 1);
INSERT INTO `t_auth_roleuser` VALUES (58, 6, 58, 1);
INSERT INTO `t_auth_roleuser` VALUES (59, 6, 59, 1);
INSERT INTO `t_auth_roleuser` VALUES (60, 6, 60, 1);
INSERT INTO `t_auth_roleuser` VALUES (61, 6, 61, 1);
INSERT INTO `t_auth_roleuser` VALUES (62, 6, 62, 1);
INSERT INTO `t_auth_roleuser` VALUES (63, 6, 63, 1);
INSERT INTO `t_auth_roleuser` VALUES (64, 6, 64, 1);
INSERT INTO `t_auth_roleuser` VALUES (65, 6, 65, 1);
INSERT INTO `t_auth_roleuser` VALUES (66, 6, 66, 1);
INSERT INTO `t_auth_roleuser` VALUES (67, 6, 67, 1);
INSERT INTO `t_auth_roleuser` VALUES (68, 6, 68, 1);
INSERT INTO `t_auth_roleuser` VALUES (69, 6, 69, 1);
INSERT INTO `t_auth_roleuser` VALUES (70, 6, 70, 1);
INSERT INTO `t_auth_roleuser` VALUES (71, 6, 71, 1);
INSERT INTO `t_auth_roleuser` VALUES (72, 6, 72, 1);
INSERT INTO `t_auth_roleuser` VALUES (73, 6, 73, 1);
INSERT INTO `t_auth_roleuser` VALUES (74, 6, 74, 1);
INSERT INTO `t_auth_roleuser` VALUES (75, 6, 75, 1);
INSERT INTO `t_auth_roleuser` VALUES (76, 6, 132, 1);
INSERT INTO `t_auth_roleuser` VALUES (128, 6, 5, 1);
INSERT INTO `t_auth_roleuser` VALUES (133, 5, 134, 0);
INSERT INTO `t_auth_roleuser` VALUES (141, 5, 135, 0);
INSERT INTO `t_auth_roleuser` VALUES (153, 1, 136, 1);
INSERT INTO `t_auth_roleuser` VALUES (154, 2, 136, 1);
INSERT INTO `t_auth_roleuser` VALUES (157, 2, 11, 1);
INSERT INTO `t_auth_roleuser` VALUES (159, 7, 137, 1);
INSERT INTO `t_auth_roleuser` VALUES (161, 7, 138, 1);
INSERT INTO `t_auth_roleuser` VALUES (163, 5, 140, 0);
INSERT INTO `t_auth_roleuser` VALUES (164, 5, 145, 0);
INSERT INTO `t_auth_roleuser` VALUES (165, 7, 139, 0);
INSERT INTO `t_auth_roleuser` VALUES (166, 6, 133, 0);

-- ----------------------------
-- Table structure for t_auth_user
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_user`;
CREATE TABLE `t_auth_user`  (
  `userID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户信息表',
  `accountID` bigint(20) NULL DEFAULT NULL COMMENT '账户编号',
  `userName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sign` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户签名',
  `degree` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `sexName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人说明',
  `secretErrorCount` tinyint(4) NULL DEFAULT 0 COMMENT '当前输入密保错误次数',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT 0 COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`userID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 146 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_auth_user
-- ----------------------------
INSERT INTO `t_auth_user` VALUES (1, 1, '管理员', '/layui_file/upload/user/10011037.jpg', '', '博士生', '男', '1122', '2222', 1, '2018-06-06', 0, 1);
INSERT INTO `t_auth_user` VALUES (2, 2, '文件管理员', '/layui_file/upload/user/10011037.jpg', '', NULL, '男', NULL, NULL, 0, '2018-06-06', 0, 1);

-- ----------------------------
-- Table structure for t_base_log
-- ----------------------------
DROP TABLE IF EXISTS `t_base_log`;
CREATE TABLE `t_base_log`  (
  `logID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '操作日志表',
  `userID` bigint(20) NULL DEFAULT NULL COMMENT '用户编号',
  `source` tinyint(4) NULL DEFAULT NULL COMMENT '操作终端（1后台，2安卓）',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `controller` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控制器',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作说明',
  `dataJson` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数Json数据',
  `exMsg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报错信息',
  `logState` tinyint(4) NULL DEFAULT NULL COMMENT '操作状态（1成功，2抛异常）',
  `logTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`logID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3418 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_base_log
-- ----------------------------
INSERT INTO `t_base_log` VALUES (2234, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '{}', NULL, 1, '2021-04-15 17:39:00');
INSERT INTO `t_base_log` VALUES (2235, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"2\",\"userId\":\"142\",\"userName\":\"用户user111\"}', NULL, 1, '2021-04-15 17:39:19');
INSERT INTO `t_base_log` VALUES (2236, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '{}', NULL, 1, '2021-04-15 17:40:54');
INSERT INTO `t_base_log` VALUES (2237, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 17:42:41');
INSERT INTO `t_base_log` VALUES (2238, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"2\",\"userId\":\"142\",\"userName\":\"用户user11\"}', NULL, 1, '2021-04-15 17:42:56');
INSERT INTO `t_base_log` VALUES (2239, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 17:51:44');
INSERT INTO `t_base_log` VALUES (2240, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618480306899\"}', NULL, 1, '2021-04-15 17:51:45');
INSERT INTO `t_base_log` VALUES (2241, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 17:51:49');
INSERT INTO `t_base_log` VALUES (2242, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 17:51:52');
INSERT INTO `t_base_log` VALUES (2243, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '', NULL, 1, '2021-04-15 17:51:56');
INSERT INTO `t_base_log` VALUES (2244, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"1\"}', NULL, 1, '2021-04-15 17:51:57');
INSERT INTO `t_base_log` VALUES (2245, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.base.BaseLogController', 'list', '查看操作日志', '', NULL, 1, '2021-04-15 17:52:00');
INSERT INTO `t_base_log` VALUES (2246, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 17:52:07');
INSERT INTO `t_base_log` VALUES (2247, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"1\"}', NULL, 1, '2021-04-15 17:52:08');
INSERT INTO `t_base_log` VALUES (2248, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '', NULL, 1, '2021-04-15 17:52:11');
INSERT INTO `t_base_log` VALUES (2249, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"1\"}', NULL, 1, '2021-04-15 17:52:12');
INSERT INTO `t_base_log` VALUES (2250, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.base.BaseLogController', 'list', '查看操作日志', '', NULL, 1, '2021-04-15 17:52:14');
INSERT INTO `t_base_log` VALUES (2251, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 17:52:18');
INSERT INTO `t_base_log` VALUES (2252, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.base.BaseLogController', 'list', '查看操作日志', '', NULL, 1, '2021-04-15 17:52:19');
INSERT INTO `t_base_log` VALUES (2253, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"1\"}', NULL, 1, '2021-04-15 17:52:30');
INSERT INTO `t_base_log` VALUES (2254, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.base.BaseLogController', 'list', '查看操作日志', '', NULL, 1, '2021-04-15 17:52:32');
INSERT INTO `t_base_log` VALUES (2255, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"bs6z\"}', NULL, 1, '2021-04-15 18:11:47');
INSERT INTO `t_base_log` VALUES (2256, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:11:48');
INSERT INTO `t_base_log` VALUES (2257, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618481512857\"}', NULL, 1, '2021-04-15 18:11:53');
INSERT INTO `t_base_log` VALUES (2258, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:11:57');
INSERT INTO `t_base_log` VALUES (2259, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:12:10');
INSERT INTO `t_base_log` VALUES (2260, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 18:12:12');
INSERT INTO `t_base_log` VALUES (2261, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 18:12:17');
INSERT INTO `t_base_log` VALUES (2262, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 18:12:23');
INSERT INTO `t_base_log` VALUES (2263, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 18:12:26');
INSERT INTO `t_base_log` VALUES (2264, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 18:12:34');
INSERT INTO `t_base_log` VALUES (2265, NULL, 1, '61.151.178.177', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 18:13:25');
INSERT INTO `t_base_log` VALUES (2266, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"yz4x\"}', NULL, 1, '2021-04-15 18:21:42');
INSERT INTO `t_base_log` VALUES (2267, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:21:43');
INSERT INTO `t_base_log` VALUES (2268, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482106009\"}', NULL, 1, '2021-04-15 18:21:43');
INSERT INTO `t_base_log` VALUES (2269, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"test\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"7rrv\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Incorrect number of arguments for PROCEDURE layui_chat1.p_auth_account_register; expected 3, got 2', 2, '2021-04-15 18:22:07');
INSERT INTO `t_base_log` VALUES (2270, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"test\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"mada\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Incorrect number of arguments for PROCEDURE layui_chat1.p_auth_account_register; expected 3, got 2', 2, '2021-04-15 18:22:50');
INSERT INTO `t_base_log` VALUES (2271, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"12\"}', NULL, 1, '2021-04-15 18:23:11');
INSERT INTO `t_base_log` VALUES (2272, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"e8h7\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Incorrect number of arguments for PROCEDURE layui_chat1.p_auth_account_register; expected 3, got 2', 2, '2021-04-15 18:23:17');
INSERT INTO `t_base_log` VALUES (2273, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"g2wk\"}', NULL, 1, '2021-04-15 18:23:43');
INSERT INTO `t_base_log` VALUES (2274, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:23:44');
INSERT INTO `t_base_log` VALUES (2275, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482224856\"}', NULL, 1, '2021-04-15 18:23:45');
INSERT INTO `t_base_log` VALUES (2276, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'findByRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:23:48');
INSERT INTO `t_base_log` VALUES (2277, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'findByRead', '获取未读消息', '{\"toId\":\"18\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:23:54');
INSERT INTO `t_base_log` VALUES (2278, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 18:24:01');
INSERT INTO `t_base_log` VALUES (2279, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 18:24:20');
INSERT INTO `t_base_log` VALUES (2280, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:24:29');
INSERT INTO `t_base_log` VALUES (2281, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 18:24:36');
INSERT INTO `t_base_log` VALUES (2282, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 18:24:43');
INSERT INTO `t_base_log` VALUES (2283, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 18:24:44');
INSERT INTO `t_base_log` VALUES (2284, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'findByRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:24:54');
INSERT INTO `t_base_log` VALUES (2285, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"e8h7\"}', NULL, 1, '2021-04-15 18:25:25');
INSERT INTO `t_base_log` VALUES (2286, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"nfqu\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Incorrect number of arguments for PROCEDURE layui_chat1.p_auth_account_register; expected 3, got 2', 2, '2021-04-15 18:25:29');
INSERT INTO `t_base_log` VALUES (2287, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"nfqu\"}', NULL, 1, '2021-04-15 18:25:59');
INSERT INTO `t_base_log` VALUES (2288, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"ka2y\"}', NULL, 1, '2021-04-15 18:26:03');
INSERT INTO `t_base_log` VALUES (2289, NULL, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"admin1\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"83ta\"}', NULL, 1, '2021-04-15 18:26:18');
INSERT INTO `t_base_log` VALUES (2290, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin1\",\"password\":\"123456\",\"vercode\":\"djge\"}', NULL, 1, '2021-04-15 18:26:32');
INSERT INTO `t_base_log` VALUES (2291, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:26:33');
INSERT INTO `t_base_log` VALUES (2292, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482395720\"}', NULL, 1, '2021-04-15 18:26:33');
INSERT INTO `t_base_log` VALUES (2293, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:26:35');
INSERT INTO `t_base_log` VALUES (2294, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"test\",\"password\":\"xin123\",\"repass\":\"xin123\",\"vercode\":\"btap\"}', NULL, 1, '2021-04-15 18:27:13');
INSERT INTO `t_base_log` VALUES (2295, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123\",\"vercode\":\"npis\"}', NULL, 1, '2021-04-15 18:27:27');
INSERT INTO `t_base_log` VALUES (2296, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:27:28');
INSERT INTO `t_base_log` VALUES (2297, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482449004\"}', NULL, 1, '2021-04-15 18:27:29');
INSERT INTO `t_base_log` VALUES (2298, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:27:32');
INSERT INTO `t_base_log` VALUES (2299, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '', NULL, 1, '2021-04-15 18:28:00');
INSERT INTO `t_base_log` VALUES (2300, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"145\"}', NULL, 1, '2021-04-15 18:28:01');
INSERT INTO `t_base_log` VALUES (2301, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 18:28:13');
INSERT INTO `t_base_log` VALUES (2302, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'findByRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:28:19');
INSERT INTO `t_base_log` VALUES (2303, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"1\",\"type\":\"group\"}', NULL, 1, '2021-04-15 18:28:24');
INSERT INTO `t_base_log` VALUES (2304, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"1\",\"type\":\"group\"}', NULL, 1, '2021-04-15 18:28:27');
INSERT INTO `t_base_log` VALUES (2305, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 18:28:37');
INSERT INTO `t_base_log` VALUES (2306, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findBySearch', '添加好友', '{\"roleId\":\"1\",\"searchKey\":\"\"}', NULL, 1, '2021-04-15 18:28:40');
INSERT INTO `t_base_log` VALUES (2307, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"d35c\"}', NULL, 1, '2021-04-15 18:29:32');
INSERT INTO `t_base_log` VALUES (2308, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:29:33');
INSERT INTO `t_base_log` VALUES (2309, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482573778\"}', NULL, 1, '2021-04-15 18:29:35');
INSERT INTO `t_base_log` VALUES (2310, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 18:29:39');
INSERT INTO `t_base_log` VALUES (2311, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 18:29:47');
INSERT INTO `t_base_log` VALUES (2312, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:30:04');
INSERT INTO `t_base_log` VALUES (2313, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 18:30:11');
INSERT INTO `t_base_log` VALUES (2314, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:30:14');
INSERT INTO `t_base_log` VALUES (2315, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:30:20');
INSERT INTO `t_base_log` VALUES (2316, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:30:29');
INSERT INTO `t_base_log` VALUES (2317, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"145\"}', NULL, 1, '2021-04-15 18:30:35');
INSERT INTO `t_base_log` VALUES (2318, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"145\"}', NULL, 1, '2021-04-15 18:30:36');
INSERT INTO `t_base_log` VALUES (2319, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '', NULL, 1, '2021-04-15 18:30:39');
INSERT INTO `t_base_log` VALUES (2320, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"145\"}', NULL, 1, '2021-04-15 18:30:40');
INSERT INTO `t_base_log` VALUES (2321, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '{\"userId\":\"145\"}', NULL, 1, '2021-04-15 18:30:43');
INSERT INTO `t_base_log` VALUES (2322, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"123456\",\"vercode\":\"ukvq\"}', NULL, 1, '2021-04-15 18:30:55');
INSERT INTO `t_base_log` VALUES (2323, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123\",\"remember\":\"on\",\"vercode\":\"s8gt\"}', NULL, 1, '2021-04-15 18:31:05');
INSERT INTO `t_base_log` VALUES (2324, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:31:06');
INSERT INTO `t_base_log` VALUES (2325, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482666812\"}', NULL, 1, '2021-04-15 18:31:07');
INSERT INTO `t_base_log` VALUES (2326, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 18:31:20');
INSERT INTO `t_base_log` VALUES (2327, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 18:31:22');
INSERT INTO `t_base_log` VALUES (2328, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findBySearch', '添加好友', '{\"roleId\":\"2\",\"searchKey\":\"\"}', NULL, 1, '2021-04-15 18:31:26');
INSERT INTO `t_base_log` VALUES (2329, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:31:42');
INSERT INTO `t_base_log` VALUES (2330, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:32:33');
INSERT INTO `t_base_log` VALUES (2331, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482754236\"}', NULL, 1, '2021-04-15 18:32:34');
INSERT INTO `t_base_log` VALUES (2332, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:32:37');
INSERT INTO `t_base_log` VALUES (2333, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"2\",\"type\":\"friend\"}', NULL, 1, '2021-04-15 18:32:43');
INSERT INTO `t_base_log` VALUES (2334, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 18:32:46');
INSERT INTO `t_base_log` VALUES (2335, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatGroupController', 'uploadAvatar', '创建群聊/修改图标', '', NULL, 1, '2021-04-15 18:33:40');
INSERT INTO `t_base_log` VALUES (2336, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"55\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:33:45');
INSERT INTO `t_base_log` VALUES (2337, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByGroup', '查看群成员', '{\"_\":\"1618482754237\",\"id\":\"55\"}', NULL, 1, '2021-04-15 18:33:47');
INSERT INTO `t_base_log` VALUES (2338, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:33:48');
INSERT INTO `t_base_log` VALUES (2339, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'info', '查看好友资料', '{\"friendId\":\"2\",\"gruopId\":\"54\"}', NULL, 1, '2021-04-15 18:33:53');
INSERT INTO `t_base_log` VALUES (2340, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:34:19');
INSERT INTO `t_base_log` VALUES (2341, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:34:33');
INSERT INTO `t_base_log` VALUES (2342, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"3\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:34:50');
INSERT INTO `t_base_log` VALUES (2343, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"2guq\"}', NULL, 1, '2021-04-15 18:35:09');
INSERT INTO `t_base_log` VALUES (2344, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 18:35:10');
INSERT INTO `t_base_log` VALUES (2345, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618482910907\"}', NULL, 1, '2021-04-15 18:35:11');
INSERT INTO `t_base_log` VALUES (2346, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'info', '查看好友资料', '{\"friendId\":\"145\",\"gruopId\":\"3\"}', NULL, 1, '2021-04-15 18:35:12');
INSERT INTO `t_base_log` VALUES (2347, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"1\",\"type\":\"friend\"}', NULL, 1, '2021-04-15 18:35:16');
INSERT INTO `t_base_log` VALUES (2348, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 18:35:33');
INSERT INTO `t_base_log` VALUES (2349, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 18:35:50');
INSERT INTO `t_base_log` VALUES (2350, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 18:35:51');
INSERT INTO `t_base_log` VALUES (2351, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 18:35:52');
INSERT INTO `t_base_log` VALUES (2352, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 18:36:05');
INSERT INTO `t_base_log` VALUES (2353, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 18:36:06');
INSERT INTO `t_base_log` VALUES (2354, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:36:09');
INSERT INTO `t_base_log` VALUES (2355, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatGroupController', 'avatar', '修改修改群图标页面', '{\"groupId\":\"18\"}', NULL, 1, '2021-04-15 18:36:17');
INSERT INTO `t_base_log` VALUES (2356, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"2\"}', NULL, 1, '2021-04-15 18:36:25');
INSERT INTO `t_base_log` VALUES (2357, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"1\",\"type\":\"group\"}', NULL, 1, '2021-04-15 18:36:27');
INSERT INTO `t_base_log` VALUES (2358, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"3\",\"type\":\"1\"}', NULL, 1, '2021-04-15 18:36:41');
INSERT INTO `t_base_log` VALUES (2359, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:04:04');
INSERT INTO `t_base_log` VALUES (2360, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618484647464\"}', NULL, 1, '2021-04-15 19:04:05');
INSERT INTO `t_base_log` VALUES (2361, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"dqdu\"}', NULL, 1, '2021-04-15 19:04:25');
INSERT INTO `t_base_log` VALUES (2362, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:04:26');
INSERT INTO `t_base_log` VALUES (2363, 2, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618484669575\"}', NULL, 1, '2021-04-15 19:04:28');
INSERT INTO `t_base_log` VALUES (2364, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:05:00');
INSERT INTO `t_base_log` VALUES (2365, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'updatePwdByOld', '重置密码', '', NULL, 1, '2021-04-15 19:05:53');
INSERT INTO `t_base_log` VALUES (2366, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"remember\":\"on\",\"vercode\":\"v2xq\"}', NULL, 1, '2021-04-15 19:06:08');
INSERT INTO `t_base_log` VALUES (2367, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:06:10');
INSERT INTO `t_base_log` VALUES (2368, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618484770372\"}', NULL, 1, '2021-04-15 19:06:11');
INSERT INTO `t_base_log` VALUES (2369, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"zyhx\"}', NULL, 1, '2021-04-15 19:07:24');
INSERT INTO `t_base_log` VALUES (2370, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:07:25');
INSERT INTO `t_base_log` VALUES (2371, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618484845947\"}', NULL, 1, '2021-04-15 19:07:27');
INSERT INTO `t_base_log` VALUES (2372, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 19:07:37');
INSERT INTO `t_base_log` VALUES (2373, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:07:56');
INSERT INTO `t_base_log` VALUES (2374, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 19:08:04');
INSERT INTO `t_base_log` VALUES (2375, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:08:12');
INSERT INTO `t_base_log` VALUES (2376, 144, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618484895242\"}', NULL, 1, '2021-04-15 19:08:12');
INSERT INTO `t_base_log` VALUES (2377, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 19:08:14');
INSERT INTO `t_base_log` VALUES (2378, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 19:08:15');
INSERT INTO `t_base_log` VALUES (2379, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:08:16');
INSERT INTO `t_base_log` VALUES (2380, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:08:18');
INSERT INTO `t_base_log` VALUES (2381, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:08:19');
INSERT INTO `t_base_log` VALUES (2382, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:08:20');
INSERT INTO `t_base_log` VALUES (2383, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:08:21');
INSERT INTO `t_base_log` VALUES (2384, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:08:24');
INSERT INTO `t_base_log` VALUES (2385, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 19:10:00');
INSERT INTO `t_base_log` VALUES (2386, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"1\",\"type\":\"1\"}', NULL, 1, '2021-04-15 19:10:12');
INSERT INTO `t_base_log` VALUES (2387, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'chatlog', '查看聊天记录', '{\"id\":\"1\",\"type\":\"friend\"}', NULL, 1, '2021-04-15 19:10:13');
INSERT INTO `t_base_log` VALUES (2388, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 19:10:36');
INSERT INTO `t_base_log` VALUES (2389, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 19:10:37');
INSERT INTO `t_base_log` VALUES (2390, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:10:40');
INSERT INTO `t_base_log` VALUES (2391, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 19:12:32');
INSERT INTO `t_base_log` VALUES (2392, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 19:12:38');
INSERT INTO `t_base_log` VALUES (2393, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:12:40');
INSERT INTO `t_base_log` VALUES (2394, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"vercode\":\"7qxj\"}', NULL, 1, '2021-04-15 19:14:18');
INSERT INTO `t_base_log` VALUES (2395, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"vercode\":\"7c7m\"}', NULL, 1, '2021-04-15 19:14:22');
INSERT INTO `t_base_log` VALUES (2396, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:14:23');
INSERT INTO `t_base_log` VALUES (2397, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485263754\"}', NULL, 1, '2021-04-15 19:14:24');
INSERT INTO `t_base_log` VALUES (2398, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:14:28');
INSERT INTO `t_base_log` VALUES (2399, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"vercode\":\"3cza\"}', NULL, 1, '2021-04-15 19:16:11');
INSERT INTO `t_base_log` VALUES (2400, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:16:12');
INSERT INTO `t_base_log` VALUES (2401, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485372496\"}', NULL, 1, '2021-04-15 19:16:12');
INSERT INTO `t_base_log` VALUES (2402, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:16:16');
INSERT INTO `t_base_log` VALUES (2403, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:16:54');
INSERT INTO `t_base_log` VALUES (2404, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"t6vx\"}', NULL, 1, '2021-04-15 19:17:19');
INSERT INTO `t_base_log` VALUES (2405, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:17:20');
INSERT INTO `t_base_log` VALUES (2406, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485443318\"}', NULL, 1, '2021-04-15 19:17:21');
INSERT INTO `t_base_log` VALUES (2407, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:17:24');
INSERT INTO `t_base_log` VALUES (2408, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:17:35');
INSERT INTO `t_base_log` VALUES (2409, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"tpzh\"}', NULL, 1, '2021-04-15 19:17:36');
INSERT INTO `t_base_log` VALUES (2410, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:17:38');
INSERT INTO `t_base_log` VALUES (2411, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485458196\"}', NULL, 1, '2021-04-15 19:17:38');
INSERT INTO `t_base_log` VALUES (2412, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:17:44');
INSERT INTO `t_base_log` VALUES (2413, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"18818880133\",\"password\":\"123456\",\"vercode\":\"jhzu\"}', NULL, 1, '2021-04-15 19:17:50');
INSERT INTO `t_base_log` VALUES (2414, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:17:52');
INSERT INTO `t_base_log` VALUES (2415, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485474798\"}', NULL, 1, '2021-04-15 19:17:52');
INSERT INTO `t_base_log` VALUES (2416, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:17:53');
INSERT INTO `t_base_log` VALUES (2417, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:17:54');
INSERT INTO `t_base_log` VALUES (2418, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:17:56');
INSERT INTO `t_base_log` VALUES (2419, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-15 19:18:02');
INSERT INTO `t_base_log` VALUES (2420, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-15 19:18:02');
INSERT INTO `t_base_log` VALUES (2421, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 19:18:03');
INSERT INTO `t_base_log` VALUES (2422, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:18:32');
INSERT INTO `t_base_log` VALUES (2423, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485515375\"}', NULL, 1, '2021-04-15 19:18:33');
INSERT INTO `t_base_log` VALUES (2424, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"vercode\":\"j64c\"}', NULL, 1, '2021-04-15 19:19:16');
INSERT INTO `t_base_log` VALUES (2425, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:19:17');
INSERT INTO `t_base_log` VALUES (2426, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485557720\"}', NULL, 1, '2021-04-15 19:19:17');
INSERT INTO `t_base_log` VALUES (2427, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:19:19');
INSERT INTO `t_base_log` VALUES (2428, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:19:54');
INSERT INTO `t_base_log` VALUES (2429, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485596722\"}', NULL, 1, '2021-04-15 19:19:54');
INSERT INTO `t_base_log` VALUES (2430, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'handleSecret', '修改密保问题', '', NULL, 1, '2021-04-15 19:19:54');
INSERT INTO `t_base_log` VALUES (2431, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:19:56');
INSERT INTO `t_base_log` VALUES (2432, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:19:56');
INSERT INTO `t_base_log` VALUES (2433, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:19:56');
INSERT INTO `t_base_log` VALUES (2434, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123456\",\"vercode\":\"s34q\"}', NULL, 1, '2021-04-15 19:20:58');
INSERT INTO `t_base_log` VALUES (2435, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:20:59');
INSERT INTO `t_base_log` VALUES (2436, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:21:01');
INSERT INTO `t_base_log` VALUES (2437, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618485659989\"}', NULL, 1, '2021-04-15 19:21:03');
INSERT INTO `t_base_log` VALUES (2438, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:21:56');
INSERT INTO `t_base_log` VALUES (2439, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'handleSecret', '修改密保问题', '', NULL, 1, '2021-04-15 19:22:10');
INSERT INTO `t_base_log` VALUES (2440, 133, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:22:12');
INSERT INTO `t_base_log` VALUES (2441, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'verifySecret', '校验密保问题', '{\"answers\":\"123\",\"secretIds\":\"19\"}', NULL, 1, '2021-04-15 19:30:18');
INSERT INTO `t_base_log` VALUES (2442, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'forgetPwd', '找回密码', '{\"password\":\"xin123\",\"userCode\":\"test\"}', NULL, 1, '2021-04-15 19:30:27');
INSERT INTO `t_base_log` VALUES (2443, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123\",\"vercode\":\"wy3r\"}', NULL, 1, '2021-04-15 19:30:38');
INSERT INTO `t_base_log` VALUES (2444, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:30:39');
INSERT INTO `t_base_log` VALUES (2445, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618486239704\"}', NULL, 1, '2021-04-15 19:30:40');
INSERT INTO `t_base_log` VALUES (2446, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"55\",\"type\":\"2\"}', NULL, 1, '2021-04-15 19:30:43');
INSERT INTO `t_base_log` VALUES (2447, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByGroup', '查看群成员', '{\"_\":\"1618486239705\",\"id\":\"55\"}', NULL, 1, '2021-04-15 19:30:44');
INSERT INTO `t_base_log` VALUES (2448, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatLinkController', 'remove', '移除群成员', '{\"groupId\":\"55\"}', NULL, 1, '2021-04-15 19:30:45');
INSERT INTO `t_base_log` VALUES (2449, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:30:52');
INSERT INTO `t_base_log` VALUES (2450, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123\",\"vercode\":\"ff4z\"}', NULL, 1, '2021-04-15 19:34:15');
INSERT INTO `t_base_log` VALUES (2451, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 19:34:17');
INSERT INTO `t_base_log` VALUES (2452, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618486457764\"}', NULL, 1, '2021-04-15 19:34:18');
INSERT INTO `t_base_log` VALUES (2453, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 19:34:25');
INSERT INTO `t_base_log` VALUES (2454, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 19:34:26');
INSERT INTO `t_base_log` VALUES (2455, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'info', '查看好友资料', '{\"friendId\":\"2\",\"gruopId\":\"54\"}', NULL, 1, '2021-04-15 19:34:34');
INSERT INTO `t_base_log` VALUES (2456, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 19:34:58');
INSERT INTO `t_base_log` VALUES (2457, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMsgboxController', 'findByUser', '获取消息盒子', '', NULL, 1, '2021-04-15 19:35:03');
INSERT INTO `t_base_log` VALUES (2458, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'find', '查找好友', '', NULL, 1, '2021-04-15 19:35:05');
INSERT INTO `t_base_log` VALUES (2459, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"bw6n\"}', NULL, 1, '2021-04-15 20:12:18');
INSERT INTO `t_base_log` VALUES (2460, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 20:12:19');
INSERT INTO `t_base_log` VALUES (2461, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618488742871\"}', NULL, 1, '2021-04-15 20:12:20');
INSERT INTO `t_base_log` VALUES (2462, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"zj5d\"}', NULL, 1, '2021-04-15 21:11:28');
INSERT INTO `t_base_log` VALUES (2463, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 21:11:29');
INSERT INTO `t_base_log` VALUES (2464, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618492289833\"}', NULL, 1, '2021-04-15 21:11:31');
INSERT INTO `t_base_log` VALUES (2465, 1, 1, '183.27.113.42', 'com.cn.adonis.controller.auth.AuthUserController', 'editMine', '编辑用户信息', '', NULL, 1, '2021-04-15 21:28:43');
INSERT INTO `t_base_log` VALUES (2466, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"i9yv\"}', NULL, 1, '2021-04-15 21:49:11');
INSERT INTO `t_base_log` VALUES (2467, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 21:49:12');
INSERT INTO `t_base_log` VALUES (2468, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618494553529\"}', NULL, 1, '2021-04-15 21:49:13');
INSERT INTO `t_base_log` VALUES (2469, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-15 21:49:14');
INSERT INTO `t_base_log` VALUES (2470, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"jt37\"}', NULL, 1, '2021-04-15 22:31:21');
INSERT INTO `t_base_log` VALUES (2471, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 22:31:22');
INSERT INTO `t_base_log` VALUES (2472, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618497082925\"}', NULL, 1, '2021-04-15 22:31:22');
INSERT INTO `t_base_log` VALUES (2473, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-15 22:31:37');
INSERT INTO `t_base_log` VALUES (2474, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"test\",\"password\":\"xin123\",\"vercode\":\"2mcj\"}', NULL, 1, '2021-04-15 22:32:23');
INSERT INTO `t_base_log` VALUES (2475, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 22:32:25');
INSERT INTO `t_base_log` VALUES (2476, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618497145591\"}', NULL, 1, '2021-04-15 22:32:25');
INSERT INTO `t_base_log` VALUES (2477, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 22:32:31');
INSERT INTO `t_base_log` VALUES (2478, 145, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"jt37\"}', NULL, 1, '2021-04-15 22:32:41');
INSERT INTO `t_base_log` VALUES (2479, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"3fz5\"}', NULL, 1, '2021-04-15 22:32:50');
INSERT INTO `t_base_log` VALUES (2480, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 22:32:51');
INSERT INTO `t_base_log` VALUES (2481, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618497171994\"}', NULL, 1, '2021-04-15 22:32:51');
INSERT INTO `t_base_log` VALUES (2482, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"145\",\"type\":\"1\"}', NULL, 1, '2021-04-15 22:32:54');
INSERT INTO `t_base_log` VALUES (2483, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatMessageController', 'updateRead', '获取未读消息', '{\"toId\":\"2\",\"type\":\"1\"}', NULL, 1, '2021-04-15 22:33:00');
INSERT INTO `t_base_log` VALUES (2484, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"g98b\"}', NULL, 1, '2021-04-15 23:00:08');
INSERT INTO `t_base_log` VALUES (2485, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-15 23:00:10');
INSERT INTO `t_base_log` VALUES (2486, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618498810823\"}', NULL, 1, '2021-04-15 23:00:10');
INSERT INTO `t_base_log` VALUES (2487, NULL, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"f4u5\"}', NULL, 1, '2021-04-16 00:52:17');
INSERT INTO `t_base_log` VALUES (2488, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"8grp\"}', NULL, 1, '2021-04-16 00:52:22');
INSERT INTO `t_base_log` VALUES (2489, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-16 00:52:24');
INSERT INTO `t_base_log` VALUES (2490, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618505544078\"}', NULL, 1, '2021-04-16 00:52:24');
INSERT INTO `t_base_log` VALUES (2491, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthSecretController', 'list', '查看密保问题', '', NULL, 1, '2021-04-16 00:52:28');
INSERT INTO `t_base_log` VALUES (2492, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-16 00:52:31');
INSERT INTO `t_base_log` VALUES (2493, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-16 00:52:32');
INSERT INTO `t_base_log` VALUES (2494, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-16 00:52:33');
INSERT INTO `t_base_log` VALUES (2495, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"8kra\"}', NULL, 1, '2021-04-16 08:05:55');
INSERT INTO `t_base_log` VALUES (2496, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-16 08:05:56');
INSERT INTO `t_base_log` VALUES (2497, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618531557059\"}', NULL, 1, '2021-04-16 08:05:57');
INSERT INTO `t_base_log` VALUES (2498, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentConstController', 'view', '查看登录页面验证码状态', '', NULL, 1, '2021-04-16 08:06:02');
INSERT INTO `t_base_log` VALUES (2499, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.ligent.LigentLoginController', 'list', '查看用户登录状态', '', NULL, 1, '2021-04-16 08:06:03');
INSERT INTO `t_base_log` VALUES (2500, 2, 1, '180.119.255.232', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-16 08:06:07');
INSERT INTO `t_base_log` VALUES (2501, 2, 1, '180.119.46.215', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"xejp\"}', NULL, 1, '2021-04-16 12:49:59');
INSERT INTO `t_base_log` VALUES (2502, 2, 1, '180.119.46.215', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-16 12:50:00');
INSERT INTO `t_base_log` VALUES (2503, 2, 1, '180.119.46.215', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618548599777\"}', NULL, 1, '2021-04-16 12:50:03');
INSERT INTO `t_base_log` VALUES (2504, 2, 1, '180.119.46.215', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-16 12:50:06');
INSERT INTO `t_base_log` VALUES (2505, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 12:20:10');
INSERT INTO `t_base_log` VALUES (2506, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618978815029\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: PROCEDURE layui_file.p_chat_friend_fainByUser does not exist', 2, '2021-04-21 12:20:12');
INSERT INTO `t_base_log` VALUES (2507, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 12:21:21');
INSERT INTO `t_base_log` VALUES (2508, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618978885254\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: PROCEDURE layui_file.p_chat_friend_fainByUser does not exist', 2, '2021-04-21 12:21:22');
INSERT INTO `t_base_log` VALUES (2509, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 12:22:59');
INSERT INTO `t_base_log` VALUES (2510, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618978982681\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: PROCEDURE layui_file.p_chat_friend_fainByUser does not exist', 2, '2021-04-21 12:22:59');
INSERT INTO `t_base_log` VALUES (2511, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 12:23:05');
INSERT INTO `t_base_log` VALUES (2512, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 12:24:06');
INSERT INTO `t_base_log` VALUES (2513, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.chat.ChatFriendController', 'findByUser', '打开聊天主界面', '{\"_\":\"1618979049590\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: PROCEDURE layui_file.p_chat_friend_fainByUser does not exist', 2, '2021-04-21 12:24:06');
INSERT INTO `t_base_log` VALUES (2514, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 12:26:01');
INSERT INTO `t_base_log` VALUES (2515, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 14:24:21');
INSERT INTO `t_base_log` VALUES (2516, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:24:50');
INSERT INTO `t_base_log` VALUES (2517, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"139\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Table \'layui_file.t_chat_friend\' doesn\'t exist', 2, '2021-04-21 14:24:53');
INSERT INTO `t_base_log` VALUES (2518, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:26:23');
INSERT INTO `t_base_log` VALUES (2519, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'insertUser', '新增用户信息', '{\"roleIds\":\"5\",\"userCode\":\"17388885454\",\"userName\":\"李四\"}', NULL, 1, '2021-04-21 14:26:42');
INSERT INTO `t_base_log` VALUES (2520, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:26:43');
INSERT INTO `t_base_log` VALUES (2521, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"6,7\",\"userId\":\"137\",\"userName\":\"都是2  逼\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: Incorrect number of arguments for PROCEDURE layui_file.p_auth_user_update; expected 3, got 7', 2, '2021-04-21 14:27:06');
INSERT INTO `t_base_log` VALUES (2522, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:28:55');
INSERT INTO `t_base_log` VALUES (2523, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"5\",\"userId\":\"145\",\"userName\":\"花花1\"}', NULL, 1, '2021-04-21 14:29:03');
INSERT INTO `t_base_log` VALUES (2524, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:06');
INSERT INTO `t_base_log` VALUES (2525, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"7\",\"userId\":\"139\",\"userName\":\"笑死2\"}', NULL, 1, '2021-04-21 14:29:17');
INSERT INTO `t_base_log` VALUES (2526, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:19');
INSERT INTO `t_base_log` VALUES (2527, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"141\"}', NULL, 1, '2021-04-21 14:29:24');
INSERT INTO `t_base_log` VALUES (2528, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:26');
INSERT INTO `t_base_log` VALUES (2529, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"142\"}', NULL, 1, '2021-04-21 14:29:30');
INSERT INTO `t_base_log` VALUES (2530, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"144\"}', NULL, 1, '2021-04-21 14:29:32');
INSERT INTO `t_base_log` VALUES (2531, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"145\"}', NULL, 1, '2021-04-21 14:29:35');
INSERT INTO `t_base_log` VALUES (2532, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:37');
INSERT INTO `t_base_log` VALUES (2533, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"140\"}', NULL, 1, '2021-04-21 14:29:39');
INSERT INTO `t_base_log` VALUES (2534, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:43');
INSERT INTO `t_base_log` VALUES (2535, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"139\"}', NULL, 1, '2021-04-21 14:29:45');
INSERT INTO `t_base_log` VALUES (2536, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:29:48');
INSERT INTO `t_base_log` VALUES (2537, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 14:30:49');
INSERT INTO `t_base_log` VALUES (2538, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 14:30:58');
INSERT INTO `t_base_log` VALUES (2539, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'updateUser', '编辑用户信息', '{\"roleIds\":\"6\",\"userId\":\"133\",\"userName\":\"卢东敏1\"}', NULL, 1, '2021-04-21 14:31:03');
INSERT INTO `t_base_log` VALUES (2540, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 14:33:53');
INSERT INTO `t_base_log` VALUES (2541, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:08:49');
INSERT INTO `t_base_log` VALUES (2542, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 15:08:51');
INSERT INTO `t_base_log` VALUES (2543, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 15:08:58');
INSERT INTO `t_base_log` VALUES (2544, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'deleteUsers', '删除用户信息', '{\"userIds\":\"133\"}', NULL, 1, '2021-04-21 15:09:03');
INSERT INTO `t_base_log` VALUES (2545, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 15:09:04');
INSERT INTO `t_base_log` VALUES (2546, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:46:06');
INSERT INTO `t_base_log` VALUES (2547, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:46:39');
INSERT INTO `t_base_log` VALUES (2548, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:46:42');
INSERT INTO `t_base_log` VALUES (2549, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:46:59');
INSERT INTO `t_base_log` VALUES (2550, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 15:51:00');
INSERT INTO `t_base_log` VALUES (2551, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 15:51:53');
INSERT INTO `t_base_log` VALUES (2552, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:01:11');
INSERT INTO `t_base_log` VALUES (2553, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-04-21 16:01:24');
INSERT INTO `t_base_log` VALUES (2554, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-04-21 16:01:33');
INSERT INTO `t_base_log` VALUES (2555, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:02:34');
INSERT INTO `t_base_log` VALUES (2556, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-04-21 16:02:45');
INSERT INTO `t_base_log` VALUES (2557, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-04-21 16:03:15');
INSERT INTO `t_base_log` VALUES (2558, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"117\",\"docuName\":\"看看好东西\"}', NULL, 1, '2021-04-21 16:03:28');
INSERT INTO `t_base_log` VALUES (2559, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-04-21 16:03:30');
INSERT INTO `t_base_log` VALUES (2560, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:40');
INSERT INTO `t_base_log` VALUES (2561, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:48');
INSERT INTO `t_base_log` VALUES (2562, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:50');
INSERT INTO `t_base_log` VALUES (2563, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"103\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:50');
INSERT INTO `t_base_log` VALUES (2564, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:51');
INSERT INTO `t_base_log` VALUES (2565, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:52');
INSERT INTO `t_base_log` VALUES (2566, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:53');
INSERT INTO `t_base_log` VALUES (2567, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:03:59');
INSERT INTO `t_base_log` VALUES (2568, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updatePater', '移动文件', '{\"docuId\":\"117\",\"paterId\":\"97\"}', NULL, 1, '2021-04-21 16:04:01');
INSERT INTO `t_base_log` VALUES (2569, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:04:01');
INSERT INTO `t_base_log` VALUES (2570, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:04:02');
INSERT INTO `t_base_log` VALUES (2571, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"103\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:04:08');
INSERT INTO `t_base_log` VALUES (2572, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-04-21 16:04:09');
INSERT INTO `t_base_log` VALUES (2573, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:08:22');
INSERT INTO `t_base_log` VALUES (2574, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 16:08:29');
INSERT INTO `t_base_log` VALUES (2575, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 16:09:10');
INSERT INTO `t_base_log` VALUES (2576, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:09:12');
INSERT INTO `t_base_log` VALUES (2577, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 16:13:40');
INSERT INTO `t_base_log` VALUES (2578, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"ypeq\"}', NULL, 1, '2021-04-21 16:23:00');
INSERT INTO `t_base_log` VALUES (2579, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:23:01');
INSERT INTO `t_base_log` VALUES (2580, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 16:23:10');
INSERT INTO `t_base_log` VALUES (2581, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 16:23:18');
INSERT INTO `t_base_log` VALUES (2582, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 16:23:23');
INSERT INTO `t_base_log` VALUES (2583, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 16:49:00');
INSERT INTO `t_base_log` VALUES (2584, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 17:02:19');
INSERT INTO `t_base_log` VALUES (2585, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 17:02:24');
INSERT INTO `t_base_log` VALUES (2586, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 17:02:27');
INSERT INTO `t_base_log` VALUES (2587, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 18:11:21');
INSERT INTO `t_base_log` VALUES (2588, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 18:13:40');
INSERT INTO `t_base_log` VALUES (2589, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 18:13:43');
INSERT INTO `t_base_log` VALUES (2590, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 18:13:48');
INSERT INTO `t_base_log` VALUES (2591, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 18:14:00');
INSERT INTO `t_base_log` VALUES (2592, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-21 18:14:04');
INSERT INTO `t_base_log` VALUES (2593, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-21 19:28:19');
INSERT INTO `t_base_log` VALUES (2594, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-21 19:28:22');
INSERT INTO `t_base_log` VALUES (2595, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-22 08:44:47');
INSERT INTO `t_base_log` VALUES (2596, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 08:44:51');
INSERT INTO `t_base_log` VALUES (2597, 1, 1, '183.27.123.155', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 08:45:03');
INSERT INTO `t_base_log` VALUES (2598, 1, 1, '119.147.145.96', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 16:32:01');
INSERT INTO `t_base_log` VALUES (2599, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 20:27:54');
INSERT INTO `t_base_log` VALUES (2600, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-04-22 20:27:58');
INSERT INTO `t_base_log` VALUES (2601, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:05');
INSERT INTO `t_base_log` VALUES (2602, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"95\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:06');
INSERT INTO `t_base_log` VALUES (2603, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:16');
INSERT INTO `t_base_log` VALUES (2604, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"93\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:41');
INSERT INTO `t_base_log` VALUES (2605, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:42');
INSERT INTO `t_base_log` VALUES (2606, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"95\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:43');
INSERT INTO `t_base_log` VALUES (2607, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:44');
INSERT INTO `t_base_log` VALUES (2608, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"92\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:44');
INSERT INTO `t_base_log` VALUES (2609, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:45');
INSERT INTO `t_base_log` VALUES (2610, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"95\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:47');
INSERT INTO `t_base_log` VALUES (2611, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:28:48');
INSERT INTO `t_base_log` VALUES (2612, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"4\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:29:13');
INSERT INTO `t_base_log` VALUES (2613, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:29:14');
INSERT INTO `t_base_log` VALUES (2614, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:29:19');
INSERT INTO `t_base_log` VALUES (2615, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 20:35:39');
INSERT INTO `t_base_log` VALUES (2616, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:35:43');
INSERT INTO `t_base_log` VALUES (2617, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:36:33');
INSERT INTO `t_base_log` VALUES (2618, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-22 20:36:37');
INSERT INTO `t_base_log` VALUES (2619, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:36:40');
INSERT INTO `t_base_log` VALUES (2620, 1, 1, '183.27.114.167', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-22 20:36:45');
INSERT INTO `t_base_log` VALUES (2621, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-23 09:56:37');
INSERT INTO `t_base_log` VALUES (2622, 1, 1, '180.163.220.3', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-23 10:43:02');
INSERT INTO `t_base_log` VALUES (2623, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-23 15:45:54');
INSERT INTO `t_base_log` VALUES (2624, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:46:01');
INSERT INTO `t_base_log` VALUES (2625, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-23 15:48:49');
INSERT INTO `t_base_log` VALUES (2626, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:48:52');
INSERT INTO `t_base_log` VALUES (2627, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:52:15');
INSERT INTO `t_base_log` VALUES (2628, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:52:17');
INSERT INTO `t_base_log` VALUES (2629, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:53:44');
INSERT INTO `t_base_log` VALUES (2630, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-23 15:57:02');
INSERT INTO `t_base_log` VALUES (2631, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:57:19');
INSERT INTO `t_base_log` VALUES (2632, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:57:31');
INSERT INTO `t_base_log` VALUES (2633, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:57:34');
INSERT INTO `t_base_log` VALUES (2634, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:58:55');
INSERT INTO `t_base_log` VALUES (2635, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:58:59');
INSERT INTO `t_base_log` VALUES (2636, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"数据库\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-04-23 15:59:41');
INSERT INTO `t_base_log` VALUES (2637, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:59:42');
INSERT INTO `t_base_log` VALUES (2638, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 15:59:56');
INSERT INTO `t_base_log` VALUES (2639, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:59:56');
INSERT INTO `t_base_log` VALUES (2640, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 15:59:58');
INSERT INTO `t_base_log` VALUES (2641, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:00:00');
INSERT INTO `t_base_log` VALUES (2642, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:00:30');
INSERT INTO `t_base_log` VALUES (2643, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:00:35');
INSERT INTO `t_base_log` VALUES (2644, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:00:39');
INSERT INTO `t_base_log` VALUES (2645, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"日常生活\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-04-23 16:01:12');
INSERT INTO `t_base_log` VALUES (2646, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"3\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:01:13');
INSERT INTO `t_base_log` VALUES (2647, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:01:22');
INSERT INTO `t_base_log` VALUES (2648, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:01:22');
INSERT INTO `t_base_log` VALUES (2649, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"3\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:01:22');
INSERT INTO `t_base_log` VALUES (2650, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:01:26');
INSERT INTO `t_base_log` VALUES (2651, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"我的素材\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-04-23 16:02:20');
INSERT INTO `t_base_log` VALUES (2652, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:02:21');
INSERT INTO `t_base_log` VALUES (2653, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"群发短信\",\"docuUse\":\"1\",\"paterId\":\"6\"}', NULL, 1, '2021-04-23 16:02:44');
INSERT INTO `t_base_log` VALUES (2654, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"7\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:02:45');
INSERT INTO `t_base_log` VALUES (2655, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:01');
INSERT INTO `t_base_log` VALUES (2656, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:01');
INSERT INTO `t_base_log` VALUES (2657, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"7\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:01');
INSERT INTO `t_base_log` VALUES (2658, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:03');
INSERT INTO `t_base_log` VALUES (2659, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"权限管理\",\"docuUse\":\"1\",\"paterId\":\"6\"}', NULL, 1, '2021-04-23 16:03:20');
INSERT INTO `t_base_log` VALUES (2660, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"10\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:21');
INSERT INTO `t_base_log` VALUES (2661, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:32');
INSERT INTO `t_base_log` VALUES (2662, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2663, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2664, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2665, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2666, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2667, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"10\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:34');
INSERT INTO `t_base_log` VALUES (2668, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:36');
INSERT INTO `t_base_log` VALUES (2669, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"10\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:37');
INSERT INTO `t_base_log` VALUES (2670, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:38');
INSERT INTO `t_base_log` VALUES (2671, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"7\",\"docuName\":\"校讯通群发短信\"}', NULL, 1, '2021-04-23 16:03:51');
INSERT INTO `t_base_log` VALUES (2672, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:03:53');
INSERT INTO `t_base_log` VALUES (2673, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"电子邮箱\",\"docuUse\":\"1\",\"paterId\":\"6\"}', NULL, 1, '2021-04-23 16:04:07');
INSERT INTO `t_base_log` VALUES (2674, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"17\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:04:07');
INSERT INTO `t_base_log` VALUES (2675, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2676, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2677, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2678, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2679, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2680, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"17\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:04:16');
INSERT INTO `t_base_log` VALUES (2681, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:04:19');
INSERT INTO `t_base_log` VALUES (2682, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:43');
INSERT INTO `t_base_log` VALUES (2683, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:43');
INSERT INTO `t_base_log` VALUES (2684, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:43');
INSERT INTO `t_base_log` VALUES (2685, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:04:44');
INSERT INTO `t_base_log` VALUES (2686, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:04:44');
INSERT INTO `t_base_log` VALUES (2687, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:04:47');
INSERT INTO `t_base_log` VALUES (2688, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"23\",\"docuName\":\"职位管理\"}', NULL, 1, '2021-04-23 16:04:57');
INSERT INTO `t_base_log` VALUES (2689, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"25\",\"docuName\":\"日程管理\"}', NULL, 1, '2021-04-23 16:05:12');
INSERT INTO `t_base_log` VALUES (2690, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"26\",\"docuName\":\"流程图\"}', NULL, 1, '2021-04-23 16:05:26');
INSERT INTO `t_base_log` VALUES (2691, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"24\",\"docuName\":\"问卷调查\"}', NULL, 1, '2021-04-23 16:05:36');
INSERT INTO `t_base_log` VALUES (2692, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:05:38');
INSERT INTO `t_base_log` VALUES (2693, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"7\",\"docuName\":\"校讯通群发\"}', NULL, 1, '2021-04-23 16:05:43');
INSERT INTO `t_base_log` VALUES (2694, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:05:44');
INSERT INTO `t_base_log` VALUES (2695, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:05:45');
INSERT INTO `t_base_log` VALUES (2696, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"H5\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-04-23 16:06:14');
INSERT INTO `t_base_log` VALUES (2697, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:06:15');
INSERT INTO `t_base_log` VALUES (2698, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:06:30');
INSERT INTO `t_base_log` VALUES (2699, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:06:30');
INSERT INTO `t_base_log` VALUES (2700, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:06:31');
INSERT INTO `t_base_log` VALUES (2701, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:06:33');
INSERT INTO `t_base_log` VALUES (2702, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:07:13');
INSERT INTO `t_base_log` VALUES (2703, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:07:13');
INSERT INTO `t_base_log` VALUES (2704, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:07:31');
INSERT INTO `t_base_log` VALUES (2705, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"我的工具\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-04-23 16:08:15');
INSERT INTO `t_base_log` VALUES (2706, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:08:16');
INSERT INTO `t_base_log` VALUES (2707, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:08:59');
INSERT INTO `t_base_log` VALUES (2708, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:08:59');
INSERT INTO `t_base_log` VALUES (2709, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:09:24');
INSERT INTO `t_base_log` VALUES (2710, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:09:24');
INSERT INTO `t_base_log` VALUES (2711, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:09:28');
INSERT INTO `t_base_log` VALUES (2712, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:09:55');
INSERT INTO `t_base_log` VALUES (2713, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:09:55');
INSERT INTO `t_base_log` VALUES (2714, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"34\",\"docuName\":\"小马激活工具\"}', NULL, 1, '2021-04-23 16:10:05');
INSERT INTO `t_base_log` VALUES (2715, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:10:07');
INSERT INTO `t_base_log` VALUES (2716, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:11:22');
INSERT INTO `t_base_log` VALUES (2717, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:11:47');
INSERT INTO `t_base_log` VALUES (2718, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:11:47');
INSERT INTO `t_base_log` VALUES (2719, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:11:58');
INSERT INTO `t_base_log` VALUES (2720, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:12:20');
INSERT INTO `t_base_log` VALUES (2721, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:12:20');
INSERT INTO `t_base_log` VALUES (2722, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:14:25');
INSERT INTO `t_base_log` VALUES (2723, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:14:25');
INSERT INTO `t_base_log` VALUES (2724, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:14:25');
INSERT INTO `t_base_log` VALUES (2725, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:14:25');
INSERT INTO `t_base_log` VALUES (2726, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-04-23 16:14:27');
INSERT INTO `t_base_log` VALUES (2727, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:14:28');
INSERT INTO `t_base_log` VALUES (2728, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:14:31');
INSERT INTO `t_base_log` VALUES (2729, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"37\",\"docuName\":\"当个学霸还真难\"}', NULL, 1, '2021-04-23 16:14:54');
INSERT INTO `t_base_log` VALUES (2730, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:15:38');
INSERT INTO `t_base_log` VALUES (2731, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:15:44');
INSERT INTO `t_base_log` VALUES (2732, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:15:46');
INSERT INTO `t_base_log` VALUES (2733, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:15:47');
INSERT INTO `t_base_log` VALUES (2734, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:16:19');
INSERT INTO `t_base_log` VALUES (2735, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"41\",\"docuName\":\"蓝朋友花99块钱让别人夸我30分钟\"}', NULL, 1, '2021-04-23 16:18:06');
INSERT INTO `t_base_log` VALUES (2736, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:18:08');
INSERT INTO `t_base_log` VALUES (2737, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:28:48');
INSERT INTO `t_base_log` VALUES (2738, 1, 1, '61.145.91.64', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-04-23 16:28:52');
INSERT INTO `t_base_log` VALUES (2739, 1, 1, '123.147.251.91', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-23 23:56:41');
INSERT INTO `t_base_log` VALUES (2740, 1, 1, '111.225.148.160', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-25 00:46:36');
INSERT INTO `t_base_log` VALUES (2741, 1, 1, '112.96.136.166', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-26 02:36:37');
INSERT INTO `t_base_log` VALUES (2742, 1, 1, '112.96.136.166', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-26 02:36:41');
INSERT INTO `t_base_log` VALUES (2743, 1, 1, '61.190.213.226', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-26 13:26:22');
INSERT INTO `t_base_log` VALUES (2744, 1, 1, '119.39.248.16', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-27 08:59:47');
INSERT INTO `t_base_log` VALUES (2745, 1, 1, '110.53.134.38', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-28 10:21:02');
INSERT INTO `t_base_log` VALUES (2746, 1, 1, '113.244.134.138', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-04-29 19:49:54');
INSERT INTO `t_base_log` VALUES (2747, 1, 1, '27.115.124.6', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-04-29 19:50:02');
INSERT INTO `t_base_log` VALUES (2748, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-01 16:13:15');
INSERT INTO `t_base_log` VALUES (2749, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-01 16:13:30');
INSERT INTO `t_base_log` VALUES (2750, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:13:41');
INSERT INTO `t_base_log` VALUES (2751, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:13:50');
INSERT INTO `t_base_log` VALUES (2752, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:01');
INSERT INTO `t_base_log` VALUES (2753, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:02');
INSERT INTO `t_base_log` VALUES (2754, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:06');
INSERT INTO `t_base_log` VALUES (2755, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:08');
INSERT INTO `t_base_log` VALUES (2756, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"17\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:10');
INSERT INTO `t_base_log` VALUES (2757, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:11');
INSERT INTO `t_base_log` VALUES (2758, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:13');
INSERT INTO `t_base_log` VALUES (2759, 1, 1, '222.221.247.228', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"3\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-01 16:14:17');
INSERT INTO `t_base_log` VALUES (2760, 1, 1, '113.132.11.189', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-01 18:54:07');
INSERT INTO `t_base_log` VALUES (2761, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-07 14:55:18');
INSERT INTO `t_base_log` VALUES (2762, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:55:43');
INSERT INTO `t_base_log` VALUES (2763, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"3\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:55:52');
INSERT INTO `t_base_log` VALUES (2764, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:06');
INSERT INTO `t_base_log` VALUES (2765, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"31\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:08');
INSERT INTO `t_base_log` VALUES (2766, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:21');
INSERT INTO `t_base_log` VALUES (2767, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:22');
INSERT INTO `t_base_log` VALUES (2768, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:23');
INSERT INTO `t_base_log` VALUES (2769, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:33');
INSERT INTO `t_base_log` VALUES (2770, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:33');
INSERT INTO `t_base_log` VALUES (2771, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:45');
INSERT INTO `t_base_log` VALUES (2772, 1, 1, '223.93.170.115', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-07 14:56:50');
INSERT INTO `t_base_log` VALUES (2773, 1, 1, '122.226.145.42', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-11 10:50:55');
INSERT INTO `t_base_log` VALUES (2774, 1, 1, '122.226.145.42', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-11 10:51:12');
INSERT INTO `t_base_log` VALUES (2775, 1, 1, '113.69.174.197', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-12 08:45:44');
INSERT INTO `t_base_log` VALUES (2776, 1, 1, '113.69.174.197', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-12 08:46:03');
INSERT INTO `t_base_log` VALUES (2777, 1, 1, '113.69.174.197', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-12 08:46:06');
INSERT INTO `t_base_log` VALUES (2778, 1, 1, '117.63.237.160', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-13 22:08:17');
INSERT INTO `t_base_log` VALUES (2779, 1, 1, '117.63.237.160', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-13 22:08:21');
INSERT INTO `t_base_log` VALUES (2780, 1, 1, '117.63.237.160', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-13 22:08:36');
INSERT INTO `t_base_log` VALUES (2781, 1, 1, '117.63.232.187', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-13 22:22:20');
INSERT INTO `t_base_log` VALUES (2782, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-14 00:24:13');
INSERT INTO `t_base_log` VALUES (2783, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:24:30');
INSERT INTO `t_base_log` VALUES (2784, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:26:28');
INSERT INTO `t_base_log` VALUES (2785, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:26:30');
INSERT INTO `t_base_log` VALUES (2786, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"我的图片\",\"docuUse\":\"2\",\"paterId\":\"0\"}', NULL, 1, '2021-05-14 00:26:40');
INSERT INTO `t_base_log` VALUES (2787, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:26:43');
INSERT INTO `t_base_log` VALUES (2788, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:26:51');
INSERT INTO `t_base_log` VALUES (2789, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-14 00:26:55');
INSERT INTO `t_base_log` VALUES (2790, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:05');
INSERT INTO `t_base_log` VALUES (2791, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"3\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:21');
INSERT INTO `t_base_log` VALUES (2792, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:22');
INSERT INTO `t_base_log` VALUES (2793, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:23');
INSERT INTO `t_base_log` VALUES (2794, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:24');
INSERT INTO `t_base_log` VALUES (2795, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:25');
INSERT INTO `t_base_log` VALUES (2796, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"7\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:27:26');
INSERT INTO `t_base_log` VALUES (2797, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-14 00:27:32');
INSERT INTO `t_base_log` VALUES (2798, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-14 00:31:57');
INSERT INTO `t_base_log` VALUES (2799, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-14 00:32:01');
INSERT INTO `t_base_log` VALUES (2800, 1, 1, '14.150.45.43', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"2\"}', NULL, 1, '2021-05-14 00:32:12');
INSERT INTO `t_base_log` VALUES (2801, 1, 1, '183.27.115.224', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-17 11:58:00');
INSERT INTO `t_base_log` VALUES (2802, 1, 1, '183.27.115.224', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-17 11:58:03');
INSERT INTO `t_base_log` VALUES (2803, 1, 1, '183.27.115.224', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-17 11:58:07');
INSERT INTO `t_base_log` VALUES (2804, 1, 1, '183.27.115.224', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-17 12:02:23');
INSERT INTO `t_base_log` VALUES (2805, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-18 15:05:40');
INSERT INTO `t_base_log` VALUES (2806, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-18 15:14:19');
INSERT INTO `t_base_log` VALUES (2807, 1, 1, '207.46.13.128', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-18 19:18:24');
INSERT INTO `t_base_log` VALUES (2808, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-18 20:54:37');
INSERT INTO `t_base_log` VALUES (2809, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 20:54:58');
INSERT INTO `t_base_log` VALUES (2810, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-18 21:00:26');
INSERT INTO `t_base_log` VALUES (2811, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:00:41');
INSERT INTO `t_base_log` VALUES (2812, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:00:45');
INSERT INTO `t_base_log` VALUES (2813, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:05:07');
INSERT INTO `t_base_log` VALUES (2814, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"17\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:07:50');
INSERT INTO `t_base_log` VALUES (2815, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-18 21:14:30');
INSERT INTO `t_base_log` VALUES (2816, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:14:32');
INSERT INTO `t_base_log` VALUES (2817, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:14:34');
INSERT INTO `t_base_log` VALUES (2818, 1, 1, '183.27.107.14', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"17\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-18 21:14:35');
INSERT INTO `t_base_log` VALUES (2819, 1, 1, '207.46.13.128', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-21 05:15:53');
INSERT INTO `t_base_log` VALUES (2820, 1, 1, '36.104.33.156', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-22 13:40:28');
INSERT INTO `t_base_log` VALUES (2821, 1, 1, '207.46.13.128', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-23 22:20:20');
INSERT INTO `t_base_log` VALUES (2822, 1, 1, '221.226.37.162', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-24 09:29:09');
INSERT INTO `t_base_log` VALUES (2823, 1, 1, '157.0.72.130', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-24 16:33:29');
INSERT INTO `t_base_log` VALUES (2824, 1, 1, '157.0.72.130', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-24 16:33:43');
INSERT INTO `t_base_log` VALUES (2825, 1, 1, '157.0.72.130', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-24 16:33:49');
INSERT INTO `t_base_log` VALUES (2826, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-25 08:41:03');
INSERT INTO `t_base_log` VALUES (2827, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-25 08:41:14');
INSERT INTO `t_base_log` VALUES (2828, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-25 08:42:18');
INSERT INTO `t_base_log` VALUES (2829, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-25 08:42:33');
INSERT INTO `t_base_log` VALUES (2830, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-25 08:42:45');
INSERT INTO `t_base_log` VALUES (2831, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"工具1\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-05-25 08:43:08');
INSERT INTO `t_base_log` VALUES (2832, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"工具1\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-05-25 08:43:09');
INSERT INTO `t_base_log` VALUES (2833, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-25 08:44:47');
INSERT INTO `t_base_log` VALUES (2834, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-25 08:45:19');
INSERT INTO `t_base_log` VALUES (2835, 1, 1, '223.74.150.36', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-25 08:46:04');
INSERT INTO `t_base_log` VALUES (2836, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 13:17:11');
INSERT INTO `t_base_log` VALUES (2837, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 13:17:39');
INSERT INTO `t_base_log` VALUES (2838, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 13:18:21');
INSERT INTO `t_base_log` VALUES (2839, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 13:18:39');
INSERT INTO `t_base_log` VALUES (2840, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-26 13:19:19');
INSERT INTO `t_base_log` VALUES (2841, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 13:19:19');
INSERT INTO `t_base_log` VALUES (2842, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 15:18:26');
INSERT INTO `t_base_log` VALUES (2843, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:18:30');
INSERT INTO `t_base_log` VALUES (2844, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-26 15:18:33');
INSERT INTO `t_base_log` VALUES (2845, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:29:23');
INSERT INTO `t_base_log` VALUES (2846, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:55:18');
INSERT INTO `t_base_log` VALUES (2847, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:55:19');
INSERT INTO `t_base_log` VALUES (2848, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:55:20');
INSERT INTO `t_base_log` VALUES (2849, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:55:25');
INSERT INTO `t_base_log` VALUES (2850, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:55:44');
INSERT INTO `t_base_log` VALUES (2851, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"123\",\"docuUse\":\"1\",\"paterId\":\"43\"}', NULL, 1, '2021-05-26 15:55:50');
INSERT INTO `t_base_log` VALUES (2852, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:56:00');
INSERT INTO `t_base_log` VALUES (2853, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:56:02');
INSERT INTO `t_base_log` VALUES (2854, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:56:17');
INSERT INTO `t_base_log` VALUES (2855, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:56:20');
INSERT INTO `t_base_log` VALUES (2856, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:56:21');
INSERT INTO `t_base_log` VALUES (2857, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:58:18');
INSERT INTO `t_base_log` VALUES (2858, 1, 1, '113.89.247.204', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:58:27');
INSERT INTO `t_base_log` VALUES (2859, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"44it\"}', NULL, 1, '2021-05-26 15:59:31');
INSERT INTO `t_base_log` VALUES (2860, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 15:59:32');
INSERT INTO `t_base_log` VALUES (2861, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-26 15:59:36');
INSERT INTO `t_base_log` VALUES (2862, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:39');
INSERT INTO `t_base_log` VALUES (2863, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:42');
INSERT INTO `t_base_log` VALUES (2864, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:43');
INSERT INTO `t_base_log` VALUES (2865, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:56');
INSERT INTO `t_base_log` VALUES (2866, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:58');
INSERT INTO `t_base_log` VALUES (2867, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:58');
INSERT INTO `t_base_log` VALUES (2868, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 15:59:59');
INSERT INTO `t_base_log` VALUES (2869, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:00:00');
INSERT INTO `t_base_log` VALUES (2870, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:00:00');
INSERT INTO `t_base_log` VALUES (2871, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-26 16:00:08');
INSERT INTO `t_base_log` VALUES (2872, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:00:08');
INSERT INTO `t_base_log` VALUES (2873, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:00:19');
INSERT INTO `t_base_log` VALUES (2874, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-26 16:01:37');
INSERT INTO `t_base_log` VALUES (2875, NULL, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'register', '注册验证', '{\"account\":\"user11\",\"password\":\"123456\",\"repass\":\"123456\",\"vercode\":\"qev2\"}', 'com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException: PROCEDURE layui_file.p_auth_account_register does not exist', 2, '2021-05-26 16:02:07');
INSERT INTO `t_base_log` VALUES (2876, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"edj5\"}', NULL, 1, '2021-05-26 16:08:36');
INSERT INTO `t_base_log` VALUES (2877, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 16:08:38');
INSERT INTO `t_base_log` VALUES (2878, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-26 16:08:39');
INSERT INTO `t_base_log` VALUES (2879, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:08:47');
INSERT INTO `t_base_log` VALUES (2880, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:36');
INSERT INTO `t_base_log` VALUES (2881, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"cs111\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-05-26 16:09:42');
INSERT INTO `t_base_log` VALUES (2882, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:45');
INSERT INTO `t_base_log` VALUES (2883, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:46');
INSERT INTO `t_base_log` VALUES (2884, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:47');
INSERT INTO `t_base_log` VALUES (2885, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:51');
INSERT INTO `t_base_log` VALUES (2886, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:09:54');
INSERT INTO `t_base_log` VALUES (2887, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:11:02');
INSERT INTO `t_base_log` VALUES (2888, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:11:56');
INSERT INTO `t_base_log` VALUES (2889, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"3\"}', NULL, 1, '2021-05-26 16:11:57');
INSERT INTO `t_base_log` VALUES (2890, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 16:54:35');
INSERT INTO `t_base_log` VALUES (2891, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:54:41');
INSERT INTO `t_base_log` VALUES (2892, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:55:04');
INSERT INTO `t_base_log` VALUES (2893, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:55:50');
INSERT INTO `t_base_log` VALUES (2894, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 16:55:51');
INSERT INTO `t_base_log` VALUES (2895, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:55:53');
INSERT INTO `t_base_log` VALUES (2896, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:13');
INSERT INTO `t_base_log` VALUES (2897, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:14');
INSERT INTO `t_base_log` VALUES (2898, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:19');
INSERT INTO `t_base_log` VALUES (2899, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"48\"}', NULL, 1, '2021-05-26 16:56:22');
INSERT INTO `t_base_log` VALUES (2900, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"47\"}', NULL, 1, '2021-05-26 16:56:28');
INSERT INTO `t_base_log` VALUES (2901, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"1\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:32');
INSERT INTO `t_base_log` VALUES (2902, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:33');
INSERT INTO `t_base_log` VALUES (2903, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"6\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 16:56:34');
INSERT INTO `t_base_log` VALUES (2904, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 17:00:13');
INSERT INTO `t_base_log` VALUES (2905, 1, 1, '113.70.120.161', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 17:00:20');
INSERT INTO `t_base_log` VALUES (2906, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-26 17:02:40');
INSERT INTO `t_base_log` VALUES (2907, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 17:02:59');
INSERT INTO `t_base_log` VALUES (2908, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'downloadZips', '打包下载文件', '{\"docuId\":\"27\"}', 'java.io.IOException: 你的主机中的软件中止了一个已建立的连接。', 2, '2021-05-26 17:03:07');
INSERT INTO `t_base_log` VALUES (2909, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'downloadZips', '打包下载文件', '{\"docuId\":\"27\"}', NULL, 1, '2021-05-26 17:03:07');
INSERT INTO `t_base_log` VALUES (2910, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'downloadZips', '打包下载文件', '{\"docuId\":\"27\"}', 'java.io.IOException: 你的主机中的软件中止了一个已建立的连接。', 2, '2021-05-26 17:03:08');
INSERT INTO `t_base_log` VALUES (2911, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 17:03:09');
INSERT INTO `t_base_log` VALUES (2912, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 17:03:36');
INSERT INTO `t_base_log` VALUES (2913, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-26 17:03:44');
INSERT INTO `t_base_log` VALUES (2914, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"新增文件夹\",\"docuUse\":\"2\",\"paterId\":\"0\"}', NULL, 1, '2021-05-26 17:03:49');
INSERT INTO `t_base_log` VALUES (2915, 1, 1, '113.57.93.33', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"新增文件夹\",\"docuUse\":\"2\",\"paterId\":\"0\"}', NULL, 1, '2021-05-26 17:04:01');
INSERT INTO `t_base_log` VALUES (2916, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-27 09:27:06');
INSERT INTO `t_base_log` VALUES (2917, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 09:27:11');
INSERT INTO `t_base_log` VALUES (2918, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 09:27:28');
INSERT INTO `t_base_log` VALUES (2919, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 09:27:31');
INSERT INTO `t_base_log` VALUES (2920, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 09:27:32');
INSERT INTO `t_base_log` VALUES (2921, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 09:27:34');
INSERT INTO `t_base_log` VALUES (2922, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"49\",\"docuUse\":\"2\"}', NULL, 1, '2021-05-27 09:27:37');
INSERT INTO `t_base_log` VALUES (2923, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 09:27:41');
INSERT INTO `t_base_log` VALUES (2924, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 10:22:27');
INSERT INTO `t_base_log` VALUES (2925, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 10:22:37');
INSERT INTO `t_base_log` VALUES (2926, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 10:22:38');
INSERT INTO `t_base_log` VALUES (2927, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 10:33:14');
INSERT INTO `t_base_log` VALUES (2928, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 10:33:14');
INSERT INTO `t_base_log` VALUES (2929, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-05-27 10:33:47');
INSERT INTO `t_base_log` VALUES (2930, 1, 1, '123.112.23.50', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 15:43:25');
INSERT INTO `t_base_log` VALUES (2931, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"xn8r\"}', NULL, 1, '2021-05-27 18:34:40');
INSERT INTO `t_base_log` VALUES (2932, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 18:34:41');
INSERT INTO `t_base_log` VALUES (2933, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"n9yr\"}', NULL, 1, '2021-05-27 18:36:30');
INSERT INTO `t_base_log` VALUES (2934, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 18:36:31');
INSERT INTO `t_base_log` VALUES (2935, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"t7yc\"}', NULL, 1, '2021-05-27 19:25:24');
INSERT INTO `t_base_log` VALUES (2936, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 19:25:26');
INSERT INTO `t_base_log` VALUES (2937, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:25:28');
INSERT INTO `t_base_log` VALUES (2938, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:25:55');
INSERT INTO `t_base_log` VALUES (2939, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:27:48');
INSERT INTO `t_base_log` VALUES (2940, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:28:20');
INSERT INTO `t_base_log` VALUES (2941, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:29:37');
INSERT INTO `t_base_log` VALUES (2942, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:30:47');
INSERT INTO `t_base_log` VALUES (2943, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:31:05');
INSERT INTO `t_base_log` VALUES (2944, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:31:41');
INSERT INTO `t_base_log` VALUES (2945, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:37:43');
INSERT INTO `t_base_log` VALUES (2946, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:38:27');
INSERT INTO `t_base_log` VALUES (2947, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:39:09');
INSERT INTO `t_base_log` VALUES (2948, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:39:20');
INSERT INTO `t_base_log` VALUES (2949, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:40:26');
INSERT INTO `t_base_log` VALUES (2950, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:40:34');
INSERT INTO `t_base_log` VALUES (2951, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"8zsx\"}', NULL, 1, '2021-05-27 19:41:00');
INSERT INTO `t_base_log` VALUES (2952, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 19:41:02');
INSERT INTO `t_base_log` VALUES (2953, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:41:04');
INSERT INTO `t_base_log` VALUES (2954, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:41:16');
INSERT INTO `t_base_log` VALUES (2955, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:41:47');
INSERT INTO `t_base_log` VALUES (2956, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:42:11');
INSERT INTO `t_base_log` VALUES (2957, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:43:06');
INSERT INTO `t_base_log` VALUES (2958, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:48:32');
INSERT INTO `t_base_log` VALUES (2959, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"dtts\"}', NULL, 1, '2021-05-27 19:48:58');
INSERT INTO `t_base_log` VALUES (2960, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 19:48:59');
INSERT INTO `t_base_log` VALUES (2961, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:49:01');
INSERT INTO `t_base_log` VALUES (2962, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:49:39');
INSERT INTO `t_base_log` VALUES (2963, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"pyz6\"}', NULL, 1, '2021-05-27 19:50:07');
INSERT INTO `t_base_log` VALUES (2964, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 19:50:09');
INSERT INTO `t_base_log` VALUES (2965, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:50:10');
INSERT INTO `t_base_log` VALUES (2966, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:50:11');
INSERT INTO `t_base_log` VALUES (2967, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:53:31');
INSERT INTO `t_base_log` VALUES (2968, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 19:59:37');
INSERT INTO `t_base_log` VALUES (2969, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:00:18');
INSERT INTO `t_base_log` VALUES (2970, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:02:01');
INSERT INTO `t_base_log` VALUES (2971, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:02:51');
INSERT INTO `t_base_log` VALUES (2972, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:03:27');
INSERT INTO `t_base_log` VALUES (2973, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"123\",\"docuId\":\"37\"}', NULL, 1, '2021-05-27 20:03:31');
INSERT INTO `t_base_log` VALUES (2974, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:03:50');
INSERT INTO `t_base_log` VALUES (2975, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:03:52');
INSERT INTO `t_base_log` VALUES (2976, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"123123\",\"docuId\":\"37\"}', NULL, 1, '2021-05-27 20:03:56');
INSERT INTO `t_base_log` VALUES (2977, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:05:21');
INSERT INTO `t_base_log` VALUES (2978, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"12312323\",\"docuId\":\"37\"}', NULL, 1, '2021-05-27 20:05:28');
INSERT INTO `t_base_log` VALUES (2979, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:05:45');
INSERT INTO `t_base_log` VALUES (2980, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"12312323sdf是大法官是\",\"docuId\":\"37\"}', NULL, 1, '2021-05-27 20:05:50');
INSERT INTO `t_base_log` VALUES (2981, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"7ia7\"}', NULL, 1, '2021-05-27 20:06:57');
INSERT INTO `t_base_log` VALUES (2982, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 20:06:59');
INSERT INTO `t_base_log` VALUES (2983, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:07:01');
INSERT INTO `t_base_log` VALUES (2984, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:13:34');
INSERT INTO `t_base_log` VALUES (2985, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:15:13');
INSERT INTO `t_base_log` VALUES (2986, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:15:23');
INSERT INTO `t_base_log` VALUES (2987, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:15:23');
INSERT INTO `t_base_log` VALUES (2988, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:17:39');
INSERT INTO `t_base_log` VALUES (2989, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:17:47');
INSERT INTO `t_base_log` VALUES (2990, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:17:48');
INSERT INTO `t_base_log` VALUES (2991, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:22:10');
INSERT INTO `t_base_log` VALUES (2992, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:22:21');
INSERT INTO `t_base_log` VALUES (2993, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:22:32');
INSERT INTO `t_base_log` VALUES (2994, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:22:32');
INSERT INTO `t_base_log` VALUES (2995, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试2\"}', NULL, 1, '2021-05-27 20:22:32');
INSERT INTO `t_base_log` VALUES (2996, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试1\"}', NULL, 1, '2021-05-27 20:22:32');
INSERT INTO `t_base_log` VALUES (2997, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:22:32');
INSERT INTO `t_base_log` VALUES (2998, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:23:21');
INSERT INTO `t_base_log` VALUES (2999, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:23:23');
INSERT INTO `t_base_log` VALUES (3000, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:23:34');
INSERT INTO `t_base_log` VALUES (3001, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试33\",\"docuId\":\"53\"}', NULL, 1, '2021-05-27 20:23:34');
INSERT INTO `t_base_log` VALUES (3002, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:23:34');
INSERT INTO `t_base_log` VALUES (3003, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:23:44');
INSERT INTO `t_base_log` VALUES (3004, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:24:45');
INSERT INTO `t_base_log` VALUES (3005, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:25:06');
INSERT INTO `t_base_log` VALUES (3006, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:25:07');
INSERT INTO `t_base_log` VALUES (3007, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"他为啥\",\"docuId\":\"54\"}', NULL, 1, '2021-05-27 20:25:07');
INSERT INTO `t_base_log` VALUES (3008, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:25:27');
INSERT INTO `t_base_log` VALUES (3009, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:25:31');
INSERT INTO `t_base_log` VALUES (3010, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:25:36');
INSERT INTO `t_base_log` VALUES (3011, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:25:39');
INSERT INTO `t_base_log` VALUES (3012, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:25:53');
INSERT INTO `t_base_log` VALUES (3013, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:25:53');
INSERT INTO `t_base_log` VALUES (3014, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试2\",\"docuId\":\"55\"}', NULL, 1, '2021-05-27 20:26:06');
INSERT INTO `t_base_log` VALUES (3015, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:26:06');
INSERT INTO `t_base_log` VALUES (3016, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试4\",\"docuId\":\"56\"}', 'java.sql.SQLException: Could not retrieve transation read-only status server', 2, '2021-05-27 20:26:06');
INSERT INTO `t_base_log` VALUES (3017, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:26:35');
INSERT INTO `t_base_log` VALUES (3018, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:26:45');
INSERT INTO `t_base_log` VALUES (3019, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:26:45');
INSERT INTO `t_base_log` VALUES (3020, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试2\",\"docuId\":\"57\"}', NULL, 1, '2021-05-27 20:26:45');
INSERT INTO `t_base_log` VALUES (3021, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:26:45');
INSERT INTO `t_base_log` VALUES (3022, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试1\",\"docuId\":\"58\"}', NULL, 1, '2021-05-27 20:26:45');
INSERT INTO `t_base_log` VALUES (3023, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:28:31');
INSERT INTO `t_base_log` VALUES (3024, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"123撒\",\"docuUse\":\"1\",\"paterId\":\"43\"}', NULL, 1, '2021-05-27 20:28:37');
INSERT INTO `t_base_log` VALUES (3025, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:28:38');
INSERT INTO `t_base_log` VALUES (3026, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:28:48');
INSERT INTO `t_base_log` VALUES (3027, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:28:48');
INSERT INTO `t_base_log` VALUES (3028, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试23\",\"docuId\":\"60\"}', NULL, 1, '2021-05-27 20:28:48');
INSERT INTO `t_base_log` VALUES (3029, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:28:48');
INSERT INTO `t_base_log` VALUES (3030, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试45\",\"docuId\":\"61\"}', NULL, 1, '2021-05-27 20:28:48');
INSERT INTO `t_base_log` VALUES (3031, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:13');
INSERT INTO `t_base_log` VALUES (3032, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:14');
INSERT INTO `t_base_log` VALUES (3033, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"60\"}', NULL, 1, '2021-05-27 20:29:17');
INSERT INTO `t_base_log` VALUES (3034, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"61\"}', NULL, 1, '2021-05-27 20:29:19');
INSERT INTO `t_base_log` VALUES (3035, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3036, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3037, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试2\",\"docuId\":\"62\"}', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3038, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试4\",\"docuId\":\"63\"}', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3039, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3040, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:28');
INSERT INTO `t_base_log` VALUES (3041, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:31');
INSERT INTO `t_base_log` VALUES (3042, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:35');
INSERT INTO `t_base_log` VALUES (3043, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:37');
INSERT INTO `t_base_log` VALUES (3044, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"58\"}', NULL, 1, '2021-05-27 20:29:39');
INSERT INTO `t_base_log` VALUES (3045, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:41');
INSERT INTO `t_base_log` VALUES (3046, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3047, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3048, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试12\",\"docuId\":\"64\"}', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3049, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试55\",\"docuId\":\"65\"}', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3050, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3051, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:29:51');
INSERT INTO `t_base_log` VALUES (3052, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"46\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:31:08');
INSERT INTO `t_base_log` VALUES (3053, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:31:11');
INSERT INTO `t_base_log` VALUES (3054, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"测试12\",\"docuUse\":\"1\",\"paterId\":\"43\"}', NULL, 1, '2021-05-27 20:31:48');
INSERT INTO `t_base_log` VALUES (3055, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:31:49');
INSERT INTO `t_base_log` VALUES (3056, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3057, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3058, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试23\",\"docuId\":\"67\"}', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3059, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试455\",\"docuId\":\"68\"}', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3060, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3061, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:31:58');
INSERT INTO `t_base_log` VALUES (3062, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:33:40');
INSERT INTO `t_base_log` VALUES (3063, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:33:41');
INSERT INTO `t_base_log` VALUES (3064, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3065, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3066, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试88\",\"docuId\":\"69\"}', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3067, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"上厕所99\",\"docuId\":\"70\"}', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3068, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3069, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:33:54');
INSERT INTO `t_base_log` VALUES (3070, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"59\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:33:58');
INSERT INTO `t_base_log` VALUES (3071, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:34:24');
INSERT INTO `t_base_log` VALUES (3072, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:34:26');
INSERT INTO `t_base_log` VALUES (3073, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:34:27');
INSERT INTO `t_base_log` VALUES (3074, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:34:33');
INSERT INTO `t_base_log` VALUES (3075, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:34:33');
INSERT INTO `t_base_log` VALUES (3076, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"查\",\"docuId\":\"71\"}', NULL, 1, '2021-05-27 20:34:33');
INSERT INTO `t_base_log` VALUES (3077, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:35:48');
INSERT INTO `t_base_log` VALUES (3078, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:35:58');
INSERT INTO `t_base_log` VALUES (3079, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:35:58');
INSERT INTO `t_base_log` VALUES (3080, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试11\",\"docuId\":\"72\"}', NULL, 1, '2021-05-27 20:35:58');
INSERT INTO `t_base_log` VALUES (3081, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试33\",\"docuId\":\"73\"}', NULL, 1, '2021-05-27 20:35:58');
INSERT INTO `t_base_log` VALUES (3082, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:36:00');
INSERT INTO `t_base_log` VALUES (3083, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"66\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:36:09');
INSERT INTO `t_base_log` VALUES (3084, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:38:11');
INSERT INTO `t_base_log` VALUES (3085, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:38:13');
INSERT INTO `t_base_log` VALUES (3086, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:38:26');
INSERT INTO `t_base_log` VALUES (3087, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:38:26');
INSERT INTO `t_base_log` VALUES (3088, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试1111\",\"docuId\":\"74\"}', NULL, 1, '2021-05-27 20:38:26');
INSERT INTO `t_base_log` VALUES (3089, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试2222\",\"docuId\":\"75\"}', NULL, 1, '2021-05-27 20:38:26');
INSERT INTO `t_base_log` VALUES (3090, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:38:28');
INSERT INTO `t_base_log` VALUES (3091, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:49:25');
INSERT INTO `t_base_log` VALUES (3092, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"48\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:49:26');
INSERT INTO `t_base_log` VALUES (3093, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:55:46');
INSERT INTO `t_base_log` VALUES (3094, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:55:48');
INSERT INTO `t_base_log` VALUES (3095, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:58:02');
INSERT INTO `t_base_log` VALUES (3096, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:58:02');
INSERT INTO `t_base_log` VALUES (3097, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuId\":\"77\"}', NULL, 1, '2021-05-27 20:58:02');
INSERT INTO `t_base_log` VALUES (3098, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试1112\",\"docuId\":\"76\"}', NULL, 1, '2021-05-27 20:58:02');
INSERT INTO `t_base_log` VALUES (3099, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"27\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:58:04');
INSERT INTO `t_base_log` VALUES (3100, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:58:59');
INSERT INTO `t_base_log` VALUES (3101, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"43\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:59:00');
INSERT INTO `t_base_log` VALUES (3102, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:59:01');
INSERT INTO `t_base_log` VALUES (3103, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:59:02');
INSERT INTO `t_base_log` VALUES (3104, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 20:59:12');
INSERT INTO `t_base_log` VALUES (3105, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"房产税\",\"docuId\":\"78\"}', NULL, 1, '2021-05-27 20:59:12');
INSERT INTO `t_base_log` VALUES (3106, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:59:14');
INSERT INTO `t_base_log` VALUES (3107, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"44\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 20:59:19');
INSERT INTO `t_base_log` VALUES (3108, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"7d6f\"}', NULL, 1, '2021-05-27 21:09:40');
INSERT INTO `t_base_log` VALUES (3109, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:09:41');
INSERT INTO `t_base_log` VALUES (3110, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:09:43');
INSERT INTO `t_base_log` VALUES (3111, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"我的图片\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-05-27 21:09:53');
INSERT INTO `t_base_log` VALUES (3112, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"我的文件\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-05-27 21:10:02');
INSERT INTO `t_base_log` VALUES (3113, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:10:02');
INSERT INTO `t_base_log` VALUES (3114, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 21:10:11');
INSERT INTO `t_base_log` VALUES (3115, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试123\",\"docuId\":\"81\"}', NULL, 1, '2021-05-27 21:10:11');
INSERT INTO `t_base_log` VALUES (3116, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:10:13');
INSERT INTO `t_base_log` VALUES (3117, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:10:15');
INSERT INTO `t_base_log` VALUES (3118, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:10:24');
INSERT INTO `t_base_log` VALUES (3119, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"qu2q\"}', NULL, 1, '2021-05-27 21:12:35');
INSERT INTO `t_base_log` VALUES (3120, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:12:37');
INSERT INTO `t_base_log` VALUES (3121, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:12:39');
INSERT INTO `t_base_log` VALUES (3122, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"79\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:12:40');
INSERT INTO `t_base_log` VALUES (3123, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:12:40');
INSERT INTO `t_base_log` VALUES (3124, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:12:41');
INSERT INTO `t_base_log` VALUES (3125, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"fyv3\"}', NULL, 1, '2021-05-27 21:14:53');
INSERT INTO `t_base_log` VALUES (3126, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:14:54');
INSERT INTO `t_base_log` VALUES (3127, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:14:55');
INSERT INTO `t_base_log` VALUES (3128, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:14:56');
INSERT INTO `t_base_log` VALUES (3129, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 21:15:31');
INSERT INTO `t_base_log` VALUES (3130, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 21:15:31');
INSERT INTO `t_base_log` VALUES (3131, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"CVC2221\",\"docuId\":\"82\"}', NULL, 1, '2021-05-27 21:15:31');
INSERT INTO `t_base_log` VALUES (3132, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试323\",\"docuId\":\"83\"}', NULL, 1, '2021-05-27 21:15:31');
INSERT INTO `t_base_log` VALUES (3133, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:15:33');
INSERT INTO `t_base_log` VALUES (3134, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:16:23');
INSERT INTO `t_base_log` VALUES (3135, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:17:00');
INSERT INTO `t_base_log` VALUES (3136, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:17:01');
INSERT INTO `t_base_log` VALUES (3137, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:17:07');
INSERT INTO `t_base_log` VALUES (3138, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:17:08');
INSERT INTO `t_base_log` VALUES (3139, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'downloadZips', '打包下载文件', '{\"docuId\":\"80\"}', NULL, 1, '2021-05-27 21:17:09');
INSERT INTO `t_base_log` VALUES (3140, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:17:45');
INSERT INTO `t_base_log` VALUES (3141, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'downloadZips', '打包下载文件', '{\"docuId\":\"80\"}', NULL, 1, '2021-05-27 21:17:47');
INSERT INTO `t_base_log` VALUES (3142, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:18:36');
INSERT INTO `t_base_log` VALUES (3143, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:18:38');
INSERT INTO `t_base_log` VALUES (3144, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"79\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:18:39');
INSERT INTO `t_base_log` VALUES (3145, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:18:39');
INSERT INTO `t_base_log` VALUES (3146, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:19:22');
INSERT INTO `t_base_log` VALUES (3147, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:19:24');
INSERT INTO `t_base_log` VALUES (3148, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:19:25');
INSERT INTO `t_base_log` VALUES (3149, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:19:26');
INSERT INTO `t_base_log` VALUES (3150, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:22:32');
INSERT INTO `t_base_log` VALUES (3151, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:22:33');
INSERT INTO `t_base_log` VALUES (3152, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:23:42');
INSERT INTO `t_base_log` VALUES (3153, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:24:52');
INSERT INTO `t_base_log` VALUES (3154, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:24:53');
INSERT INTO `t_base_log` VALUES (3155, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:10');
INSERT INTO `t_base_log` VALUES (3156, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:11');
INSERT INTO `t_base_log` VALUES (3157, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:23');
INSERT INTO `t_base_log` VALUES (3158, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:23');
INSERT INTO `t_base_log` VALUES (3159, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:58');
INSERT INTO `t_base_log` VALUES (3160, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:26:59');
INSERT INTO `t_base_log` VALUES (3161, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:28:02');
INSERT INTO `t_base_log` VALUES (3162, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:28:02');
INSERT INTO `t_base_log` VALUES (3163, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:28:19');
INSERT INTO `t_base_log` VALUES (3164, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:28:20');
INSERT INTO `t_base_log` VALUES (3165, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:29:09');
INSERT INTO `t_base_log` VALUES (3166, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:29:10');
INSERT INTO `t_base_log` VALUES (3167, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:30:11');
INSERT INTO `t_base_log` VALUES (3168, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:30:12');
INSERT INTO `t_base_log` VALUES (3169, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:32:25');
INSERT INTO `t_base_log` VALUES (3170, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:32:25');
INSERT INTO `t_base_log` VALUES (3171, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:34:07');
INSERT INTO `t_base_log` VALUES (3172, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:34:08');
INSERT INTO `t_base_log` VALUES (3173, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:34:31');
INSERT INTO `t_base_log` VALUES (3174, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:34:32');
INSERT INTO `t_base_log` VALUES (3175, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:37:54');
INSERT INTO `t_base_log` VALUES (3176, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:37:55');
INSERT INTO `t_base_log` VALUES (3177, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:38:29');
INSERT INTO `t_base_log` VALUES (3178, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:38:43');
INSERT INTO `t_base_log` VALUES (3179, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:38:57');
INSERT INTO `t_base_log` VALUES (3180, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:40:33');
INSERT INTO `t_base_log` VALUES (3181, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:40:35');
INSERT INTO `t_base_log` VALUES (3182, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:40:36');
INSERT INTO `t_base_log` VALUES (3183, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:40:37');
INSERT INTO `t_base_log` VALUES (3184, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:41:21');
INSERT INTO `t_base_log` VALUES (3185, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:41:22');
INSERT INTO `t_base_log` VALUES (3186, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:46:27');
INSERT INTO `t_base_log` VALUES (3187, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:49:27');
INSERT INTO `t_base_log` VALUES (3188, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:50:49');
INSERT INTO `t_base_log` VALUES (3189, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:50:50');
INSERT INTO `t_base_log` VALUES (3190, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:51:47');
INSERT INTO `t_base_log` VALUES (3191, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-05-27 21:52:00');
INSERT INTO `t_base_log` VALUES (3192, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试多少\",\"docuId\":\"84\"}', NULL, 1, '2021-05-27 21:52:01');
INSERT INTO `t_base_log` VALUES (3193, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:52:03');
INSERT INTO `t_base_log` VALUES (3194, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"测试多少12\",\"docuId\":\"84\"}', NULL, 1, '2021-05-27 21:52:08');
INSERT INTO `t_base_log` VALUES (3195, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:53:11');
INSERT INTO `t_base_log` VALUES (3196, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"80\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:53:12');
INSERT INTO `t_base_log` VALUES (3197, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:53:22');
INSERT INTO `t_base_log` VALUES (3198, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-05-27 21:53:45');
INSERT INTO `t_base_log` VALUES (3199, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-05-27 21:55:20');
INSERT INTO `t_base_log` VALUES (3200, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"adonis\",\"password\":\"xin\",\"vercode\":\"y7p8\"}', NULL, 1, '2021-06-04 14:58:53');
INSERT INTO `t_base_log` VALUES (3201, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-04 14:58:54');
INSERT INTO `t_base_log` VALUES (3202, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-04 14:58:56');
INSERT INTO `t_base_log` VALUES (3203, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-04 14:59:29');
INSERT INTO `t_base_log` VALUES (3204, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"12\",\"docuId\":\"85\"}', NULL, 1, '2021-06-04 14:59:30');
INSERT INTO `t_base_log` VALUES (3205, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-04 14:59:30');
INSERT INTO `t_base_log` VALUES (3206, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"这是备注内容，赛欧东方红搜IG发撒案例都开始缴费离开\",\"docuId\":\"86\"}', NULL, 1, '2021-06-04 14:59:30');
INSERT INTO `t_base_log` VALUES (3207, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-04 14:59:32');
INSERT INTO `t_base_log` VALUES (3208, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-04 15:03:35');
INSERT INTO `t_base_log` VALUES (3209, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-04 15:03:37');
INSERT INTO `t_base_log` VALUES (3210, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-04 15:08:17');
INSERT INTO `t_base_log` VALUES (3211, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-04 15:08:18');
INSERT INTO `t_base_log` VALUES (3212, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-04 15:09:12');
INSERT INTO `t_base_log` VALUES (3213, 1, 1, '127.0.0.1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-04 15:09:13');
INSERT INTO `t_base_log` VALUES (3214, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"A2pp\"}', NULL, 1, '2021-06-06 11:54:34');
INSERT INTO `t_base_log` VALUES (3215, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 11:54:36');
INSERT INTO `t_base_log` VALUES (3216, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 11:54:40');
INSERT INTO `t_base_log` VALUES (3217, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 11:54:43');
INSERT INTO `t_base_log` VALUES (3218, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-06 11:55:04');
INSERT INTO `t_base_log` VALUES (3219, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 11:55:04');
INSERT INTO `t_base_log` VALUES (3220, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"sw2d\"}', NULL, 1, '2021-06-06 11:55:33');
INSERT INTO `t_base_log` VALUES (3221, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 11:55:34');
INSERT INTO `t_base_log` VALUES (3222, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 11:55:39');
INSERT INTO `t_base_log` VALUES (3223, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"5dfs\"}', NULL, 1, '2021-06-06 11:55:58');
INSERT INTO `t_base_log` VALUES (3224, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 11:56:00');
INSERT INTO `t_base_log` VALUES (3225, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin1\",\"password\":\"123456\",\"vercode\":\"SA77\"}', NULL, 1, '2021-06-06 11:57:24');
INSERT INTO `t_base_log` VALUES (3226, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 11:57:25');
INSERT INTO `t_base_log` VALUES (3227, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 11:57:28');
INSERT INTO `t_base_log` VALUES (3228, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin1\",\"password\":\"123456\",\"vercode\":\"TDZV\"}', NULL, 1, '2021-06-06 12:20:05');
INSERT INTO `t_base_log` VALUES (3229, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 12:20:07');
INSERT INTO `t_base_log` VALUES (3230, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:20:09');
INSERT INTO `t_base_log` VALUES (3231, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-06 12:21:04');
INSERT INTO `t_base_log` VALUES (3232, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:21:06');
INSERT INTO `t_base_log` VALUES (3233, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:21:24');
INSERT INTO `t_base_log` VALUES (3234, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 12:21:40');
INSERT INTO `t_base_log` VALUES (3235, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:21:43');
INSERT INTO `t_base_log` VALUES (3236, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-06 12:23:12');
INSERT INTO `t_base_log` VALUES (3237, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:23:22');
INSERT INTO `t_base_log` VALUES (3238, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin1\",\"password\":\"123456\",\"vercode\":\"ffhj\"}', NULL, 1, '2021-06-06 12:29:47');
INSERT INTO `t_base_log` VALUES (3239, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-06 12:29:48');
INSERT INTO `t_base_log` VALUES (3240, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:29:56');
INSERT INTO `t_base_log` VALUES (3241, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-06 12:30:24');
INSERT INTO `t_base_log` VALUES (3242, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:30:26');
INSERT INTO `t_base_log` VALUES (3243, 1, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-06 12:31:03');
INSERT INTO `t_base_log` VALUES (3244, NULL, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"admin\",\"vercode\":\"GN7Y\"}', NULL, 1, '2021-06-11 15:53:50');
INSERT INTO `t_base_log` VALUES (3245, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"X6ND\"}', NULL, 1, '2021-06-11 15:53:58');
INSERT INTO `t_base_log` VALUES (3246, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 15:53:59');
INSERT INTO `t_base_log` VALUES (3247, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 15:54:25');
INSERT INTO `t_base_log` VALUES (3248, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 15:54:36');
INSERT INTO `t_base_log` VALUES (3249, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"123\",\"docuId\":\"91\"}', NULL, 1, '2021-06-11 15:54:36');
INSERT INTO `t_base_log` VALUES (3250, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 15:54:41');
INSERT INTO `t_base_log` VALUES (3251, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"p3kz\"}', NULL, 1, '2021-06-11 15:55:17');
INSERT INTO `t_base_log` VALUES (3252, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 15:55:19');
INSERT INTO `t_base_log` VALUES (3253, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 15:55:21');
INSERT INTO `t_base_log` VALUES (3254, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 15:58:02');
INSERT INTO `t_base_log` VALUES (3255, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"goodddddd\",\"docuId\":\"92\"}', NULL, 1, '2021-06-11 15:58:02');
INSERT INTO `t_base_log` VALUES (3256, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 15:58:04');
INSERT INTO `t_base_log` VALUES (3257, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"87\"}', NULL, 1, '2021-06-11 15:58:26');
INSERT INTO `t_base_log` VALUES (3258, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"信息收集\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:58:39');
INSERT INTO `t_base_log` VALUES (3259, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"内网渗透\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:58:48');
INSERT INTO `t_base_log` VALUES (3260, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"提权\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:58:56');
INSERT INTO `t_base_log` VALUES (3261, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"漏洞扫描\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:59:02');
INSERT INTO `t_base_log` VALUES (3262, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"POC\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:59:07');
INSERT INTO `t_base_log` VALUES (3263, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"WEBSHELL\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 15:59:27');
INSERT INTO `t_base_log` VALUES (3264, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"93\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:03:14');
INSERT INTO `t_base_log` VALUES (3265, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:03:19');
INSERT INTO `t_base_log` VALUES (3266, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"91\"}', NULL, 1, '2021-06-11 16:03:25');
INSERT INTO `t_base_log` VALUES (3267, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'deleteDocu', '删除文件', '{\"docuId\":\"92\"}', NULL, 1, '2021-06-11 16:03:29');
INSERT INTO `t_base_log` VALUES (3268, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:18:10');
INSERT INTO `t_base_log` VALUES (3269, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 16:25:39');
INSERT INTO `t_base_log` VALUES (3270, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"WVS漏洞扫描\",\"docuId\":\"99\"}', NULL, 1, '2021-06-11 16:25:39');
INSERT INTO `t_base_log` VALUES (3271, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:25:41');
INSERT INTO `t_base_log` VALUES (3272, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:25:54');
INSERT INTO `t_base_log` VALUES (3273, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:03');
INSERT INTO `t_base_log` VALUES (3274, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:04');
INSERT INTO `t_base_log` VALUES (3275, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"93\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:07');
INSERT INTO `t_base_log` VALUES (3276, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:08');
INSERT INTO `t_base_log` VALUES (3277, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 16:34:20');
INSERT INTO `t_base_log` VALUES (3278, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:23');
INSERT INTO `t_base_log` VALUES (3279, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:25');
INSERT INTO `t_base_log` VALUES (3280, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:27');
INSERT INTO `t_base_log` VALUES (3281, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:28');
INSERT INTO `t_base_log` VALUES (3282, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:34:36');
INSERT INTO `t_base_log` VALUES (3283, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"加密解密\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 16:35:50');
INSERT INTO `t_base_log` VALUES (3284, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"反编译\",\"docuUse\":\"1\",\"paterId\":\"0\"}', NULL, 1, '2021-06-11 16:36:05');
INSERT INTO `t_base_log` VALUES (3285, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:36:07');
INSERT INTO `t_base_log` VALUES (3286, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:36:08');
INSERT INTO `t_base_log` VALUES (3287, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:36:10');
INSERT INTO `t_base_log` VALUES (3288, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:36:12');
INSERT INTO `t_base_log` VALUES (3289, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:54:22');
INSERT INTO `t_base_log` VALUES (3290, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:57:20');
INSERT INTO `t_base_log` VALUES (3291, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:57:21');
INSERT INTO `t_base_log` VALUES (3292, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:57:23');
INSERT INTO `t_base_log` VALUES (3293, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 16:57:38');
INSERT INTO `t_base_log` VALUES (3294, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"谷歌浏览器\",\"docuId\":\"102\"}', NULL, 1, '2021-06-11 16:57:38');
INSERT INTO `t_base_log` VALUES (3295, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 16:57:40');
INSERT INTO `t_base_log` VALUES (3296, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 16:58:31');
INSERT INTO `t_base_log` VALUES (3297, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 16:59:20');
INSERT INTO `t_base_log` VALUES (3298, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 16:59:22');
INSERT INTO `t_base_log` VALUES (3299, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:00:15');
INSERT INTO `t_base_log` VALUES (3300, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"6UXC\"}', NULL, 1, '2021-06-11 17:01:01');
INSERT INTO `t_base_log` VALUES (3301, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:01:02');
INSERT INTO `t_base_log` VALUES (3302, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"248v\"}', NULL, 1, '2021-06-11 17:02:49');
INSERT INTO `t_base_log` VALUES (3303, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:02:50');
INSERT INTO `t_base_log` VALUES (3304, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:02:55');
INSERT INTO `t_base_log` VALUES (3305, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:02:57');
INSERT INTO `t_base_log` VALUES (3306, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:02:59');
INSERT INTO `t_base_log` VALUES (3307, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:03:00');
INSERT INTO `t_base_log` VALUES (3308, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:03:01');
INSERT INTO `t_base_log` VALUES (3309, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:03:03');
INSERT INTO `t_base_log` VALUES (3310, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 17:03:32');
INSERT INTO `t_base_log` VALUES (3311, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"漏洞扫描工具\",\"docuId\":\"103\"}', NULL, 1, '2021-06-11 17:03:32');
INSERT INTO `t_base_log` VALUES (3312, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:03:34');
INSERT INTO `t_base_log` VALUES (3313, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"漏洞扫描工具12345\",\"docuId\":\"103\"}', NULL, 1, '2021-06-11 17:03:42');
INSERT INTO `t_base_log` VALUES (3314, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:03:45');
INSERT INTO `t_base_log` VALUES (3315, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:03:51');
INSERT INTO `t_base_log` VALUES (3316, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:09:56');
INSERT INTO `t_base_log` VALUES (3317, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:09:58');
INSERT INTO `t_base_log` VALUES (3318, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:10:22');
INSERT INTO `t_base_log` VALUES (3319, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"92rq\"}', NULL, 1, '2021-06-11 17:11:00');
INSERT INTO `t_base_log` VALUES (3320, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:11:01');
INSERT INTO `t_base_log` VALUES (3321, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"NGWD\"}', NULL, 1, '2021-06-11 17:11:49');
INSERT INTO `t_base_log` VALUES (3322, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:11:50');
INSERT INTO `t_base_log` VALUES (3323, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:12:20');
INSERT INTO `t_base_log` VALUES (3324, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:12:52');
INSERT INTO `t_base_log` VALUES (3325, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:12:59');
INSERT INTO `t_base_log` VALUES (3326, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"100\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:13:00');
INSERT INTO `t_base_log` VALUES (3327, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:13:01');
INSERT INTO `t_base_log` VALUES (3328, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:13:02');
INSERT INTO `t_base_log` VALUES (3329, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:13:04');
INSERT INTO `t_base_log` VALUES (3330, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:13:05');
INSERT INTO `t_base_log` VALUES (3331, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:16:42');
INSERT INTO `t_base_log` VALUES (3332, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:16:53');
INSERT INTO `t_base_log` VALUES (3333, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:20');
INSERT INTO `t_base_log` VALUES (3334, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:28:22');
INSERT INTO `t_base_log` VALUES (3335, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:38');
INSERT INTO `t_base_log` VALUES (3336, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:39');
INSERT INTO `t_base_log` VALUES (3337, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:41');
INSERT INTO `t_base_log` VALUES (3338, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:42');
INSERT INTO `t_base_log` VALUES (3339, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:43');
INSERT INTO `t_base_log` VALUES (3340, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:28:49');
INSERT INTO `t_base_log` VALUES (3341, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 17:29:47');
INSERT INTO `t_base_log` VALUES (3342, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"远程命令执行漏洞，直接可以获取权限\",\"docuId\":\"104\"}', NULL, 1, '2021-06-11 17:29:47');
INSERT INTO `t_base_log` VALUES (3343, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:29:49');
INSERT INTO `t_base_log` VALUES (3344, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"struts2\",\"docuUse\":\"1\",\"paterId\":\"97\"}', NULL, 1, '2021-06-11 17:30:02');
INSERT INTO `t_base_log` VALUES (3345, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"tomcat\",\"docuUse\":\"1\",\"paterId\":\"97\"}', NULL, 1, '2021-06-11 17:30:08');
INSERT INTO `t_base_log` VALUES (3346, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"数据库漏洞\",\"docuUse\":\"1\",\"paterId\":\"97\"}', NULL, 1, '2021-06-11 17:30:20');
INSERT INTO `t_base_log` VALUES (3347, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"weblogic\",\"docuUse\":\"1\",\"paterId\":\"97\"}', NULL, 1, '2021-06-11 17:30:31');
INSERT INTO `t_base_log` VALUES (3348, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"json\",\"docuUse\":\"1\",\"paterId\":\"97\"}', NULL, 1, '2021-06-11 17:31:12');
INSERT INTO `t_base_log` VALUES (3349, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:15');
INSERT INTO `t_base_log` VALUES (3350, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:16');
INSERT INTO `t_base_log` VALUES (3351, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"109\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:16');
INSERT INTO `t_base_log` VALUES (3352, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:17');
INSERT INTO `t_base_log` VALUES (3353, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:21');
INSERT INTO `t_base_log` VALUES (3354, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:31:22');
INSERT INTO `t_base_log` VALUES (3355, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"jsp\",\"docuUse\":\"1\",\"paterId\":\"98\"}', NULL, 1, '2021-06-11 17:31:28');
INSERT INTO `t_base_log` VALUES (3356, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"asp\",\"docuUse\":\"1\",\"paterId\":\"98\"}', NULL, 1, '2021-06-11 17:31:34');
INSERT INTO `t_base_log` VALUES (3357, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"aspx\",\"docuUse\":\"1\",\"paterId\":\"98\"}', NULL, 1, '2021-06-11 17:31:39');
INSERT INTO `t_base_log` VALUES (3358, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"php\",\"docuUse\":\"1\",\"paterId\":\"98\"}', NULL, 1, '2021-06-11 17:31:44');
INSERT INTO `t_base_log` VALUES (3359, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFolder', '创建文件夹', '{\"docuName\":\"war\",\"docuUse\":\"1\",\"paterId\":\"98\"}', NULL, 1, '2021-06-11 17:31:49');
INSERT INTO `t_base_log` VALUES (3360, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:11');
INSERT INTO `t_base_log` VALUES (3361, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:14');
INSERT INTO `t_base_log` VALUES (3362, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:28');
INSERT INTO `t_base_log` VALUES (3363, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:47');
INSERT INTO `t_base_log` VALUES (3364, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:49');
INSERT INTO `t_base_log` VALUES (3365, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:50');
INSERT INTO `t_base_log` VALUES (3366, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:51');
INSERT INTO `t_base_log` VALUES (3367, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"95\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:53');
INSERT INTO `t_base_log` VALUES (3368, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:54');
INSERT INTO `t_base_log` VALUES (3369, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"93\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:55');
INSERT INTO `t_base_log` VALUES (3370, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:32:56');
INSERT INTO `t_base_log` VALUES (3371, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:09');
INSERT INTO `t_base_log` VALUES (3372, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"100\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:10');
INSERT INTO `t_base_log` VALUES (3373, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:12');
INSERT INTO `t_base_log` VALUES (3374, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:13');
INSERT INTO `t_base_log` VALUES (3375, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"105\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:14');
INSERT INTO `t_base_log` VALUES (3376, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:15');
INSERT INTO `t_base_log` VALUES (3377, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:33:16');
INSERT INTO `t_base_log` VALUES (3378, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:33:39');
INSERT INTO `t_base_log` VALUES (3379, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:35:24');
INSERT INTO `t_base_log` VALUES (3380, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthAccountController', 'logon', '登录验证', '{\"account\":\"admin\",\"password\":\"123456\",\"vercode\":\"E2D7\"}', NULL, 1, '2021-06-11 17:36:11');
INSERT INTO `t_base_log` VALUES (3381, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.HomeController', 'index', '查看主页面', '', NULL, 1, '2021-06-11 17:36:12');
INSERT INTO `t_base_log` VALUES (3382, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.auth.AuthUserController', 'list', '查看用户信息', '', NULL, 1, '2021-06-11 17:36:15');
INSERT INTO `t_base_log` VALUES (3383, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:36:20');
INSERT INTO `t_base_log` VALUES (3384, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:36:24');
INSERT INTO `t_base_log` VALUES (3385, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'insertFile', '上传文件', '', NULL, 1, '2021-06-11 17:36:45');
INSERT INTO `t_base_log` VALUES (3386, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateDesc', '修改文件描述内容', '{\"docuDesc\":\"testesttets\",\"docuId\":\"115\"}', NULL, 1, '2021-06-11 17:36:45');
INSERT INTO `t_base_log` VALUES (3387, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:36:47');
INSERT INTO `t_base_log` VALUES (3388, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:37:14');
INSERT INTO `t_base_log` VALUES (3389, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"94\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:37:28');
INSERT INTO `t_base_log` VALUES (3390, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:37:30');
INSERT INTO `t_base_log` VALUES (3391, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:39:47');
INSERT INTO `t_base_log` VALUES (3392, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:31');
INSERT INTO `t_base_log` VALUES (3393, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"95\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:38');
INSERT INTO `t_base_log` VALUES (3394, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:40');
INSERT INTO `t_base_log` VALUES (3395, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:41');
INSERT INTO `t_base_log` VALUES (3396, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"114\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:43');
INSERT INTO `t_base_log` VALUES (3397, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"98\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:40:45');
INSERT INTO `t_base_log` VALUES (3398, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:13');
INSERT INTO `t_base_log` VALUES (3399, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:18');
INSERT INTO `t_base_log` VALUES (3400, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:20');
INSERT INTO `t_base_log` VALUES (3401, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:26');
INSERT INTO `t_base_log` VALUES (3402, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"101\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:34');
INSERT INTO `t_base_log` VALUES (3403, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:35');
INSERT INTO `t_base_log` VALUES (3404, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"100\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:36');
INSERT INTO `t_base_log` VALUES (3405, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:41');
INSERT INTO `t_base_log` VALUES (3406, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:46');
INSERT INTO `t_base_log` VALUES (3407, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"100\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:41:49');
INSERT INTO `t_base_log` VALUES (3408, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"100\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:42:16');
INSERT INTO `t_base_log` VALUES (3409, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:42:17');
INSERT INTO `t_base_log` VALUES (3410, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"96\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:42:18');
INSERT INTO `t_base_log` VALUES (3411, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:42:31');
INSERT INTO `t_base_log` VALUES (3412, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"97\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:57:07');
INSERT INTO `t_base_log` VALUES (3413, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:57:09');
INSERT INTO `t_base_log` VALUES (3414, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"93\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:57:11');
INSERT INTO `t_base_log` VALUES (3415, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'findAllChild', '文件管理', '{\"docuId\":\"0\",\"docuUse\":\"1\",\"sortMode\":\"1\"}', NULL, 1, '2021-06-11 17:58:36');
INSERT INTO `t_base_log` VALUES (3416, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"98\",\"docuName\":\"test1\"}', NULL, 1, '2021-06-11 17:58:50');
INSERT INTO `t_base_log` VALUES (3417, 2, 1, '0:0:0:0:0:0:0:1', 'com.cn.adonis.controller.file.FileDocuController', 'updateName', '文件重命名', '{\"docuId\":\"97\",\"docuName\":\"12321\"}', NULL, 1, '2021-06-11 17:58:55');

-- ----------------------------
-- Table structure for t_file_docu
-- ----------------------------
DROP TABLE IF EXISTS `t_file_docu`;
CREATE TABLE `t_file_docu`  (
  `docuID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件信息表',
  `docuUse` tinyint(4) NULL DEFAULT NULL COMMENT '文件用途（1私人文件，2共享文件）',
  `paterID` bigint(20) NULL DEFAULT NULL COMMENT '父级编号',
  `typeID` bigint(20) NULL DEFAULT NULL COMMENT '文件类型编号',
  `docuName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `docuPath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `localPath` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本地目录',
  `docuSuffix` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `docuSize` bigint(20) NULL DEFAULT NULL COMMENT '文件大小（KB）',
  `docuSizeUnit` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小与单位',
  `childCount` int(11) NULL DEFAULT NULL COMMENT '子目录文件数量',
  `downloadCount` int(11) NULL DEFAULT NULL COMMENT '下载次数',
  `docuDesc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述内容',
  `lastUpdateTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后更改时间',
  `lastUpdateUser` bigint(20) NULL DEFAULT NULL COMMENT '最后更改用户',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT 0 COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`docuID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_file_docu
-- ----------------------------
INSERT INTO `t_file_docu` VALUES (79, 1, 0, 1, '我的图片', NULL, 'docu', NULL, NULL, NULL, 0, NULL, NULL, '2021-05-27 21:09:53', NULL, '2021-05-27 21:09:53', 1, 1);
INSERT INTO `t_file_docu` VALUES (80, 1, 0, 1, '我的文件', NULL, 'docu', NULL, NULL, NULL, 3, NULL, NULL, '2021-05-27 21:15:31', NULL, '2021-05-27 21:10:02', 1, 1);
INSERT INTO `t_file_docu` VALUES (81, 1, 80, 8, 'QQ图片20210527185751.png', 'F:/layui/_Docu/1/1622121018954.png', 'docu/我的文件', 'png', 43637, '42.61K', NULL, 2, '测试123', '2021-05-27 21:17:47', NULL, '2021-05-27 21:10:11', 1, 1);
INSERT INTO `t_file_docu` VALUES (82, 1, 80, 5, '佛山市三江职业技术学校数字校园服务清单(2).xls', 'F:/layui/_Docu/1/1622121338875.xls', 'docu/我的文件', 'xls', 25088, '24.50K', NULL, 2, 'CVC2221', '2021-05-27 21:17:47', NULL, '2021-05-27 21:15:31', 1, 1);
INSERT INTO `t_file_docu` VALUES (83, 1, 80, 4, '广东校云通教育科技有限公司智慧校园云平台系统--不符合项汇总表-0814(1)(1).docx', 'F:/layui/_Docu/1/1622121338875.docx', 'docu/我的文件', 'docx', 85414, '83.41K', NULL, 2, '测试323', '2021-05-27 21:17:47', NULL, '2021-05-27 21:15:31', 1, 1);
INSERT INTO `t_file_docu` VALUES (84, 1, 0, 8, '微信图片_20210519093038.png', 'F:/layui/_Docu/1/1622123528392.png', 'docu', 'png', 28492, '27.82K', NULL, 0, '测试多少12', '2021-05-27 21:52:08', NULL, '2021-05-27 21:52:00', 1, 1);
INSERT INTO `t_file_docu` VALUES (85, 1, 0, 7, '人脸识别一体机Http接口协议V1.35.pdf', 'F:/layui/_Docu/1/1622789978369.pdf', 'docu', 'pdf', 5656939, '5.39M', NULL, 0, '12', '2021-06-04 14:59:30', NULL, '2021-06-04 14:59:29', 1, 1);
INSERT INTO `t_file_docu` VALUES (86, 1, 0, 7, '人脸识别一体机MQTT协议V1.25.pdf', 'F:/layui/_Docu/1/1622789979485.pdf', 'docu', 'pdf', 2376433, '2.27M', NULL, 0, '这是备注内容，赛欧东方红搜IG发撒案例都开始缴费离开', '2021-06-04 14:59:30', NULL, '2021-06-04 14:59:30', 1, 1);
INSERT INTO `t_file_docu` VALUES (87, 1, 0, 2, '7z1900-x64.exe', '/layui_file/upload/docu/2/1622951704796.exe', 'docu', 'exe', 1447178, '1.38M', NULL, 0, NULL, '2021-06-11 15:58:26', 2, '2021-06-06 11:55:04', 2, 0);
INSERT INTO `t_file_docu` VALUES (88, 1, 0, 2, '7z1900-x64(1).exe', '/layui_file/upload/docu/1/1622953264745.exe', 'docu', 'exe', 1447178, '1.38M', NULL, 0, NULL, '2021-06-06 12:21:04', NULL, '2021-06-06 12:21:04', 1, 1);
INSERT INTO `t_file_docu` VALUES (89, 1, 0, 2, 'ChromeSetup.exe', '/layui_file/upload/docu/1/1622953392931.exe', 'docu', 'exe', 1310832, '1.25M', NULL, 0, NULL, '2021-06-06 12:23:12', NULL, '2021-06-06 12:23:12', 1, 1);
INSERT INTO `t_file_docu` VALUES (90, 1, 0, 10, '文件管理系统源码1.0.1.rar', '/layui_file/upload/docu/1/1622953824264.rar', 'docu', 'rar', 41146772, '39.24M', NULL, 0, NULL, '2021-06-06 12:30:24', NULL, '2021-06-06 12:30:24', 1, 1);
INSERT INTO `t_file_docu` VALUES (91, 1, 0, 2, 'ChromeSetup(1).exe', 'null2/1623398076499.exe', 'docu', 'exe', 1310832, '1.25M', NULL, 0, '123', '2021-06-11 16:03:25', 2, '2021-06-11 15:54:36', 2, 0);
INSERT INTO `t_file_docu` VALUES (92, 1, 0, 2, 'TongYongPe_V10.0.7.9.exe', 'null2/1623398282578.exe', 'docu', 'exe', 18365440, '17.51M', NULL, 0, 'goodddddd', '2021-06-11 16:03:29', 2, '2021-06-11 15:58:02', 2, 0);
INSERT INTO `t_file_docu` VALUES (93, 1, 0, 1, '信息收集', NULL, 'docu', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 15:58:39', NULL, '2021-06-11 15:58:39', 2, 1);
INSERT INTO `t_file_docu` VALUES (94, 1, 0, 1, '内网渗透', NULL, 'docu', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 15:58:48', NULL, '2021-06-11 15:58:48', 2, 1);
INSERT INTO `t_file_docu` VALUES (95, 1, 0, 1, '提权', NULL, 'docu', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 15:58:56', NULL, '2021-06-11 15:58:56', 2, 1);
INSERT INTO `t_file_docu` VALUES (96, 1, 0, 1, '漏洞扫描', NULL, 'docu', NULL, NULL, NULL, 1, NULL, NULL, '2021-06-11 17:03:32', NULL, '2021-06-11 15:59:02', 2, 1);
INSERT INTO `t_file_docu` VALUES (97, 1, 0, 1, '12321', NULL, 'docu', NULL, NULL, NULL, 6, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 15:59:07', 2, 1);
INSERT INTO `t_file_docu` VALUES (98, 1, 0, 1, 'test1', NULL, 'docu', NULL, NULL, NULL, 7, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 15:59:27', 2, 1);
INSERT INTO `t_file_docu` VALUES (99, 1, 98, 2, '1622084666531.exe', 'null2/1623399939145.exe', 'docu/test1', 'exe', 1310832, '1.25M', NULL, 0, 'WVS漏洞扫描', '2021-06-11 17:58:50', NULL, '2021-06-11 16:25:39', 2, 1);
INSERT INTO `t_file_docu` VALUES (100, 1, 0, 1, '加密解密', NULL, 'docu', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 16:35:50', NULL, '2021-06-11 16:35:50', 2, 1);
INSERT INTO `t_file_docu` VALUES (101, 1, 0, 1, '反编译', NULL, 'docu', NULL, NULL, NULL, 1, NULL, NULL, '2021-06-11 16:57:38', NULL, '2021-06-11 16:36:05', 2, 1);
INSERT INTO `t_file_docu` VALUES (102, 1, 101, 2, 'ChromeSetup.exe', 'null2/1623401858397.exe', 'docu/反编译', 'exe', 1310832, '1.25M', NULL, 0, '谷歌浏览器', '2021-06-11 16:57:38', NULL, '2021-06-11 16:57:38', 2, 1);
INSERT INTO `t_file_docu` VALUES (103, 1, 96, 2, 'wvs漏洞扫描.exe', 'null2/1623402212489.exe', 'docu/漏洞扫描', 'exe', 1310832, '1.25M', NULL, 0, '漏洞扫描工具12345', '2021-06-11 17:03:42', NULL, '2021-06-11 17:03:32', 2, 1);
INSERT INTO `t_file_docu` VALUES (104, 1, 97, 2, 'struts2漏洞利用工具.exe', 'null2/1623403787455.exe', 'docu/12321', 'exe', 1310832, '1.25M', NULL, 0, '远程命令执行漏洞，直接可以获取权限', '2021-06-11 17:58:55', NULL, '2021-06-11 17:29:47', 2, 1);
INSERT INTO `t_file_docu` VALUES (105, 1, 97, 1, 'struts2', NULL, 'docu/12321', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 17:30:02', 2, 1);
INSERT INTO `t_file_docu` VALUES (106, 1, 97, 1, 'tomcat', NULL, 'docu/12321', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 17:30:08', 2, 1);
INSERT INTO `t_file_docu` VALUES (107, 1, 97, 1, '数据库漏洞', NULL, 'docu/12321', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 17:30:20', 2, 1);
INSERT INTO `t_file_docu` VALUES (108, 1, 97, 1, 'weblogic', NULL, 'docu/12321', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 17:30:31', 2, 1);
INSERT INTO `t_file_docu` VALUES (109, 1, 97, 1, 'json', NULL, 'docu/12321', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:55', NULL, '2021-06-11 17:31:12', 2, 1);
INSERT INTO `t_file_docu` VALUES (110, 1, 98, 1, 'jsp', NULL, 'docu/test1', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 17:31:28', 2, 1);
INSERT INTO `t_file_docu` VALUES (111, 1, 98, 1, 'asp', NULL, 'docu/test1', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 17:31:34', 2, 1);
INSERT INTO `t_file_docu` VALUES (112, 1, 98, 1, 'aspx', NULL, 'docu/test1', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 17:31:39', 2, 1);
INSERT INTO `t_file_docu` VALUES (113, 1, 98, 1, 'php', NULL, 'docu/test1', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 17:31:44', 2, 1);
INSERT INTO `t_file_docu` VALUES (114, 1, 98, 1, 'war', NULL, 'docu/test1', NULL, NULL, NULL, 0, NULL, NULL, '2021-06-11 17:58:50', NULL, '2021-06-11 17:31:49', 2, 1);
INSERT INTO `t_file_docu` VALUES (115, 1, 98, 2, 'ChromeSetup.exe', 'null2/1623404205743.exe', 'docu/test1', 'exe', 1310832, '1.25M', NULL, 0, 'testesttets', '2021-06-11 17:58:50', NULL, '2021-06-11 17:36:45', 2, 1);

-- ----------------------------
-- Table structure for t_file_type
-- ----------------------------
DROP TABLE IF EXISTS `t_file_type`;
CREATE TABLE `t_file_type`  (
  `typeID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件类型表',
  `typeKey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型公共字符',
  `typeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `browseMode` tinyint(4) NULL DEFAULT NULL COMMENT '浏览方式',
  `typeIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型图标',
  `typeIcong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`typeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_file_type
-- ----------------------------
INSERT INTO `t_file_type` VALUES (1, '0', '文件夹', 0, '/layui_file/document/docu/icon/folder.gif', '/layui_file/document/docu/icong/folder.png');
INSERT INTO `t_file_type` VALUES (2, '0', '其它文件', 3, '/layui_file/document/docu/icon/txt.png', '/layui_file/document/docu/icong/txt.png');
INSERT INTO `t_file_type` VALUES (3, 'txt', '文本文档', 1, '/layui_file/document/docu/icon/txt.png', '/layui_file/document/docu/icong/txt.png');
INSERT INTO `t_file_type` VALUES (4, 'doc,docx,dot,dotx,docm,dotm', 'word文档', 1, '/layui_file/document/docu/icon/doc.png', '/layui_file/document/docu/icong/doc.png');
INSERT INTO `t_file_type` VALUES (5, 'xls,xlsx,xlsm,xltx,xltm,xlsb,xlam', 'excel文档', 1, '/layui_file/document/docu/icon/excel.png', '/layui_file/document/docu/icong/excel.png');
INSERT INTO `t_file_type` VALUES (6, 'ppt,pptx,pptm,ppsx,ppsx,potx,potm', 'ppt文档', 1, '/layui_file/document/docu/icon/ppt.png', '/layui_file/document/docu/icong/ppt.png');
INSERT INTO `t_file_type` VALUES (7, 'pdf', 'pdf文档', 2, '/layui_file/document/docu/icon/pdf.png', '/layui_file/document/docu/icong/pdf.png');
INSERT INTO `t_file_type` VALUES (8, 'bmp,dib,gif,jfif,jpe,jpeg,jpg,png,tif,tiff,ico', '图片', 3, '/layui_file/document/docu/icon/pic.png', '/layui_file/document/docu/icong/pic.png');
INSERT INTO `t_file_type` VALUES (9, 'avi,rmvb,rm,asf,divx,mpg,mov,mpeg,mpe,wmv,mp4,mkv,vob', '视频', 3, '/layui_file/document/docu/icon/video.png', '/layui_file/document/docu/icong/video.png');
INSERT INTO `t_file_type` VALUES (10, 'rar,zip,7z,cab,arj,lzh,tar,gz,ace,uue,bz2,jar,iso,mpq', '压缩包', 0, '/layui_file/document/docu/icon/zip.png', '/layui_file/document/docu/icong/zip.png');

-- ----------------------------
-- Table structure for t_ligent_const
-- ----------------------------
DROP TABLE IF EXISTS `t_ligent_const`;
CREATE TABLE `t_ligent_const`  (
  `constID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '常量信息管理',
  `constKey` int(11) NULL DEFAULT NULL COMMENT '常量唯一标志码(禁止修改)',
  `constName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量名称',
  `constValue` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量值',
  `valueType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值类型',
  `constSort` int(11) NULL DEFAULT NULL COMMENT '常量排序',
  `isFixed` tinyint(4) NULL DEFAULT 0 COMMENT '是否固定（1固定，0可修改）',
  `used` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用过的存储过程',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`constID`) USING BTREE,
  UNIQUE INDEX `constKey`(`constKey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_ligent_const
-- ----------------------------
INSERT INTO `t_ligent_const` VALUES (1, 1001, '后台注册默认的角色编号', '2', 'int', 1, 0, 'p_auth_account_register', 1);
INSERT INTO `t_ligent_const` VALUES (2, 1002, '新增角色时默认分配的菜单', '1', 'int', 2, 0, 'p_auth_role_insert', 1);
INSERT INTO `t_ligent_const` VALUES (3, 1003, '回话过期时间（分钟）', '60', 'int', 3, 0, 'p_ligent_login_handle', 1);
INSERT INTO `t_ligent_const` VALUES (4, 1004, '后台分页默认每页几条数据', '10', 'int', 4, 0, 'p_sys_getPageSize', 1);
INSERT INTO `t_ligent_const` VALUES (5, 1005, '一天输入密保最大错误次数', '3', 'int', 5, 0, 'p_auth_secret_verify', 1);
INSERT INTO `t_ligent_const` VALUES (6, 1006, '添加客户拜访申请单审核开关', '1', 'int', 6, 0, 'p_task_visit_insert', 1);
INSERT INTO `t_ligent_const` VALUES (7, 1007, '高级管理员角色编号', '1', 'int', 7, 0, 'p_sys_findUserPosition', 1);
INSERT INTO `t_ligent_const` VALUES (8, 1008, '管理员角色编号', '2', 'int', 8, 0, 'p_sys_findUserPosition', 1);
INSERT INTO `t_ligent_const` VALUES (9, 1009, '初始密码', '6286839B1C4E32D6DF8A0C21A7C843E9', 'string', 10, 0, 'p_auth_user_insert、p_auth_user_leading', 1);
INSERT INTO `t_ligent_const` VALUES (10, 3001, '总经办角色编号', '3', 'int', 9, 0, 'p_sys_isGeneralManager', 1);
INSERT INTO `t_ligent_const` VALUES (11, 4001, '是否启动登录页面验证码（1启动，0不启动）', '1', 'int', 11, 0, NULL, 1);
INSERT INTO `t_ligent_const` VALUES (12, 2001, '默认头像', 'upload/user/10011037.jpg', 'string', 12, 0, NULL, 1);
INSERT INTO `t_ligent_const` VALUES (13, 2002, '系统路径', 'https://docu.xyt008.com/', 'string', 13, 0, NULL, 1);

-- ----------------------------
-- Table structure for t_ligent_file
-- ----------------------------
DROP TABLE IF EXISTS `t_ligent_file`;
CREATE TABLE `t_ligent_file`  (
  `fileID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件信息表',
  `fileUse` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件用途（后台实体类）',
  `typeID` tinyint(4) NULL DEFAULT NULL COMMENT '文件类型编号',
  `fileTitle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件标题',
  `filePath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `createTime` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `createUserID` bigint(20) NULL DEFAULT 0 COMMENT '创建人编号',
  `isValid` tinyint(4) NULL DEFAULT 1 COMMENT '是否有效(1有效数据，0无效数据)',
  PRIMARY KEY (`fileID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_ligent_file
-- ----------------------------
INSERT INTO `t_ligent_file` VALUES (1, 'mail', 1, '1577092501.png', 'http://localhost/upload/mail/1584091595654.png', '2020-03-13 17:23:10', 1, 1);
INSERT INTO `t_ligent_file` VALUES (2, 'mail', 1, '1577092501.png', 'http://localhost/upload/mail/1584092472747.png', '2020-03-13 17:37:03', 1, 1);
INSERT INTO `t_ligent_file` VALUES (3, 'mail', 1, '20200311145320.jpg', 'http://localhost/upload/mail/1584092554383.jpg', '2020-03-13 17:38:26', 1, 1);
INSERT INTO `t_ligent_file` VALUES (4, 'mail', 1, '20200311145320.jpg', 'http://localhost/upload/mail/1584092972086.jpg', '2020-03-13 17:45:23', 1, 1);
INSERT INTO `t_ligent_file` VALUES (5, 'mail', 1, '1577092501.png', 'http://localhost/upload/mail/1584093159128.png', '2020-03-13 17:48:29', 1, 1);
INSERT INTO `t_ligent_file` VALUES (6, 'mail', 1, '1577092501.png', 'http://localhost/upload/mail/1584093265403.png', '2020-03-13 17:50:16', 1, 1);
INSERT INTO `t_ligent_file` VALUES (7, 'mail', 1, 'download-device.png', 'http://localhost/upload/mail/1584146912650.png', '2020-03-14 08:44:20', 1, 1);
INSERT INTO `t_ligent_file` VALUES (8, 'mail', 1, '1577092501.png', 'http://localhost/upload/mail/1584146979050.png', '2020-03-14 08:45:26', 1, 1);
INSERT INTO `t_ligent_file` VALUES (9, 'mail', 1, '20200311145320.jpg', 'http://localhost/upload/mail/1584152242249.jpg', '2020-03-14 10:13:10', 1, 1);
INSERT INTO `t_ligent_file` VALUES (10, 'chat', 1, '校云通校信接口说明文档(V0.4.0).docx', 'http://localhost/upload/chat/1585204632367.docx', '2020-03-26 14:35:52', 1, 1);
INSERT INTO `t_ligent_file` VALUES (11, 'chat', 1, 'img01.sogoucdn.com.jpg', 'http://localhost/upload/chat/1585204665181.jpg', '2020-03-26 14:36:25', 2, 1);
INSERT INTO `t_ligent_file` VALUES (12, 'chat', 1, 'img01.sogoucdn.com.jpg', 'http://localhost/upload/chat/1585204805869.jpg', '2020-03-26 14:38:45', 1, 1);
INSERT INTO `t_ligent_file` VALUES (13, 'chat', 7, '微信图片_20200304172917.jpg', 'http://localhost/upload/chat/1585207177564.jpg', '2020-03-26 15:18:17', 1, 1);
INSERT INTO `t_ligent_file` VALUES (14, 'mail', 7, '1577092501.png', 'http://localhost/upload/mail/1585207242133.png', '2020-03-26 15:19:22', 1, 1);
INSERT INTO `t_ligent_file` VALUES (15, 'chat', 7, '微信图片_20200108153355.jpg', 'http://localhost/upload/chat/message/1586597346503.jpg', '2020-04-11 17:28:52', 3, 1);
INSERT INTO `t_ligent_file` VALUES (16, 'chat', 7, '5cd8dda46d737.gif', 'http://localhost/upload/chat/message/1587627198581.gif', '2020-04-23 15:32:49', 1, 1);
INSERT INTO `t_ligent_file` VALUES (17, 'chat', 7, 'img01.sogoucdn.com.jpg', 'http://localhost/upload/chat/message/1587627253253.jpg', '2020-04-23 15:33:44', 1, 1);
INSERT INTO `t_ligent_file` VALUES (18, 'chat', 8, '微信图片_20200605183525.jpg', 'http://localhost/upload/chat/message/1593530664131.jpg', '2020-06-30 23:24:25', 2, 1);
INSERT INTO `t_ligent_file` VALUES (19, 'chat', 8, '头像.jpg', 'http://layim.oiio.xin/upload/chat/message/1608886768770.jpg', '2020-12-25 16:59:29', 1, 1);
INSERT INTO `t_ligent_file` VALUES (20, 'chat', 8, '头像.jpg', 'http://layim.oiio.xin/upload/chat/message/1608887034903.jpg', '2020-12-25 17:03:55', 1, 1);
INSERT INTO `t_ligent_file` VALUES (21, 'chat', 5, '借款记录003.xlsx', 'http://layim.oiio.xin/upload/chat/message/1608887073270.xlsx', '2020-12-25 17:04:33', 1, 1);
INSERT INTO `t_ligent_file` VALUES (22, 'chat', 8, '头像.jpg', 'http://layim.oiio.xin/upload/chat/message/1608887444184.jpg', '2020-12-25 17:10:44', 1, 1);
INSERT INTO `t_ligent_file` VALUES (23, 'chat', 4, 'websocket-API-HM.doc', 'http://layim.oiio.xin/upload/chat/message/1608887471481.doc', '2020-12-25 17:11:11', 2, 1);
INSERT INTO `t_ligent_file` VALUES (24, 'chat', 8, 'u=3470666798,2451231886&fm=26&gp=0 - 副本.jpg', 'http://layim.oiio.xin/upload/chat/message/1608902740489.jpg', '2020-12-25 21:25:40', 1, 1);
INSERT INTO `t_ligent_file` VALUES (25, 'chat', 3, 'aa.txt', 'http://layim.oiio.xin/upload/chat/message/1609726914692.txt', '2021-01-04 10:21:54', 1, 1);
INSERT INTO `t_ligent_file` VALUES (26, 'chat', NULL, 'WriteServer.class', 'http://layim.oiio.xin/upload/chat/message/1609751558880.class', '2021-01-04 17:12:38', 1, 1);
INSERT INTO `t_ligent_file` VALUES (27, 'chat', 8, '201211补青201130+34.5=122.9.jpg', 'http://localhost/upload/chat/message/1609764219711.jpg', '2021-01-04 20:43:38', 1, 1);
INSERT INTO `t_ligent_file` VALUES (28, 'chat', 4, '日系女装.docx', 'http://localhost/upload/chat/message/1609764245315.docx', '2021-01-04 20:44:03', 1, 1);
INSERT INTO `t_ligent_file` VALUES (29, 'chat', 8, '微信图片_20210108140211.jpg', 'http://layim.oiio.xin/upload/chat/message/1612165690695.jpg', '2021-02-01 15:48:10', 1, 1);
INSERT INTO `t_ligent_file` VALUES (30, 'chat', 8, '微信图片_20210129150929.jpg', 'http://layim.oiio.xin/upload/chat/message/1613783821249.jpg', '2021-02-20 09:17:02', 2, 1);
INSERT INTO `t_ligent_file` VALUES (31, 'chat', 5, '问题推进表(20210129更新) (1).xlsx', 'http://layim.oiio.xin/upload/chat/message/1613783834218.xlsx', '2021-02-20 09:17:14', 2, 1);
INSERT INTO `t_ligent_file` VALUES (32, 'chat', 8, '0A9E66027E66A415500D3E3C04F7E289.jpg', 'http://layim.oiio.xin/upload/chat/message/1613803107593.jpg', '2021-02-20 14:38:27', 1, 1);
INSERT INTO `t_ligent_file` VALUES (33, 'chat', 8, '7d5739be62ae471c9c4c682bd7514ef3.png', 'http://layim.oiio.xin/upload/chat/message/1615616436034.png', '2021-03-13 14:20:38', 1, 1);
INSERT INTO `t_ligent_file` VALUES (34, 'chat', 8, 'wx_camera_1616032919046.jpg', 'http://layim.oiio.xin/upload/chat/message/1616047886823.jpg', '2021-03-18 14:11:27', 1, 1);
INSERT INTO `t_ligent_file` VALUES (35, 'chat', 8, 'wx_camera_1616032919046.jpg', 'http://layim.oiio.xin/upload/chat/message/1616060028714.jpg', '2021-03-18 17:33:49', 1, 1);
INSERT INTO `t_ligent_file` VALUES (36, 'chat', 8, '截图.png', 'http://layim.oiio.xin/upload/chat/message/1616489414737.png', '2021-03-23 16:50:15', 1, 1);
INSERT INTO `t_ligent_file` VALUES (37, 'chat', 8, '截图.png', 'http://layim.oiio.xin/upload/chat/message/1616489461948.png', '2021-03-23 16:51:02', 1, 1);
INSERT INTO `t_ligent_file` VALUES (38, 'chat', NULL, 'MicroKMS 神龙版.exe', 'http://layim.oiio.xin/upload/chat/message/1616583842644.exe', '2021-03-24 19:04:02', 1, 1);
INSERT INTO `t_ligent_file` VALUES (39, 'chat', 8, '20210224123248_ee2bfa2e2421ba130849d7884fc91041_0.jpeg', 'http://layim.oiio.xin/upload/chat/message/1616740535480.jpeg', '2021-03-26 14:35:35', 21, 1);
INSERT INTO `t_ligent_file` VALUES (40, 'chat', 3, 'HtmlTPDF.txt', 'http://layim.oiio.xin/upload/chat/message/1616740553378.txt', '2021-03-26 14:35:53', 21, 1);
INSERT INTO `t_ligent_file` VALUES (41, 'chat', 3, '说明.txt', 'http://layim.oiio.xin/upload/chat/message/1616751081698.txt', '2021-03-26 17:31:21', 1, 1);
INSERT INTO `t_ligent_file` VALUES (42, 'chat', 7, '2021省考行测申论联合模考大赛（第十一季）《申论》.pdf', 'http://layim.oiio.xin/upload/chat/message/1617005346761.pdf', '2021-03-29 16:09:06', 1, 1);
INSERT INTO `t_ligent_file` VALUES (43, 'chat', 8, 'ceo icon 模块-07.png', 'http://layim.oiio.xin/upload/chat/message/1617005975448.png', '2021-03-29 16:19:35', 1, 1);
INSERT INTO `t_ligent_file` VALUES (44, 'chat', 8, 'ceo icon 模块-20.png', 'http://layim.oiio.xin/upload/chat/message/1617005986277.png', '2021-03-29 16:19:46', 1, 1);
INSERT INTO `t_ligent_file` VALUES (45, 'chat', 4, '附件2学业奖学金申请审批表.doc', 'http://layim.oiio.xin/upload/chat/message/1617027536769.doc', '2021-03-29 22:18:56', 1, 1);
INSERT INTO `t_ligent_file` VALUES (46, 'chat', 5, '2020年智慧创新中心项目新增资产配置计划表含详细参数（电信学院）.xls', 'http://layim.oiio.xin/upload/chat/message/1617160923971.xls', '2021-03-31 11:22:03', 1, 1);
INSERT INTO `t_ligent_file` VALUES (47, 'chat', 9, '5e1e5711-5bbb-4911-b5ee-6e35a3e08929.mp4', 'http://layim.oiio.xin/upload/chat/message/1617160983963.mp4', '2021-03-31 11:23:04', 1, 1);
INSERT INTO `t_ligent_file` VALUES (48, 'chat', 8, '硬件参数.png', 'http://layim.oiio.xin/upload/chat/message/1617330759885.png', '2021-04-02 10:32:40', 1, 1);
INSERT INTO `t_ligent_file` VALUES (49, 'chat', NULL, 'FlashCenter.exe', 'http://layim.oiio.xin/upload/chat/message/1617697533205.exe', '2021-04-06 16:25:33', 1, 1);
INSERT INTO `t_ligent_file` VALUES (50, 'chat', NULL, 'navicat.exe', 'http://layim.oiio.xin/upload/chat/message/1617697549018.exe', '2021-04-06 16:25:49', 1, 1);
INSERT INTO `t_ligent_file` VALUES (51, 'chat', 8, '聊天室.png', 'http://layim.oiio.xin/upload/chat/message/1618050082697.png', '2021-04-10 18:21:22', 1, 1);
INSERT INTO `t_ligent_file` VALUES (52, 'chat', 8, '111.jpg', 'http://layim.oiio.xin/upload/chat/message/1618120019065.jpg', '2021-04-11 13:46:59', 1, 1);
INSERT INTO `t_ligent_file` VALUES (53, 'chat', 8, '6b8c14f8gy1fflwrnnji9j215u0qdwmk.jpg', 'http://layim.oiio.xin/upload/chat/message/1618120197783.jpg', '2021-04-11 13:49:58', 1, 1);
INSERT INTO `t_ligent_file` VALUES (54, 'chat', 4, '计科院2017（9）班35号徐砚芯《善》.docx', 'http://layim.oiio.xin/upload/chat/message/1618120229791.docx', '2021-04-11 13:50:29', 1, 1);
INSERT INTO `t_ligent_file` VALUES (55, 'chat', 8, 'chat1.png', 'http://layim.oiio.xin/upload/chat/message/1618190449486.png', '2021-04-12 09:20:49', 1, 1);
INSERT INTO `t_ligent_file` VALUES (56, 'chat', 8, '微信图片_20201112172447.jpg', 'http://layim.oiio.xin/upload/chat/message/1618218943072.jpg', '2021-04-12 17:15:43', 1, 1);
INSERT INTO `t_ligent_file` VALUES (57, 'chat', NULL, 'cs.stx', 'http://layim.oiio.xin/upload/chat/message/1618649963127.stx', '2021-04-17 16:59:23', 5, 1);
INSERT INTO `t_ligent_file` VALUES (58, 'chat', 8, '121121121.png', 'http://layim.oiio.xin/upload/chat/message/1618650008190.png', '2021-04-17 17:00:09', 2, 1);
INSERT INTO `t_ligent_file` VALUES (59, 'chat', 8, 'Java后端开发学习路线-高清版.jpg', 'http://layim.oiio.xin/upload/chat/message/1618723183799.jpg', '2021-04-18 13:19:48', 1, 1);
INSERT INTO `t_ligent_file` VALUES (60, 'chat', 8, 'Java后端开发学习路线-高清版.jpg', 'http://layim.oiio.xin/upload/chat/message/1618723191674.jpg', '2021-04-18 13:19:56', 1, 1);
INSERT INTO `t_ligent_file` VALUES (61, 'chat', 8, 'mmexport8a87bd329cdcb80c41d0a52c69ae6376.gif', 'http://layim.oiio.xin/upload/chat/message/1618835966276.gif', '2021-04-19 20:39:26', 1, 1);

-- ----------------------------
-- Table structure for t_ligent_login
-- ----------------------------
DROP TABLE IF EXISTS `t_ligent_login`;
CREATE TABLE `t_ligent_login`  (
  `loginID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登录记录表',
  `userID` bigint(20) NULL DEFAULT NULL COMMENT '登录人编号',
  `loginTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录时间',
  `logoutTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '退出时间',
  `lastVisitTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后访问时间',
  PRIMARY KEY (`loginID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12340 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_ligent_login
-- ----------------------------
INSERT INTO `t_ligent_login` VALUES (12036, 1, '2020-03-25 21:14:38', '2020-03-26 08:40:30', '2020-03-25 21:15:05');
INSERT INTO `t_ligent_login` VALUES (12040, 2, '2020-03-25 20:17:33', '2020-03-26 08:40:30', '2020-03-25 20:21:07');
INSERT INTO `t_ligent_login` VALUES (12041, 60, '2020-03-25 19:55:36', '2020-03-26 08:40:30', '2020-03-25 19:55:37');
INSERT INTO `t_ligent_login` VALUES (12042, 9, '2020-03-25 20:14:00', '2020-03-26 08:40:30', '2020-03-25 20:14:11');
INSERT INTO `t_ligent_login` VALUES (12043, 132, '2020-03-25 20:16:07', '2020-03-26 08:40:30', '2020-03-25 20:16:43');
INSERT INTO `t_ligent_login` VALUES (12044, 1, '2020-03-26 16:34:48', '2020-03-27 08:32:07', '2020-03-26 19:50:35');
INSERT INTO `t_ligent_login` VALUES (12045, 2, '2020-03-26 11:55:52', '2020-03-27 08:32:07', '2020-03-26 19:48:45');
INSERT INTO `t_ligent_login` VALUES (12046, 1, '2020-03-27 20:22:51', '2020-03-28 08:37:33', '2020-03-27 21:56:00');
INSERT INTO `t_ligent_login` VALUES (12047, 2, '2020-03-27 08:56:24', '2020-03-27 10:57:49', '2020-03-27 10:57:46');
INSERT INTO `t_ligent_login` VALUES (12048, 2, '2020-03-27 10:58:03', '2020-03-27 14:05:32', '2020-03-27 10:58:44');
INSERT INTO `t_ligent_login` VALUES (12049, 2, '2020-03-27 14:17:45', '2020-03-27 17:44:19', '2020-03-27 14:33:29');
INSERT INTO `t_ligent_login` VALUES (12050, 2, '2020-03-27 17:55:38', '2020-03-27 20:12:13', '2020-03-27 18:39:31');
INSERT INTO `t_ligent_login` VALUES (12051, 2, '2020-03-27 20:12:21', '2020-03-28 08:37:33', '2020-03-27 20:24:07');
INSERT INTO `t_ligent_login` VALUES (12052, 1, '2020-03-28 18:24:02', '2020-03-30 09:28:00', '2020-03-28 19:25:33');
INSERT INTO `t_ligent_login` VALUES (12053, 2, '2020-03-28 09:32:57', '2020-03-28 10:01:27', '2020-03-28 10:00:13');
INSERT INTO `t_ligent_login` VALUES (12054, 2, '2020-03-28 10:01:48', '2020-03-28 10:08:01', '2020-03-28 10:03:35');
INSERT INTO `t_ligent_login` VALUES (12055, 2, '2020-03-28 10:08:18', '2020-03-28 10:09:17', '2020-03-28 10:08:18');
INSERT INTO `t_ligent_login` VALUES (12056, 2, '2020-03-28 10:09:35', '2020-03-28 10:13:14', '2020-03-28 10:13:06');
INSERT INTO `t_ligent_login` VALUES (12057, 2, '2020-03-28 10:21:11', '2020-03-28 10:21:46', '2020-03-28 10:21:11');
INSERT INTO `t_ligent_login` VALUES (12058, 2, '2020-03-28 10:21:55', '2020-03-28 10:21:59', '2020-03-28 10:21:56');
INSERT INTO `t_ligent_login` VALUES (12059, 2, '2020-03-28 10:22:15', '2020-03-28 18:20:52', '2020-03-28 10:22:15');
INSERT INTO `t_ligent_login` VALUES (12060, 2, '2020-03-28 18:22:44', '2020-03-30 09:28:00', '2020-03-28 18:22:44');
INSERT INTO `t_ligent_login` VALUES (12061, 1, '2020-03-30 18:34:31', '2020-03-31 08:39:27', '2020-03-30 19:05:48');
INSERT INTO `t_ligent_login` VALUES (12062, 2, '2020-03-30 09:47:16', '2020-03-30 15:29:02', '2020-03-30 09:47:32');
INSERT INTO `t_ligent_login` VALUES (12063, 1, '2020-03-31 21:40:13', '2020-04-01 08:58:59', '2020-03-31 21:42:01');
INSERT INTO `t_ligent_login` VALUES (12064, 13, '2020-03-31 14:54:59', '2020-03-31 20:04:11', '2020-03-31 15:10:16');
INSERT INTO `t_ligent_login` VALUES (12065, 1, '2020-04-01 16:05:19', '2020-04-02 17:22:05', '2020-04-01 16:28:25');
INSERT INTO `t_ligent_login` VALUES (12066, 27, '2020-04-01 10:03:29', '2020-04-01 10:10:41', '2020-04-01 10:08:58');
INSERT INTO `t_ligent_login` VALUES (12067, 27, '2020-04-01 10:10:53', '2020-04-01 15:18:21', '2020-04-01 10:59:06');
INSERT INTO `t_ligent_login` VALUES (12068, 26, '2020-04-01 15:20:04', '2020-04-01 16:05:19', '2020-04-01 15:46:35');
INSERT INTO `t_ligent_login` VALUES (12069, 28, '2020-04-01 16:05:29', '2020-04-02 17:22:05', '2020-04-01 16:07:39');
INSERT INTO `t_ligent_login` VALUES (12070, 1, '2020-04-02 20:14:43', '2020-04-03 08:36:10', '2020-04-02 20:56:01');
INSERT INTO `t_ligent_login` VALUES (12071, 18, '2020-04-02 20:08:13', '2020-04-03 08:36:10', '2020-04-02 20:56:08');
INSERT INTO `t_ligent_login` VALUES (12072, 1, '2020-04-03 18:36:02', '2020-04-04 06:34:39', '2020-04-03 18:36:02');
INSERT INTO `t_ligent_login` VALUES (12073, 2, '2020-04-03 08:36:54', '2020-04-03 17:51:16', '2020-04-03 12:25:35');
INSERT INTO `t_ligent_login` VALUES (12074, 16, '2020-04-03 10:01:41', '2020-04-03 17:51:16', '2020-04-03 12:25:35');
INSERT INTO `t_ligent_login` VALUES (12075, 1, '2020-04-04 20:03:41', '2020-04-05 03:09:54', '2020-04-04 20:03:41');
INSERT INTO `t_ligent_login` VALUES (12076, 1, '2020-04-05 09:39:26', '2020-04-05 16:23:21', '2020-04-05 09:39:26');
INSERT INTO `t_ligent_login` VALUES (12077, 1, '2020-04-06 15:59:28', '2020-04-06 16:37:30', '2020-04-06 15:59:28');
INSERT INTO `t_ligent_login` VALUES (12078, 1, '2020-04-07 17:44:44', '2020-04-07 20:30:55', '2020-04-07 18:19:46');
INSERT INTO `t_ligent_login` VALUES (12079, 1, '2020-04-07 16:40:51', '2020-04-07 20:30:55', '2020-04-07 16:40:52');
INSERT INTO `t_ligent_login` VALUES (12080, 1, '2020-04-08 22:22:00', '2020-04-09 03:55:46', '2020-04-08 22:22:00');
INSERT INTO `t_ligent_login` VALUES (12081, 1, '2020-04-08 16:59:47', '2020-04-08 17:17:57', '2020-04-08 17:02:44');
INSERT INTO `t_ligent_login` VALUES (12082, 1, '2020-04-09 23:17:19', '2020-04-10 04:52:49', '2020-04-09 23:17:19');
INSERT INTO `t_ligent_login` VALUES (12083, 1, '2020-04-10 23:54:17', '2020-04-11 00:23:44', '2020-04-10 23:54:17');
INSERT INTO `t_ligent_login` VALUES (12084, 1, '2020-04-10 11:27:03', '2020-04-10 15:00:53', '2020-04-10 11:28:00');
INSERT INTO `t_ligent_login` VALUES (12085, 2, '2020-04-10 15:04:32', '2020-04-10 19:11:31', '2020-04-10 15:07:36');
INSERT INTO `t_ligent_login` VALUES (12086, 2, '2020-04-10 20:40:41', '2020-04-10 23:54:17', '2020-04-10 20:47:18');
INSERT INTO `t_ligent_login` VALUES (12087, 1, '2020-04-11 22:06:40', '2020-04-12 03:10:24', '2020-04-11 22:06:40');
INSERT INTO `t_ligent_login` VALUES (12088, 2, '2020-04-11 17:37:17', '2020-04-11 17:53:12', '2020-04-11 17:37:17');
INSERT INTO `t_ligent_login` VALUES (12089, 1, '2020-04-12 22:08:54', '2020-04-13 05:54:11', '2020-04-12 22:08:54');
INSERT INTO `t_ligent_login` VALUES (12090, 1, '2020-04-13 15:47:52', '2020-04-13 17:54:15', '2020-04-13 15:47:52');
INSERT INTO `t_ligent_login` VALUES (12091, 1, '2020-04-14 22:55:10', '2020-04-15 03:51:56', '2020-04-14 22:55:10');
INSERT INTO `t_ligent_login` VALUES (12092, 1, '2020-04-15 22:40:10', '2020-04-16 01:55:31', '2020-04-15 22:40:10');
INSERT INTO `t_ligent_login` VALUES (12093, 1, '2020-04-16 22:24:37', '2020-04-17 03:33:33', '2020-04-16 22:24:37');
INSERT INTO `t_ligent_login` VALUES (12094, 1, '2020-04-17 17:23:45', '2020-04-17 18:10:16', '2020-04-17 17:23:45');
INSERT INTO `t_ligent_login` VALUES (12095, 1, '2020-04-18 17:49:24', '2020-04-19 01:22:59', '2020-04-18 17:49:24');
INSERT INTO `t_ligent_login` VALUES (12096, 1, '2020-04-19 22:54:33', '2020-04-20 04:08:12', '2020-04-19 22:54:33');
INSERT INTO `t_ligent_login` VALUES (12097, 1, '2020-04-20 22:46:43', '2020-04-21 01:02:20', '2020-04-20 22:46:43');
INSERT INTO `t_ligent_login` VALUES (12098, 1, '2020-04-21 22:03:18', '2020-04-22 00:16:23', '2020-04-21 22:03:18');
INSERT INTO `t_ligent_login` VALUES (12099, 1, '2020-04-22 20:39:39', '2020-04-22 21:41:46', '2020-04-22 20:39:39');
INSERT INTO `t_ligent_login` VALUES (12100, 1, '2020-04-23 21:39:18', '2020-04-23 23:33:38', '2020-04-23 21:39:18');
INSERT INTO `t_ligent_login` VALUES (12101, 1, '2020-04-24 21:45:47', '2020-04-24 21:54:20', '2020-04-24 21:45:47');
INSERT INTO `t_ligent_login` VALUES (12102, 1, '2020-04-25 20:18:52', '2020-04-25 21:48:27', '2020-04-25 20:18:52');
INSERT INTO `t_ligent_login` VALUES (12103, 1, '2020-04-26 21:53:20', '2020-04-27 03:32:19', '2020-04-26 21:53:20');
INSERT INTO `t_ligent_login` VALUES (12104, 1, '2020-04-27 22:26:08', '2020-04-28 06:16:47', '2020-04-27 22:26:08');
INSERT INTO `t_ligent_login` VALUES (12105, 1, '2020-04-28 06:29:20', '2020-04-28 09:59:10', '2020-04-28 06:29:20');
INSERT INTO `t_ligent_login` VALUES (12106, 1, '2020-04-29 20:34:14', '2020-04-29 20:34:15', '2020-04-29 20:34:14');
INSERT INTO `t_ligent_login` VALUES (12107, 1, '2020-04-30 17:39:41', '2020-05-14 09:17:17', '2020-04-30 17:39:41');
INSERT INTO `t_ligent_login` VALUES (12108, 1, '2020-05-14 09:17:17', '2020-05-15 09:04:35', '2020-05-14 09:17:17');
INSERT INTO `t_ligent_login` VALUES (12109, 1, '2020-05-15 19:50:48', '2020-05-16 05:23:50', '2020-05-15 19:50:48');
INSERT INTO `t_ligent_login` VALUES (12110, 1, '2020-05-16 18:21:29', '2020-05-16 18:52:47', '2020-05-16 18:21:29');
INSERT INTO `t_ligent_login` VALUES (12111, 1, '2020-05-17 18:56:50', '2020-05-17 19:22:53', '2020-05-17 18:56:50');
INSERT INTO `t_ligent_login` VALUES (12112, 1, '2020-05-18 15:42:53', '2020-05-18 16:25:02', '2020-05-18 15:42:53');
INSERT INTO `t_ligent_login` VALUES (12113, 1, '2020-05-19 22:39:21', '2020-05-20 01:00:28', '2020-05-19 22:39:21');
INSERT INTO `t_ligent_login` VALUES (12114, 1, '2020-05-20 14:57:44', '2020-05-20 16:43:30', '2020-05-20 14:57:44');
INSERT INTO `t_ligent_login` VALUES (12115, 1, '2020-05-21 16:45:17', '2020-05-21 16:49:09', '2020-05-21 16:45:17');
INSERT INTO `t_ligent_login` VALUES (12116, 1, '2020-05-22 21:27:02', '2020-05-23 01:32:16', '2020-05-22 21:27:02');
INSERT INTO `t_ligent_login` VALUES (12117, 1, '2020-05-23 21:54:26', '2020-05-24 02:15:48', '2020-05-23 21:54:26');
INSERT INTO `t_ligent_login` VALUES (12118, 1, '2020-05-24 22:05:56', '2020-05-25 01:11:39', '2020-05-24 22:05:56');
INSERT INTO `t_ligent_login` VALUES (12119, 1, '2020-05-25 21:42:49', '2020-05-26 01:25:57', '2020-05-25 21:42:49');
INSERT INTO `t_ligent_login` VALUES (12120, 1, '2020-05-26 23:23:07', '2020-05-27 02:45:18', '2020-05-26 23:23:07');
INSERT INTO `t_ligent_login` VALUES (12121, 2, '2020-05-26 17:25:05', '2020-05-26 20:27:15', '2020-05-26 17:25:05');
INSERT INTO `t_ligent_login` VALUES (12122, 3, '2020-05-26 17:48:40', '2020-05-26 17:49:31', '2020-05-26 17:48:40');
INSERT INTO `t_ligent_login` VALUES (12123, 1, '2020-05-27 22:09:18', '2020-05-28 06:54:34', '2020-05-27 22:09:18');
INSERT INTO `t_ligent_login` VALUES (12124, 1, '2020-05-28 13:07:29', '2020-05-28 18:25:59', '2020-05-28 13:07:29');
INSERT INTO `t_ligent_login` VALUES (12125, 1, '2020-05-29 15:39:09', '2020-05-29 17:02:46', '2020-05-29 15:39:09');
INSERT INTO `t_ligent_login` VALUES (12126, 1, '2020-05-30 17:30:50', '2020-05-30 23:16:26', '2020-05-30 17:30:50');
INSERT INTO `t_ligent_login` VALUES (12127, 1, '2020-05-31 21:40:57', '2020-05-31 21:48:10', '2020-05-31 21:40:57');
INSERT INTO `t_ligent_login` VALUES (12128, 1, '2020-06-01 16:14:53', '2020-06-01 17:51:59', '2020-06-01 16:14:53');
INSERT INTO `t_ligent_login` VALUES (12129, 1, '2020-06-02 11:55:50', '2020-06-08 19:48:46', '2020-06-02 11:55:50');
INSERT INTO `t_ligent_login` VALUES (12130, 1, '2020-06-08 21:06:18', '2020-06-09 09:11:07', '2020-06-08 21:06:18');
INSERT INTO `t_ligent_login` VALUES (12131, 2, '2020-06-08 20:16:54', '2020-06-08 20:16:59', '2020-06-08 20:16:54');
INSERT INTO `t_ligent_login` VALUES (12132, 1, '2020-06-09 20:22:52', '2020-06-10 08:42:45', '2020-06-09 20:22:52');
INSERT INTO `t_ligent_login` VALUES (12133, 1, '2020-06-10 15:17:28', '2020-06-11 09:54:57', '2020-06-10 15:17:28');
INSERT INTO `t_ligent_login` VALUES (12134, 2, '2020-06-10 10:08:21', '2020-06-10 10:09:17', '2020-06-10 10:08:21');
INSERT INTO `t_ligent_login` VALUES (12135, 1, '2020-06-11 21:27:35', '2020-06-12 08:37:06', '2020-06-11 21:27:35');
INSERT INTO `t_ligent_login` VALUES (12136, 1, '2020-06-12 16:57:49', '2020-06-15 09:48:52', '2020-06-12 16:57:49');
INSERT INTO `t_ligent_login` VALUES (12137, 1, '2020-06-15 20:21:28', '2020-06-16 10:12:21', '2020-06-15 20:21:28');
INSERT INTO `t_ligent_login` VALUES (12138, 1, '2020-06-16 19:37:17', '2020-06-17 11:45:07', '2020-06-16 19:37:17');
INSERT INTO `t_ligent_login` VALUES (12139, 1, '2020-06-17 11:45:07', '2020-06-18 19:58:48', '2020-06-17 11:45:07');
INSERT INTO `t_ligent_login` VALUES (12140, 1, '2020-06-18 19:58:48', '2020-06-18 20:20:31', '2020-06-18 19:58:48');
INSERT INTO `t_ligent_login` VALUES (12141, 1, '2020-06-20 17:05:34', '2020-06-22 11:28:20', '2020-06-20 17:05:34');
INSERT INTO `t_ligent_login` VALUES (12142, 1, '2020-06-22 19:54:06', '2020-06-23 09:14:04', '2020-06-22 19:54:06');
INSERT INTO `t_ligent_login` VALUES (12143, 1, '2020-06-23 21:05:17', '2020-06-24 10:57:16', '2020-06-23 21:05:17');
INSERT INTO `t_ligent_login` VALUES (12144, 1, '2020-06-24 23:03:53', '2020-06-25 12:03:52', '2020-06-24 23:03:53');
INSERT INTO `t_ligent_login` VALUES (12145, 1, '2020-06-25 17:00:57', '2020-06-26 02:10:39', '2020-06-25 17:00:57');
INSERT INTO `t_ligent_login` VALUES (12146, 1, '2020-06-26 20:55:59', '2020-06-27 03:15:51', '2020-06-26 20:55:59');
INSERT INTO `t_ligent_login` VALUES (12147, 1, '2020-06-27 21:26:55', '2020-06-27 21:26:55', '2020-06-27 21:26:55');
INSERT INTO `t_ligent_login` VALUES (12148, 1, '2020-06-28 23:55:07', '2020-06-29 00:10:52', '2020-06-28 23:55:07');
INSERT INTO `t_ligent_login` VALUES (12149, 1, '2020-06-29 23:53:40', '2020-06-29 23:53:40', '2020-06-29 23:53:40');
INSERT INTO `t_ligent_login` VALUES (12150, 1, '2020-06-30 23:22:51', '2020-07-01 00:13:58', '2020-06-30 23:22:51');
INSERT INTO `t_ligent_login` VALUES (12151, 1, '2020-07-01 23:40:21', '2020-07-01 23:40:21', '2020-07-01 23:40:21');
INSERT INTO `t_ligent_login` VALUES (12152, 1, '2020-07-02 20:47:01', '2020-07-02 20:47:01', '2020-07-02 20:47:01');
INSERT INTO `t_ligent_login` VALUES (12153, 1, '2020-07-03 22:41:13', '2020-07-03 23:07:12', '2020-07-03 22:41:13');
INSERT INTO `t_ligent_login` VALUES (12154, 1, '2020-07-04 04:43:44', '2020-07-04 04:43:44', '2020-07-04 04:43:44');
INSERT INTO `t_ligent_login` VALUES (12155, 1, '2020-07-05 22:14:07', '2020-07-05 22:14:07', '2020-07-05 22:14:07');
INSERT INTO `t_ligent_login` VALUES (12156, 1, '2020-07-06 21:37:52', '2020-07-07 00:40:55', '2020-07-06 21:37:52');
INSERT INTO `t_ligent_login` VALUES (12157, 1, '2020-07-07 22:33:25', '2020-07-07 22:33:25', '2020-07-07 22:33:25');
INSERT INTO `t_ligent_login` VALUES (12158, 1, '2020-07-08 00:04:44', '2020-07-08 00:04:44', '2020-07-08 00:04:44');
INSERT INTO `t_ligent_login` VALUES (12159, 1, '2020-07-09 21:53:18', '2020-07-09 21:53:18', '2020-07-09 21:53:18');
INSERT INTO `t_ligent_login` VALUES (12160, 1, '2020-07-10 10:49:44', '2020-07-10 10:49:44', '2020-07-10 10:49:44');
INSERT INTO `t_ligent_login` VALUES (12161, 1, '2020-07-11 22:14:32', '2020-07-11 22:14:32', '2020-07-11 22:14:32');
INSERT INTO `t_ligent_login` VALUES (12162, 1, '2020-07-12 14:20:09', '2020-07-12 14:20:09', '2020-07-12 14:20:09');
INSERT INTO `t_ligent_login` VALUES (12163, 1, '2020-07-13 18:40:06', '2020-07-13 18:40:06', '2020-07-13 18:40:06');
INSERT INTO `t_ligent_login` VALUES (12164, 1, '2020-07-14 23:04:49', '2020-07-15 11:02:52', '2020-07-14 23:04:49');
INSERT INTO `t_ligent_login` VALUES (12165, 1, '2020-07-16 06:03:03', '2020-07-16 06:03:03', '2020-07-16 06:03:03');
INSERT INTO `t_ligent_login` VALUES (12166, 1, '2020-07-17 16:05:50', '2020-07-17 16:05:50', '2020-07-17 16:05:50');
INSERT INTO `t_ligent_login` VALUES (12167, 1, '2020-07-18 13:11:26', '2020-07-18 13:11:26', '2020-07-18 13:11:26');
INSERT INTO `t_ligent_login` VALUES (12168, 1, '2020-07-19 04:30:37', '2020-07-19 04:30:37', '2020-07-19 04:30:37');
INSERT INTO `t_ligent_login` VALUES (12169, 1, '2020-07-21 16:22:13', '2020-07-21 16:22:13', '2020-07-21 16:22:13');
INSERT INTO `t_ligent_login` VALUES (12170, 1, '2020-07-22 01:45:49', '2020-07-22 01:45:49', '2020-07-22 01:45:49');
INSERT INTO `t_ligent_login` VALUES (12171, 1, '2020-07-23 18:04:00', '2020-07-26 01:27:25', '2020-07-23 18:04:00');
INSERT INTO `t_ligent_login` VALUES (12172, 1, '2020-08-05 00:07:24', '2020-08-05 00:07:24', '2020-08-05 00:07:24');
INSERT INTO `t_ligent_login` VALUES (12173, 1, '2020-08-07 21:50:38', '2020-08-07 21:50:38', '2020-08-07 21:50:38');
INSERT INTO `t_ligent_login` VALUES (12174, 1, '2020-08-21 18:50:13', '2020-08-21 18:53:15', '2020-08-21 18:50:13');
INSERT INTO `t_ligent_login` VALUES (12175, 2, '2020-08-21 18:50:03', '2020-08-23 01:49:44', '2020-08-21 18:50:03');
INSERT INTO `t_ligent_login` VALUES (12176, 1, '2020-10-29 17:19:28', '2020-10-29 17:20:27', '2020-10-29 17:19:28');
INSERT INTO `t_ligent_login` VALUES (12177, 1, '2020-11-03 15:46:52', '2020-11-03 15:46:59', '2020-11-03 15:46:52');
INSERT INTO `t_ligent_login` VALUES (12178, 1, '2020-12-10 09:48:58', '2020-12-16 09:02:34', '2020-12-10 09:48:58');
INSERT INTO `t_ligent_login` VALUES (12179, 1, '2020-12-16 09:04:05', '2020-12-16 09:07:51', '2020-12-16 09:04:05');
INSERT INTO `t_ligent_login` VALUES (12180, 1, '2020-12-24 16:02:13', '2020-12-24 17:00:15', '2020-12-24 16:02:13');
INSERT INTO `t_ligent_login` VALUES (12181, 1, '2020-12-25 18:27:06', '2020-12-25 18:27:07', '2020-12-25 18:27:06');
INSERT INTO `t_ligent_login` VALUES (12182, 2, '2020-12-25 16:49:53', '2020-12-25 17:35:15', '2020-12-25 16:49:53');
INSERT INTO `t_ligent_login` VALUES (12183, 1, '2020-12-27 17:06:18', '2020-12-27 17:07:45', '2020-12-27 17:06:18');
INSERT INTO `t_ligent_login` VALUES (12184, 2, '2020-12-27 16:50:23', '2020-12-27 16:59:54', '2020-12-27 16:50:23');
INSERT INTO `t_ligent_login` VALUES (12185, 1, '2021-01-04 21:24:33', '2021-01-14 17:23:07', '2021-01-04 21:24:33');
INSERT INTO `t_ligent_login` VALUES (12186, 2, '2021-01-04 21:03:59', '2021-01-04 21:13:35', '2021-01-04 21:03:59');
INSERT INTO `t_ligent_login` VALUES (12187, 1, '2021-01-14 23:58:25', '2021-01-14 23:58:51', '2021-01-14 23:58:25');
INSERT INTO `t_ligent_login` VALUES (12188, 2, '2021-01-14 17:23:54', '2021-01-14 17:24:13', '2021-01-14 17:23:54');
INSERT INTO `t_ligent_login` VALUES (12189, 1, '2021-01-15 21:22:49', '2021-01-16 22:44:48', '2021-01-15 21:22:49');
INSERT INTO `t_ligent_login` VALUES (12190, 1, '2021-01-16 22:51:01', '2021-01-16 22:51:18', '2021-01-16 22:51:01');
INSERT INTO `t_ligent_login` VALUES (12191, 1, '2021-01-17 23:28:32', '2021-01-17 23:28:46', '2021-01-17 23:28:32');
INSERT INTO `t_ligent_login` VALUES (12192, 1, '2021-01-18 22:17:12', '2021-01-19 09:17:47', '2021-01-18 22:17:12');
INSERT INTO `t_ligent_login` VALUES (12193, 1, '2021-01-19 15:38:28', '2021-01-19 15:39:02', '2021-01-19 15:38:28');
INSERT INTO `t_ligent_login` VALUES (12194, 1, '2021-01-20 17:14:28', '2021-01-20 17:15:58', '2021-01-20 17:14:28');
INSERT INTO `t_ligent_login` VALUES (12195, 1, '2021-01-21 22:10:59', '2021-01-22 00:24:18', '2021-01-21 22:10:59');
INSERT INTO `t_ligent_login` VALUES (12196, 1, '2021-01-22 15:57:22', '2021-01-23 12:48:51', '2021-01-22 15:57:22');
INSERT INTO `t_ligent_login` VALUES (12197, 1, '2021-01-23 19:14:54', '2021-01-23 19:14:57', '2021-01-23 19:14:54');
INSERT INTO `t_ligent_login` VALUES (12198, 1, '2021-01-25 16:46:35', '2021-01-25 16:49:53', '2021-01-25 16:46:35');
INSERT INTO `t_ligent_login` VALUES (12199, 1, '2021-01-26 20:39:52', '2021-01-27 16:15:14', '2021-01-26 20:39:52');
INSERT INTO `t_ligent_login` VALUES (12200, 1, '2021-01-27 22:34:48', '2021-01-27 22:34:59', '2021-01-27 22:34:48');
INSERT INTO `t_ligent_login` VALUES (12201, 1, '2021-01-28 09:41:34', '2021-01-29 07:37:01', '2021-01-28 09:41:34');
INSERT INTO `t_ligent_login` VALUES (12202, 1, '2021-01-29 20:48:11', '2021-01-29 20:48:12', '2021-01-29 20:48:11');
INSERT INTO `t_ligent_login` VALUES (12203, 1, '2021-01-31 21:59:30', '2021-01-31 21:59:43', '2021-01-31 21:59:30');
INSERT INTO `t_ligent_login` VALUES (12204, 1, '2021-02-01 17:03:48', '2021-02-01 18:48:30', '2021-02-01 17:03:48');
INSERT INTO `t_ligent_login` VALUES (12205, 1, '2021-02-02 20:58:23', '2021-02-02 20:58:47', '2021-02-02 20:58:23');
INSERT INTO `t_ligent_login` VALUES (12206, 1, '2021-02-03 19:07:10', '2021-02-03 19:08:46', '2021-02-03 19:07:10');
INSERT INTO `t_ligent_login` VALUES (12207, 1, '2021-02-04 15:17:33', '2021-02-04 20:33:01', '2021-02-04 15:17:33');
INSERT INTO `t_ligent_login` VALUES (12208, 1, '2021-02-05 18:48:47', '2021-02-05 18:52:35', '2021-02-05 18:48:47');
INSERT INTO `t_ligent_login` VALUES (12209, 100000, '2021-02-05 18:35:45', '2021-02-05 18:52:54', '2021-02-05 18:35:45');
INSERT INTO `t_ligent_login` VALUES (12210, 100000, '2021-02-06 15:40:54', '2021-02-06 23:02:11', '2021-02-06 15:40:54');
INSERT INTO `t_ligent_login` VALUES (12211, 1, '2021-02-06 23:02:11', '2021-02-06 23:02:27', '2021-02-06 23:02:11');
INSERT INTO `t_ligent_login` VALUES (12212, 100000, '2021-02-07 16:58:21', '2021-02-07 20:53:20', '2021-02-07 16:58:21');
INSERT INTO `t_ligent_login` VALUES (12213, 1, '2021-02-07 20:53:20', '2021-02-07 20:56:06', '2021-02-07 20:53:20');
INSERT INTO `t_ligent_login` VALUES (12214, 1, '2021-02-08 18:15:55', '2021-02-08 18:16:00', '2021-02-08 18:15:55');
INSERT INTO `t_ligent_login` VALUES (12215, 1, '2021-02-09 12:34:27', '2021-02-09 12:34:49', '2021-02-09 12:34:27');
INSERT INTO `t_ligent_login` VALUES (12216, 1, '2021-02-10 17:27:09', '2021-02-10 17:28:35', '2021-02-10 17:27:09');
INSERT INTO `t_ligent_login` VALUES (12217, 1, '2021-02-11 13:20:15', '2021-02-12 01:24:39', '2021-02-11 13:20:15');
INSERT INTO `t_ligent_login` VALUES (12218, 1, '2021-02-12 09:34:26', '2021-02-12 09:38:42', '2021-02-12 09:34:26');
INSERT INTO `t_ligent_login` VALUES (12219, 1, '2021-02-13 22:21:04', '2021-02-13 22:24:19', '2021-02-13 22:21:04');
INSERT INTO `t_ligent_login` VALUES (12220, 100000, '2021-02-14 20:56:13', '2021-02-15 06:14:22', '2021-02-14 20:56:13');
INSERT INTO `t_ligent_login` VALUES (12221, 1, '2021-02-14 22:36:23', '2021-02-14 22:37:59', '2021-02-14 22:36:23');
INSERT INTO `t_ligent_login` VALUES (12222, 1, '2021-02-15 12:54:01', '2021-02-15 12:54:22', '2021-02-15 12:54:01');
INSERT INTO `t_ligent_login` VALUES (12223, 1, '2021-02-16 19:35:57', '2021-02-17 10:56:36', '2021-02-16 19:35:57');
INSERT INTO `t_ligent_login` VALUES (12224, 1, '2021-02-17 22:49:08', '2021-02-17 22:54:16', '2021-02-17 22:49:08');
INSERT INTO `t_ligent_login` VALUES (12225, 100000, '2021-02-17 21:28:16', '2021-02-17 21:28:19', '2021-02-17 21:28:16');
INSERT INTO `t_ligent_login` VALUES (12226, 1, '2021-02-18 21:06:23', '2021-02-18 21:06:50', '2021-02-18 21:06:23');
INSERT INTO `t_ligent_login` VALUES (12227, 100000, '2021-02-18 12:29:59', '2021-02-18 12:30:11', '2021-02-18 12:29:59');
INSERT INTO `t_ligent_login` VALUES (12228, 100000, '2021-02-19 13:19:42', '2021-02-19 13:19:46', '2021-02-19 13:19:42');
INSERT INTO `t_ligent_login` VALUES (12229, 1, '2021-02-19 23:33:43', '2021-02-20 00:36:59', '2021-02-19 23:33:43');
INSERT INTO `t_ligent_login` VALUES (12230, 100000, '2021-02-20 11:30:06', '2021-02-20 14:37:06', '2021-02-20 11:30:06');
INSERT INTO `t_ligent_login` VALUES (12231, 1, '2021-02-20 14:44:31', '2021-02-20 14:44:43', '2021-02-20 14:44:31');
INSERT INTO `t_ligent_login` VALUES (12232, 2, '2021-02-20 09:14:48', '2021-02-20 09:19:55', '2021-02-20 09:14:48');
INSERT INTO `t_ligent_login` VALUES (12233, 1, '2021-02-21 20:42:21', '2021-02-21 21:04:21', '2021-02-21 20:42:21');
INSERT INTO `t_ligent_login` VALUES (12234, 1, '2021-02-22 17:16:01', '2021-02-22 17:16:06', '2021-02-22 17:16:01');
INSERT INTO `t_ligent_login` VALUES (12235, 1, '2021-02-23 19:27:54', '2021-02-23 19:29:27', '2021-02-23 19:27:54');
INSERT INTO `t_ligent_login` VALUES (12236, 100000, '2021-02-23 22:15:50', '2021-02-23 22:16:18', '2021-02-23 22:15:50');
INSERT INTO `t_ligent_login` VALUES (12237, 1, '2021-02-24 21:09:33', '2021-02-25 11:03:22', '2021-02-24 21:09:33');
INSERT INTO `t_ligent_login` VALUES (12238, 1, '2021-02-25 16:52:29', '2021-02-25 16:52:48', '2021-02-25 16:52:29');
INSERT INTO `t_ligent_login` VALUES (12239, 1, '2021-02-26 20:04:56', '2021-02-26 20:09:25', '2021-02-26 20:04:56');
INSERT INTO `t_ligent_login` VALUES (12240, 1, '2021-02-27 23:59:37', '2021-02-28 00:02:06', '2021-02-27 23:59:37');
INSERT INTO `t_ligent_login` VALUES (12241, 1, '2021-02-28 22:01:25', '2021-02-28 22:03:09', '2021-02-28 22:01:25');
INSERT INTO `t_ligent_login` VALUES (12242, 100000, '2021-03-01 13:00:30', '2021-03-01 13:01:26', '2021-03-01 13:00:30');
INSERT INTO `t_ligent_login` VALUES (12243, 1, '2021-03-01 20:54:08', '2021-03-01 20:54:09', '2021-03-01 20:54:08');
INSERT INTO `t_ligent_login` VALUES (12244, 1, '2021-03-02 21:46:08', '2021-03-02 23:18:50', '2021-03-02 21:46:08');
INSERT INTO `t_ligent_login` VALUES (12245, 1, '2021-03-03 19:57:54', '2021-03-04 02:28:40', '2021-03-03 19:57:54');
INSERT INTO `t_ligent_login` VALUES (12246, 1, '2021-03-04 20:02:02', '2021-03-04 20:02:51', '2021-03-04 20:02:02');
INSERT INTO `t_ligent_login` VALUES (12247, 1, '2021-03-05 18:36:19', '2021-03-05 18:57:19', '2021-03-05 18:36:19');
INSERT INTO `t_ligent_login` VALUES (12248, 1, '2021-03-06 23:55:00', '2021-03-07 19:33:39', '2021-03-06 23:55:00');
INSERT INTO `t_ligent_login` VALUES (12249, 1, '2021-03-07 23:53:45', '2021-03-08 13:13:10', '2021-03-07 23:53:45');
INSERT INTO `t_ligent_login` VALUES (12250, 1, '2021-03-08 22:44:43', '2021-03-08 22:47:13', '2021-03-08 22:44:43');
INSERT INTO `t_ligent_login` VALUES (12251, 1, '2021-03-09 21:56:26', '2021-03-09 22:48:37', '2021-03-09 21:56:26');
INSERT INTO `t_ligent_login` VALUES (12252, 1, '2021-03-10 18:04:32', '2021-03-10 18:34:15', '2021-03-10 18:04:32');
INSERT INTO `t_ligent_login` VALUES (12253, 1, '2021-03-11 22:59:10', '2021-03-11 22:59:38', '2021-03-11 22:59:10');
INSERT INTO `t_ligent_login` VALUES (12254, 1, '2021-03-12 11:12:22', '2021-03-13 08:33:05', '2021-03-12 11:12:22');
INSERT INTO `t_ligent_login` VALUES (12255, 1, '2021-03-13 17:29:17', '2021-03-14 11:55:03', '2021-03-13 17:29:17');
INSERT INTO `t_ligent_login` VALUES (12256, 1, '2021-03-14 20:25:19', '2021-03-14 20:26:55', '2021-03-14 20:25:19');
INSERT INTO `t_ligent_login` VALUES (12257, 1, '2021-03-15 22:18:04', '2021-03-15 22:27:03', '2021-03-15 22:18:04');
INSERT INTO `t_ligent_login` VALUES (12258, 1, '2021-03-16 23:40:34', '2021-03-16 23:41:56', '2021-03-16 23:40:34');
INSERT INTO `t_ligent_login` VALUES (12259, 1, '2021-03-17 23:04:31', '2021-03-17 23:07:34', '2021-03-17 23:04:31');
INSERT INTO `t_ligent_login` VALUES (12260, 1, '2021-03-18 20:12:49', '2021-03-18 21:28:54', '2021-03-18 20:12:49');
INSERT INTO `t_ligent_login` VALUES (12261, 1, '2021-03-19 18:59:04', '2021-03-19 19:02:56', '2021-03-19 18:59:04');
INSERT INTO `t_ligent_login` VALUES (12262, 1, '2021-03-20 22:53:40', '2021-03-20 22:54:25', '2021-03-20 22:53:40');
INSERT INTO `t_ligent_login` VALUES (12263, 1, '2021-03-21 23:05:21', '2021-03-21 23:05:49', '2021-03-21 23:05:21');
INSERT INTO `t_ligent_login` VALUES (12264, 1, '2021-03-22 23:37:02', '2021-03-23 01:46:09', '2021-03-22 23:37:02');
INSERT INTO `t_ligent_login` VALUES (12265, 1, '2021-03-23 21:02:38', '2021-03-23 21:05:03', '2021-03-23 21:02:38');
INSERT INTO `t_ligent_login` VALUES (12266, 136, '2021-03-23 11:17:12', '2021-03-23 11:19:30', '2021-03-23 11:17:12');
INSERT INTO `t_ligent_login` VALUES (12267, 137, '2021-03-23 11:19:40', '2021-03-23 11:19:53', '2021-03-23 11:19:40');
INSERT INTO `t_ligent_login` VALUES (12268, 1, '2021-03-24 21:26:29', '2021-03-24 21:47:21', '2021-03-24 21:26:29');
INSERT INTO `t_ligent_login` VALUES (12269, 1, '2021-03-25 20:18:37', '2021-03-25 20:21:51', '2021-03-25 20:18:37');
INSERT INTO `t_ligent_login` VALUES (12270, 1, '2021-03-26 17:31:04', '2021-03-26 17:33:03', '2021-03-26 17:31:04');
INSERT INTO `t_ligent_login` VALUES (12271, 133, '2021-03-26 14:33:05', '2021-03-26 14:34:05', '2021-03-26 14:33:05');
INSERT INTO `t_ligent_login` VALUES (12272, 21, '2021-03-26 14:36:03', '2021-03-26 14:36:33', '2021-03-26 14:36:03');
INSERT INTO `t_ligent_login` VALUES (12273, 1, '2021-03-27 23:23:54', '2021-03-28 01:05:44', '2021-03-27 23:23:54');
INSERT INTO `t_ligent_login` VALUES (12274, 1, '2021-03-28 22:23:18', '2021-03-28 22:23:41', '2021-03-28 22:23:18');
INSERT INTO `t_ligent_login` VALUES (12275, 1, '2021-03-29 23:30:55', '2021-03-29 23:31:28', '2021-03-29 23:30:55');
INSERT INTO `t_ligent_login` VALUES (12276, 2, '2021-03-29 22:31:41', '2021-03-29 22:33:50', '2021-03-29 22:31:41');
INSERT INTO `t_ligent_login` VALUES (12277, 1, '2021-03-30 15:26:52', '2021-03-30 15:32:39', '2021-03-30 15:26:52');
INSERT INTO `t_ligent_login` VALUES (12278, 1, '2021-03-31 21:20:54', '2021-03-31 21:21:17', '2021-03-31 21:20:54');
INSERT INTO `t_ligent_login` VALUES (12279, 1, '2021-04-01 16:12:02', '2021-04-01 20:44:23', '2021-04-01 16:12:02');
INSERT INTO `t_ligent_login` VALUES (12280, 1, '2021-04-02 18:52:55', '2021-04-02 18:53:28', '2021-04-02 18:52:55');
INSERT INTO `t_ligent_login` VALUES (12281, 1, '2021-04-03 21:21:42', '2021-04-03 21:22:22', '2021-04-03 21:21:42');
INSERT INTO `t_ligent_login` VALUES (12282, 1, '2021-04-04 16:14:33', '2021-04-04 16:15:03', '2021-04-04 16:14:33');
INSERT INTO `t_ligent_login` VALUES (12283, 1, '2021-04-05 20:34:58', '2021-04-05 20:35:15', '2021-04-05 20:34:58');
INSERT INTO `t_ligent_login` VALUES (12284, 1, '2021-04-06 16:24:29', '2021-04-06 16:27:38', '2021-04-06 16:24:29');
INSERT INTO `t_ligent_login` VALUES (12285, 1, '2021-04-07 23:26:01', '2021-04-08 15:18:01', '2021-04-07 23:26:01');
INSERT INTO `t_ligent_login` VALUES (12286, 2, '2021-04-07 10:03:49', '2021-04-07 10:17:42', '2021-04-07 10:03:49');
INSERT INTO `t_ligent_login` VALUES (12287, 1, '2021-04-08 22:58:15', '2021-04-08 22:58:32', '2021-04-08 22:58:15');
INSERT INTO `t_ligent_login` VALUES (12288, 1, '2021-04-09 19:33:31', '2021-04-09 20:00:51', '2021-04-09 19:33:31');
INSERT INTO `t_ligent_login` VALUES (12289, 1, '2021-04-10 23:46:41', '2021-04-10 23:46:47', '2021-04-10 23:46:41');
INSERT INTO `t_ligent_login` VALUES (12290, 2, '2021-04-10 10:33:35', '2021-04-10 11:42:33', '2021-04-10 10:33:35');
INSERT INTO `t_ligent_login` VALUES (12291, 1, '2021-04-11 22:03:46', '2021-04-11 22:09:53', '2021-04-11 22:03:46');
INSERT INTO `t_ligent_login` VALUES (12292, 1, '2021-04-12 23:59:39', '2021-04-13 00:00:03', '2021-04-12 23:59:39');
INSERT INTO `t_ligent_login` VALUES (12293, 1, '2021-04-12 10:11:26', '2021-04-12 10:12:51', '2021-04-12 10:11:26');
INSERT INTO `t_ligent_login` VALUES (12294, 3, '2021-04-12 10:39:10', '2021-04-12 10:51:58', '2021-04-12 10:39:18');
INSERT INTO `t_ligent_login` VALUES (12295, 3, '2021-04-12 10:12:07', '2021-04-12 10:12:46', '2021-04-12 10:12:41');
INSERT INTO `t_ligent_login` VALUES (12296, 3, '2021-04-12 10:12:46', '2021-04-12 10:30:37', '2021-04-12 10:12:46');
INSERT INTO `t_ligent_login` VALUES (12297, 1, '2021-04-12 10:12:51', '2021-04-12 10:14:29', '2021-04-12 10:12:51');
INSERT INTO `t_ligent_login` VALUES (12298, 1, '2021-04-12 10:14:29', '2021-04-12 10:17:20', '2021-04-12 10:14:30');
INSERT INTO `t_ligent_login` VALUES (12299, 1, '2021-04-12 10:17:20', '2021-04-12 10:17:26', '2021-04-12 10:17:20');
INSERT INTO `t_ligent_login` VALUES (12300, 1, '2021-04-12 10:17:34', '2021-04-12 10:24:44', '2021-04-12 10:17:35');
INSERT INTO `t_ligent_login` VALUES (12301, 1, '2021-04-12 10:24:44', '2021-04-12 10:27:38', '2021-04-12 10:24:45');
INSERT INTO `t_ligent_login` VALUES (12302, 1, '2021-04-12 10:28:07', '2021-04-12 10:30:13', '2021-04-12 10:28:07');
INSERT INTO `t_ligent_login` VALUES (12303, 1, '2021-04-12 10:30:22', '2021-04-12 10:36:06', '2021-04-12 10:30:23');
INSERT INTO `t_ligent_login` VALUES (12304, 3, '2021-04-12 10:31:06', '2021-04-12 10:38:48', '2021-04-12 10:31:06');
INSERT INTO `t_ligent_login` VALUES (12305, 1, '2021-04-12 10:36:16', '2021-04-12 10:42:53', '2021-04-12 10:36:17');
INSERT INTO `t_ligent_login` VALUES (12306, 3, '2021-04-12 10:39:09', '2021-04-12 10:51:58', '2021-04-12 10:39:10');
INSERT INTO `t_ligent_login` VALUES (12307, 1, '2021-04-12 10:42:53', '2021-04-12 10:43:57', '2021-04-12 10:42:54');
INSERT INTO `t_ligent_login` VALUES (12308, 1, '2021-04-12 10:43:58', '2021-04-12 10:45:47', '2021-04-12 10:43:59');
INSERT INTO `t_ligent_login` VALUES (12309, 1, '2021-04-12 10:45:47', '2021-04-12 10:47:04', '2021-04-12 10:45:48');
INSERT INTO `t_ligent_login` VALUES (12310, 1, '2021-04-12 10:47:04', '2021-04-12 10:47:32', '2021-04-12 10:47:05');
INSERT INTO `t_ligent_login` VALUES (12311, 1, '2021-04-12 10:47:32', '2021-04-12 10:50:06', '2021-04-12 10:47:33');
INSERT INTO `t_ligent_login` VALUES (12312, 1, '2021-04-12 10:50:43', '2021-04-12 10:51:27', '2021-04-12 10:50:44');
INSERT INTO `t_ligent_login` VALUES (12313, 1, '2021-04-12 10:51:27', '2021-04-12 10:51:56', '2021-04-12 10:51:28');
INSERT INTO `t_ligent_login` VALUES (12314, 1, '2021-04-12 10:52:37', '2021-04-12 10:53:43', '2021-04-12 10:53:35');
INSERT INTO `t_ligent_login` VALUES (12315, 1, '2021-04-12 10:53:43', '2021-04-12 10:54:57', '2021-04-12 10:54:39');
INSERT INTO `t_ligent_login` VALUES (12316, 1, '2021-04-12 10:54:58', '2021-04-12 11:51:35', '2021-04-12 10:54:58');
INSERT INTO `t_ligent_login` VALUES (12317, 1, '2021-04-12 12:02:52', '2021-04-12 12:04:06', '2021-04-12 12:02:56');
INSERT INTO `t_ligent_login` VALUES (12318, 2, '2021-04-12 12:05:44', '2021-04-12 16:19:13', '2021-04-12 12:05:45');
INSERT INTO `t_ligent_login` VALUES (12319, 1, '2021-04-12 12:04:06', '2021-04-12 12:05:35', '2021-04-12 12:05:29');
INSERT INTO `t_ligent_login` VALUES (12320, 1, '2021-04-12 12:05:36', '2021-04-12 12:09:30', '2021-04-12 12:05:37');
INSERT INTO `t_ligent_login` VALUES (12321, 2, '2021-04-12 12:05:42', '2021-04-12 16:19:13', '2021-04-12 12:05:44');
INSERT INTO `t_ligent_login` VALUES (12322, 136, '2021-04-12 17:21:36', '2021-04-12 18:17:45', '2021-04-12 17:21:36');
INSERT INTO `t_ligent_login` VALUES (12323, 138, '2021-04-12 19:31:12', '2021-04-12 19:33:06', '2021-04-12 19:31:12');
INSERT INTO `t_ligent_login` VALUES (12324, 1, '2021-04-13 19:52:48', '2021-04-13 19:56:07', '2021-04-13 19:52:48');
INSERT INTO `t_ligent_login` VALUES (12325, 1, '2021-04-17 22:31:16', '2021-04-17 22:31:31', '2021-04-17 22:31:16');
INSERT INTO `t_ligent_login` VALUES (12326, 5, '2021-04-17 20:38:46', '2021-04-17 20:54:04', '2021-04-17 20:38:46');
INSERT INTO `t_ligent_login` VALUES (12327, 8, '2021-04-17 20:39:58', '2021-04-17 20:55:56', '2021-04-17 20:39:58');
INSERT INTO `t_ligent_login` VALUES (12328, 2, '2021-04-17 17:46:56', '2021-04-17 17:47:20', '2021-04-17 17:46:56');
INSERT INTO `t_ligent_login` VALUES (12329, 138, '2021-04-17 17:05:33', '2021-04-17 17:06:07', '2021-04-17 17:05:33');
INSERT INTO `t_ligent_login` VALUES (12330, 1, '2021-04-18 20:42:16', '2021-04-18 20:42:44', '2021-04-18 20:42:16');
INSERT INTO `t_ligent_login` VALUES (12331, 1, '2021-04-19 22:50:39', '2021-04-19 23:00:31', '2021-04-19 22:50:39');
INSERT INTO `t_ligent_login` VALUES (12332, 1, '2021-04-20 23:00:51', '2021-04-20 23:36:54', '2021-04-20 23:00:51');
INSERT INTO `t_ligent_login` VALUES (12333, 1, '2021-04-21 11:56:09', '2021-04-21 11:56:12', '2021-04-21 11:56:09');
INSERT INTO `t_ligent_login` VALUES (12334, 1, '2021-05-26 15:59:32', NULL, '2021-06-06');
INSERT INTO `t_ligent_login` VALUES (12335, 1, '2021-05-27 18:34:41', NULL, '2021-06-06');
INSERT INTO `t_ligent_login` VALUES (12336, 1, '2021-06-04 14:58:54', NULL, '2021-06-06');
INSERT INTO `t_ligent_login` VALUES (12337, 2, '2021-06-06 11:54:36', NULL, '2021-06-11');
INSERT INTO `t_ligent_login` VALUES (12338, 1, '2021-06-06 11:57:25', NULL, '2021-06-06 12:31:03');
INSERT INTO `t_ligent_login` VALUES (12339, 2, '2021-06-11 15:53:59', NULL, '2021-06-11 17:58:55');

-- ----------------------------
-- Procedure structure for p_auth_account_fainByCode
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_account_fainByCode`;
delimiter ;;
CREATE PROCEDURE `p_auth_account_fainByCode`(IN _userCode VARCHAR(200))
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据账号获取账号信息
		 * ----------------------------- 
		 */
		
		SELECT a.* 
				FROM t_auth_account AS a 
				WHERE a.isValid=1 AND a.isFrozen=0 AND a.userCode=_userCode;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_account_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_account_login`;
delimiter ;;
CREATE PROCEDURE `p_auth_account_login`(IN _userCode VARCHAR(200), IN _userPwd VARCHAR(500))
BEGIN
		/* 
		 * ----------------------------- 
		 * 用户登录 'adonis','bd04fcc97578ce33ca5fb331f42bc375'
		 * ----------------------------- 
		 */
		
		-- 账号编号
		DECLARE _accountId BIGINT;
		-- 是否被冻结（1已冻结，0没冻结）
		DECLARE _isFrozen INT;
		
		-- 根据用户名和密码获取是否存在数据
		SELECT accountiD,isFrozen INTO _accountId,_isFrozen FROM t_auth_account WHERE userCode = _userCode AND userPwd = _userPwd;
		
		IF _isFrozen IS NULL THEN 
				SELECT 1102 AS `code`, '用户名或登录密码不正确！' AS msg;
		ELSEIF _isFrozen = 1 THEN 
				SELECT 1102 AS `code`, '您的用户已被冻结，如有疑问请联系管理员！' AS msg;
		ELSE
				SELECT _accountId AS keyID, 0 AS `code`, '登入成功！' AS msg;
		END IF;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_action_findByMenu
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_action_findByMenu`;
delimiter ;;
CREATE PROCEDURE `p_auth_action_findByMenu`(IN _menuId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据菜单获取按钮信息
		 * ----------------------------- 
		 */
		
		SELECT a.*,t.typeName 
				FROM t_auth_action AS a 
						LEFT JOIN t_auth_actiontype AS t ON t.typeID=a.actionType 
				WHERE a.menuID = _menuId AND a.isValid = 1 
				ORDER BY a.actionSort ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_action_findByUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_action_findByUser`;
delimiter ;;
CREATE PROCEDURE `p_auth_action_findByUser`(IN _userId BIGINT, IN _actionPath VARCHAR(500))
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据用户获取按钮列表
		 * ----------------------------- 
		 */
		
		-- 用户角色编号集合
		DECLARE _roleIds VARCHAR(100);
		
		-- 获取角色编号集合
		SELECT GROUP_CONCAT(DISTINCT roleID) INTO _roleIds FROM t_auth_roleuser WHERE userID = _userId;
		
		-- 返回按钮
		SELECT a.* 
				FROM t_auth_roleaction AS ra 
						LEFT JOIN t_auth_action AS a ON a.actionID=ra.actionID 
						LEFT JOIN t_auth_menu AS m ON m.menuID=a.menuID 
				WHERE a.isValid = 1 AND FIND_IN_SET(ra.roleID,_roleIds) 
						-- AND (!svf_isValid(_menuId) OR (svf_isValid(_menuId) AND a.menuID = _menuId))
						AND _actionPath LIKE CONCAT('/',m.menuPath,'%') AND m.isValid=1
				GROUP BY a.actionID 
				ORDER BY a.menuID ASC, a.actionSort ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_menu_findByAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_menu_findByAll`;
delimiter ;;
CREATE PROCEDURE `p_auth_menu_findByAll`()
BEGIN
		/* 
		 * ----------------------------- 
		 * 获取所有菜单列表
		 * ----------------------------- 
		 */
		
		SELECT m.*,(SELECT COUNT(menuID) FROM t_auth_menu WHERE parentID = m.menuID AND isValid = 1) AS childCount 
				FROM t_auth_menu AS m 
				WHERE m.isValid = 1 
				ORDER BY m.parentID ASC, m.menuSort ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_menu_findByIds
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_menu_findByIds`;
delimiter ;;
CREATE PROCEDURE `p_auth_menu_findByIds`(IN _menuIds VARCHAR(200))
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据编号集合获取菜单列表
		 * ----------------------------- 
		 */
		
		-- 排序不可改，关联多数据删除，先删除子菜单，在删除根菜单
		SELECT * 
				FROM t_auth_menu 
				WHERE FIND_IN_SET(menuID,_menuIds) AND isValid = 1 
				ORDER BY isRoot ASC, menuID DESC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_menu_findByUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_menu_findByUser`;
delimiter ;;
CREATE PROCEDURE `p_auth_menu_findByUser`(IN _userId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据用户获取菜单列表
		 * ----------------------------- 
		 */
		
		-- 用户角色编号集合
		DECLARE _roleIds VARCHAR(100);
		
		-- 获取角色编号集合
		SELECT GROUP_CONCAT(DISTINCT roleID) INTO _roleIds FROM t_auth_roleuser WHERE userID = _userId AND isValid = 1;
		
		-- 返回菜单
		SELECT m.* 
				FROM t_auth_rolemenu AS rm 
						LEFT JOIN t_auth_menu AS m ON m.menuID=rm.menuID 
				WHERE m.isValid = 1 AND FIND_IN_SET(rm.roleID,_roleIds) 
				GROUP BY m.menuID 
				ORDER BY m.parentID ASC, m.menuSort ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_role_findByAction
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_role_findByAction`;
delimiter ;;
CREATE PROCEDURE `p_auth_role_findByAction`(IN _actionId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据权限获取角色列表
		 * ----------------------------- 
		 */
		
		SELECT r.roleID,r.roleName,(SELECT COUNT(DISTINCT raID) FROM t_auth_roleaction WHERE actionID = _actionId AND r.roleID=roleID) AS isValid 
				FROM t_auth_role AS r 
				WHERE r.isValid = 1;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_role_findByAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_role_findByAll`;
delimiter ;;
CREATE PROCEDURE `p_auth_role_findByAll`()
BEGIN
		/* 
		 * ----------------------------- 
		 * 获取所有角色列表
		 * ----------------------------- 
		 */
		
		SELECT r.*,(CASE WHEN r.parentID = 0 THEN '已经是最高级' ELSE p.roleName END) AS parentName, 
						(SELECT COUNT(roleID) FROM t_auth_role WHERE parentID=r.roleID AND isValid = 1) AS childCount, 
						(SELECT COUNT(DISTINCT raID) FROM t_auth_roleaction WHERE roleID=r.roleID) AS actionCount, 
						(SELECT COUNT(DISTINCT rmID) FROM t_auth_rolemenu WHERE roleID=r.roleID) AS menuCount, 
						(SELECT COUNT(DISTINCT ruID) FROM t_auth_roleuser WHERE roleID=r.roleID AND isValid = 1) AS userCount 
				FROM t_auth_role AS r 
						LEFT JOIN t_auth_role AS p ON p.roleID=r.parentID
				WHERE r.isValid = 1 
				ORDER BY r.roleRank ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_role_findByMenu
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_role_findByMenu`;
delimiter ;;
CREATE PROCEDURE `p_auth_role_findByMenu`(IN _menuId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据权限获取角色列表
		 * ----------------------------- 
		 */
		
		SELECT r.roleID,r.roleName,(SELECT COUNT(DISTINCT rmID) FROM t_auth_rolemenu WHERE menuID = _menuId AND r.roleID=roleID) AS isValid 
				FROM t_auth_role AS r 
				WHERE r.isValid = 1;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_role_findByUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_role_findByUser`;
delimiter ;;
CREATE PROCEDURE `p_auth_role_findByUser`(IN _userId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 根据用户获取下属角色列表
	 * ----------------------------- 
	 */
		
		DECLARE _roleRank TINYINT DEFAULT 1;
		
		SELECT MIN(r.roleRank) INTO _roleRank 
					FROM t_auth_roleuser AS x 
							LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
					WHERE x.userID = _userId;
		--
		SELECT r.*
				FROM t_auth_role AS r 
				WHERE r.isValid = 1 AND r.roleRank >= _roleRank 
				ORDER BY r.roleRank ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_delete`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_delete`(IN _userId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 删除用户信息
	 * ----------------------------- 
	 */
		
		-- 账户编号
		DECLARE _accountId BIGINT;
		
		-- 获取账户编号
		SELECT accountID INTO _accountId FROM t_auth_user WHERE userID = _userId;
		
		-- 删除用户信息
		UPDATE t_auth_user SET isValid = 0 WHERE userID = _userId;
		
		-- 删除账户信息
		UPDATE t_auth_account SET isValid = 0 WHERE accountID = _accountId;
		
		-- 删除角色用户映射
		UPDATE t_auth_roleuser SET isValid = 0 WHERE userID = _userId;
		
		-- 返回对象
		SELECT _userId AS keyID, 0 AS `code`, '删除成功！' AS msg;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_fainByAccount
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_fainByAccount`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_fainByAccount`(IN _accountId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据账号获取用户信息
		 * ----------------------------- 
		 */
		
		SELECT u.*,a.userCode 
				FROM t_auth_user AS u 
						LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
				WHERE u.isValid = 1 AND u.accountID = _accountId;
		
		/*-- 用户编号
		DECLARE _userId BIGINT;
		
		SELECT userID INTO _userId FROM t_auth_user WHERE accountID = _accountId;
		
		SELECT u.*,r.roleID,r.roleName 
				FROM t_auth_user AS u 
						LEFT JOIN (SELECT t2.roleID,t2.roleName,t1.userID FROM t_auth_roleuser AS t1 LEFT JOIN t_auth_role AS t2 ON t1.roleID=t2.roleID WHERE t1.userID=_userId ORDER BY t2.roleRank ASC LIMIT 1) AS r ON r.userID=u.userID
				WHERE u.userID = _userId;*/
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_fainById
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_fainById`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_fainById`(IN _userId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据编号获取用户信息
		 * ----------------------------- 
		 */
		
		/*SELECT u.*,a.userCode,r.roleID,r.roleName 
				FROM t_auth_user AS u 
						LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						LEFT JOIN (SELECT t2.roleID,t2.roleName,t1.userID 
														FROM t_auth_roleuser AS t1 
															LEFT JOIN t_auth_role AS t2 ON t1.roleID=t2.roleID 
															WHERE t1.userID=_userId AND t1.isValid = 1 
															ORDER BY t2.roleRank ASC LIMIT 1 
											) AS r ON r.userID=u.userID 
				WHERE u.userID = _userId;*/
		
		SELECT u.*,a.userCode,GROUP_CONCAT(r.roleID) AS roleIds,GROUP_CONCAT(r.roleName) AS roleNames 
				FROM t_auth_user AS u 
						LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						LEFT JOIN t_auth_roleuser AS x ON x.userID=u.userID 
						LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID
				WHERE u.userID = _userId
				GROUP BY u.userID;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_findByPage
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_findByPage`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_findByPage`(IN _roleId BIGINT, IN _searchKey VARCHAR(50), IN _start INT, IN _limit INT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 分页获取用户信息 NULL,'%',0,10
	 * ----------------------------- 
	 */
		
		IF _roleId IS NULL OR _roleId <= 0 THEN 
				SET _roleId = 0;
		END IF;
		
		-- 获取所有数量
		SELECT COUNT(DISTINCT u.userID) AS count 
				FROM t_auth_user AS u 
						LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						LEFT JOIN t_auth_roleuser AS x ON x.userID=u.userID AND x.isValid = 1 
						LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
				WHERE u.isValid = 1 AND (_roleId=0 OR (_roleId<>0 AND x.roleID=_roleId))
						AND (u.userName LIKE _searchKey OR a.userCode LIKE _searchKey OR r.roleName LIKE _searchKey);
		
		-- 获取对应页码数据
		SELECT u.*,a.userCode,a.isFrozen,GROUP_CONCAT(r.roleName) AS roleName 
				FROM t_auth_user AS u 
						LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						LEFT JOIN t_auth_roleuser AS x ON x.userID=u.userID AND x.isValid = 1 
						LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
				WHERE u.isValid = 1 AND (_roleId=0 OR (_roleId<>0 AND x.roleID=_roleId)) 
						AND (u.userName LIKE _searchKey OR a.userCode LIKE _searchKey OR r.roleName LIKE _searchKey) 
				GROUP BY u.userID 
				ORDER BY u.createTime DESC 
				LIMIT _start,_limit;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_findBySearch
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_findBySearch`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_findBySearch`(IN _userId BIGINT, IN _roleId BIGINT, IN _searchKey VARCHAR(200))
BEGIN
		/* 
		 * ----------------------------- 
		 * 添加好友-查找用户列表 27,0,'%'
		 * ----------------------------- 
		 */
		
		-- 角色等级
		DECLARE _roleRank INT;
		-- 好友编号集合
		DECLARE _friendIds VARCHAR(5000);
		
		IF _roleId = 0 AND _searchKey = '%' THEN 
				-- 获取最大角色等级
				SELECT r.roleRank INTO _roleRank 
						FROM t_auth_roleuser AS x 
								LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
						WHERE x.userID=_userId 
						ORDER BY r.roleRank ASC 
						LIMIT 1;
				
				-- 获取好友编号集合
				SELECT IFNULL(GROUP_CONCAT(friendID),'0') INTO _friendIds FROM t_chat_friend WHERE userID=_userId;
				SET _friendIds = CONCAT(_userId,',',_friendIds);
				
				-- 返回集合
				SELECT u.userID,u.userName,u.avatar,a.userCode,GROUP_CONCAT(r.roleName) AS roleNames, 0 AS isValid 
						FROM t_auth_roleuser AS x 
								LEFT JOIN t_auth_user AS u ON u.userID=x.userID 
								LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
								LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						WHERE u.isValid=1 AND a.isFrozen=0 AND !FIND_IN_SET(x.userID,_friendIds) AND r.roleRank>=_roleRank 
						GROUP BY u.userID 
						ORDER BY r.roleRank ASC, u.userID ASC 
						LIMIT 9;
		ELSEIF _roleId <> 0 AND _searchKey = '%' THEN 
				SELECT u.userID,u.userName,u.avatar,a.userCode,r.roleName AS roleNames, 
								(SELECT COUNT(friendID) FROM t_chat_friend WHERE userID=_userId AND friendID=x.userID) AS isValid 
						FROM t_auth_roleuser AS x 
								LEFT JOIN t_auth_user AS u ON u.userID=x.userID 
								LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
								LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						WHERE u.isValid=1 AND a.isFrozen=0 AND x.userID<>_userId AND x.roleID=_roleId 
						GROUP BY u.userID 
						ORDER BY u.userID ASC 
						LIMIT 9;
		ELSEIF _roleId = 0 AND _searchKey <> '%' THEN 
				SELECT u.userID,u.userName,u.avatar,a.userCode,r.roleName AS roleNames, 
								(SELECT COUNT(friendID) FROM t_chat_friend WHERE userID=_userId AND friendID=x.userID) AS isValid 
						FROM t_auth_roleuser AS x 
								LEFT JOIN t_auth_user AS u ON u.userID=x.userID 
								LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
								LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						WHERE u.isValid=1 AND a.isFrozen=0 AND x.userID<>_userId AND (LOWER(u.userName) LIKE _searchKey OR LOWER(a.userCode) LIKE _searchKey) 
						GROUP BY u.userID 
						ORDER BY r.roleRank ASC, u.userID ASC 
						LIMIT 9;
		ELSEIF _roleId <> 0 AND _searchKey <> '%' THEN 
				SELECT u.userID,u.userName,u.avatar,a.userCode,r.roleName AS roleNames, 
								(SELECT COUNT(friendID) FROM t_chat_friend WHERE userID=_userId AND friendID=x.userID) AS isValid 
						FROM t_auth_roleuser AS x 
								LEFT JOIN t_auth_user AS u ON u.userID=x.userID 
								LEFT JOIN t_auth_role AS r ON r.roleID=x.roleID 
								LEFT JOIN t_auth_account AS a ON a.accountID=u.accountID 
						WHERE u.isValid=1 AND a.isFrozen=0 AND x.userID<>_userId AND x.roleID=_roleId AND (LOWER(u.userName) LIKE _searchKey OR LOWER(a.userCode) LIKE _searchKey) 
						GROUP BY u.userID 
						ORDER BY u.userID ASC 
						LIMIT 9;
		END IF;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_insert`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_insert`(IN _userCode VARCHAR(200), IN _userName VARCHAR(200), IN _createUserId BIGINT, IN _roleIds VARCHAR(500))
label_at_start: 
BEGIN
	/* 
	 * ----------------------------- 
	 * 新增用户信息
	 * ----------------------------- 
	 */
		
		-- 账号编号
		DECLARE _accountId BIGINT;
		-- 用户编号
		DECLARE _userId BIGINT;
		-- 初始密码为123456
		DECLARE _userPwd VARCHAR(200) DEFAULT 'FE85E814FD656A2D490B842C6D33019D';
		-- 是否存在
		DECLARE _isExist INT;
		
		
		-- 判断账号是否存在
		SELECT COUNT(accountID) INTO _isExist FROM t_auth_account WHERE userCode = _userCode AND isFrozen = 0 AND isValid = 1;
		IF _isExist > 0 THEN 
				SELECT 1102 AS `code`, '用户账号已存在！' AS msg;
				LEAVE label_at_start; -- 此处是跳出存储过程
		END IF;
		
		-- 新增账号信息
		INSERT INTO t_auth_account(userCode,userPwd)
				VALUES(_userCode,_userPwd);
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _accountId;
		
		-- 新增用户信息
		INSERT INTO t_auth_user(accountID,userName,createTime,createUserID)
				VALUES(_accountId,_userName,NOW(),_createUserId);
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _userId;
		
		-- 新增用户角色关系
		IF _roleIds IS NOT NULL AND LEFT(_roleIds,1) <> ',' THEN 
				INSERT INTO t_auth_roleuser (roleID, userID) 
						SELECT roleID,_userId FROM t_auth_role WHERE FIND_IN_SET(roleID,_roleIds) ORDER BY roleRank ASC;
		END IF;
		
		-- 返回对象
		SELECT _userId AS keyID, 0 AS `code`, '新增成功！' AS msg;
		
END label_at_start
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_update`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_update`(IN _userId BIGINT, IN _userName VARCHAR(200), IN _roleIds VARCHAR(200), IN _degree VARCHAR(100), IN _sexName VARCHAR(20), IN _address VARCHAR(5000), IN _description VARCHAR(5000))
BEGIN
	/* 
	 * ----------------------------- 
	 * 编辑用户信息
	 * ----------------------------- 
	 */
		
		-- 修改用户信息
		UPDATE t_auth_user 
				SET userName=_userName,degree=_degree,sexName=_sexName,address=_address,description=_description
				WHERE userID = _userId;
		
		-- 处理用户角色关系
		IF _roleIds IS NOT NULL AND LEFT(_roleIds,1) <> ',' THEN 
				DELETE FROM t_auth_roleuser WHERE userID = _userId;
				INSERT INTO t_auth_roleuser (roleID, userID) 
						SELECT roleID,_userId FROM t_auth_role WHERE FIND_IN_SET(roleID,_roleIds) ORDER BY roleRank ASC;
		END IF;
		
		-- 返回对象
		SELECT * FROM t_auth_user WHERE userID = _userId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_auth_user_updateSign
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_auth_user_updateSign`;
delimiter ;;
CREATE PROCEDURE `p_auth_user_updateSign`(IN _userId BIGINT, IN _sign VARCHAR(500))
BEGIN
	/* 
	 * ----------------------------- 
	 * 编辑用户签名信息
	 * ----------------------------- 
	 */
		
		
		-- 修改用户信息
		UPDATE t_auth_user SET sign = _sign WHERE userID = _userId;
		
		-- 返回对象
		SELECT * FROM t_auth_user WHERE userID = _userId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_base_log_findByPage
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_base_log_findByPage`;
delimiter ;;
CREATE PROCEDURE `p_base_log_findByPage`(IN _timeFrame VARCHAR(500), IN _searchKey VARCHAR(50), IN _start INT, IN _limit INT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 分页获取操作日志
	 * ----------------------------- 
	 */
		
		-- 截取开始日期
		DECLARE _startDate VARCHAR(50);
		-- 截取结束日期
		DECLARE _endDate VARCHAR(50);
		
		-- 过滤时间范围
		IF(_timeFrame IS NOT NULL AND _timeFrame > 0 AND LOCATE(' - ',_timeFrame) > 0) THEN 
				SET _startDate = SUBSTRING_INDEX(_timeFrame, ' - ', 1);
				SET _endDate = SUBSTRING_INDEX(_timeFrame, ' - ', -1);
		END IF;
		
		-- 获取所有数量
		SELECT COUNT(DISTINCT l.logID) AS count 
				FROM t_base_log AS l 
						LEFT JOIN t_auth_user AS u ON u.userID=l.userID 
				WHERE (_startDate IS NULL OR (_startDate IS NOT NULL AND DATE(l.logTime)>=_startDate))
							AND (_endDate IS NULL OR (_endDate IS NOT NULL AND DATE(l.logTime)<=_endDate))
							AND (u.userName LIKE _searchKey OR l.content LIKE _searchKey) 
				ORDER BY l.logTime DESC 
				LIMIT _start,_limit;
		
		-- 获取对应页码数据
		SELECT l.*,u.userName 
				FROM t_base_log AS l 
						LEFT JOIN t_auth_user AS u ON u.userID=l.userID 
				WHERE (_startDate IS NULL OR (_startDate IS NOT NULL AND DATE(l.logTime)>=_startDate))
							AND (_endDate IS NULL OR (_endDate IS NOT NULL AND DATE(l.logTime)<=_endDate))
							AND (u.userName LIKE _searchKey OR l.content LIKE _searchKey) 
				ORDER BY l.logTime DESC 
				LIMIT _start,_limit;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_base_log_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_base_log_insert`;
delimiter ;;
CREATE PROCEDURE `p_base_log_insert`(IN _userId BIGINT, IN _source INT, IN _ip VARCHAR(100), IN _controller VARCHAR(200), IN _method VARCHAR(200), IN _content VARCHAR(200), IN _dataJson VARCHAR(20000), IN _exMsg VARCHAR(500), IN _logState INT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 新增操作日志
	 * ----------------------------- 
	 */
		
		-- 日志编号
		DECLARE _logId BIGINT;
		
		-- 新增日志
		INSERT INTO t_base_log(userID,source,ip,controller,method,content,dataJson,exMsg,logState,logTime)
				VALUES(_userId,_source,_ip,_controller,_method,_content,_dataJson,_exMsg,_logState,NOW());
		
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _logId;
		
		-- 返回对象
		SELECT * FROM t_base_log WHERE logID = _logId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_delete
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_delete`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_delete`(IN _docuId BIGINT, IN _userId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 删除文件
	 * ----------------------------- 
	 */
		
		-- 创建人编号
		DECLARE _createUserId BIGINT;
		-- 创建人角色等级
		DECLARE _createUserRoleRank INT DEFAULT 0;
		-- 登录人角色等级
		DECLARE _loginUserRoleRank INT DEFAULT 0;
		-- 文件类型
		DECLARE _typeId BIGINT;
		-- 文件用途（1私人文件，2共享文件）
		DECLARE _docuUse INT;
		-- 父级编号
		DECLARE _paterId BIGINT;
		-- 文件名称
		DECLARE _docuName VARCHAR(500);
		-- 本地目录
		DECLARE _localPath VARCHAR(1000);
		-- 子目录数量
		DECLARE _childCount INT DEFAULT 0;
		-- 执行的结果码
		DECLARE _statusCode INT DEFAULT 1;
		
		-- 获取文件类型,父级编号,文件名称,文件用途,本地目录,创建人
		SELECT typeID,paterID,docuName,docuUse,localPath,createUserID INTO _typeId,_paterId,_docuName,_docuUse,_localPath,_createUserId FROM t_file_docu WHERE docuID=_docuId;
		
		IF _userId <> _createUserId THEN
				IF _fileUse = 1 THEN 
						# 私人文件
						-- 没权限 自己方可删除
						SET _statusCode = 0;
				ELSE
						# 共享文件
						-- 获取创建人最高角色等级
						CALL p_sys_getUserHighestRoleRank(_createUserId, _createUserRoleRank);
						-- 获取登录人最高角色等级
						CALL p_sys_getUserHighestRoleRank(_userId, _loginUserRoleRank);
						
						-- 上级删除下级的文件，同级不能删除
						IF _loginUserRoleRank >= _createUserRoleRank THEN
								-- 没权限
								SET _statusCode = 0;
						END IF;
				END IF;
		END IF;
		
		-- 上级删除下级的文件，同级不能删除
		IF _statusCode > 0 THEN
				-- 删除文件
				UPDATE t_file_docu SET isValid=0,lastUpdateUser=_userId,lastUpdateTime=NOW() WHERE docuID=_docuId;
				
				-- 删除文件夹，子孙都要删除
				IF _typeId = 1 THEN
						UPDATE t_file_docu SET isValid=0,lastUpdateUser=_userId,lastUpdateTime=NOW() WHERE localPath LIKE CONCAT(_localPath,'/',_docuName,'%');
				END IF;
				
				
				# 统计父级文件夹子目录数量
				-- 获取子目录文件数量
				SELECT COUNT(docuID) INTO _childCount FROM t_file_docu WHERE paterID=_paterId AND isValid=1;
				-- 修改父级文件夹子目录数量
				UPDATE t_file_docu SET childCount=_childCount WHERE docuID=_paterId;
				
				SELECT 0 AS `code`, '删除成功！' AS msg;
		ELSE
				SELECT 1103 AS `code`, '你没有删除该文件的权限！' AS msg;
		END IF;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_fainById
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_fainById`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_fainById`(IN _docuId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 根据编号获取文件信息  
		 * ----------------------------- 
		 */
		
		SELECT d.*,u.userName,y.typeIcon,y.browseMode 
				FROM t_file_docu AS d 
						LEFT JOIN t_file_type AS y ON d.typeID=y.typeID 
						LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
				WHERE d.docuID = _docuId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_findAllChild
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_findAllChild`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_findAllChild`(IN _docuId BIGINT, IN _docuUse INT, IN _sortMode INT, IN _userId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 获取所有孩子节点
	 * ----------------------------- 
	 */
		
		/*-- 文件用途（1私人文件，2共享文件）
		DECLARE _docuUse TINYINT DEFAULT 1;
		
		IF _docuId > 0 THEN
				SELECT docuUse INTO _docuUse FROM t_file_docu WHERE docuID=_docuId;
		ELSEIF _docuId < 0 THEN 
				SET _docuId  = 0;
				SET _docuUse = 1;
		ELSE -- 等于零
				SET _docuId  = 0;
				SET _docuUse = 2;
		END IF;*/
		
		-- 文件用途（1私人文件，2共享文件）
		IF _docuUse IS NULL OR _docuUse <= 0 THEN 
				SELECT docuUse INTO _docuUse FROM t_file_docu WHERE docuID=_docuId;
		END IF;
		IF _sortMode IS NULL OR _sortMode<1 OR _sortMode>3 THEN 
				SET _sortMode = 1;
		END IF;
		
		-- 用途docuUse（1个人文件，2共享文件）
		IF _docuUse = 1 THEN 
				-- 排序方式sortMode(1类型,2名称,3日期)
				IF _sortMode = 2 THEN 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcong,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId AND d.createUserID=_userId 
								ORDER BY CONVERT(d.docuName USING GBK) ASC, d.typeID ASC, d.docuID ASC; 
				ELSEIF _sortMode = 3 THEN 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcong,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId AND d.createUserID=_userId 
								ORDER BY d.lastUpdateTime DESC, d.typeID ASC, CONVERT(d.docuName USING GBK) ASC; 
				ELSE 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcong,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId AND d.createUserID=_userId 
								ORDER BY d.typeID ASC, CONVERT(d.docuName USING GBK) ASC, d.docuID ASC; 
				END IF;
		ELSE 
				-- 排序方式sortMode(1类型,2名称,3日期)
				IF _sortMode = 2 THEN 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcon,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
								ORDER BY CONVERT(d.docuName USING GBK) ASC, d.typeID ASC, d.docuID ASC; 
				ELSEIF _sortMode = 3 THEN 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcon,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
								ORDER BY d.lastUpdateTime DESC, d.typeID ASC, CONVERT(d.docuName USING GBK) ASC; 
				ELSE 
						SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcon,y.browseMode 
								FROM t_file_docu AS d 
										LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
										LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
								WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
								ORDER BY d.typeID ASC, CONVERT(d.docuName USING GBK) ASC, d.docuID ASC;
				END IF;
				
				
				/*SELECT d.docuID*1 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
				UNION
				SELECT d.docuID*2 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
				UNION
				SELECT d.docuID*3 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
				UNION
				SELECT d.docuID*4 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
				UNION
				SELECT d.docuID*5 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId 
				UNION
				SELECT d.docuID*6 AS docuID,d.typeID,d.docuName,d.docuSizeUnit,d.downloadCount,DATE(d.createTime) AS createTime,y.typeIcon 
						FROM t_file_docu AS d 
								LEFT JOIN t_file_type AS y ON y.typeID=d.typeID 
						WHERE d.isValid=1 AND d.docuUse=_docuUse AND d.paterID=_docuId ; */
			
		END IF;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_findAllPater
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_findAllPater`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_findAllPater`(IN _docuId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 获取所有父级节点
	 * ----------------------------- 
	 */
		
		-- 文件编号集合
		DECLARE _docuIds VARCHAR(1000);
		
		-- 赋值给文件编号集合
		SET _docuIds=_docuId;
		
		-- 循环获取父级编号
		WHILE _docuId > 0 DO 
				SELECT paterID INTO _docuId FROM t_file_docu WHERE docuID=_docuId;
				SET _docuIds = CONCAT(_docuIds,',',_docuId);
		END WHILE;
		
		-- 返回所有父级节点
		SELECT * FROM t_file_docu WHERE FIND_IN_SET(docuID,_docuIds) ORDER BY docuID ASC;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_insertFile
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_insertFile`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_insertFile`(IN _paterId BIGINT, IN _docuUse INT, IN _docuName VARCHAR(500), IN _docuPath VARCHAR(500), IN _docuSuffix VARCHAR(100), IN _docuSize BIGINT, IN _docuSizeUnit VARCHAR(100), IN _docuDesc VARCHAR(1000), IN _createUserId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 上传文件 5,'123.jpg','/iscp/123.jpg','jpg',150,'150KB','',1
	 * ----------------------------- 
	 */
		
		-- 文件编号
		DECLARE _docuId BIGINT;
		-- 文件类型编号
		DECLARE _typeId BIGINT;
		-- 本地目录
		DECLARE _localPath VARCHAR(1000);
		-- 子目录数量
		DECLARE _childCount TINYINT;
		-- 是否存在同名
		DECLARE _isExist TINYINT DEFAULT 0;
		
		-- 获取本地目录,文件用途
		IF _paterId IS NULL OR _paterId = 0 THEN 
				SET _paterId = 0;
				SET _localPath = 'docu';
		ELSE
				-- 文件用途（1私人文件，2共享文件）
				SELECT docuUse,CONCAT(localPath,'/',docuName) INTO _docuUse,_localPath FROM t_file_docu WHERE docuID=_paterId;
		END IF;
		
		-- 判断文件是否存在，存在便修改文件名，用括号数据区分
		SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE isValid=1 AND paterID=_paterId AND docuSuffix=_docuSuffix AND docuName LIKE CONCAT(LEFT(_docuName,(LENGTH(_docuName)-LOCATE('.',REVERSE(_docuName)))),'%');
		IF _isExist > 0 THEN 
				SET _docuName = CONCAT(
									LEFT(_docuName,(LENGTH(_docuName)-LOCATE('.',REVERSE(_docuName)))),
									'(',_isExist,')',
									SUBSTRING(_docuName,-(LOCATE('.',REVERSE(_docuName))))
						);
		END IF;
		
		-- 获取文件类型
		SELECT typeID INTO _typeId FROM t_file_type WHERE CONCAT(',',typeKey,',') LIKE CONCAT('%,',_docuSuffix,',%') ORDER BY typeID ASC LIMIT 0,1;
		IF _typeId IS NULL THEN 
				SET _typeId = 2;
		END IF;
		
		-- 新建文档
		INSERT INTO t_file_docu (docuUse, paterID, typeID, docuName, docuPath, localPath, docuSuffix, docuSize, 
								docuSizeUnit, downloadCount, docuDesc, createUserID, createTime, lastUpdateTime, isValid)
					VALUES(_docuUse, _paterId, _typeId, _docuName, _docuPath, _localPath, _docuSuffix, _docuSize, 
								_docuSizeUnit, 0, _docuDesc, _createUserId, NOW(), NOW(), 1);
		
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _docuId;
		
		
		-- 更改父级文件夹子文件数量
		SELECT COUNT(docuID) INTO _childCount FROM t_file_docu WHERE paterID=_paterId AND isValid=1;
		UPDATE t_file_docu SET childCount=_childCount,lastUpdateTime=NOW() WHERE docuID=_paterId;
		
		-- 返回对象
		SELECT d.docuID,d.typeID,d.docuName,d.docuPath,d.docuSizeUnit,d.downloadCount,docuDesc,DATE(d.createTime) AS createTime,u.userName,y.typeIcon,y.typeIcong,y.browseMode 
				FROM t_file_docu AS d 
						LEFT JOIN t_file_type AS y ON d.typeID=y.typeID 
						LEFT JOIN t_auth_user AS u ON u.userID=d.createUserID 
				WHERE d.docuID = _docuId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_insertFolder
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_insertFolder`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_insertFolder`(IN _paterId BIGINT, IN _docuUse INT, IN _docuName VARCHAR(500), IN _createUserId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 创建文件夹
	 * ----------------------------- 
	 */
		
		-- 文件编号
		DECLARE _docuId BIGINT;
		-- 文件类型编号
		DECLARE _typeId BIGINT;
		-- 本地目录
		DECLARE _localPath VARCHAR(1000);
		-- 子目录数量
		DECLARE _childCount TINYINT;
		-- 是否存在同名
		DECLARE _isExist TINYINT DEFAULT 0;
		
		SET _docuName = TRIM(_docuName);
		
		-- 获取本地目录,文件用途
		IF _paterId IS NULL OR _paterId = 0 THEN 
				SET _localPath = 'docu';
				SET _paterId = 0;
		ELSE
				-- 文件用途（1私人文件，2共享文件）
				SELECT docuUse,CONCAT(localPath,'/',docuName) INTO _docuUse,_localPath FROM t_file_docu WHERE docuID=_paterId;
		END IF;
		
		-- 获取文件类型
		SELECT typeID INTO _typeId FROM t_file_type WHERE typeKey = 0 ORDER BY typeID ASC LIMIT 1;
		
		-- 判断文件是否存在，存在便修改文件名，用括号数据区分
		SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE isValid=1 AND paterID=_paterId AND typeID=_typeId AND docuName LIKE CONCAT(_docuName,'%');
		IF _isExist > 0 THEN 
				SET _docuName = CONCAT(_docuName,'(',_isExist,')');
		END IF;
		
		-- 新建文件夹
		INSERT INTO t_file_docu (docuUse, paterID, typeID, docuName, localPath, childCount, createUserID, createTime, lastUpdateTime, isValid)
					VALUES(_docuUse, _paterId, _typeId, _docuName, _localPath, 0, _createUserId, NOW(), NOW(), 1);
		
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _docuId;
		
		-- 更改父级文件夹子文件数量
		SELECT COUNT(docuID) INTO _childCount FROM t_file_docu WHERE paterID=_paterId AND isValid=1;
		UPDATE t_file_docu SET childCount=_childCount,lastUpdateTime=NOW() WHERE docuID=_paterId;
		
		-- 返回对象
		SELECT * FROM t_file_docu WHERE docuID=_docuId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_updateCount
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_updateCount`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_updateCount`(IN _docuIds VARCHAR(500))
BEGIN
	/* 
	 * ----------------------------- 
	 * 更新下载数量
	 * ----------------------------- 
	 */
		
		UPDATE t_file_docu SET downloadCount=downloadCount+1,lastUpdateTime=NOW() WHERE FIND_IN_SET(docuID,_docuIds);
		
		SELECT 0 AS `code`, '删除成功！' AS msg;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_updateDesc
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_updateDesc`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_updateDesc`(IN _docuId BIGINT, IN _docuDesc VARCHAR(500))
BEGIN
	/* 
	 * ----------------------------- 
	 * 文件描述内容 4,'公司资料1'
	 * ----------------------------- 
	 */
		
		-- 修改描述内容
		UPDATE t_file_docu SET docuDesc=_docuDesc,lastUpdateTime=NOW() WHERE docuID=_docuId;
		
		-- 返回对象
		SELECT * FROM t_file_docu WHERE docuID=_docuId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_updateName
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_updateName`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_updateName`(IN _docuId BIGINT, IN _docuName VARCHAR(500))
BEGIN
	/* 
	 * ----------------------------- 
	 * 文件重命名 4,'公司资料1'
	 * ----------------------------- 
	 */
		
		-- 文件类型
		DECLARE _typeId BIGINT;
		-- 父级编号
		DECLARE _paterId BIGINT;
		-- 原文件名
		DECLARE _tempDocuName VARCHAR(500);
		-- 原本地目录
		DECLARE _tempLocalPath VARCHAR(1000);
		-- 是否存在同名
		DECLARE _isExist TINYINT DEFAULT 0;
		
		SELECT typeID,paterID,docuName,localPath INTO _typeId,_paterId,_tempDocuName,_tempLocalPath FROM t_file_docu WHERE docuID=_docuId;
		IF _typeId=1 THEN 
				-- 文件夹是否存在
				SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE isValid=1 AND paterID=_paterId AND docuID<>_docuId AND typeID=_typeId AND docuName=_docuName;
				IF _isExist > 0 THEN 
						SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE isValid=1 AND paterID=_paterId AND docuID<>_docuId AND typeID=_typeId AND docuName LIKE CONCAT(_docuName,'%');
						SET _docuName = CONCAT(_docuName,'(',_isExist,')');
				END IF;
		ELSE 
				SELECT CONCAT(_docuName,'.',docuSuffix) INTO _docuName FROM t_file_docu WHERE docuID=_docuId;
				-- 判断文件是否存在，存在便修改文件名，用括号数据区分
				SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE isValid=1 AND paterID=_paterId AND typeID=_typeId AND docuName LIKE CONCAT(LEFT(_docuName,(LENGTH(_docuName)-LOCATE('.',REVERSE(_docuName)))),'%');
				IF _isExist > 0 THEN 
						SET _docuName = CONCAT(
											LEFT(_docuName,(LENGTH(_docuName)-LOCATE('.',REVERSE(_docuName)))),
											'(',_isExist,')',
											SUBSTRING(_docuName,-(LOCATE('.',REVERSE(_docuName))))
								);
				END IF;
		END IF;
		
		-- 修改文件名
		UPDATE t_file_docu SET docuName=_docuName,lastUpdateTime=NOW() WHERE docuID=_docuId;
		-- 如果是修改文件夹,则更新孩子的本地目录
		IF _typeId=1 THEN 
				UPDATE t_file_docu 
						SET lastUpdateTime=NOW(),localPath=TRIM(BOTH '/' FROM REPLACE(CONCAT('/',localPath,'/'),CONCAT('/',_tempLocalPath,'/',_tempDocuName,'/'),CONCAT('/',_tempLocalPath,'/',_docuName,'/')))
						WHERE CONCAT('/',localPath,'/') LIKE CONCAT('%/',_tempLocalPath,'/',_tempDocuName,'/%');
		END IF;
		
		-- 返回对象
		SELECT * FROM t_file_docu WHERE docuID=_docuId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_docu_updatePater
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_docu_updatePater`;
delimiter ;;
CREATE PROCEDURE `p_file_docu_updatePater`(IN _docuId BIGINT, IN _paterId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 移动文件
	 * ----------------------------- 
	 */
		
		
		-- 判断移动的目录是否存在同名
		DECLARE _isExist TINYINT DEFAULT 0;
		-- 本地目录
		DECLARE _localPath VARCHAR(1000);
		-- 子目录数量
		DECLARE _childCount TINYINT DEFAULT 0;

		-- 原文件类型
		DECLARE _oldFileType INT DEFAULT 0;
		-- 原文件名
		DECLARE _oldDocuName VARCHAR(500);
		-- 原本地目录
		DECLARE _oldLocalPath VARCHAR(1000);
		-- 原文件父级编号
		DECLARE _oldPaterId BIGINT;
		
		-- 新文件类型
		DECLARE _newFileType INT DEFAULT 0;
		-- 新文件夹名
		DECLARE _newDocuName VARCHAR(500);
		-- 新文件夹本地目录
		DECLARE _newLocalPath VARCHAR(1000);
		-- 新文件夹父级编号
		DECLARE _newPaterId BIGINT;
		
		
		-- 获取原文件信息
		SELECT typeID,docuName,localPath,paterID INTO _oldFileType,_oldDocuName,_oldLocalPath,_oldPaterId FROM t_file_docu WHERE docuID = _docuId;
		-- 获取现文件信息
		SELECT typeID,docuName,localPath,paterID INTO _newFileType,_newDocuName,_newLocalPath,_newPaterId FROM t_file_docu WHERE docuID = _paterId;
		
		-- 定义跳出存储过程标记 
		read_loop: LOOP
				  SELECT COUNT(docuID) INTO _isExist FROM t_file_docu WHERE paterID = _paterId AND docuName = _oldDocuName AND isValid=1;
				  IF _isExist > 0 THEN
				      SELECT 0 AS `code`, '目标目录存在同名文件，移动失败！' AS msg;
					    # 终止存储过程
					    LEAVE read_loop;
				  END IF;
				
				  -- 获取本地目录
					IF _paterId IS NULL OR _paterId = 0 THEN 
							SET _localPath = 'file';
							SET _paterId = 0;
					ELSE
							SET _localPath = _newLocalPath;
					END IF;
					
					-- 修改父级编号
					UPDATE t_file_docu SET paterID=_paterId, localPath=_localPath, lastUpdateTime=NOW() WHERE docuID=_docuId;
					
					
					# 统计原父级文件夹子目录数量
					IF _oldPaterId <> 0 THEN 
							-- 获取子目录文件数量
							SELECT COUNT(docuID) INTO _childCount FROM t_file_docu WHERE paterID = _oldPaterId AND isValid=1;
							-- SELECT *,1,_childCount AS childCount FROM t_task_file WHERE ID = _paterId;
							-- 修改父级文件夹子目录数量
							UPDATE t_file_docu SET childCount=_childCount,lastUpdateTime=NOW() WHERE docuID=_oldPaterId;
							-- SELECT *,1 FROM t_task_file WHERE ID = _paterId;
					END IF;
					
					# 统计现父级文件夹子目录数量
					-- SELECT 2,_newPaterId AS newPaterId;
					IF _paterId <> 0 THEN 
							-- 获取子目录文件数量
							SELECT COUNT(docuID) INTO _childCount FROM t_file_docu WHERE paterID = _paterId AND isValid=1;
							-- SELECT *,2,_childCount AS childCount FROM t_task_file WHERE ID = _newPaterId;
							-- 修改父级文件夹子目录数量
							UPDATE t_file_docu SET childCount=_childCount,lastUpdateTime=NOW() WHERE docuID=_paterId;
							-- SELECT *,2 FROM t_task_file WHERE ID = _newPaterId;
					END IF;
					
					-- 如果是移动文件夹,则更新孩子的本地目录
					IF _oldFileType = 1 THEN 
							UPDATE t_file_docu 
									-- TRIM - BOTH,LEADING,TRAILING 
									SET lastUpdateTime=NOW(),localPath=TRIM(LEADING '/' FROM REPLACE(CONCAT('/',localPath,'/'),CONCAT('/',_newLocalPath,'/',_newDocuName,'/'),CONCAT('/',_oldLocalPath,'/',_newDocuName,'/')))
									WHERE CONCAT('/',localPath,'/') LIKE CONCAT('%/',_newLocalPath,'/',_newDocuName,'/%');
					END IF;
				
					SELECT 0 AS `code`, '移动文件成功！' AS msg;
				  LEAVE read_loop;
		END LOOP;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_file_type_fainByFolder
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_file_type_fainByFolder`;
delimiter ;;
CREATE PROCEDURE `p_file_type_fainByFolder`()
BEGIN
	/* 
	 * ----------------------------- 
	 * 获取文件夹对象
	 * ----------------------------- 
	 */
		
		SELECT * FROM t_file_type WHERE typeID=1;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_ligent_const_findByKey
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ligent_const_findByKey`;
delimiter ;;
CREATE PROCEDURE `p_ligent_const_findByKey`(IN _constKey INT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 根据标志码获取常量信息
	 * ----------------------------- 
	 */
		
		SELECT * FROM t_ligent_const WHERE constKey = _constKey;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_ligent_const_getByKey
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ligent_const_getByKey`;
delimiter ;;
CREATE PROCEDURE `p_ligent_const_getByKey`(IN _constKey INT, Out _constValue VARCHAR(200))
BEGIN
	/* 
	 * ----------------------------- 
	 * 根据标志码获取常量值
	 * ----------------------------- 
	 */
		
		SELECT constValue INTO _constValue FROM t_ligent_const WHERE constKey=_constKey ORDER BY constID ASC LIMIT 1;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_ligent_file_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ligent_file_insert`;
delimiter ;;
CREATE PROCEDURE `p_ligent_file_insert`(IN _fileUse VARCHAR(100), IN _fileTitle VARCHAR(500), IN _filePath VARCHAR(500), IN _createUserId BIGINT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 新增文件信息
	 * ----------------------------- 
	 */
		
		-- 文件编号
		DECLARE _fileId BIGINT;
		-- 本地目录
		DECLARE _suffix VARCHAR(100);
		-- 文件类型编号
		DECLARE _typeId BIGINT;
		
		-- 获取后缀名
		SET _suffix = RIGHT(_fileTitle,LOCATE('.',REVERSE(_fileTitle))-1);
		
		-- 获取文件类型
		SELECT typeID INTO _typeId FROM t_file_type WHERE CONCAT(',',typeKey,',') LIKE CONCAT('%,',_suffix,',%') ORDER BY typeID ASC LIMIT 0,1;
		
		-- 新增文件
		INSERT INTO t_ligent_file(typeID,fileUse,fileTitle,filePath,createTime,createUserID,isValid)
				VALUES(_typeId,_fileUse,_fileTitle,_filePath,NOW(),_createUserId,1);
		
		-- 获取刚插入的ID编号
		SELECT last_insert_id() INTO _fileId;
		
		-- 返回对象
		SELECT * FROM t_ligent_file WHERE fileID = _fileId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_ligent_login_handle
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ligent_login_handle`;
delimiter ;;
CREATE PROCEDURE `p_ligent_login_handle`(IN _userId BIGINT, IN _loginType INT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 处理登录记录
		 * ----------------------------- 
		 */
		
		-- 记录编号
		DECLARE _loginId BIGINT;
		-- 当前时间
		DECLARE _nowTime VARCHAR(100);
		-- 当前日期
		DECLARE _nowDate VARCHAR(50);
		-- 回话过期时间（分钟）
		DECLARE _deadline INT;
		
		SET _nowTime = NOW();
		SET _nowDate = DATE(_nowTime);
		
		-- 回话过期时间（分钟）
		SELECT constValue INTO _deadline FROM t_ligent_const WHERE constKey = 1003 LIMIT 1;
		-- 结束以前的数据
		UPDATE t_ligent_login SET logoutTime=_nowTime WHERE logoutTime IS NULL AND lastVisitTime<=DATE_ADD(NOW(),INTERVAL-_deadline MINUTE);
		
		-- 记录类型（1加入，2失效）
		IF _loginType = 1 THEN 
				-- 判断当天是否存在
				SELECT loginID INTO _loginId FROM t_ligent_login WHERE userID=_userId AND DATE(loginTime)=_nowDate ORDER BY loginID ASC LIMIT 1;
				IF _loginId IS NULL OR _loginId < 1 THEN 
						INSERT INTO t_ligent_login(userID, loginTime, lastVisitTime) VALUES(_userId, _nowTime, _nowTime);
						SELECT last_insert_id() INTO _loginId;
				ELSE
						UPDATE t_ligent_login SET loginTime=_nowTime,logoutTime=NULL,lastVisitTime=_nowTime WHERE loginID=_loginId;
				END IF;
		ELSEIF _loginType = 2 THEN 
				UPDATE t_ligent_login SET logoutTime=_nowTime WHERE userID=_userId AND logoutTime IS NULL;
		END IF;
		
		-- 返回对象
		SELECT * FROM t_ligent_login WHERE loginID=_loginId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_ligent_login_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_ligent_login_update`;
delimiter ;;
CREATE PROCEDURE `p_ligent_login_update`(IN _userId BIGINT)
BEGIN
		/* 
		 * ----------------------------- 
		 * 修改最后操作时间
		 * ----------------------------- 
		 */
		
		-- 记录编号
		DECLARE _loginId BIGINT;
		-- 当前时间
		DECLARE _nowTime VARCHAR(100);
		-- 当前日期
		DECLARE _nowDate VARCHAR(50);
		
		SET _nowTime = NOW();
		SET _nowDate = DATE(_nowTime);
		
		-- 判断是否存在记录
		SELECT loginID INTO _loginId FROM t_ligent_login WHERE userID=_userId AND DATE(loginTime)=_nowDate AND logoutTime IS NULL ORDER BY loginID ASC LIMIT 1;
		
		IF _loginId IS NULL OR _loginId < 1 THEN 
				-- 修改以前的记录
				UPDATE t_ligent_login SET lastVisitTime=_nowDate WHERE userID=_userId AND logoutTime IS NULL;
				-- 新增当天记录
				INSERT INTO t_ligent_login(userID, loginTime, lastVisitTime) VALUES(_userId, _nowTime, _nowTime);
				SELECT last_insert_id() INTO _loginId;
		ELSE
				UPDATE t_ligent_login SET lastVisitTime=_nowTime WHERE loginID=_loginId;
		END IF;
		
		-- 返回对象
		SELECT * FROM t_ligent_login WHERE loginID=_loginId;
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for p_sys_getPageSize
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_sys_getPageSize`;
delimiter ;;
CREATE PROCEDURE `p_sys_getPageSize`(OUT _pageSize INT)
BEGIN
	/* 
	 * ----------------------------- 
	 * 后台分页默认每页几条数据 
	 * ----------------------------- 
	 */
		
		SELECT constValue INTO _pageSize FROM t_ligent_const WHERE constKey = 1004;
		
		IF _pageSize IS NULL OR _pageSize < 1 THEN 
				SET _pageSize = 20;
		END IF;
		
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
