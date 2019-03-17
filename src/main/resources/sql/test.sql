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

 Date: 17/03/2019 21:39:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `seq` int(6) NULL DEFAULT NULL COMMENT '序列号',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (13, '权限设置', '', 0, 10, 'el-icon-info');
INSERT INTO `menu` VALUES (14, '用户管理', '/user', 13, 1001, 'el-icon-third-user');
INSERT INTO `menu` VALUES (15, '部门管理', '/group', 13, 1002, 'el-icon-third-apartment');
INSERT INTO `menu` VALUES (16, '角色管理', '/role', 13, 1003, 'el-icon-third-team');
INSERT INTO `menu` VALUES (17, '资源管理', '', 13, 1004, 'el-icon-third-appstore');
INSERT INTO `menu` VALUES (20, '演示', '', 0, 20, 'el-icon-third-deploymentunit');
INSERT INTO `menu` VALUES (21, '编辑器', '/editor', 20, 2001, 'el-icon-edit');
INSERT INTO `menu` VALUES (23, '菜单', '/menu', 17, 100401, 'el-icon-third-menu');
INSERT INTO `menu` VALUES (24, '操作', '/operation', 17, 100402, 'el-icon-third-wrench-fill');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (6, '新增用户', '/user/create', '100001', NULL);
INSERT INTO `operation` VALUES (7, '修改用户', '/user/update', '100002', NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型（1:菜单；2:页面元素；3:操作）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '1');
INSERT INTO `permission` VALUES (2, '1');
INSERT INTO `permission` VALUES (3, '1');
INSERT INTO `permission` VALUES (4, '1');
INSERT INTO `permission` VALUES (5, '1');
INSERT INTO `permission` VALUES (6, '1');
INSERT INTO `permission` VALUES (7, '1');
INSERT INTO `permission` VALUES (8, '1');
INSERT INTO `permission` VALUES (9, '1');
INSERT INTO `permission` VALUES (10, '1');
INSERT INTO `permission` VALUES (11, '1');
INSERT INTO `permission` VALUES (12, '1');
INSERT INTO `permission` VALUES (13, '1');
INSERT INTO `permission` VALUES (14, '1');
INSERT INTO `permission` VALUES (15, '1');
INSERT INTO `permission` VALUES (16, '1');
INSERT INTO `permission` VALUES (17, '1');
INSERT INTO `permission` VALUES (18, '1');
INSERT INTO `permission` VALUES (19, '1');
INSERT INTO `permission` VALUES (20, '1');
INSERT INTO `permission` VALUES (21, '1');
INSERT INTO `permission` VALUES (22, '1');
INSERT INTO `permission` VALUES (23, '1');
INSERT INTO `permission` VALUES (24, '1');
INSERT INTO `permission` VALUES (25, '1');
INSERT INTO `permission` VALUES (26, '1');
INSERT INTO `permission` VALUES (27, '1');
INSERT INTO `permission` VALUES (28, '1');
INSERT INTO `permission` VALUES (29, '1');
INSERT INTO `permission` VALUES (30, '1');
INSERT INTO `permission` VALUES (31, '1');
INSERT INTO `permission` VALUES (32, '1');
INSERT INTO `permission` VALUES (33, '1');
INSERT INTO `permission` VALUES (34, '1');
INSERT INTO `permission` VALUES (35, '1');
INSERT INTO `permission` VALUES (36, '1');
INSERT INTO `permission` VALUES (37, '1');
INSERT INTO `permission` VALUES (38, '3');
INSERT INTO `permission` VALUES (39, '3');

-- ----------------------------
-- Table structure for permission_menu_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu_re`;
CREATE TABLE `permission_menu_re`  (
  `permission_id` bigint(10) NOT NULL,
  `menu_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `menu_id`) USING BTREE,
  INDEX `fk_pm_menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `fk_pm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_pm_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_menu_re
-- ----------------------------
INSERT INTO `permission_menu_re` VALUES (7, 13);
INSERT INTO `permission_menu_re` VALUES (8, 14);
INSERT INTO `permission_menu_re` VALUES (9, 15);
INSERT INTO `permission_menu_re` VALUES (10, 16);
INSERT INTO `permission_menu_re` VALUES (11, 17);
INSERT INTO `permission_menu_re` VALUES (14, 20);
INSERT INTO `permission_menu_re` VALUES (15, 21);
INSERT INTO `permission_menu_re` VALUES (19, 23);
INSERT INTO `permission_menu_re` VALUES (20, 24);

