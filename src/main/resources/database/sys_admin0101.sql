/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26-log : Database - sys_admin
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sys_admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sys_admin`;

/*Table structure for table `sys_log` */

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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='系统日志';

/*Data for the table `sys_log` */

insert  into `sys_log`(`id`,`user_id`,`user_name`,`oper_method`,`request_param`,`oper_desc`,`update_time`,`create_time`) values (44,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"role:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"ff\"}','保存权限操作','2019-08-13 22:41:29','2019-08-13 22:41:29'),(45,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,20,21,23,24,\",\"roleCode\":\"test\",\"roleName\":\"普通用户\"}','保存角色操作','2019-08-13 22:42:43','2019-08-13 22:42:43'),(46,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"id\":14,\"permissionCode\":\"normal\",\"permissionName\":\"三问数学\",\"resourceType\":\"top_directory\",\"url\":\"\"}','保存权限操作','2019-08-13 22:43:53','2019-08-13 22:43:53'),(47,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,20,21,23,24,\",\"roleCode\":\"普通用户\",\"roleName\":\"普通系统角色\"}','保存角色操作','2019-08-13 22:44:56','2019-08-13 22:44:56'),(48,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,5,3,4,25,18,16,6,8,9,7,17,10,11,12,13,14,34,20,21,23,24,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-08-13 22:45:11','2019-08-13 22:45:11'),(49,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:info\",\"permissionName\":\"信息\",\"resourceType\":\"menu\",\"url\":\"tt\"}','保存权限操作','2019-08-13 22:46:30','2019-08-13 22:46:30'),(50,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"ff\"}','保存权限操作','2019-08-13 22:46:42','2019-08-13 22:46:42'),(51,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:statistics\",\"permissionName\":\"统计\",\"resourceType\":\"menu\",\"url\":\"ff3\"}','保存权限操作','2019-08-13 22:47:38','2019-08-13 22:47:38'),(52,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"sys:manager\",\"permissionName\":\"管理\",\"resourceType\":\"menu\",\"url\":\"gg\"}','保存权限操作','2019-08-13 22:48:47','2019-08-13 22:48:47'),(53,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"普通用户\",\"roleName\":\"普通系统角色\"}','保存角色操作','2019-08-13 22:49:06','2019-08-13 22:49:06'),(54,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[24]','删除权限操作','2019-08-13 22:50:10','2019-08-13 22:50:10'),(55,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[23]','删除权限操作','2019-08-13 22:50:16','2019-08-13 22:50:16'),(56,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[21]','删除权限操作','2019-08-13 22:50:22','2019-08-13 22:50:22'),(57,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[20]','删除权限操作','2019-08-13 22:50:42','2019-08-13 22:50:42'),(58,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,5,3,4,18,16,6,8,9,7,25,17,10,13,11,12,14,36,34,37,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-08-13 22:51:07','2019-08-13 22:51:07'),(59,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"/enroll/home\"}','保存权限操作','2019-08-17 10:27:55','2019-08-17 10:27:55'),(60,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"普通系统角色\"}','保存角色操作','2019-08-17 10:51:28','2019-08-17 10:51:28'),(61,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"普通系统角色\"}','保存角色操作','2019-08-17 10:51:33','2019-08-17 10:51:33'),(62,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}','保存角色操作','2019-08-17 10:52:04','2019-08-17 10:52:04'),(63,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"permissionIds\":\",14,37,35,36,34,\",\"roleCode\":\"assistant\",\"roleName\":\"助教\"}','保存角色操作','2019-08-17 10:53:16','2019-08-17 10:53:16'),(64,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"id\":34,\"parentId\":14,\"permissionCode\":\"student:home\",\"permissionName\":\"报名\",\"resourceType\":\"menu\",\"url\":\"/student/home\"}','保存权限操作','2019-08-17 11:16:26','2019-08-17 11:16:26'),(65,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"student:enroll\",\"permissionName\":\"新生报名\",\"resourceType\":\"menu\",\"url\":\"/student/enroll\"}','保存权限操作','2019-08-17 13:48:47','2019-08-17 13:48:47'),(66,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"#￥%……&*（（*NM《》？P{\",\"passWord\":\"444444\",\"roleId\":1,\"state\":1,\"userName\":\"admin\"}','添加用户操作','2019-08-20 21:20:48','2019-08-20 21:20:48'),(67,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"111111\",\"passWord\":\"111111\",\"roleId\":1,\"state\":1,\"userName\":\"111111\"}','添加用户操作','2019-08-20 21:21:13','2019-08-20 21:21:13'),(68,1,'admin','com.xieke.admin.web.UserController.delBatch','[11]','删除用户操作','2019-08-20 21:21:23','2019-08-20 21:21:23'),(69,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"11\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"yanhaojian\"}','添加用户操作','2019-10-01 11:08:28','2019-10-01 11:08:28'),(70,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}','保存角色操作','2019-10-01 13:40:07','2019-10-01 13:40:07'),(71,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":3,\"permissionIds\":\",14,34,\",\"roleCode\":\"assistant\",\"roleName\":\"助教\"}','保存角色操作','2019-10-01 13:40:18','2019-10-01 13:40:18'),(72,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,\",\"roleCode\":\"teacher\",\"roleName\":\"教师\"}','保存角色操作','2019-10-01 13:40:22','2019-10-01 13:40:22'),(73,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"id\":37,\"parentId\":14,\"permissionCode\":\"sys:manager\",\"permissionName\":\"管理\",\"resourceType\":\"menu\",\"url\":\"/manage/index\"}','保存权限操作','2019-10-01 13:43:39','2019-10-01 13:43:39'),(74,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":1,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}','保存权限操作','2019-10-01 14:37:36','2019-10-01 14:37:36'),(75,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[39]','删除权限操作','2019-10-01 14:38:44','2019-10-01 14:38:44'),(76,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}','保存权限操作','2019-10-01 14:39:06','2019-10-01 14:39:06'),(77,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,40,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-01 14:39:22','2019-10-01 14:39:22'),(78,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,40,37,35,38,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-01 14:39:43','2019-10-01 14:39:43'),(79,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-01 14:40:56','2019-10-01 14:40:56'),(80,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[40]','删除权限操作','2019-10-01 15:06:14','2019-10-01 15:06:14'),(81,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":1,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"班级列表\",\"resourceType\":\"menu\",\"url\":\"curriculum/list\"}','保存权限操作','2019-10-01 15:07:08','2019-10-01 15:07:08'),(82,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,41,6,8,9,7,25,17,10,11,12,13,2,5,3,4,14,34,37,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-01 15:07:35','2019-10-01 15:07:35'),(83,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[41]','删除权限操作','2019-10-01 15:10:11','2019-10-01 15:10:11'),(84,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"test\",\"passWord\":\"123456\",\"roleId\":1,\"state\":1,\"userName\":\"admin\"}','添加用户操作','2019-10-17 15:40:20','2019-10-17 15:40:20'),(85,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"test\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"admin\"}','添加用户操作','2019-10-17 15:40:43','2019-10-17 15:40:43'),(86,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"test2\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"test2\"}','添加用户操作','2019-10-17 15:41:14','2019-10-17 15:41:14'),(87,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":9,\"name\":\"主讲老师test\",\"roleId\":2,\"state\":1}','修改用户操作','2019-10-17 18:50:36','2019-10-17 18:50:36'),(88,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":13,\"name\":\"test2\",\"roleId\":3,\"state\":1}','修改用户操作','2019-10-17 19:08:34','2019-10-17 19:08:34'),(89,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"士大夫\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"admin\"}','添加用户操作','2019-10-17 19:15:55','2019-10-17 19:15:55'),(90,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"士大夫\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"fff\"}','添加用户操作','2019-10-17 19:16:11','2019-10-17 19:16:11'),(91,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":15,\"name\":\"士大夫\",\"roleId\":2,\"state\":1}','修改用户操作','2019-10-17 19:16:19','2019-10-17 19:16:19'),(92,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"士大夫给\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"ggg\"}','添加用户操作','2019-10-17 19:16:30','2019-10-17 19:16:30'),(93,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"是的地方\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"hhh\"}','添加用户操作','2019-10-17 19:16:40','2019-10-17 19:16:40'),(94,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"的风格\",\"passWord\":\"123456\",\"state\":1,\"userName\":\"jjj\"}','添加用户操作','2019-10-17 19:16:51','2019-10-17 19:16:51'),(95,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":16,\"name\":\"士大夫给\",\"roleId\":2,\"state\":1}','修改用户操作','2019-10-17 19:17:00','2019-10-17 19:17:00'),(96,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":17,\"name\":\"是的地方\",\"roleId\":2,\"state\":1}','修改用户操作','2019-10-17 19:17:04','2019-10-17 19:17:04'),(97,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":18,\"name\":\"的风格\",\"roleId\":2,\"state\":1}','修改用户操作','2019-10-17 19:17:08','2019-10-17 19:17:08'),(98,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"aaa\",\"passWord\":\"123456\",\"roleId\":2,\"state\":1,\"userName\":\"aaa\"}','添加用户操作','2019-10-17 19:17:21','2019-10-17 19:17:21'),(99,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"课程管理\",\"resourceType\":\"menu\",\"url\":\"/curriculum/list\"}','保存权限操作','2019-10-18 10:45:27','2019-10-18 10:45:27'),(100,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"classes:list\",\"permissionName\":\"班级管理\",\"resourceType\":\"menu\",\"url\":\"/classes/list\"}','保存权限操作','2019-10-18 10:46:36','2019-10-18 10:46:36'),(101,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"permissionIds\":\"\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}','保存角色操作','2019-10-18 10:47:20','2019-10-18 10:47:20'),(102,1,'admin','com.xieke.admin.web.UserController.add','{\"name\":\"w\",\"passWord\":\"123456\",\"roleId\":4,\"state\":1,\"userName\":\"w\"}','添加用户操作','2019-10-18 10:48:23','2019-10-18 10:48:23'),(103,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":14,\"permissionCode\":\"22\",\"permissionName\":\"11目录\",\"resourceType\":\"directory\",\"url\":\"\"}','保存权限操作','2019-10-18 10:54:48','2019-10-18 10:54:48'),(104,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[41]','删除权限操作','2019-10-18 11:00:32','2019-10-18 11:00:32'),(105,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":34,\"permissionCode\":\"student:enroll\",\"permissionName\":\"新生报名\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-10-18 11:02:22','2019-10-18 11:02:22'),(106,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[38]','删除权限操作','2019-10-18 11:02:31','2019-10-18 11:02:31'),(107,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":37,\"permissionCode\":\"curriculum:list\",\"permissionName\":\"课程管理\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-10-18 11:03:00','2019-10-18 11:03:00'),(108,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[39]','删除权限操作','2019-10-18 11:03:04','2019-10-18 11:03:04'),(109,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":37,\"permissionCode\":\"classes:list\",\"permissionName\":\"班级管理\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-10-18 11:03:54','2019-10-18 11:03:54'),(110,1,'admin','com.xieke.admin.web.PermissionController.delBatch','[40]','删除权限操作','2019-10-18 11:03:58','2019-10-18 11:03:58'),(111,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,3,4,5,18,16,6,9,7,8,25,17,10,12,13,11,14,36,34,42,37,44,43,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-18 11:04:09','2019-10-18 11:04:09'),(112,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,42,\",\"roleCode\":\"teacher\",\"roleName\":\"主讲老师\"}','保存角色操作','2019-10-18 11:04:21','2019-10-18 11:04:21'),(113,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":3,\"permissionIds\":\",14,34,42,\",\"roleCode\":\"assistant\",\"roleName\":\"助教老师\"}','保存角色操作','2019-10-18 11:04:27','2019-10-18 11:04:27'),(114,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":4,\"permissionIds\":\",14,37,43,\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}','保存角色操作','2019-10-18 11:09:28','2019-10-18 11:09:28'),(115,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":4,\"permissionIds\":\"\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}','保存角色操作','2019-10-18 11:12:01','2019-10-18 11:12:01'),(116,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":4,\"permissionIds\":\",14,37,43,\",\"roleCode\":\"无\",\"roleName\":\"无权限\"}','保存角色操作','2019-10-18 11:12:36','2019-10-18 11:12:36'),(117,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,3,4,5,18,16,6,9,7,8,25,17,10,12,13,11,14,36,34,42,37,44,43,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-10-18 11:31:31','2019-10-18 11:31:31'),(118,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":16,\"name\":\"士大夫给\",\"roleId\":3,\"state\":1}','修改用户操作','2019-10-18 11:43:47','2019-10-18 11:43:47'),(119,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":37,\"permissionCode\":\"order:list\",\"permissionName\":\"订单管理\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-11-22 14:50:39','2019-11-22 14:50:39'),(120,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,13,11,12,2,5,3,4,14,36,34,42,37,43,44,45,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-11-22 14:50:57','2019-11-22 14:50:57'),(121,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,18,16,6,8,9,7,25,17,10,13,11,12,2,5,3,4,14,36,34,42,37,43,44,45,35,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-11-22 15:06:05','2019-11-22 15:06:05'),(122,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,34,42,37,43,44,45,\",\"roleCode\":\"teacher\",\"roleName\":\"主讲老师\"}','保存角色操作','2019-11-22 15:06:24','2019-11-22 15:06:24'),(123,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":34,\"permissionCode\":\"continuebm:list\",\"permissionName\":\"续报\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-11-26 11:37:25','2019-11-26 11:37:25'),(124,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,25,17,10,12,13,11,2,4,5,3,18,16,6,9,7,8,14,37,45,43,44,35,36,34,46,42,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-11-26 11:37:44','2019-11-26 11:37:44'),(125,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":1,\"parentId\":34,\"permissionCode\":\"changeclass:list\",\"permissionName\":\"转班\",\"resourceType\":\"button\",\"url\":\"\"}','保存权限操作','2019-12-04 13:52:00','2019-12-04 13:52:00'),(126,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,25,17,10,13,11,12,2,5,3,4,18,16,6,8,9,7,14,37,43,44,45,35,36,34,46,42,47,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-12-04 13:52:12','2019-12-04 13:52:12'),(127,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":2,\"permissionIds\":\",14,37,43,44,45,35,36,34,46,42,47,\",\"roleCode\":\"teacher\",\"roleName\":\"主讲老师\"}','保存角色操作','2019-12-04 13:52:20','2019-12-04 13:52:20'),(128,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":0,\"id\":1,\"permissionIds\":\",1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,25,14,34,42,46,47,37,43,44,45,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-12-27 01:30:17','2019-12-27 01:30:17'),(129,1,'admin','com.xieke.admin.web.RoleController.save','{\"available\":1,\"id\":1,\"permissionIds\":\",1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,25,14,34,42,46,47,37,43,44,45,35,36,\",\"roleCode\":\"admin\",\"roleName\":\"超级管理员\"}','保存角色操作','2019-12-27 01:30:21','2019-12-27 01:30:21'),(130,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":9,\"name\":\"主讲老师test\",\"roleId\":2,\"state\":0}','修改用户操作','2019-12-27 01:51:37','2019-12-27 01:51:37'),(131,1,'admin','com.xieke.admin.web.UserController.edit','{\"id\":9,\"name\":\"主讲老师test\",\"roleId\":2,\"state\":1}','修改用户操作','2019-12-27 01:51:42','2019-12-27 01:51:42'),(132,1,'admin','com.xieke.admin.web.PermissionController.save','{\"available\":0,\"id\":35,\"parentId\":14,\"permissionCode\":\"student:info\",\"permissionName\":\"信息\",\"resourceType\":\"menu\",\"url\":\"tt\"}','保存权限操作','2019-12-30 21:36:07','2019-12-30 21:36:07');

/*Table structure for table `sys_login_log` */

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
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='登录日志';

/*Data for the table `sys_login_log` */

insert  into `sys_login_log`(`id`,`user_id`,`user_name`,`ip_address`,`geography_location`,`update_time`,`create_time`) values (71,1,'admin','127.0.0.1',NULL,'2019-08-13 20:26:01','2019-08-13 20:26:01'),(72,1,'admin','127.0.0.1',NULL,'2019-08-13 20:27:39','2019-08-13 20:27:39'),(73,1,'admin','127.0.0.1',NULL,'2019-08-13 20:35:15','2019-08-13 20:35:15'),(74,1,'admin','127.0.0.1',NULL,'2019-08-13 21:38:25','2019-08-13 21:38:25'),(75,1,'admin','127.0.0.1',NULL,'2019-08-13 22:12:38','2019-08-13 22:12:38'),(76,1,'admin','127.0.0.1',NULL,'2019-08-13 22:42:43','2019-08-13 22:42:43'),(77,1,'admin','127.0.0.1',NULL,'2019-08-13 22:44:01','2019-08-13 22:44:01'),(78,1,'admin','127.0.0.1',NULL,'2019-08-13 22:45:23','2019-08-13 22:45:23'),(79,1,'admin','127.0.0.1',NULL,'2019-08-13 22:50:54','2019-08-13 22:50:54'),(80,1,'admin','127.0.0.1',NULL,'2019-08-13 22:51:14','2019-08-13 22:51:14'),(81,1,'admin','127.0.0.1',NULL,'2019-08-17 09:43:22','2019-08-17 09:43:22'),(82,1,'admin','127.0.0.1',NULL,'2019-08-17 09:47:56','2019-08-17 09:47:56'),(83,1,'admin','127.0.0.1',NULL,'2019-08-17 10:26:50','2019-08-17 10:26:50'),(84,9,'test','127.0.0.1',NULL,'2019-08-17 10:50:26','2019-08-17 10:50:26'),(85,1,'admin','127.0.0.1',NULL,'2019-08-17 10:51:00','2019-08-17 10:51:00'),(86,9,'test','127.0.0.1',NULL,'2019-08-17 10:57:42','2019-08-17 10:57:42'),(87,1,'admin','127.0.0.1',NULL,'2019-08-17 11:02:21','2019-08-17 11:02:21'),(88,1,'admin','127.0.0.1',NULL,'2019-08-17 11:34:19','2019-08-17 11:34:19'),(89,1,'admin','127.0.0.1',NULL,'2019-08-17 13:37:11','2019-08-17 13:37:11'),(90,1,'admin','127.0.0.1',NULL,'2019-08-17 13:42:32','2019-08-17 13:42:32'),(91,1,'admin','127.0.0.1',NULL,'2019-08-17 14:18:41','2019-08-17 14:18:41'),(92,1,'admin','127.0.0.1',NULL,'2019-08-17 14:50:50','2019-08-17 14:50:50'),(93,1,'admin','127.0.0.1',NULL,'2019-08-17 15:24:05','2019-08-17 15:24:05'),(94,1,'admin','127.0.0.1',NULL,'2019-08-17 15:55:26','2019-08-17 15:55:26'),(95,1,'admin','127.0.0.1',NULL,'2019-08-17 16:26:02','2019-08-17 16:26:02'),(96,1,'admin','127.0.0.1',NULL,'2019-08-19 11:52:43','2019-08-19 11:52:43'),(97,1,'admin','127.0.0.1',NULL,'2019-08-19 15:25:36','2019-08-19 15:25:36'),(98,1,'admin','127.0.0.1',NULL,'2019-08-19 19:21:51','2019-08-19 19:21:51'),(99,1,'admin','127.0.0.1',NULL,'2019-08-20 21:02:14','2019-08-20 21:02:14'),(100,1,'admin','127.0.0.1',NULL,'2019-08-20 21:38:15','2019-08-20 21:38:15'),(101,1,'admin','127.0.0.1',NULL,'2019-08-24 17:19:13','2019-08-24 17:19:13'),(102,1,'admin','127.0.0.1',NULL,'2019-09-07 13:58:44','2019-09-07 13:58:44'),(103,1,'admin','127.0.0.1',NULL,'2019-09-07 14:15:31','2019-09-07 14:15:31'),(104,1,'admin','127.0.0.1',NULL,'2019-09-21 09:33:25','2019-09-21 09:33:25'),(105,1,'admin','127.0.0.1',NULL,'2019-09-21 11:04:10','2019-09-21 11:04:10'),(106,1,'admin','127.0.0.1',NULL,'2019-09-21 13:58:11','2019-09-21 13:58:11'),(107,1,'admin','127.0.0.1',NULL,'2019-10-01 10:20:20','2019-10-01 10:20:20'),(108,1,'admin','127.0.0.1',NULL,'2019-10-01 11:02:30','2019-10-01 11:02:30'),(109,1,'admin','127.0.0.1',NULL,'2019-10-01 11:08:01','2019-10-01 11:08:01'),(110,10,'yanhaojian','127.0.0.1',NULL,'2019-10-01 11:08:38','2019-10-01 11:08:38'),(111,10,'yanhaojian','127.0.0.1',NULL,'2019-10-01 13:38:00','2019-10-01 13:38:00'),(112,1,'admin','127.0.0.1',NULL,'2019-10-01 13:38:33','2019-10-01 13:38:33'),(113,10,'yanhaojian','127.0.0.1',NULL,'2019-10-01 13:40:33','2019-10-01 13:40:33'),(114,1,'admin','127.0.0.1',NULL,'2019-10-01 13:40:46','2019-10-01 13:40:46'),(115,10,'yanhaojian','127.0.0.1',NULL,'2019-10-01 13:41:22','2019-10-01 13:41:22'),(116,1,'admin','127.0.0.1',NULL,'2019-10-01 13:41:31','2019-10-01 13:41:31'),(117,1,'admin','127.0.0.1',NULL,'2019-10-01 13:48:04','2019-10-01 13:48:04'),(118,1,'admin','127.0.0.1',NULL,'2019-10-01 14:18:22','2019-10-01 14:18:22'),(119,1,'admin','127.0.0.1',NULL,'2019-10-01 14:20:51','2019-10-01 14:20:51'),(120,1,'admin','127.0.0.1',NULL,'2019-10-01 14:35:59','2019-10-01 14:35:59'),(121,1,'admin','127.0.0.1',NULL,'2019-10-01 14:37:50','2019-10-01 14:37:50'),(122,1,'admin','127.0.0.1',NULL,'2019-10-01 14:39:51','2019-10-01 14:39:51'),(123,1,'admin','127.0.0.1',NULL,'2019-10-01 14:41:23','2019-10-01 14:41:23'),(124,10,'yanhaojian','127.0.0.1',NULL,'2019-10-01 14:52:36','2019-10-01 14:52:36'),(125,1,'admin','127.0.0.1',NULL,'2019-10-01 14:52:44','2019-10-01 14:52:44'),(126,1,'admin','127.0.0.1',NULL,'2019-10-01 14:54:44','2019-10-01 14:54:44'),(127,1,'admin','127.0.0.1',NULL,'2019-10-01 15:07:42','2019-10-01 15:07:42'),(128,1,'admin','127.0.0.1',NULL,'2019-10-12 09:40:29','2019-10-12 09:40:29'),(129,1,'admin','127.0.0.1',NULL,'2019-10-12 11:14:22','2019-10-12 11:14:22'),(130,1,'admin','127.0.0.1',NULL,'2019-10-12 11:50:23','2019-10-12 11:50:23'),(131,1,'admin','127.0.0.1',NULL,'2019-10-12 12:00:38','2019-10-12 12:00:38'),(132,10,'yanhaojian','127.0.0.1',NULL,'2019-10-12 12:01:33','2019-10-12 12:01:33'),(133,1,'admin','127.0.0.1',NULL,'2019-10-12 12:02:18','2019-10-12 12:02:18'),(134,1,'admin','127.0.0.1',NULL,'2019-10-17 14:17:00','2019-10-17 14:17:00'),(135,1,'admin','127.0.0.1',NULL,'2019-10-17 14:55:49','2019-10-17 14:55:49'),(136,1,'admin','127.0.0.1',NULL,'2019-10-17 15:40:06','2019-10-17 15:40:06'),(137,1,'admin','127.0.0.1',NULL,'2019-10-17 16:17:17','2019-10-17 16:17:17'),(138,1,'admin','127.0.0.1',NULL,'2019-10-17 17:07:18','2019-10-17 17:07:18'),(139,1,'admin','127.0.0.1',NULL,'2019-10-17 17:47:10','2019-10-17 17:47:10'),(140,1,'admin','127.0.0.1',NULL,'2019-10-17 18:35:30','2019-10-17 18:35:30'),(141,1,'admin','127.0.0.1',NULL,'2019-10-17 19:08:34','2019-10-17 19:08:34'),(142,1,'admin','127.0.0.1',NULL,'2019-10-18 09:48:00','2019-10-18 09:48:00'),(143,1,'admin','127.0.0.1',NULL,'2019-10-18 10:28:05','2019-10-18 10:28:05'),(144,1,'admin','127.0.0.1',NULL,'2019-10-18 10:48:08','2019-10-18 10:48:08'),(145,20,'w','127.0.0.1',NULL,'2019-10-18 10:48:40','2019-10-18 10:48:40'),(146,1,'admin','127.0.0.1',NULL,'2019-10-18 10:51:24','2019-10-18 10:51:24'),(147,20,'w','127.0.0.1',NULL,'2019-10-18 11:07:26','2019-10-18 11:07:26'),(148,20,'w','127.0.0.1',NULL,'2019-10-18 11:09:53','2019-10-18 11:09:53'),(149,20,'w','127.0.0.1',NULL,'2019-10-18 11:12:22','2019-10-18 11:12:22'),(150,20,'w','127.0.0.1',NULL,'2019-10-18 11:12:45','2019-10-18 11:12:45'),(151,1,'admin','127.0.0.1',NULL,'2019-10-18 11:31:08','2019-10-18 11:31:08'),(152,1,'admin','127.0.0.1',NULL,'2019-10-18 11:31:51','2019-10-18 11:31:51'),(153,1,'admin','127.0.0.1',NULL,'2019-10-18 13:41:04','2019-10-18 13:41:04'),(154,1,'admin','127.0.0.1',NULL,'2019-10-18 14:11:07','2019-10-18 14:11:07'),(155,1,'admin','127.0.0.1',NULL,'2019-10-18 15:01:24','2019-10-18 15:01:24'),(156,1,'admin','127.0.0.1',NULL,'2019-10-18 15:46:24','2019-10-18 15:46:24'),(157,1,'admin','127.0.0.1',NULL,'2019-10-18 16:21:47','2019-10-18 16:21:47'),(158,1,'admin','127.0.0.1',NULL,'2019-10-18 16:51:56','2019-10-18 16:51:56'),(159,1,'admin','127.0.0.1',NULL,'2019-10-18 17:22:10','2019-10-18 17:22:10'),(160,1,'admin','127.0.0.1',NULL,'2019-10-19 10:03:58','2019-10-19 10:03:58'),(161,1,'admin','127.0.0.1',NULL,'2019-10-19 11:39:15','2019-10-19 11:39:15'),(162,1,'admin','127.0.0.1',NULL,'2019-10-19 14:35:35','2019-10-19 14:35:35'),(163,1,'admin','127.0.0.1',NULL,'2019-10-19 15:21:14','2019-10-19 15:21:14'),(164,1,'admin','127.0.0.1',NULL,'2019-11-17 09:28:14','2019-11-17 09:28:14'),(165,1,'admin','127.0.0.1',NULL,'2019-11-17 10:08:41','2019-11-17 10:08:41'),(166,1,'admin','127.0.0.1',NULL,'2019-11-17 13:33:27','2019-11-17 13:33:27'),(167,1,'admin','127.0.0.1',NULL,'2019-11-19 13:24:23','2019-11-19 13:24:23'),(168,1,'admin','127.0.0.1',NULL,'2019-11-19 14:57:05','2019-11-19 14:57:05'),(169,1,'admin','127.0.0.1',NULL,'2019-11-19 15:31:34','2019-11-19 15:31:34'),(170,1,'admin','127.0.0.1',NULL,'2019-11-19 16:26:37','2019-11-19 16:26:37'),(171,1,'admin','127.0.0.1',NULL,'2019-11-19 16:57:02','2019-11-19 16:57:02'),(172,1,'admin','127.0.0.1',NULL,'2019-11-19 17:28:11','2019-11-19 17:28:11'),(173,1,'admin','127.0.0.1',NULL,'2019-11-20 10:18:26','2019-11-20 10:18:26'),(174,1,'admin','127.0.0.1',NULL,'2019-11-20 10:52:10','2019-11-20 10:52:10'),(175,1,'admin','127.0.0.1',NULL,'2019-11-20 11:29:32','2019-11-20 11:29:32'),(176,1,'admin','127.0.0.1',NULL,'2019-11-20 13:15:14','2019-11-20 13:15:14'),(177,1,'admin','127.0.0.1',NULL,'2019-11-20 13:45:28','2019-11-20 13:45:28'),(178,1,'admin','127.0.0.1',NULL,'2019-11-20 14:16:48','2019-11-20 14:16:48'),(179,1,'admin','127.0.0.1',NULL,'2019-11-20 14:47:24','2019-11-20 14:47:24'),(180,1,'admin','127.0.0.1',NULL,'2019-11-20 15:17:31','2019-11-20 15:17:31'),(181,1,'admin','127.0.0.1',NULL,'2019-11-20 16:26:22','2019-11-20 16:26:22'),(182,1,'admin','127.0.0.1',NULL,'2019-11-20 18:31:25','2019-11-20 18:31:25'),(183,1,'admin','127.0.0.1',NULL,'2019-11-21 13:27:29','2019-11-21 13:27:29'),(184,1,'admin','127.0.0.1',NULL,'2019-11-21 13:57:48','2019-11-21 13:57:48'),(185,1,'admin','127.0.0.1',NULL,'2019-11-21 15:50:05','2019-11-21 15:50:05'),(186,1,'admin','127.0.0.1',NULL,'2019-11-21 16:21:46','2019-11-21 16:21:46'),(187,1,'admin','127.0.0.1',NULL,'2019-11-21 19:36:59','2019-11-21 19:36:59'),(188,1,'admin','127.0.0.1',NULL,'2019-11-22 14:26:00','2019-11-22 14:26:00'),(189,1,'admin','127.0.0.1',NULL,'2019-11-22 15:03:09','2019-11-22 15:03:09'),(190,1,'admin','127.0.0.1',NULL,'2019-11-22 15:03:26','2019-11-22 15:03:26'),(191,10,'yanhaojian','127.0.0.1',NULL,'2019-11-22 15:04:34','2019-11-22 15:04:34'),(192,10,'yanhaojian','127.0.0.1',NULL,'2019-11-22 15:05:41','2019-11-22 15:05:41'),(193,1,'admin','127.0.0.1',NULL,'2019-11-22 15:05:54','2019-11-22 15:05:54'),(194,1,'admin','127.0.0.1',NULL,'2019-11-22 15:39:23','2019-11-22 15:39:23'),(195,1,'admin','127.0.0.1',NULL,'2019-11-26 11:32:48','2019-11-26 11:32:48'),(196,1,'admin','127.0.0.1',NULL,'2019-11-26 17:01:39','2019-11-26 17:01:39'),(197,1,'admin','127.0.0.1',NULL,'2019-11-26 19:29:54','2019-11-26 19:29:54'),(198,1,'admin','127.0.0.1',NULL,'2019-11-27 16:40:24','2019-11-27 16:40:24'),(199,1,'admin','127.0.0.1',NULL,'2019-11-27 19:00:59','2019-11-27 19:00:59'),(200,1,'admin','127.0.0.1',NULL,'2019-11-27 19:33:57','2019-11-27 19:33:57'),(201,1,'admin','127.0.0.1',NULL,'2019-11-28 09:06:05','2019-11-28 09:06:05'),(202,1,'admin','127.0.0.1',NULL,'2019-11-28 14:50:00','2019-11-28 14:50:00'),(203,1,'admin','127.0.0.1',NULL,'2019-11-28 15:25:35','2019-11-28 15:25:35'),(204,1,'admin','127.0.0.1',NULL,'2019-11-28 16:21:21','2019-11-28 16:21:21'),(205,1,'admin','127.0.0.1',NULL,'2019-11-28 17:13:49','2019-11-28 17:13:49'),(206,1,'admin','127.0.0.1',NULL,'2019-11-28 18:12:18','2019-11-28 18:12:18'),(207,1,'admin','127.0.0.1',NULL,'2019-11-28 18:42:42','2019-11-28 18:42:42'),(208,1,'admin','127.0.0.1',NULL,'2019-11-28 19:12:45','2019-11-28 19:12:45'),(209,1,'admin','127.0.0.1',NULL,'2019-11-28 19:51:13','2019-11-28 19:51:13'),(210,1,'admin','127.0.0.1',NULL,'2019-11-28 20:21:24','2019-11-28 20:21:24'),(211,1,'admin','127.0.0.1',NULL,'2019-11-29 15:23:50','2019-11-29 15:23:50'),(212,1,'admin','127.0.0.1',NULL,'2019-11-29 16:05:06','2019-11-29 16:05:06'),(213,1,'admin','127.0.0.1',NULL,'2019-11-29 16:38:34','2019-11-29 16:38:34'),(214,1,'admin','127.0.0.1',NULL,'2019-11-29 17:15:03','2019-11-29 17:15:03'),(215,1,'admin','127.0.0.1',NULL,'2019-12-04 13:32:59','2019-12-04 13:32:59'),(216,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-15 11:53:55','2019-12-15 11:53:55'),(217,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-21 23:03:39','2019-12-21 23:03:39'),(218,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-21 23:33:47','2019-12-21 23:33:47'),(219,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-21 23:46:19','2019-12-21 23:46:19'),(220,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-21 23:50:35','2019-12-21 23:50:35'),(221,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-22 17:00:03','2019-12-22 17:00:03'),(222,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-22 17:48:00','2019-12-22 17:48:00'),(223,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-23 21:04:40','2019-12-23 21:04:40'),(224,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-23 21:48:32','2019-12-23 21:48:32'),(225,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-24 22:42:57','2019-12-24 22:42:57'),(226,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-24 23:13:36','2019-12-24 23:13:36'),(227,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-24 23:45:17','2019-12-24 23:45:17'),(228,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-26 22:41:16','2019-12-26 22:41:16'),(229,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-26 23:48:38','2019-12-26 23:48:38'),(230,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 00:18:40','2019-12-27 00:18:40'),(231,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 00:57:42','2019-12-27 00:57:42'),(232,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 01:27:44','2019-12-27 01:27:44'),(233,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 01:51:06','2019-12-27 01:51:06'),(234,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 02:21:12','2019-12-27 02:21:12'),(235,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-27 02:58:29','2019-12-27 02:58:29'),(236,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-28 16:17:48','2019-12-28 16:17:48'),(237,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-29 12:12:19','2019-12-29 12:12:19'),(238,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-30 21:11:37','2019-12-30 21:11:37'),(239,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-30 21:41:45','2019-12-30 21:41:45'),(240,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-30 21:42:26','2019-12-30 21:42:26'),(241,1,'admin','0:0:0:0:0:0:0:1',NULL,'2019-12-30 21:48:44','2019-12-30 21:48:44'),(242,1,'admin','0:0:0:0:0:0:0:1',NULL,'2020-01-01 16:22:36','2020-01-01 16:22:36'),(243,1,'admin','0:0:0:0:0:0:0:1',NULL,'2020-01-01 16:57:53','2020-01-01 16:57:53');

/*Table structure for table `sys_permission` */

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='系统权限';

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`available`,`permission_name`,`parent_id`,`parent_ids`,`permission_code`,`resource_type`,`url`,`update_time`,`create_time`) values (1,1,'系统管理',0,'0','system','top_directory',NULL,'2018-07-10 11:24:48','2018-07-10 11:24:48'),(2,1,'用户管理',1,'0/1','user:view','menu','/user/list','2018-07-10 11:24:48','2018-07-10 11:24:48'),(3,1,'添加',2,'0/1/2','user:add','button','','2018-07-10 11:25:40','2018-07-10 11:25:40'),(4,1,'删除',2,'0/1/2','user:del','button','','2018-07-10 11:27:10','2018-07-10 11:27:10'),(5,1,'编辑',2,'0/1/2','user:edit','button','','2018-11-17 14:54:52','2018-07-10 11:27:36'),(6,1,'角色管理',1,'0/1','role:view','menu','/role/list','2018-08-04 09:38:44','2018-08-04 09:38:44'),(7,1,'添加',6,'0/1/6','role:add','button','','2018-08-04 09:42:05','2018-08-04 09:42:05'),(8,1,'删除',6,'0/1/6','role:del','button','','2018-11-17 15:01:41','2018-08-04 09:43:26'),(9,1,'编辑',6,'0/1/6','role:edit','button','','2018-08-04 09:46:01','2018-08-04 09:46:01'),(10,1,'权限管理',1,'0/1','permission:view','menu','/permission/list','2018-08-04 09:48:57','2018-08-04 09:48:57'),(11,1,'添加',10,'0/1/10','permission:add','button','','2018-08-04 09:50:50','2018-08-04 09:50:50'),(12,1,'删除',10,'0/1/10','permission:del','button','','2018-08-04 09:50:50','2018-08-04 09:50:50'),(13,1,'编辑',10,'0/1/10','permission:edit','button','','2018-08-23 11:33:34','2018-08-23 11:33:34'),(14,1,'三问数学',0,'0','normal','top_directory',NULL,'2019-08-13 22:43:53','2018-07-10 11:24:48'),(16,1,'登录日志',1,'0/1','loginLog:view','menu','/loginLog/list','2018-10-01 12:25:02','2018-10-01 12:25:02'),(17,1,'系统日志',1,'0/1','log:view','menu','/log/list','2018-10-27 16:28:50','2018-10-27 16:28:50'),(18,1,'图标管理',1,'0/1','icon:view','menu','/icon/icons','2018-10-01 12:48:42','2018-08-23 13:15:51'),(25,1,'代码生成',1,'0/1','code:view','menu','/code/list','2018-12-25 15:53:54','2018-12-25 15:53:54'),(34,1,'报名',14,'0/14','student:home','menu','/student/home','2019-08-17 11:16:26','2019-08-13 22:41:29'),(35,0,'信息',14,'0/14','student:info','menu','tt','2019-12-30 21:36:07','2019-08-13 22:46:30'),(36,1,'统计',14,'0/14','student:statistics','menu','/statistics/home','2019-08-13 22:47:38','2019-08-13 22:47:38'),(37,1,'管理',14,'0/14','sys:manager','menu','/manage/index','2019-10-01 13:43:39','2019-08-13 22:48:47'),(42,1,'新生报名',34,'0/14/34','student:enroll','button','','2019-10-18 11:02:22','2019-10-18 11:02:22'),(43,1,'课程管理',37,'0/14/37','curriculum:list','button','','2019-10-18 11:03:00','2019-10-18 11:03:00'),(44,1,'班级管理',37,'0/14/37','classes:list','button','','2019-10-18 11:03:54','2019-10-18 11:03:54'),(45,1,'订单管理',37,'0/14/37','order:list','button','','2019-11-22 14:50:39','2019-11-22 14:50:39'),(46,1,'续报',34,'0/14/34','continuebm:list','button','','2019-11-26 11:37:26','2019-11-26 11:37:26'),(47,1,'转班',34,'0/14/34','changeclass:list','button','','2019-12-04 13:52:00','2019-12-04 13:52:00');

/*Table structure for table `sys_role` */

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

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`permission_ids`,`available`,`role_name`,`role_code`,`update_time`,`create_time`) values (1,',1,2,3,4,5,6,7,8,9,10,11,12,13,16,17,18,25,14,34,42,46,47,37,43,44,45,35,36,',1,'超级管理员','admin','2019-12-27 01:30:21','2018-07-10 11:19:49'),(2,',14,37,43,44,45,35,36,34,46,42,47,',1,'主讲老师','teacher','2019-12-04 13:52:21','2018-07-10 11:19:49'),(3,',14,34,42,',1,'助教老师','assistant','2019-10-18 11:04:27','2019-08-17 10:53:16'),(4,',14,37,43,',1,'无权限','无','2019-10-18 11:12:36','2019-10-18 10:47:20');

/*Table structure for table `sys_user` */

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

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`role_id`,`name`,`user_name`,`pass_word`,`salt`,`state`,`update_time`,`create_time`) values (1,1,'超级管理员','admin','90de4365c537fa959193d13ad8d07665','XZUY77Pq41M6jaGeR2q1yMaPOrmemy6A',1,'2018-12-06 17:19:35','2018-07-10 11:16:24'),(9,2,'主讲老师test','test','f58cb4cbc689ace5456577d913c68bfd','tPKGoMIgl6y16wWaoaqXyRS2N3WzmsNo',1,'2019-12-27 01:51:42','2018-08-11 15:31:26'),(10,2,'11','yanhaojian','69469098db5efbcf6dc6e407cfc664a9','V525emNKpNunvv6ZELi8myEezPgPVbQ2',1,'2019-10-01 11:08:28','2019-10-01 11:08:28'),(13,3,'test2','test2','6843803b3a7d19d425e4c67adeb6fd61','l9mhF89amJtOJthe9rauAqYxpLWP6K6C',1,'2019-10-17 19:08:34','2019-10-17 15:41:14'),(15,2,'士大夫','fff','c6c29acdffe5deef030334eba5e50fbb','Mn5Wd5z2ZV4moOOVtBU9Nk0fGxjlZX4b',1,'2019-10-17 19:16:19','2019-10-17 19:16:11'),(16,3,'士大夫给','ggg','edf402ee6f786591855853adf7e6ed0a','rulX4gsQHJjHN9lkwLuGGB2I7InMVzbD',1,'2019-10-18 11:43:47','2019-10-17 19:16:30'),(17,2,'是的地方','hhh','45b80b9ca1fdb59c5d622fd2fbb4f1a7','AiX6OEfrA2kSc4tNG90hBWRbeBX2fUQV',1,'2019-10-17 19:17:04','2019-10-17 19:16:40'),(18,2,'的风格','jjj','b515e0badaf8d2529e9212191a9de977','fmQCU9zcv9DkpO3DPSAn4sHyzJQOGSWN',1,'2019-10-17 19:17:09','2019-10-17 19:16:51'),(19,2,'aaa','aaa','c9af4aef5bd9739b57635bea132bfacf','8Fht43ZYGIVuKakCCe6wae1IVnn2oQsH',1,'2019-10-17 19:17:21','2019-10-17 19:17:21'),(20,4,'w','w','995bc5b5b69259a1f1bd86621c7ca7e0','StIXBKYuYBstlPsTB2ER2jcXWAuIZSxA',1,'2019-10-18 10:48:23','2019-10-18 10:48:23');

/*Table structure for table `t_classes` */

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

/*Data for the table `t_classes` */

insert  into `t_classes`(`FID`,`FCurriculumID`,`FClassName`,`FTeacherID`,`FTeacherName`,`FAssistantTeacherID`,`FAssistantTeacherName`,`FClassType`,`FClassLevel`,`FDeleteStatus`,`FCreateTime`,`FRemark`) values (1,1,'小老虎班',9,'主讲老师test',13,'test2',0,2,0,'2019-10-17 19:25:06',''),(2,3,'阿斯蒂',15,'主讲老师test',13,'test2',1,1,0,'2019-10-18 10:35:25',''),(3,5,'阿斯蒂222',9,'主讲老师test',13,'test2',1,4,0,'2019-10-18 11:37:33',''),(4,1,'阿斯蒂222',9,'主讲老师test',13,'test2',1,4,0,'2019-10-18 11:40:06',''),(5,4,'444',10,'主讲老师test',13,'test2',0,1,0,'2019-10-18 11:41:24',''),(6,3,'急急急',9,'主讲老师test',16,'士大夫给',0,1,0,'2019-10-18 11:44:16',''),(7,3,'让人111222',10,'11',16,'士大夫给',1,1,0,'2019-10-18 11:55:09',''),(8,6,'yhj',9,'主讲老师test',16,'士大夫给',1,4,0,'2019-11-17 10:11:24',''),(9,7,'颜浩健班级',9,'主讲老师test',13,'test2',0,2,0,'2019-11-21 14:01:06','');

/*Table structure for table `t_curriculum` */

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_curriculum` */

