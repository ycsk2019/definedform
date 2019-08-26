/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : defined_form

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 26/08/2019 11:33:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for form_fields
-- ----------------------------
DROP TABLE IF EXISTS `form_fields`;
CREATE TABLE `form_fields`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控件类型',
  `form_fields_info` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '表单控件信息(json)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_formats
-- ----------------------------
DROP TABLE IF EXISTS `form_formats`;
CREATE TABLE `form_formats`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `form_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单名称',
  `form_name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单中文名',
  `form_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单编号',
  `field_info` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '字段信息(json)',
  `process_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的工作流ID',
  `company_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的公司ID',
  `is_new` tinyint(4) NOT NULL DEFAULT 2 COMMENT '是否是该节点最新表单，1是，2否',
  `version` int(11) NOT NULL DEFAULT 1 COMMENT '版本号，从1开始的整数，每次新增时是1，更新时增加1',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '说明',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_list_heads
-- ----------------------------
DROP TABLE IF EXISTS `form_list_heads`;
CREATE TABLE `form_list_heads`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的菜单ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中文名',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_lists
-- ----------------------------
DROP TABLE IF EXISTS `form_lists`;
CREATE TABLE `form_lists`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的菜单ID',
  `form_name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '列表项名称',
  `field_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关联的控件编号',
  `field_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关联的控件名称',
  `form_format_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的表单模板ID',
  `item_order` int(11) NOT NULL DEFAULT 0 COMMENT '列表项显示顺序',
  `system_field_id` int(11) NOT NULL DEFAULT 0 COMMENT '如果为系统字段，则表示关联的系统字段ID',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'form' COMMENT '类型，分为系统字段system，表单字段form',
  `searchable` tinyint(4) NOT NULL DEFAULT 2 COMMENT '是否为搜索条件，1是2否',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_logs
-- ----------------------------
DROP TABLE IF EXISTS `form_logs`;
CREATE TABLE `form_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `form_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单名称',
  `form_name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单中文名',
  `form_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '表单编号',
  `form_info` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '表单信息(json)',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的订单ID',
  `form_format_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的表单设计ID',
  `menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联的菜单ID',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_menu_process
-- ----------------------------
DROP TABLE IF EXISTS `form_menu_process`;
CREATE TABLE `form_menu_process`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `form_menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '菜单ID',
  `process_id` int(11) NOT NULL COMMENT '工作流ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_menus
-- ----------------------------
DROP TABLE IF EXISTS `form_menus`;
CREATE TABLE `form_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '菜单类别：1工作台，2查看列表',
  `workflow_info` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '关联的工作流节点信息(json)',
  `level` int(11) NOT NULL DEFAULT 1 COMMENT '菜单层级，从1级递增',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父菜单ID，顶级为0',
  `deleted_at` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for form_system_fields
-- ----------------------------
DROP TABLE IF EXISTS `form_system_fields`;
CREATE TABLE `form_system_fields`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `system_field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '系统字段名称',
  `system_field_name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '系统字段中文名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
