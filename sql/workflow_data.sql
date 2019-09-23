/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 23/09/2019 16:32:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of process
-- ----------------------------
INSERT INTO `process` VALUES (1, '融资租赁', 1, 1);
INSERT INTO `process` VALUES (2, '工作流2', 2, 1);
INSERT INTO `process` VALUES (3, '工作流3', 3, 1);

-- ----------------------------
-- Records of process_node
-- ----------------------------
INSERT INTO `process_node` VALUES (1, 1, '流程开始', 'event', 1, '', 1, NULL, '流程开始', '提交贷款申请 ', 2);
INSERT INTO `process_node` VALUES (2, 1, '客户提交购车意向', 'task', 2, '', 2, NULL, '处理中', '补充资料', 2);
INSERT INTO `process_node` VALUES (3, 1, '业务员修改订单', 'task', 3, '$option_4 == 2', 3, NULL, '处理中', '补充资料', 2);
INSERT INTO `process_node` VALUES (4, 1, '客户确认订单', 'task', 4, '', 4, NULL, '待确认订单', '确认资料', 2);
INSERT INTO `process_node` VALUES (5, 1, '客户确认订单是否通过', 'gateway', 5, '', 5, NULL, '待确认订单', '确认资料', 2);
INSERT INTO `process_node` VALUES (6, 1, '流程中止', 'task', 6, '$option_7 == 2 || $option_9 == 2 || $option_11 == 2', 6, NULL, '已拒件', '已拒件', 2);
INSERT INTO `process_node` VALUES (7, 1, '金融专员1审', 'task', 7, '$option_4 == 1', 7, NULL, '风控审核中', '风控审核', 1);
INSERT INTO `process_node` VALUES (8, 1, '金融专员1审是否通过', 'gateway', 8, '', 8, NULL, '风控审核中', '风控审核', 2);
INSERT INTO `process_node` VALUES (9, 1, '金融专员2审', 'task', 9, '$option_7 == 1', 9, NULL, '风控审核中', '风控审核', 1);
INSERT INTO `process_node` VALUES (10, 1, '金融专员2审是否通过', 'gateway', 10, '', 10, NULL, '风控审核中', '风控审核', 2);
INSERT INTO `process_node` VALUES (11, 1, '平台审核', 'task', 11, '$option_9 == 1', 11, NULL, '风控审核中', '风控审核', 1);
INSERT INTO `process_node` VALUES (12, 1, '客户上传支付定金凭证', 'task', 12, '$option_11 == 1 || $option_14 == 2', 12, NULL, '待付定金', '上传定金、从业资格证明', 2);
INSERT INTO `process_node` VALUES (13, 1, '客户上传从业资格证', 'task', 13, '$option_11 == 1 || $option_15 == 2', 13, NULL, '待付定金', '上传定金、从业资格证明', 2);
INSERT INTO `process_node` VALUES (14, 1, '出纳审核定金', 'task', 14, '', 14, NULL, '待付定金', '上传定金、从业资格证明', 1);
INSERT INTO `process_node` VALUES (15, 1, '分公司司管审核资格', 'task', 15, '', 15, NULL, '待付定金', '上传定金、从业资格证明', 1);
INSERT INTO `process_node` VALUES (16, 1, '出纳审核定金结果', 'gateway', 16, '', 16, NULL, '待付定金', '上传定金、从业资格证明', 2);
INSERT INTO `process_node` VALUES (17, 1, '分公司司管审核资格结果', 'gateway', 17, '', 17, NULL, '待付定金', '上传定金、从业资格证明', 2);
INSERT INTO `process_node` VALUES (18, 1, '分公司内勤上传购车凭证', 'task', 18, '($option_14 == 1 && $option_15 == 1) || $option_19 == 2 || $option_21 == 2', 18, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (19, 1, '出纳1审购车凭证', 'task', 19, '', 19, NULL, '备车中', '准备车辆', 1);
INSERT INTO `process_node` VALUES (20, 1, '出纳1审购车凭证结果', 'gateway', 20, '', 20, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (21, 1, '财务总监2审购车凭证', 'task', 21, '$option_19 == 1', 21, NULL, '备车中', '准备车辆', 1);
INSERT INTO `process_node` VALUES (22, 1, '财务总监2审购车凭证结果', 'gateway', 22, '', 22, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (23, 1, '分公司内勤上传保险凭证', 'task', 23, '$option_21 == 1 || $option_24 == 2 || $option_26 == 2', 23, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (24, 1, '保险专员1审保险凭证', 'task', 24, '', 24, NULL, '备车中', '准备车辆', 1);
INSERT INTO `process_node` VALUES (25, 1, '保险专员1审保险凭证结果', 'gateway', 25, '', 25, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (26, 1, '出纳2审保险凭证', 'task', 26, '$option_24 == 1', 26, NULL, '备车中', '准备车辆', 1);
INSERT INTO `process_node` VALUES (27, 1, '出纳2审保险凭证结果', 'gateway', 27, '', 27, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (28, 1, '分公司车管上传税照', 'task', 28, '$option_26 == 1 || $option_29 == 2', 28, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (29, 1, '总公司车司管备车确认', 'task', 29, '', 29, NULL, '备车中', '准备车辆', 1);
INSERT INTO `process_node` VALUES (30, 1, '总公司车司管备车确认结果', 'gateway', 30, '', 30, NULL, '备车中', '准备车辆', 2);
INSERT INTO `process_node` VALUES (31, 1, '客户上传支付尾款凭证', 'task', 31, '$option_29 == 1 || $option_32 == 2', 31, NULL, '待付尾款', '支付尾款', 2);
INSERT INTO `process_node` VALUES (32, 1, '出纳审核支付尾款凭证', 'task', 32, '', 32, NULL, '尾款审核中', '尾款审核', 1);
INSERT INTO `process_node` VALUES (33, 1, '出纳审核支付尾款凭证结果', 'gateway', 33, '', 33, NULL, '尾款审核中', '尾款审核', 2);
INSERT INTO `process_node` VALUES (34, 1, '业务员上传签署合同', 'task', 34, '$option_32 == 1 || $option_35 == 2 || $option_37 == 2', 34, NULL, '交车中', '提车', 2);
INSERT INTO `process_node` VALUES (35, 1, '分公司内勤1审合同', 'task', 35, '', 35, NULL, '交车中', '提车', 1);
INSERT INTO `process_node` VALUES (36, 1, '分公司内勤1审合同结果', 'gateway', 36, '', 36, NULL, '交车中', '提车', 2);
INSERT INTO `process_node` VALUES (37, 1, '总公司内勤2审合同', 'task', 37, '$option_35 == 1', 37, NULL, '交车中', '提车', 1);
INSERT INTO `process_node` VALUES (38, 1, '总公司内勤2审合同结果', 'gateway', 38, '', 38, NULL, '交车中', '提车', 2);
INSERT INTO `process_node` VALUES (39, 1, '平台审核结果', 'gateway', 39, '', 39, NULL, '风控审核中', '风控审核', 2);
INSERT INTO `process_node` VALUES (40, 1, '流程完成', 'task', 40, '$option_37 == 1', 40, NULL, '已完成', '已提车', 2);
INSERT INTO `process_node` VALUES (41, 2, '流程开始', 'event', 41, '', 1, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (42, 2, '流程2步骤1', 'task', 42, '', 2, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (43, 2, '流程2步骤2', 'task', 43, '', 3, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (44, 2, '流程2步骤3', 'task', 44, '', 4, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (45, 2, '流程完成', 'task', 45, '', 5, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (46, 3, '流程开始', 'task', 46, '', 1, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (47, 3, '流程3步骤1', 'task', 47, '', 2, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (48, 3, '流程3步骤2', 'task', 48, '', 3, NULL, '', '', 2);
INSERT INTO `process_node` VALUES (49, 3, '流程完成', 'task', 49, '', 4, NULL, '', '', 2);

-- ----------------------------
-- Records of process_node_link
-- ----------------------------
INSERT INTO `process_node_link` VALUES (1, 1, 1, 0, 2);
INSERT INTO `process_node_link` VALUES (2, 1, 2, 1, 3);
INSERT INTO `process_node_link` VALUES (3, 1, 3, 2, 4);
INSERT INTO `process_node_link` VALUES (4, 1, 4, 3, 5);
INSERT INTO `process_node_link` VALUES (5, 1, 5, 4, 7);
INSERT INTO `process_node_link` VALUES (6, 1, 5, 4, 3);
INSERT INTO `process_node_link` VALUES (7, 1, 7, 5, 8);
INSERT INTO `process_node_link` VALUES (8, 1, 8, 7, 9);
INSERT INTO `process_node_link` VALUES (9, 1, 8, 7, 6);
INSERT INTO `process_node_link` VALUES (10, 1, 9, 8, 10);
INSERT INTO `process_node_link` VALUES (11, 1, 10, 9, 11);
INSERT INTO `process_node_link` VALUES (12, 1, 10, 9, 6);
INSERT INTO `process_node_link` VALUES (13, 1, 11, 10, 39);
INSERT INTO `process_node_link` VALUES (14, 1, 39, 11, 12);
INSERT INTO `process_node_link` VALUES (15, 1, 12, 11, 14);
INSERT INTO `process_node_link` VALUES (16, 1, 13, 11, 15);
INSERT INTO `process_node_link` VALUES (17, 1, 14, 12, 16);
INSERT INTO `process_node_link` VALUES (18, 1, 15, 13, 17);
INSERT INTO `process_node_link` VALUES (19, 1, 16, 14, 18);
INSERT INTO `process_node_link` VALUES (20, 1, 16, 14, 12);
INSERT INTO `process_node_link` VALUES (21, 1, 17, 15, 18);
INSERT INTO `process_node_link` VALUES (22, 1, 17, 15, 13);
INSERT INTO `process_node_link` VALUES (23, 1, 18, 16, 19);
INSERT INTO `process_node_link` VALUES (24, 1, 18, 17, 19);
INSERT INTO `process_node_link` VALUES (25, 1, 19, 18, 20);
INSERT INTO `process_node_link` VALUES (26, 1, 20, 19, 21);
INSERT INTO `process_node_link` VALUES (27, 1, 20, 19, 18);
INSERT INTO `process_node_link` VALUES (28, 1, 21, 20, 22);
INSERT INTO `process_node_link` VALUES (29, 1, 22, 21, 23);
INSERT INTO `process_node_link` VALUES (30, 1, 22, 21, 18);
INSERT INTO `process_node_link` VALUES (31, 1, 23, 22, 24);
INSERT INTO `process_node_link` VALUES (32, 1, 24, 23, 25);
INSERT INTO `process_node_link` VALUES (33, 1, 25, 24, 26);
INSERT INTO `process_node_link` VALUES (34, 1, 25, 24, 23);
INSERT INTO `process_node_link` VALUES (35, 1, 26, 25, 27);
INSERT INTO `process_node_link` VALUES (36, 1, 27, 26, 28);
INSERT INTO `process_node_link` VALUES (37, 1, 27, 26, 23);
INSERT INTO `process_node_link` VALUES (38, 1, 28, 27, 29);
INSERT INTO `process_node_link` VALUES (39, 1, 29, 28, 30);
INSERT INTO `process_node_link` VALUES (40, 1, 30, 29, 31);
INSERT INTO `process_node_link` VALUES (41, 1, 30, 29, 28);
INSERT INTO `process_node_link` VALUES (42, 1, 31, 30, 32);
INSERT INTO `process_node_link` VALUES (43, 1, 32, 31, 33);
INSERT INTO `process_node_link` VALUES (44, 1, 33, 32, 34);
INSERT INTO `process_node_link` VALUES (45, 1, 33, 32, 31);
INSERT INTO `process_node_link` VALUES (46, 1, 34, 33, 35);
INSERT INTO `process_node_link` VALUES (47, 1, 35, 34, 36);
INSERT INTO `process_node_link` VALUES (48, 1, 36, 35, 37);
INSERT INTO `process_node_link` VALUES (49, 1, 36, 35, 34);
INSERT INTO `process_node_link` VALUES (50, 1, 37, 36, 38);
INSERT INTO `process_node_link` VALUES (51, 1, 38, 37, 40);
INSERT INTO `process_node_link` VALUES (52, 1, 38, 37, 34);
INSERT INTO `process_node_link` VALUES (53, 1, 39, 11, 13);
INSERT INTO `process_node_link` VALUES (54, 1, 39, 11, 6);
INSERT INTO `process_node_link` VALUES (55, 2, 41, 0, 42);
INSERT INTO `process_node_link` VALUES (56, 2, 42, 41, 43);
INSERT INTO `process_node_link` VALUES (57, 2, 43, 42, 44);
INSERT INTO `process_node_link` VALUES (58, 2, 44, 43, 45);
INSERT INTO `process_node_link` VALUES (59, 3, 46, 0, 47);
INSERT INTO `process_node_link` VALUES (60, 3, 47, 46, 48);
INSERT INTO `process_node_link` VALUES (61, 3, 48, 47, 49);

SET FOREIGN_KEY_CHECKS = 1;
