/*
 Navicat Premium Data Transfer

 Source Server         : RDS_TEST_UAT
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : uat.mysql.ifcar99.com:3306
 Source Schema         : finance

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 23/09/2019 16:24:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for process
-- ----------------------------
DROP TABLE IF EXISTS `process`;
CREATE TABLE `process`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '流程名称',
  `company_id` int(11) NOT NULL DEFAULT 0 COMMENT '公司ID',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for process_instance
-- ----------------------------
DROP TABLE IF EXISTS `process_instance`;
CREATE TABLE `process_instance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL DEFAULT 0 COMMENT '流程ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '流程名称',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1启动 2完成 3停止',
  `is_completed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1已完成，0未完成',
  `is_stoped` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1已停止，0未停止',
  `complete_at` timestamp(0) NULL DEFAULT NULL COMMENT '完成时间',
  `stop_at` timestamp(0) NULL DEFAULT NULL COMMENT '结束时间',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `process_id`(`process_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for process_node
-- ----------------------------
DROP TABLE IF EXISTS `process_node`;
CREATE TABLE `process_node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL DEFAULT 0 COMMENT '流程ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `node_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'event,task,gateway中的一个',
  `node_id` int(11) NOT NULL COMMENT '对应各表中的ID',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '上个节点为网关时，用于记录网关流向的条件',
  `sort` int(11) NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wap_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'H5对应流程名称',
  `wap_line_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'H5对应时间线流程名称',
  `need_lock` tinyint(4) NOT NULL DEFAULT 2 COMMENT '是否需要认领才能完成，1需要，2不需要',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流程节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for process_node_instance
-- ----------------------------
DROP TABLE IF EXISTS `process_node_instance`;
CREATE TABLE `process_node_instance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL DEFAULT 0 COMMENT '流程ID',
  `process_instance_id` int(11) NOT NULL DEFAULT 0 COMMENT '开始人ID',
  `node_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1启动 2完成 3停止',
  `is_completed` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1已完成，0未完成',
  `is_stoped` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1已停止，0未停止',
  `is_locked` int(11) NOT NULL DEFAULT 0 COMMENT '>0表示被这个id的用户占用，=0表示可用',
  `complete_at` timestamp(0) NULL DEFAULT NULL COMMENT '完成时间',
  `stop_at` timestamp(0) NULL DEFAULT NULL COMMENT '结束时间',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_process_instance_id`(`process_instance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '节点状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for process_node_link
-- ----------------------------
DROP TABLE IF EXISTS `process_node_link`;
CREATE TABLE `process_node_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL DEFAULT 0,
  `current_id` int(11) NOT NULL DEFAULT 0 COMMENT '当前任务进度ID',
  `prev_id` int(11) NOT NULL DEFAULT 0 COMMENT '前置任务的ID',
  `next_id` int(11) NOT NULL DEFAULT 0 COMMENT '下一个任务进度ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for process_task
-- ----------------------------
DROP TABLE IF EXISTS `process_task`;
CREATE TABLE `process_task`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `process_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '进程id',
  `process_instance_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '任务实例id',
  `node_instance_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '任务id',
  `node_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '节点id',
  `node_tag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '节点标记 ',
  `order_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务实例id',
  `process_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '流程名',
  `node_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务节点名',
  `status` tinyint(3) NOT NULL COMMENT '进程状态 1启动 2完成 3停止',
  `is_completed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '完成状态 1:已完成 0:未完成',
  `is_locked` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否被索认领 1=认领 0=未认领',
  `trade_status` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '对应trade表订单状态',
  `admin_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作该过程的用户',
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '公司id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=抵押 2=贷后',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `option` tinyint(4) NOT NULL DEFAULT 0 COMMENT '条件判断标识，1标识成功，2标识失败，0标识无判断',
  `last_option` tinyint(4) NOT NULL COMMENT '上一次条件判断标识，1标识成功，2标识失败，0标识无判断',
  `wap_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'H5流程状态名称',
  `wap_line_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'H5流程时间线状态名称',
  `completed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '完成任务时间',
  `claimed_at` timestamp(0) NOT NULL COMMENT '认领时间',
  `stopped_at` timestamp(0) NOT NULL COMMENT '任务暂停时间',
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_id`(`order_id`) USING BTREE,
  INDEX `node_tag`(`node_tag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单流程状态表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
