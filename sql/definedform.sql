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

 Date: 26/08/2019 10:18:09
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_fields
-- ----------------------------
INSERT INTO `form_fields` VALUES (1, 'input', '{\"type\":\"input\",\"name\":\"单行输入框\",\"icon\":\"\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"}}');
INSERT INTO `form_fields` VALUES (2, 'textarea', '{\"type\":\"textarea\",\"name\":\"多行输入框\",\"icon\":\"\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"}}');
INSERT INTO `form_fields` VALUES (3, 'number', '{\"type\":\"number\",\"name\":\"数字输入框\",\"icon\":\"\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"}}');
INSERT INTO `form_fields` VALUES (4, 'select', '{\"type\":\"select\",\"name\":\"下拉框\",\"icon\":\"\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]}}');
INSERT INTO `form_fields` VALUES (5, 'date', '{\"type\":\"date\",\"name\":\"日期\",\"icon\":\"\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false}}');
INSERT INTO `form_fields` VALUES (6, 'daterange', '{\"type\":\"daterange\",\"name\":\"日期区间\",\"icon\":\"\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false}}');
INSERT INTO `form_fields` VALUES (7, 'imgupload', '{\"type\":\"imgupload\",\"name\":\"图片\",\"icon\":\"\",\"props\":{\"label\":\"图片\",\"required\":false,\"length\":99999,\"multiple\":false}}');
INSERT INTO `form_fields` VALUES (8, 'calculate', '{\"type\":\"calculate\",\"name\":\"计算公式\",\"icon\":\"\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[]}}');

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
-- Records of form_formats
-- ----------------------------
INSERT INTO `form_formats` VALUES (1, 'test_form3', '测试表单2', '2019080110590023012354', '{\"fields\":[{\"type\":\"module\",\"name\":\"模块\",\"props\":{\"label\":\"模块名\"},\"lists\":[{\"type\":\"input\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"},\"field_no\":\"input_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"textarea\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"},\"field_no\":\"textarea_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"number\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"},\"field_no\":\"number_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"select\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]},\"relatedItem\":[{\"value\":1,\"targets\":[{\"fieldId\":\"input_1564712291879\"},{\"fieldId\":\"select_1564712291879\"}]},{\"value\":2,\"targets\":[{\"fieldId\":\"input_1564712291879\"}]},{\"value\":3,\"targets\":[]}],\"field_no\":\"select_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"date\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"date_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"daterange\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"daterange_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"imgupload\",\"props\":{\"label\":\"imgupload\",\"required\":false,\"length\":99999,\"multiple\":false},\"field_no\":\"imgupload_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"calculate\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[{\"field_no\":\"input_1564712291879\"},\"+\",5,\"*\",{\"field_no\":\"number_1564712291879\"},\"/\",{\"field_no\":\"number_1564712291879\"}]},\"field_no\":\"calculate_201908021440003123545\",\"field_value\":\"\"}]}],\"permission\":{\"node_2\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}],\"node_3\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}]}}', 1, 0, 2, 1, '', NULL, NULL, '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (2, 'test_form4', '测试表单3', '2019080110590023012354', '{\"fields\":[{\"type\":\"module\",\"name\":\"模块\",\"props\":{\"label\":\"模块名\"},\"lists\":[{\"type\":\"input\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"},\"field_no\":\"input_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"textarea\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"},\"field_no\":\"textarea_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"number\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"},\"field_no\":\"number_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"select\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]},\"relatedItem\":[{\"value\":1,\"targets\":[{\"fieldId\":\"input_1564712291879\"},{\"fieldId\":\"select_1564712291879\"}]},{\"value\":2,\"targets\":[{\"fieldId\":\"input_1564712291879\"}]},{\"value\":3,\"targets\":[]}],\"field_no\":\"select_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"date\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"date_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"daterange\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"daterange_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"imgupload\",\"props\":{\"label\":\"imgupload\",\"required\":false,\"length\":99999,\"multiple\":false},\"field_no\":\"imgupload_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"calculate\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[{\"field_no\":\"input_1564712291879\"},\"+\",5,\"*\",{\"field_no\":\"number_1564712291879\"},\"/\",{\"field_no\":\"number_1564712291879\"}]},\"field_no\":\"calculate_201908021440003123545\",\"field_value\":\"\"}]}],\"permission\":{\"node_2\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}],\"node_3\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}]}}', 2, 0, 2, 2, '', NULL, NULL, NULL);
INSERT INTO `form_formats` VALUES (3, 'test_form4', '测试表单2', '2019080110590023012354', '{\"fields\":[{\"type\":\"module\",\"name\":\"模块\",\"props\":{\"label\":\"模块名\"},\"lists\":[{\"type\":\"input\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"},\"field_no\":\"input_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"textarea\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"},\"field_no\":\"textarea_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"number\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"},\"field_no\":\"number_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"select\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]},\"relatedItem\":[{\"value\":1,\"targets\":[{\"fieldId\":\"input_1564712291879\"},{\"fieldId\":\"select_1564712291879\"}]},{\"value\":2,\"targets\":[{\"fieldId\":\"input_1564712291879\"}]},{\"value\":3,\"targets\":[]}],\"field_no\":\"select_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"date\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"date_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"daterange\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"daterange_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"imgupload\",\"props\":{\"label\":\"imgupload\",\"required\":false,\"length\":99999,\"multiple\":false},\"field_no\":\"imgupload_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"calculate\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[{\"field_no\":\"input_1564712291879\"},\"+\",5,\"*\",{\"field_no\":\"number_1564712291879\"},\"/\",{\"field_no\":\"number_1564712291879\"}]},\"field_no\":\"calculate_201908021440003123545\",\"field_value\":\"\"}]}],\"permission\":{\"node_2\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}],\"node_3\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}]}}', 3, 0, 2, 3, '', NULL, '2019-08-01 09:11:37', '2019-08-02 02:50:32');
INSERT INTO `form_formats` VALUES (4, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 4, '', NULL, '2019-08-01 09:16:33', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (5, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 5, '', NULL, '2019-08-01 09:19:24', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (6, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 6, '', NULL, '2019-08-01 09:27:50', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (7, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 7, '', NULL, '2019-08-01 09:28:14', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (8, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 8, '', NULL, '2019-08-01 09:30:58', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (9, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 9, '', NULL, '2019-08-01 09:31:47', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (10, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 10, '', NULL, '2019-08-01 09:44:20', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (11, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 11, '', NULL, '2019-08-01 09:44:45', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (12, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 12, '', NULL, '2019-08-01 09:45:50', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (13, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 13, '', NULL, '2019-08-01 09:46:23', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (14, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 14, '', NULL, '2019-08-01 09:46:43', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (15, 'test_form4', '测试表单2', '2019080110590023012354', '', 0, 0, 2, 15, '', NULL, '2019-08-02 01:34:12', '2019-08-02 01:34:12');
INSERT INTO `form_formats` VALUES (16, 'test_form2', '测试表单2', '2019080110590023012354', '{\"fields\":[{\"type\":\"module\",\"name\":\"模块\",\"props\":{\"label\":\"模块名\"},\"lists\":[{\"type\":\"input\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"},\"field_no\":\"input_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"textarea\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"},\"field_no\":\"textarea_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"number\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"},\"field_no\":\"number_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"select\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]},\"relatedItem\":[{\"value\":1,\"targets\":[{\"fieldId\":\"input_1564712291879\"},{\"fieldId\":\"select_1564712291879\"}]},{\"value\":2,\"targets\":[{\"fieldId\":\"input_1564712291879\"}]},{\"value\":3,\"targets\":[]}],\"field_no\":\"select_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"date\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"date_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"daterange\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"daterange_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"imgupload\",\"props\":{\"label\":\"imgupload\",\"required\":false,\"length\":99999,\"multiple\":false},\"field_no\":\"imgupload_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"calculate\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[{\"field_no\":\"input_1564712291879\"},\"+\",5,\"*\",{\"field_no\":\"number_1564712291879\"},\"/\",{\"field_no\":\"number_1564712291879\"}]},\"field_no\":\"calculate_201908021440003123545\",\"field_value\":\"\"}]}],\"permission\":{\"node_2\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}],\"node_3\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}]}}', 0, 0, 1, 16, '', NULL, '2019-08-07 08:19:57', '2019-08-07 08:19:57');
INSERT INTO `form_formats` VALUES (17, 'test_form2', '测试表单2', '', '', 0, 0, 2, 1, '', NULL, '2019-08-07 08:20:20', '2019-08-07 08:20:20');
INSERT INTO `form_formats` VALUES (18, 'test_form2', '测试表单2', '201908071625139541', '', 0, 0, 2, 1, '', NULL, '2019-08-07 16:25:13', '2019-08-07 16:25:13');
INSERT INTO `form_formats` VALUES (19, 'test_form2', '测试表单2', '201908071626424693038316', '', 0, 0, 2, 1, '', NULL, '2019-08-07 16:26:42', '2019-08-07 16:26:42');
INSERT INTO `form_formats` VALUES (20, 'test_form2', '测试表单2', '201908071626525102305827', '', 0, 0, 2, 1, '', NULL, '2019-08-07 16:26:52', '2019-08-07 16:26:52');
INSERT INTO `form_formats` VALUES (21, 'test_form4', '测试表单2', '201908071630182461201929', '', 0, 0, 2, 1, '', NULL, '2019-08-07 16:30:18', '2019-08-07 16:30:18');
INSERT INTO `form_formats` VALUES (22, 'test_form4', '测试表单2', '201908071631189022878809', '', 0, 0, 2, 1, '', NULL, '2019-08-07 16:31:18', '2019-08-14 07:49:51');
INSERT INTO `form_formats` VALUES (23, 'test_form4', '测试表单2', '201908071631189022878809', '', 0, 0, 2, 2, '', NULL, '2019-08-07 09:16:52', '2019-08-14 07:49:51');
INSERT INTO `form_formats` VALUES (24, 'test_form4', '测试表单2', '201908071631189022878809', '', 0, 0, 2, 3, '', NULL, '2019-08-07 09:17:07', '2019-08-14 07:49:51');
INSERT INTO `form_formats` VALUES (25, 'test_form2', '测试表单2', '201908080933105064835718', '', 0, 0, 2, 1, '', NULL, '2019-08-08 09:33:10', '2019-08-08 09:33:10');
INSERT INTO `form_formats` VALUES (26, 'test_form2', '测试表单2', '201908080935013321444825', '', 0, 0, 2, 1, '', NULL, '2019-08-08 09:35:01', '2019-08-08 09:35:01');
INSERT INTO `form_formats` VALUES (27, 'test_form4', '测试表单2', '201908071631189022878809', NULL, 0, 0, 2, 4, '', NULL, '2019-08-14 07:48:56', '2019-08-14 07:49:51');
INSERT INTO `form_formats` VALUES (28, 'test_form4', '测试表单3', '201908071631189022878809', '{\"fields\":[{\"type\":\"module\",\"name\":\"模块\",\"props\":{\"label\":\"模块名\"},\"lists\":[{\"type\":\"input\",\"props\":{\"label\":\"单行输入框\",\"required\":false,\"dataType\":\"string\",\"placeholder\":\"请输入\"},\"field_no\":\"input_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"textarea\",\"props\":{\"label\":\"多行输入框\",\"required\":false,\"placeholder\":\"请输入\"},\"field_no\":\"textarea_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"number\",\"props\":{\"label\":\"数字输入框\",\"required\":false,\"placeholder\":\"请输入\",\"min\":\"\",\"max\":\"\",\"decimalLength\":\"\"},\"field_no\":\"number_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"select\",\"props\":{\"label\":\"下拉框\",\"required\":false,\"placeholder\":\"请选择\",\"clearable\":false,\"options\":[{\"label\":\"选项1\",\"value\":1},{\"label\":\"选项2\",\"value\":2},{\"label\":\"选项3\",\"value\":3}]},\"relatedItem\":[{\"value\":1,\"targets\":[{\"fieldId\":\"input_1564712291879\"},{\"fieldId\":\"select_1564712291879\"}]},{\"value\":2,\"targets\":[{\"fieldId\":\"input_1564712291879\"}]},{\"value\":3,\"targets\":[]}],\"field_no\":\"select_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"date\",\"props\":{\"label\":\"日期\",\"required\":false,\"placeholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"date_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"daterange\",\"props\":{\"label\":[\"开始时间\",\"结束时间\"],\"required\":false,\"startplaceholder\":\"请选择\",\"endplaceholder\":\"请选择\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false},\"field_no\":\"daterange_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"imgupload\",\"props\":{\"label\":\"imgupload\",\"required\":false,\"length\":99999,\"multiple\":false},\"field_no\":\"imgupload_201908021440003123545\",\"field_value\":\"\"},{\"type\":\"calculate\",\"props\":{\"label\":\"计算公式\",\"required\":false,\"placeholder\":\"自动计算数值\",\"formula\":[{\"field_no\":\"input_1564712291879\"},\"+\",5,\"*\",{\"field_no\":\"number_1564712291879\"},\"/\",{\"field_no\":\"number_1564712291879\"}]},\"field_no\":\"calculate_201908021440003123545\",\"field_value\":\"\"}]}],\"permission\":{\"node_2\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}],\"node_3\":[{\"field_no\":\"imgupload_201908021440003123545\",\"access\":\"edit\"},{\"field_no\":\"input_201908021440003123545\",\"access\":\"readonly\"},{\"field_no\":\"select_201908021440003123545\",\"access\":\"hidden\"}]}}', 0, 0, 1, 5, '', NULL, '2019-08-14 07:49:51', '2019-08-14 07:49:51');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_list_heads
-- ----------------------------
INSERT INTO `form_list_heads` VALUES (1, 1, 'head1', '表头1', 1);
INSERT INTO `form_list_heads` VALUES (2, 1, 'head2', '表头2', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_lists
-- ----------------------------
INSERT INTO `form_lists` VALUES (1, 1, '', 'input_201908021440003123549', '', 1, 3, 0, 'form', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (2, 1, '', 'input_201908021440003123548', '', 1, 5, 0, 'form', 2, NULL, '2019-08-12 06:43:23', '2019-08-12 06:43:23');
INSERT INTO `form_lists` VALUES (3, 1, '', 'input_201908021440003123546', '', 1, 2, 0, 'form', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (4, 1, '', 'input_201908021440003123545', '', 1, 4, 0, 'form', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (5, 2, '', 'input_201908021440003123547', '', 2, 2, 0, 'form', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (6, 1, '', '', '', 1, 6, 2, 'system', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (7, 1, '', '', '', 1, 1, 1, 'system', 2, NULL, NULL, NULL);
INSERT INTO `form_lists` VALUES (8, 2, '', 'input_201908021440003123548', '', 1, 1, 0, 'form', 2, NULL, '2019-08-19 01:37:00', '2019-08-19 01:37:00');
INSERT INTO `form_lists` VALUES (12, 2, '表单名称', 'input_201908021440003123549', '列表项名称', 1, 1, 1, 'system', 1, NULL, '2019-08-19 05:33:11', '2019-08-19 05:33:11');
INSERT INTO `form_lists` VALUES (13, 2, '表单名称', 'input_201908021440003123545', '列表项名称2', 1, 2, 0, 'form', 1, NULL, '2019-08-19 05:33:11', '2019-08-19 05:33:11');
INSERT INTO `form_lists` VALUES (14, 2, '表单名称', 'input_201908021440003123546', '列表项名称3', 1, 3, 2, 'system', 2, NULL, '2019-08-19 05:33:11', '2019-08-19 05:33:11');
INSERT INTO `form_lists` VALUES (22, 2, '表单名称gai23', 'input_201908021440003123549', '列表项名称', 1, 1, 1, 'system', 1, NULL, NULL, '2019-08-20 06:13:07');
INSERT INTO `form_lists` VALUES (23, 2, '表单名称gai2', 'input_201908021440003123545', '列表项名称2', 1, 2, 0, 'form', 1, NULL, NULL, '2019-08-20 03:58:32');
INSERT INTO `form_lists` VALUES (24, 2, '表单名称gai', 'input_201908021440003123546', '列表项名称3', 1, 3, 2, 'system', 2, NULL, NULL, '2019-08-20 03:58:32');

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_logs
-- ----------------------------
INSERT INTO `form_logs` VALUES (1, '测试表单记录1', '', '', '{\"order_id\":1,\"form_format_id\":\"1\",\"form_info\":[{\"field_no\":\"input_201908021440003123545\",\"field_value\":\"1\"},{\"field_no\":\"input_201908021440003123546\",\"field_value\":\"2\"},{\"field_no\":\"input_201908021440003123547\",\"field_value\":\"3\"},{\"field_no\":\"input_201908021440003123548\",\"field_value\":\"4\"},{\"field_no\":\"input_201908021440003123549\",\"field_value\":\"5\"}]}', 1, 1, 1, NULL, '2019-08-06 14:19:22', '2019-08-06 09:25:52');
INSERT INTO `form_logs` VALUES (2, '测试表名', '', '', '', 2, 1, 0, NULL, '2019-08-06 14:19:22', '2019-08-06 14:19:22');
INSERT INTO `form_logs` VALUES (3, '测试表名', '', '', '{\"order_id\":1,\"form_format_id\":\"1\",\"form_info\":[{\"field_no\":\"input_201908021440003123545\",\"field_value\":\"1\"},{\"field_no\":\"input_201908021440003123546\",\"field_value\":\"2\"},{\"field_no\":\"input_201908021440003123547\",\"field_value\":\"3\"},{\"field_no\":\"input_201908021440003123548\",\"field_value\":\"4\"},{\"field_no\":\"input_201908021440003123549\",\"field_value\":\"5\"}]}', 26, 1, 0, NULL, '2019-08-06 14:38:45', '2019-08-06 14:38:45');
INSERT INTO `form_logs` VALUES (4, '测试表名', '', '', NULL, 27, 1, 0, NULL, '2019-08-06 14:39:10', '2019-08-06 14:39:10');
INSERT INTO `form_logs` VALUES (5, '测试表名', '', '', NULL, 28, 1, 0, NULL, '2019-08-06 14:39:37', '2019-08-06 14:39:37');
INSERT INTO `form_logs` VALUES (6, '测试表名', '', '', NULL, 29, 1, 0, NULL, '2019-08-06 14:40:21', '2019-08-06 14:40:21');
INSERT INTO `form_logs` VALUES (7, '测试表名', '', '', NULL, 31, 1, 0, NULL, '2019-08-06 14:40:35', '2019-08-06 14:40:35');

-- ----------------------------
-- Table structure for form_menu_process
-- ----------------------------
DROP TABLE IF EXISTS `form_menu_process`;
CREATE TABLE `form_menu_process`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `form_menu_id` int(11) NOT NULL DEFAULT 0 COMMENT '菜单ID',
  `process_id` int(11) NOT NULL COMMENT '工作流ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_menu_process
-- ----------------------------
INSERT INTO `form_menu_process` VALUES (1, 1, 2);
INSERT INTO `form_menu_process` VALUES (3, 1, 1);
INSERT INTO `form_menu_process` VALUES (5, 8, 3);
INSERT INTO `form_menu_process` VALUES (6, 9, 1);
INSERT INTO `form_menu_process` VALUES (7, 9, 3);
INSERT INTO `form_menu_process` VALUES (8, 7, 2);
INSERT INTO `form_menu_process` VALUES (9, 7, 3);
INSERT INTO `form_menu_process` VALUES (10, 8, 2);
INSERT INTO `form_menu_process` VALUES (16, 10, 2);
INSERT INTO `form_menu_process` VALUES (17, 10, 3);
INSERT INTO `form_menu_process` VALUES (18, 2, 2);
INSERT INTO `form_menu_process` VALUES (19, 2, 3);

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_menus
-- ----------------------------
INSERT INTO `form_menus` VALUES (1, '父菜单1', 1, NULL, 1, 0, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (2, '父菜单2', 1, NULL, 1, 0, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (3, '子菜单1', 1, '[{\"process_id\":\"1\",\"process_title\":\"工作流1\",\"node_info\":[{\"id\":\"2\",\"node_title\":\"客户提交购车意向\",\"node_id\":\"2\"},{\"id\":\"3\",\"node_title\":\"业务员修改订单\",\"node_id\":\"3\"},{\"id\":\"4\",\"node_title\":\"客户确认提交订单\",\"node_id\":\"4\"}]},{\"process_id\":\"2\",\"process_title\":\"工作流2\",\"node_info\":[{\"id\":\"2\",\"node_title\":\"客户提交购车意向2\",\"node_id\":\"2\"},{\"id\":\"3\",\"node_title\":\"业务员修改订单2\",\"node_id\":\"3\"},{\"id\":\"4\",\"node_title\":\"客户确认提交订单2\",\"node_id\":\"4\"}]}]', 2, 1, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (4, '子菜单2', 1, NULL, 2, 1, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (5, '子菜单3', 1, '[{\"process_id\":\"1\",\"process_title\":\"工作流1\",\"node_info\":[{\"id\":\"2\",\"node_title\":\"客户提交购车意向\",\"node_id\":\"2\"},{\"id\":\"3\",\"node_title\":\"业务员修改订单\",\"node_id\":\"3\"},{\"id\":\"4\",\"node_title\":\"客户确认提交订单\",\"node_id\":\"4\"}]},{\"process_id\":\"2\",\"process_title\":\"工作流2\",\"node_info\":[{\"id\":\"2\",\"node_title\":\"客户提交购车意向2\",\"node_id\":\"2\"},{\"id\":\"3\",\"node_title\":\"业务员修改订单2\",\"node_id\":\"3\"},{\"id\":\"4\",\"node_title\":\"客户确认提交订单2\",\"node_id\":\"4\"}]}]', 2, 2, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (6, '子菜单4', 1, NULL, 2, 1, NULL, '2019-08-15 03:29:43', '2019-08-15 03:29:43');
INSERT INTO `form_menus` VALUES (7, '父菜单查看2', 2, '{}', 1, 0, NULL, '2019-08-15 03:44:34', '2019-08-16 01:55:24');
INSERT INTO `form_menus` VALUES (8, '父菜单查看2', 2, '{}', 1, 0, NULL, '2019-08-15 09:43:05', '2019-08-16 01:55:43');
INSERT INTO `form_menus` VALUES (9, '父菜单查看1', 2, '1', 1, 0, NULL, '2019-08-15 09:44:03', '2019-08-15 09:44:03');
INSERT INTO `form_menus` VALUES (10, '父菜单查看2', 2, '{}', 1, 0, NULL, '2019-08-16 06:40:44', '2019-08-16 07:21:53');

-- ----------------------------
-- Table structure for form_system_fields
-- ----------------------------
DROP TABLE IF EXISTS `form_system_fields`;
CREATE TABLE `form_system_fields`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `system_field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '系统字段名称',
  `system_field_name_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '系统字段中文名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of form_system_fields
-- ----------------------------
INSERT INTO `form_system_fields` VALUES (1, 'order_id', '订单编号');
INSERT INTO `form_system_fields` VALUES (2, 'order_created_at', '订单创建时间');
INSERT INTO `form_system_fields` VALUES (3, 'order_updated_at', '订单更新时间');

SET FOREIGN_KEY_CHECKS = 1;