insert  into `t_curriculum`(`FID`,`FCurriculumName`,`FSemester`,`FDate`,`FYear`,`FGrade`,`FClassTime`,`FPrice`,`FDeleteStatus`,`FCreateTime`,`FRemark`) values (1,'课程数学',1,2,2019,1,55,'5.00',0,'2019-10-17 15:33:07',''),(2,'课程语文',2,1,2019,1,111,'222.00',1,'2019-10-17 15:33:45',''),(3,'课程科学',3,1,2019,1,44,'55.00',0,'2019-10-17 15:35:42',''),(4,'课程英语',1,1,2019,1,12,'3333.00',0,'2019-10-17 15:45:13',''),(5,'课程体育',2,3,2019,1,44,'4444.00',0,'2019-10-17 15:47:04',''),(6,'承测',1,1,2019,1,50,'50000.00',0,'2019-11-17 10:10:24',''),(7,'颜浩健课程',1,4,2019,1,8888,'88.00',0,'2019-11-21 14:00:50',''),(8,'test',2,7,2020,2,66,'888.00',0,'2020-01-01 17:03:41','');

/*Table structure for table `t_order` */

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_order` */

insert  into `t_order`(`FID`,`FStudentID`,`FStudentName`,`FSex`,`FPhoneOne`,`FPhoneOneRemark`,`FPhoneTwo`,`FPhoneTwoRemark`,`FClassID`,`FClassName`,`FTeacherID`,`FTeacherName`,`FAssistantTeacherID`,`FAssistantTeacherName`,`FClassType`,`FClassLevel`,`FCurriculumID`,`FCurriculumName`,`FSemester`,`FDate`,`FYear`,`FGrade`,`FClassTime`,`FPrice`,`FDiscountAmount`,`FDiscountRemark`,`FPayableAmount`,`FPaidAmount`,`FOrderStatus`,`FCreatorID`,`FCreatorName`,`FCreateTime`,`FRemark`,`FDeleted`) values (14,20,'111111111',0,'11111111','','','',5,'444',10,'主讲老师test',13,'test2',0,0,4,'课程英语',0,1,2019,0,12,'3333.00','1111.00','金额3333 优惠1111 预缴222 欠费2000','2222.00','2022.00',0,1,'超级管理员','2019-11-27 19:44:43','','\0'),(15,21,'颜浩健',0,'18258289618','','','',8,'yhj',9,'主讲老师test',16,'士大夫给',1,4,6,'承测',1,1,2019,0,50,'50000.00','20000.00','金额50000  优惠20000 预缴16000 欠费14000','30000.00','16000.00',5,1,'超级管理员','2019-11-28 20:22:16','','\0'),(16,22,'测试',0,'123123','','','',8,'yhj',9,'主讲老师test',16,'士大夫给',1,4,6,'承测',1,1,2019,0,50,'50000.00','11111.00','3333','38889.00','42222.00',5,1,'超级管理员','2019-11-29 16:56:22','','\0'),(17,22,'测试',0,'123123','','','',7,'让人111222',10,'11',16,'士大夫给',1,1,3,'课程科学',0,1,2019,0,44,'55.00','200.00','说明22','-145.00','99999.00',5,1,'超级管理员','2019-12-15 11:23:12','','\0'),(18,21,'颜浩健',0,'18258289618','','','',1,'小老虎班',9,'主讲老师test',13,'test2',0,0,1,'课程数学',0,0,2019,0,55,'5.00','22.00','说明21','-17.00','99999.00',0,1,'超级管理员','2019-12-15 11:35:20','','\0'),(19,20,'111111111',0,'11111111','','','',1,'小老虎班',9,'主讲老师test',13,'test2',0,0,1,'课程数学',0,0,2019,0,55,'5.00','0.00','121212','5.00','1212.00',0,1,'超级管理员','2019-12-22 17:30:00','','\0'),(20,20,'111111111',0,'11111111','','','',2,'阿斯蒂',15,'主讲老师test',13,'test2',1,1,3,'课程科学',0,1,2019,0,44,'55.00','0.00','0','55.00','100.00',0,1,'超级管理员','2019-12-27 02:25:35','','\0'),(21,25,'admin',1,'+15652215707','','','',1,'小老虎班',9,'主讲老师test',13,'test2',0,0,1,'课程数学',0,0,2019,0,55,'5.00','0.00','test','5.00','100.00',0,1,'超级管理员','2019-12-30 21:25:26','','\0');

/*Table structure for table `t_pay_record` */

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_pay_record` */

