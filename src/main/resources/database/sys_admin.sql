/*
 Navicat Premium Data Transfer

 Source Server         : 三问
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 47.111.242.231:3306
 Source Schema         : sys_admin

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 20/01/2020 10:23:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `oper_method` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作方法',
  `request_param` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作参数',
  `oper_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作说明',
  `update_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `ip_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `geography_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地理位置',
  `update_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `available` tinyint(1) DEFAULT NULL COMMENT '是否可用',
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限名称',
  `parent_id` int(10) DEFAULT NULL COMMENT '父权限ID',
  `parent_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父权限ID列表',
  `permission_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限编码',
  `resource_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源类型(top_directory/directory/menu/button)',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源路径',
  `update_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 1, '系统管理', 0, '0', 'system', 'top_directory', NULL, '2018-07-10 11:24:48', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES (2, 1, '用户管理', 1, '0/1', 'user:view', 'menu', '/user/list', '2018-07-10 11:24:48', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES (3, 1, '添加', 2, '0/1/2', 'user:add', 'button', '', '2018-07-10 11:25:40', '2018-07-10 11:25:40');
INSERT INTO `sys_permission` VALUES (4, 1, '删除', 2, '0/1/2', 'user:del', 'button', '', '2018-07-10 11:27:10', '2018-07-10 11:27:10');
INSERT INTO `sys_permission` VALUES (5, 1, '编辑', 2, '0/1/2', 'user:edit', 'button', '', '2018-11-17 14:54:52', '2018-07-10 11:27:36');
INSERT INTO `sys_permission` VALUES (6, 1, '角色管理', 1, '0/1', 'role:view', 'menu', '/role/list', '2018-08-04 09:38:44', '2018-08-04 09:38:44');
INSERT INTO `sys_permission` VALUES (7, 1, '添加', 6, '0/1/6', 'role:add', 'button', '', '2018-08-04 09:42:05', '2018-08-04 09:42:05');
INSERT INTO `sys_permission` VALUES (8, 1, '删除', 6, '0/1/6', 'role:del', 'button', '', '2018-11-17 15:01:41', '2018-08-04 09:43:26');
INSERT INTO `sys_permission` VALUES (9, 1, '编辑', 6, '0/1/6', 'role:edit', 'button', '', '2018-08-04 09:46:01', '2018-08-04 09:46:01');
INSERT INTO `sys_permission` VALUES (10, 1, '权限管理', 1, '0/1', 'permission:view', 'menu', '/permission/list', '2018-08-04 09:48:57', '2018-08-04 09:48:57');
INSERT INTO `sys_permission` VALUES (11, 1, '添加', 10, '0/1/10', 'permission:add', 'button', '', '2018-08-04 09:50:50', '2018-08-04 09:50:50');
INSERT INTO `sys_permission` VALUES (12, 1, '删除', 10, '0/1/10', 'permission:del', 'button', '', '2018-08-04 09:50:50', '2018-08-04 09:50:50');
INSERT INTO `sys_permission` VALUES (13, 1, '编辑', 10, '0/1/10', 'permission:edit', 'button', '', '2018-08-23 11:33:34', '2018-08-23 11:33:34');
INSERT INTO `sys_permission` VALUES (14, 1, '三问数学', 0, '0', 'normal', 'top_directory', NULL, '2019-08-13 22:43:53', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES (16, 1, '登录日志', 1, '0/1', 'loginLog:view', 'menu', '/loginLog/list', '2018-10-01 12:25:02', '2018-10-01 12:25:02');
INSERT INTO `sys_permission` VALUES (17, 1, '系统日志', 1, '0/1', 'log:view', 'menu', '/log/list', '2018-10-27 16:28:50', '2018-10-27 16:28:50');
INSERT INTO `sys_permission` VALUES (18, 1, '图标管理', 1, '0/1', 'icon:view', 'menu', '/icon/icons', '2018-10-01 12:48:42', '2018-08-23 13:15:51');
INSERT INTO `sys_permission` VALUES (25, 1, '代码生成', 1, '0/1', 'code:view', 'menu', '/code/list', '2018-12-25 15:53:54', '2018-12-25 15:53:54');
INSERT INTO `sys_permission` VALUES (34, 1, '报名', 14, '0/14', 'student:home', 'menu', '/student/home', '2019-08-17 11:16:26', '2019-08-13 22:41:29');
INSERT INTO `sys_permission` VALUES (35, 0, '信息', 14, '0/14', 'student:info', 'menu', 'tt', '2019-12-30 21:36:07', '2019-08-13 22:46:30');
INSERT INTO `sys_permission` VALUES (36, 1, '统计', 14, '0/14', 'student:statistics', 'menu', '/statistics/home', '2019-08-13 22:47:38', '2019-08-13 22:47:38');
INSERT INTO `sys_permission` VALUES (37, 1, '管理', 14, '0/14', 'sys:manager', 'menu', '/manage/index', '2019-10-01 13:43:39', '2019-08-13 22:48:47');
INSERT INTO `sys_permission` VALUES (42, 1, '新生报名', 34, '0/14/34', 'student:enroll', 'button', '', '2019-10-18 11:02:22', '2019-10-18 11:02:22');
INSERT INTO `sys_permission` VALUES (43, 1, '课程管理', 37, '0/14/37', 'curriculum:list', 'button', '', '2019-10-18 11:03:00', '2019-10-18 11:03:00');
INSERT INTO `sys_permission` VALUES (44, 1, '班级管理', 37, '0/14/37', 'classes:list', 'button', '', '2019-10-18 11:03:54', '2019-10-18 11:03:54');
INSERT INTO `sys_permission` VALUES (45, 1, '订单管理', 37, '0/14/37', 'order:list', 'button', '', '2019-11-22 14:50:39', '2019-11-22 14:50:39');
INSERT INTO `sys_permission` VALUES (46, 1, '续报', 34, '0/14/34', 'continuebm:list', 'button', '', '2019-11-26 11:37:26', '2019-11-26 11:37:26');
INSERT INTO `sys_permission` VALUES (47, 1, '转班', 34, '0/14/34', 'changeclass:list', 'button', '', '2019-12-04 13:52:00', '2019-12-04 13:52:00');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `permission_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限ID列表',
  `available` tinyint(1) DEFAULT NULL COMMENT '是否可用',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色编号',
  `update_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, ',1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,25,14,34,42,46,47,37,43,44,45,35,36,', 1, '超级管理员', 'admin', '2019-12-27 01:30:21', '2018-07-10 11:19:49');
INSERT INTO `sys_role` VALUES (2, ',14,37,43,44,45,35,36,34,46,42,47,', 1, '主讲老师', 'teacher', '2019-12-04 13:52:21', '2018-07-10 11:19:49');
INSERT INTO `sys_role` VALUES (3, ',14,34,42,', 1, '助教老师', 'assistant', '2019-10-18 11:04:27', '2019-08-17 10:53:16');
INSERT INTO `sys_role` VALUES (4, ',14,37,43,', 1, '无权限', '无', '2019-10-18 11:12:36', '2019-10-18 10:47:20');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int(10) DEFAULT NULL COMMENT '角色ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `pass_word` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐值',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态(0：禁用，1：启用，2：锁定)',
  `update_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 1, '超级管理员', 'admin', '90de4365c537fa959193d13ad8d07665', 'XZUY77Pq41M6jaGeR2q1yMaPOrmemy6A', 1, '2018-12-06 17:19:35', '2018-07-10 11:16:24');
INSERT INTO `sys_user` VALUES (9, 2, '主讲老师test', 'test', 'f58cb4cbc689ace5456577d913c68bfd', 'tPKGoMIgl6y16wWaoaqXyRS2N3WzmsNo', 1, '2019-12-27 01:51:42', '2018-08-11 15:31:26');

-- ----------------------------
-- Table structure for t_classes
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FCurriculumID` int(11) DEFAULT NULL COMMENT '课程ID',
  `FClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名称',
  `FFullCount` int(11) DEFAULT NULL COMMENT '班级总人数',
  `FTeacherID` int(11) DEFAULT NULL COMMENT '主讲老师ID',
  `FTeacherName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主讲老师姓名',
  `FAssistantTeacherID` int(11) DEFAULT NULL COMMENT '助教老师ID',
  `FAssistantTeacherName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '助教老师姓名',
  `FClassType` int(11) DEFAULT NULL COMMENT '班型',
  `FClassLevel` int(11) DEFAULT NULL COMMENT '时间档',
  `FSemester` int(11) DEFAULT NULL COMMENT '学期',
  `FDate` int(11) DEFAULT NULL COMMENT '日期',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_curriculum
-- ----------------------------
DROP TABLE IF EXISTS `t_curriculum`;
CREATE TABLE `t_curriculum`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FCurriculumName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `FSemester` int(11) DEFAULT NULL COMMENT '学期',
  `FDate` int(11) DEFAULT NULL COMMENT '日期',
  `FYear` int(11) DEFAULT NULL COMMENT '年份',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FClassTime` int(11) DEFAULT NULL COMMENT '课次',
  `FPrice` decimal(10, 2) DEFAULT NULL COMMENT '标价',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentID` int(11) DEFAULT NULL COMMENT '学生ID',
  `FStudentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生姓名',
  `FSex` int(11) DEFAULT NULL COMMENT '性别',
  `FPhoneOne` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话一',
  `FPhoneOneRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话一备注',
  `FPhoneTwo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话二',
  `FPhoneTwoRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话二备注',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名称',
  `FTeacherID` int(11) DEFAULT NULL COMMENT '主讲老师ID',
  `FTeacherName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主讲老师姓名',
  `FAssistantTeacherID` int(11) DEFAULT NULL COMMENT '助教老师ID',
  `FAssistantTeacherName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '助教老师姓名',
  `FClassType` int(11) DEFAULT NULL COMMENT '班型',
  `FClassLevel` int(11) DEFAULT NULL COMMENT '时间档',
  `FCurriculumID` int(11) DEFAULT NULL COMMENT '课程ID',
  `FCurriculumName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '课程名称',
  `FSemester` int(11) DEFAULT NULL COMMENT '学期',
  `FDate` int(11) DEFAULT NULL COMMENT '日期',
  `FYear` int(11) DEFAULT NULL COMMENT '年份',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FClassTime` int(11) DEFAULT NULL COMMENT '课次',
  `FPrice` decimal(10, 2) DEFAULT NULL COMMENT '标价',
  `FDiscountAmount` decimal(10, 2) DEFAULT NULL COMMENT '优惠金额',
  `FDiscountRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '优惠说明',
  `FPayableAmount` decimal(10, 2) DEFAULT NULL COMMENT '应付金额',
  `FPaidAmount` decimal(10, 2) DEFAULT NULL COMMENT '已付金额',
  `FOrderStatus` int(11) DEFAULT NULL COMMENT '订单状态',
  `FOrderType` int(11) DEFAULT NULL COMMENT '订单类型 1为新报名 2 为续报',
  `FCreatorID` int(11) DEFAULT NULL COMMENT '创建人ID',
  `FCreatorName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人姓名',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `FDeleted` bit(1) DEFAULT b'0',
  `FOrderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_pay_record
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_record`;
CREATE TABLE `t_pay_record`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FOrderID` int(11) DEFAULT NULL COMMENT '订单ID',
  `FOrderNo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `FPayType` int(11) DEFAULT NULL COMMENT '支付方式',
  `FPayAmount` decimal(10, 2) DEFAULT NULL COMMENT '付款金额',
  `FToller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收费人',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `FRecordType` int(11) DEFAULT NULL COMMENT '类型：0支付 1退款',
  `FStudentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生姓名',
  `FPhoneOne` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话一',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生姓名',
  `FSex` int(11) DEFAULT NULL COMMENT '性别',
  `FPhoneOne` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话一',
  `FPhoneOneRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话一备注',
  `FPhoneTwo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话二',
  `FPhoneTwoRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话二备注',
  `FSchool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学校',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FEntranceYear` int(11) DEFAULT NULL COMMENT '入学年份',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `FAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `FBirthday` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student_class_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_student_class_relation`;
CREATE TABLE `t_student_class_relation`  (
  `FStudentID` int(11) NOT NULL COMMENT '学生ID',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FTestName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '考试名称',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_test_result
-- ----------------------------
DROP TABLE IF EXISTS `t_test_result`;
CREATE TABLE `t_test_result`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentID` int(11) DEFAULT NULL COMMENT '学生ID',
  `FStudentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学生姓名',
  `FTestID` int(11) DEFAULT NULL COMMENT '考试ID',
  `FTestName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '考试名称',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名称',
  `FScore` int(11) DEFAULT NULL COMMENT '分数',
  `FCreateTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