-- ----------------------------
-- Table structure for permission_operation_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_operation_re`;
CREATE TABLE `permission_operation_re`  (
  `permission_id` bigint(10) NOT NULL,
  `operation_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `operation_id`) USING BTREE,
  INDEX `fk_po_operation_id`(`operation_id`) USING BTREE,
  CONSTRAINT `fk_po_operation_id` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_po_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-操作关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_operation_re
-- ----------------------------
INSERT INTO `permission_operation_re` VALUES (38, 6);
INSERT INTO `permission_operation_re` VALUES (39, 7);

-- ----------------------------
-- Table structure for resource_image
-- ----------------------------
DROP TABLE IF EXISTS `resource_image`;
CREATE TABLE `resource_image`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `size` bigint(9) NULL DEFAULT NULL COMMENT '大小(字节数)',
  `upload_time` timestamp(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource_image
-- ----------------------------
INSERT INTO `resource_image` VALUES ('0f09d7a7-86ca-4013-8ac3-fd4450a42514', '0f09d7a7-86ca-4013-8ac3-fd4450a42514.jpg', '2019/03/15/0f09d7a7-86ca-4013-8ac3-fd4450a42514.jpg', 75150, '2019-03-15 22:58:18');
INSERT INTO `resource_image` VALUES ('15cbdf70-cb4e-4962-8996-5e3c2209826b', '15cbdf70-cb4e-4962-8996-5e3c2209826b.jpg', '2019/03/15/15cbdf70-cb4e-4962-8996-5e3c2209826b.jpg', 75150, '2019-03-15 22:19:03');
INSERT INTO `resource_image` VALUES ('2a3f0a47-396a-4e49-a469-18552ce53715', '2a3f0a47-396a-4e49-a469-18552ce53715.jpg', '2019/03/15/2a3f0a47-396a-4e49-a469-18552ce53715.jpg', 19879, '2019-03-15 22:22:54');
INSERT INTO `resource_image` VALUES ('3400632f-6ca2-4d40-9a86-6376ba33b8c3', '3400632f-6ca2-4d40-9a86-6376ba33b8c3.jpg', '2019/03/15/3400632f-6ca2-4d40-9a86-6376ba33b8c3.jpg', 19879, '2019-03-15 22:01:24');
INSERT INTO `resource_image` VALUES ('3b0c91f5-3444-4866-a681-b2053c402a58', '3b0c91f5-3444-4866-a681-b2053c402a58.gif', '2019/03/16/3b0c91f5-3444-4866-a681-b2053c402a58.gif', 1679955, '2019-03-16 21:09:30');
INSERT INTO `resource_image` VALUES ('5bc16685-e4af-41fb-927b-eb926da2612a', '5bc16685-e4af-41fb-927b-eb926da2612a.png', '2019/03/16/5bc16685-e4af-41fb-927b-eb926da2612a.png', 3363, '2019-03-16 20:50:08');
INSERT INTO `resource_image` VALUES ('715ae58a-02ca-42a1-bcba-d5862108f3ea', '715ae58a-02ca-42a1-bcba-d5862108f3ea.jpg', '2019/03/15/715ae58a-02ca-42a1-bcba-d5862108f3ea.jpg', 19879, '2019-03-15 22:33:41');
INSERT INTO `resource_image` VALUES ('776f437a-0035-47ce-8ab5-9d722a45398d', '776f437a-0035-47ce-8ab5-9d722a45398d.jpg', '2019/03/15/776f437a-0035-47ce-8ab5-9d722a45398d.jpg', 75150, '2019-03-15 22:15:10');
INSERT INTO `resource_image` VALUES ('7cd3b282-728f-457e-be6d-dcd82f247299', '7cd3b282-728f-457e-be6d-dcd82f247299.jpg', '2019/03/15/7cd3b282-728f-457e-be6d-dcd82f247299.jpg', 19879, '2019-03-15 21:58:18');
INSERT INTO `resource_image` VALUES ('7db8740a-3e6f-49ff-b673-0d112505f455', '7db8740a-3e6f-49ff-b673-0d112505f455.jpg', '2019/03/15/7db8740a-3e6f-49ff-b673-0d112505f455.jpg', 19879, '2019-03-15 22:35:23');
INSERT INTO `resource_image` VALUES ('7dd11efb-a1c9-4cd7-bb17-cc8367486580', '7dd11efb-a1c9-4cd7-bb17-cc8367486580.png', '2019/03/16/7dd11efb-a1c9-4cd7-bb17-cc8367486580.png', 3363, '2019-03-16 21:12:38');
INSERT INTO `resource_image` VALUES ('80ca3d10-e2ac-4004-ab42-cbde7634c930', '80ca3d10-e2ac-4004-ab42-cbde7634c930.jpg', '2019/03/15/80ca3d10-e2ac-4004-ab42-cbde7634c930.jpg', 19879, '2019-03-15 22:36:14');
INSERT INTO `resource_image` VALUES ('bd807692-fd88-4aeb-99da-ba276e421022', 'bd807692-fd88-4aeb-99da-ba276e421022.jpg', '2019/03/15/bd807692-fd88-4aeb-99da-ba276e421022.jpg', 75150, '2019-03-15 22:35:55');
INSERT INTO `resource_image` VALUES ('bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee', 'bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee.jpg', '2019/03/15/bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee.jpg', 19879, '2019-03-15 22:27:42');
INSERT INTO `resource_image` VALUES ('cb2ada95-6206-4843-80df-5a8366dfe7c2', 'cb2ada95-6206-4843-80df-5a8366dfe7c2.jpg', '2019/03/15/cb2ada95-6206-4843-80df-5a8366dfe7c2.jpg', 19879, '2019-03-15 22:35:43');
INSERT INTO `resource_image` VALUES ('d9029a4a-a9f6-4ed9-8bdb-d4e4b691974d', 'd9029a4a-a9f6-4ed9-8bdb-d4e4b691974d.jpg', '2019/03/15/d9029a4a-a9f6-4ed9-8bdb-d4e4b691974d.jpg', 75150, '2019-03-15 22:15:20');
INSERT INTO `resource_image` VALUES ('ddf8d052-091f-44e1-b045-ce6a22091336', 'ddf8d052-091f-44e1-b045-ce6a22091336.jpg', '2019/03/15/ddf8d052-091f-44e1-b045-ce6a22091336.jpg', 19879, '2019-03-15 22:15:30');
INSERT INTO `resource_image` VALUES ('edb454e5-110d-4ed3-9d80-16e83df82a63', 'edb454e5-110d-4ed3-9d80-16e83df82a63.jpg', '2019/03/15/edb454e5-110d-4ed3-9d80-16e83df82a63.jpg', 19879, '2019-03-15 22:14:50');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员', 'ADMIN', NULL, '2019-02-25 21:17:25');
INSERT INTO `role` VALUES (5, '普通人员', 'ROLE_NORMAL', 'lpli', '2019-03-17 14:47:56');

-- ----------------------------
-- Table structure for role_permission_re
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_re`;
CREATE TABLE `role_permission_re`  (
  `role_id` bigint(12) NOT NULL COMMENT '角色id',
  `permission_id` bigint(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `fk_rp_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `fk_rp_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_rp_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission_re
-- ----------------------------
INSERT INTO `role_permission_re` VALUES (5, 7);
INSERT INTO `role_permission_re` VALUES (5, 8);
INSERT INTO `role_permission_re` VALUES (5, 9);
INSERT INTO `role_permission_re` VALUES (5, 38);
INSERT INTO `role_permission_re` VALUES (5, 39);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lpli', '上世纪大精神的', 'e10adc3949ba59abbe56e057f20f883e', 'lll@xxx.com', '15871411351', 1, '2019-01-05 17:33:11', '2019-02-24 14:17:30');
INSERT INTO `user` VALUES (3, 'abcdefgh', '是', 'e10adc3949ba59abbe56e057f20f883e', 'xx@qq.com', '15871411351', 1, '2019-02-24 14:56:00', '2019-02-24 15:30:15');
INSERT INTO `user` VALUES (4, 'liuqiaoce', 'liuqiaoce', 'e10adc3949ba59abbe56e057f20f883e', 'cccc@qqq.com', '13588888888', 1, '2019-02-24 15:06:40', '2019-02-24 15:07:15');
INSERT INTO `user` VALUES (5, 'dfsdsfds', 'dfsddsfds', 'e10adc3949ba59abbe56e057f20f883e', 'xxs@qq.com', '13566666666', 1, '2019-02-24 15:07:59', NULL);
INSERT INTO `user` VALUES (6, 'sxsdsadsadsa', 'dsadsadsada', 'e10adc3949ba59abbe56e057f20f883e', 'sdas@qqq.com', '15811111111', 1, '2019-02-24 15:08:20', NULL);
INSERT INTO `user` VALUES (7, 'sdadsads', 'adsadsad', 'e10adc3949ba59abbe56e057f20f883e', 'sdads@qq.com', '13512121212', 1, '2019-02-24 15:08:39', NULL);
INSERT INTO `user` VALUES (8, 'dsjhadjksahk', 'sd7uydsadsahdsa', 'e10adc3949ba59abbe56e057f20f883e', 'sda@11.com', '13512121212', 1, '2019-02-24 15:09:01', NULL);
INSERT INTO `user` VALUES (9, 'sdadsadssdadsa', 'adsadsadsadsad', 'e10adc3949ba59abbe56e057f20f883e', 'dsadsa@qq.com', '13812121212', 1, '2019-02-24 15:09:21', NULL);
INSERT INTO `user` VALUES (10, '2132wqewqewq', 'sdahdjsahk', 'e10adc3949ba59abbe56e057f20f883e', 'sdad@qq.com', '13812121212', 1, '2019-02-24 15:09:47', NULL);
INSERT INTO `user` VALUES (11, 'sdadsa231', 'dsadsa12', 'e10adc3949ba59abbe56e057f20f883e', 'sda@1212.com', '13512121212', 1, '2019-02-24 15:10:04', NULL);
INSERT INTO `user` VALUES (12, 'sdadsadasdsa12121', 'dsadsadsa', 'e10adc3949ba59abbe56e057f20f883e', 'wda@qwq.com', '13512121212', 1, '2019-02-24 15:12:13', NULL);

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, '默认分组', 0, '系统管理员所在分组');
INSERT INTO `user_group` VALUES (100, '分组', 1, NULL);
INSERT INTO `user_group` VALUES (101, '武汉', 1, NULL);
INSERT INTO `user_group` VALUES (102, '测试', 1, NULL);
INSERT INTO `user_group` VALUES (103, 'sss', 101, NULL);
INSERT INTO `user_group` VALUES (104, 'ssssxxxx', 103, NULL);
INSERT INTO `user_group` VALUES (105, 'sdadsadsa', 102, NULL);

-- ----------------------------
-- Table structure for user_group_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_re`;
CREATE TABLE `user_group_re`  (
  `user_id` bigint(10) NOT NULL,
  `group_id` bigint(10) NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `fk_ug_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ug_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-用户组关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group_re
-- ----------------------------
INSERT INTO `user_group_re` VALUES (1, 1);
INSERT INTO `user_group_re` VALUES (4, 101);

-- ----------------------------
-- Table structure for user_group_role_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_role_re`;
CREATE TABLE `user_group_role_re`  (
  `group_id` bigint(10) NOT NULL,
  `role_id` bigint(10) NOT NULL,
  PRIMARY KEY (`group_id`, `role_id`) USING BTREE,
  INDEX `fk_ur_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_ug_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ur_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
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
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role_r
-- ----------------------------
INSERT INTO `user_role_r` VALUES (1, 1);

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
delimiter ;;
CREATE DEFINER=`vlog`@`%` FUNCTION `getChildLst`(`rootId` int) RETURNS varchar(1000) CHARSET utf8
BEGIN
	 DECLARE sTemp VARCHAR(1000); 
		DECLARE sTempChd VARCHAR(1000); 

		SET sTemp = '^'; 
		SET sTempChd = rootId; 

		WHILE sTempChd is not null DO 
				SET sTemp = concat(sTemp,',',sTempChd); 
				SELECT group_concat(id) INTO sTempChd FROM user_group where FIND_IN_SET(pid,sTempChd)>0; 
		END WHILE; 
		RETURN substring(sTemp,4+length(rootId));
END
;;
delimiter ;

-- ----------------------------
-- Function structure for getTreeList
-- ----------------------------
DROP FUNCTION IF EXISTS `getTreeList`;
delimiter ;;
CREATE DEFINER=`vlog`@`%` FUNCTION `getTreeList`(`rootId` int) RETURNS varchar(1000) CHARSET utf8
BEGIN
	 DECLARE sTemp VARCHAR(1000); 
		DECLARE sTempChd VARCHAR(1000); 

		SET sTemp = '^'; 
		SET sTempChd = rootId; 

		WHILE sTempChd is not null DO 
				SET sTemp = concat(sTemp,',',sTempChd); 
				SELECT group_concat(id) INTO sTempChd FROM user_group where FIND_IN_SET(pid,sTempChd)>0; 
		END WHILE; 
		RETURN substring(sTemp,3);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