insert  into `t_pay_record`(`FID`,`FOrderID`,`FPayType`,`FPayAmount`,`FToller`,`FCreateTime`,`FRemark`,`FRecordType`) values (11,14,0,'222.00','颜','2019-11-27 19:44:43','',NULL),(12,14,1,'800.00','语言色色','2019-11-28 20:08:27','',NULL),(13,14,0,'100.00','颜','2019-11-28 20:13:08','',NULL),(14,14,0,'800.00','颜浩健','2019-11-28 20:20:31','',NULL),(15,15,0,'16000.00','测试','2019-11-28 20:22:16','',NULL),(16,14,0,'100.00','t ','2019-11-28 20:47:21','',NULL),(17,16,NULL,'22222.00','阿萨','2019-11-29 16:56:22','',0),(18,16,0,'10000.00','gf','2019-11-29 16:59:52','',0),(19,16,0,'10000.00','方法','2019-11-29 17:20:18','',0),(20,16,5,'42222.00','取消订单退款','2019-12-15 11:23:12',NULL,1),(21,17,0,'99999.00','32','2019-12-15 11:23:12','',0),(22,15,5,'16000.00','取消订单退款','2019-12-15 11:35:20',NULL,1),(23,18,0,'99999.00','22','2019-12-15 11:35:20','',0),(24,19,0,'1212.00','121','2019-12-22 17:30:00','121',0),(25,17,5,'99999.00','取消订单退款','2019-12-22 17:51:11',NULL,1),(26,20,0,'100.00','asd','2019-12-27 02:25:35','',0),(27,21,0,'100.00','zbl','2019-12-30 21:25:26','',0);

