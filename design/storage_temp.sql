/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : storage

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2017-01-02 23:29:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for code_template
-- ----------------------------
DROP TABLE IF EXISTS `code_template`;
CREATE TABLE `code_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `ORDER_CODE` varchar(255) DEFAULT NULL,
  `SERIAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_template
-- ----------------------------

-- ----------------------------
-- Table structure for parts_in_bound_check_bill
-- ----------------------------
DROP TABLE IF EXISTS `parts_in_bound_check_bill`;
CREATE TABLE `parts_in_bound_check_bill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `PARTS_IN_BOUND_PLAN_ID` int(11) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `WAREHOUSE_CODE` varchar(50) NOT NULL,
  `WAREHOUSE_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_CODE` varchar(50) NOT NULL,
  `STORAGE_COMPANY_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `PARTS_SALES_CATEGORY_ID` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BRANCH_CODE` varchar(50) NOT NULL,
  `BRANCH_NAME` varchar(100) NOT NULL,
  `COUNTERPART_COMPANY_ID` int(11) NOT NULL,
  `COUNTERPART_COMPANY_CODE` varchar(50) NOT NULL,
  `COUNTERPART_COMPANY_NAME` varchar(100) NOT NULL,
  `INBOUND_TYPE` int(11) NOT NULL,
  `CUSTOMER_ACCOUNT_ID` int(11) DEFAULT NULL,
  `ORIGINAL_REQUIREMENT_BILL_ID` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_TYPE` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_CODE` varchar(50) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `SETTLEMENT_STATUS` int(11) NOT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `OBJ_ID` varchar(25) DEFAULT NULL,
  `GPMS_PUR_ORDER_CODE` varchar(50) DEFAULT NULL,
  `PUR_ORDER_CODE` varchar(50) DEFAULT NULL,
  `RETURN_CONTAINER_NUMBER` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_INBOUNDCHECK_CREATETIME` (`CREATE_TIME`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_CPCOMPID` (`COUNTERPART_COMPANY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_CUSTACCID` (`CUSTOMER_ACCOUNT_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_OREQBIID` (`ORIGINAL_REQUIREMENT_BILL_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_PINBPLID` (`PARTS_IN_BOUND_PLAN_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_PSCATEGID` (`PARTS_SALES_CATEGORY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_SCOMPID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDCHKBI_WAREHID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_in_bound_check_bill
-- ----------------------------
INSERT INTO `parts_in_bound_check_bill` VALUES ('71', 'PIP247020131204000007', '0', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '82', 'P0005', '河北润宏建筑机械制造有限公司', '1', '91', '92', '4', 'PPO2470201312040009', '2', '0', null, '2262', '马平', '2016-11-30 14:28:33.683000', '2265', '张尚武', '2013-12-11 17:23:29.000000', '2016-11-30 14:28:33.683000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('141', 'PICSH01920131204000001', '70', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10137', '1', 'PSO2470201312030001', '1', '2', null, '1156', 'SH019', '2013-12-04 15:47:49.000000', null, null, null, '2013-12-04 16:00:02.141000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('142', 'PIC247020131204000001', '66', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '80', 'P0008', '湖北谷城元通机械有限公司', '1', '89', '87', '4', 'PPO2470201312040004', '1', '3', null, '2269', '高利军', '2013-12-04 16:41:19.000000', '2137', 'P0008', '2013-12-25 11:06:36.000000', '2013-12-25 11:19:26.894000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('143', 'PIC247020131204000002', '67', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '80', 'P0008', '湖北谷城元通机械有限公司', '1', '89', '88', '4', 'PPO2470201312040005', '1', '3', null, '2269', '高利军', '2013-12-04 16:41:33.000000', '2137', 'P0008', '2013-12-25 11:06:36.000000', '2013-12-25 11:19:26.902000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('144', 'PICSH02420131204000001', '72', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10161', '1', 'PSO2470201312030018', '1', '2', null, '1160', 'SH024', '2013-12-04 21:06:52.000000', null, null, null, '2013-12-04 21:19:05.235000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('145', 'PICSH02920131205000001', '73', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10187', '1', 'PSO2470201312040006', '1', '2', null, '1165', 'SH029', '2013-12-05 11:12:26.000000', null, null, null, '2013-12-05 11:24:40.155000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('148', 'PIC247020131206000004', '82', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '95', '4', 'PPO2470201312050002', '1', '3', null, '2265', '张尚武', '2013-12-06 16:16:43.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.738000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('151', 'PICSH01420131206000001', '93', '8', 'SH014', '上海锦翔（商混）配件库', '8', 'SH014', '商混上海中心站（上海锦翔）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10181', '1', 'PSO2470201312040001', '1', '2', null, '1151', 'SH014', '2013-12-06 16:50:11.000000', null, null, null, '2013-12-06 17:02:27.349000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('153', 'PIC247020131206000006', '96', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4303', 'FT006564', '商混长沙代理库', '2', '1056', '121', '2', 'PSR2470201312040001', '1', '3', '公司同意清退', '2265', '张尚武', '2013-12-06 17:07:31.000000', '2301', '张奉云', '2014-01-15 10:32:36.000000', '2014-01-15 10:46:06.230000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('155', 'PICSH01920131208000001', '100', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10183', '1', 'PSO2470201312040003', '1', '2', null, '1156', 'SH019', '2013-12-08 11:09:53.000000', null, null, null, '2013-12-08 11:22:12.702000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('159', 'PICSH00420131209000001', '106', '19', 'HNSH', '商混河南中心库', '3', 'FT003360', '商混河南代理库（河南阳杰）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10202', '1', 'PSO2470201312040020', '1', '2', null, '1140', 'SH004', '2013-12-09 10:06:18.000000', null, null, null, '2013-12-09 10:18:39.709000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('161', 'PICSH02220131209000001', '108', '22', 'SH022', '商混昆明博海代理库', '21', 'SH022', '商混昆明博海代理库', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10155', '1', 'PSO2470201312030012', '1', '2', null, '1159', 'SH022', '2013-12-09 12:07:32.000000', null, null, null, '2013-12-09 12:19:53.192000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('162', 'PICSH01520131209000001', '113', '26', 'CZWJZXZ', '常州武进', '14', 'SH015', '商混常州中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10138', '1', 'PSO2470201312030002', '1', '2', null, '1152', 'SH015', '2013-12-09 14:46:27.000000', null, null, null, '2013-12-09 14:58:49.869000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('165', 'PICSH02920131210000001', '116', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10227', '1', 'PSO2470201312060001', '1', '2', null, '1165', 'SH029', '2013-12-10 13:56:00.000000', null, null, null, '2013-12-10 14:08:23.882000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('171', 'PIC247020131211000002', '71', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '82', 'P0005', '河北润宏建筑机械制造有限公司', '1', '91', '92', '4', 'PPO2470201312040009', '1', '3', null, '2265', '张尚武', '2013-12-11 17:23:29.000000', '2262', '马平', '2013-12-25 16:44:27.000000', '2013-12-25 16:57:18.893000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('172', 'PIC247020131212000001', '122', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '127', '4', 'PPO2470201312100001', '1', '3', null, '2265', '张尚武', '2013-12-12 09:29:05.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.758000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('173', 'PICSH02420131212000001', '123', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10236', '1', 'PSO2470201312060008', '1', '2', null, '1160', 'SH024', '2013-12-12 10:30:24.000000', null, null, null, '2013-12-12 10:42:50.932000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('176', 'PIC247020131212000002', '102', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '79', 'P0009', '长沙英飞工贸有限公司', '1', '88', '122', '4', 'PPO2470201312090002', '1', '3', null, '2265', '张尚武', '2013-12-12 14:52:47.000000', '2136', 'P0009', '2013-12-25 10:33:44.000000', '2013-12-25 10:46:34.737000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('177', 'PICSH00720131212000001', '129', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10228', '1', 'PSO2470201312060002', '1', '2', null, '1144', 'SH007', '2013-12-12 14:57:00.000000', null, null, null, '2013-12-12 15:09:27.153000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('182', 'PIC247020131213000003', '131', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '6', 'SH006', '商混新疆中心站（新疆华域盛）', '2', '1066', '181', '2', 'PSR2470201312130001', '1', '3', null, '2265', '张尚武', '2013-12-13 17:01:02.000000', '2301', '张奉云', '2014-01-20 08:41:52.000000', '2014-01-20 08:55:31.766000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('184', 'PICSH01920131214000001', '133', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10277', '1', 'PSO2470201312100004', '1', '2', null, '1156', 'SH019', '2013-12-14 12:40:12.000000', null, null, null, '2013-12-14 12:52:43.106000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('185', 'PIC247020131214000001', '97', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '1', '80', '105', '4', 'PPO2470201312060009', '1', '3', null, '2269', '高利军', '2013-12-14 14:08:16.000000', '2128', 'P0012', '2014-01-07 15:57:18.000000', '2014-01-07 16:10:34.101000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('186', 'PIC247020131215000001', '85', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '1', '80', '98', '4', 'PPO2470201312060002', '1', '3', null, '2269', '高利军', '2013-12-15 08:50:25.000000', '2128', 'P0012', '2014-01-07 15:57:18.000000', '2014-01-07 16:10:34.107000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('188', 'PICSH00920131215000001', '136', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10238', '1', 'PSO2470201312060010', '1', '2', null, '1146', 'SH009', '2013-12-15 15:01:13.000000', null, null, null, '2013-12-15 15:13:45.856000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('189', 'PICSH00920131215000002', '134', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10350', '1', 'PSO2470201312130013', '1', '2', null, '1146', 'SH009', '2013-12-15 16:16:34.000000', null, null, null, '2013-12-15 16:29:06.517000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('190', 'PICSH00920131215000003', '135', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10334', '1', 'PSO2470201312120018', '1', '2', null, '1146', 'SH009', '2013-12-15 16:16:50.000000', null, null, null, '2013-12-15 16:29:23.225000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('192', 'PICSH02920131216000002', '139', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10328', '1', 'PSO2470201312120013', '1', '2', null, '1165', 'SH029', '2013-12-16 08:49:05.000000', null, null, null, '2013-12-16 09:01:39.478000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('200', 'PIC247020131216000003', '125', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '95', '4', 'PPO2470201312050002', '1', '3', null, '2269', '高利军', '2013-12-16 09:56:25.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.770000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('201', 'PIC247020131216000004', '74', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '94', '4', 'PPO2470201312050001', '1', '3', null, '2269', '高利军', '2013-12-16 10:18:13.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.776000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('207', 'PIC247020131216000010', '62', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '82', '4', 'PPO2470201312030002', '1', '3', null, '2269', '高利军', '2013-12-16 15:42:08.000000', '2766', '王兴超', '2014-10-13 14:47:53.000000', '2014-10-13 14:45:03.624000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('208', 'PICSH00720131216000001', '145', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10282', '1', 'PSO2470201312100009', '1', '2', null, '1144', 'SH007', '2013-12-16 16:55:58.000000', null, null, null, '2013-12-16 17:08:32.896000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('209', 'PICSH00720131216000002', '146', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10316', '1', 'PSO2470201312120004', '1', '2', null, '1144', 'SH007', '2013-12-16 16:56:25.000000', null, null, null, '2013-12-16 17:09:00.338000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('210', 'PICSH00720131216000003', '147', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10325', '1', 'PSO2470201312120010', '1', '2', null, '1144', 'SH007', '2013-12-16 17:31:29.000000', null, null, null, '2013-12-16 17:44:04.504000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('211', 'PIC247020131216000011', '148', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '151', 'A0497', '北京宇远工贸有限公司', '1', '160', '161', '4', 'PPO2470201312160001', '1', '2', null, '2265', '张尚武', '2013-12-16 17:40:04.000000', null, null, null, '2013-12-16 17:52:38.712000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('212', 'PICSH00720131217000001', '155', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10299', '1', 'PSO2470201312110011', '1', '2', null, '1144', 'SH007', '2013-12-17 10:27:56.000000', null, null, null, '2013-12-17 10:40:32.979000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('225', 'PIC247020131218000005', '126', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '96', '4', 'PPO2470201312050003', '1', '3', null, '2269', '高利军', '2013-12-18 09:46:29.000000', '2766', '王兴超', '2014-09-30 11:33:44.000000', '2014-09-30 11:31:14.541000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('226', 'PIC247020131218000006', '162', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '162', '4', 'PPO2470201312170001', '1', '3', null, '2269', '高利军', '2013-12-18 09:47:58.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.792000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('232', 'PIC247020131218000012', '181', '1', '1028', '商混设备配件库', '2', '2470', '赵澎', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '993', 'LSFJ002', '赵澎', '2', '179', '202', '2', 'PSR2470201312160001', '1', '3', '自己提报错误不要了', '2265', '张尚武', '2013-12-18 14:18:33.000000', '2301', '张奉云', '2014-01-14 16:06:31.000000', '2014-01-14 16:20:00.424000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('242', 'PICSH01920131220000001', '193', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10276', '1', 'PSO2470201312100003', '1', '2', null, '1156', 'SH019', '2013-12-20 13:23:17.000000', null, null, null, '2013-12-20 13:35:59.487000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('246', 'PICSH01120131220000001', '197', '11', '甘肃福通中心库', '甘肃福通中心库', '11', 'SH011', '商混兰州中心站（甘肃福通）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10459', '1', 'PSO2470201312190003', '1', '2', null, '1148', 'SH011', '2013-12-20 15:16:29.000000', null, null, null, '2013-12-20 15:29:10.920000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('257', 'PICSH03120131223000001', '196', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10438', '1', 'PSO2470201312180010', '1', '2', null, '1167', 'SH031', '2013-12-23 08:56:23.000000', null, null, null, '2013-12-23 09:09:10.266000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('258', 'PICSH03120131223000002', '210', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10301', '1', 'PSO2470201312110013', '1', '2', null, '1167', 'SH031', '2013-12-23 08:56:40.000000', null, null, null, '2013-12-23 09:09:26.757000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('259', 'PICSH03120131223000003', '211', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10255', '1', 'PSO2470201312090001', '1', '2', null, '1167', 'SH031', '2013-12-23 08:56:50.000000', null, null, null, '2013-12-23 09:09:36.771000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('264', 'PIC247020131223000001', '220', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '9', 'SH009', '商混合肥中心站（合肥庭华）', '2', '1046', '222', '2', 'PSR2470201312210001', '1', '3', '公司同意清退', '2265', '张尚武', '2013-12-23 13:53:08.000000', '2301', '张奉云', '2014-01-20 08:52:19.000000', '2014-01-20 09:05:58.853000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('265', 'PIC247020131223000002', '222', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '1', '80', '203', '4', 'PPO2470201312230003', '1', '3', null, '2269', '高利军', '2013-12-23 14:33:25.000000', '2128', 'P0012', '2014-01-07 15:57:18.000000', '2014-01-07 16:10:34.131000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('266', 'PIC247020131223000003', '221', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '1', '41', '202', '4', 'PPO2470201312230002', '1', '3', null, '2265', '张尚武', '2013-12-23 14:39:02.000000', '2267', '陆凌志', '2014-02-22 17:11:01.000000', '2014-02-22 17:25:44.820000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('284', 'PICSH02920131224000001', '227', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10331', '1', 'PSO2470201312120015', '1', '2', null, '1165', 'SH029', '2013-12-24 09:19:53.000000', null, null, null, '2013-12-24 09:32:42.396000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('286', 'PIC247020131224000004', '226', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '3557', 'FT003872', '唐山市丰润区军辉汽车销售服务处', '2', '639', '241', '2', 'PSR2470201312240001', '1', '3', null, '2269', '高利军', '2013-12-24 09:20:05.000000', '2301', '张奉云', '2014-01-15 09:20:44.000000', '2014-01-15 09:34:14.359000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('287', 'PIC247020131224000005', '217', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', '2470', '北京福田雷萨泵送机械公司', '9', 'SH009', '商混合肥中心站（合肥庭华）', '2', '1046', '201', '2', 'PSR2470201312150001', '1', '3', null, '2268', '韩宏波', '2013-12-24 10:05:56.000000', '2301', '张奉云', '2014-01-07 15:13:23.000000', '2014-01-07 15:26:38.890000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('288', 'PICSH01520131225000001', '229', '26', 'CZWJZXZ', '常州武进', '14', 'SH015', '商混常州中心站', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10476', '1', 'PSO2470201312200003', '1', '2', null, '1152', 'SH015', '2013-12-25 09:00:53.000000', null, null, null, '2013-12-25 09:13:44.334000', null, null, null, null);
INSERT INTO `parts_in_bound_check_bill` VALUES ('289', 'PICSH02420131225000001', '232', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '1', '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, '10507', '1', 'PSO2470201312220005', '1', '2', null, '1160', 'SH024', '2013-12-25 13:31:10.000000', null, null, null, '2013-12-25 13:44:01.677000', null, null, null, null);

-- ----------------------------
-- Table structure for parts_in_bound_check_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `parts_in_bound_check_bill_detail`;
CREATE TABLE `parts_in_bound_check_bill_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_IN_BOUND_CHECK_BILL_ID` int(11) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `SPAREPART_CODE` varchar(50) NOT NULL,
  `SPAREPART_NAME` varchar(100) NOT NULL,
  `WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `WAREHOUSE_AREA_CODE` varchar(50) NOT NULL,
  `INSPECTED_QUANTITY` int(11) NOT NULL,
  `SETTLEMENT_PRICE` decimal(19,4) NOT NULL,
  `COST_PRICE` decimal(19,4) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SPARE_ORDER_REMARK` varchar(200) DEFAULT NULL,
  `OVERSEAS_PARTS_FIGURE` varchar(25) DEFAULT NULL,
  `OVERSEAS_PROJECT_NUMBER` int(11) DEFAULT NULL,
  `ZXIANGI` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PINBCHKBIDET_PINBCHKBIID` (`PARTS_IN_BOUND_CHECK_BILL_ID`) USING BTREE,
  KEY `IDX_PINBCHKBIDET_SPARTID` (`SPAREPART_ID`) USING BTREE,
  KEY `IDX_PINBCHKBIDET_WAREHAID` (`WAREHOUSE_AREA_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_in_bound_check_bill_detail
-- ----------------------------
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('145', '71', '12636', '5052HB5000022P0008A', '管卡', '278', 'JY01', '100', '52.0000', '52.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('146', '71', '12784', '5037HB5100032P0008A', '90度改制弯管', '278', 'JY01', '10', '300.0000', '300.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('147', '142', '12782', '5037HB5200175P0008A', '铰链', '278', 'JY01', '15', '788.0000', '788.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('148', '142', '12780', '5037HB2500036P0008A', '铰链', '278', 'JY01', '6', '820.0000', '820.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('149', '142', '12531', '5039HB5000012P0008A', '90°改制', '278', 'JY01', '15', '478.0000', '478.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('150', '142', '12577', '5037HB5000007P0008A', '变径输送管', '278', 'JY01', '15', '530.0000', '530.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('151', '142', '12783', '5037HB5000052P0008A', '变径输送管', '278', 'JY01', '5', '510.0000', '510.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('152', '142', '12576', '5037HB5000006P0008A', '45度弯管', '278', 'JY01', '40', '103.0000', '103.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('153', '142', '12843', '5052HB5100016P0008A', '90度弯管225带盘', '278', 'JY01', '10', '276.0000', '276.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('154', '142', '12851', '5047HB5000037P0008A', '1275-184*148', '278', 'JY01', '6', '480.0000', '480.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('155', '142', '12637', '5052HB5000070P0008A', '180管卡', '278', 'JY01', '10', '160.0000', '160.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('156', '142', '12596', '5037HB5000032P0008A', '管卡', '278', 'JY01', '60', '52.0000', '52.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('157', '142', '12788', '5045HB5100004P0008A', '90度弯管', '278', 'JY01', '50', '170.0000', '170.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('158', '142', '12792', '5037HB2500017P0008A', '铰链', '278', 'JY01', '6', '820.0000', '820.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('159', '142', '12514', '5056HB5000038P0008A', '5度弯管', '278', 'JY01', '15', '134.0000', '134.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('160', '142', '12849', '5047HB5000034P0008A', '90度弯管405带盘', '278', 'JY01', '10', '330.0000', '330.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('161', '142', '12518', '5056HB5000050P0008A', '36度弯管230法兰', '278', 'JY01', '8', '1170.0000', '1170.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('162', '142', '12943', '5047HB5000044P0008A', '25°弯管148法兰', '278', 'JY01', '10', '220.0000', '220.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('163', '142', '12776', '5037HB5000031P0008A', '90度改制弯管', '278', 'JY01', '12', '280.0000', '280.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('164', '142', '12781', '5037HB5200174P0008A', '输送大弯管', '278', 'JY01', '12', '475.0000', '475.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('165', '142', '12842', '5052HB5100002P0008A', '改制12度弯管', '278', 'JY01', '8', '126.0000', '126.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('191', '145', '3655', '5008JB9000070SYB30A', '软轴控制器', '232', 'SH029B1', '1', '238.0000', '0.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('192', '145', '12446', 'LJB000256SYB30A', '散热器温度传感器(螺纹外径16）', '232', 'SH029B1', '1', '325.0000', '0.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('295', '153', '271', 'LHB10000064S00238A', '45变幅油缸4密封包(G98D)', '49617', 'JY01', '1', '904.0000', '753.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('296', '153', '277', 'LHB10000058S00238A', '37垂直油缸密封包(G82D)', '49617', 'JY01', '1', '1332.0000', '1110.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('297', '153', '13886', '5008JB6000048A1001A', '右组合后尾灯', '49617', 'JY01', '2', '55.0000', '40.8800', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('298', '153', '2314', '5009JB3000015A1249A', '高压油管', '49617', 'JY01', '1', '188.0000', '148.8700', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('299', '153', '780', '5037HB3300074S00154A', '管接头', '49617', 'JY01', '2', '36.0000', '11.2800', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('300', '153', '4293', '5037HB2000256A6899A', '密封圈', '49617', 'JY01', '1', '144.0000', '120.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('301', '153', '13627', '5037HB6300165S00804A', '模拟量模块', '49617', 'JY01', '1', '1681.0000', '1400.6400', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('302', '153', '557', '5037HB8200005S00364A', '转换控制开关(斯宝)', '49617', 'JY01', '1', '1442.0000', '1280.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('303', '153', '735', '5037HB1000043S00231A', '衬套（55×50×50）', '49617', 'JY01', '1', '11.0000', '9.5200', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('304', '153', '784', '5037HB3300069S00154A', '管接头', '49617', 'JY01', '2', '18.0000', '4.8800', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('305', '153', '5819', '5037HB1000047SYB30A', '衬套（100×95×60）', '49617', 'JY01', '2', '24.0000', '20.9100', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('306', '153', '786', '5037HB3300067S00154A', '管接头', '49617', 'JY01', '2', '7.0000', '5.3500', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('307', '153', '13377', '5057HB5100008P0005A', '输送管1975', '49617', 'JY01', '1', '433.0000', '325.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('308', '153', '2118', '5008JB7000021A6899A', '水泵(国产)', '49617', 'JY01', '1', '1260.0000', '1050.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('309', '153', '3745', '5010JB3000047A1249A', '油泵泄油管', '49617', 'JY01', '1', '96.0000', '62.6200', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('310', '153', '785', '5037HB3300068S00154A', '管接头', '49617', 'JY01', '2', '8.0000', '4.2000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('311', '153', '174', '5037HB3300041S00154A', '管接头', '49617', 'JY01', '3', '40.0000', '10.8700', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('312', '153', '721', '5037HB3300062S00154A', '管接头', '49617', 'JY01', '2', '41.0000', '16.4900', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('313', '153', '402', '5037HB6100041S00804A', '温度传感器', '49617', 'JY01', '1', '1169.0000', '480.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('314', '153', '235', '5045HB3300043S00032A', '测压软管(5000mm)', '49617', 'JY01', '2', '350.0000', '154.9600', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('315', '153', '13871', '5037HB4100174SYB30A', '液位计', '49617', 'JY01', '1', '1420.0000', '200.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('316', '153', '4110', '5037HB3300029S00154A', '管接头', '49617', 'JY01', '2', '74.0000', '23.9600', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('317', '153', '4557', '5048HB3000116SYB30A', '传感器', '49617', 'JY01', '2', '264.0000', '220.0000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('318', '153', '5769', '5042HB5000003A6919A', '输送管720', '49617', 'JY01', '1', '236.0000', '286.1500', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('319', '153', '3111', '5008JB9000098SYB30A', '定位板', '49617', 'JY01', '2', '62.0000', '47.5000', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('320', '153', '716', '5037HB3300054S00154A', '管接头', '49617', 'JY01', '2', '10.0000', '6.9900', null, null, null, null, null);
INSERT INTO `parts_in_bound_check_bill_detail` VALUES ('321', '153', '4211', '5037HB3300176SYB30A', '美制螺钉', '49617', 'JY01', '1', '4.0000', '2.2800', null, null, null, null, null);

-- ----------------------------
-- Table structure for parts_in_bound_plan
-- ----------------------------
DROP TABLE IF EXISTS `parts_in_bound_plan`;
CREATE TABLE `parts_in_bound_plan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `WAREHOUSE_CODE` varchar(50) NOT NULL,
  `WAREHOUSE_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_CODE` varchar(50) NOT NULL,
  `STORAGE_COMPANY_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BRANCH_CODE` varchar(50) NOT NULL,
  `BRANCH_NAME` varchar(100) NOT NULL,
  `PARTS_SALES_CATEGORY_ID` int(11) NOT NULL,
  `COUNTERPART_COMPANY_ID` int(11) NOT NULL,
  `COUNTERPART_COMPANY_CODE` varchar(50) NOT NULL,
  `COUNTERPART_COMPANY_NAME` varchar(100) NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `SOURCE_CODE` varchar(50) NOT NULL,
  `INBOUND_TYPE` int(11) NOT NULL,
  `CUSTOMER_ACCOUNT_ID` int(11) DEFAULT NULL,
  `ORIGINAL_REQUIREMENT_BILL_ID` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_TYPE` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_CODE` varchar(50) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `IF_WMS_INTERFACE` tinyint(4) NOT NULL,
  `ARRIVAL_DATE` datetime(6) DEFAULT NULL,
  `REMARK` varchar(400) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `GPMS_PUR_ORDER_CODE` varchar(50) DEFAULT NULL,
  `PARTS_PURCHASE_ORDER_TYPE_ID` int(11) DEFAULT NULL,
  `REQUESTED_DELIVERY_TIME` datetime(6) DEFAULT NULL,
  `RETURN_CONTAINER_NUMBER` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PINBOUNDPL_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_CPCOMPANYID` (`COUNTERPART_COMPANY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_CUSTACCOID` (`CUSTOMER_ACCOUNT_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_OREQBIID` (`ORIGINAL_REQUIREMENT_BILL_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_PSCATEGID` (`PARTS_SALES_CATEGORY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_SCOMPANYID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_SOURCEID` (`SOURCE_ID`) USING BTREE,
  KEY `IDX_PINBOUNDPL_WAREHID` (`WAREHOUSE_ID`) USING BTREE,
  KEY `IDX_PINBPLAN_CREATETIME` (`CREATE_TIME`) USING BTREE,
  KEY `IDX_PINBPLAN_STATUS` (`STATUS`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_in_bound_plan
-- ----------------------------
INSERT INTO `parts_in_bound_plan` VALUES ('62', 'PIP247020131203000002', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '42', 'PSS2470201312030002', '1', '41', '82', '4', 'PPO2470201312030002', '1', '0', '2013-12-03 15:18:43.000000', null, '2267', '陆凌志', '2013-12-03 15:18:50.000000', '2269', '高利军', '2013-12-18 09:44:43.000000', '2013-12-18 09:57:20.839000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('66', 'PIP247020131204000003', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '80', 'P0008', '湖北谷城元通机械有限公司', '46', 'PSS2470201312040003', '1', '89', '87', '4', 'PPO2470201312040004', '2', '0', '2013-12-04 10:51:05.000000', null, '2262', '马平', '2013-12-04 10:51:09.000000', '2269', '高利军', '2013-12-04 16:41:19.000000', '2013-12-04 16:53:31.847000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('69', 'PIP247020131204000006', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '49', 'PSS2470201312040006', '1', '80', '90', '4', 'PPO2470201312040007', '2', '0', '2013-12-04 12:52:05.000000', null, '2262', '马平', '2013-12-04 12:52:10.000000', '2269', '高利军', '2013-12-16 15:39:25.000000', '2013-12-16 15:52:00.770000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('70', 'PIPSH01920131204000001', '9', 'SH009', '合肥庭华商混库', '18', 'SH019', '商混海城中心站', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '383', 'PS247020131203000003', '1', null, '10137', '1', 'PSO2470201312030001', '2', '0', null, null, '1156', 'SH019', '2013-12-04 12:54:58.000000', '1156', 'SH019', '2013-12-04 15:47:49.000000', '2013-12-04 16:00:02.819000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('71', 'PIP247020131204000007', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '82', 'P0005', '河北润宏建筑机械制造有限公司', '50', 'PSS2470201312040007', '1', '91', '92', '4', 'PPO2470201312040009', '2', '0', '2013-12-04 13:26:15.000000', null, '2262', '马平', '2013-12-04 13:26:18.000000', '2265', '张尚武', '2013-12-11 17:23:29.000000', '2013-12-11 17:35:55.299000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('72', 'PIPSH02420131204000001', '9', 'SH009', '合肥庭华商混库', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '399', 'PS247020131204000006', '1', null, '10161', '1', 'PSO2470201312030018', '2', '0', null, null, '1160', 'SH024', '2013-12-04 21:05:38.000000', '1160', 'SH024', '2013-12-04 21:06:52.000000', '2013-12-04 21:19:05.201000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('87', 'PIP247020131206000006', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '64', 'PSS2470201312060004', '1', '80', '100', '4', 'PPO2470201312060004', '1', '0', '2013-12-06 16:26:03.000000', null, '2262', '马平', '2013-12-06 16:26:06.000000', '2269', '高利军', '2013-12-16 15:14:39.000000', '2013-12-16 15:27:14.185000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('88', 'PIPSH00720131206000001', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '425', 'PS247020131206000002', '1', null, '10229', '1', 'PSO2470201312060003', '1', '0', null, null, '1144', 'SH007', '2013-12-06 16:29:41.000000', '1144', 'SH007', '2013-12-06 16:31:42.000000', '2013-12-06 16:43:58.639000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('90', 'PIP247020131206000008', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '65', 'PSS2470201312060005', '1', '80', '101', '4', 'PPO2470201312060005', '3', '0', '2013-12-06 16:32:19.000000', null, '2262', '马平', '2013-12-06 16:32:22.000000', '2269', '高利军', '2013-12-16 16:55:34.000000', '2013-12-16 17:08:08.785000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('97', 'PIP247020131206000013', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '69', 'PSS2470201312060009', '1', '80', '105', '4', 'PPO2470201312060009', '2', '0', '2013-12-06 17:26:49.000000', null, '2262', '马平', '2013-12-06 17:26:51.000000', '2269', '高利军', '2013-12-14 14:08:16.000000', '2013-12-14 14:20:47.396000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('100', 'PIPSH01920131208000001', '9', 'SH009', '合肥庭华商混库', '18', 'SH019', '商混海城中心站', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '403', 'PS247020131204000010', '1', null, '10183', '1', 'PSO2470201312040003', '2', '0', null, null, '1156', 'SH019', '2013-12-08 11:08:35.000000', '1156', 'SH019', '2013-12-08 11:09:53.000000', '2013-12-08 11:22:12.614000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('104', 'PIPSH00720131209000002', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '410', 'PS247020131205000003', '1', null, '10210', '1', 'PSO2470201312050003', '2', '0', null, null, '1144', 'SH007', '2013-12-09 09:57:52.000000', '1144', 'SH007', '2013-12-09 10:03:38.000000', '2013-12-09 10:15:59.899000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('108', 'PIPSH02220131209000001', '9', 'SH009', '合肥庭华商混库', '21', 'SH022', '商混昆明博海代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '394', 'PS247020131204000001', '1', null, '10155', '1', 'PSO2470201312030012', '2', '0', null, null, '1159', 'SH022', '2013-12-09 12:05:16.000000', '1159', 'SH022', '2013-12-09 12:07:32.000000', '2013-12-09 12:19:53.159000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('110', 'PIP247020131209000004', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '74', 'PSS2470201312090004', '1', '41', '125', '4', 'PPO2470201312090005', '2', '0', '2013-12-09 12:35:26.000000', null, '2267', '陆凌志', '2013-12-09 12:35:37.000000', '2265', '张尚武', '2014-01-17 14:56:22.000000', '2014-01-17 15:09:56.709000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('112', 'PIP247020131209000006', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '76', 'PSS2470201312090006', '1', '41', '126', '4', 'PPO2470201312090006', '1', '0', '2013-12-09 12:36:04.000000', null, '2267', '陆凌志', '2013-12-09 12:36:20.000000', null, null, null, '2013-12-09 12:48:41.875000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('113', 'PIPSH01520131209000001', '9', 'SH009', '合肥庭华商混库', '14', 'SH015', '商混常州中心站', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '388', 'PS247020131203000008', '1', null, '10138', '1', 'PSO2470201312030002', '2', '0', null, null, '1152', 'SH015', '2013-12-09 14:43:57.000000', '1152', 'SH015', '2013-12-09 14:46:27.000000', '2013-12-09 14:58:49.289000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('117', 'PIP247020131211000001', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '102', 'P0007', '湖南托普斯新材料有限公司', '77', 'PSS2470201312110001', '1', '111', '129', '4', 'PPO2470201312110001', '2', '0', '2013-12-11 09:41:59.000000', null, '2262', '马平', '2013-12-11 09:42:02.000000', '2265', '张尚武', '2014-03-21 09:42:16.000000', '2014-03-21 09:57:50.462000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('120', 'PIPSH00720131211000001', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '385', 'PS247020131203000005', '1', null, '10129', '1', 'PSO2470201312020012', '2', '0', null, null, '1144', 'SH007', '2013-12-11 14:45:47.000000', '1144', 'SH007', '2013-12-11 14:46:45.000000', '2013-12-11 14:59:10.622000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('123', 'PIPSH02420131212000001', '9', 'SH009', '合肥庭华商混库', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '435', 'PS247020131206000010', '1', null, '10236', '1', 'PSO2470201312060008', '2', '0', null, null, '1160', 'SH024', '2013-12-12 10:29:48.000000', '1160', 'SH024', '2013-12-12 10:30:24.000000', '2013-12-12 10:42:50.880000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('124', 'PIP247020131212000002', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '82', 'PSS2470201312120002', '1', '41', '128', '4', 'PPO2470201312100002', '2', '0', '2013-12-12 11:28:51.000000', null, '2267', '陆凌志', '2013-12-12 11:28:57.000000', '2265', '张尚武', '2014-01-18 09:17:35.000000', '2014-01-18 09:31:11.278000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('125', 'PIP247020131212000003', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '52', 'PSS2470201312050002', '1', '41', '95', '4', 'PPO2470201312050002', '3', '0', '2013-12-12 11:29:56.000000', null, '2267', '陆凌志', '2013-12-12 11:32:48.000000', '2265', '张尚武', '2013-12-18 11:19:02.000000', '2013-12-18 11:31:40.401000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('126', 'PIP247020131212000004', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '53', 'PSS2470201312050003', '1', '41', '96', '4', 'PPO2470201312050003', '3', '0', '2013-12-12 11:33:28.000000', null, '2267', '陆凌志', '2013-12-12 11:33:58.000000', '2265', '张尚武', '2014-01-17 15:15:52.000000', '2014-01-17 15:29:26.939000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('129', 'PIPSH00720131212000001', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '426', 'PS247020131206000003', '1', null, '10228', '1', 'PSO2470201312060002', '2', '0', null, null, '1144', 'SH007', '2013-12-12 14:56:24.000000', '1144', 'SH007', '2013-12-12 14:57:00.000000', '2013-12-12 15:09:27.128000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('131', 'PIP247020131213000001', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '6', 'SH006', '商混新疆中心站（新疆华域盛）', '516', 'PSSH00620131213000001', '2', '1066', '181', '2', 'PSR2470201312130001', '2', '0', null, null, '2265', '张尚武', '2013-12-13 16:50:21.000000', '2265', '张尚武', '2013-12-13 17:01:02.000000', '2013-12-13 17:13:33.139000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('132', 'PIPSH00920131214000001', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '476', 'PS247020131211000012', '1', null, '10287', '1', 'PSO2470201312110004', '2', '0', null, null, '1146', 'SH009', '2013-12-14 11:08:29.000000', '1146', 'SH009', '2013-12-14 11:10:57.000000', '2013-12-14 11:23:28.208000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('133', 'PIPSH01920131214000001', '9', 'SH009', '合肥庭华商混库', '18', 'SH019', '商混海城中心站', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '471', 'PS247020131211000007', '1', null, '10277', '1', 'PSO2470201312100004', '2', '0', null, null, '1156', 'SH019', '2013-12-14 12:39:41.000000', '1156', 'SH019', '2013-12-14 12:40:12.000000', '2013-12-14 12:52:43.380000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('134', 'PIPSH00920131215000001', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '515', 'PS247020131213000012', '1', null, '10350', '1', 'PSO2470201312130013', '2', '0', null, null, '1146', 'SH009', '2013-12-15 14:59:20.000000', '1146', 'SH009', '2013-12-15 16:16:34.000000', '2013-12-15 16:29:06.488000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('135', 'PIPSH00920131215000002', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '504', 'PS247020131213000003', '1', null, '10334', '1', 'PSO2470201312120018', '2', '0', null, null, '1146', 'SH009', '2013-12-15 14:59:56.000000', '1146', 'SH009', '2013-12-15 16:16:50.000000', '2013-12-15 16:29:23.192000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('136', 'PIPSH00920131215000003', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '494', 'PS247020131212000007', '1', null, '10238', '1', 'PSO2470201312060010', '2', '0', null, null, '1146', 'SH009', '2013-12-15 15:00:17.000000', '1146', 'SH009', '2013-12-15 15:01:13.000000', '2013-12-15 15:13:45.829000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('137', 'PIPSH00920131215000004', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '513', 'PS247020131213000010', '1', null, '10349', '1', 'PSO2470201312130012', '3', '0', null, null, '1146', 'SH009', '2013-12-15 17:19:20.000000', '1146', 'SH009', '2013-12-27 14:00:32.000000', '2013-12-27 14:13:27.114000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('143', 'PIPSH03120131216000004', '9', 'SH009', '合肥庭华商混库', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '474', 'PS247020131211000010', '1', null, '10297', '1', 'PSO2470201312110010', '2', '0', null, null, '1167', 'SH031', '2013-12-16 09:38:43.000000', '1167', 'SH031', '2013-12-16 09:44:13.000000', '2013-12-16 09:56:46.914000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('144', 'PIPSH03120131216000005', '9', 'SH009', '合肥庭华商混库', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '475', 'PS247020131211000011', '1', null, '10300', '1', 'PSO2470201312110012', '2', '0', null, null, '1167', 'SH031', '2013-12-16 09:38:55.000000', '1167', 'SH031', '2013-12-16 09:44:22.000000', '2013-12-16 09:56:56.326000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('145', 'PIPSH00720131216000001', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '460', 'PS247020131210000008', '1', null, '10282', '1', 'PSO2470201312100009', '2', '0', null, null, '1144', 'SH007', '2013-12-16 16:49:40.000000', '1144', 'SH007', '2013-12-16 16:55:58.000000', '2013-12-16 17:08:32.862000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('146', 'PIPSH00720131216000002', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '502', 'PS247020131213000001', '1', null, '10316', '1', 'PSO2470201312120004', '2', '0', null, null, '1144', 'SH007', '2013-12-16 16:53:21.000000', '1144', 'SH007', '2013-12-16 16:56:25.000000', '2013-12-16 17:09:00.266000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('147', 'PIPSH00720131216000003', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '503', 'PS247020131213000002', '1', null, '10325', '1', 'PSO2470201312120010', '2', '0', null, null, '1144', 'SH007', '2013-12-16 17:30:53.000000', '1144', 'SH007', '2013-12-16 17:31:29.000000', '2013-12-16 17:44:04.461000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('148', 'PIP247020131216000001', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '151', 'A0497', '北京宇远工贸有限公司', '101', 'PSS2470201312160001', '1', '160', '161', '4', 'PPO2470201312160001', '2', '0', '2013-12-16 17:36:27.000000', null, '2262', '马平', '2013-12-16 17:38:17.000000', '2265', '张尚武', '2013-12-16 17:40:04.000000', '2013-12-16 17:52:38.686000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('149', 'PIPSH02220131216000001', '9', 'SH009', '合肥庭华商混库', '21', 'SH022', '商混昆明博海代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '440', 'PS247020131207000004', '1', null, '10246', '1', 'PSO2470201312070002', '2', '0', null, null, '1159', 'SH022', '2013-12-16 22:14:06.000000', '1159', 'SH022', '2013-12-17 10:35:58.000000', '2013-12-17 10:48:34.173000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('150', 'PIPSH02220131216000002', '9', 'SH009', '合肥庭华商混库', '21', 'SH022', '商混昆明博海代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '381', 'PS247020131203000001', '1', null, '10125', '1', 'PSO2470201312020008', '2', '0', null, null, '1159', 'SH022', '2013-12-16 22:14:24.000000', '1159', 'SH022', '2013-12-17 10:39:10.000000', '2013-12-17 10:51:46.265000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('151', 'PIPSH02220131216000003', '9', 'SH009', '合肥庭华商混库', '21', 'SH022', '商混昆明博海代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '382', 'PS247020131203000002', '1', null, '10128', '1', 'PSO2470201312020011', '2', '0', null, null, '1159', 'SH022', '2013-12-16 22:14:48.000000', '1159', 'SH022', '2013-12-17 10:45:12.000000', '2013-12-17 10:57:48.615000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('152', 'PIPSH02220131216000004', '9', 'SH009', '合肥庭华商混库', '21', 'SH022', '商混昆明博海代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '384', 'PS247020131203000004', '1', null, '10126', '1', 'PSO2470201312020009', '2', '0', null, null, '1159', 'SH022', '2013-12-16 22:15:00.000000', '1159', 'SH022', '2013-12-17 10:41:35.000000', '2013-12-17 10:54:11.567000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('155', 'PIPSH00720131217000001', '9', 'SH009', '合肥庭华商混库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '477', 'PS247020131211000013', '1', null, '10299', '1', 'PSO2470201312110011', '2', '0', null, null, '1144', 'SH007', '2013-12-17 10:26:04.000000', '1144', 'SH007', '2013-12-17 10:27:56.000000', '2013-12-17 10:40:32.750000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('157', 'PIP247020131217000001', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '71', 'P0012', '湖南搏盛天宏新材料技术有限公司', '102', 'PSS2470201312170001', '1', '80', '165', '4', 'PPO2470201312170004', '2', '0', '2013-12-17 15:13:45.000000', null, '2262', '马平', '2013-12-17 15:14:07.000000', '2269', '高利军', '2013-12-18 09:34:38.000000', '2013-12-18 09:47:15.858000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('159', 'PIP247020131217000003', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '107', 'PSS2470201312170006', '1', '41', '167', '4', 'PPO2470201312170006', '2', '0', '2013-12-17 15:23:13.000000', null, '2267', '陆凌志', '2013-12-17 15:23:17.000000', '2265', '张尚武', '2013-12-18 13:34:03.000000', '2013-12-18 13:46:41.270000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('160', 'PIP247020131217000004', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '106', 'PSS2470201312170005', '1', '41', '166', '4', 'PPO2470201312170005', '3', '0', '2013-12-17 15:23:18.000000', null, '2267', '陆凌志', '2013-12-17 16:12:03.000000', '2265', '张尚武', '2014-01-18 09:19:59.000000', '2014-01-18 09:33:35.503000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('162', 'PIP247020131217000006', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '103', 'PSS2470201312170002', '1', '41', '162', '4', 'PPO2470201312170001', '3', '0', '2013-12-17 16:12:18.000000', null, '2267', '陆凌志', '2013-12-17 16:12:30.000000', '2265', '张尚武', '2013-12-24 09:01:45.000000', '2013-12-24 09:14:34.371000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('181', 'PIP247020131218000001', '9', 'SH009', '合肥庭华商混库', '2', '2470', '赵澎', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '993', 'LSFJ002', '赵澎', '202', 'PSR2470201312160001', '2', '179', '202', '2', 'PSR2470201312160001', '2', '0', null, null, '2265', '张尚武', '2013-12-18 14:16:16.000000', '2265', '张尚武', '2013-12-18 14:18:33.000000', '2013-12-18 14:31:11.506000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('182', 'PIP247020131218000002', '9', 'SH009', '合肥庭华商混库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '108', 'PSS2470201312180001', '1', '41', '168', '4', 'PPO2470201312180001', '3', '0', '2013-12-18 14:55:05.000000', null, '2267', '陆凌志', '2013-12-18 14:55:11.000000', '2269', '高利军', '2013-12-19 09:12:22.000000', '2013-12-19 09:25:02.980000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('191', 'PIPSH00420131219000002', '9', 'SH009', '合肥庭华商混库', '3', 'FT003360', '商混河南代理库（河南阳杰）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '493', 'PS247020131212000006', '1', null, '10309', '1', 'PSO2470201312110018', '2', '0', null, null, '1140', 'SH004', '2013-12-19 18:04:54.000000', '1140', 'SH004', '2013-12-19 18:05:22.000000', '2013-12-19 18:18:03.160000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('203', 'PIPSH00920131221000002', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '558', 'PS247020131216000021', '1', null, '10235', '1', 'PSO2470201312060007', '2', '0', null, null, '1146', 'SH009', '2013-12-21 15:31:55.000000', '1146', 'SH009', '2013-12-21 15:37:20.000000', '2013-12-21 15:50:04.700000', null, null, null, null);
INSERT INTO `parts_in_bound_plan` VALUES ('204', 'PIPSH00920131221000003', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '549', 'PS247020131216000012', '1', null, '10394', '1', 'PSO2470201312160003', '2', '0', null, null, '1146', 'SH009', '2013-12-21 15:32:18.000000', '1146', 'SH009', '2013-12-21 15:37:04.000000', '2013-12-21 15:49:48.204000', null, null, null, null);

-- ----------------------------
-- Table structure for parts_in_bound_plan_detail
-- ----------------------------
DROP TABLE IF EXISTS `parts_in_bound_plan_detail`;
CREATE TABLE `parts_in_bound_plan_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_IN_BOUND_PLAN_ID` int(11) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `SPAREPART_CODE` varchar(50) NOT NULL,
  `SPAREPART_NAME` varchar(100) NOT NULL,
  `PLANNED_AMOUNT` int(11) NOT NULL,
  `INSPECTED_QUANTITY` int(11) DEFAULT NULL,
  `PRICE` decimal(19,4) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `SPARE_ORDER_REMARK` varchar(200) DEFAULT NULL,
  `OVERSEAS_PARTS_FIGURE` varchar(25) DEFAULT NULL,
  `OVERSEAS_PROJECT_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PINBPLANDET_PINBPLANID` (`PARTS_IN_BOUND_PLAN_ID`) USING BTREE,
  KEY `IDX_PINBPLANDET_SPARTID` (`SPAREPART_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=635 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_in_bound_plan_detail
-- ----------------------------
INSERT INTO `parts_in_bound_plan_detail` VALUES ('-1', '71', '14643', '5047HB5000066P0005A', '180A管卡', '5', '5', '93.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('122', '62', '4332', '5037HB9400012SYB30A', '支腿垫板', '12', '12', '320.1000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('123', '62', '6224', '5048HB3000337SYB30A', '钢管', '1', '1', '31.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('124', '62', '7924', '5047HB3300003SYB30A', '臂架平衡阀', '4', '4', '1915.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('125', '62', '7928', '5047HB3300004SYB30A', '臂架平衡阀M6-370/390', '4', '4', '2060.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('126', '62', '7931', '5047HB3300006SYB30A', '臂架平衡阀P6-370/390', '1', '1', '1915.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('127', '62', '13233', '5050HB3600027SYB30A', '二通插装阀组件', '5', '5', '490.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('128', '62', '12766', 'Q218B1240SYB30A', '内六角圆柱头螺栓', '112', '112', '0.8900', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('129', '62', '14611', '5037HB9500128SYB30A', '含油轴承', '2', '2', '24.5000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('130', '62', '11604', '5039HB2110003SYB30A', '橡胶弹簧', '2', '2', '60.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('131', '62', '11612', '5039HB2110011SYB30A', '铜轴承', '2', '2', '217.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('132', '88', '11707', '5050HB2000022SYB30A', '感应套', '6', '6', '348.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('133', '88', '4439', 'Q40310SYB30A', '弹簧垫圈', '96', '96', '0.0300', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('223', '70', '13565', '5008JB2200000A0753A', '出料槽总成', '1', '1', '820.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('224', '70', '10251', '5008JB2200000SYB30A', '出料槽焊合', '7', '7', '820.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('225', '70', '2680', '5012JB2100009SYB30A', '进料斗总成', '10', '10', '1362.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('226', '71', '12662', '5045HB5100120P0005A', '90°弯管R180', '50', '50', '164.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('227', '71', '12664', '5037HB5100046P0005A', '90°加厚弯管R275', '30', '30', '221.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('228', '71', '12663', '5037HB5000026P0005A', '90°弯管R275', '50', '50', '205.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('230', '71', '12365', '5050HB5000013P0005A', '输送管1070（？180壁厚7mm）', '8', '8', '526.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('231', '71', '13163', '5056HB5000046P0005A', '输送管1125(？180,壁厚7mm)', '5', '5', '557.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('232', '71', '14487', '5039HB5000007P0005A', '输送管1805(？150,壁厚7mm)', '3', '3', '619.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('233', '71', '12665', '5052HB5000052P0005A', '变径输送管1285（？150-？180）', '8', '8', '635.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('234', '71', '13177', '5047HB5000003P0005A', '变径输送管1390（？125-？150）', '5', '5', '595.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('235', '71', '13180', '5047HB5000031P0005A', '变径输送管1450（？150-？180）', '5', '5', '721.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('236', '71', '13183', '5050HB5000011P0005A', '变径输送管1500（？125-？150）', '6', '6', '631.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('237', '71', '13185', '5052HB5000025P0005A', '变径输送管1505（？150-？180）', '3', '3', '742.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('238', '71', '13379', '5056HB5000048P0005A', '变径输送管1670（？150-？180）', '12', '12', '805.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('239', '71', '13157', '5056HB5000041P0005A', '变径输送管2500（？125-？150）', '6', '6', '986.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('240', '71', '13190', '5056HB5000019P0005A', '变径输送管2000（？125-？150）', '3', '3', '795.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('241', '71', '12336', '5047HB5000039P0005A', '输送管190', '6', '6', '116.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('242', '71', '12349', '5052HB5000017P0005A', '配置管310', '6', '6', '130.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('243', '71', '12964', '5037HB5100395P0005A', '泵管395', '6', '6', '140.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('244', '71', '12351', '5052HB5100006P0005A', '配置管478', '3', '3', '151.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('245', '71', '12352', '5048HB5000031P0005A', '输送管520', '6', '6', '154.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('246', '71', '12353', '5048HB5000036P0005A', '输送管534', '6', '6', '156.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('247', '71', '13081', '5045HB5000033P0005A', '输送管660', '6', '6', '171.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('248', '71', '13083', '5047HB5000049P0005A', '输送管693', '5', '5', '175.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('249', '71', '12355', '5047HB5000007P0005A', '输送管720', '5', '5', '178.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('250', '71', '13087', '5052HB5000085P0005A', '输送管743', '8', '8', '181.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('625', '96', '7401', '5042HB5100044A6919A', '输送管1975', '1', '1', '475.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('626', '96', '2134', '5008JB2400020A0753A', '拉簧2', '1', '1', '4.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('627', '96', '5087', '5008JB9000163SYB30A', '衬套', '2', '2', '42.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('628', '96', '2326', '5009JB3000070A1249A', '高压油管', '1', '1', '300.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('629', '96', '469', '5045HB3300565S00201A', '胶管总成', '1', '1', '223.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('630', '96', '13581', '5045HB3300273S00154A', '管接头', '1', '1', '74.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('631', '96', '175', '5037HB3300038S00154A', '管接头', '1', '1', '24.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('632', '96', '13605', '5037HB1000045S00231A', '衬套（60×55×60）', '1', '1', '16.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('633', '96', '800', '5012JB5200113SYB30A', '止推板', '1', '1', '37.0000', null, null, null, null);
INSERT INTO `parts_in_bound_plan_detail` VALUES ('634', '96', '661', '5037HB3300022S00154A', '管接头', '2', '2', '31.0000', null, null, null, null);

-- ----------------------------
-- Table structure for parts_out_bound_bill
-- ----------------------------
DROP TABLE IF EXISTS `parts_out_bound_bill`;
CREATE TABLE `parts_out_bound_bill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `PARTS_OUTBOUND_PLAN_ID` int(11) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `WAREHOUSE_CODE` varchar(50) NOT NULL,
  `WAREHOUSE_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_CODE` varchar(50) NOT NULL,
  `STORAGE_COMPANY_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BRANCH_CODE` varchar(50) NOT NULL,
  `BRANCH_NAME` varchar(100) NOT NULL,
  `PARTS_SALES_CATEGORY_ID` int(11) NOT NULL,
  `PARTS_SALES_ORDER_TYPE_ID` int(11) DEFAULT NULL,
  `PARTS_SALES_ORDER_TYPE_NAME` varchar(100) DEFAULT NULL,
  `COUNTERPART_COMPANY_ID` int(11) NOT NULL,
  `COUNTERPART_COMPANY_CODE` varchar(50) NOT NULL,
  `COUNTERPART_COMPANY_NAME` varchar(100) NOT NULL,
  `RECEIVING_COMPANY_ID` int(11) NOT NULL,
  `RECEIVING_COMPANY_CODE` varchar(50) NOT NULL,
  `RECEIVING_COMPANY_NAME` varchar(100) NOT NULL,
  `RECEIVING_WAREHOUSE_ID` int(11) DEFAULT NULL,
  `RECEIVING_WAREHOUSE_CODE` varchar(50) DEFAULT NULL,
  `RECEIVING_WAREHOUSE_NAME` varchar(100) DEFAULT NULL,
  `OUT_BOUND_TYPE` int(11) NOT NULL,
  `SHIPPING_METHOD` int(11) DEFAULT NULL,
  `CUSTOMER_ACCOUNT_ID` int(11) DEFAULT NULL,
  `ORIGINAL_REQUIREMENTBILLID` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_TYPE` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_CODE` varchar(50) NOT NULL,
  `SETTLEMENT_STATUS` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `ORDER_APPROVE_COMMENT` varchar(2000) DEFAULT NULL,
  `INTERFACE_RECORD_ID` varchar(25) DEFAULT NULL,
  `GPMS_PUR_ORDER_CODE` varchar(50) DEFAULT NULL,
  `CONTRACT_CODE` varchar(50) DEFAULT NULL,
  `OUT_BOUND_PACKPLAN_CODE` varchar(50) DEFAULT NULL,
  `PRINT_TIMES` int(11) DEFAULT '0',
  `PUR_DISTRIBUTION_STATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PARTSOUTBOUNDBIL_PARTSSAL` (`PARTS_SALES_ORDER_TYPE_ID`) USING BTREE,
  KEY `IDX_POUTBBI_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_POUTBBI_COPCOMPID` (`COUNTERPART_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBBI_CUSTACCID` (`CUSTOMER_ACCOUNT_ID`) USING BTREE,
  KEY `IDX_POUTBBI_ORREQBIID` (`ORIGINAL_REQUIREMENTBILLID`) USING BTREE,
  KEY `IDX_POUTBBI_POUTBPLANID` (`PARTS_OUTBOUND_PLAN_ID`) USING BTREE,
  KEY `IDX_POUTBBI_PSALESCATEGID` (`PARTS_SALES_CATEGORY_ID`) USING BTREE,
  KEY `IDX_POUTBBI_RECEIVINGCOMPID` (`RECEIVING_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBBI_RECEIVINGWAREHID` (`RECEIVING_WAREHOUSE_ID`) USING BTREE,
  KEY `IDX_POUTBBI_SCOMPID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBBI_WAREHID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=866 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_out_bound_bill
-- ----------------------------
INSERT INTO `parts_out_bound_bill` VALUES ('370', 'POSH03120131206000001', '412', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', null, null, null, '1', '8', '1070', '10240', '1', 'PSOSH031201312060001', '3', null, '1167', 'SH031', '2013-12-06 14:56:47.000000', '1167', 'SH031', '2013-12-12 14:09:38.000000', '2013-12-12 14:22:05.543000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('434', 'PO247020131210000002', '434', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2955', 'FT000058', '湖南华亿汽车销售有限公司', '2955', 'FT000058', '湖南华亿汽车销售有限公司', null, null, null, '1', '5', '1141', '10270', '1', 'PSO2470201312090012', '3', null, '2268', '韩宏波', '2013-12-10 08:41:20.000000', '2301', '张奉云', '2014-01-07 15:24:09.000000', '2014-01-07 15:37:25.850000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('443', 'POSH03120131209000001', '425', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3005', 'FT003945', '盐城市青年汽车修配厂', '3005', 'FT003945', '盐城市青年汽车修配厂', null, null, null, '1', '1', '1104', '10253', '1', 'PSOSH031201312080002', '3', null, '1167', 'SH031', '2013-12-09 09:03:52.000000', '1167', 'SH031', '2013-12-26 13:15:29.000000', '2013-12-26 13:28:21.708000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('449', 'PO247020131210000003', '428', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2640', 'FT000027', '武汉华天博亿工贸有限公司', '2640', 'FT000027', '武汉华天博亿工贸有限公司', null, null, null, '1', '1', '573', '10256', '1', 'PSO2470201312090002', '3', null, '2268', '韩宏波', '2013-12-10 08:41:39.000000', '2301', '张奉云', '2014-01-07 15:16:21.000000', '2014-01-07 15:29:36.173000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('450', 'PO247020131210000004', '430', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2640', 'FT000027', '武汉华天博亿工贸有限公司', '2640', 'FT000027', '武汉华天博亿工贸有限公司', null, null, null, '1', '1', '573', '10261', '1', 'PSO2470201312090005', '3', null, '2268', '韩宏波', '2013-12-10 08:41:53.000000', '2301', '张奉云', '2014-01-07 15:16:21.000000', '2014-01-07 15:29:36.177000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('484', 'POSH02420131212000001', '470', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2676', 'FT000056', '济南欧拓商贸有限公司', '2676', 'FT000056', '济南欧拓商贸有限公司', null, null, null, '1', '1', '1081', '10313', '1', 'PSOSH024201312120001', '2', null, '1160', 'SH024', '2013-12-12 10:25:08.000000', null, null, null, '2013-12-12 10:37:34.438000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('545', 'PO247020131216000007', '523', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '29', 'SH031', '商混徐州（凯驰）代理库', '29', 'SH031', '商混徐州（凯驰）代理库', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '1', '1', '1065', '10265', '1', 'PSO2470201312090007', '3', null, '2269', '高利军', '2013-12-16 13:43:37.000000', '2301', '张奉云', '2014-01-07 15:04:58.000000', '2014-01-07 15:18:14.919000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('546', 'PO247020131216000008', '524', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '18', 'FOTONSH029', '商混潍坊代理库', '1', '1', '1063', '10321', '1', 'PSO2470201312120008', '3', null, '2269', '高利军', '2013-12-16 13:43:59.000000', '2301', '张奉云', '2014-01-07 15:12:09.000000', '2014-01-07 15:25:24.228000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('547', 'PO247020131216000009', '525', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3', 'FT003360', '商混河南代理库（河南阳杰）', '3', 'FT003360', '商混河南代理库（河南阳杰）', '19', 'HNSH', '商混河南中心库', '1', '2', '1043', '10302', '1', 'PSO2470201312110014', '3', null, '2269', '高利军', '2013-12-16 13:44:36.000000', '2301', '张奉云', '2014-01-07 15:15:31.000000', '2014-01-07 15:28:46.552000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('550', 'PO247020131216000012', '528', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '7', 'SH007', '商混成都中心站（成都同创）', '7', 'SH007', '商混成都中心站（成都同创）', '7', '成都同创', '成都同创商混配件仓库', '1', '7', '1067', '10210', '1', 'PSO2470201312050003', '3', null, '2269', '高利军', '2013-12-16 13:45:54.000000', '2301', '张奉云', '2014-01-07 15:26:42.000000', '2014-01-07 15:39:57.887000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('552', 'PO247020131216000014', '535', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '18', 'FOTONSH029', '商混潍坊代理库', '1', '1', '1063', '10395', '1', 'PSO2470201312160004', '3', null, '2269', '高利军', '2013-12-16 13:46:46.000000', '2301', '张奉云', '2014-01-07 15:12:09.000000', '2014-01-07 15:25:24.233000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('553', 'PO247020131216000015', '536', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '17', 'SH018', '商混西安中心站', '17', 'SH018', '商混西安中心站', '20', 'SH018', '陕西伊斯特', '1', '5', '1054', '10352', '1', 'PSO2470201312130015', '3', null, '2269', '高利军', '2013-12-16 13:47:03.000000', '2301', '张奉云', '2014-01-07 15:31:06.000000', '2014-01-07 15:44:21.565000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('561', 'PO247020131216000024', '544', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '993', 'LSFJ002', '赵澎', '993', 'LSFJ002', '赵澎', null, null, null, '1', '8', '179', '10403', '1', 'PSO2470201312160011', '3', null, '2269', '高利军', '2013-12-16 14:50:31.000000', '2301', '张奉云', '2014-01-14 16:06:31.000000', '2014-01-14 16:20:00.479000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('562', 'PO247020131216000025', '545', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '合肥庭华商混库', '1', '1', '1046', '10235', '1', 'PSO2470201312060007', '3', null, '2269', '高利军', '2013-12-16 16:45:07.000000', '2301', '张奉云', '2014-01-07 15:13:23.000000', '2014-01-07 15:26:38.987000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('582', 'PO247020131217000018', '563', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '4303', 'FT006564', '商混（欧曼）长沙代理库', '4303', 'FT006564', '商混（欧曼）长沙代理库', '13', 'SH020', '商混长沙代理库仓库', '1', '1', '1056', '10410', '1', 'PSO2470201312170002', '3', null, '2265', '张尚武', '2013-12-17 13:55:09.000000', '2301', '张奉云', '2014-01-07 15:23:50.000000', '2014-01-07 15:37:06.820000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('583', 'POSH01520131217000001', '566', '26', 'CZWJZXZ', '常州武进', '14', 'SH015', '商混常州中心站（武进邹区）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3675', 'FT003764', '苏州市跃进汽车修配厂', '3675', 'FT003764', '苏州市跃进汽车修配厂', null, null, null, '1', '1', '1079', '10421', '1', 'PSOSH015201312170001', '2', null, '1152', 'SH015', '2013-12-17 13:57:19.000000', null, null, null, '2013-12-17 14:09:56.121000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('584', 'PO247020131217000019', '567', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '12', 'SH012', '商混深圳中心站（深圳福骏驰）', '12', 'SH012', '商混深圳中心站（深圳福骏驰）', '12', 'SHZXZ', '商混中心站仓库', '1', '1', '1049', '10419', '1', 'PSO2470201312170011', '3', null, '2265', '张尚武', '2013-12-17 14:33:29.000000', '2301', '张奉云', '2014-01-07 15:25:00.000000', '2014-01-07 15:38:15.500000', '配件厂家直接发货了', null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('585', 'POSH01520131217000002', '570', '26', 'CZWJZXZ', '常州武进', '14', 'SH015', '商混常州中心站（武进邹区）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2986', 'FT006671', '常州市武进邹区交通汽车修理厂（普通合伙）', '2986', 'FT006671', '常州市武进邹区交通汽车修理厂（普通合伙）', null, null, null, '1', '8', '1076', '10424', '1', 'PSOSH015201312170002', '2', null, '1152', 'SH015', '2013-12-17 16:03:26.000000', null, null, null, '2013-12-17 16:16:02.838000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('586', 'POSH01520131217000003', '571', '26', 'CZWJZXZ', '常州武进', '14', 'SH015', '商混常州中心站（武进邹区）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2986', 'FT006671', '常州市武进邹区交通汽车修理厂（普通合伙）', '2986', 'FT006671', '常州市武进邹区交通汽车修理厂（普通合伙）', null, null, null, '1', '8', '1076', '10426', '1', 'PSOSH015201312170003', '2', null, '1152', 'SH015', '2013-12-17 16:06:02.000000', null, null, null, '2013-12-17 16:18:39.314000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('628', 'POSH03120131220000001', '619', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', null, null, null, '1', '1', '1070', '10475', '1', 'PSOSH031201312200001', '3', null, '1167', 'SH031', '2013-12-20 13:21:45.000000', '1167', 'SH031', '2014-05-19 14:42:12.000000', '2014-05-19 14:59:38.777000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('629', 'PO247020131220000001', '620', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '14', 'SH015', '商混常州中心站', '14', 'SH015', '商混常州中心站', '26', 'CZWJZXZ', '常州武进', '1', '7', '1068', '10476', '1', 'PSO2470201312200003', '3', null, '2269', '高利军', '2013-12-20 13:44:20.000000', '2301', '张奉云', '2014-01-07 15:03:45.000000', '2014-01-07 15:17:00.594000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('654', 'POSH00920131223000001', '533', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '2', '1029', '商混武汉直管库', '2', null, null, '201', '2', 'PSR2470201312150001', '2', null, '1146', 'SH009', '2013-12-23 10:26:37.000000', null, null, null, '2013-12-23 10:39:23.801000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('666', 'POSH01920131223000001', '658', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2809', 'FT003775', '辽宁利丰源达汽车销售有限公司', '2809', 'FT003775', '辽宁利丰源达汽车销售有限公司', null, null, null, '1', '1', '1085', '10494', '1', 'PSOSH019201312210001', '2', null, '1156', 'SH019', '2013-12-23 13:40:27.000000', null, null, null, '2013-12-23 13:53:15.500000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('677', 'PO247020131223000011', '659', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2653', 'FT003742', '荆州市玖信商贸有限公司', '2653', 'FT003742', '荆州市玖信商贸有限公司', null, null, null, '1', '1', '456', '10517', '1', 'PSO2470201312230007', '3', null, '2269', '高利军', '2013-12-23 16:20:45.000000', '2301', '张奉云', '2014-01-07 15:17:00.000000', '2014-01-07 15:30:15.506000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('678', 'PO247020131223000012', '665', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2955', 'FT000058', '湖南华亿汽车销售有限公司', '2955', 'FT000058', '湖南华亿汽车销售有限公司', null, null, null, '1', '5', '1141', '10379', '1', 'PSO2470201312160002', '3', null, '2269', '高利军', '2013-12-23 16:22:04.000000', '2301', '张奉云', '2014-01-07 15:24:09.000000', '2014-01-07 15:37:25.111000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('680', 'PO247020131223000014', '672', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '18', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '21', 'SH019', '商混海城中心站', '1', '1', '1055', '10276', '1', 'PSO2470201312100003', '3', null, '2269', '高利军', '2013-12-23 16:22:31.000000', '2301', '张奉云', '2014-01-10 16:13:09.000000', '2014-01-10 16:26:29.998000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('703', 'PO247020131224000001', '660', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '14', 'SH015', '商混常州中心站', '14', 'SH015', '商混常州中心站', '26', 'CZWJZXZ', '常州武进', '1', '1', '1068', '10516', '1', 'PSO2470201312230006', '3', null, '2269', '高利军', '2013-12-24 13:06:09.000000', '2301', '张奉云', '2014-01-07 15:03:45.000000', '2014-01-07 15:17:00.599000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('704', 'PO247020131224000002', '661', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '11', 'SH011', '商混兰州中心站（甘肃福通）', '11', 'SH011', '商混兰州中心站（甘肃福通）', '11', '甘肃福通中心库', '甘肃福通中心库', '1', '1', '1048', '10514', '1', 'PSO2470201312230005', '3', null, '2269', '高利军', '2013-12-24 13:07:18.000000', '2301', '张奉云', '2014-01-07 15:39:27.000000', '2014-01-07 15:52:42.524000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('705', 'PO247020131224000003', '667', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '合肥庭华商混库', '1', '1', '1046', '10521', '1', 'PSO2470201312230009', '3', null, '2269', '高利军', '2013-12-24 13:07:35.000000', '2301', '张奉云', '2014-01-07 15:13:23.000000', '2014-01-07 15:26:39.299000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('709', 'PO247020131224000007', '685', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3557', 'FT003872', '唐山市丰润区军辉汽车销售服务处', '3557', 'FT003872', '唐山市丰润区军辉汽车销售服务处', null, null, null, '1', '1', '639', '10533', '1', 'PSO2470201312240001', '3', null, '2269', '高利军', '2013-12-24 13:08:41.000000', '2301', '张奉云', '2014-01-07 14:55:35.000000', '2014-01-07 15:08:50.295000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('710', 'PO247020131224000008', '688', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3738', 'FT006579', '承德市金宇汽车修理有限公司上二道河子分公司', '3738', 'FT006579', '承德市金宇汽车修理有限公司上二道河子分公司', null, null, null, '1', '1', '835', '10535', '1', 'PSO2470201312240003', '3', null, '2269', '高利军', '2013-12-24 13:08:56.000000', '2301', '张奉云', '2014-01-07 14:55:11.000000', '2014-01-07 15:08:26.460000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('711', 'PO247020131224000009', '683', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3765', 'FT006686', '兴义市凯诺汽车销售服务有限责任公司', '3765', 'FT006686', '兴义市凯诺汽车销售服务有限责任公司', null, null, null, '1', '6', '87', '10531', '1', 'PSO2470201312230013', '3', null, '2269', '高利军', '2013-12-24 13:09:10.000000', '2301', '张奉云', '2014-01-07 15:28:33.000000', '2014-01-07 15:41:48.655000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('712', 'PO247020131224000010', '684', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2646', 'FT000064', '湖北中大信义贸易有限公司', '2646', 'FT000064', '湖北中大信义贸易有限公司', null, null, null, '1', '1', '585', '10412', '1', 'PSO2470201312170004', '3', null, '2269', '高利军', '2013-12-24 13:09:23.000000', '2301', '张奉云', '2014-01-07 15:15:59.000000', '2014-01-07 15:29:14.503000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('713', 'PO247020131224000011', '686', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '14', 'SH015', '商混常州中心站', '14', 'SH015', '商混常州中心站', '26', 'CZWJZXZ', '常州武进', '1', '5', '1068', '10364', '1', 'PSO2470201312140004', '3', null, '2269', '高利军', '2013-12-24 13:09:36.000000', '2301', '张奉云', '2014-01-07 15:03:45.000000', '2014-01-07 15:17:00.604000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('718', 'POSH02920131224000002', '694', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2678', 'FT006610', '青岛瑞海汽车维修有限公司', '2678', 'FT006610', '青岛瑞海汽车维修有限公司', null, null, null, '1', '5', '1128', '10540', '1', 'PSOSH029201312240001', '2', null, '1165', 'SH029', '2013-12-24 13:19:45.000000', null, null, null, '2013-12-24 13:32:34.359000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('720', 'POSH00920131224000002', '696', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', null, null, null, '1', '1', '1151', '10488', '1', 'PSOSH009201312210001', '2', null, '1146', 'SH009', '2013-12-24 14:02:03.000000', null, null, null, '2013-12-24 14:14:52.450000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('750', 'PO247020131226000001', '725', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '2640', 'FT000027', '武汉华天博亿工贸有限公司', '2640', 'FT000027', '武汉华天博亿工贸有限公司', null, null, null, '1', '5', '573', '10576', '1', 'PSO2470201312260003', '3', null, '2265', '张尚武', '2013-12-26 16:29:13.000000', '2301', '张奉云', '2014-01-07 15:16:21.000000', '2014-01-07 15:29:36.206000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('753', 'POSH00920131227000001', '733', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3328', 'FT000066', '蚌埠市众成汽车贸易有限公司', '3328', 'FT000066', '蚌埠市众成汽车贸易有限公司', null, null, null, '1', '1', '1155', '10341', '1', 'PSOSH009201312130002', '2', null, '1146', 'SH009', '2013-12-27 10:43:32.000000', null, null, null, '2013-12-27 10:56:26.858000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('757', 'POSH00920131227000004', '736', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3325', 'FT000073', '芜湖超达汽车服务有限公司', '3325', 'FT000073', '芜湖超达汽车服务有限公司', null, null, null, '1', '1', '1147', '10597', '1', 'PSOSH009201312270005', '2', null, '1146', 'SH009', '2013-12-27 15:41:22.000000', null, null, null, '2013-12-27 15:54:16.861000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('788', 'POSH02920131229000001', '752', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', null, null, null, '1', '1', '1116', '10604', '1', 'PSOSH029201312280002', '2', null, '1165', 'SH029', '2013-12-29 11:15:12.000000', null, null, null, '2013-12-29 11:28:10.990000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('790', 'POSH03120131229000002', '758', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '892', 'LSSB003', '王维国', '892', 'LSSB003', '王维国', null, null, null, '1', '1', '1138', '10621', '1', 'PSOSH031201312290002', '3', null, '1167', 'SH031', '2013-12-29 16:30:22.000000', '1167', 'SH031', '2014-05-19 14:44:11.000000', '2014-05-19 15:01:37.241000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('792', 'POSH00920131230000001', '761', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', null, null, null, '1', '2', '1146', '10568', '1', 'PSOSH009201312250004', '2', null, '1146', 'SH009', '2013-12-30 08:58:10.000000', null, null, null, '2013-12-30 09:11:09.679000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('794', 'POSH00920131230000003', '663', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', null, null, null, '1', '5', '1146', '10508', '1', 'PSOSH009201312220002', '2', null, '1146', 'SH009', '2013-12-30 09:04:16.000000', null, null, null, '2013-12-30 09:17:16.309000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('807', 'POSH0102013123000001', '771', '10', 'SH010', '武汉华天博亿中心库', '10', 'SH010', '商混武汉中心站（华天博亿）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2644', 'FT000766', '十堰福全汽车贸易有限公司', '2644', 'FT000766', '十堰福全汽车贸易有限公司', null, null, null, '1', '1', '1222', '10628', '1', 'PSOSH010201312300001', '2', null, '1147', 'SH010', '2013-12-30 13:53:59.000000', '1147', 'SH010', '2014-10-08 14:24:20.000000', '2014-10-08 14:21:40.487000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('808', 'POSH00920131230000004', '772', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3482', 'FT000067', '宿州市世搏工贸有限公司', '3482', 'FT000067', '宿州市世搏工贸有限公司', null, null, null, '1', '1', '1145', '10630', '1', 'PSOSH009201312300001', '2', null, '1146', 'SH009', '2013-12-30 15:07:46.000000', null, null, null, '2013-12-30 15:20:46.667000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('809', 'POSH03120131230000001', '776', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', '2983', 'FT003766', '徐州凯驰汽车贸易有限公司', null, null, null, '1', '1', '1070', '10633', '1', 'PSOSH031201312300001', '3', null, '1167', 'SH031', '2013-12-30 15:31:31.000000', '1167', 'SH031', '2014-05-19 14:42:12.000000', '2014-05-19 14:59:38.793000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('810', 'POSH03120131230000002', '777', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3005', 'FT003945', '盐城市青年汽车修配厂', '3005', 'FT003945', '盐城市青年汽车修配厂', null, null, null, '1', '1', '1104', '10634', '1', 'PSOSH031201312300002', '3', null, '1167', 'SH031', '2013-12-30 15:37:02.000000', '1167', 'SH031', '2014-05-19 14:43:04.000000', '2014-05-19 15:00:30.262000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('812', 'PO247020131230000012', '773', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '13', 'SH013', '商混福州中心站（福州聚升）', '13', 'SH013', '商混福州中心站（福州聚升）', '121', 'FZJS001', '福州聚升（代理库）', '1', '5', '1050', '10631', '1', 'PSO2470201312300007', '3', null, '2269', '高利军', '2013-12-30 16:58:06.000000', '2301', '张奉云', '2014-01-07 15:09:45.000000', '2014-01-07 15:23:00.648000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('826', 'PO247020131231000010', '788', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '武汉华天博亿中心库', '1', '1', '1047', '10643', '1', 'PSO2470201312310001', '3', null, '2269', '高利军', '2013-12-31 13:19:08.000000', '2301', '张奉云', '2014-01-07 15:18:10.000000', '2014-01-07 15:31:25.658000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('828', 'POSH01120131231000001', '791', '11', '甘肃福通中心库', '甘肃福通中心库', '11', 'SH011', '商混兰州中心站（甘肃福通）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2907', 'FT006882', '青铜峡市长青工贸有限公司', '2907', 'FT006882', '青铜峡市长青工贸有限公司', null, null, null, '1', '5', '1149', '10318', '1', 'PSOSH011201312120001', '2', null, '1148', 'SH011', '2013-12-31 14:04:29.000000', null, null, null, '2013-12-31 14:17:31.100000', null, null, null, null, null, '0', null);
INSERT INTO `parts_out_bound_bill` VALUES ('864', 'POP247020131203000008', '370', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', null, null, null, '2', null, '41', '21', '5', 'PPR2470201312030003', '3', null, '2267', '陆凌志', '2013-12-03 12:10:33.000000', '2269', '高利军', '2013-12-03 14:59:34.000000', '2013-12-03 15:11:44.462000', null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill` VALUES ('865', 'POP247020131203000008', '70', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', null, null, null, '2', null, '41', '21', '5', 'PPR2470201312030003', '3', null, '2267', '陆凌志', '2013-12-03 12:10:33.000000', '2269', '高利军', '2013-12-03 14:59:34.000000', '2013-12-03 15:11:44.462000', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for parts_out_bound_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `parts_out_bound_bill_detail`;
CREATE TABLE `parts_out_bound_bill_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_OUT_BOUND_BILL_ID` int(11) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `SPAREPART_CODE` varchar(50) NOT NULL,
  `SPAREPART_NAME` varchar(100) NOT NULL,
  `OUT_BOUND_AMOUNT` int(11) NOT NULL,
  `WAREHOUSE_AREA_ID` int(11) DEFAULT NULL,
  `WAREHOUSE_AREA_CODE` varchar(50) DEFAULT NULL,
  `BATCH_NUMBER` varchar(100) DEFAULT NULL,
  `SETTLEMENT_PRICE` decimal(19,4) NOT NULL,
  `COST_PRICE` decimal(19,4) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CONTAINER_NUMBER` varchar(25) DEFAULT NULL,
  `CONTAINER_TYPE` varchar(25) DEFAULT NULL,
  `SON_CONTAINER` varchar(255) DEFAULT NULL,
  `PACKAGE_ORDER_NUMBER` varchar(25) DEFAULT NULL,
  `PACKAGE_ORDER_NUMBER_LINE` varchar(25) DEFAULT NULL,
  `CONTAINER_TOTAL_VOLUME` varchar(25) DEFAULT NULL,
  `CONTAINER_TOTAL_WEIGHT` varchar(25) DEFAULT NULL,
  `CONTAINER_LONG` varchar(25) DEFAULT NULL,
  `CONTAINER_WIDE` varchar(25) DEFAULT NULL,
  `CONTAINER_HIGH` varchar(25) DEFAULT NULL,
  `CONTAINER_HEAVY` varchar(25) DEFAULT NULL,
  `OVERSEAS_PARTS_FIGURE` varchar(25) DEFAULT NULL,
  `OVERSEAS_PROJECT_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_POUTBBIDET_POUTBBIID` (`PARTS_OUT_BOUND_BILL_ID`) USING BTREE,
  KEY `IDX_POUTBBIDET_SPARTID` (`SPAREPART_ID`) USING BTREE,
  KEY `IDX_POUTBBIDET_WAREHARID` (`WAREHOUSE_AREA_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_out_bound_bill_detail
-- ----------------------------
INSERT INTO `parts_out_bound_bill_detail` VALUES ('412', '394', '4905', '5037HB4200095XSYB30A', '支腿垂直油缸支座（新式）', '1', '11318', '5A0902102', 'dfssssssssss', '900.0000', '700.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('921', '394', '13394', '5037HB9500167P0006A', '输送缸230', '2', '11999', '5C0101101', null, '6500.0000', '5000.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('960', '411', '7811', 'L-HM46-1LSYB30A', 'HM46液压油（虚拟1L/桶，实为200L包装）', '800', '10390', '9Y0000001', null, '13.0000', '10.5000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('961', '412', '6954', '5037HB6200060SYB30A', '遥控器系统(727总线)', '1', '2780', '9A1001501', null, '24500.0000', '12375.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1049', '546', '495', '5045HB1000038A1742A', '销轴22', '1', '5256', '9B1101205', null, '90.0000', '74.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1050', '546', '746', '5045HB1000041S00231A', '轴套4', '8', '5137', '9B0902202', null, '16.0000', '14.1800', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1051', '426', '4457', '5045HB1000038SYB30A', '销轴22', '1', '1487', '9A0401203', null, '90.0000', '74.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1052', '426', '4458', '5045HB1000037SYB30A', '销轴21', '1', '5257', '9B1101206', null, '127.0000', '105.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1055', '429', '4084', '5037HB3300243SYB30A', '高压滤芯', '1', '25046', '9A0101504', null, '330.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1056', '429', '5940', '5037HB9500051SYB30A', '滤芯', '2', '37988', '9A0101501', null, '360.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1305', '448', '1275', '5037HB4100200S00151A', '带锁空气滤清器', '1', '10569', '5A0204202', null, '326.0000', '263.8400', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1306', '449', '3749', '5015JB3000002SYB30A', '油泵（萨奥90）', '1', '13368', '5C3101101', null, '13900.0000', '10100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1307', '449', '12499', '5048HB5100062P0008A', '45R400弯管', '2', '12717', '5E1101103', null, '228.0000', '148.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1308', '449', '12781', '5037HB5200174P0008A', '输送大弯管', '1', '12728', '5E1301102', null, '584.0000', '475.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1309', '449', '12855', '5048HB5100036P0008A', '30°R260弯管', '2', '12741', '5E1501103', null, '220.0000', '150.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1310', '450', '3749', '5015JB3000002SYB30A', '油泵（萨奥90）', '1', '13368', '5C3101101', null, '13900.0000', '10100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1620', '506', '12332', '5037HB2700009P0003A', '橡胶砼密封体230', '12', '6070', '9B2002501', null, '210.0000', '150.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1621', '506', '12674', '5037HB9500101P0004A', '导向环230', '12', '2762', '9A0903404', null, '50.0000', '26.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1658', '514', '472', '5045HB5100007S00291A', '混凝土胶管（3.5米单头法兰）', '2', '4845', '9A3302501', null, '2208.0000', '1350.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1659', '514', '5247', '5037HB9500113-1A6919A', '230S管大端密封包', '1', '4895', '9B0601501', null, '198.0000', '120.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1660', '514', '5299', '8697450.04001A6899A', '活塞组件', '1', '5708', '9B0303202', null, '439.0000', '335.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1661', '514', '12685', '5022HB5100009P0002A', '混凝土输送胶管3M（单头）', '2', '4771', '9A3301502', null, '1150.0000', '775.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1662', '514', '12892', '5037HB2400330SYB30A', '过滤网', '1', '5085', '9B0803107', null, '867.0000', '667.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1663', '514', '14667', '5037HB9500109-1P0012A', '230S管小端密封包', '1', '5727', '9B0401102', null, '52.0000', '40.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1664', '515', '9968', '5008JB7100070SYB30A', '水位计', '2', '5368', '9B1203201', null, '96.0000', '55.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1735', '516', '13645', '5037HB3300304S00154A', '管接头', '2', '15121', '6A0403305', null, '60.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1963', '516', '13635', '5037HB6300259S00804A', '固态继电器', '2', '33800', '6A0302303', null, '348.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1964', '516', '4787', '5037HB3600007SYB30A', '减压阀（进口）', '1', '33800', '6A0302303', null, '1645.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1965', '516', '5311', '5048HB4000029SYB30A', '轴', '1', '34224', '6B0101101', null, '4550.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1966', '516', '4317', '5045HB3000068A6919A', '吸油过滤器', '1', '34234', '6A0502506', null, '2550.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1967', '516', '6406', '5048HB3500066-1A6899A', '48米后支腿摆缸关节轴承（50ES）', '1', '29920', '6A0403404', null, '135.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1968', '516', '1482', '5037HB3300179SYB30A', '梭阀', '2', '29920', '6A0403404', null, '455.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1969', '516', '4914', '5037HB4700054LA6919A', '耳环（螺纹32mm）', '1', '29920', '6A0403404', null, '115.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1970', '516', '4443', '5045HB3600004SYB30A', '方向控制阀', '3', '46708', '6A0203304', null, '900.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1971', '516', '4539', '5042HB5000007SYB30A', '加长U形管箍', '9', '48412', '6A0303404', null, '48.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1972', '516', '7571', '5037HB2200133A6919A', '花键轴(内花键)', '2', '48412', '6A0303404', null, '660.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1973', '516', '5631', '5010JB6000008LS00454A', '开关盒总成', '1', '48150', '6A0102403', null, '160.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1974', '516', '6777', '5012JB6400028SYB30A', 'EGR发动机防拆除GPS总成', '1', '43851', '6A0102302', null, '1500.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1975', '516', '4231', '5037HB6100041SYB30A', '温度传感器', '4', '46970', '6A0302305', null, '1169.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1976', '516', '13696', '5037HB6300175S00804A', '纽子开关(代帽 不复位)', '1', '46970', '6A0302305', null, '17.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1977', '516', '13695', '5037HB6300176S00804A', '纽子开关(代帽 复位)', '1', '46970', '6A0302305', null, '14.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1978', '516', '13633', '5037HB6300406S00804A', 'LED-24VDC红灯(新状态）', '1', '46970', '6A0302305', null, '60.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1979', '516', '229', '5037HB3600025S00032A', '压力表(6MP)', '4', '43092', '6A0502303', null, '216.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1980', '516', '6405', '5048HB3500065-1A6899A', '48米前支腿摆缸关节轴承（40ES）', '1', '43504', '6A0403403', null, '92.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1981', '516', '514', '5037HB4200001A1742A', '滑轮', '4', '43504', '6A0403403', null, '29.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1982', '516', '4303', '5037HB6210003A6919A', '遥控器电池', '3', '45330', '6A0403406', null, '1170.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1983', '516', '4298', '5037HB6210004A6899A', '充电器', '1', '45330', '6A0403406', null, '1620.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1984', '516', '541', '5045HB2600005S00360A', '滤油器', '4', '45330', '6A0403406', null, '76.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1985', '516', '3651', '5037HB2200138S00110A', '垫套', '2', '45330', '6A0403406', null, '36.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1986', '516', '6481', '5037HB3000181S00196A', '管接头', '1', '44939', '6B0101102', null, '32.0000', '0.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1987', '394', '4905', '5037HB4200095XSYB30A', '支腿垂直油缸支座（新式）', '1', '11318', '5A0902102', 'dfssssssssss', '900.0000', '700.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1988', '394', '4905', '5037HB4200095XSYB30A', '支腿垂直油缸支座（新式）', '1', '11318', '5A0902102', 'dfssssssssss', '900.0000', '700.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1989', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1990', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1991', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1992', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1993', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1994', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1995', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1996', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1997', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1998', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('1999', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2000', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2001', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2002', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2003', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2004', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2005', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2006', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2007', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2008', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2009', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2010', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2011', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2012', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2013', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2014', '370', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', 'SH027B', null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_bill_detail` VALUES ('2015', '70', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '1', null, null, '100.0000', '100.0000', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for parts_out_bound_plan
-- ----------------------------
DROP TABLE IF EXISTS `parts_out_bound_plan`;
CREATE TABLE `parts_out_bound_plan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `WAREHOUSE_CODE` varchar(50) NOT NULL,
  `WAREHOUSE_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_CODE` varchar(50) NOT NULL,
  `STORAGE_COMPANY_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BRANCH_CODE` varchar(50) NOT NULL,
  `BRANCH_NAME` varchar(100) NOT NULL,
  `PARTS_SALES_CATEGORY_ID` int(11) NOT NULL,
  `PARTS_SALES_ORDER_TYPE_ID` int(11) DEFAULT NULL,
  `PARTS_SALES_ORDER_TYPE_NAME` varchar(100) DEFAULT NULL,
  `COUNTERPART_COMPANY_ID` int(11) NOT NULL,
  `COUNTERPART_COMPANY_CODE` varchar(50) NOT NULL,
  `COUNTERPART_COMPANY_NAME` varchar(100) NOT NULL,
  `RECEIVING_COMPANY_ID` int(11) NOT NULL,
  `RECEIVING_COMPANY_CODE` varchar(50) NOT NULL,
  `RECEIVING_COMPANY_NAME` varchar(100) NOT NULL,
  `RECEIVING_WAREHOUSE_ID` int(11) DEFAULT NULL,
  `RECEIVING_WAREHOUSE_CODE` varchar(50) DEFAULT NULL,
  `RECEIVING_WAREHOUSE_NAME` varchar(100) DEFAULT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `SOURCE_CODE` varchar(50) NOT NULL,
  `OUT_BOUND_TYPE` int(11) NOT NULL,
  `SHIPPING_METHOD` int(11) DEFAULT NULL,
  `CUSTOMER_ACCOUNT_ID` int(11) DEFAULT NULL,
  `ORIGINAL_REQUIREMENT_BILL_ID` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_TYPE` int(11) NOT NULL,
  `ORIGINAL_REQUIREMENT_BILL_CODE` varchar(50) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `IF_WMS_INTERFACE` tinyint(4) NOT NULL,
  `REMARK` varchar(500) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `ORDER_APPROVE_COMMENT` varchar(2000) DEFAULT NULL,
  `STOP_COMMENT` varchar(200) DEFAULT NULL,
  `STOPER_ID` int(11) DEFAULT NULL,
  `STOPER` varchar(100) DEFAULT NULL,
  `STOP_TIME` datetime(6) DEFAULT NULL,
  `GPMS_PUR_ORDER_CODE` varchar(50) DEFAULT NULL,
  `IS_PUR_DISTRIBUTION` tinyint(4) DEFAULT NULL,
  `COMPANY_ADDRESS_ID` int(11) DEFAULT NULL,
  `SPRAS` varchar(25) DEFAULT NULL,
  `IS_WOODEN_FUMIGATION` varchar(1) DEFAULT NULL,
  `IS_ADVANCE_SIGNATURE` varchar(1) DEFAULT NULL,
  `PACKING_DESCRIPTION` varchar(25) DEFAULT NULL,
  `MARK` varchar(25) DEFAULT NULL,
  `IS_INSPECTION_CAMERA` varchar(1) DEFAULT NULL,
  `OTHER_PACKING_REQUIREMENTS` varchar(25) DEFAULT NULL,
  `IS_SPECIAL_INSPECTION` varchar(25) DEFAULT NULL,
  `ZPNUMBER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_PARTSOUTBOUNDPLAN_CODE` (`CODE`) USING BTREE,
  KEY `IDX_POUTBPLAN_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_COPCOMPID` (`COUNTERPART_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_CREATETIME` (`CREATE_TIME`) USING BTREE,
  KEY `IDX_POUTBPLAN_CUSTACCID` (`CUSTOMER_ACCOUNT_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_ORREQBIID` (`ORIGINAL_REQUIREMENT_BILL_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_PSCATEGID` (`PARTS_SALES_CATEGORY_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_REVINGCOMPID` (`RECEIVING_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_REVINGWAREHID` (`RECEIVING_WAREHOUSE_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_SCOMPID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_SOURCEID` (`SOURCE_ID`) USING BTREE,
  KEY `IDX_POUTBPLAN_STATUS` (`STATUS`) USING BTREE,
  KEY `IDX_POUTBPLAN_WAREHID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_out_bound_plan
-- ----------------------------
INSERT INTO `parts_out_bound_plan` VALUES ('70', 'POP247020131203000008', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', '4259', 'FT006497', '北汽福田汽车股份有限公司宣化福田雷萨泵送机械厂', null, null, null, '21', 'PPR2470201312030003', '2', null, '41', '21', '5', 'PPR2470201312030003', '1', '0', null, '2267', '陆凌志', '2013-12-03 12:10:33.000000', '2269', '高利军', '2013-12-03 14:59:34.000000', '2013-12-03 15:11:44.462000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('374', 'POP247020131203000010', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3716', 'FT001775', '云南弘天汽车服务有限责任公司', '3716', 'FT001775', '云南弘天汽车服务有限责任公司', null, null, null, '10134', 'PSO2470201312020017', '1', '1', '96', '10134', '1', 'PSO2470201312020017', '3', '0', null, '2265', '张尚武', '2013-12-03 14:50:28.000000', '2269', '高利军', '2013-12-03 15:00:22.000000', '2013-12-03 15:12:33.219000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('380', 'POP247020131203000016', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3785', 'FT006805', '铜仁市永祥汽车修理场', '3785', 'FT006805', '铜仁市永祥汽车修理场', null, null, null, '10160', 'PSO2470201312030017', '1', '1', '898', '10160', '1', 'PSO2470201312030017', '3', '0', null, '2265', '张尚武', '2013-12-03 17:53:16.000000', '2268', '韩宏波', '2013-12-04 08:41:22.000000', '2013-12-04 08:53:36.807000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('408', 'POP247020131206000006', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3328', 'FT000066', '蚌埠市众成汽车贸易有限公司', '3328', 'FT000066', '蚌埠市众成汽车贸易有限公司', null, null, null, '10204', 'PSO2470201312040022', '1', '1', '449', '10204', '1', 'PSO2470201312040022', '3', '0', null, '2265', '张尚武', '2013-12-06 13:57:28.000000', '2269', '高利军', '2013-12-06 14:18:16.000000', '2013-12-06 14:30:32.271000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('412', 'POPSH02020131206000001', '13', 'SH020', '商混长沙代理库仓库', '4303', 'FT006564', '商混长沙代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1028', '商混设备配件库', '121', 'PSR2470201312040001', '2', null, null, '121', '2', 'PSR2470201312040001', '3', '0', null, '2265', '张尚武', '2013-12-06 16:53:41.000000', '1157', 'SH020', '2013-12-06 16:58:30.000000', '2013-12-06 17:10:47.207000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('437', 'POPSH02920131210000001', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '3', '专项订单', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', null, null, null, '10215', 'PSOSH029201312050002', '1', '1', '1116', '10215', '1', 'PSOSH029201312050002', '3', '0', null, '1165', 'SH029', '2013-12-10 14:24:21.000000', '1165', 'SH029', '2013-12-16 11:41:44.000000', '2013-12-16 11:54:18.493000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('450', 'POP247020131211000002', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2645', 'FT000011', '宜昌春江重汽发展有限责任公司', '2645', 'FT000011', '宜昌春江重汽发展有限责任公司', null, null, null, '10291', 'PSO2470201312110006', '1', '1', '478', '10291', '1', 'PSO2470201312110006', '3', '0', null, '2265', '张尚武', '2013-12-11 11:06:18.000000', '2268', '韩宏波', '2013-12-11 14:27:08.000000', '2013-12-11 14:39:33.648000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('451', 'POP247020131211000003', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2645', 'FT000011', '宜昌春江重汽发展有限责任公司', '2645', 'FT000011', '宜昌春江重汽发展有限责任公司', null, null, null, '10291', 'PSO2470201312110006', '1', '1', '478', '10291', '1', 'PSO2470201312110006', '3', '0', null, '2265', '张尚武', '2013-12-11 11:06:18.000000', '2269', '高利军', '2013-12-11 13:22:41.000000', '2013-12-11 13:35:06.351000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('497', 'POP247020131213000009', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '993', 'LSFJ002', '赵澎', '993', 'LSFJ002', '赵澎', null, null, null, '10351', 'PSO2470201312130014', '1', '8', '179', '10351', '1', 'PSO2470201312130014', '3', '0', null, '2265', '张尚武', '2013-12-13 15:58:29.000000', '2269', '高利军', '2013-12-13 16:36:31.000000', '2013-12-13 16:48:59.976000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('505', 'POP247020131214000003', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '993', 'LSFJ002', '赵澎', '993', 'LSFJ002', '赵澎', null, null, null, '10362', 'PSO2470201312140003', '1', '8', '179', '10362', '1', 'PSO2470201312140003', '3', '0', null, '2265', '张尚武', '2013-12-14 11:56:09.000000', '2269', '高利军', '2013-12-14 11:58:26.000000', '2013-12-14 12:10:57.920000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('533', 'POPSH00920131216000003', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '2', '1029', '商混武汉直管库', '201', 'PSR2470201312150001', '2', null, null, '201', '2', 'PSR2470201312150001', '3', '0', null, '2265', '张尚武', '2013-12-16 13:26:13.000000', '1146', 'SH009', '2013-12-23 10:26:37.000000', '2013-12-23 10:39:23.768000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('535', 'POP247020131216000012', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '18', 'FOTONSH029', '商混潍坊代理库', '10395', 'PSO2470201312160004', '1', '1', '1063', '10395', '1', 'PSO2470201312160004', '3', '0', null, '2265', '张尚武', '2013-12-16 13:28:19.000000', '2269', '高利军', '2013-12-16 13:46:46.000000', '2013-12-16 13:59:21.989000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('555', 'POP247020131216000031', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '7', 'SH007', '商混成都中心站（成都同创）', '7', 'SH007', '商混成都中心站（成都同创）', '7', '成都同创', '成都同创商混配件仓库', '10316', 'PSO2470201312120004', '1', '1', '1067', '10316', '1', 'PSO2470201312120004', '3', '0', null, '2265', '张尚武', '2013-12-16 17:46:17.000000', '2265', '张尚武', '2013-12-17 13:47:41.000000', '2013-12-17 14:00:17.379000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('573', 'POP247020131218000002', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '11', 'SH011', '商混兰州中心站（甘肃福通）', '11', 'SH011', '商混兰州中心站（甘肃福通）', '11', '甘肃福通中心库', '甘肃福通中心库', '10428', 'PSO2470201312180002', '1', '1', '1048', '10428', '1', 'PSO2470201312180002', '3', '0', null, '2265', '张尚武', '2013-12-18 09:15:43.000000', '2269', '高利军', '2013-12-18 13:33:10.000000', '2013-12-18 13:45:48.695000', '配件已经直接发兰州中心站！！补票！！', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('591', 'POP247020131218000018', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '武汉华天博亿中心库', '10449', 'PSO2470201312180020', '1', '1', '1047', '10449', '1', 'PSO2470201312180020', '3', '0', null, '2265', '张尚武', '2013-12-18 17:28:16.000000', '2268', '韩宏波', '2013-12-19 09:01:36.000000', '2013-12-19 09:14:17.763000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('592', 'POP247020131218000019', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '商混武汉中心站（华天博亿）', '10', 'SH010', '武汉华天博亿中心库', '10450', 'PSO2470201312180021', '1', '1', '1047', '10450', '1', 'PSO2470201312180021', '3', '0', null, '2265', '张尚武', '2013-12-18 17:29:24.000000', '2269', '高利军', '2013-12-19 13:09:33.000000', '2013-12-19 13:22:13.538000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('599', 'POP247020131219000004', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '29', 'SH031', '商混徐州（凯驰）代理库', '29', 'SH031', '商混徐州（凯驰）代理库', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '10255', 'PSO2470201312090001', '1', '1', '1065', '10255', '1', 'PSO2470201312090001', '3', '0', null, '2265', '张尚武', '2013-12-19 08:45:58.000000', '2269', '高利军', '2013-12-19 13:10:53.000000', '2013-12-19 13:23:32.771000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('602', 'POPSH00720131219000002', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3252', 'FT003473', '成都万竞汽车贸易有限公司', '3252', 'FT003473', '成都万竞汽车贸易有限公司', null, null, null, '10457', 'PSOSH007201312190001', '1', '8', '1167', '10457', '1', 'PSOSH007201312190001', '3', '0', null, '1144', 'SH007', '2013-12-19 12:54:04.000000', '1144', 'SH007', '2013-12-19 12:54:57.000000', '2013-12-19 13:07:37.674000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('603', 'POPSH03120131219000001', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', null, null, null, '10466', 'PSOSH031201312190001', '1', '2', '1072', '10466', '1', 'PSOSH031201312190001', '3', '0', null, '1167', 'SH031', '2013-12-19 13:26:47.000000', '1167', 'SH031', '2013-12-19 13:28:52.000000', '2013-12-19 13:41:32.524000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('635', 'POP247020131221000006', '2', '1029', '商混武汉直管库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', null, null, '2', '2470', '北京福田雷萨泵送机械公司', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1028', '商混设备配件库', '1', 'PT247020131221000001', '4', '1', null, '1', '6', 'PT247020131221000001', '4', '0', null, '2265', '张尚武', '2013-12-21 13:22:13.000000', '2268', '韩宏波', '2013-12-21 13:57:53.000000', '2013-12-21 14:10:47.165000', null, '订单重做', '2268', '韩宏波', '2013-12-21 13:57:53.000000', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('664', 'POPSH00720131223000001', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3255', 'FT006668', '成都同创工程机械技术服务有限公司', '3255', 'FT006668', '成都同创工程机械技术服务有限公司', null, null, null, '10515', 'PSOSH007201312230001', '1', '8', '1181', '10515', '1', 'PSOSH007201312230001', '3', '0', null, '1144', 'SH007', '2013-12-23 14:06:20.000000', '1144', 'SH007', '2013-12-23 16:01:02.000000', '2013-12-23 16:13:49.689000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('667', 'POP247020131223000010', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '合肥庭华商混库', '10521', 'PSO2470201312230009', '1', '1', '1046', '10521', '1', 'PSO2470201312230009', '3', '0', null, '2265', '张尚武', '2013-12-23 14:48:07.000000', '2269', '高利军', '2013-12-24 13:07:35.000000', '2013-12-24 13:20:24.539000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('681', 'POPSH03120131223000001', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '892', 'LSSB003', '王维国', '892', 'LSSB003', '王维国', null, null, null, '10527', 'PSOSH031201312230001', '1', '2', '1138', '10527', '1', 'PSOSH031201312230001', '3', '0', null, '1167', 'SH031', '2013-12-23 16:02:18.000000', '1167', 'SH031', '2013-12-23 16:03:03.000000', '2013-12-23 16:15:50.228000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('685', 'POP247020131224000002', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3557', 'FT003872', '唐山市丰润区军辉汽车销售服务处', '3557', 'FT003872', '唐山市丰润区军辉汽车销售服务处', null, null, null, '10533', 'PSO2470201312240001', '1', '1', '639', '10533', '1', 'PSO2470201312240001', '3', '0', null, '2265', '张尚武', '2013-12-24 08:14:41.000000', '2269', '高利军', '2013-12-24 13:08:41.000000', '2013-12-24 13:21:30.530000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('686', 'POP247020131224000003', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '14', 'SH015', '商混常州中心站', '14', 'SH015', '商混常州中心站', '26', 'CZWJZXZ', '常州武进', '10364', 'PSO2470201312140004', '1', '5', '1068', '10364', '1', 'PSO2470201312140004', '3', '0', null, '2265', '张尚武', '2013-12-24 08:20:36.000000', '2269', '高利军', '2013-12-24 13:09:36.000000', '2013-12-24 13:22:25.289000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('692', 'POP247020131224000008', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', null, null, null, '10538', 'PSO2470201312240005', '1', '6', '528', '10538', '1', 'PSO2470201312240005', '3', '0', null, '2265', '张尚武', '2013-12-24 09:55:24.000000', '2269', '高利军', '2013-12-24 13:10:35.000000', '2013-12-24 13:23:24.635000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('695', 'POPSH00920131224000001', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', null, null, null, '10526', 'PSOSH009201312230003', '1', '1', '1151', '10526', '1', 'PSOSH009201312230003', '3', '0', null, '1146', 'SH009', '2013-12-24 13:57:25.000000', '1146', 'SH009', '2013-12-24 13:58:15.000000', '2013-12-24 14:11:04.687000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('696', 'POPSH00920131224000002', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', null, null, null, '10488', 'PSOSH009201312210001', '1', '1', '1151', '10488', '1', 'PSOSH009201312210001', '3', '0', null, '1146', 'SH009', '2013-12-24 14:01:10.000000', '1146', 'SH009', '2013-12-24 14:02:03.000000', '2013-12-24 14:14:52.411000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('697', 'POPSH01120131224000001', '11', '甘肃福通中心库', '甘肃福通中心库', '11', 'SH011', '商混兰州中心站（甘肃福通）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3380', 'FT000092', '甘肃福通商混设备有限公司', '3380', 'FT000092', '甘肃福通商混设备有限公司', null, null, null, '10544', 'PSOSH011201312240001', '1', '1', '1140', '10544', '1', 'PSOSH011201312240001', '3', '0', null, '1148', 'SH011', '2013-12-24 14:16:18.000000', '1148', 'SH011', '2013-12-24 14:17:10.000000', '2013-12-24 14:29:59.139000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('698', 'POP247020131224000009', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3076', 'FT000072', '北京庆华兴汽车销售服务有限公司', '3076', 'FT000072', '北京庆华兴汽车销售服务有限公司', null, null, null, '10545', 'PSO2470201312240010', '1', '8', '995', '10545', '1', 'PSO2470201312240010', '3', '0', null, '2265', '张尚武', '2013-12-24 14:44:10.000000', '2265', '张尚武', '2013-12-24 14:46:42.000000', '2013-12-24 14:59:31.446000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('700', 'POP247020131224000011', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '7', 'SH007', '商混成都中心站（成都同创）', '7', 'SH007', '商混成都中心站（成都同创）', '7', '成都同创', '成都同创商混配件仓库', '10532', 'PSO2470201312230014', '1', '1', '1067', '10532', '1', 'PSO2470201312230014', '3', '0', null, '2265', '张尚武', '2013-12-24 15:36:49.000000', '2265', '张尚武', '2013-12-24 15:39:07.000000', '2013-12-24 15:51:57.113000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('702', 'POP247020131225000001', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', '3686', 'FT004579', '徐州正帝汽车贸易有限公司', null, null, null, '10552', 'PSO2470201312250001', '1', '7', '528', '10552', '1', 'PSO2470201312250001', '3', '0', null, '2265', '张尚武', '2013-12-25 10:20:56.000000', '2269', '高利军', '2013-12-25 13:17:38.000000', '2013-12-25 13:30:29.375000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('717', 'POPSH02420131225000002', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2676', 'FT000056', '济南欧拓商贸有限公司', '2676', 'FT000056', '济南欧拓商贸有限公司', null, null, null, '10561', 'PSOSH024201312250001', '1', '1', '1081', '10561', '1', 'PSOSH024201312250001', '3', '0', null, '1160', 'SH024', '2013-12-25 16:22:35.000000', '1160', 'SH024', '2013-12-25 16:23:26.000000', '2013-12-25 16:36:17.745000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('719', 'POPSH02920131226000001', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '3', '专项订单', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', '2690', 'FT003402', '枣庄联鑫汽车销售服务有限公司', null, null, null, '10322', 'PSOSH029201312120002', '1', '1', '1116', '10322', '1', 'PSOSH029201312120002', '3', '0', null, '1165', 'SH029', '2013-12-26 08:32:42.000000', '1165', 'SH029', '2013-12-26 08:35:44.000000', '2013-12-26 08:48:36.165000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('720', 'POPSH02920131226000002', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2729', 'FT006699', '乳山市海峰汽车修理有限公司', '2729', 'FT006699', '乳山市海峰汽车修理有限公司', null, null, null, '10257', 'PSOSH029201312090001', '1', '1', '1120', '10257', '1', 'PSOSH029201312090001', '3', '0', null, '1165', 'SH029', '2013-12-26 08:34:24.000000', '1165', 'SH029', '2013-12-26 08:37:16.000000', '2013-12-26 08:50:08.413000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('723', 'POPSH00920131226000001', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', '3489', 'FT000033', '亳州市谯城区捷运汽车销售有限责任公司', null, null, null, '10575', 'PSOSH009201312260001', '1', '1', '1151', '10575', '1', 'PSOSH009201312260001', '3', '0', null, '1146', 'SH009', '2013-12-26 11:07:55.000000', '1146', 'SH009', '2013-12-26 11:08:35.000000', '2013-12-26 11:21:27.762000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('727', 'POPSH02920131226000004', '18', 'FOTONSH029', '商混潍坊代理库', '27', 'SH029', '商混潍坊代理库（潍坊万达）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2705', 'FT003960', '潍坊万达重型车辆销售服务有限公司', '2705', 'FT003960', '潍坊万达重型车辆销售服务有限公司', null, null, null, '10582', 'PSOSH029201312260003', '1', '2', '1113', '10582', '1', 'PSOSH029201312260003', '3', '0', null, '1165', 'SH029', '2013-12-26 14:04:13.000000', '1165', 'SH029', '2013-12-26 14:08:18.000000', '2013-12-26 14:21:10.800000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('731', 'POP247020131226000005', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2957', 'FT006587', '长沙光永汽车维修服务有限公司', '2957', 'FT006587', '长沙光永汽车维修服务有限公司', null, null, null, '10587', 'PSO2470201312260009', '1', '1', '775', '10587', '1', 'PSO2470201312260009', '3', '0', null, '2265', '张尚武', '2013-12-26 17:50:05.000000', '2269', '高利军', '2013-12-27 16:15:05.000000', '2013-12-27 16:27:59.642000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('743', 'POP247020131228000001', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '18', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '21', 'SH019', '商混海城中心站', '10605', 'PSO2470201312280002', '1', '1', '1055', '10605', '1', 'PSO2470201312280002', '3', '0', null, '2265', '张尚武', '2013-12-28 11:14:30.000000', '2265', '张尚武', '2013-12-28 15:43:22.000000', '2013-12-28 15:56:18.506000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('745', 'POP247020131228000003', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3592', 'FT006250', '邢台市鼎力恒汽车销售有限公司', '3592', 'FT006250', '邢台市鼎力恒汽车销售有限公司', null, null, null, '10608', 'PSO2470201312280003', '1', '8', '577', '10608', '1', 'PSO2470201312280003', '3', '0', null, '2265', '张尚武', '2013-12-28 11:20:39.000000', '2265', '张尚武', '2013-12-28 15:37:46.000000', '2013-12-28 15:50:42.594000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('746', 'POPGUD0009920131228000001', '12', 'SHZXZ', '商混中心站仓库', '12', 'SH012', '商混深圳中心站（深圳福骏驰）', '2', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '3457', 'FT000007', '深圳市福骏驰汽车销售服务有限公司', '3457', 'FT000007', '深圳市福骏驰汽车销售服务有限公司', null, null, null, '10610', 'PSOSH012201312280001', '1', '1', '1131', '10610', '1', 'PSOSH012201312280001', '3', '0', null, '1446', 'GUD00099', '2013-12-28 13:18:16.000000', '1149', 'SH012', '2014-05-07 18:31:05.000000', '2014-05-07 18:48:09.551000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('748', 'POP247020131228000005', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '14', 'SH015', '商混常州中心站', '14', 'SH015', '商混常州中心站', '26', 'CZWJZXZ', '常州武进', '10611', 'PSO2470201312280005', '1', '1', '1068', '10611', '1', 'PSO2470201312280005', '3', '0', null, '2265', '张尚武', '2013-12-28 16:43:21.000000', '2265', '张尚武', '2013-12-28 16:43:51.000000', '2013-12-28 16:56:47.621000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('753', 'POPSH02420131229000001', '23', 'JNOT', '济南欧拓商贸有限公司', '24', 'SH024', '商混济南代理库（济南欧拓）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2676', 'FT000056', '济南欧拓商贸有限公司', '2676', 'FT000056', '济南欧拓商贸有限公司', null, null, null, '10615', 'PSOSH024201312290001', '1', '1', '1081', '10615', '1', 'PSOSH024201312290001', '3', '0', null, '1160', 'SH024', '2013-12-29 09:52:11.000000', '1160', 'SH024', '2013-12-29 09:53:32.000000', '2013-12-29 10:06:30.466000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('754', 'POPSH03120131229000001', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '2994', 'FT003760', '南通易人汽车贸易服务有限公司', '2994', 'FT003760', '南通易人汽车贸易服务有限公司', null, null, null, '10617', 'PSOSH031201312290001', '1', '1', '1071', '10617', '1', 'PSOSH031201312290001', '3', '0', null, '1167', 'SH031', '2013-12-29 10:21:15.000000', '1167', 'SH031', '2013-12-29 10:21:50.000000', '2013-12-29 10:34:47.851000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('755', 'POP247020131229000002', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '29', 'SH031', '商混徐州（凯驰）代理库', '29', 'SH031', '商混徐州（凯驰）代理库', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '10616', 'PSO2470201312290003', '1', '1', '1065', '10616', '1', 'PSO2470201312290003', '3', '0', null, '2265', '张尚武', '2013-12-29 11:29:13.000000', '2269', '高利军', '2013-12-30 13:29:19.000000', '2013-12-30 13:42:19.835000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('758', 'POPSH03120131229000002', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '892', 'LSSB003', '王维国', '892', 'LSSB003', '王维国', null, null, null, '10621', 'PSOSH031201312290002', '1', '1', '1138', '10621', '1', 'PSOSH031201312290002', '3', '0', null, '1167', 'SH031', '2013-12-29 16:28:49.000000', '1167', 'SH031', '2013-12-29 16:30:22.000000', '2013-12-29 16:43:21.283000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('760', 'POPSH00920131230000001', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3337', 'FT002273', '安庆市润发汽车销售服务有限公司', '3337', 'FT002273', '安庆市润发汽车销售服务有限公司', null, null, null, '10590', 'PSOSH009201312270002', '1', '1', '1203', '10590', '1', 'PSOSH009201312270002', '3', '0', null, '1146', 'SH009', '2013-12-30 08:53:47.000000', '1146', 'SH009', '2013-12-30 09:03:25.000000', '2013-12-30 09:16:25.478000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('761', 'POPSH00920131230000002', '9', 'SH009', '合肥庭华商混库', '9', 'SH009', '商混合肥中心站（合肥庭华）', '3', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '急需订单', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', '3343', 'FT003846', '滁州开发区宏达汽车修理厂', null, null, null, '10568', 'PSOSH009201312250004', '1', '2', '1146', '10568', '1', 'PSOSH009201312250004', '3', '0', null, '1146', 'SH009', '2013-12-30 08:55:46.000000', '1146', 'SH009', '2013-12-30 08:58:10.000000', '2013-12-30 09:11:09.618000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('763', 'POP247020131230000002', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '24', 'SH024', '商混济南代理库（济南欧拓）', '24', 'SH024', '商混济南代理库（济南欧拓）', '23', 'JNOT', '济南欧拓商贸有限公司', '10613', 'PSO2470201312290001', '1', '1', '1059', '10613', '1', 'PSO2470201312290001', '3', '0', null, '2265', '张尚武', '2013-12-30 09:44:13.000000', '2269', '高利军', '2013-12-30 13:32:07.000000', '2013-12-30 13:45:07.476000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan` VALUES ('764', 'POP247020131230000003', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '2470', '北京福田雷萨泵送机械公司', '1', '2', '储备订单', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '商混合肥中心站（合肥庭华）', '9', 'SH009', '合肥庭华商混库', '10448', 'PSO2470201312180019', '1', '1', '1046', '10448', '1', 'PSO2470201312180019', '3', '0', null, '2265', '张尚武', '2013-12-30 09:45:39.000000', '2269', '高利军', '2013-12-30 13:32:16.000000', '2013-12-30 13:45:16.160000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for parts_out_bound_plan_detail
-- ----------------------------
DROP TABLE IF EXISTS `parts_out_bound_plan_detail`;
CREATE TABLE `parts_out_bound_plan_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_OUT_BOUND_PLAN_ID` int(11) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `SPAREPART_CODE` varchar(50) NOT NULL,
  `SPAREPART_NAME` varchar(100) NOT NULL,
  `PLANNED_AMOUNT` int(11) NOT NULL,
  `OUT_BOUND_FULFILLMENT` int(11) DEFAULT NULL,
  `PRICE` decimal(19,4) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `OVERSEAS_PARTS_FIGURE` varchar(25) DEFAULT NULL,
  `OVERSEAS_PROJECT_NUMBER` int(11) DEFAULT NULL,
  `VBELN` varchar(10) DEFAULT NULL,
  `POSNR` int(11) DEFAULT NULL,
  `EBELN` varchar(10) DEFAULT NULL,
  `EBELP` int(11) DEFAULT NULL,
  `ZPITEM` int(11) DEFAULT NULL,
  `PNUMBER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_POUTBPLDET_POUTBPLANID` (`PARTS_OUT_BOUND_PLAN_ID`) USING BTREE,
  KEY `IDX_POUTBPLDET_SPAREPARTID` (`SPAREPART_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_out_bound_plan_detail
-- ----------------------------
INSERT INTO `parts_out_bound_plan_detail` VALUES ('953', '70', '7592', '5015JB3000054SYB30A', '传动轴总成', '2', '2', '390.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1384', '333', '4792', '5012JB1000110SYB30A', '搅拌筒总成', '1', '1', '54000.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1446', '483', '14771', '5045HB9500006P0012A', '长钢套（装S阀上）', '2', '2', '432.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1447', '483', '14770', '5045HB9500007P0012A', '短钢套（装S阀上）', '2', '2', '335.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1448', '483', '14666', '5045HB9500113-1P0012A', '260S管大端密封包(老泵送）', '2', '2', '195.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1649', '499', '5922', 'TG07E08CS00110A', '限位油缸密封包', '2', '2', '850.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1650', '499', '4236', 'SF50X80X7/5-FA6899A', '力士乐90油泵油封', '2', '2', '524.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1651', '499', '5077', 'SF45*62*7A6899A', '搅拌车力士乐80/90马达油封', '3', '3', '498.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1652', '499', '5082', 'PSL41F/PSL4H1FA6899A', '臂架多路阀密封包（37-45）', '1', '1', '1074.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1653', '499', '3778', 'N6A00N801HZNASYB30A', '异径内接头', '4', '4', '70.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1654', '499', '5478', 'N6A00B100HZNASYB30A', '11/2三通', '1', '1', '46.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1655', '499', '690', 'LJB000259S00501A', '散热器真空表(新乡)', '5', '5', '78.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1656', '499', '695', 'LJB0000272S00504A', '油泵法兰（23齿6孔）', '1', '1', '307.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1657', '499', '13736', 'LHB10000092S00353A', '主油缸单向阀', '1', '1', '90.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1658', '499', '4234', 'LHB10000082A6899A', '180主泵油封(60*106*7)', '1', '1', '642.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1659', '499', '7468', 'LHB10000081A6899A', '32臂架泵油封（35*52*6）', '1', '1', '390.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1660', '499', '13648', 'LHB10000080S00048A', '恒压泵油封(25*35*6)', '1', '1', '472.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1661', '499', '4233', 'LHB10000079A6899A', '125主泵油封(55*90*7)', '3', '3', '550.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1662', '499', '13812', 'LHB10000006S00110A', '主油缸截止阀(方形)', '2', '2', '226.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1663', '499', '5765', '60C1816.11.1F.1-1S00110A', '接头体', '1', '1', '85.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1664', '499', '5764', '60C1413.1.1.1E.1.1S00110A', '单向阀', '1', '1', '150.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1665', '499', '3985', '5095HB3300258SYB30A', '管接头', '1', '1', '13.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1666', '499', '3556', '5095HB3300088SYB30A', '管接头', '1', '1', '96.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1667', '499', '3982', '5095HB3300068SYB30A', '管接头', '1', '1', '60.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1668', '499', '3979', '5095HB3300060SYB30A', '管接头', '1', '1', '48.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1669', '499', '4842', '5080BT6300117SYB30A', '继电器', '1', '1', '144.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1670', '499', '5959', '5080BT6100036SYB30A', '温度变送器', '1', '1', '1200.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1671', '499', '4340', '5080BT6100036A6919A', '温度变送器', '1', '1', '1200.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1672', '499', '3769', '5080BT3600017SYB30A', '管接头', '1', '1', '41.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1673', '499', '3770', '5080BT3600004SYB30A', '溢流阀', '1', '1', '2220.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1674', '499', '3772', '5080BT3600003SYB30A', '溢流阀', '1', '1', '2220.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1675', '499', '3767', '5080BT3600002SYB30A', '电液阀', '1', '1', '4536.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1676', '499', '5929', '5080BT3400007-1A6899A', '190油泵电磁铁', '1', '1', '2580.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1677', '499', '6467', '5080BT3300144SYB30A', '管接头', '1', '1', '186.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1678', '499', '8262', '5080BT3300143SYB30A', '管接头', '2', '2', '40.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1679', '499', '4046', '5080BT3300052SYB30A', '管接头', '1', '1', '24.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1680', '499', '4043', '5080BT3300040SYB30A', '管接头', '1', '1', '24.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1681', '499', '5406', '5080BT3300016-1SYB30A', '回油过滤器压力表', '1', '1', '210.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1682', '499', '6720', '5052HB2600007SYB30A', '管接头', '2', '2', '8.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1683', '499', '3219', '5048HB8200001SYB30A', '分动箱', '1', '1', '54500.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1684', '499', '2830', '5048HB6100014SYB30A', '编码器', '1', '1', '9240.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1685', '499', '5706', '5048HB5200045SYB30A', 'U形管箍', '1', '1', '48.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1686', '499', '5578', '5048HB4500007SYB30A', '48米齿轮', '1', '1', '1720.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1687', '499', '2971', '5048HB4400047SYB30A', '衬套', '1', '1', '37.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('1688', '499', '5576', '5048HB4400002SYB30A', '后支腿轴', '1', '1', '2750.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('2464', '585', '14896', '5039HB3500091LSYB30A', '钢管总成1', '1', '1', '130.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('2465', '585', '14897', '5039HB3500092LSYB30A', '钢管总成2', '1', '1', '130.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('2466', '585', '14898', '5039HB3500093LSYB30A', '钢管总成3', '1', '1', '130.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('2467', '585', '14899', '5039HB3500094LSYB30A', '钢管总成4', '1', '1', '130.0000', null, null, null, null, null, null, null, null, null);
INSERT INTO `parts_out_bound_plan_detail` VALUES ('2468', '586', '14474', '5012JB1000253LSYB30A', '加强圈', '4', '4', '390.0000', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for parts_planned_price
-- ----------------------------
DROP TABLE IF EXISTS `parts_planned_price`;
CREATE TABLE `parts_planned_price` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_COMPANY_ID` int(11) NOT NULL,
  `OWNER_COMPANY_TYPE` int(11) NOT NULL,
  `PARTS_SALES_CATEGORY_ID` int(11) NOT NULL,
  `PARTS_SALES_CATEGORY_NAME` varchar(50) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `PLANNED_PRICE` decimal(19,4) NOT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PPLANNEDPRICECOMPID` (`OWNER_COMPANY_ID`) USING BTREE,
  KEY `IDX_PPLANNEDPRICE_PSCATEGID` (`PARTS_SALES_CATEGORY_ID`) USING BTREE,
  KEY `IDX_PPLANNEDPRICE_SPARTID` (`SPAREPART_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_planned_price
-- ----------------------------
INSERT INTO `parts_planned_price` VALUES ('107', '2', '1', '1', '雷萨泵送', '10251', '2.1400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('108', '2', '1', '1', '雷萨泵送', '8053', '100.0000', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('109', '2', '1', '1', '雷萨泵送', '8058', '200.0000', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('110', '2', '1', '1', '雷萨泵送', '8059', '0.3400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('112', '0', '0', '0', 'string', '0', '0.0000', '0', 'string', '2016-12-05 10:55:15.159000', '0', 'string', '2016-12-05 10:55:15.159000', '2016-12-05 10:55:15.159000');
INSERT INTO `parts_planned_price` VALUES ('113', '2', '1', '1', '雷萨泵送', '8151', '1.1100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('114', '2', '1', '1', '雷萨泵送', '8191', '0.6000', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('115', '2', '1', '1', '雷萨泵送', '8389', '0.4300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('116', '2', '1', '1', '雷萨泵送', '8393', '0.0900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('117', '2', '1', '1', '雷萨泵送', '8394', '0.0900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('119', '2', '1', '1', '雷萨泵送', '8397', '0.8500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('120', '2', '1', '1', '雷萨泵送', '7124', '5.4900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('121', '2', '1', '1', '雷萨泵送', '7128', '0.2600', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('123', '2', '1', '1', '雷萨泵送', '8044', '1.0300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('124', '2', '1', '1', '雷萨泵送', '8054', '1.5400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('125', '2', '1', '1', '雷萨泵送', '8055', '2.0500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('126', '2', '1', '1', '雷萨泵送', '8056', '2.3900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('127', '2', '1', '1', '雷萨泵送', '8057', '1.7100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('128', '2', '1', '1', '雷萨泵送', '8060', '2.1400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('129', '2', '1', '1', '雷萨泵送', '8103', '2.9100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('130', '2', '1', '1', '雷萨泵送', '8107', '2.9900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('132', '2', '1', '1', '雷萨泵送', '8113', '0.3400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('133', '2', '1', '1', '雷萨泵送', '8149', '0.9400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('134', '2', '1', '1', '雷萨泵送', '8399', '1.0300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('135', '2', '1', '1', '雷萨泵送', '8400', '1.0300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('136', '2', '1', '1', '雷萨泵送', '9576', '13.2500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:03:50.000000', null);
INSERT INTO `parts_planned_price` VALUES ('137', '2', '1', '1', '雷萨泵送', '10209', '10.4600', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:04.000000', null);
INSERT INTO `parts_planned_price` VALUES ('138', '2', '1', '1', '雷萨泵送', '165', '1.0300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('139', '2', '1', '1', '雷萨泵送', '377', '0.4300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('140', '2', '1', '1', '雷萨泵送', '7113', '1.0300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('141', '2', '1', '1', '雷萨泵送', '8102', '2.9100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('142', '2', '1', '1', '雷萨泵送', '8148', '1.7100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('143', '2', '1', '1', '雷萨泵送', '8156', '1.4500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('144', '2', '1', '1', '雷萨泵送', '8161', '1.7100', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('145', '2', '1', '1', '雷萨泵送', '8194', '0.3400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('146', '2', '1', '1', '雷萨泵送', '8387', '0.4300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:04.000000', null);
INSERT INTO `parts_planned_price` VALUES ('147', '2', '1', '1', '雷萨泵送', '8391', '0.6000', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('149', '2', '1', '1', '雷萨泵送', '10425', '0.4300', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('150', '2', '1', '1', '雷萨泵送', '155', '3.4200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('151', '2', '1', '1', '雷萨泵送', '545', '6.8400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('152', '2', '1', '1', '雷萨泵送', '554', '8.5500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('153', '2', '1', '1', '雷萨泵送', '7107', '0.8500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('154', '2', '1', '1', '雷萨泵送', '8241', '2.5600', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('156', '2', '1', '1', '雷萨泵送', '9020', '6.8400', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('157', '2', '1', '1', '雷萨泵送', '9021', '8.5500', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:02.000000', null);
INSERT INTO `parts_planned_price` VALUES ('158', '2', '1', '1', '雷萨泵送', '334', '4.2200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:01:51.000000', null);
INSERT INTO `parts_planned_price` VALUES ('160', '2', '1', '1', '雷萨泵送', '159', '2.5600', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('161', '2', '1', '1', '雷萨泵送', '157', '3.0900', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('162', '2', '1', '1', '雷萨泵送', '153', '3.4200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('165', '2', '1', '1', '雷萨泵送', '287', '3.4200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', null);
INSERT INTO `parts_planned_price` VALUES ('166', '2', '1', '1', '雷萨泵送', '218', '3.4200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', '2013-11-14 16:41:46.000000');
INSERT INTO `parts_planned_price` VALUES ('167', '2', '1', '1', '雷萨泵送', '11707', '3.4200', '1', '系统管理员', '2013-11-14 16:41:46.000000', '2301', '张奉云', '2014-07-08 14:04:22.000000', '2014-07-08 14:04:22.000000');

-- ----------------------------
-- Table structure for parts_shift_order
-- ----------------------------
DROP TABLE IF EXISTS `parts_shift_order`;
CREATE TABLE `parts_shift_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `WAREHOUSE_CODE` varchar(50) NOT NULL,
  `WAREHOUSE_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_CODE` varchar(50) NOT NULL,
  `STORAGE_COMPANY_NAME` varchar(100) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `order_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PSHIFTO_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_PSHIFTO_STORAGECOMPID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_PSHIFTO_WAREHOUSEID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111071 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_shift_order
-- ----------------------------
INSERT INTO `parts_shift_order` VALUES ('81', 'PMempty20131204000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2269', '高利军', '2013-12-04 09:48:47.000000', '2013-12-04 10:00:58.783000', null);
INSERT INTO `parts_shift_order` VALUES ('102', 'PMempty20131205000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2269', '高利军', '2013-12-05 10:55:33.000000', '2013-12-05 11:07:47.250000', null);
INSERT INTO `parts_shift_order` VALUES ('112', 'PM247020131206000002', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-06 16:17:16.000000', '2013-12-06 16:29:32.261000', null);
INSERT INTO `parts_shift_order` VALUES ('116', 'PM247020131206000004', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-06 17:15:10.000000', '2013-12-06 17:27:27.679000', null);
INSERT INTO `parts_shift_order` VALUES ('117', 'PMSH03120131207000001', '2', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '1', null, '1167', 'SH031', '2013-12-07 08:57:07.000000', '2013-12-07 09:09:25.480000', null);
INSERT INTO `parts_shift_order` VALUES ('141', 'PMSH00720131210000001', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '1', null, '1144', 'SH007', '2013-12-10 09:39:00.000000', '2013-12-10 09:51:23.280000', null);
INSERT INTO `parts_shift_order` VALUES ('142', 'PMSH02720131210000001', '2', '17', 'SH027', '贵州百瑞雷萨仓库', '25', 'SH027', '商混贵州代理库（贵州百瑞）', '3', '1', '1', null, '1163', 'SH027', '2013-12-10 09:51:53.000000', '2013-12-10 10:04:15.973000', null);
INSERT INTO `parts_shift_order` VALUES ('161', 'PMSH01920131211000001', '2', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '1', null, '1156', 'SH019', '2013-12-11 13:40:42.000000', '2013-12-11 13:53:07.161000', null);
INSERT INTO `parts_shift_order` VALUES ('170', 'PMempty20131211000005', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2265', '张尚武', '2013-12-11 17:17:14.000000', '2013-12-11 17:29:39.810000', null);
INSERT INTO `parts_shift_order` VALUES ('181', 'PM247020131213000002', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-13 17:17:45.000000', '2013-12-13 17:30:15.166000', null);
INSERT INTO `parts_shift_order` VALUES ('183', 'PM247020131213000003', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-13 17:27:04.000000', '2013-12-13 17:39:36.292000', null);
INSERT INTO `parts_shift_order` VALUES ('185', 'PMSH01920131214000001', '2', '21', 'SH019', '商混海城中心站', '18', 'SH019', '商混海城中心站', '3', '1', '1', null, '1156', 'SH019', '2013-12-14 12:47:18.000000', '2013-12-14 12:59:48.460000', null);
INSERT INTO `parts_shift_order` VALUES ('186', 'PM247020131214000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-14 14:23:35.000000', '2013-12-14 14:36:05.730000', null);
INSERT INTO `parts_shift_order` VALUES ('197', 'PMSH03120131216000001', '2', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '1', null, '1167', 'SH031', '2013-12-16 10:19:30.000000', '2013-12-16 10:32:05.549000', null);
INSERT INTO `parts_shift_order` VALUES ('198', 'PM247020131216000002', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2269', '高利军', '2013-12-16 10:38:11.000000', '2013-12-16 10:50:45.222000', null);
INSERT INTO `parts_shift_order` VALUES ('207', 'PMempty20131216000006', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2265', '张尚武', '2013-12-16 13:51:39.000000', '2013-12-16 14:04:13.474000', null);
INSERT INTO `parts_shift_order` VALUES ('218', 'PMempty20131216000009', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2269', '高利军', '2013-12-16 15:37:50.000000', '2013-12-16 15:50:25.263000', null);
INSERT INTO `parts_shift_order` VALUES ('220', 'PMempty20131216000010', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2269', '高利军', '2013-12-16 15:41:02.000000', '2013-12-16 15:53:36.712000', null);
INSERT INTO `parts_shift_order` VALUES ('222', 'PM247020131216000004', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2269', '高利军', '2013-12-16 15:43:09.000000', '2013-12-16 15:55:44.319000', null);
INSERT INTO `parts_shift_order` VALUES ('223', 'PMempty20131216000011', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '2', null, '2269', '高利军', '2013-12-16 15:44:19.000000', '2013-12-16 15:56:54.213000', null);
INSERT INTO `parts_shift_order` VALUES ('227', 'PMempty20131216000014', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-16 17:09:59.000000', '2013-12-16 17:22:33.716000', null);
INSERT INTO `parts_shift_order` VALUES ('230', 'PM247020131218000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-18 08:08:22.000000', '2013-12-18 08:20:59.968000', null);
INSERT INTO `parts_shift_order` VALUES ('247', 'PM247020131219000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2269', '高利军', '2013-12-19 09:12:01.000000', '2013-12-19 09:24:41.320000', null);
INSERT INTO `parts_shift_order` VALUES ('249', 'PMempty20131219000001', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-19 11:23:47.000000', '2013-12-19 11:36:27.239000', null);
INSERT INTO `parts_shift_order` VALUES ('259', 'PMempty20131220000003', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 15:27:34.000000', '2013-12-20 15:40:15.989000', null);
INSERT INTO `parts_shift_order` VALUES ('264', 'PMempty20131220000008', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 15:47:57.000000', '2013-12-20 16:00:39.408000', null);
INSERT INTO `parts_shift_order` VALUES ('267', 'PMSH01220131220000002', '2', '12', 'SHZXZ', '商混中心站仓库', '12', 'SH012', '商混深圳中心站（深圳福骏驰）', '3', '1', '1', null, '1149', 'SH012', '2013-12-20 15:52:10.000000', '2013-12-20 16:04:52.460000', null);
INSERT INTO `parts_shift_order` VALUES ('268', 'PMempty20131220000011', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 15:52:41.000000', '2013-12-20 16:05:22.853000', null);
INSERT INTO `parts_shift_order` VALUES ('274', 'PMempty20131220000017', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 16:13:10.000000', '2013-12-20 16:25:52.533000', null);
INSERT INTO `parts_shift_order` VALUES ('275', 'PMempty20131220000018', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 16:15:13.000000', '2013-12-20 16:27:54.807000', null);
INSERT INTO `parts_shift_order` VALUES ('276', 'PMempty20131220000019', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 16:16:26.000000', '2013-12-20 16:29:08.820000', null);
INSERT INTO `parts_shift_order` VALUES ('279', 'PMempty20131220000022', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-20 16:23:03.000000', '2013-12-20 16:35:45.225000', null);
INSERT INTO `parts_shift_order` VALUES ('297', 'PMSH01120131221000002', '2', '11', '甘肃福通中心库', '甘肃福通中心库', '11', 'SH011', '商混兰州中心站（甘肃福通）', '3', '1', '1', null, '1148', 'SH011', '2013-12-21 17:16:00.000000', '2013-12-21 17:28:44.561000', null);
INSERT INTO `parts_shift_order` VALUES ('298', 'PMSH03120131222000001', '2', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '1', null, '1167', 'SH031', '2013-12-22 08:55:34.000000', '2013-12-22 09:08:18.919000', null);
INSERT INTO `parts_shift_order` VALUES ('299', 'PMSH03120131222000002', '2', '30', 'SH031', '徐州凯驰汽车贸易有限公司', '29', 'SH031', '商混徐州（凯驰）代理库', '3', '1', '1', null, '1167', 'SH031', '2013-12-22 09:21:45.000000', '2013-12-22 09:34:29.984000', null);
INSERT INTO `parts_shift_order` VALUES ('305', 'PM247020131223000001', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-23 13:55:09.000000', '2013-12-23 14:07:58.139000', null);
INSERT INTO `parts_shift_order` VALUES ('308', 'PM247020131223000003', '2', '1', '1028', '商混设备配件库', '2', '2470', '北京福田雷萨泵送机械公司', '1', '1', '1', null, '2265', '张尚武', '2013-12-23 14:44:38.000000', '2013-12-23 14:57:25.998000', null);
INSERT INTO `parts_shift_order` VALUES ('323', 'PMempty20131224000001', '2', '7', '成都同创', '成都同创商混配件仓库', '7', 'SH007', '商混成都中心站（成都同创）', '3', '1', '2', null, '1144', 'SH007', '2013-12-24 10:31:39.000000', '2013-12-24 10:44:27.984000', null);
INSERT INTO `parts_shift_order` VALUES ('110563', 'PMFT00083320150923000002', '2203', '718', 'FXZX079', '揭阳容大（保外代理库）', '3707', 'FT000833', '揭阳市容大物流有限公司', '7', '1', '1', null, '16570', '林如萍', '2015-09-23 14:08:02.000000', '2015-09-23 13:42:48.531000', null);
INSERT INTO `parts_shift_order` VALUES ('110573', 'PMFT00083320150923000002', '2203', '718', 'FXZX079', '揭阳容大（保外代理库）', '3707', 'FT000833', '揭阳市容大物流有限公司', '7', '1', '1', null, '16570', '林如萍', '2015-09-23 14:13:07.000000', '2015-09-23 13:47:53.801000', null);
INSERT INTO `parts_shift_order` VALUES ('110577', 'PMFT00623120150923000012', '2203', '757', 'OM216', '欧曼天津代理库石家庄分库', '4295', 'FT006231', '天津正午阳光国际贸易有限公司', '3', '1', '1', null, '10611', '宋永峰', '2015-09-23 14:16:44.000000', '2015-09-23 13:51:33.548000', null);
INSERT INTO `parts_shift_order` VALUES ('110596', 'PM245020150923000010', '2203', '669', 'BNMYK', '保内密云配件总库（搬迁)', '2203', '2450', '北京福田戴姆勒汽车有限公司', '1', '1', '1', null, '9444', '王锋玲2', '2015-09-23 14:38:36.000000', '2015-09-23 14:13:23.760000', null);
INSERT INTO `parts_shift_order` VALUES ('110636', 'PMFT00004820150923000001', '2203', '712', 'FXZX077', '商丘风驰', '3143', 'FT000048', '商丘风驰汽车贸易有限公司', '7', '1', '1', null, '7212', 'FT000048', '2015-09-23 15:11:08.000000', '2015-09-23 14:45:55.124000', null);
INSERT INTO `parts_shift_order` VALUES ('110652', 'PMFT00383820150923000002', '2203', '862', 'BWZHJ00081', '台州世凯汽车服务有限公司', '3316', 'FT003838', '台州世凯汽车服务有限公司', '7', '1', '1', null, '8195', 'FT003838', '2015-09-23 15:20:55.000000', '2015-09-23 14:55:42.151000', null);
INSERT INTO `parts_shift_order` VALUES ('110683', 'PM245020150923000035', '2203', '705', 'BWMYK', '保外密云配件总库（搬迁）', '2203', '2450', '北京福田戴姆勒汽车有限公司', '1', '1', '1', null, '9444', '王锋玲2', '2015-09-23 15:54:43.000000', '2015-09-23 15:29:29.603000', null);
INSERT INTO `parts_shift_order` VALUES ('110688', 'PMFT00004820150923000002', '2203', '712', 'FXZX077', '商丘风驰', '3143', 'FT000048', '商丘风驰汽车贸易有限公司', '7', '1', '1', null, '7212', 'FT000048', '2015-09-23 16:03:58.000000', '2015-09-23 15:38:44.826000', null);
INSERT INTO `parts_shift_order` VALUES ('110707', 'PMFT00621920150923000001', '2203', '811', 'FXZX049', '大同安远', '4285', 'FT006219', '大同市安远商贸有限公司', '3', '1', '1', null, '7237', 'FT006219', '2015-09-23 16:38:20.000000', '2015-09-23 16:13:07.113000', null);
INSERT INTO `parts_shift_order` VALUES ('111036', 'PMFT00388020150924000005', '2203', '894', 'BNHEB00144', '赞皇县众合汽车维修有限责任公司', '3539', 'FT003880', '赞皇县众合汽车配件销售有限责任公司', '7', '1', '1', null, '7245', 'FT003880', '2015-09-24 15:01:54.000000', '2015-09-24 14:36:37.414000', null);
INSERT INTO `parts_shift_order` VALUES ('111062', 'PM245020150924000088', '2203', '705', 'BWMYK', '保外密云配件总库（搬迁）', '2203', '2450', '北京福田戴姆勒汽车有限公司', '1', '1', '1', null, '6753', '王伟26', '2015-09-24 15:35:29.000000', '2015-09-24 15:10:11.894000', null);
INSERT INTO `parts_shift_order` VALUES ('111070', 'PMFT00227520150924000003', '2203', '1183', 'BWYUN00045', '大理东盛-保外库', '3528', 'FT002275', '大理东盛汽车服务有限公司', '7', '1', '1', null, '7192', 'FT002275', '2015-09-24 15:52:21.000000', '2015-09-24 15:27:07.940000', null);

-- ----------------------------
-- Table structure for parts_shift_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `parts_shift_order_detail`;
CREATE TABLE `parts_shift_order_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_SHIFT_ORDER_ID` int(11) NOT NULL,
  `SPAREPART_ID` int(11) NOT NULL,
  `SPAREPART_CODE` varchar(50) NOT NULL,
  `SPAREPART_NAME` varchar(100) NOT NULL,
  `ORIGINAL_WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `ORIGINAL_WAREHOUSE_AREA_CODE` varchar(50) NOT NULL,
  `ORIGINAL_WAREHOUSE_AREA_CATEGORY` int(11) NOT NULL,
  `DEST_WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `DEST_WAREHOUSE_AREA_CODE` varchar(50) NOT NULL,
  `DEST_WAREHOUSE_AREA_CATEGORY` int(11) NOT NULL,
  `BATCH_NUMBER` varchar(100) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PARTSSHIFTORDERD_SPAREPAR` (`SPAREPART_ID`) USING BTREE,
  KEY `IDX_PSHIFTODET_DESTWAREHAID` (`DEST_WAREHOUSE_AREA_ID`) USING BTREE,
  KEY `IDX_PSHIFTODET_ORWAREHAID` (`ORIGINAL_WAREHOUSE_AREA_ID`) USING BTREE,
  KEY `IDX_PSHIFTODET_PARTSSHIFTOID` (`PARTS_SHIFT_ORDER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_shift_order_detail
-- ----------------------------
INSERT INTO `parts_shift_order_detail` VALUES ('101', '81', '12528', '5039HB5000050P0008A', '双层230-184', '1213', '9A0000001', '1', '7304', '9B3601101', '1', null, '0', null);
INSERT INTO `parts_shift_order_detail` VALUES ('136', '102', '13197', '5080BT5000001P0005A', '锥管1600（180-125）', '10320', '9E0101001', '1', '2143', '9A1203106', '1', null, '0', null);
INSERT INTO `parts_shift_order_detail` VALUES ('242', '112', '10020', '5056HB1600100SYB30A', '四节臂架焊接总成', '49617', 'JY01', '3', '10320', '9E0101001', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('424', '116', '280', 'LHB10000055S00238A', '37米变幅油缸4密封包(G78D)', '49617', 'JY01', '3', '5098', '9B0803304', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('425', '116', '2321', '5009JB3000055A1249A', '油泵回油管', '49617', 'JY01', '3', '3701', '9A1602301', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('426', '116', '269', 'LHB10000066S00238A', '45前伸缩油缸密封包(G100D)', '49617', 'JY01', '3', '5102', '9B0803308', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('427', '116', '13687', '5037HB2000261S00238A', '活塞环', '49617', 'JY01', '3', '4877', '9B0601207', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('428', '116', '13599', '5045HB1000028S00231A', '轴套5', '49617', 'JY01', '3', '5136', '9B0902201', '1', null, '4', null);
INSERT INTO `parts_shift_order_detail` VALUES ('429', '116', '2330', '5010JB3000058A1249A', '油泵吸油管', '49617', 'JY01', '3', '2506', '9A1502501', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('430', '116', '5644', '5045HB3000172S00291A', '吸油胶管', '49617', 'JY01', '3', '4152', '9A3602304', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('431', '116', '4294', '5037HB2000257A6899A', '导向环(80*85*10)', '49617', 'JY01', '3', '2814', '9A1003305', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('432', '116', '282', 'LHB10000053S00238A', '37米变幅油缸2密封包(G76D)', '49617', 'JY01', '3', '5887', '9B0503304', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('433', '116', '5470', '5042HB5100032A6919A', '15°弯管', '49617', 'JY01', '3', '7567', '9B2701401', '1', null, '3', null);
INSERT INTO `parts_shift_order_detail` VALUES ('434', '116', '711', '5037HB3300031S00154A', '管接头', '49617', 'JY01', '3', '5681', '9B0302303', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('435', '116', '726', '5037HB3300047S00154A', '管接头', '49617', 'JY01', '3', '5747', '9B0401402', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('436', '116', '5770', '5042HB5000031A6919A', '输送管2455', '49617', 'JY01', '3', '8313', '9C5001301', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('437', '116', '13582', '5045HB3300272S00154A', '管接头', '49617', 'JY01', '3', '1381', '9A0202308', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('438', '116', '710', '5037HB3300258S00153A', '支腿多路阀(左)', '49617', 'JY01', '3', '5591', '9B0201302', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('439', '116', '4212', '5037HB3300177SYB30A', '美制螺钉', '49617', 'JY01', '3', '5226', '9B1003205', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('440', '116', '86', '5008JB3000097A1249A', '吸油埋线管', '49617', 'JY01', '3', '3780', '9A1803401', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('441', '116', '353', '5008JB9000341S00798A', '定位板', '49617', 'JY01', '3', '1583', '9A0503303', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('442', '116', '13579', '5045HB3300276S00154A', '管接头', '49617', 'JY01', '3', '5737', '9B0401301', '1', null, '3', null);
INSERT INTO `parts_shift_order_detail` VALUES ('443', '116', '13885', '5008JB6000047A1001A', '左组合后尾灯', '49617', 'JY01', '3', '2652', '9A0801501', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('444', '116', '5302', '5037HB2000262A6899A', '活塞密封', '49617', 'JY01', '3', '4879', '9B0601209', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('445', '116', '13616', '5045HB1105023S00238A', '无油轴承50*55*85', '49617', 'JY01', '3', '5140', '9B0902205', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('446', '116', '3746', '5010JB3000048A1249A', '马达泄油管', '49617', 'JY01', '3', '3687', '9A1601502', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('447', '116', '719', '5037HB3300064S00154A', '管接头', '49617', 'JY01', '3', '5766', '9B0402209', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('448', '116', '2356', '5010JB3000063A1249A', '油泵回油管', '49617', 'JY01', '3', '3753', '9A1702501', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('449', '116', '405', '5045HB1103001S00238A', '无油轴承', '49617', 'JY01', '3', '5120', '9B0901203', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('450', '116', '13645', '5037HB3300304S00154A', '管接头', '49617', 'JY01', '3', '5680', '9B0302302', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('451', '116', '302', '5045HB3300705A1249A', '钢管', '49617', 'JY01', '3', '3936', '9A2003102', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('452', '116', '2331', '5010JB3000059A1249A', '油泵回油管', '49617', 'JY01', '3', '3752', '9A1702401', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('453', '116', '772', '5037HB3300088S00154A', '管接头', '49617', 'JY01', '3', '5785', '9B0402408', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('454', '116', '665', '5037HB3300018S00154A', '管接头', '49617', 'JY01', '3', '5804', '9B0403301', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('455', '116', '2295', '5037HB6300632S00804A', '继电器插座', '49617', 'JY01', '3', '5840', '9B0501305', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('456', '116', '741', '5045HB1000029S00231A', '轴套3', '49617', 'JY01', '3', '5138', '9B0902203', '1', null, '4', null);
INSERT INTO `parts_shift_order_detail` VALUES ('457', '116', '13586', '5037HB3300077S00154A', '管接头', '49617', 'JY01', '3', '5794', '9B0403201', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('458', '116', '676', '5037HB3300002S00154A', '接头', '49617', 'JY01', '3', '5800', '9B0403207', '1', null, '3', null);
INSERT INTO `parts_shift_order_detail` VALUES ('459', '116', '13693', '5037HB6300181S00804A', '电位器/电位器帽', '49617', 'JY01', '3', '5856', '9B0502207', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('460', '116', '13585', '5037HB3300055S00154A', '管接头', '49617', 'JY01', '3', '5760', '9B0402203', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('461', '116', '776', '5037HB3300079S00154A', '管接头', '49617', 'JY01', '3', '5796', '9B0403203', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('462', '116', '13588', '5037HB3800028S00154A', '管接头', '49617', 'JY01', '3', '5735', '9B0401208', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('463', '116', '3651', '5037HB2200138S00110A', '垫套', '49617', 'JY01', '3', '2796', '9A1002304', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('464', '116', '712', '5037HB3300042S00154A', '管接头', '49617', 'JY01', '3', '5781', '9B0402404', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('465', '116', '6608', 'LHB10000062S00956A', '45变幅油缸2密封包(G96D)', '49617', 'JY01', '3', '2057', '9A1201205', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('466', '116', '3631', '5037HB2000260SYB30A', '导向环', '49617', 'JY01', '3', '5189', '9B1001304', '1', null, '2', null);
INSERT INTO `parts_shift_order_detail` VALUES ('467', '117', '13183', '5050HB5000011P0005A', '变径输送管1500（?125-?150）', '244', 'SH031B1', '3', '243', 'SH031A1', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('468', '117', '11586', '5052HB5000069SYB30A', '180大弯管', '244', 'SH031B1', '3', '243', 'SH031A1', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('469', '117', '13379', '5056HB5000048P0005A', '变径输送管1670（?150-?180）', '244', 'SH031B1', '3', '243', 'SH031A1', '1', null, '1', null);
INSERT INTO `parts_shift_order_detail` VALUES ('470', '117', '12518', '5056HB5000050P0008A', '36度弯管230法兰', '244', 'SH031B1', '3', '243', 'SH031A1', '1', null, '1', null);

-- ----------------------------
-- Table structure for parts_stock
-- ----------------------------
DROP TABLE IF EXISTS `parts_stock`;
CREATE TABLE `parts_stock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `WAREHOUSE_AREA_CATEGORY_ID` int(11) DEFAULT NULL,
  `PART_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PARTSSTOCK_BRANCHID` (`BRANCH_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_PARTID` (`PART_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_SCOMPANYID` (`STORAGE_COMPANY_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_WACATEGORYID` (`WAREHOUSE_AREA_CATEGORY_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_WAREHOUSEAREAID` (`WAREHOUSE_AREA_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_WAREHOUSEID` (`WAREHOUSE_ID`) USING BTREE,
  KEY `IDX_PARTSSTOCK_WIDPIDWAREID` (`WAREHOUSE_ID`,`WAREHOUSE_AREA_ID`,`PART_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1257328 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_stock
-- ----------------------------
INSERT INTO `parts_stock` VALUES ('3254', '9', '2', '1', '3', '284', '89', '10251', '1000001', '', '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:16.000000', null);
INSERT INTO `parts_stock` VALUES ('12576', '9', '2', '1', '2', '221', '89', '10251', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:16.000000', null);
INSERT INTO `parts_stock` VALUES ('12577', '1', '2', '1', '2', '6102', '89', '3256', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:16.000000', null);
INSERT INTO `parts_stock` VALUES ('16152', '1', '2', '1', '2', '5032', '89', '13830', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', null, null, null, null);
INSERT INTO `parts_stock` VALUES ('16153', '1', '2', '1', '2', '1', '89', '7592', '998', null, '1', 'admin', '2013-12-02 00:39:39.000000', null, null, null, null);
INSERT INTO `parts_stock` VALUES ('16154', '1', '2', '1', '2', '5011', '89', '13832', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', null, null, null, null);
INSERT INTO `parts_stock` VALUES ('16155', '1', '2', '1', '2', '3049', '89', '13833', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:26.000000', null);
INSERT INTO `parts_stock` VALUES ('16156', '1', '2', '1', '2', '3223', '89', '13834', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:26.000000', null);
INSERT INTO `parts_stock` VALUES ('16157', '1', '2', '1', '2', '3217', '89', '13835', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:26.000000', null);
INSERT INTO `parts_stock` VALUES ('16158', '1', '2', '1', '2', '3325', '89', '13836', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:25.000000', null);
INSERT INTO `parts_stock` VALUES ('16159', '1', '2', '1', '2', '3132', '89', '13837', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:25.000000', null);
INSERT INTO `parts_stock` VALUES ('16160', '1', '2', '1', '2', '2953', '89', '13838', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:25.000000', null);
INSERT INTO `parts_stock` VALUES ('16161', '1', '2', '1', '2', '2972', '89', '13839', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:25.000000', null);
INSERT INTO `parts_stock` VALUES ('16163', '1', '2', '1', '2', '4620', '89', '13841', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:22.000000', null);
INSERT INTO `parts_stock` VALUES ('16164', '1', '2', '1', '2', '3505', '89', '13842', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:22.000000', null);
INSERT INTO `parts_stock` VALUES ('16165', '1', '2', '1', '2', '4619', '89', '13843', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:22.000000', null);
INSERT INTO `parts_stock` VALUES ('16166', '1', '2', '1', '2', '4490', '89', '13844', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16168', '1', '2', '1', '2', '4614', '89', '13846', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16169', '1', '2', '1', '2', '4645', '89', '13847', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16170', '1', '2', '1', '2', '4590', '89', '13848', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16171', '1', '2', '1', '2', '4670', '89', '13849', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16172', '1', '2', '1', '2', '4630', '89', '13850', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16173', '1', '2', '1', '2', '3556', '89', '13851', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16174', '1', '2', '1', '2', '4509', '89', '13852', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:21.000000', null);
INSERT INTO `parts_stock` VALUES ('16192', '1', '2', '1', '2', '10390', '89', '13870', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', null, null, null, null);
INSERT INTO `parts_stock` VALUES ('16198', '1', '2', '1', '2', '3809', '89', '13876', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:20.000000', null);
INSERT INTO `parts_stock` VALUES ('16199', '1', '2', '1', '2', '5284', '89', '13877', '-296', null, '1', 'admin', '2013-12-02 00:39:39.000000', null, null, null, null);
INSERT INTO `parts_stock` VALUES ('68685', '293', '1316', '3', '2', '75282', '638', '5080', '0', null, '2846', 'OM209', '2014-03-17 13:15:25.000000', '2846', 'OM209', '2015-04-23 11:05:04.000000', null);
INSERT INTO `parts_stock` VALUES ('70890', '30', '29', '3', '2', '244', '71', '11559', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70891', '30', '29', '3', '2', '244', '71', '11554', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70892', '30', '29', '3', '2', '244', '71', '11552', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70893', '30', '29', '3', '2', '244', '71', '12725', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70894', '30', '29', '3', '2', '244', '71', '10430', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70895', '30', '29', '3', '2', '244', '71', '12715', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70896', '30', '29', '3', '2', '244', '71', '11614', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70897', '30', '29', '3', '2', '244', '71', '12742', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70898', '30', '29', '3', '2', '244', '71', '11611', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70899', '30', '29', '3', '2', '244', '71', '12708', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70900', '30', '29', '3', '2', '244', '71', '12707', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70901', '30', '29', '3', '2', '244', '71', '12670', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70902', '30', '29', '3', '2', '244', '71', '3180', '0', null, '1167', 'SH031', '2014-03-31 14:47:44.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70903', '30', '29', '3', '2', '244', '71', '12427', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70904', '30', '29', '3', '2', '244', '71', '14611', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-06-12 15:04:20.000000', null);
INSERT INTO `parts_stock` VALUES ('70905', '30', '29', '3', '2', '244', '71', '14594', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-05-20 09:52:12.000000', null);
INSERT INTO `parts_stock` VALUES ('70906', '30', '29', '3', '2', '244', '71', '13', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-11-12 10:12:08.000000', null);
INSERT INTO `parts_stock` VALUES ('70907', '30', '29', '3', '2', '244', '71', '6675', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70908', '30', '29', '3', '2', '244', '71', '3577', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('70909', '30', '29', '3', '2', '244', '71', '3571', '0', null, '1167', 'SH031', '2014-03-31 14:47:58.000000', '1167', 'SH031', '2014-04-08 11:05:22.000000', null);
INSERT INTO `parts_stock` VALUES ('72433', '274', '4305', '3', '2', '75264', '697', '5290', '0', null, '2865', 'OM309', '2014-04-13 16:17:27.000000', '2865', 'OM309', '2014-06-28 18:17:06.000000', null);
INSERT INTO `parts_stock` VALUES ('72435', '6', '6', '3', '2', '124', '11', '3198', '0', null, '1142', 'SH006', '2014-04-13 16:17:55.000000', '1142', 'SH006', '2014-04-13 16:19:47.000000', null);
INSERT INTO `parts_stock` VALUES ('1257327', '9', '2', '1', '2', '221', '89', '11707', '-296', '', '1', 'admin', '2013-12-02 00:39:39.000000', '2265', '张尚武', '2014-02-18 14:13:16.000000', '2014-02-18 14:13:16.000000');

-- ----------------------------
-- Table structure for parts_stock_history
-- ----------------------------
DROP TABLE IF EXISTS `parts_stock_history`;
CREATE TABLE `parts_stock_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTS_STOCK_ID` int(11) NOT NULL,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `WAREHOUSE_AREA_CATEGORY_ID` int(11) DEFAULT NULL,
  `PART_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parts_stock_history
-- ----------------------------
INSERT INTO `parts_stock_history` VALUES ('3', '17220', '1', '2', '1', '2', '1213', '89', '13106', '0', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2269', '高利军', '2013-12-16 10:54:45.000000');
INSERT INTO `parts_stock_history` VALUES ('11', '49794', '1', '2', '1', '2', '10320', '89', '14729', '0', null, '1', 'admin', '2013-12-02 16:45:33.000000', '2269', '高利军', '2013-12-16 15:41:02.000000');
INSERT INTO `parts_stock_history` VALUES ('14', '16511', '1', '2', '1', '2', '10320', '89', '11731', '0', null, '1', 'admin', '2013-12-02 00:39:39.000000', '2269', '高利军', '2013-12-16 15:45:57.000000');
INSERT INTO `parts_stock_history` VALUES ('27', '34914', '7', '7', '3', '2', '19358', '273', '7298', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('28', '38872', '7', '7', '3', '2', '15225', '273', '4858', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('29', '38873', '7', '7', '3', '2', '15225', '273', '7080', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('30', '38874', '7', '7', '3', '2', '15225', '273', '12855', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('31', '38875', '7', '7', '3', '2', '15225', '273', '11374', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('32', '38876', '7', '7', '3', '2', '15225', '273', '12323', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('33', '38877', '7', '7', '3', '2', '15225', '273', '7712', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('34', '38878', '7', '7', '3', '2', '15225', '273', '12297', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('35', '38879', '7', '7', '3', '2', '15225', '273', '3401', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('36', '38880', '7', '7', '3', '2', '15225', '273', '8503', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('37', '38881', '7', '7', '3', '2', '15225', '273', '6973', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('38', '38882', '7', '7', '3', '2', '15225', '273', '10067', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('39', '38883', '7', '7', '3', '2', '15225', '273', '13399', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('40', '38884', '7', '7', '3', '2', '15225', '273', '11850', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('41', '38885', '7', '7', '3', '2', '15225', '273', '12165', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('42', '38896', '7', '7', '3', '2', '31407', '273', '3610', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('43', '38897', '7', '7', '3', '2', '31414', '273', '12353', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('44', '38899', '7', '7', '3', '2', '31447', '273', '12615', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('45', '38901', '7', '7', '3', '2', '31796', '273', '12604', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('46', '38902', '7', '7', '3', '2', '31802', '273', '12619', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('47', '38904', '7', '7', '3', '2', '31804', '273', '13183', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('48', '38910', '7', '7', '3', '2', '32714', '273', '717', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('49', '39235', '7', '7', '3', '2', '15225', '273', '13034', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:19:27.000000');
INSERT INTO `parts_stock_history` VALUES ('50', '34842', '7', '7', '3', '2', '18341', '273', '13771', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('51', '34843', '7', '7', '3', '2', '18383', '273', '699', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('52', '34855', '7', '7', '3', '2', '18514', '273', '785', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('53', '34863', '7', '7', '3', '2', '18607', '273', '4227', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('54', '34866', '7', '7', '3', '2', '18641', '273', '4324', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('55', '34877', '7', '7', '3', '2', '18813', '273', '4835', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('56', '34882', '7', '7', '3', '2', '18178', '273', '3203', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('57', '39698', '7', '7', '3', '2', '15878', '273', '13704', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('58', '39699', '7', '7', '3', '2', '15878', '273', '10222', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:27:34.000000');
INSERT INTO `parts_stock_history` VALUES ('59', '34829', '7', '7', '3', '2', '17384', '259', '3100', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('60', '34833', '7', '7', '3', '2', '17417', '259', '4798', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('61', '34835', '7', '7', '3', '2', '17435', '259', '9827', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('62', '34836', '7', '7', '3', '2', '17449', '259', '13568', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('63', '34844', '7', '7', '3', '2', '18397', '259', '1361', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('64', '34860', '7', '7', '3', '2', '18566', '259', '4184', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('65', '34870', '7', '7', '3', '2', '18684', '259', '13888', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('66', '34871', '7', '7', '3', '2', '18704', '259', '2273', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('67', '34876', '7', '7', '3', '2', '18794', '259', '631', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('68', '34880', '7', '7', '3', '2', '18133', '259', '74', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('69', '34892', '7', '7', '3', '2', '19565', '259', '2326', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('70', '34904', '7', '7', '3', '2', '18850', '259', '2269', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('71', '34908', '7', '7', '3', '2', '19270', '259', '2314', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('72', '34910', '7', '7', '3', '2', '19290', '259', '336', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');
INSERT INTO `parts_stock_history` VALUES ('73', '34915', '7', '7', '3', '2', '19362', '259', '3124', '0', null, '1', 'admin', '2013-12-02 02:15:49.000000', '1144', 'SH007', '2013-12-20 15:31:00.000000');

-- ----------------------------
-- Table structure for spare_part
-- ----------------------------
DROP TABLE IF EXISTS `spare_part`;
CREATE TABLE `spare_part` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `LAST_SUBSTITUTE` varchar(50) DEFAULT NULL,
  `NEXT_SUBSTITUTE` varchar(50) DEFAULT NULL,
  `SHELFLIFE` int(11) DEFAULT NULL,
  `ENGLISH_NAME` varchar(100) DEFAULT NULL,
  `PINYIN_CODE` varchar(50) DEFAULT NULL,
  `REFERENCE_CODE` varchar(50) DEFAULT NULL,
  `REFERENCE_NAME` varchar(100) DEFAULT NULL,
  `CAD_CODE` varchar(50) DEFAULT NULL,
  `CAD_NAME` varchar(100) DEFAULT NULL,
  `PART_TYPE` int(11) NOT NULL,
  `SPECIFICATION` varchar(100) DEFAULT NULL,
  `FEATURE` varchar(200) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `LENGTH` decimal(15,6) DEFAULT NULL,
  `WIDTH` decimal(15,6) DEFAULT NULL,
  `HEIGHT` decimal(15,6) DEFAULT NULL,
  `VOLUME` decimal(15,6) DEFAULT NULL,
  `WEIGHT` decimal(15,6) DEFAULT NULL,
  `MATERIAL` varchar(50) DEFAULT NULL,
  `PACKING_AMOUNT` int(11) DEFAULT NULL,
  `PACKING_SPECIFICATION` varchar(200) DEFAULT NULL,
  `PARTS_OUT_PACKING_CODE` varchar(50) DEFAULT NULL,
  `PARTS_IN_PACKING_CODE` varchar(50) DEFAULT NULL,
  `MEASURE_UNIT` varchar(20) NOT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ABANDONERID` int(11) DEFAULT NULL,
  `ABANDONER_NAME` varchar(100) DEFAULT NULL,
  `ABANDON_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  `MIN_PACKING_AMOUNT` int(11) DEFAULT NULL,
  `GROUP_ABC_CATEGORY` int(11) DEFAULT NULL,
  `IMS_COMPRESSION_NUMBER` varchar(50) DEFAULT NULL,
  `IMS_MANUFACTURER_NUMBER` varchar(50) DEFAULT NULL,
  `PRODUCT_BRAND` varchar(50) DEFAULT NULL,
  `SUBSTANDARD_NAME` varchar(500) DEFAULT NULL,
  `TOTAL_NUMBER` varchar(100) DEFAULT NULL,
  `FACTURY` varchar(100) DEFAULT NULL,
  `IS_ORIGINAL` int(11) DEFAULT NULL,
  `CATEGORY_CODE` varchar(100) DEFAULT NULL,
  `OVERSEA_SPARTS_FIGURE` varchar(18) DEFAULT NULL,
  `CATEGORY_NAME` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME1` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE1` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE13` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME13` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE12` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME12` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE11` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME11` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE10` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME10` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE9` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME9` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE8` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME8` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE7` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME7` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE6` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME6` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE5` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME5` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE4` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME4` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE3` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME3` varchar(100) DEFAULT NULL,
  `EXPANDLANGUAGE_CODE2` varchar(50) DEFAULT NULL,
  `EXPANDLANGUAGE_NAME2` varchar(100) DEFAULT NULL,
  `EXCHANGE_IDENTIFICATION` varchar(50) DEFAULT NULL,
  `GOLDEN_TAX_CLASSIFYID` int(11) DEFAULT NULL,
  `GOLDEN_TAX_CLASSIFY_CODE` varchar(50) DEFAULT NULL,
  `GOLDEN_TAX_CLASSIFY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_SPAREPARTCODE` (`CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11708 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spare_part
-- ----------------------------
INSERT INTO `spare_part` VALUES ('42', '5037HB3300289S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:41.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('169', '5037HB3300339A1249A', '无缝管', null, null, null, null, null, null, null, '5037HB4700050', null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('170', '5008JB7000125S00150A', '安全阀', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-01 09:25:20.961000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('171', '5008JB7000124S00150A', '水平转柄换向阀(手动)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-09-24 16:25:07.814000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('172', '5037HB3300035S00151A', '管夹', null, null, null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-09-24 16:25:07.819000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('173', '5037HB3300043S00154A', '接头', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-09-23 15:13:28.481000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('174', '5037HB3300041S00154A', '管接头', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-10 13:47:27.335000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('175', '5037HB3300038S00154A', '管接头', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-10-24 13:13:13.429000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('176', '5037HB3300162S00164A', '过滤器', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-08-04 14:57:11.390000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('177', '5037HB3300243S00164A', '高压滤芯', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-09-15 13:33:25.544000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('178', '5037HB9500051S00164A', '吸油滤芯', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-09-15 13:33:00.183000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('179', '5037HB9500135S00164A', '出料口密封圈200*10', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-06-25 18:46:50.106000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('181', '5037HB3300242S00164A', '高压过滤器', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-06 09:55:02.818000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('182', '5037HB8200001S00165A', '分动箱(开天)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-01-08 16:06:18.545000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('183', '5037HB3300191S00172A', '蓄能器', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-05-15 10:38:00.279000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('184', '5037HB9500050S00172A', '气囊', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-06 09:55:02.920000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('185', '5037HB7100005S00175A', '马达', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-17 10:18:29.937000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('186', '5037HB3600001S00181A', '主阀块', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-01-09 15:33:42.159000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('187', '5037HB3600038S00181A', '小阀块', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-07-10 13:47:27.347000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('188', '5037HB3700006S00181A', '集油块', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-01-09 15:33:42.165000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('189', '5008JB1000014S00196A', '橡胶圈', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2015-08-13 15:57:12.968000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('190', '5037HB3300391S00196A', '钢管', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-09-15 11:19:03.560000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('191', '5045HB3300427S00196A', '钢管', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('192', '5045HB5100023S00196A', '软管托架', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('193', '5037HB3300147S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, '2014-11-25 11:20:40.506000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('195', '5037HB3300145S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:42.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('395', '5045HB3300085S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:43.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('396', '5045HB3300084S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:43.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('397', '5045HB3300083S00201A', '胶管总成', null, null, null, null, null, null, null, '5045HB8200502', null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:43.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('399', '5045HB3300081S00201A', '胶管总成', null, null, null, null, null, null, null, '5045HB4100014', null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('400', '5045HB3300080S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('401', '5037HB6100040S00804A', '电喇叭', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('402', '5037HB6100041S00804A', '温度传感器', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-08-13 15:57:13.710000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('403', '5037HB6100101S00804A', '继电器', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('404', '5045HB1103023S00238A', '无油轴承', null, null, null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-09-24 16:25:07.871000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('405', '5045HB1103001S00238A', '无油轴承', null, null, null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2014-01-09 15:34:20.812000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('406', '5037HB1100401S00238A', '无油轴承', null, null, null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2014-01-09 15:33:42.296000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('407', '5037HB1100301S00238A', '无油轴承', null, null, null, null, null, null, null, null, null, '1', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-06-04 10:08:55.371000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('408', '5037HB1100201S00238A', '无油轴承', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-09-24 16:25:07.876000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('409', '5037HB1100400S00238A', '变幅油缸Ⅳ', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2014-01-08 16:06:18.550000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('410', '5008JB3000173S00282A', '溢流阀', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('411', '5037HB3300192S00282A', '单向节流阀', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2014-01-09 15:33:42.313000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('413', '5037HB3600009S00282A', '溢流阀(国产)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('414', '5037HB3600008S00282A', '电磁球阀', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-07-30 16:41:30.196000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('415', '5037HB3600007S00282A', '减压阀(国产)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-03-20 18:35:42.750000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('416', '5037HB3600005S00282A', '电液换向阀(国产)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-06-08 19:41:32.613000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('417', '5037HB3600003S00282A', '电磁阀(国产)', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:44.000000', null, null, null, null, null, null, '2015-08-13 15:57:13.849000', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('3254', '5037HB3300291S00201A', '胶管总成', null, null, null, null, null, null, null, null, null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:41.000000', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('7592', '5037HB3300290S00201A', '胶管总成', null, null, null, null, null, null, null, '5037HB3300279', null, '2', null, null, '1', null, null, null, null, null, null, null, null, null, null, '件', '4', 'zgq', '2013-11-10 18:47:41.000000', null, null, null, null, null, null, null, '1', null, null, 'null', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `spare_part` VALUES ('11707', '5037HB3300290S002dd1A', '胶管总成', '', '', null, '', '', '', '', '5037HB3300279', '', '2', '', '', '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '', null, '', '', '', '件', '4', 'zgq', '2013-11-10 18:47:41.000000', null, '2015-08-13 15:57:13.849000', '2015-08-13 15:57:13.849000', null, '', '2015-08-13 15:57:13.849000', '2015-08-13 15:57:13.849000', '1', null, '', 'null', '', '', '', '', null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `REGIONID` int(11) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `CONTACT` varchar(50) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `STORAGE_STRATEGY` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `PICTURE` varchar(200) DEFAULT NULL,
  `BRANCHID` int(11) NOT NULL,
  `STORAGE_COMPANY_ID` int(11) NOT NULL,
  `STORAGE_COMPANY_TYPE` int(11) NOT NULL,
  `STORAGE_CENTER` int(11) DEFAULT NULL,
  `WMS_INTERFACE` tinyint(4) NOT NULL DEFAULT '0',
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROWVERSION` datetime(6) DEFAULT NULL,
  `IS_CENTRALIZED_PURCHASE` tinyint(4) DEFAULT NULL,
  `IS_QUALITY_WAREHOUSE` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_WAREHOUSE_BRANCHID` (`BRANCHID`) USING BTREE,
  KEY `IDX_WAREHOUSE_REGIONID` (`REGIONID`) USING BTREE,
  KEY `IDX_WAREHOUSE_SCOMPANYID` (`STORAGE_COMPANY_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=808 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('562', 'OM602', '昆明劲驰泵车配件仓库', '1', '99', '昆明市安宁太平新区华楚国际汽配城B11栋', null, '15398518788', '蔡超', null, '2850686630@QQ.COM', '1', null, null, '2', '4314', '3', null, '0', '2973', 'OM601', '2014-11-04 16:22:33.000000', '2973', 'OM601', '2014-11-04 16:25:44.000000', '2014-11-04 16:21:45.585000', '0', null);
INSERT INTO `warehouse` VALUES ('663', 'BNPJZK-HRCK', '保内配件总库-怀柔仓库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '010-61669532/9257', '赵振国', '010-61669230', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-05-16 15:09:34.820000', null, null);
INSERT INTO `warehouse` VALUES ('664', 'YJXLCK4', '直供虚拟专用库（昆仑-北京分销中心）', '2', '1', '北京市大兴区庞各庄镇北京昆仑润滑油厂院内102号', null, '010-84784671', '高昆', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('665', 'ZGPJZYK', '整改专用库', '2', '1', '北京市怀柔区富乐工业园G栋2区', null, '61669532', '赵振国', '61669230', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-04-08 08:59:16.132000', null, null);
INSERT INTO `warehouse` VALUES ('666', 'SCZGK', '上柴直供虚拟库', '2', '1', '上海市杨浦区军工路2636号', null, '18621802662', '郁军皖', '18621802662', '18621802662', '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('667', 'XJXLCK5', '欧曼直供虚拟专用库(SK)', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('668', 'YJXLCK3', '直供应急虚拟专用库（康胜）', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('669', 'BNMYK', '保内密云配件总库（搬迁)', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-11-13 16:28:56.500000', null, null);
INSERT INTO `warehouse` VALUES ('670', 'AKZGK', '安凯直供虚拟库', '2', '1', '北京市怀柔区富乐工业园二区G栋', null, '01089685415', '常鑫', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-11-13 15:35:42.189000', null, null);
INSERT INTO `warehouse` VALUES ('671', 'YJXLCK5', '直供应急虚拟专用库（嘉实多）', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('672', 'YJXLCK2', '直供应急虚拟专用库（壳牌）', '2', '1', '欧曼配件公司院内', null, null, '壳牌', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('673', 'XNK(KRKC)', '虚拟库（空入空出）', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '61669532', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-11-13 13:03:12.957000', null, null);
INSERT INTO `warehouse` VALUES ('674', 'BWPJZK-HRCK', '配件总库-怀柔仓库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '010-61669653', '李龙辉', '010-61669257', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-04-20 08:36:39.125000', null, null);
INSERT INTO `warehouse` VALUES ('675', 'BWPJZK-TG', '配件总库-北京托管仓库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '010-61669501', '赵晓军', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('676', 'BWYJXLCK1', '直供虚拟专用库(昆仑)', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13311503115', '高昆', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('677', 'BWYJXLCK2', '油品A8013直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '15611912788', '房亮', '15611912788', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:58:23.000000', '2015-10-19 09:17:37.338000', null, null);
INSERT INTO `warehouse` VALUES ('678', 'BWYJXLCK3', '滤芯A8018直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '0533-3286666', '李永华', '0533-3269999', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:57:15.000000', '2015-11-13 10:19:12.842000', null, null);
INSERT INTO `warehouse` VALUES ('679', 'BWYJXLCK4', '油品A8022直供库', '2', '1', '北京市大兴区庞各庄镇北京昆仑润滑油厂院内102号', null, '010-84784671', '高昆', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:56:43.000000', '2015-11-05 10:14:39.942000', null, null);
INSERT INTO `warehouse` VALUES ('680', 'BWYJXLCK6', '油品A8006直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13910149655', '王超', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:56:18.000000', '2015-11-12 13:32:47.576000', null, null);
INSERT INTO `warehouse` VALUES ('681', 'BWSBSXJK-Z', '三包失效件库', '2', '1', '北京市怀柔区富乐工业园区G栋', null, '61669856', '李龙辉', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6692', '李龙辉', '2016-03-03 16:41:22.000000', '2016-03-03 16:06:45.378000', null, '1');
INSERT INTO `warehouse` VALUES ('682', 'BWYJCLCK7', '驾驶室（车门）直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13601316281', '朱兆荣', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:49:16.000000', '2015-10-28 09:11:21.818000', null, null);
INSERT INTO `warehouse` VALUES ('683', 'BWYJXLCK8', '摩擦片A8017直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '0412-8811989', '田盈盈', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:52:54.000000', '2015-10-21 15:09:38.161000', null, null);
INSERT INTO `warehouse` VALUES ('684', 'BWYJXLCK9', '滤芯0026直供虚拟专用库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '18678032196', '王沛', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('685', 'BWYJXLCK', '长城油品直供虚拟专用库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13121975522', '刘玉晶', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('686', 'BWYJXLCK10', '尿素A8047直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '18611192374', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:55:32.000000', '2015-03-26 07:42:34.944000', null, null);
INSERT INTO `warehouse` VALUES ('687', 'BWYJXLCK11', '滤芯A8057直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '15936596365', '宋仕星', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:53:41.000000', '2015-10-23 07:43:00.300000', null, null);
INSERT INTO `warehouse` VALUES ('688', 'BWYJXLCK12', '尿素A2093直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13905173890', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:47:31.000000', '2015-11-12 15:11:57.500000', null, null);
INSERT INTO `warehouse` VALUES ('689', 'BWYJXLCK17', '起动机（发电机）A8038直供库', '2', '1', null, null, '13483832010', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:54:07.000000', '2015-03-26 07:41:09.553000', null, null);
INSERT INTO `warehouse` VALUES ('690', 'BWYJXLCK18', '油品A8078直供库', '2', '1', null, null, '18601585830', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:48:54.000000', '2015-10-20 14:13:55.752000', null, null);
INSERT INTO `warehouse` VALUES ('691', 'BWYJXLCK21', '摩擦片A8080直供库', '2', '1', null, null, '15253257311', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:52:34.000000', '2015-03-26 07:39:36.670000', null, null);
INSERT INTO `warehouse` VALUES ('692', 'BWYJXLCK23', '滤芯A0231直供库', '2', '1', null, null, '13805361039', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:50:59.000000', '2015-03-26 07:38:02.399000', null, null);
INSERT INTO `warehouse` VALUES ('693', 'BWYJXLCK25', '缸体A8063直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, '13605277026', '房建国', '0514-87391588', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:47:08.000000', '2015-10-14 16:29:59.743000', null, null);
INSERT INTO `warehouse` VALUES ('694', 'BWYJXLCK19', '油品A8079直供库', '2', '1', null, null, '18611362777', '赵治军', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:44:39.000000', '2015-11-11 15:07:06.950000', null, null);
INSERT INTO `warehouse` VALUES ('695', 'BWYJXLCK26', '滤芯A8096直供库', '2', '1', null, null, '13911639003', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:52:14.000000', '2015-11-09 09:23:43.238000', null, null);
INSERT INTO `warehouse` VALUES ('696', 'BWYJXLCK30', '轮胎A1697直供库', '2', '1', null, null, '13356893276', null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:50:22.000000', '2015-05-30 09:56:49.948000', null, null);
INSERT INTO `warehouse` VALUES ('697', 'BWYJXLCK22', '尿素A8083直供库', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:53:20.000000', '2015-09-23 09:04:50.268000', null, null);
INSERT INTO `warehouse` VALUES ('698', 'BWYJXLCK5', '胶类A8025直供库', '2', '1', '北京市怀柔区富乐工业园区G栋2区', null, ' 0710-3820718', '冯云波', ' 0710-3820718', null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:55:54.000000', '2015-11-10 11:19:15.614000', null, null);
INSERT INTO `warehouse` VALUES ('699', 'BWYJXLCK13', '四配套A6939直供库', '2', '1', '北京市怀柔区富乐工业园区G栋', null, '13932112395', '段江涛', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:54:28.000000', '2015-10-23 12:36:55.134000', null, null);
INSERT INTO `warehouse` VALUES ('700', 'BWYJXLCK14', '离合器A6899直供库', '2', '1', '北京市怀柔区富乐工业园区G栋', null, '18618143869', '林立民', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:49:33.000000', '2015-11-05 11:25:33.695000', null, null);
INSERT INTO `warehouse` VALUES ('702', 'BWYJXLCK24', '转向油泵A1231直供虚拟专用库', '2', '1', '大连市开发区双D港生命二路九号', null, '18609860162', '韩毅', '0411-87556810', '421202164@qq.com', '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('703', 'BWYJXLCK28', '油品A8098直供库', '2', '1', '山东省潍坊民生东街', null, '13953697693', '陈铁群', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:55:11.000000', '2015-09-24 13:19:04.809000', null, null);
INSERT INTO `warehouse` VALUES ('704', 'BWYJXLCK29', '潍柴备品A1307直供库', '2', '1', '山东省潍坊高新区福寿东街', null, '13964680126', '侯高峰', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:54:48.000000', '2015-03-26 07:41:50.938000', null, null);
INSERT INTO `warehouse` VALUES ('705', 'BWMYK', '保外密云配件总库（搬迁）', '2', '1', null, null, null, null, null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', null, null, null, '2015-11-13 16:28:30.794000', null, null);
INSERT INTO `warehouse` VALUES ('769', 'BWYJXLCK15', '制动鼓（轮毂）A6964直供库', '2', '1', null, null, '13831917670', '张伟', null, null, '1', null, null, '2203', '2203', '1', null, '0', '1', 'Admin', '2015-01-26 14:41:31.000000', '6616', '张欣', '2015-03-26 07:50:00.000000', '2015-09-24 15:49:50.292000', null, null);
INSERT INTO `warehouse` VALUES ('802', 'FXZX027', '青岛新伟', '1', '1', '青岛市重庆中路670号', null, '0532-84669286', '宋吉军', '0532-84669286', 'omqdxwpj@126.com', '1', null, null, '2203', '4270', '3', '1', '0', '1', 'Admin', '2015-01-26 16:00:13.000000', '7230', 'FT004581', '2015-04-16 11:22:32.000000', '2015-10-14 15:52:19.591000', null, null);
INSERT INTO `warehouse` VALUES ('803', 'FXZX026', '南昌欧威', '1', '1', '南昌市小兰经济开发区金沙三路869号', null, '0791-85997788', '付琛', '0791-85982555', '420481121@qq.com', '1', null, null, '2203', '4300', '3', null, '0', '1', 'Admin', '2015-01-26 16:00:13.000000', '7224', 'FT003736', '2016-02-16 10:15:46.000000', '2016-02-16 09:42:04.613000', '0', '1');
INSERT INTO `warehouse` VALUES ('804', 'FXZX015', '徐州分库', '1', '1', '徐州市北三环三星雕塑西200米', null, '0516-87766288', '轩传传', '0516-87767132', null, '1', null, null, '2203', '4297', '3', null, '0', '1', 'Admin', '2015-01-26 16:00:13.000000', '8702', '夏正亚', '2015-02-27 15:08:10.000000', '2015-11-12 08:37:54.866000', null, null);
INSERT INTO `warehouse` VALUES ('805', 'FXZX028', '南阳分库', '1', '1', '河南省南阳市百里奚路光彩汽配城东门口78号', null, '0377-62177156', '万瑞', '0371-62177167', 'nyfxzx028@163.com', '1', null, null, '2203', '4296', '3', null, '0', '1', 'Admin', '2015-01-26 16:00:13.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('806', 'FXZX031', '丹东分库', '1', '1', '沈阳市大东区长安路111号', null, '024-24348190', '杨丽', '024-24331156', 'ftsyzxk@vip.163.com', '1', null, null, '2203', '4304', '3', null, '0', '1', 'Admin', '2015-01-26 16:00:13.000000', null, null, null, null, null, null);
INSERT INTO `warehouse` VALUES ('807', 'FXZX035', '仁和远达（贵州）', '1', '1', '贵阳市花溪区石板镇金石产业园汽配城8栋22号', null, '18888363666', '孙秀峰', null, 'www.sxf0531@163.com', '1', null, null, '2203', '4309', '3', null, '0', '1', 'Admin', '2015-01-26 16:00:13.000000', '7188', 'FT000009', '2015-01-30 11:13:11.000000', '2015-10-25 09:44:36.472000', '1', null);

-- ----------------------------
-- Table structure for warehouse_area
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_area`;
CREATE TABLE `warehouse_area` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `CODE` varchar(50) NOT NULL,
  `TOP_LEVEL_WAREHOUSE_AREA_ID` int(11) DEFAULT NULL,
  `AREA_CATEGORY_ID` int(11) DEFAULT NULL,
  `STATUS` int(11) NOT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  `AREA_KIND` int(11) NOT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_WAREA_ACATEGID` (`AREA_CATEGORY_ID`) USING BTREE,
  KEY `IDX_WAREA_AREAKIND` (`AREA_KIND`) USING BTREE,
  KEY `IDX_WAREA_CODE` (`CODE`) USING BTREE,
  KEY `IDX_WAREA_PARENTID` (`PARENT_ID`) USING BTREE,
  KEY `IDX_WAREA_STATUS` (`STATUS`) USING BTREE,
  KEY `IDX_WAREA_TLVLWAREAID` (`TOP_LEVEL_WAREHOUSE_AREA_ID`) USING BTREE,
  KEY `IDX_WAREA_WHOUSEID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52479 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_area
-- ----------------------------
INSERT INTO `warehouse_area` VALUES ('1', '1', '86', 'SH027B', null, '1', '1', null, '2', '1163', 'SH027', '2013-11-14 10:59:10.000000', null, null, null, '2013-11-15 17:50:55.484000');
INSERT INTO `warehouse_area` VALUES ('220', '17', '217', 'X1-01-01', '217', '89', '1', null, '3', '1163', 'SH027', '2013-11-14 11:00:00.000000', null, null, null, '2015-08-11 17:16:14.297000');
INSERT INTO `warehouse_area` VALUES ('221', '9', '218', 'SH027B1', '218', '89', '1', null, '3', '1163', 'SH027', '2013-11-14 11:00:12.000000', null, null, null, '2013-11-14 11:11:47.523000');
INSERT INTO `warehouse_area` VALUES ('223', '24', '93', 'SH028B', null, '62', '1', null, '2', '1164', 'SH028', '2013-11-14 11:01:43.000000', null, null, null, '2013-11-14 11:13:18.280000');
INSERT INTO `warehouse_area` VALUES ('226', '24', '223', 'SH028B1', '223', '62', '1', null, '3', '1164', 'SH028', '2013-11-14 11:02:32.000000', null, null, null, '2013-11-14 11:14:07.995000');
INSERT INTO `warehouse_area` VALUES ('227', '24', '224', 'SH028C1', '224', '63', '1', null, '3', '1164', 'SH028', '2013-11-14 11:02:44.000000', null, null, null, '2013-11-14 11:14:20.289000');
INSERT INTO `warehouse_area` VALUES ('228', '18', '87', 'SH029A', null, '1320', '99', null, '2', '1165', 'SH029', '2013-11-14 11:03:58.000000', '1165', 'SH029', '2013-12-05 13:42:16.000000', '2013-12-05 13:54:30.245000');
INSERT INTO `warehouse_area` VALUES ('230', '18', '87', 'SH029C', null, '66', '99', null, '2', '1165', 'SH029', '2013-11-14 11:04:34.000000', '1165', 'SH029', '2013-12-05 13:42:27.000000', '2013-12-05 13:54:41.149000');
INSERT INTO `warehouse_area` VALUES ('231', '18', '228', 'SH029A1', '228', '64', '99', null, '3', '1165', 'SH029', '2013-11-14 11:04:49.000000', '1165', 'SH029', '2013-12-05 13:42:16.000000', '2013-12-05 13:54:30.259000');
INSERT INTO `warehouse_area` VALUES ('232', '18', '229', 'SH029B1', '229', '65', '1', null, '3', '1165', 'SH029', '2013-11-14 11:05:05.000000', null, null, null, '2015-06-01 09:42:40.130000');
INSERT INTO `warehouse_area` VALUES ('233', '18', '230', 'SH029C1', '230', '66', '99', null, '3', '1165', 'SH029', '2013-11-14 11:05:17.000000', '1165', 'SH029', '2013-12-05 13:42:27.000000', '2013-12-05 13:54:41.229000');
INSERT INTO `warehouse_area` VALUES ('269', '28', '266', 'SH017C1', '266', '84', '1', null, '3', '1154', 'SH017', '2013-11-14 11:39:13.000000', null, null, null, '2013-11-14 11:50:48.661000');
INSERT INTO `warehouse_area` VALUES ('276', '1', '1', 'JY', null, '88', '1', null, '2', '4', 'zgq', '2013-11-14 15:12:25.000000', null, null, null, '2015-09-15 09:40:55.156000');
INSERT INTO `warehouse_area` VALUES ('277', '1', '1', 'BG', null, '89', '1', null, '2', '4', 'zgq', '2013-11-14 15:12:49.000000', null, null, null, '2015-09-15 09:40:40.366000');
INSERT INTO `warehouse_area` VALUES ('284', '9', '119', 'FJ0002', null, '91', '1', null, '2', '1150', 'SH013', '2013-11-15 16:01:54.000000', null, null, null, '2013-11-15 16:13:32.365000');
INSERT INTO `warehouse_area` VALUES ('285', '9', '119', 'FJ0003', null, '92', '1', null, '2', '1150', 'SH013', '2013-11-15 16:02:25.000000', null, null, null, '2013-11-15 16:14:02.992000');
INSERT INTO `warehouse_area` VALUES ('286', '9', '119', 'FJ0004', null, '93', '1', null, '2', '1150', 'SH013', '2013-11-15 16:02:44.000000', null, null, null, '2013-11-15 16:14:22.157000');
INSERT INTO `warehouse_area` VALUES ('292', '20', '89', '1A0101003', null, '99', '1', null, '2', '1155', 'SH018', '2013-11-15 16:53:40.000000', null, null, null, '2015-04-26 15:14:29.469000');
INSERT INTO `warehouse_area` VALUES ('294', '10', '79', 'SGSG111', null, '100', '1', null, '2', '1147', 'SH010', '2013-11-15 17:12:12.000000', null, null, null, '2014-09-03 09:40:44.860000');
INSERT INTO `warehouse_area` VALUES ('304', '9', '285', 'FJ0003B1', '285', '92', '1', null, '2', '1150', 'SH013', '2013-11-15 17:33:06.000000', null, null, null, '2013-11-15 17:44:44.191000');
INSERT INTO `warehouse_area` VALUES ('310', '65', '300', 'SH007D', null, '113', '99', null, '2', '1144', 'SH007', '2013-11-15 17:37:56.000000', '1144', 'SH007', '2013-11-15 17:45:50.000000', '2013-11-15 17:57:27.783000');
INSERT INTO `warehouse_area` VALUES ('315', '21', '181', '003', '181', '41', '1', null, '2', '1156', 'SH019', '2013-11-15 17:46:19.000000', null, null, null, '2013-11-15 17:57:56.781000');
INSERT INTO `warehouse_area` VALUES ('52068', '1', '49883', '1A2004403', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52069', '1', '49883', '1A2004404', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52070', '1', '49883', '1A2004405', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52071', '1', '49883', '1A2004406', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52072', '1', '49883', '1A2005101', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, '2015-02-10 10:52:06.307000');
INSERT INTO `warehouse_area` VALUES ('52073', '1', '49883', '1A2005102', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52074', '1', '49883', '1A2005103', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52458', '1', '49883', '1A2405305', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52459', '1', '49883', '1A2405306', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52460', '1', '49883', '1A2405401', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52461', '1', '49883', '1A2405402', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52462', '1', '49883', '1A2405403', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52463', '1', '49883', '1A2405404', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52464', '1', '49883', '1A2405405', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52465', '1', '49883', '1A2405406', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52466', '1', '49883', '1A2501101', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, '2015-02-10 09:43:35.134000');
INSERT INTO `warehouse_area` VALUES ('52467', '1', '49883', '1A2501102', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52468', '1', '49883', '1A2501103', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52469', '1', '49883', '1A2501104', '277', '70', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52470', '1', '49883', '1A2501105', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52471', '1', '49883', '1A2501106', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52472', '1', '49883', '1A2501201', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, '2015-02-11 15:23:07.112000');
INSERT INTO `warehouse_area` VALUES ('52473', '1', '49883', '1A2501202', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, '2015-02-10 14:45:09.191000');
INSERT INTO `warehouse_area` VALUES ('52474', '1', '49883', '1A2501203', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52475', '1', '49883', '1A2501204', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52476', '1', '49883', '1A2501205', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52477', '1', '49883', '1A2501206', '277', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, null, null, null);
INSERT INTO `warehouse_area` VALUES ('52478', '9', '11701', '1A2501301', '221', '89', '1', '批量增加库区库位 ', '3', '1', 'Admin', '2014-02-13 17:38:14.000000', null, '', '0000-00-00 00:00:00.000000', '2015-02-11 16:31:36.968000');

-- ----------------------------
-- Table structure for warehouse_area_category
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_area_category`;
CREATE TABLE `warehouse_area_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3044 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_area_category
-- ----------------------------
INSERT INTO `warehouse_area_category` VALUES ('89', '3');
INSERT INTO `warehouse_area_category` VALUES ('91', '3');
INSERT INTO `warehouse_area_category` VALUES ('1098', '1');
INSERT INTO `warehouse_area_category` VALUES ('1100', '1');
INSERT INTO `warehouse_area_category` VALUES ('1178', '2');
INSERT INTO `warehouse_area_category` VALUES ('1319', '1');
INSERT INTO `warehouse_area_category` VALUES ('1320', '1');
INSERT INTO `warehouse_area_category` VALUES ('1378', '1');
INSERT INTO `warehouse_area_category` VALUES ('1398', '1');
INSERT INTO `warehouse_area_category` VALUES ('1465', '1');
INSERT INTO `warehouse_area_category` VALUES ('1498', '1');
INSERT INTO `warehouse_area_category` VALUES ('1506', '1');
INSERT INTO `warehouse_area_category` VALUES ('1507', '1');
INSERT INTO `warehouse_area_category` VALUES ('1508', '1');
INSERT INTO `warehouse_area_category` VALUES ('1510', '0');
INSERT INTO `warehouse_area_category` VALUES ('1511', '1');
INSERT INTO `warehouse_area_category` VALUES ('1539', '0');
INSERT INTO `warehouse_area_category` VALUES ('1839', '1');
INSERT INTO `warehouse_area_category` VALUES ('1858', '1');
INSERT INTO `warehouse_area_category` VALUES ('1861', '1');
INSERT INTO `warehouse_area_category` VALUES ('1862', '1');
INSERT INTO `warehouse_area_category` VALUES ('1939', '1');
INSERT INTO `warehouse_area_category` VALUES ('1980', '3');
INSERT INTO `warehouse_area_category` VALUES ('2022', '3');
INSERT INTO `warehouse_area_category` VALUES ('2081', '3');
INSERT INTO `warehouse_area_category` VALUES ('2202', '1');
INSERT INTO `warehouse_area_category` VALUES ('2220', '3');
INSERT INTO `warehouse_area_category` VALUES ('2498', '1');
INSERT INTO `warehouse_area_category` VALUES ('2581', '1');
INSERT INTO `warehouse_area_category` VALUES ('2658', '1');
INSERT INTO `warehouse_area_category` VALUES ('2659', '1');
INSERT INTO `warehouse_area_category` VALUES ('2678', '1');
INSERT INTO `warehouse_area_category` VALUES ('2680', '1');
INSERT INTO `warehouse_area_category` VALUES ('2698', '1');
INSERT INTO `warehouse_area_category` VALUES ('2701', '2');
INSERT INTO `warehouse_area_category` VALUES ('2718', '1');
INSERT INTO `warehouse_area_category` VALUES ('2738', '1');
INSERT INTO `warehouse_area_category` VALUES ('2799', '1');
INSERT INTO `warehouse_area_category` VALUES ('2818', '3');
INSERT INTO `warehouse_area_category` VALUES ('2838', '2');
INSERT INTO `warehouse_area_category` VALUES ('2918', '1');
INSERT INTO `warehouse_area_category` VALUES ('2919', '0');
INSERT INTO `warehouse_area_category` VALUES ('2938', '3');
INSERT INTO `warehouse_area_category` VALUES ('2940', '3');
INSERT INTO `warehouse_area_category` VALUES ('2959', '2');
INSERT INTO `warehouse_area_category` VALUES ('2998', '1');
INSERT INTO `warehouse_area_category` VALUES ('3018', '1');
INSERT INTO `warehouse_area_category` VALUES ('3038', '1');
INSERT INTO `warehouse_area_category` VALUES ('3040', '1');
INSERT INTO `warehouse_area_category` VALUES ('3043', '1');

-- ----------------------------
-- Table structure for warehouse_area_history
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_area_history`;
CREATE TABLE `warehouse_area_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSEID` int(11) NOT NULL,
  `STORAGECOMPANYID` int(11) NOT NULL,
  `STORAGECOMPANYTYPE` int(11) NOT NULL,
  `BRANCHID` int(11) NOT NULL,
  `WAREHOUSEAREAID` int(11) NOT NULL,
  `WAREHOUSEAREACATEGORYID` int(11) DEFAULT NULL,
  `PARTID` int(11) NOT NULL,
  `CREATORID` int(11) DEFAULT NULL,
  `CREATORNAME` varchar(100) DEFAULT NULL,
  `CREATETIME` datetime(6) DEFAULT NULL,
  `MODIFIERID` int(11) DEFAULT NULL,
  `MODIFIERNAME` varchar(100) DEFAULT NULL,
  `MODIFYTIME` datetime(6) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `DESTWAREHOUSEAREAID` int(11) DEFAULT NULL,
  `DESTWAREHOUSEAREACATEGORYID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_WAHISTORY_BRANCHID` (`BRANCHID`) USING BTREE,
  KEY `IDX_WAHISTORY_PARTID` (`PARTID`) USING BTREE,
  KEY `IDX_WAHISTORY_STORAGECOMPANYID` (`STORAGECOMPANYID`) USING BTREE,
  KEY `IDX_WAHISTORY_WACATEGORYID` (`WAREHOUSEAREACATEGORYID`) USING BTREE,
  KEY `IDX_WAHISTORY_WAREHOUSEAREAID` (`WAREHOUSEAREAID`) USING BTREE,
  KEY `IDX_WAHISTORY_WAREHOUSEID` (`WAREHOUSEID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=778 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_area_history
-- ----------------------------
INSERT INTO `warehouse_area_history` VALUES ('106', '1', '2', '1', '2', '10320', '1', '11731', '2269', '高利军', '2013-12-16 15:45:57.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('107', '7', '7', '3', '2', '49671', '1', '12049', '1144', 'SH007', '2013-12-16 17:05:18.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('108', '7', '7', '3', '2', '49671', '1', '12264', '1144', 'SH007', '2013-12-16 17:05:18.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('109', '7', '7', '3', '2', '49671', '1', '11537', '1144', 'SH007', '2013-12-16 17:05:18.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('125', '7', '7', '3', '2', '39421', '1', '3540', '1144', 'SH007', '2013-12-20 15:08:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('126', '7', '7', '3', '2', '39421', '1', '6976', '1144', 'SH007', '2013-12-20 15:08:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('189', '7', '7', '3', '2', '42437', '1', '10121', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('190', '7', '7', '3', '2', '42437', '1', '8848', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('191', '7', '7', '3', '2', '42437', '1', '10128', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('192', '7', '7', '3', '2', '42437', '1', '9751', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('193', '7', '7', '3', '2', '42437', '1', '9797', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('194', '7', '7', '3', '2', '42437', '1', '7095', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('195', '7', '7', '3', '2', '42437', '1', '10140', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('196', '7', '7', '3', '2', '42437', '1', '10102', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('197', '7', '7', '3', '2', '42437', '1', '9104', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('198', '7', '7', '3', '2', '42437', '1', '10098', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('199', '7', '7', '3', '2', '42437', '1', '5764', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('200', '7', '7', '3', '2', '42437', '1', '2120', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('201', '7', '7', '3', '2', '42437', '1', '9196', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('202', '7', '7', '3', '2', '42437', '1', '707', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('203', '7', '7', '3', '2', '42437', '1', '7465', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('204', '7', '7', '3', '2', '42437', '1', '9192', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('205', '7', '7', '3', '2', '42437', '1', '10038', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('206', '7', '7', '3', '2', '42437', '1', '5618', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('207', '7', '7', '3', '2', '42437', '1', '10129', '1144', 'SH007', '2013-12-20 15:36:33.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('626', '7', '7', '3', '2', '49725', '1', '9378', '1144', 'SH007', '2014-01-09 14:37:02.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('637', '7', '7', '3', '2', '49725', '1', '4249', '1144', 'SH007', '2014-01-09 14:53:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('638', '7', '7', '3', '2', '49725', '1', '3186', '1144', 'SH007', '2014-01-09 14:53:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('639', '7', '7', '3', '2', '46433', '1', '2488', '1144', 'SH007', '2014-01-09 14:53:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('640', '7', '7', '3', '2', '46433', '1', '4249', '1144', 'SH007', '2014-01-09 14:53:54.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('660', '7', '7', '3', '2', '49725', '1', '12455', '1144', 'SH007', '2014-01-09 17:52:00.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('661', '7', '7', '3', '2', '49725', '1', '4128', '1144', 'SH007', '2014-01-09 17:52:00.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('662', '7', '7', '3', '2', '49725', '1', '3170', '1144', 'SH007', '2014-01-09 17:55:47.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('663', '7', '7', '3', '2', '49725', '1', '4296', '1144', 'SH007', '2014-01-09 17:55:47.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('664', '7', '7', '3', '2', '49725', '1', '3179', '1144', 'SH007', '2014-01-09 17:55:47.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('665', '7', '7', '3', '2', '49725', '1', '9220', '1144', 'SH007', '2014-01-09 18:01:06.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('666', '7', '7', '3', '2', '49725', '1', '13566', '1144', 'SH007', '2014-01-09 18:01:06.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('667', '7', '7', '3', '2', '49725', '1', '5355', '1144', 'SH007', '2014-01-09 18:01:06.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('668', '7', '7', '3', '2', '49725', '1', '12165', '1144', 'SH007', '2014-01-09 18:01:06.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('679', '7', '7', '3', '2', '16331', '1', '7494', '1144', 'SH007', '2014-01-09 18:15:02.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('687', '7', '7', '3', '2', '49725', '1', '14668', '1144', 'SH007', '2014-01-10 10:51:13.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('689', '7', '7', '3', '2', '49829', '1', '13817', '1144', 'SH007', '2014-01-10 13:22:20.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('690', '7', '7', '3', '2', '49829', '1', '4332', '1144', 'SH007', '2014-01-10 13:51:29.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('691', '7', '7', '3', '2', '37260', '1', '3756', '1144', 'SH007', '2014-01-10 18:43:14.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('692', '7', '7', '3', '2', '49725', '1', '3756', '1144', 'SH007', '2014-01-10 18:43:14.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('693', '7', '7', '3', '2', '49725', '1', '184', '1144', 'SH007', '2014-01-10 18:43:14.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('694', '7', '7', '3', '2', '49725', '1', '13521', '1144', 'SH007', '2014-01-10 18:43:14.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('695', '7', '7', '3', '2', '49725', '1', '2498', '1144', 'SH007', '2014-01-10 18:44:52.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('696', '7', '7', '3', '2', '49725', '1', '3209', '1144', 'SH007', '2014-01-10 18:44:52.000000', null, null, null, '0', null, null);
INSERT INTO `warehouse_area_history` VALUES ('777', '7', '7', '3', '2', '49725', '1', '12974', '1144', 'SH007', '2014-01-13 18:38:20.000000', null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for warehouse_area_manager
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_area_manager`;
CREATE TABLE `warehouse_area_manager` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_AREA_ID` int(11) NOT NULL,
  `MANAGER_ID` int(11) NOT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_WAREAMANAGER_MANAGERID` (`MANAGER_ID`) USING BTREE,
  KEY `IDX_WAREAMANAGER_WAREAID` (`WAREHOUSE_AREA_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4683 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_area_manager
-- ----------------------------
INSERT INTO `warehouse_area_manager` VALUES ('4247', '1424311', '7477', '7477', 'FT001632', '2015-01-30 10:54:17.000000', null, null, null, '2015-01-30 10:45:10.897000');
INSERT INTO `warehouse_area_manager` VALUES ('4248', '1422673', '9418', '7482', 'FT006232', '2015-01-30 10:54:27.000000', null, null, null, '2015-01-30 10:45:21.763000');
INSERT INTO `warehouse_area_manager` VALUES ('4249', '1422673', '7482', '7482', 'FT006232', '2015-01-30 10:54:27.000000', null, null, null, '2015-01-30 10:45:21.768000');
INSERT INTO `warehouse_area_manager` VALUES ('4250', '1423399', '7220', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.620000');
INSERT INTO `warehouse_area_manager` VALUES ('4251', '1423399', '6555', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.626000');
INSERT INTO `warehouse_area_manager` VALUES ('4252', '1423399', '9110', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.632000');
INSERT INTO `warehouse_area_manager` VALUES ('4253', '1423399', '9113', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.641000');
INSERT INTO `warehouse_area_manager` VALUES ('4254', '1423399', '9114', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.684000');
INSERT INTO `warehouse_area_manager` VALUES ('4255', '1423399', '9112', '7220', 'FT003601', '2015-01-30 10:54:30.000000', null, null, null, '2015-01-30 10:45:24.803000');
INSERT INTO `warehouse_area_manager` VALUES ('4256', '1422399', '9418', '7482', 'FT006232', '2015-01-30 10:55:09.000000', null, null, null, '2015-01-30 10:46:03.770000');
INSERT INTO `warehouse_area_manager` VALUES ('4258', '1424558', '7220', '7220', 'FT003601', '2015-01-30 10:55:10.000000', null, null, null, '2015-01-30 10:46:04.617000');
INSERT INTO `warehouse_area_manager` VALUES ('4259', '1424558', '6555', '7220', 'FT003601', '2015-01-30 10:55:10.000000', null, null, null, '2015-01-30 10:46:04.623000');
INSERT INTO `warehouse_area_manager` VALUES ('4573', '1423901', '9418', '7482', 'FT006232', '2015-01-30 11:18:04.000000', null, null, null, '2015-01-30 11:08:58.795000');
INSERT INTO `warehouse_area_manager` VALUES ('4574', '1423901', '7482', '7482', 'FT006232', '2015-01-30 11:18:04.000000', null, null, null, '2015-01-30 11:08:58.801000');
INSERT INTO `warehouse_area_manager` VALUES ('4577', '1422786', '9418', '7482', 'FT006232', '2015-01-30 11:18:32.000000', null, null, null, '2015-01-30 11:09:26.527000');
INSERT INTO `warehouse_area_manager` VALUES ('4578', '1422786', '7482', '7482', 'FT006232', '2015-01-30 11:18:32.000000', null, null, null, '2015-01-30 11:09:26.533000');
INSERT INTO `warehouse_area_manager` VALUES ('4579', '1422848', '9110', '7220', 'FT003601', '2015-01-30 11:18:38.000000', null, null, null, '2015-01-30 11:09:31.771000');
INSERT INTO `warehouse_area_manager` VALUES ('4581', '1422848', '9114', '7220', 'FT003601', '2015-01-30 11:18:38.000000', null, null, null, '2015-01-30 11:09:31.780000');
INSERT INTO `warehouse_area_manager` VALUES ('4582', '1422848', '7220', '7220', 'FT003601', '2015-01-30 11:18:38.000000', null, null, null, '2015-01-30 11:09:31.786000');
INSERT INTO `warehouse_area_manager` VALUES ('4584', '1422848', '6555', '7220', 'FT003601', '2015-01-30 11:18:38.000000', null, null, null, '2015-01-30 11:09:31.795000');
INSERT INTO `warehouse_area_manager` VALUES ('4593', '1423335', '7482', '7482', 'FT006232', '2015-01-30 11:19:33.000000', null, null, null, '2015-01-30 11:10:27.370000');
INSERT INTO `warehouse_area_manager` VALUES ('4594', '1423335', '9418', '7482', 'FT006232', '2015-01-30 11:19:33.000000', null, null, null, '2015-01-30 11:10:27.376000');
INSERT INTO `warehouse_area_manager` VALUES ('4595', '1423983', '9110', '7220', 'FT003601', '2015-01-30 11:23:03.000000', null, null, null, '2015-01-30 11:13:57.109000');
INSERT INTO `warehouse_area_manager` VALUES ('4596', '1423983', '9114', '7220', 'FT003601', '2015-01-30 11:23:03.000000', null, null, null, '2015-01-30 11:13:57.115000');
INSERT INTO `warehouse_area_manager` VALUES ('4602', '1424291', '9114', '7220', 'FT003601', '2015-01-30 11:23:27.000000', null, null, null, '2015-01-30 11:14:21.890000');
INSERT INTO `warehouse_area_manager` VALUES ('4603', '1424291', '9112', '7220', 'FT003601', '2015-01-30 11:23:27.000000', null, null, null, '2015-01-30 11:14:21.940000');
INSERT INTO `warehouse_area_manager` VALUES ('4604', '1424291', '9113', '7220', 'FT003601', '2015-01-30 11:23:27.000000', null, null, null, '2015-01-30 11:14:21.100000');
INSERT INTO `warehouse_area_manager` VALUES ('4605', '1424291', '6555', '7220', 'FT003601', '2015-01-30 11:23:27.000000', null, null, null, '2015-01-30 11:14:21.105000');
INSERT INTO `warehouse_area_manager` VALUES ('4606', '1424291', '7220', '7220', 'FT003601', '2015-01-30 11:23:27.000000', null, null, null, '2015-01-30 11:14:21.111000');
INSERT INTO `warehouse_area_manager` VALUES ('4613', '1424254', '9110', '7220', 'FT003601', '2015-01-30 11:25:27.000000', null, null, null, '2015-01-30 11:16:21.521000');
INSERT INTO `warehouse_area_manager` VALUES ('4619', '1422871', '9114', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.162000');
INSERT INTO `warehouse_area_manager` VALUES ('4620', '1422871', '9110', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.167000');
INSERT INTO `warehouse_area_manager` VALUES ('4621', '1422871', '9113', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.173000');
INSERT INTO `warehouse_area_manager` VALUES ('4622', '1422871', '9112', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.179000');
INSERT INTO `warehouse_area_manager` VALUES ('4623', '1422871', '6555', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.183000');
INSERT INTO `warehouse_area_manager` VALUES ('4624', '1422871', '7220', '7220', 'FT003601', '2015-01-30 11:27:55.000000', null, null, null, '2015-01-30 11:18:49.189000');
INSERT INTO `warehouse_area_manager` VALUES ('4627', '1423416', '9113', '7220', 'FT003601', '2015-01-30 11:28:15.000000', null, null, null, '2015-01-30 11:19:09.388000');
INSERT INTO `warehouse_area_manager` VALUES ('4640', '1423435', '7220', '7220', 'FT003601', '2015-01-30 11:29:11.000000', null, null, null, '2015-01-30 11:20:04.871000');
INSERT INTO `warehouse_area_manager` VALUES ('4641', '1423435', '6555', '7220', 'FT003601', '2015-01-30 11:29:11.000000', null, null, null, '2015-01-30 11:20:04.876000');
INSERT INTO `warehouse_area_manager` VALUES ('4642', '1423435', '9113', '7220', 'FT003601', '2015-01-30 11:29:11.000000', null, null, null, '2015-01-30 11:20:04.883000');
INSERT INTO `warehouse_area_manager` VALUES ('4643', '1422568', '9110', '7220', 'FT003601', '2015-01-30 11:29:34.000000', null, null, null, '2015-01-30 11:20:28.460000');
INSERT INTO `warehouse_area_manager` VALUES ('4647', '1422568', '9114', '7220', 'FT003601', '2015-01-30 11:29:34.000000', null, null, null, '2015-01-30 11:20:28.484000');
INSERT INTO `warehouse_area_manager` VALUES ('4648', '1422568', '6555', '7220', 'FT003601', '2015-01-30 11:29:34.000000', null, null, null, '2015-01-30 11:20:28.489000');
INSERT INTO `warehouse_area_manager` VALUES ('4655', '1422600', '9110', '7220', 'FT003601', '2015-01-30 11:30:55.000000', null, null, null, '2015-01-30 11:21:48.976000');
INSERT INTO `warehouse_area_manager` VALUES ('4675', '1423471', '8903', '8771', '侯倩', '2015-01-30 11:36:04.000000', null, null, null, '2015-01-30 11:26:58.710000');
INSERT INTO `warehouse_area_manager` VALUES ('4676', '1423471', '8771', '8771', '侯倩', '2015-01-30 11:36:04.000000', null, null, null, '2015-01-30 11:26:58.718000');
INSERT INTO `warehouse_area_manager` VALUES ('4679', '1424048', '8771', '8771', '侯倩', '2015-01-30 11:36:32.000000', null, null, null, '2015-01-30 11:27:26.452000');
INSERT INTO `warehouse_area_manager` VALUES ('4680', '1424048', '8903', '8771', '侯倩', '2015-01-30 11:36:32.000000', null, null, null, '2015-01-30 11:27:26.457000');
INSERT INTO `warehouse_area_manager` VALUES ('4681', '1422926', '8771', '8771', '侯倩', '2015-01-30 11:36:44.000000', null, null, null, '2015-01-30 11:27:38.201000');
INSERT INTO `warehouse_area_manager` VALUES ('4682', '1422926', '8903', '8771', '侯倩', '2015-01-30 11:36:44.000000', null, null, null, '2015-01-30 11:27:38.207000');

-- ----------------------------
-- Table structure for warehouse_operator
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_operator`;
CREATE TABLE `warehouse_operator` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int(11) NOT NULL,
  `OPERATOR_ID` int(11) NOT NULL,
  `CREATOR_ID` int(11) DEFAULT NULL,
  `CREATOR_NAME` varchar(100) DEFAULT NULL,
  `CREATE_TIME` datetime(6) DEFAULT NULL,
  `MODIFIER_ID` int(11) DEFAULT NULL,
  `MODIFIER_NAME` varchar(100) DEFAULT NULL,
  `MODIFY_TIME` datetime(6) DEFAULT NULL,
  `ROW_VERSION` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_WOPERATOR_OPERATORID` (`OPERATOR_ID`) USING BTREE,
  KEY `IDX_WOPERATOR_WAREHOUSEID` (`WAREHOUSE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1661 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_operator
-- ----------------------------
INSERT INTO `warehouse_operator` VALUES ('1415', '562', '1', '7462', 'FT001639', '2015-01-29 12:00:20.000000', null, null, null, '2015-01-29 11:51:27.682000');
INSERT INTO `warehouse_operator` VALUES ('1416', '736', '8937', '7462', 'FT001639', '2015-01-29 12:00:20.000000', null, null, null, '2015-01-29 11:51:27.704000');
INSERT INTO `warehouse_operator` VALUES ('1417', '736', '8939', '7462', 'FT001639', '2015-01-29 12:00:21.000000', null, null, null, '2015-01-29 11:51:27.714000');
INSERT INTO `warehouse_operator` VALUES ('1418', '736', '8973', '7462', 'FT001639', '2015-01-29 12:00:21.000000', null, null, null, '2015-01-29 11:51:27.724000');
INSERT INTO `warehouse_operator` VALUES ('1419', '736', '8976', '7462', 'FT001639', '2015-01-29 12:00:21.000000', null, null, null, '2015-01-29 11:51:27.783000');
INSERT INTO `warehouse_operator` VALUES ('1425', '736', '8991', '7462', 'FT001639', '2015-01-29 12:00:28.000000', null, null, null, '2015-01-29 11:51:28.251000');
INSERT INTO `warehouse_operator` VALUES ('1427', '786', '6542', '7477', 'FT001632', '2015-01-29 12:27:15.000000', null, null, null, '2015-01-29 12:18:13.996000');
INSERT INTO `warehouse_operator` VALUES ('1428', '786', '7477', '7477', 'FT001632', '2015-01-29 12:27:15.000000', null, null, null, '2015-01-29 12:18:14.500000');
INSERT INTO `warehouse_operator` VALUES ('1429', '786', '8900', '7477', 'FT001632', '2015-01-29 12:27:16.000000', null, null, null, '2015-01-29 12:18:14.400000');
INSERT INTO `warehouse_operator` VALUES ('1430', '786', '8646', '7477', 'FT001632', '2015-01-29 12:27:16.000000', null, null, null, '2015-01-29 12:18:14.500000');
INSERT INTO `warehouse_operator` VALUES ('1431', '730', '7477', '7477', 'FT001632', '2015-01-29 12:29:03.000000', null, null, null, '2015-01-29 12:20:01.290000');
INSERT INTO `warehouse_operator` VALUES ('1432', '730', '8900', '7477', 'FT001632', '2015-01-29 12:29:03.000000', null, null, null, '2015-01-29 12:20:01.300000');
INSERT INTO `warehouse_operator` VALUES ('1433', '730', '8646', '7477', 'FT001632', '2015-01-29 12:29:03.000000', null, null, null, '2015-01-29 12:20:01.308000');
INSERT INTO `warehouse_operator` VALUES ('1434', '730', '6542', '7477', 'FT001632', '2015-01-29 12:29:03.000000', null, null, null, '2015-01-29 12:20:01.318000');
INSERT INTO `warehouse_operator` VALUES ('1435', '794', '9055', '7484', 'FT006549', '2015-01-29 12:35:44.000000', null, null, null, '2015-01-29 12:26:41.918000');
INSERT INTO `warehouse_operator` VALUES ('1436', '794', '7484', '7484', 'FT006549', '2015-01-29 12:35:44.000000', null, null, null, '2015-01-29 12:26:41.929000');
INSERT INTO `warehouse_operator` VALUES ('1443', '736', '9099', '7462', 'FT001639', '2015-01-29 13:28:38.000000', null, null, null, '2015-01-29 13:19:35.978000');
INSERT INTO `warehouse_operator` VALUES ('1452', '747', '7477', '7477', 'FT001632', '2015-01-29 14:21:17.000000', null, null, null, '2015-01-29 14:12:14.817000');
INSERT INTO `warehouse_operator` VALUES ('1453', '790', '7477', '7477', 'FT001632', '2015-01-29 14:21:33.000000', null, null, null, '2015-01-29 14:12:32.210000');
INSERT INTO `warehouse_operator` VALUES ('1473', '669', '6737', '9183', '王殿伟a', '2015-01-29 15:51:14.000000', null, null, null, '2015-01-29 15:42:11.769000');
INSERT INTO `warehouse_operator` VALUES ('1483', '740', '6543', '7464', 'FT006564', '2015-01-29 16:14:49.000000', null, null, null, '2015-01-29 16:05:46.529000');
INSERT INTO `warehouse_operator` VALUES ('1485', '740', '8695', '7464', 'FT006564', '2015-01-29 16:14:49.000000', null, null, null, '2015-01-29 16:05:46.548000');
INSERT INTO `warehouse_operator` VALUES ('1486', '740', '8815', '7464', 'FT006564', '2015-01-29 16:14:49.000000', null, null, null, '2015-01-29 16:05:46.557000');
INSERT INTO `warehouse_operator` VALUES ('1487', '740', '8819', '7464', 'FT006564', '2015-01-29 16:14:49.000000', null, null, null, '2015-01-29 16:05:46.566000');
INSERT INTO `warehouse_operator` VALUES ('1496', '731', '8669', '8606', '曹磊', '2015-01-29 16:28:14.000000', null, null, null, '2015-01-29 16:19:12.529000');
INSERT INTO `warehouse_operator` VALUES ('1513', '1022', '7204', '7204', 'FT002029', '2015-01-29 16:53:23.000000', null, null, null, '2015-01-29 16:44:20.733000');
INSERT INTO `warehouse_operator` VALUES ('1514', '1022', '8652', '7204', 'FT002029', '2015-01-29 16:53:23.000000', null, null, null, '2015-01-29 16:44:20.740000');
INSERT INTO `warehouse_operator` VALUES ('1515', '1022', '8747', '7204', 'FT002029', '2015-01-29 16:53:23.000000', null, null, null, '2015-01-29 16:44:20.748000');
INSERT INTO `warehouse_operator` VALUES ('1516', '1022', '8763', '7204', 'FT002029', '2015-01-29 16:53:23.000000', null, null, null, '2015-01-29 16:44:20.757000');
INSERT INTO `warehouse_operator` VALUES ('1518', '744', '9252', '7468', 'FT006547', '2015-01-29 17:24:10.000000', null, null, null, '2015-01-29 17:15:07.919000');
INSERT INTO `warehouse_operator` VALUES ('1522', '1224', '8673', '7212', 'FT000048', '2015-01-30 09:12:58.000000', null, null, null, '2015-01-30 09:03:52.789000');
INSERT INTO `warehouse_operator` VALUES ('1523', '1224', '8670', '7212', 'FT000048', '2015-01-30 09:12:58.000000', null, null, null, '2015-01-30 09:03:52.799000');
INSERT INTO `warehouse_operator` VALUES ('1527', '1243', '9111', '7229', 'FT006545', '2015-01-30 09:29:30.000000', null, null, null, '2015-01-30 09:20:25.225000');
INSERT INTO `warehouse_operator` VALUES ('1528', '1244', '9111', '7229', 'FT006545', '2015-01-30 09:30:25.000000', null, null, null, '2015-01-30 09:21:21.143000');
INSERT INTO `warehouse_operator` VALUES ('1529', '1245', '9111', '7229', 'FT006545', '2015-01-30 09:31:32.000000', null, null, null, '2015-01-30 09:22:28.222000');
INSERT INTO `warehouse_operator` VALUES ('1543', '1210', '9412', '9406', '项新潮', '2015-01-30 10:17:30.000000', null, null, null, '2015-01-30 10:08:24.559000');
INSERT INTO `warehouse_operator` VALUES ('1544', '1210', '9406', '9406', '项新潮', '2015-01-30 10:17:30.000000', null, null, null, '2015-01-30 10:08:24.565000');
INSERT INTO `warehouse_operator` VALUES ('1545', '1210', '9409', '9406', '项新潮', '2015-01-30 10:17:30.000000', null, null, null, '2015-01-30 10:08:24.571000');
INSERT INTO `warehouse_operator` VALUES ('1546', '1210', '9410', '9406', '项新潮', '2015-01-30 10:17:30.000000', null, null, null, '2015-01-30 10:08:24.599000');
INSERT INTO `warehouse_operator` VALUES ('1550', '784', '8702', '8702', '夏正亚', '2015-01-30 10:23:58.000000', null, null, null, '2015-01-30 10:14:51.853000');
INSERT INTO `warehouse_operator` VALUES ('1555', '807', '9443', '7188', 'FT000009', '2015-01-30 11:13:11.000000', null, null, null, '2015-01-30 11:04:05.230000');
INSERT INTO `warehouse_operator` VALUES ('1582', '751', '7466', '7466', 'FT006227', '2015-01-30 13:37:26.000000', null, null, null, '2015-01-30 13:28:19.899000');
INSERT INTO `warehouse_operator` VALUES ('1585', '746', '7470', '7470', 'FT006556', '2015-01-30 14:19:08.000000', null, null, null, '2015-01-30 14:10:02.144000');
INSERT INTO `warehouse_operator` VALUES ('1606', '1187', '7185', '7185', 'FT000007', '2015-01-30 15:56:20.000000', null, null, null, '2015-01-30 15:47:13.772000');
INSERT INTO `warehouse_operator` VALUES ('1609', '762', '9538', '7458', 'FT006551', '2015-01-30 16:15:49.000000', null, null, null, '2015-01-30 16:06:42.652000');
INSERT INTO `warehouse_operator` VALUES ('1620', '993', '8296', '8296', 'FT003827', '2015-01-30 16:34:20.000000', null, null, null, '2015-01-30 16:25:13.128000');
INSERT INTO `warehouse_operator` VALUES ('1621', '1214', '5722', '7198', 'FT000067', '2015-01-30 16:41:36.000000', null, null, null, '2015-01-30 16:32:28.774000');
INSERT INTO `warehouse_operator` VALUES ('1623', '705', '6698', '6692', '李龙辉', '2015-01-30 17:18:34.000000', null, null, null, '2015-01-30 17:09:27.704000');
INSERT INTO `warehouse_operator` VALUES ('1659', '769', '7235', '7235', 'FT006229', '2015-01-31 13:19:39.000000', null, null, null, '2015-01-31 13:10:28.376000');
INSERT INTO `warehouse_operator` VALUES ('1660', '769', '8693', '7235', 'FT006229', '2015-01-31 13:19:39.000000', null, null, null, '2015-01-31 13:10:28.385000');
