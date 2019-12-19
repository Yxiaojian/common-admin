/*
Navicat MySQL Data Transfer

Source Server         : r
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : sys_admin

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-11-29 15:05:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `oper_method` varchar(250) DEFAULT NULL COMMENT '操作方法',
  `request_param` varchar(500) DEFAULT NULL COMMENT '操作参数',
  `oper_desc` varchar(255) DEFAULT NULL COMMENT '操作说明',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('44', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"role:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"ff\"}', '保存权限操作', '2019-08-13 22:41:29', '2019-08-13 22:41:29');
INSERT INTO `sys_log` VALUES ('45', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,20,21,23,24,\",\"roleCode\":\"test\",\"roleName\":\"普通用户\"}', '保存角色操作', '2019-08-13 22:42:43', '2019-08-13 22:42:43');
INSERT INTO `sys_log` VALUES ('46', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"id\":14,\"permissionCode\":\"normal\",\"permissionName\":\"三问数学\",\"resourceType\":\"top_directory\",\"url\":\"\"}', '保存权限操作', '2019-08-13 22:43:53', '2019-08-13 22:43:53');
INSERT INTO `sys_log` VALUES ('47', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,20,21,23,24,\",\"roleCode\":\"普通用户\",\"roleName\":\"普通系统角色\"}', '保存角色操作', '2019-08-13 22:44:56', '2019-08-13 22:44:56');
INSERT INTO `sys_log` VALUES ('48', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,5,3,4,25,18,16,6,8,9,7,17,10,11,12,13,14,34,20,21,23,24,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-08-13 22:45:11', '2019-08-13 22:45:11');
INSERT INTO `sys_log` VALUES ('49', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:info\",\"permissionName\":\"信息\",\"resourceType\":\"menu\",\"url\":\"tt\"}', '保存权限操作', '2019-08-13 22:46:30', '2019-08-13 22:46:30');
INSERT INTO `sys_log` VALUES ('50', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"ff\"}', '保存权限操作', '2019-08-13 22:46:42', '2019-08-13 22:46:42');
INSERT INTO `sys_log` VALUES ('51', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:statistics\",\"permissionName\":\"统计\",\"resourceType\":\"menu\",\"url\":\"ff3\"}', '保存权限操作', '2019-08-13 22:47:38', '2019-08-13 22:47:38');
INSERT INTO `sys_log` VALUES ('52', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"sys:manager\",\"permissionName\":\"管理\",\"resourceType\":\"menu\",\"url\":\"gg\"}', '保存权限操作', '2019-08-13 22:48:47', '2019-08-13 22:48:47');
INSERT INTO `sys_log` VALUES ('53', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"普通用户\",\"roleName\":\"普通系统角色\"}', '保存角色操作', '2019-08-13 22:49:06', '2019-08-13 22:49:06');
INSERT INTO `sys_log` VALUES ('54', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[24]', '删除权限操作', '2019-08-13 22:50:10', '2019-08-13 22:50:10');
INSERT INTO `sys_log` VALUES ('55', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[23]', '删除权限操作', '2019-08-13 22:50:16', '2019-08-13 22:50:16');
INSERT INTO `sys_log` VALUES ('56', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[21]', '删除权限操作', '2019-08-13 22:50:22', '2019-08-13 22:50:22');
INSERT INTO `sys_log` VALUES ('57', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[20]', '删除权限操作', '2019-08-13 22:50:42', '2019-08-13 22:50:42');
INSERT INTO `sys_log` VALUES ('58', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,5,3,4,18,16,6,8,9,7,25,17,10,13,11,12,14,36,34,37,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-08-13 22:51:07', '2019-08-13 22:51:07');
INSERT INTO `sys_log` VALUES ('59', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"/enroll/home\"}', '保存权限操作', '2019-08-17 10:27:55', '2019-08-17 10:27:55');
INSERT INTO `sys_log` VALUES ('60', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"普通系统角色\"}', '保存角色操作', '2019-08-17 10:51:28', '2019-08-17 10:51:28');
INSERT INTO `sys_log` VALUES ('61', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"普通系统角色\"}', '保存角色操作', '2019-08-17 10:51:33', '2019-08-17 10:51:33');
INSERT INTO `sys_log` VALUES ('62', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}', '保存角色操作', '2019-08-17 10:52:04', '2019-08-17 10:52:04');
INSERT INTO `sys_log` VALUES ('63', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"assistant\",\"roleName\":\"助教\"}', '保存角色操作', '2019-08-17 10:53:16', '2019-08-17 10:53:16');
INSERT INTO `sys_log` VALUES ('64', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:home\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"/student/home\"}', '保存权限操作', '2019-08-17 11:16:26', '2019-08-17 11:16:26');
INSERT INTO `sys_log` VALUES ('65', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"新生报名\",\"resourceType\":\"menu\",\"url\":\"/student/enroll\"}', '保存权限操作', '2019-08-17 13:48:47', '2019-08-17 13:48:47');
INSERT INTO `sys_log` VALUES ('66', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"#￥%……&*（（*NM《》？P{\",\"passWord\":\"444444\",\"roleId\":1,\"state\":1,\"userName\":\"admin\"}', '添加用户操作', '2019-08-20 21:20:48', '2019-08-20 21:20:48');
INSERT INTO `sys_log` VALUES ('67', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"111111\",\"passWord\":\"111111\",\"roleId\":1,\"state\":1,\"userName\":\"111111\"}', '添加用户操作', '2019-08-20 21:21:13', '2019-08-20 21:21:13');
INSERT INTO `sys_log` VALUES ('68', '1', 'admin', 'com.xieke.admin.web.UserController.delBatch', '[11]', '删除用户操作', '2019-08-20 21:21:23', '2019-08-20 21:21:23');
INSERT INTO `sys_log` VALUES ('69', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"11\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"yanhaojian\"}', '添加用户操作', '2019-10-01 11:08:28', '2019-10-01 11:08:28');
INSERT INTO `sys_log` VALUES ('70', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}', '保存角色操作', '2019-10-01 13:40:07', '2019-10-01 13:40:07');
INSERT INTO `sys_log` VALUES ('71', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":3,\"permissionIds\":\",14,34,\",\"roleCode\":\"assistant\",\"roleName\":\"助教\"}', '保存角色操作', '2019-10-01 13:40:18', '2019-10-01 13:40:18');
INSERT INTO `sys_log` VALUES ('72', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}', '保存角色操作', '2019-10-01 13:40:22', '2019-10-01 13:40:22');
INSERT INTO `sys_log` VALUES ('73', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"id\":37,\"parentId\":14,\"permissionCode\":\"sys:manager\",\"permissionName\":\"管理\",\"resourceType\":\"menu\",\"url\":\"/manage/index\"}', '保存权限操作', '2019-10-01 13:43:39', '2019-10-01 13:43:39');
INSERT INTO `sys_log` VALUES ('74', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":1,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}', '保存权限操作', '2019-10-01 14:37:36', '2019-10-01 14:37:36');
INSERT INTO `sys_log` VALUES ('75', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[39]', '删除权限操作', '2019-10-01 14:38:44', '2019-10-01 14:38:44');
INSERT INTO `sys_log` VALUES ('76', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}', '保存权限操作', '2019-10-01 14:39:06', '2019-10-01 14:39:06');
INSERT INTO `sys_log` VALUES ('77', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,40,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-01 14:39:22', '2019-10-01 14:39:22');
INSERT INTO `sys_log` VALUES ('78', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,40,37,35,38,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-01 14:39:43', '2019-10-01 14:39:43');
INSERT INTO `sys_log` VALUES ('79', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-01 14:40:56', '2019-10-01 14:40:56');
INSERT INTO `sys_log` VALUES ('80', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[40]', '删除权限操作', '2019-10-01 15:06:14', '2019-10-01 15:06:14');
INSERT INTO `sys_log` VALUES ('81', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":1,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"curriculum/list\"}', '保存权限操作', '2019-10-01 15:07:08', '2019-10-01 15:07:08');
INSERT INTO `sys_log` VALUES ('82', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,41,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-01 15:07:35', '2019-10-01 15:07:35');
INSERT INTO `sys_log` VALUES ('83', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[41]', '删除权限操作', '2019-10-01 15:10:11', '2019-10-01 15:10:11');
INSERT INTO `sys_log` VALUES ('84', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"test\",\"passWord\":\"123456\",\"roleId\":1,\"state\":1,\"userName\":\"admin\"}', '添加用户操作', '2019-10-17 15:40:20', '2019-10-17 15:40:20');
INSERT INTO `sys_log` VALUES ('85', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"test\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"admin\"}', '添加用户操作', '2019-10-17 15:40:43', '2019-10-17 15:40:43');
INSERT INTO `sys_log` VALUES ('86', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"test2\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"test2\"}', '添加用户操作', '2019-10-17 15:41:14', '2019-10-17 15:41:14');
INSERT INTO `sys_log` VALUES ('87', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":9,\"name\":\"主讲老师test\",\"roleId\":2,\"state\":1}', '修改用户操作', '2019-10-17 18:50:36', '2019-10-17 18:50:36');
INSERT INTO `sys_log` VALUES ('88', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":13,\"name\":\"test2\",\"roleId\":3,\"state\":1}', '修改用户操作', '2019-10-17 19:08:34', '2019-10-17 19:08:34');
INSERT INTO `sys_log` VALUES ('89', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"士大夫\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"admin\"}', '添加用户操作', '2019-10-17 19:15:55', '2019-10-17 19:15:55');
INSERT INTO `sys_log` VALUES ('90', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"士大夫\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"fff\"}', '添加用户操作', '2019-10-17 19:16:11', '2019-10-17 19:16:11');
INSERT INTO `sys_log` VALUES ('91', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":15,\"name\":\"士大夫\",\"roleId\":2,\"state\":1}', '修改用户操作', '2019-10-17 19:16:19', '2019-10-17 19:16:19');
INSERT INTO `sys_log` VALUES ('92', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"士大夫给\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"ggg\"}', '添加用户操作', '2019-10-17 19:16:30', '2019-10-17 19:16:30');
INSERT INTO `sys_log` VALUES ('93', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"是的地方\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"hhh\"}', '添加用户操作', '2019-10-17 19:16:40', '2019-10-17 19:16:40');
INSERT INTO `sys_log` VALUES ('94', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"的风格\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"jjj\"}', '添加用户操作', '2019-10-17 19:16:51', '2019-10-17 19:16:51');
INSERT INTO `sys_log` VALUES ('95', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":16,\"name\":\"士大夫给\",\"roleId\":2,\"state\":1}', '修改用户操作', '2019-10-17 19:17:00', '2019-10-17 19:17:00');
INSERT INTO `sys_log` VALUES ('96', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":17,\"name\":\"是的地方\",\"roleId\":2,\"state\":1}', '修改用户操作', '2019-10-17 19:17:04', '2019-10-17 19:17:04');
INSERT INTO `sys_log` VALUES ('97', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":18,\"name\":\"的风格\",\"roleId\":2,\"state\":1}', '修改用户操作', '2019-10-17 19:17:08', '2019-10-17 19:17:08');
INSERT INTO `sys_log` VALUES ('98', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"aaa\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"aaa\"}', '添加用户操作', '2019-10-17 19:17:21', '2019-10-17 19:17:21');
INSERT INTO `sys_log` VALUES ('99', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"课程管理\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}', '保存权限操作', '2019-10-18 10:45:27', '2019-10-18 10:45:27');
INSERT INTO `sys_log` VALUES ('100', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"classes:list\",\"permissionName\":\"班级管理\",\"resourceType\":\"menu\",\"url\":\"/classes/list\"}', '保存权限操作', '2019-10-18 10:46:36', '2019-10-18 10:46:36');
INSERT INTO `sys_log` VALUES ('101', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"permissionIds\":\"\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}', '保存角色操作', '2019-10-18 10:47:20', '2019-10-18 10:47:20');
INSERT INTO `sys_log` VALUES ('102', '1', 'admin', 'com.xieke.admin.web.UserController.add', '{\"name\":\"w\",\"passWord\":\"123456\",\"roleId\":4,\"state\":1,\"userName\":\"w\"}', '添加用户操作', '2019-10-18 10:48:23', '2019-10-18 10:48:23');
INSERT INTO `sys_log` VALUES ('103', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":14,\"permissionCode\":\"22\",\"permissionName\":\"11目录\",\"resourceType\":\"directory\",\"url\":\"\"}', '保存权限操作', '2019-10-18 10:54:48', '2019-10-18 10:54:48');
INSERT INTO `sys_log` VALUES ('104', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[41]', '删除权限操作', '2019-10-18 11:00:32', '2019-10-18 11:00:32');
INSERT INTO `sys_log` VALUES ('105', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":34,\"permissionCode\":\"student:enroll\",\"permissionName\":\"新生报名\",\"resourceType\":\"button\",\"url\":\"\"}', '保存权限操作', '2019-10-18 11:02:22', '2019-10-18 11:02:22');
INSERT INTO `sys_log` VALUES ('106', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[38]', '删除权限操作', '2019-10-18 11:02:31', '2019-10-18 11:02:31');
INSERT INTO `sys_log` VALUES ('107', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":37,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"课程管理\",\"resourceType\":\"button\",\"url\":\"\"}', '保存权限操作', '2019-10-18 11:03:00', '2019-10-18 11:03:00');
INSERT INTO `sys_log` VALUES ('108', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[39]', '删除权限操作', '2019-10-18 11:03:04', '2019-10-18 11:03:04');
INSERT INTO `sys_log` VALUES ('109', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":37,\"permissionCode\":\"classes:list\",\"permissionName\":\"班级管理\",\"resourceType\":\"button\",\"url\":\"\"}', '保存权限操作', '2019-10-18 11:03:54', '2019-10-18 11:03:54');
INSERT INTO `sys_log` VALUES ('110', '1', 'admin', 'com.xieke.admin.web.PermissionController.delBatch', '[40]', '删除权限操作', '2019-10-18 11:03:58', '2019-10-18 11:03:58');
INSERT INTO `sys_log` VALUES ('111', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,3,4,5,18,16,6,9,7,8,25,17,10,12,13,11,14,36,34,42,37,44,43,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-18 11:04:09', '2019-10-18 11:04:09');
INSERT INTO `sys_log` VALUES ('112', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,42,\",\"roleCode\":\"teacher\",\"roleName\":\"主讲老师\"}', '保存角色操作', '2019-10-18 11:04:21', '2019-10-18 11:04:21');
INSERT INTO `sys_log` VALUES ('113', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":3,\"permissionIds\":\",14,34,42,\",\"roleCode\":\"assistant\",\"roleName\":\"助教老师\"}', '保存角色操作', '2019-10-18 11:04:27', '2019-10-18 11:04:27');
INSERT INTO `sys_log` VALUES ('114', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":4,\"permissionIds\":\",14,37,43,\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}', '保存角色操作', '2019-10-18 11:09:28', '2019-10-18 11:09:28');
INSERT INTO `sys_log` VALUES ('115', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":4,\"permissionIds\":\"\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}', '保存角色操作', '2019-10-18 11:12:01', '2019-10-18 11:12:01');
INSERT INTO `sys_log` VALUES ('116', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":4,\"permissionIds\":\",14,37,43,\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}', '保存角色操作', '2019-10-18 11:12:36', '2019-10-18 11:12:36');
INSERT INTO `sys_log` VALUES ('117', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,3,4,5,18,16,6,9,7,8,25,17,10,12,13,11,14,36,34,42,37,44,43,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-10-18 11:31:31', '2019-10-18 11:31:31');
INSERT INTO `sys_log` VALUES ('118', '1', 'admin', 'com.xieke.admin.web.UserController.edit', '{\"id\":16,\"name\":\"士大夫给\",\"roleId\":3,\"state\":1}', '修改用户操作', '2019-10-18 11:43:47', '2019-10-18 11:43:47');
INSERT INTO `sys_log` VALUES ('119', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":37,\"permissionCode\":\"order:list\",\"permissionName\":\"订单管理\",\"resourceType\":\"button\",\"url\":\"\"}', '保存权限操作', '2019-11-22 14:50:39', '2019-11-22 14:50:39');
INSERT INTO `sys_log` VALUES ('120', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,13,11,12,2,5,3,4,14,36,34,42,37,43,44,45,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-11-22 14:50:57', '2019-11-22 14:50:57');
INSERT INTO `sys_log` VALUES ('121', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,13,11,12,2,5,3,4,14,36,34,42,37,43,44,45,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-11-22 15:06:05', '2019-11-22 15:06:05');
INSERT INTO `sys_log` VALUES ('122', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,42,37,43,44,45,\",\"roleCode\":\"teacher\",\"roleName\":\"主讲老师\"}', '保存角色操作', '2019-11-22 15:06:24', '2019-11-22 15:06:24');
INSERT INTO `sys_log` VALUES ('123', '1', 'admin', 'com.xieke.admin.web.PermissionController.save', '{\"available\":1,\"parentId\":34,\"permissionCode\":\"continuebm:list\",\"permissionName\":\"续报\",\"resourceType\":\"button\",\"url\":\"\"}', '保存权限操作', '2019-11-26 11:37:25', '2019-11-26 11:37:25');
INSERT INTO `sys_log` VALUES ('124', '1', 'admin', 'com.xieke.admin.web.RoleController.save', '{\"available\":1,\"id\":1,\"permissionIds\":\",1,25,17,10,12,13,11,2,4,5,3,18,16,6,9,7,8,14,37,45,43,44,35,36,34,46,42,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}', '保存角色操作', '2019-11-26 11:37:44', '2019-11-26 11:37:44');

-- ----------------------------
-- Table structure for `sys_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `ip_address` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `geography_location` varchar(50) DEFAULT NULL COMMENT '地理位置',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COMMENT='登录日志';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('71', '1', 'admin', '127.0.0.1', null, '2019-08-13 20:26:01', '2019-08-13 20:26:01');
INSERT INTO `sys_login_log` VALUES ('72', '1', 'admin', '127.0.0.1', null, '2019-08-13 20:27:39', '2019-08-13 20:27:39');
INSERT INTO `sys_login_log` VALUES ('73', '1', 'admin', '127.0.0.1', null, '2019-08-13 20:35:15', '2019-08-13 20:35:15');
INSERT INTO `sys_login_log` VALUES ('74', '1', 'admin', '127.0.0.1', null, '2019-08-13 21:38:25', '2019-08-13 21:38:25');
INSERT INTO `sys_login_log` VALUES ('75', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:12:38', '2019-08-13 22:12:38');
INSERT INTO `sys_login_log` VALUES ('76', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:42:43', '2019-08-13 22:42:43');
INSERT INTO `sys_login_log` VALUES ('77', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:44:01', '2019-08-13 22:44:01');
INSERT INTO `sys_login_log` VALUES ('78', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:45:23', '2019-08-13 22:45:23');
INSERT INTO `sys_login_log` VALUES ('79', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:50:54', '2019-08-13 22:50:54');
INSERT INTO `sys_login_log` VALUES ('80', '1', 'admin', '127.0.0.1', null, '2019-08-13 22:51:14', '2019-08-13 22:51:14');
INSERT INTO `sys_login_log` VALUES ('81', '1', 'admin', '127.0.0.1', null, '2019-08-17 09:43:22', '2019-08-17 09:43:22');
INSERT INTO `sys_login_log` VALUES ('82', '1', 'admin', '127.0.0.1', null, '2019-08-17 09:47:56', '2019-08-17 09:47:56');
INSERT INTO `sys_login_log` VALUES ('83', '1', 'admin', '127.0.0.1', null, '2019-08-17 10:26:50', '2019-08-17 10:26:50');
INSERT INTO `sys_login_log` VALUES ('84', '9', 'test', '127.0.0.1', null, '2019-08-17 10:50:26', '2019-08-17 10:50:26');
INSERT INTO `sys_login_log` VALUES ('85', '1', 'admin', '127.0.0.1', null, '2019-08-17 10:51:00', '2019-08-17 10:51:00');
INSERT INTO `sys_login_log` VALUES ('86', '9', 'test', '127.0.0.1', null, '2019-08-17 10:57:42', '2019-08-17 10:57:42');
INSERT INTO `sys_login_log` VALUES ('87', '1', 'admin', '127.0.0.1', null, '2019-08-17 11:02:21', '2019-08-17 11:02:21');
INSERT INTO `sys_login_log` VALUES ('88', '1', 'admin', '127.0.0.1', null, '2019-08-17 11:34:19', '2019-08-17 11:34:19');
INSERT INTO `sys_login_log` VALUES ('89', '1', 'admin', '127.0.0.1', null, '2019-08-17 13:37:11', '2019-08-17 13:37:11');
INSERT INTO `sys_login_log` VALUES ('90', '1', 'admin', '127.0.0.1', null, '2019-08-17 13:42:32', '2019-08-17 13:42:32');
INSERT INTO `sys_login_log` VALUES ('91', '1', 'admin', '127.0.0.1', null, '2019-08-17 14:18:41', '2019-08-17 14:18:41');
INSERT INTO `sys_login_log` VALUES ('92', '1', 'admin', '127.0.0.1', null, '2019-08-17 14:50:50', '2019-08-17 14:50:50');
INSERT INTO `sys_login_log` VALUES ('93', '1', 'admin', '127.0.0.1', null, '2019-08-17 15:24:05', '2019-08-17 15:24:05');
INSERT INTO `sys_login_log` VALUES ('94', '1', 'admin', '127.0.0.1', null, '2019-08-17 15:55:26', '2019-08-17 15:55:26');
INSERT INTO `sys_login_log` VALUES ('95', '1', 'admin', '127.0.0.1', null, '2019-08-17 16:26:02', '2019-08-17 16:26:02');
INSERT INTO `sys_login_log` VALUES ('96', '1', 'admin', '127.0.0.1', null, '2019-08-19 11:52:43', '2019-08-19 11:52:43');
INSERT INTO `sys_login_log` VALUES ('97', '1', 'admin', '127.0.0.1', null, '2019-08-19 15:25:36', '2019-08-19 15:25:36');
INSERT INTO `sys_login_log` VALUES ('98', '1', 'admin', '127.0.0.1', null, '2019-08-19 19:21:51', '2019-08-19 19:21:51');
INSERT INTO `sys_login_log` VALUES ('99', '1', 'admin', '127.0.0.1', null, '2019-08-20 21:02:14', '2019-08-20 21:02:14');
INSERT INTO `sys_login_log` VALUES ('100', '1', 'admin', '127.0.0.1', null, '2019-08-20 21:38:15', '2019-08-20 21:38:15');
INSERT INTO `sys_login_log` VALUES ('101', '1', 'admin', '127.0.0.1', null, '2019-08-24 17:19:13', '2019-08-24 17:19:13');
INSERT INTO `sys_login_log` VALUES ('102', '1', 'admin', '127.0.0.1', null, '2019-09-07 13:58:44', '2019-09-07 13:58:44');
INSERT INTO `sys_login_log` VALUES ('103', '1', 'admin', '127.0.0.1', null, '2019-09-07 14:15:31', '2019-09-07 14:15:31');
INSERT INTO `sys_login_log` VALUES ('104', '1', 'admin', '127.0.0.1', null, '2019-09-21 09:33:25', '2019-09-21 09:33:25');
INSERT INTO `sys_login_log` VALUES ('105', '1', 'admin', '127.0.0.1', null, '2019-09-21 11:04:10', '2019-09-21 11:04:10');
INSERT INTO `sys_login_log` VALUES ('106', '1', 'admin', '127.0.0.1', null, '2019-09-21 13:58:11', '2019-09-21 13:58:11');
INSERT INTO `sys_login_log` VALUES ('107', '1', 'admin', '127.0.0.1', null, '2019-10-01 10:20:20', '2019-10-01 10:20:20');
INSERT INTO `sys_login_log` VALUES ('108', '1', 'admin', '127.0.0.1', null, '2019-10-01 11:02:30', '2019-10-01 11:02:30');
INSERT INTO `sys_login_log` VALUES ('109', '1', 'admin', '127.0.0.1', null, '2019-10-01 11:08:01', '2019-10-01 11:08:01');
INSERT INTO `sys_login_log` VALUES ('110', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-01 11:08:38', '2019-10-01 11:08:38');
INSERT INTO `sys_login_log` VALUES ('111', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-01 13:38:00', '2019-10-01 13:38:00');
INSERT INTO `sys_login_log` VALUES ('112', '1', 'admin', '127.0.0.1', null, '2019-10-01 13:38:33', '2019-10-01 13:38:33');
INSERT INTO `sys_login_log` VALUES ('113', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-01 13:40:33', '2019-10-01 13:40:33');
INSERT INTO `sys_login_log` VALUES ('114', '1', 'admin', '127.0.0.1', null, '2019-10-01 13:40:46', '2019-10-01 13:40:46');
INSERT INTO `sys_login_log` VALUES ('115', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-01 13:41:22', '2019-10-01 13:41:22');
INSERT INTO `sys_login_log` VALUES ('116', '1', 'admin', '127.0.0.1', null, '2019-10-01 13:41:31', '2019-10-01 13:41:31');
INSERT INTO `sys_login_log` VALUES ('117', '1', 'admin', '127.0.0.1', null, '2019-10-01 13:48:04', '2019-10-01 13:48:04');
INSERT INTO `sys_login_log` VALUES ('118', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:18:22', '2019-10-01 14:18:22');
INSERT INTO `sys_login_log` VALUES ('119', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:20:51', '2019-10-01 14:20:51');
INSERT INTO `sys_login_log` VALUES ('120', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:35:59', '2019-10-01 14:35:59');
INSERT INTO `sys_login_log` VALUES ('121', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:37:50', '2019-10-01 14:37:50');
INSERT INTO `sys_login_log` VALUES ('122', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:39:51', '2019-10-01 14:39:51');
INSERT INTO `sys_login_log` VALUES ('123', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:41:23', '2019-10-01 14:41:23');
INSERT INTO `sys_login_log` VALUES ('124', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-01 14:52:36', '2019-10-01 14:52:36');
INSERT INTO `sys_login_log` VALUES ('125', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:52:44', '2019-10-01 14:52:44');
INSERT INTO `sys_login_log` VALUES ('126', '1', 'admin', '127.0.0.1', null, '2019-10-01 14:54:44', '2019-10-01 14:54:44');
INSERT INTO `sys_login_log` VALUES ('127', '1', 'admin', '127.0.0.1', null, '2019-10-01 15:07:42', '2019-10-01 15:07:42');
INSERT INTO `sys_login_log` VALUES ('128', '1', 'admin', '127.0.0.1', null, '2019-10-12 09:40:29', '2019-10-12 09:40:29');
INSERT INTO `sys_login_log` VALUES ('129', '1', 'admin', '127.0.0.1', null, '2019-10-12 11:14:22', '2019-10-12 11:14:22');
INSERT INTO `sys_login_log` VALUES ('130', '1', 'admin', '127.0.0.1', null, '2019-10-12 11:50:23', '2019-10-12 11:50:23');
INSERT INTO `sys_login_log` VALUES ('131', '1', 'admin', '127.0.0.1', null, '2019-10-12 12:00:38', '2019-10-12 12:00:38');
INSERT INTO `sys_login_log` VALUES ('132', '10', 'yanhaojian', '127.0.0.1', null, '2019-10-12 12:01:33', '2019-10-12 12:01:33');
INSERT INTO `sys_login_log` VALUES ('133', '1', 'admin', '127.0.0.1', null, '2019-10-12 12:02:18', '2019-10-12 12:02:18');
INSERT INTO `sys_login_log` VALUES ('134', '1', 'admin', '127.0.0.1', null, '2019-10-17 14:17:00', '2019-10-17 14:17:00');
INSERT INTO `sys_login_log` VALUES ('135', '1', 'admin', '127.0.0.1', null, '2019-10-17 14:55:49', '2019-10-17 14:55:49');
INSERT INTO `sys_login_log` VALUES ('136', '1', 'admin', '127.0.0.1', null, '2019-10-17 15:40:06', '2019-10-17 15:40:06');
INSERT INTO `sys_login_log` VALUES ('137', '1', 'admin', '127.0.0.1', null, '2019-10-17 16:17:17', '2019-10-17 16:17:17');
INSERT INTO `sys_login_log` VALUES ('138', '1', 'admin', '127.0.0.1', null, '2019-10-17 17:07:18', '2019-10-17 17:07:18');
INSERT INTO `sys_login_log` VALUES ('139', '1', 'admin', '127.0.0.1', null, '2019-10-17 17:47:10', '2019-10-17 17:47:10');
INSERT INTO `sys_login_log` VALUES ('140', '1', 'admin', '127.0.0.1', null, '2019-10-17 18:35:30', '2019-10-17 18:35:30');
INSERT INTO `sys_login_log` VALUES ('141', '1', 'admin', '127.0.0.1', null, '2019-10-17 19:08:34', '2019-10-17 19:08:34');
INSERT INTO `sys_login_log` VALUES ('142', '1', 'admin', '127.0.0.1', null, '2019-10-18 09:48:00', '2019-10-18 09:48:00');
INSERT INTO `sys_login_log` VALUES ('143', '1', 'admin', '127.0.0.1', null, '2019-10-18 10:28:05', '2019-10-18 10:28:05');
INSERT INTO `sys_login_log` VALUES ('144', '1', 'admin', '127.0.0.1', null, '2019-10-18 10:48:08', '2019-10-18 10:48:08');
INSERT INTO `sys_login_log` VALUES ('145', '20', 'w', '127.0.0.1', null, '2019-10-18 10:48:40', '2019-10-18 10:48:40');
INSERT INTO `sys_login_log` VALUES ('146', '1', 'admin', '127.0.0.1', null, '2019-10-18 10:51:24', '2019-10-18 10:51:24');
INSERT INTO `sys_login_log` VALUES ('147', '20', 'w', '127.0.0.1', null, '2019-10-18 11:07:26', '2019-10-18 11:07:26');
INSERT INTO `sys_login_log` VALUES ('148', '20', 'w', '127.0.0.1', null, '2019-10-18 11:09:53', '2019-10-18 11:09:53');
INSERT INTO `sys_login_log` VALUES ('149', '20', 'w', '127.0.0.1', null, '2019-10-18 11:12:22', '2019-10-18 11:12:22');
INSERT INTO `sys_login_log` VALUES ('150', '20', 'w', '127.0.0.1', null, '2019-10-18 11:12:45', '2019-10-18 11:12:45');
INSERT INTO `sys_login_log` VALUES ('151', '1', 'admin', '127.0.0.1', null, '2019-10-18 11:31:08', '2019-10-18 11:31:08');
INSERT INTO `sys_login_log` VALUES ('152', '1', 'admin', '127.0.0.1', null, '2019-10-18 11:31:51', '2019-10-18 11:31:51');
INSERT INTO `sys_login_log` VALUES ('153', '1', 'admin', '127.0.0.1', null, '2019-10-18 13:41:04', '2019-10-18 13:41:04');
INSERT INTO `sys_login_log` VALUES ('154', '1', 'admin', '127.0.0.1', null, '2019-10-18 14:11:07', '2019-10-18 14:11:07');
INSERT INTO `sys_login_log` VALUES ('155', '1', 'admin', '127.0.0.1', null, '2019-10-18 15:01:24', '2019-10-18 15:01:24');
INSERT INTO `sys_login_log` VALUES ('156', '1', 'admin', '127.0.0.1', null, '2019-10-18 15:46:24', '2019-10-18 15:46:24');
INSERT INTO `sys_login_log` VALUES ('157', '1', 'admin', '127.0.0.1', null, '2019-10-18 16:21:47', '2019-10-18 16:21:47');
INSERT INTO `sys_login_log` VALUES ('158', '1', 'admin', '127.0.0.1', null, '2019-10-18 16:51:56', '2019-10-18 16:51:56');
INSERT INTO `sys_login_log` VALUES ('159', '1', 'admin', '127.0.0.1', null, '2019-10-18 17:22:10', '2019-10-18 17:22:10');
INSERT INTO `sys_login_log` VALUES ('160', '1', 'admin', '127.0.0.1', null, '2019-10-19 10:03:58', '2019-10-19 10:03:58');
INSERT INTO `sys_login_log` VALUES ('161', '1', 'admin', '127.0.0.1', null, '2019-10-19 11:39:15', '2019-10-19 11:39:15');
INSERT INTO `sys_login_log` VALUES ('162', '1', 'admin', '127.0.0.1', null, '2019-10-19 14:35:35', '2019-10-19 14:35:35');
INSERT INTO `sys_login_log` VALUES ('163', '1', 'admin', '127.0.0.1', null, '2019-10-19 15:21:14', '2019-10-19 15:21:14');
INSERT INTO `sys_login_log` VALUES ('164', '1', 'admin', '127.0.0.1', null, '2019-11-17 09:28:14', '2019-11-17 09:28:14');
INSERT INTO `sys_login_log` VALUES ('165', '1', 'admin', '127.0.0.1', null, '2019-11-17 10:08:41', '2019-11-17 10:08:41');
INSERT INTO `sys_login_log` VALUES ('166', '1', 'admin', '127.0.0.1', null, '2019-11-17 13:33:27', '2019-11-17 13:33:27');
INSERT INTO `sys_login_log` VALUES ('167', '1', 'admin', '127.0.0.1', null, '2019-11-19 13:24:23', '2019-11-19 13:24:23');
INSERT INTO `sys_login_log` VALUES ('168', '1', 'admin', '127.0.0.1', null, '2019-11-19 14:57:05', '2019-11-19 14:57:05');
INSERT INTO `sys_login_log` VALUES ('169', '1', 'admin', '127.0.0.1', null, '2019-11-19 15:31:34', '2019-11-19 15:31:34');
INSERT INTO `sys_login_log` VALUES ('170', '1', 'admin', '127.0.0.1', null, '2019-11-19 16:26:37', '2019-11-19 16:26:37');
INSERT INTO `sys_login_log` VALUES ('171', '1', 'admin', '127.0.0.1', null, '2019-11-19 16:57:02', '2019-11-19 16:57:02');
INSERT INTO `sys_login_log` VALUES ('172', '1', 'admin', '127.0.0.1', null, '2019-11-19 17:28:11', '2019-11-19 17:28:11');
INSERT INTO `sys_login_log` VALUES ('173', '1', 'admin', '127.0.0.1', null, '2019-11-20 10:18:26', '2019-11-20 10:18:26');
INSERT INTO `sys_login_log` VALUES ('174', '1', 'admin', '127.0.0.1', null, '2019-11-20 10:52:10', '2019-11-20 10:52:10');
INSERT INTO `sys_login_log` VALUES ('175', '1', 'admin', '127.0.0.1', null, '2019-11-20 11:29:32', '2019-11-20 11:29:32');
INSERT INTO `sys_login_log` VALUES ('176', '1', 'admin', '127.0.0.1', null, '2019-11-20 13:15:14', '2019-11-20 13:15:14');
INSERT INTO `sys_login_log` VALUES ('177', '1', 'admin', '127.0.0.1', null, '2019-11-20 13:45:28', '2019-11-20 13:45:28');
INSERT INTO `sys_login_log` VALUES ('178', '1', 'admin', '127.0.0.1', null, '2019-11-20 14:16:48', '2019-11-20 14:16:48');
INSERT INTO `sys_login_log` VALUES ('179', '1', 'admin', '127.0.0.1', null, '2019-11-20 14:47:24', '2019-11-20 14:47:24');
INSERT INTO `sys_login_log` VALUES ('180', '1', 'admin', '127.0.0.1', null, '2019-11-20 15:17:31', '2019-11-20 15:17:31');
INSERT INTO `sys_login_log` VALUES ('181', '1', 'admin', '127.0.0.1', null, '2019-11-20 16:26:22', '2019-11-20 16:26:22');
INSERT INTO `sys_login_log` VALUES ('182', '1', 'admin', '127.0.0.1', null, '2019-11-20 18:31:25', '2019-11-20 18:31:25');
INSERT INTO `sys_login_log` VALUES ('183', '1', 'admin', '127.0.0.1', null, '2019-11-21 13:27:29', '2019-11-21 13:27:29');
INSERT INTO `sys_login_log` VALUES ('184', '1', 'admin', '127.0.0.1', null, '2019-11-21 13:57:48', '2019-11-21 13:57:48');
INSERT INTO `sys_login_log` VALUES ('185', '1', 'admin', '127.0.0.1', null, '2019-11-21 15:50:05', '2019-11-21 15:50:05');
INSERT INTO `sys_login_log` VALUES ('186', '1', 'admin', '127.0.0.1', null, '2019-11-21 16:21:46', '2019-11-21 16:21:46');
INSERT INTO `sys_login_log` VALUES ('187', '1', 'admin', '127.0.0.1', null, '2019-11-21 19:36:59', '2019-11-21 19:36:59');
INSERT INTO `sys_login_log` VALUES ('188', '1', 'admin', '127.0.0.1', null, '2019-11-22 14:26:00', '2019-11-22 14:26:00');
INSERT INTO `sys_login_log` VALUES ('189', '1', 'admin', '127.0.0.1', null, '2019-11-22 15:03:09', '2019-11-22 15:03:09');
INSERT INTO `sys_login_log` VALUES ('190', '1', 'admin', '127.0.0.1', null, '2019-11-22 15:03:26', '2019-11-22 15:03:26');
INSERT INTO `sys_login_log` VALUES ('191', '10', 'yanhaojian', '127.0.0.1', null, '2019-11-22 15:04:34', '2019-11-22 15:04:34');
INSERT INTO `sys_login_log` VALUES ('192', '10', 'yanhaojian', '127.0.0.1', null, '2019-11-22 15:05:41', '2019-11-22 15:05:41');
INSERT INTO `sys_login_log` VALUES ('193', '1', 'admin', '127.0.0.1', null, '2019-11-22 15:05:54', '2019-11-22 15:05:54');
INSERT INTO `sys_login_log` VALUES ('194', '1', 'admin', '127.0.0.1', null, '2019-11-22 15:39:23', '2019-11-22 15:39:23');
INSERT INTO `sys_login_log` VALUES ('195', '1', 'admin', '127.0.0.1', null, '2019-11-26 11:32:48', '2019-11-26 11:32:48');
INSERT INTO `sys_login_log` VALUES ('196', '1', 'admin', '127.0.0.1', null, '2019-11-26 17:01:39', '2019-11-26 17:01:39');
INSERT INTO `sys_login_log` VALUES ('197', '1', 'admin', '127.0.0.1', null, '2019-11-26 19:29:54', '2019-11-26 19:29:54');
INSERT INTO `sys_login_log` VALUES ('198', '1', 'admin', '127.0.0.1', null, '2019-11-27 16:40:24', '2019-11-27 16:40:24');
INSERT INTO `sys_login_log` VALUES ('199', '1', 'admin', '127.0.0.1', null, '2019-11-27 19:00:59', '2019-11-27 19:00:59');
INSERT INTO `sys_login_log` VALUES ('200', '1', 'admin', '127.0.0.1', null, '2019-11-27 19:33:57', '2019-11-27 19:33:57');
INSERT INTO `sys_login_log` VALUES ('201', '1', 'admin', '127.0.0.1', null, '2019-11-28 09:06:05', '2019-11-28 09:06:05');
INSERT INTO `sys_login_log` VALUES ('202', '1', 'admin', '127.0.0.1', null, '2019-11-28 14:50:00', '2019-11-28 14:50:00');
INSERT INTO `sys_login_log` VALUES ('203', '1', 'admin', '127.0.0.1', null, '2019-11-28 15:25:35', '2019-11-28 15:25:35');
INSERT INTO `sys_login_log` VALUES ('204', '1', 'admin', '127.0.0.1', null, '2019-11-28 16:21:21', '2019-11-28 16:21:21');
INSERT INTO `sys_login_log` VALUES ('205', '1', 'admin', '127.0.0.1', null, '2019-11-28 17:13:49', '2019-11-28 17:13:49');
INSERT INTO `sys_login_log` VALUES ('206', '1', 'admin', '127.0.0.1', null, '2019-11-28 18:12:18', '2019-11-28 18:12:18');
INSERT INTO `sys_login_log` VALUES ('207', '1', 'admin', '127.0.0.1', null, '2019-11-28 18:42:42', '2019-11-28 18:42:42');
INSERT INTO `sys_login_log` VALUES ('208', '1', 'admin', '127.0.0.1', null, '2019-11-28 19:12:45', '2019-11-28 19:12:45');
INSERT INTO `sys_login_log` VALUES ('209', '1', 'admin', '127.0.0.1', null, '2019-11-28 19:51:13', '2019-11-28 19:51:13');
INSERT INTO `sys_login_log` VALUES ('210', '1', 'admin', '127.0.0.1', null, '2019-11-28 20:21:24', '2019-11-28 20:21:24');

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `available` tinyint(1) DEFAULT NULL COMMENT '是否可用',
  `permission_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `parent_id` int(10) DEFAULT NULL COMMENT '父权限ID',
  `parent_ids` varchar(255) DEFAULT NULL COMMENT '父权限ID列表',
  `permission_code` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `resource_type` varchar(50) DEFAULT NULL COMMENT '资源类型(top_directory/directory/menu/button)',
  `url` varchar(50) DEFAULT NULL COMMENT '资源路径',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='系统权限';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '1', '系统管理', '0', '0', 'system', 'top_directory', null, '2018-07-10 11:24:48', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES ('2', '1', '用户管理', '1', '0/1', 'user:view', 'menu', '/user/list', '2018-07-10 11:24:48', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES ('3', '1', '添加', '2', '0/1/2', 'user:add', 'button', '', '2018-07-10 11:25:40', '2018-07-10 11:25:40');
INSERT INTO `sys_permission` VALUES ('4', '1', '删除', '2', '0/1/2', 'user:del', 'button', '', '2018-07-10 11:27:10', '2018-07-10 11:27:10');
INSERT INTO `sys_permission` VALUES ('5', '1', '编辑', '2', '0/1/2', 'user:edit', 'button', '', '2018-11-17 14:54:52', '2018-07-10 11:27:36');
INSERT INTO `sys_permission` VALUES ('6', '1', '角色管理', '1', '0/1', 'role:view', 'menu', '/role/list', '2018-08-04 09:38:44', '2018-08-04 09:38:44');
INSERT INTO `sys_permission` VALUES ('7', '1', '添加', '6', '0/1/6', 'role:add', 'button', '', '2018-08-04 09:42:05', '2018-08-04 09:42:05');
INSERT INTO `sys_permission` VALUES ('8', '1', '删除', '6', '0/1/6', 'role:del', 'button', '', '2018-11-17 15:01:41', '2018-08-04 09:43:26');
INSERT INTO `sys_permission` VALUES ('9', '1', '编辑', '6', '0/1/6', 'role:edit', 'button', '', '2018-08-04 09:46:01', '2018-08-04 09:46:01');
INSERT INTO `sys_permission` VALUES ('10', '1', '权限管理', '1', '0/1', 'permission:view', 'menu', '/permission/list', '2018-08-04 09:48:57', '2018-08-04 09:48:57');
INSERT INTO `sys_permission` VALUES ('11', '1', '添加', '10', '0/1/10', 'permission:add', 'button', '', '2018-08-04 09:50:50', '2018-08-04 09:50:50');
INSERT INTO `sys_permission` VALUES ('12', '1', '删除', '10', '0/1/10', 'permission:del', 'button', '', '2018-08-04 09:50:50', '2018-08-04 09:50:50');
INSERT INTO `sys_permission` VALUES ('13', '1', '编辑', '10', '0/1/10', 'permission:edit', 'button', '', '2018-08-23 11:33:34', '2018-08-23 11:33:34');
INSERT INTO `sys_permission` VALUES ('14', '1', '三问数学', '0', '0', 'normal', 'top_directory', null, '2019-08-13 22:43:53', '2018-07-10 11:24:48');
INSERT INTO `sys_permission` VALUES ('16', '1', '登录日志', '1', '0/1', 'loginLog:view', 'menu', '/loginLog/list', '2018-10-01 12:25:02', '2018-10-01 12:25:02');
INSERT INTO `sys_permission` VALUES ('17', '1', '系统日志', '1', '0/1', 'log:view', 'menu', '/log/list', '2018-10-27 16:28:50', '2018-10-27 16:28:50');
INSERT INTO `sys_permission` VALUES ('18', '1', '图标管理', '1', '0/1', 'icon:view', 'menu', '/icon/icons', '2018-10-01 12:48:42', '2018-08-23 13:15:51');
INSERT INTO `sys_permission` VALUES ('25', '1', '代码生成', '1', '0/1', 'code:view', 'menu', '/code/list', '2018-12-25 15:53:54', '2018-12-25 15:53:54');
INSERT INTO `sys_permission` VALUES ('34', '1', '报名', '14', '0/14', 'student:home', 'menu', '/student/home', '2019-08-17 11:16:26', '2019-08-13 22:41:29');
INSERT INTO `sys_permission` VALUES ('35', '1', '信息', '14', '0/14', 'student:info', 'menu', 'tt', '2019-08-13 22:46:30', '2019-08-13 22:46:30');
INSERT INTO `sys_permission` VALUES ('36', '1', '统计', '14', '0/14', 'student:statistics', 'menu', '/statistics/home', '2019-08-13 22:47:38', '2019-08-13 22:47:38');
INSERT INTO `sys_permission` VALUES ('37', '1', '管理', '14', '0/14', 'sys:manager', 'menu', '/manage/index', '2019-10-01 13:43:39', '2019-08-13 22:48:47');
INSERT INTO `sys_permission` VALUES ('42', '1', '新生报名', '34', '0/14/34', 'student:enroll', 'button', '', '2019-10-18 11:02:22', '2019-10-18 11:02:22');
INSERT INTO `sys_permission` VALUES ('43', '1', '课程管理', '37', '0/14/37', 'curriculum:list', 'button', '', '2019-10-18 11:03:00', '2019-10-18 11:03:00');
INSERT INTO `sys_permission` VALUES ('44', '1', '班级管理', '37', '0/14/37', 'classes:list', 'button', '', '2019-10-18 11:03:54', '2019-10-18 11:03:54');
INSERT INTO `sys_permission` VALUES ('45', '1', '订单管理', '37', '0/14/37', 'order:list', 'button', '', '2019-11-22 14:50:39', '2019-11-22 14:50:39');
INSERT INTO `sys_permission` VALUES ('46', '1', '续报', '34', '0/14/34', 'continuebm:list', 'button', '', '2019-11-26 11:37:26', '2019-11-26 11:37:26');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `permission_ids` varchar(255) DEFAULT NULL COMMENT '权限ID列表',
  `available` tinyint(1) DEFAULT NULL COMMENT '是否可用',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', ',1,25,17,10,12,13,11,2,4,5,3,18,16,6,9,7,8,14,37,45,43,44,35,36,34,46,42,', '1', '超级管理员', 'admin', '2019-11-26 11:37:44', '2018-07-10 11:19:49');
INSERT INTO `sys_role` VALUES ('2', ',14,34,42,37,43,44,45,', '1', '主讲老师', 'teacher', '2019-11-22 15:06:24', '2018-07-10 11:19:49');
INSERT INTO `sys_role` VALUES ('3', ',14,34,42,', '1', '助教老师', 'assistant', '2019-10-18 11:04:27', '2019-08-17 10:53:16');
INSERT INTO `sys_role` VALUES ('4', ',14,37,43,', '1', '无权限', '无', '2019-10-18 11:12:36', '2019-10-18 10:47:20');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int(10) DEFAULT NULL COMMENT '角色ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `pass_word` varchar(50) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐值',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态(0：禁用，1：启用，2：锁定)',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '超级管理员', 'admin', '90de4365c537fa959193d13ad8d07665', 'XZUY77Pq41M6jaGeR2q1yMaPOrmemy6A', '1', '2018-12-06 17:19:35', '2018-07-10 11:16:24');
INSERT INTO `sys_user` VALUES ('9', '2', '主讲老师test', 'test', 'f58cb4cbc689ace5456577d913c68bfd', 'tPKGoMIgl6y16wWaoaqXyRS2N3WzmsNo', '1', '2019-10-17 18:50:37', '2018-08-11 15:31:26');
INSERT INTO `sys_user` VALUES ('10', '2', '11', 'yanhaojian', '69469098db5efbcf6dc6e407cfc664a9', 'V525emNKpNunvv6ZELi8myEezPgPVbQ2', '1', '2019-10-01 11:08:28', '2019-10-01 11:08:28');
INSERT INTO `sys_user` VALUES ('13', '3', 'test2', 'test2', '6843803b3a7d19d425e4c67adeb6fd61', 'l9mhF89amJtOJthe9rauAqYxpLWP6K6C', '1', '2019-10-17 19:08:34', '2019-10-17 15:41:14');
INSERT INTO `sys_user` VALUES ('15', '2', '士大夫', 'fff', 'c6c29acdffe5deef030334eba5e50fbb', 'Mn5Wd5z2ZV4moOOVtBU9Nk0fGxjlZX4b', '1', '2019-10-17 19:16:19', '2019-10-17 19:16:11');
INSERT INTO `sys_user` VALUES ('16', '3', '士大夫给', 'ggg', 'edf402ee6f786591855853adf7e6ed0a', 'rulX4gsQHJjHN9lkwLuGGB2I7InMVzbD', '1', '2019-10-18 11:43:47', '2019-10-17 19:16:30');
INSERT INTO `sys_user` VALUES ('17', '2', '是的地方', 'hhh', '45b80b9ca1fdb59c5d622fd2fbb4f1a7', 'AiX6OEfrA2kSc4tNG90hBWRbeBX2fUQV', '1', '2019-10-17 19:17:04', '2019-10-17 19:16:40');
INSERT INTO `sys_user` VALUES ('18', '2', '的风格', 'jjj', 'b515e0badaf8d2529e9212191a9de977', 'fmQCU9zcv9DkpO3DPSAn4sHyzJQOGSWN', '1', '2019-10-17 19:17:09', '2019-10-17 19:16:51');
INSERT INTO `sys_user` VALUES ('19', '2', 'aaa', 'aaa', 'c9af4aef5bd9739b57635bea132bfacf', '8Fht43ZYGIVuKakCCe6wae1IVnn2oQsH', '1', '2019-10-17 19:17:21', '2019-10-17 19:17:21');
INSERT INTO `sys_user` VALUES ('20', '4', 'w', 'w', '995bc5b5b69259a1f1bd86621c7ca7e0', 'StIXBKYuYBstlPsTB2ER2jcXWAuIZSxA', '1', '2019-10-18 10:48:23', '2019-10-18 10:48:23');

-- ----------------------------
-- Table structure for `t_classes`
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FCurriculumID` int(11) DEFAULT NULL COMMENT '课程ID',
  `FClassName` varchar(50) DEFAULT NULL COMMENT '班级名称',
  `FTeacherID` int(11) DEFAULT NULL COMMENT '主讲老师ID',
  `FTeacherName` varchar(50) DEFAULT NULL COMMENT '主讲老师姓名',
  `FAssistantTeacherID` int(11) DEFAULT NULL COMMENT '助教老师ID',
  `FAssistantTeacherName` varchar(50) DEFAULT NULL COMMENT '助教老师姓名',
  `FClassType` int(11) DEFAULT NULL COMMENT '班型',
  `FClassLevel` int(11) DEFAULT NULL COMMENT '时间档',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES ('1', '1', '小老虎班', '9', '主讲老师test', '13', 'test2', '0', '0', '0', '2019-10-17 19:25:06', '');
INSERT INTO `t_classes` VALUES ('2', '3', '阿斯蒂', '15', '主讲老师test', '13', 'test2', '1', '1', '0', '2019-10-18 10:35:25', '');
INSERT INTO `t_classes` VALUES ('3', '5', '阿斯蒂222', '9', '主讲老师test', '13', 'test2', '1', '4', '0', '2019-10-18 11:37:33', '');
INSERT INTO `t_classes` VALUES ('4', '1', '阿斯蒂222', '9', '主讲老师test', '13', 'test2', '1', '4', '0', '2019-10-18 11:40:06', '');
INSERT INTO `t_classes` VALUES ('5', '4', '444', '10', '主讲老师test', '13', 'test2', '0', '0', '0', '2019-10-18 11:41:24', '');
INSERT INTO `t_classes` VALUES ('6', '3', '急急急', '9', '主讲老师test', '16', '士大夫给', '0', '0', '0', '2019-10-18 11:44:16', '');
INSERT INTO `t_classes` VALUES ('7', '3', '让人111222', '10', '11', '16', '士大夫给', '1', '1', '0', '2019-10-18 11:55:09', '');
INSERT INTO `t_classes` VALUES ('8', '6', 'yhj', '9', '主讲老师test', '16', '士大夫给', '1', '4', '0', '2019-11-17 10:11:24', '');
INSERT INTO `t_classes` VALUES ('9', '7', '颜浩健班级', '9', '主讲老师test', '13', 'test2', '0', '0', '0', '2019-11-21 14:01:06', '');

-- ----------------------------
-- Table structure for `t_curriculum`
-- ----------------------------
DROP TABLE IF EXISTS `t_curriculum`;
CREATE TABLE `t_curriculum` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FCurriculumName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `FSemester` int(11) DEFAULT NULL COMMENT '学期',
  `FDate` int(11) DEFAULT NULL COMMENT '日期',
  `FYear` int(11) DEFAULT NULL COMMENT '年份',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FClassTime` int(11) DEFAULT NULL COMMENT '课次',
  `FPrice` decimal(10,2) DEFAULT NULL COMMENT '标价',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_curriculum
-- ----------------------------
INSERT INTO `t_curriculum` VALUES ('1', '课程数学', '0', '0', '2019', '0', '55', '5.00', '0', '2019-10-17 15:33:07', '');
INSERT INTO `t_curriculum` VALUES ('2', '课程语文', '0', '1', '2019', '0', '111', '222.00', '1', '2019-10-17 15:33:45', '');
INSERT INTO `t_curriculum` VALUES ('3', '课程科学', '0', '1', '2019', '0', '44', '55.00', '0', '2019-10-17 15:35:42', '');
INSERT INTO `t_curriculum` VALUES ('4', '课程英语', '0', '1', '2019', '0', '12', '3333.00', '0', '2019-10-17 15:45:13', '');
INSERT INTO `t_curriculum` VALUES ('5', '课程体育', '0', '0', '2019', '0', '44', '4444.00', '0', '2019-10-17 15:47:04', '');
INSERT INTO `t_curriculum` VALUES ('6', '承测', '1', '1', '2019', '0', '50', '50000.00', '0', '2019-11-17 10:10:24', '');
INSERT INTO `t_curriculum` VALUES ('7', '颜浩健课程', '0', '0', '2019', '0', '8888', '88.00', '0', '2019-11-21 14:00:50', '');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentID` int(11) DEFAULT NULL COMMENT '学生ID',
  `FStudentName` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  `FSex` int(11) DEFAULT NULL COMMENT '性别',
  `FPhoneOne` varchar(50) DEFAULT NULL COMMENT '电话一',
  `FPhoneOneRemark` varchar(50) DEFAULT NULL COMMENT '电话一备注',
  `FPhoneTwo` varchar(50) DEFAULT NULL COMMENT '电话二',
  `FPhoneTwoRemark` varchar(50) DEFAULT NULL COMMENT '电话二备注',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FClassName` varchar(50) DEFAULT NULL COMMENT '班级名称',
  `FTeacherID` int(11) DEFAULT NULL COMMENT '主讲老师ID',
  `FTeacherName` varchar(50) DEFAULT NULL COMMENT '主讲老师姓名',
  `FAssistantTeacherID` int(11) DEFAULT NULL COMMENT '助教老师ID',
  `FAssistantTeacherName` varchar(50) DEFAULT NULL COMMENT '助教老师姓名',
  `FClassType` int(11) DEFAULT NULL COMMENT '班型',
  `FClassLevel` int(11) DEFAULT NULL COMMENT '时间档',
  `FCurriculumID` int(11) DEFAULT NULL COMMENT '课程ID',
  `FCurriculumName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `FSemester` int(11) DEFAULT NULL COMMENT '学期',
  `FDate` int(11) DEFAULT NULL COMMENT '日期',
  `FYear` int(11) DEFAULT NULL COMMENT '年份',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FClassTime` int(11) DEFAULT NULL COMMENT '课次',
  `FPrice` decimal(10,2) DEFAULT NULL COMMENT '标价',
  `FDiscountAmount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `FDiscountRemark` varchar(50) DEFAULT NULL COMMENT '优惠说明',
  `FPayableAmount` decimal(10,2) DEFAULT NULL COMMENT '应付金额',
  `FPaidAmount` decimal(10,2) DEFAULT NULL COMMENT '已付金额',
  `FOrderStatus` int(11) DEFAULT NULL COMMENT '订单状态',
  `FCreatorID` int(11) DEFAULT NULL COMMENT '创建人ID',
  `FCreatorName` varchar(50) DEFAULT NULL COMMENT '创建人姓名',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  `FDeleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('14', '20', '111111111', '0', '11111111', '', '', '', '5', '444', '10', '主讲老师test', '13', 'test2', '0', '0', '4', '课程英语', '0', '1', '2019', '0', '12', '3333.00', '1111.00', '金额3333 优惠1111 预缴222 欠费2000', '2222.00', '2022.00', '0', '1', '超级管理员', '2019-11-27 19:44:43', '', '');
INSERT INTO `t_order` VALUES ('15', '21', '颜浩健', '0', '18258289618', '', '', '', '8', 'yhj', '9', '主讲老师test', '16', '士大夫给', '1', '4', '6', '承测', '1', '1', '2019', '0', '50', '50000.00', '20000.00', '金额50000  优惠20000 预缴16000 欠费14000', '30000.00', '16000.00', '0', '1', '超级管理员', '2019-11-28 20:22:16', '', '');

-- ----------------------------
-- Table structure for `t_pay_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_record`;
CREATE TABLE `t_pay_record` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FOrderID` int(11) DEFAULT NULL COMMENT '订单ID',
  `FPayType` int(11) DEFAULT NULL COMMENT '支付方式',
  `FPayAmount` decimal(10,2) DEFAULT NULL COMMENT '付款金额',
  `FToller` varchar(50) DEFAULT NULL COMMENT '收费人',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  `FRecordType` int(11) DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_pay_record
-- ----------------------------
INSERT INTO `t_pay_record` VALUES ('11', '14', '0', '222.00', '颜', '2019-11-27 19:44:43', '', null);
INSERT INTO `t_pay_record` VALUES ('12', '14', '1', '800.00', '语言色色', '2019-11-28 20:08:27', '', null);
INSERT INTO `t_pay_record` VALUES ('13', '14', '0', '100.00', '颜', '2019-11-28 20:13:08', '', null);
INSERT INTO `t_pay_record` VALUES ('14', '14', '0', '800.00', '颜浩健', '2019-11-28 20:20:31', '', null);
INSERT INTO `t_pay_record` VALUES ('15', '15', '0', '16000.00', '测试', '2019-11-28 20:22:16', '', null);
INSERT INTO `t_pay_record` VALUES ('16', '14', '0', '100.00', 't ', '2019-11-28 20:47:21', '', null);

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentName` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  `FSex` int(11) DEFAULT NULL COMMENT '性别',
  `FPhoneOne` varchar(50) DEFAULT NULL COMMENT '电话一',
  `FPhoneOneRemark` varchar(50) DEFAULT NULL COMMENT '电话一备注',
  `FPhoneTwo` varchar(50) DEFAULT NULL COMMENT '电话二',
  `FPhoneTwoRemark` varchar(50) DEFAULT NULL COMMENT '电话二备注',
  `FSchool` varchar(50) DEFAULT NULL COMMENT '学校',
  `FGrade` int(11) DEFAULT NULL COMMENT '年级',
  `FEntranceYear` int(11) DEFAULT NULL COMMENT '入学年份',
  `FDeleteStatus` int(1) DEFAULT NULL COMMENT '是否已删除',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  `FAddress` varchar(255) DEFAULT NULL,
  `FBirthday` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('6', '颜浩ijan', '0', '18258289618', '', '', '', '第一小学', '1', null, '0', '2019-11-21 16:19:44', '', '优盘时代', '');
INSERT INTO `t_student` VALUES ('7', '是的啊是', '0', '12312312', '', '', '', '31231231', '1', null, '0', '2019-11-21 16:22:06', '', '', '');
INSERT INTO `t_student` VALUES ('9', 'ddfsf', '0', '12312', '', '', '', '3123123', '1', null, '0', '2019-11-21 16:25:17', '', '', '');
INSERT INTO `t_student` VALUES ('10', '李四', '0', '18258289618', '', '', '', '学校xxxxxx', '4', '2016', '0', '2019-11-21 16:33:59', '备注', '我的家庭组织', '我的生日');
INSERT INTO `t_student` VALUES ('12', '是否', '0', '561432356987', '', '', '', '地方法规的规定搜索', '1', null, '0', '2019-11-22 15:04:03', '', '是德国是德国发电公司豆腐干山豆根副食店光辐射大概第三个', '');
INSERT INTO `t_student` VALUES ('13', '梵蒂冈的', '0', '12312312', '', '', '', '3123123', '1', null, '0', '2019-11-26 11:33:18', '', '', '');
INSERT INTO `t_student` VALUES ('14', '颜颜', '0', '1778899098', '', '', '', '大多数方式地方士大夫是', '1', null, '0', '2019-11-27 19:01:54', '', '的方法是打发士大夫似懂非懂发', '');
INSERT INTO `t_student` VALUES ('15', '我的测试', '0', '11111111111111111', '', '', '', '2222222222222222222', '1', null, '0', '2019-11-27 19:12:12', '44444444444444', '3333333333333333', '');
INSERT INTO `t_student` VALUES ('16', '测试李四', '0', '2222222222222', '', '', '', '233333333333333', '1', null, '0', '2019-11-27 19:25:47', '', '333333333333333333333333333', '');
INSERT INTO `t_student` VALUES ('17', '五', '0', '55555555555', '', '', '', '555555555555555555555555555', '1', null, '0', '2019-11-27 19:34:20', '55555555555555555', '', '');
INSERT INTO `t_student` VALUES ('18', '66666测试', '0', '66666666666666666', '', '', '', '66666666666666666666', '1', null, '0', '2019-11-27 19:37:07', '', '', '');
INSERT INTO `t_student` VALUES ('19', '888测试', '0', '8888888888', '', '', '', '88888888888888', '1', null, '0', '2019-11-27 19:39:18', '', '8888888888888888888888', '');
INSERT INTO `t_student` VALUES ('20', '111111111', '0', '11111111', '', '', '', '111111111', '1', null, '0', '2019-11-27 19:44:43', '1111111111111', '', '');
INSERT INTO `t_student` VALUES ('21', '颜浩健', '0', '18258289618', '', '', '', '学军中学', '1', null, '0', '2019-11-28 20:22:16', '', '西湖区瓶水细节80号 优盘时代1好了', '');

-- ----------------------------
-- Table structure for `t_student_class_relation`
-- ----------------------------
DROP TABLE IF EXISTS `t_student_class_relation`;
CREATE TABLE `t_student_class_relation` (
  `FStudentID` int(11) NOT NULL COMMENT '学生ID',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student_class_relation
-- ----------------------------
INSERT INTO `t_student_class_relation` VALUES ('20', '5');
INSERT INTO `t_student_class_relation` VALUES ('21', '8');
