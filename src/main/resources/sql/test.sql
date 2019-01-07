/*
 Navicat Premium Data Transfer

 Source Server         : vlog
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 07/01/2019 21:51:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for element
-- ----------------------------
DROP TABLE IF EXISTS `element`;
CREATE TABLE `element`  (
  `id` bigint(10) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `html` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '页面元素表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `seq` int(5) NULL DEFAULT NULL COMMENT '序列号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作名称',
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拦截url',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型（1:菜单；2:页面元素；3:操作）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_element_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_element_re`;
CREATE TABLE `permission_element_re`  (
  `permission_id` bigint(10) NOT NULL,
  `element_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `element_id`) USING BTREE,
  INDEX `fk_pe_element_id`(`element_id`) USING BTREE,
  CONSTRAINT `fk_pe_element_id` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_pe_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-元素关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_menu_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu_re`;
CREATE TABLE `permission_menu_re`  (
  `permission_id` bigint(10) NOT NULL,
  `menu_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `menu_id`) USING BTREE,
  INDEX `fk_pm_menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `fk_pm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_pm_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_operation_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_operation_re`;
CREATE TABLE `permission_operation_re`  (
  `permission_id` bigint(10) NOT NULL,
  `operation_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `operation_id`) USING BTREE,
  INDEX `fk_po_operation_id`(`operation_id`) USING BTREE,
  CONSTRAINT `fk_po_operation_id` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_po_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-操作关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_permission_re
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_re`;
CREATE TABLE `role_permission_re`  (
  `role_id` bigint(12) NOT NULL COMMENT '角色id',
  `permission_id` bigint(10) NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`role_id`) USING BTREE,
  INDEX `fk_rp_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `fk_rp_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_rp_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否可用(1:可用；0:禁用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lpli', '上世纪大精神的', 'e10adc3949ba59abbe56e057f20f883e', 'lll@xxx.com', '12345678901', 1, '2019-01-05 17:33:11', NULL);

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` bigint(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_group_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_re`;
CREATE TABLE `user_group_re`  (
  `user_id` bigint(10) NOT NULL,
  `group_id` bigint(10) NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `fk_ug_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `fk_ug_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_ug_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-用户组关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_group_role_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_role_re`;
CREATE TABLE `user_group_role_re`  (
  `group_id` bigint(10) NOT NULL,
  `role_id` bigint(10) NOT NULL,
  PRIMARY KEY (`group_id`, `role_id`) USING BTREE,
  INDEX `fk_ur_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_ur_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_ur_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组-角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role_r
-- ----------------------------
DROP TABLE IF EXISTS `user_role_r`;
CREATE TABLE `user_role_r`  (
  `user_id` bigint(10) NOT NULL COMMENT '用户id',
  `role_id` bigint(12) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `fk_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-角色关联表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
