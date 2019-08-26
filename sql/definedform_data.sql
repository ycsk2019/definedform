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

 Date: 26/08/2019 16:54:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


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
-- Records of form_list_heads
-- ----------------------------
INSERT INTO `form_list_heads` VALUES (1, 1, 'head1', '表头1', 1);
INSERT INTO `form_list_heads` VALUES (2, 1, 'head2', '表头2', 2);


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
-- Records of form_orders
-- ----------------------------
INSERT INTO `form_orders` VALUES (1, '2164178941283123', 0, 1, 0, NULL, 0, 1, 0, NULL, '2019-08-06 11:42:24', '2019-08-06 11:42:24');
INSERT INTO `form_orders` VALUES (2, '201908061142247548', 0, 1, 0, '2019-08-06 11:42:24', 0, 2, 0, NULL, '2019-08-06 11:42:24', '2019-08-06 11:42:24');
INSERT INTO `form_orders` VALUES (3, '201908061157037446', 0, 1, 0, '2019-08-06 11:57:03', 0, 0, 0, NULL, '2019-08-06 11:57:03', '2019-08-06 11:57:03');
INSERT INTO `form_orders` VALUES (4, '201908061341165548', 0, 1, 0, '2019-08-06 13:41:16', 0, 0, 0, NULL, '2019-08-06 13:41:16', '2019-08-06 13:41:16');
INSERT INTO `form_orders` VALUES (5, '201908061342167050', 0, 1, 0, '2019-08-06 13:42:16', 0, 0, 0, NULL, '2019-08-06 13:42:16', '2019-08-06 13:42:16');
INSERT INTO `form_orders` VALUES (6, '201908061344033155', 0, 1, 0, '2019-08-06 13:44:03', 0, 0, 0, NULL, '2019-08-06 13:44:03', '2019-08-06 13:44:03');
INSERT INTO `form_orders` VALUES (7, '201908061344202751', 0, 1, 0, '2019-08-06 13:44:20', 0, 0, 0, NULL, '2019-08-06 13:44:20', '2019-08-06 13:44:20');
INSERT INTO `form_orders` VALUES (8, '201908061349467238', 0, 1, 0, '2019-08-06 13:49:46', 0, 0, 0, NULL, '2019-08-06 13:49:46', '2019-08-06 13:49:46');
INSERT INTO `form_orders` VALUES (9, '201908061351204157', 0, 1, 0, '2019-08-06 13:51:20', 0, 0, 0, NULL, '2019-08-06 13:51:20', '2019-08-06 13:51:20');
INSERT INTO `form_orders` VALUES (10, '201908061351468838', 0, 1, 0, '2019-08-06 13:51:46', 0, 0, 0, NULL, '2019-08-06 13:51:46', '2019-08-06 13:51:46');
INSERT INTO `form_orders` VALUES (11, '201908061352292644', 0, 1, 0, '2019-08-06 13:52:29', 0, 0, 0, NULL, '2019-08-06 13:52:29', '2019-08-06 13:52:29');
INSERT INTO `form_orders` VALUES (12, '201908061408055645', 0, 1, 0, '2019-08-06 14:08:05', 0, 0, 0, NULL, '2019-08-06 14:08:05', '2019-08-06 14:08:05');
INSERT INTO `form_orders` VALUES (13, '201908061408431548', 0, 1, 0, '2019-08-06 14:08:43', 0, 0, 0, NULL, '2019-08-06 14:08:43', '2019-08-06 14:08:43');
INSERT INTO `form_orders` VALUES (14, '201908061413154748', 0, 1, 0, '2019-08-06 14:13:15', 0, 0, 0, NULL, '2019-08-06 14:13:15', '2019-08-06 14:13:15');
INSERT INTO `form_orders` VALUES (15, '201908061413457247', 0, 1, 0, '2019-08-06 14:13:45', 0, 0, 0, NULL, '2019-08-06 14:13:45', '2019-08-06 14:13:45');
INSERT INTO `form_orders` VALUES (16, '201908061414397738', 0, 1, 0, '2019-08-06 14:14:39', 0, 0, 0, NULL, '2019-08-06 14:14:39', '2019-08-06 14:14:39');
INSERT INTO `form_orders` VALUES (17, '201908061414481744', 0, 1, 0, '2019-08-06 14:14:48', 0, 0, 0, NULL, '2019-08-06 14:14:48', '2019-08-06 14:14:48');
INSERT INTO `form_orders` VALUES (18, '201908061415507051', 0, 1, 0, '2019-08-06 14:15:50', 0, 0, 0, NULL, '2019-08-06 14:15:50', '2019-08-06 14:15:50');
INSERT INTO `form_orders` VALUES (19, '201908061416293741', 0, 1, 0, '2019-08-06 14:16:29', 0, 0, 0, NULL, '2019-08-06 14:16:29', '2019-08-06 14:16:29');
INSERT INTO `form_orders` VALUES (20, '201908061416349244', 0, 1, 0, '2019-08-06 14:16:34', 0, 0, 0, NULL, '2019-08-06 14:16:34', '2019-08-06 14:16:34');
INSERT INTO `form_orders` VALUES (21, '201908061418074346', 0, 1, 0, '2019-08-06 14:18:07', 0, 0, 0, NULL, '2019-08-06 14:18:07', '2019-08-06 14:18:07');
INSERT INTO `form_orders` VALUES (22, '201908061418164247', 0, 1, 0, '2019-08-06 14:18:16', 0, 0, 0, NULL, '2019-08-06 14:18:16', '2019-08-06 14:18:16');
INSERT INTO `form_orders` VALUES (23, '201908061418227643', 0, 1, 0, '2019-08-06 14:18:22', 0, 0, 0, NULL, '2019-08-06 14:18:22', '2019-08-06 14:18:22');
INSERT INTO `form_orders` VALUES (24, '201908061418571146', 0, 1, 0, '2019-08-06 14:18:57', 0, 0, 0, NULL, '2019-08-06 14:18:57', '2019-08-06 14:18:57');
INSERT INTO `form_orders` VALUES (25, '201908061419228839', 0, 1, 0, '2019-08-06 14:19:22', 0, 0, 0, NULL, '2019-08-06 14:19:22', '2019-08-06 14:19:22');
INSERT INTO `form_orders` VALUES (26, '201908061438449140', 0, 1, 0, '2019-08-06 14:38:44', 0, 0, 0, NULL, '2019-08-06 14:38:44', '2019-08-06 14:38:44');
INSERT INTO `form_orders` VALUES (27, '201908061439103845', 0, 1, 0, '2019-08-06 14:39:10', 0, 0, 0, NULL, '2019-08-06 14:39:10', '2019-08-06 14:39:10');
INSERT INTO `form_orders` VALUES (28, '201908061439364341', 0, 1, 0, '2019-08-06 14:39:36', 0, 0, 0, NULL, '2019-08-06 14:39:36', '2019-08-06 14:39:36');
INSERT INTO `form_orders` VALUES (29, '201908061440214454', 0, 1, 0, '2019-08-06 14:40:21', 0, 0, 0, NULL, '2019-08-06 14:40:21', '2019-08-06 14:40:21');
INSERT INTO `form_orders` VALUES (30, '', 0, 1, 0, NULL, 0, 6, 0, NULL, '2019-08-06 14:40:21', '2019-08-06 14:40:21');
INSERT INTO `form_orders` VALUES (31, '201908061440348050', 0, 1, 0, '2019-08-06 14:40:34', 0, 0, 0, NULL, '2019-08-06 14:40:34', '2019-08-06 14:40:34');
INSERT INTO `form_orders` VALUES (32, '', 0, 1, 0, NULL, 0, 7, 0, NULL, '2019-08-06 14:40:35', '2019-08-06 14:40:35');


-- ----------------------------
-- Records of form_system_fields
-- ----------------------------
INSERT INTO `form_system_fields` VALUES (1, 'order_id', '订单编号');
INSERT INTO `form_system_fields` VALUES (2, 'order_created_at', '订单创建时间');
INSERT INTO `form_system_fields` VALUES (3, 'order_updated_at', '订单更新时间');

SET FOREIGN_KEY_CHECKS = 1;