/*Table structure for table `t_student` */

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_student` */

insert  into `t_student`(`FID`,`FStudentName`,`FSex`,`FPhoneOne`,`FPhoneOneRemark`,`FPhoneTwo`,`FPhoneTwoRemark`,`FSchool`,`FGrade`,`FEntranceYear`,`FDeleteStatus`,`FCreateTime`,`FRemark`,`FAddress`,`FBirthday`) values (6,'颜浩ijan',0,'18258289618','','','','第一小学',1,NULL,0,'2019-11-21 16:19:44','','优盘时代',''),(7,'是的啊是',0,'12312312','','','','31231231',1,NULL,0,'2019-11-21 16:22:06','','',''),(9,'ddfsf',1,'12312','','','','3123123',1,NULL,0,'2019-11-21 16:25:17','','',''),(10,'李四',0,'18258289618','','','','学校xxxxxx',4,2016,0,'2019-11-21 16:33:59','备注','我的家庭组织','我的生日'),(12,'是否',0,'561432356987','','','','地方',2,NULL,0,'2019-11-22 15:04:03','','是德国是德国发电公司豆腐干山豆根副食店光辐射大概第三个',''),(13,'梵蒂冈的',1,'12312312','','','','121',5,NULL,0,'2019-11-26 11:33:18','','',''),(14,'颜颜',0,'1778899098','','','','大多数方式地方士大夫是',1,NULL,0,'2019-11-27 19:01:54','','的方法是打发士大夫似懂非懂发',''),(15,'我的测试',0,'11111111111111111','','','','2222222222222222222',1,NULL,0,'2019-11-27 19:12:12','44444444444444','3333333333333333',''),(16,'测试李四',0,'2222222222222','','','','233333333333333',1,NULL,0,'2019-11-27 19:25:47','','333333333333333333333333333',''),(17,'五',0,'55555555555','','','','555555555555555555555555555',1,NULL,0,'2019-11-27 19:34:20','55555555555555555','',''),(18,'66666测试',0,'66666666666666666','','','','66666666666666666666',1,NULL,0,'2019-11-27 19:37:07','','',''),(19,'888测试',0,'8888888888','','','','88888888888888',1,NULL,0,'2019-11-27 19:39:18','','8888888888888888888888',''),(20,'111111111',0,'11111111','','','','111111111',1,NULL,0,'2019-11-27 19:44:43','1111111111111','',''),(21,'颜浩健',0,'18258289618','','','','学军中学',1,NULL,0,'2019-11-28 20:22:16','','西湖区瓶水细节80号 优盘时代1好了',''),(22,'测试',0,'123123','','','','123123123123123',1,NULL,0,'2019-11-29 16:25:15','','',''),(23,'测试',0,'12314234234','','','','23123123123',1,NULL,0,'2019-11-29 16:28:13','','',''),(25,'admin',0,'+15652215707','','','','test',1,NULL,0,'2019-12-30 21:25:23','','','');

/*Table structure for table `t_student_class_relation` */

DROP TABLE IF EXISTS `t_student_class_relation`;

CREATE TABLE `t_student_class_relation` (
  `FStudentID` int(11) NOT NULL COMMENT '学生ID',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_student_class_relation` */

insert  into `t_student_class_relation`(`FStudentID`,`FClassID`) values (20,5),(21,8),(22,8),(22,7),(21,1),(20,1),(20,2),(25,1);

/*Table structure for table `t_test` */

DROP TABLE IF EXISTS `t_test`;

CREATE TABLE `t_test` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FTestName` varchar(50) DEFAULT NULL COMMENT '考试名称',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_test` */

insert  into `t_test`(`FID`,`FTestName`,`FClassID`,`FCreateTime`,`FRemark`) values (1,'测试11189872121',2,'2019-12-23 21:10:54','9'),(3,'测试112311111',1,'2019-12-23 21:12:57','00'),(4,'测试1',1,'2019-12-24 22:48:44','12'),(5,'测试11',3,'2019-12-24 22:49:22','2121'),(6,'ss',4,'2019-12-24 23:14:07','1'),(7,'测试112311111',2,'2019-12-24 23:26:40',''),(8,'1',4,'2019-12-24 23:32:02','1'),(9,'3',4,'2019-12-24 23:32:07','3'),(10,'4',4,'2019-12-24 23:32:09','999'),(11,'6',4,'2019-12-24 23:32:12',''),(12,'测试',5,'2019-12-26 22:47:36','1');

/*Table structure for table `t_test_result` */

DROP TABLE IF EXISTS `t_test_result`;

CREATE TABLE `t_test_result` (
  `FID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `FStudentID` int(11) DEFAULT NULL COMMENT '学生ID',
  `FStudentName` varchar(50) DEFAULT NULL COMMENT '学生姓名',
  `FTestID` int(11) DEFAULT NULL COMMENT '考试ID',
  `FTestName` varchar(50) DEFAULT NULL COMMENT '考试名称',
  `FClassID` int(11) DEFAULT NULL COMMENT '班级ID',
  `FClassName` varchar(50) DEFAULT NULL COMMENT '班级名称',
  `FScore` int(11) DEFAULT NULL COMMENT '分数',
  `FCreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `FRemark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `t_test_result` */

insert  into `t_test_result`(`FID`,`FStudentID`,`FStudentName`,`FTestID`,`FTestName`,`FClassID`,`FClassName`,`FScore`,`FCreateTime`,`FRemark`) values (1,20,'111111111',12,'测试',5,'444',12,'2019-12-28 16:32:51',''),(2,20,'111111111',3,'测试112311111',1,'小老虎班',10,'2019-12-28 16:35:08','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
