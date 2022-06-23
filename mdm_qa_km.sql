/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : mdm_qa_km

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/06/2022 15:25:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT 10,
  `level` int(11) DEFAULT 10,
  `iss_off_loc_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '1411900116884', 'B16bHZm-3SXFSvmV9m5U_0BecxKEJCUV', '$2y$13$H/HXUq9xX00AGSpkZLSimePx8LXzrqf1SbDhKdfyezsZ/HGJewap6', NULL, '', 10, 10, NULL, NULL, 1655891605);

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('Administration', '1', 1503244168);
INSERT INTO `auth_assignment` VALUES ('root-admin', '1', 1503477960);
INSERT INTO `auth_assignment` VALUES ('root-admin', '2', 1503728504);
INSERT INTO `auth_assignment` VALUES ('root-admin', '3', 1504844052);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '10', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '100', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '101', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '102', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '103', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '104', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '105', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '106', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '107', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '108', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '109', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '11', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '110', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '111', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '112', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '113', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '114', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '115', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '116', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '117', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '118', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '119', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '12', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '120', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '121', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '122', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '123', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '124', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '125', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '126', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '127', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '128', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '129', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '13', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '130', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '131', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '132', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '133', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '134', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '135', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '136', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '137', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '138', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '139', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '14', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '140', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '141', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '142', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '143', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '144', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '145', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '146', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '147', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '148', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '149', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '15', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '150', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '151', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '152', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '153', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '154', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '155', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '156', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '157', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '158', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '159', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '16', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '160', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '161', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '162', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '163', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '164', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '165', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '166', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '167', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '168', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '169', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '17', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '170', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '171', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '172', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '173', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '174', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '175', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '176', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '177', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '178', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '179', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '18', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '180', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '181', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '182', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '183', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '184', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '185', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '186', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '187', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '188', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '189', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '19', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '190', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '191', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '192', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '193', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '194', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '195', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '196', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '197', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '198', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '199', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '20', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '200', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '201', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '202', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '203', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '204', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '205', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '206', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '207', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '208', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '209', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '21', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '210', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '211', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '212', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '213', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '214', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '215', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '216', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '217', 1522204765);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '22', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '23', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '24', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '25', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '26', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '27', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '28', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '29', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '3', 1504844036);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '30', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '31', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '32', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '33', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '34', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '35', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '36', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '37', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '38', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '39', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '4', 1522080600);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '40', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '41', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '42', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '43', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '44', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '45', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '46', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '47', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '48', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '49', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '5', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '50', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '51', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '52', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '53', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '54', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '55', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '56', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '57', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '58', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '59', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '6', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '60', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '61', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '62', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '63', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '64', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '65', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '66', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '67', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '68', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '69', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '7', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '70', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '71', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '72', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '73', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '74', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '75', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '76', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '77', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '78', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '79', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '8', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '80', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '81', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '82', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '83', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '84', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '85', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '86', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '87', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '88', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '89', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '9', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '90', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '91', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '92', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '93', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '94', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '95', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '96', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '97', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '98', 1522081614);
INSERT INTO `auth_assignment` VALUES ('การใช้งานส่วนลูกค้า', '99', 1522081614);

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE,
  INDEX `idx-auth_item-type`(`type`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/admin/*', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/default/*', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/default/index', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/menu/*', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/menu/create', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/menu/index', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/menu/update', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/menu/view', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/admin/permission/*', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/create', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/index', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/update', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/permission/view', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/*', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/assign', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/create', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/delete', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/index', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/remove', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/update', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/role/view', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/route/*', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/route/assign', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/route/create', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/route/index', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/route/remove', 2, NULL, NULL, NULL, 1503234697, 1503234697);
INSERT INTO `auth_item` VALUES ('/admin/rule/*', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/rule/create', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/rule/index', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/rule/update', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/rule/view', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/*', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/activate', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/delete', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/index', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/login', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/logout', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/signup', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/admin/user/view', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/base/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/admin/*', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/admin/device', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/admin/history', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/admin/index', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/base/admin/notify', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/base/default/*', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/default/index', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/*', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/create', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/delete', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/excel', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/import', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/index', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/update', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/view', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/excel/view-excel', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line-token/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/line-token/bulkdelete', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/line-token/create', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line-token/delete', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/line-token/index', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line-token/update', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/line-token/view', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/*', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/create', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/delete', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/index', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/update', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/line/view', 2, NULL, NULL, NULL, 1522080730, 1522080730);
INSERT INTO `auth_item` VALUES ('/base/master-notify/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/create', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/create-ajax', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/delete', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/history', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/index', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/support', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/support-ajax', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/update', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/view', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/view-ajax', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master-notify/view-job', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/create', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/delete', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/index', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/update', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/view', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/master/view-ajax', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/support/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/support/history', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/support/index', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/base/support/notify', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/debug/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/debug/default/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/debug/default/index', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/debug/default/view', 2, NULL, NULL, NULL, 1503234698, 1503234698);
INSERT INTO `auth_item` VALUES ('/gii/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/action', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/index', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gii/default/view', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/gridview/*', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/gridview/export/*', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/gridview/export/download', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/pdfjs/*', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/pdfjs/default/*', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/pdfjs/default/index', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/report/*', 2, NULL, NULL, NULL, 1522080732, 1522080732);
INSERT INTO `auth_item` VALUES ('/report/default/*', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/report/default/index', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/report/report/*', 2, NULL, NULL, NULL, 1522080732, 1522080732);
INSERT INTO `auth_item` VALUES ('/report/report/index', 2, NULL, NULL, NULL, 1522080731, 1522080731);
INSERT INTO `auth_item` VALUES ('/report/report/stat-between-date', 2, NULL, NULL, NULL, 1522080732, 1522080732);
INSERT INTO `auth_item` VALUES ('/setting/*', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/brand/*', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/bulk-delete', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/create', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/delete', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/index', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/update', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/brand/view', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/default/*', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/default/index', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/*', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/bulk-delete', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/create', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/delete', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/index', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/update', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/device-type/view', 2, NULL, NULL, NULL, 1522080728, 1522080728);
INSERT INTO `auth_item` VALUES ('/setting/models/*', 2, NULL, NULL, NULL, 1522083165, 1522083165);
INSERT INTO `auth_item` VALUES ('/setting/off-code/*', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/bulk-delete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/create', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/delete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/index', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/update', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/off-code/view', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/*', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/bulk-delete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/create', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/delete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/index', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/update', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/view', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/project/view-ajax', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/*', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/bulkdelete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/create', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/delete', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/index', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/update', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/setting/zone/view', 2, NULL, NULL, NULL, 1522080729, 1522080729);
INSERT INTO `auth_item` VALUES ('/site/*', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/about', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/captcha', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/contact', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/error', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/index', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/login', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/site/logout', 2, NULL, NULL, NULL, 1503234699, 1503234699);
INSERT INTO `auth_item` VALUES ('/spec/*', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/bulkdelete', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/create', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/delete', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/index', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/update', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/view', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/spec/view-ajax', 2, NULL, NULL, NULL, 1522140865, 1522140865);
INSERT INTO `auth_item` VALUES ('/user/*', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/admin/*', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/assignments', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/block', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/confirm', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/create', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/user/admin/delete', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/index', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/user/admin/info', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/admin/update', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/user/admin/update-profile', 2, NULL, NULL, NULL, 1503234694, 1503234694);
INSERT INTO `auth_item` VALUES ('/user/profile/*', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/profile/index', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/profile/show', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/recovery/*', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/recovery/request', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/recovery/reset', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/registration/*', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/registration/confirm', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/registration/connect', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/registration/register', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/registration/resend', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/security/*', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/security/auth', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/security/login', 2, NULL, NULL, NULL, 1503234695, 1503234695);
INSERT INTO `auth_item` VALUES ('/user/security/logout', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/*', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/account', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/confirm', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/delete', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/disconnect', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/networks', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('/user/settings/profile', 2, NULL, NULL, NULL, 1503234696, 1503234696);
INSERT INTO `auth_item` VALUES ('Administration', 2, 'การตั้งค่าสำหรับ การกำหนดสิทธิ์', NULL, NULL, 1503234796, 1503234854);
INSERT INTO `auth_item` VALUES ('root-admin', 1, 'Administration MD', NULL, NULL, 1503240967, 1503416552);
INSERT INTO `auth_item` VALUES ('การใช้งานส่วนลูกค้า', 1, 'การใช้งานส่วนลูกค้า ส่วนภูมิภาค', NULL, NULL, 1503237065, 1522080888);

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('Administration', '/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('Administration', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/base/master-notify/*');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/base/master/*');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/base/master/index');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/base/master/view');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/base/master/view-ajax');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/setting/project/view-ajax');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/*');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/about');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/captcha');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/contact');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/error');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/index');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/login');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/spec/view');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/spec/view-ajax');
INSERT INTO `auth_item_child` VALUES ('การใช้งานส่วนลูกค้า', '/user/*');
INSERT INTO `auth_item_child` VALUES ('root-admin', 'Administration');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('Owner', 'O:15:\"app\\rbac\\MyRule\":3:{s:4:\"name\";s:5:\"Owner\";s:9:\"createdAt\";i:1503894516;s:9:\"updatedAt\";i:1503894516;}', 1503894516, 1503894516);
INSERT INTO `auth_rule` VALUES ('สำนักงาน', 'O:25:\"app\\components\\OfficeRule\":3:{s:4:\"name\";s:24:\"สำนักงาน\";s:9:\"createdAt\";i:1510409767;s:9:\"updatedAt\";i:1510409778;}', 1510409767, 1510409778);

-- ----------------------------
-- Table structure for auto_number
-- ----------------------------
DROP TABLE IF EXISTS `auto_number`;
CREATE TABLE `auto_number`  (
  `group` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` int(11) DEFAULT NULL,
  `optimistic_lock` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auto_number
-- ----------------------------
INSERT INTO `auto_number` VALUES ('D/2022/06/?.???', 7, 1, 1655897923);
INSERT INTO `auto_number` VALUES ('D/202206?.???', 1, 1, 1655898029);
INSERT INTO `auto_number` VALUES ('D20220622.???', 13, 1, 1655901900);
INSERT INTO `auto_number` VALUES ('D20220623.???', 2, 1, 1655959441);
INSERT INTO `auto_number` VALUES ('D202206?.???', 1, 1, 1655898049);
INSERT INTO `auto_number` VALUES ('DYm?.???', 1, 1, 1655897967);
INSERT INTO `auto_number` VALUES ('SA/2022/06/?.???', 2, 1, 1655897984);
INSERT INTO `auto_number` VALUES ('SA/202206/?.???', 2, 1, 1655898009);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `desc` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `value` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'A001', 'กำหนดเปิด-ปิดการเชื่อมต่อ Service MDM', 'Y');
INSERT INTO `config` VALUES (2, 'A002', 'กำหนด URLในการเชื่อมโยง Service MDM-Login', 'https://tpms.dlt.go.th/mdm-auth/web/index.php?r=auth/login');

-- ----------------------------
-- Table structure for job_request
-- ----------------------------
DROP TABLE IF EXISTS `job_request`;
CREATE TABLE `job_request`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_ref` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_ref` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content_question` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_answer` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `iss_off_loc_code` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job_status` int(11) DEFAULT 1,
  `job_request_date` datetime(0) DEFAULT NULL,
  `job_close_date` datetime(0) DEFAULT NULL,
  `create_at` datetime(0) DEFAULT NULL,
  `update_at` datetime(0) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_request
-- ----------------------------
INSERT INTO `job_request` VALUES (2, 'Z2w_Osl2dYAcA77zGrRhNs', 'D20220622.008', 'CAR', 'สลับเลขแล้ว ข้อมูลหาย', '<ul>\r\n            <li>เบอร์โทรติดต่อกลับ :9313</li>\r\n            <li>(เบอร์ IP Phone/เบอร์สำนักงาน/เบอร์มือถือ) :</li>\r\n            <li> เลขทะเบียนรถ/รย. : </li>\r\n            <li> &gt;รหัสโปรแกรม : car02i002</li>\r\n            <li> ข้อมูลอื่นๆ : abdxc</li>\r\n            <li> ปัญหาที่พบ/ข้อซักถาม : โปรแกรม error</li>\r\n        </ul>', NULL, '00100', '1411900116884', NULL, 1, NULL, NULL, '2022-06-22 19:14:25', '2022-06-22 19:14:25', 1, 1);
INSERT INTO `job_request` VALUES (3, 'Y_C4Xe8tyR9e9Fo5MGyF_9', 'D20220622.010', 'CAR', 'สลับเลขแล้ว ข้อมูลหาย2', '<ul>\r\n            <li>เบอร์โทรติดต่อกลับ :</li>\r\n            <li>(เบอร์ IP Phone/เบอร์สำนักงาน/เบอร์มือถือ) :</li>\r\n            <li> เลขทะเบียนรถ/รย. :</li>\r\n            <li> &gt;รหัสโปรแกรม :</li>\r\n            <li> ข้อมูลอื่นๆ :</li>\r\n            <li> ปัญหาที่พบ/ข้อซักถาม :</li>\r\n        </ul>', NULL, '00100', '1411900116884', NULL, 1, NULL, NULL, '2022-06-22 19:19:56', '2022-06-22 19:19:56', 1, 1);
INSERT INTO `job_request` VALUES (4, 'Y_C4Xe8tyR9e9Fo5MGyF_9', 'D20220622.011', 'CAR', 'สลับเลขแล้ว ข้อมูลหาย2', '<ul>\r\n            <li>เบอร์โทรติดต่อกลับ :</li>\r\n            <li>(เบอร์ IP Phone/เบอร์สำนักงาน/เบอร์มือถือ) :</li>\r\n            <li> เลขทะเบียนรถ/รย. :</li>\r\n            <li> &gt;รหัสโปรแกรม :</li>\r\n            <li> ข้อมูลอื่นๆ :</li>\r\n            <li> ปัญหาที่พบ/ข้อซักถาม :</li>\r\n        </ul>', NULL, '00100', '1411900116884', NULL, 1, NULL, NULL, '2022-06-22 19:21:04', '2022-06-22 19:21:04', 1, 1);
INSERT INTO `job_request` VALUES (5, 'Jz6ZmW7UkYiqdZ20MTBSj9', 'D20220622.013', 'CAR', 'สลับเลขแล้ว ข้อมูลหาย', '<ul>\r\n            <li>เบอร์โทรติดต่อกลับ :gfhgfh</li>\r\n            <li>(เบอร์ IP Phone/เบอร์สำนักงาน/เบอร์มือถือ) :</li>\r\n            <li> เลขทะเบียนรถ/รย. :fdgfhgf</li>\r\n            <li> &gt;รหัสโปรแกรม :gfhgfh</li>\r\n            <li> ข้อมูลอื่นๆ :gfhgfh</li>\r\n            <li> ปัญหาที่พบ/ข้อซักถาม :gfh</li>\r\n        </ul>', NULL, '00100', '1411900116884', NULL, 1, NULL, NULL, '2022-06-22 19:45:00', '2022-06-22 19:45:00', 1, 1);
INSERT INTO `job_request` VALUES (6, 'PaT7jg70fBJo_KKGH7YUvs', 'D20220623.002', 'FNC', 'ติดตั้งเครื่อง EDC ไม่ได้ error', '<ul>\r\n            <li>เบอร์โทรติดต่อกลับ :</li>\r\n            <li>(เบอร์ IP Phone/เบอร์สำนักงาน/เบอร์มือถือ) :</li>\r\n            <li> เลขทะเบียนรถ/รย. :</li>\r\n            <li> &gt;รหัสโปรแกรม :</li>\r\n            <li> ข้อมูลอื่นๆ :</li>\r\n            <li> ปัญหาที่พบ/ข้อซักถาม :</li>\r\n        </ul>', '<p>ประมาณนี้แหละ</p><p><img src=\"/mdm-qa/web/news_upload/1/3d6df9d6b6-bg.jpg\" alt=\"3d6df9d6b6-bg\" width=\"452\" height=\"307\" style=\"width: 452px; height: 307px;\"></p>', '00100', '1411900116884', '1411900116884', 3, '2022-06-23 11:44:02', '2022-06-23 00:00:00', '2022-06-23 11:44:02', '2022-06-23 12:47:47', 1, 1);

-- ----------------------------
-- Table structure for line_token
-- ----------------------------
DROP TABLE IF EXISTS `line_token`;
CREATE TABLE `line_token`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL COMMENT 'เขต',
  `line_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of line_token
-- ----------------------------
INSERT INTO `line_token` VALUES (2, 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz', 1, 1, 'Line Group ระบบจองห้องประชุม');

-- ----------------------------
-- Table structure for linenotify
-- ----------------------------
DROP TABLE IF EXISTS `linenotify`;
CREATE TABLE `linenotify`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CAR_ID` int(255) NOT NULL,
  `CREATE_AT` datetime(0) DEFAULT NULL,
  `UPDATE_AT` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of linenotify
-- ----------------------------
INSERT INTO `linenotify` VALUES (1, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (2, 2, NULL, NULL);
INSERT INTO `linenotify` VALUES (3, 3, NULL, NULL);
INSERT INTO `linenotify` VALUES (4, 4, NULL, NULL);
INSERT INTO `linenotify` VALUES (5, 5, NULL, NULL);
INSERT INTO `linenotify` VALUES (6, 6, NULL, NULL);
INSERT INTO `linenotify` VALUES (7, 7, NULL, NULL);
INSERT INTO `linenotify` VALUES (8, 8, NULL, NULL);
INSERT INTO `linenotify` VALUES (9, 9, NULL, NULL);
INSERT INTO `linenotify` VALUES (10, 8, NULL, NULL);
INSERT INTO `linenotify` VALUES (11, 8, NULL, NULL);
INSERT INTO `linenotify` VALUES (12, 10, NULL, NULL);
INSERT INTO `linenotify` VALUES (13, 11, NULL, NULL);
INSERT INTO `linenotify` VALUES (14, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (15, 12, NULL, NULL);
INSERT INTO `linenotify` VALUES (16, 13, NULL, NULL);
INSERT INTO `linenotify` VALUES (17, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (18, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (19, 2, NULL, NULL);
INSERT INTO `linenotify` VALUES (20, 3, NULL, NULL);
INSERT INTO `linenotify` VALUES (21, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (22, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (23, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (24, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (25, 2, NULL, NULL);
INSERT INTO `linenotify` VALUES (26, 2, NULL, NULL);
INSERT INTO `linenotify` VALUES (27, 3, NULL, NULL);
INSERT INTO `linenotify` VALUES (28, 3, NULL, NULL);
INSERT INTO `linenotify` VALUES (29, 4, NULL, NULL);
INSERT INTO `linenotify` VALUES (30, 4, NULL, NULL);
INSERT INTO `linenotify` VALUES (31, 5, NULL, NULL);
INSERT INTO `linenotify` VALUES (32, 6, NULL, NULL);
INSERT INTO `linenotify` VALUES (33, 6, NULL, NULL);
INSERT INTO `linenotify` VALUES (34, 1, NULL, NULL);
INSERT INTO `linenotify` VALUES (35, 2, NULL, NULL);
INSERT INTO `linenotify` VALUES (36, 1, NULL, NULL);

-- ----------------------------
-- Table structure for manual
-- ----------------------------
DROP TABLE IF EXISTS `manual`;
CREATE TABLE `manual`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'เรื่อง',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'รายละเอียด',
  `create_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_at` datetime(0) DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `update_by` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1655897442);
INSERT INTO `migration` VALUES ('m140527_084418_auto_number', 1655897447);

-- ----------------------------
-- Table structure for off_loc_code
-- ----------------------------
DROP TABLE IF EXISTS `off_loc_code`;
CREATE TABLE `off_loc_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OFF_LOC_CODE` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_DESC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_ENG_DESC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OLD_REGION_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BOR_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LEV9_FLAG` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_NODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_REG_DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ZIP_CODE` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSPECT_REGION` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GRP_LOC_CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CANC_FLAG` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `WAN_TYPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OLD_OFF_LOC_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_FLAG` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of off_loc_code
-- ----------------------------
INSERT INTO `off_loc_code` VALUES (1, '99990', 'สำนักงานใหญ่', '', '1', 'N', 'Y', '6 ', 'พระนครศรีอยุธยา', '', '01', '1', 'U', '1', '', '1', NULL);
INSERT INTO `off_loc_code` VALUES (2, '99991', 'ผู้ดูแลระบบ', '', '', '', '', '', '', '', '', '', 'u', '', '', '', NULL);
INSERT INTO `off_loc_code` VALUES (3, '99992', 'IT Service', '', '', '', '', '', '', '', '', '', 'u', '', '', '', NULL);

-- ----------------------------
-- Table structure for profile_dlt
-- ----------------------------
DROP TABLE IF EXISTS `profile_dlt`;
CREATE TABLE `profile_dlt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_no` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accessToken` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `surname` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `positionDesc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orgFullNameDes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `offLocDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `offLocCode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rolex` int(11) DEFAULT 10 COMMENT 'กำหนดสิทธิ์',
  `create_at` int(11) DEFAULT NULL,
  `update_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_no`(`id_no`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile_dlt
-- ----------------------------
INSERT INTO `profile_dlt` VALUES (1, '1411900116884', '1411900116884', 'eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0.rt387SR62Mm6RkgoQuMqzN6m_nnJScNElh7imBl54Rfkcu0n8CzYHg.gCPJkkDWDhBiMJt2ouu3Aw.9M1JMCQblaLa48dXp4-KjIjUnftqQd24Hjrl2oDFkiuom5tH2sLlvIR61RPFRUzrfeyoBhvxiqMbSvzqNsYmLoyxuLPK-7pmhjzkTOQQd8BRrauNCZht2fGv1a4vM35Y.KsLLdlRXPT-5Bs1Fdj37gQ', 'นาย', 'เอกพันธุ์', 'ศรีวงษ์', 'นักวิชาการคอมพิวเตอร์ปฏิบัติการ', 'ศูนย์เทคโนโลยีสารสนเทศ กลุ่มบริหารข้อมูลและระบบสารสนเทศ งานพัฒนาระบบสารสนเทศบริการ', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 5', '00100', 10, NULL, NULL);

-- ----------------------------
-- Table structure for system_list
-- ----------------------------
DROP TABLE IF EXISTS `system_list`;
CREATE TABLE `system_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `org_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `system_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `system_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system_option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system_line` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ref`(`ref`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_list
-- ----------------------------
INSERT INTO `system_list` VALUES (1, 'MAC', '9', 'งานควบคุมบัญชีรถและเครื่องยนต์ /งานเลขทะเบียนจอง/เลขทะเบียนประมูล MAC', NULL, '', '', 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (2, 'CAR', '9', 'งานตรวจสภาพรถยนต์ งานทะเบียนรถยนต์/รถจักรยานยนต์ CAR', '', '', '', 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (3, 'TRC', '9', 'งานตรวจสภาพรถยนต์ /งานตรวจสภาพรถขนส่ง TRC', '', '', '', 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (4, 'FNC', '9', 'งานการเงิน FNC', '', '', '', 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (5, 'ADMIN', '9', 'แอดมิน', NULL, '', '', 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (6, 'DRL-PBL', '9', 'งานใบอนุญาตขับรถ/งานใบอนุญาต/ผู้ประจำรถ DRL-PBL', NULL, NULL, NULL, 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (7, 'TRL', '9', 'งานใบอนุญาตประกอบการขนส่ง TRL', '', NULL, NULL, 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');
INSERT INTO `system_list` VALUES (8, 'ESV', '9', 'งาน e-Service ', NULL, NULL, NULL, 'LI6MVtnlbQoEXgobvGqGmKiKJ7oqGaxZWNUC24oZGGz');

-- ----------------------------
-- Table structure for tabt_office_location
-- ----------------------------
DROP TABLE IF EXISTS `tabt_office_location`;
CREATE TABLE `tabt_office_location`  (
  `OFF_LOC_CODE` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OFF_LOC_DESC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OFF_LOC_ENG_DESC` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LOC_CODE` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRV_CODE` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRV_DESC` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OLD_REGION_CODE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BOR_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LEV9_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REGION_CODE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_NODE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_REG_DESC` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_REG_ABREV` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ZIP_CODE` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSPECT_REGION` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GRP_LOC_CODE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CANC_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `WAN_TYPE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1',
  `OLD_OFF_LOC_CODE` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_TIME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CREATE_USER_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LAST_UPD_TIME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LAST_UPD_USER_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `HOL_GRP` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INV_OFF_LOC_CODE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REG_PLATE_FLAG` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BR_DESC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CAR_OFF_REG_DESC` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CAR_OFF_REG_ABREV` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_ABREV` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_REG_ENG_DESC` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `OFF_LOC_CODE_PTM` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`OFF_LOC_CODE`) USING BTREE,
  INDEX `OFF_LOC_CODE`(`OFF_LOC_CODE`) USING BTREE,
  INDEX `OFF_LOC_DESC`(`OFF_LOC_DESC`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'ตารางข้อมูลสำนักงานขนส่งจังหวัด/สาขา' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabt_office_location
-- ----------------------------
INSERT INTO `tabt_office_location` VALUES ('00000', 'ไม่ระบุ', '', '', '000', '', '', '', '', '', '', '', '', '', '', '', 'C', '', '', '', NULL, '', NULL, '', '', '', 'Y', '', '', '', 'ไม่ระบุ', '', '00000');
INSERT INTO `tabt_office_location` VALUES ('00100', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 5', 'MOTOR VEHICLES REGISTRATION OFFICE', '0010000', '001', 'กรุงเทพมหานคร', '', 'N', 'N', '1', '0', 'กรุงเทพมหานคร', 'กท', '10600', '00', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '100360', '04', '10', 'Y', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 5', 'กรุงเทพมหานคร', 'กท', 'สขพ.5', 'BANGKOK', '00100');
INSERT INTO `tabt_office_location` VALUES ('00101', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 1', 'OFFICE SUPERVISION AREA 1', '0010000', '001', 'กรุงเทพมหานคร', '', 'N', '', '1', '0', 'กรุงเทพมหานคร', 'กท', '10150', '00', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '100360', '04', '10', 'N', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 1', 'กรุงเทพมหานคร', 'กท', 'สขพ.1', 'BANGKOK 1', '00101');
INSERT INTO `tabt_office_location` VALUES ('00102', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 2', 'OFFICE SUPERVISION AREA 2', '0010000', '001', 'กรุงเทพมหานคร', '', 'N', '', '1', '0', 'กรุงเทพมหานคร', 'กท', '10170', '00', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '100360', '04', '10', 'N', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 2', 'กรุงเทพมหานคร', 'กท', 'สขพ.2', 'BANGKOK 2', '00102');
INSERT INTO `tabt_office_location` VALUES ('00103', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 3', 'OFFICE SUPERVISION AREA 3', '0010000', '001', 'กรุงเทพมหานคร', '', 'N', '', '1', '0', 'กรุงเทพมหานคร', 'กท', '10250', '00', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '100360', '04', '10', 'N', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 3', 'กรุงเทพมหานคร', 'กท', 'สขพ.3', 'BANGKOK 3', '00103');
INSERT INTO `tabt_office_location` VALUES ('00104', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 4', 'OFFICE SUPERVISION AREA 4', '0010000', '001', 'กรุงเทพมหานคร', '', 'N', '', '1', '0', 'กรุงเทพมหานคร', 'กท', '10530', '00', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '100360', '04', '10', 'N', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 4', 'กรุงเทพมหานคร', 'กท', 'สขพ.4', 'BANGKOK 4', '00104');
INSERT INTO `tabt_office_location` VALUES ('10000', 'สำนักงานขนส่งจังหวัดชัยนาท', 'CHAINAT PROVINCIAL LAND TRANSPORT OFFICE', '1000000', '100', 'ชัยนาท', '1', 'N', 'N', '1', '3', 'ชัยนาท', 'ชน', '', '02', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '18', 'Y', '', 'ชัยนาท', 'ชน', 'สขจ.ชัยนาท', 'CHAINAT', '10000');
INSERT INTO `tabt_office_location` VALUES ('10001', 'สำนักงานขนส่งจังหวัดชัยนาท สาขาอ.หันคา', 'CHAINAT PROVINCIAL LAND TRANSPORT OFFICE HANKHA BRANCH', '1000200', '100', 'ชัยนาท', '1', 'N', '', '1', '3', 'ชัยนาท', 'ชน', '', '02', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.หันคา', 'ชัยนาท', 'ชน', 'สขข. อ.หันคา', 'CHAINAT 1', '10001');
INSERT INTO `tabt_office_location` VALUES ('10100', 'สำนักงานขนส่งจังหวัดสิงห์บุรี', 'SINGBURI PROVINCIAL LAND TRANSPORT OFFICE', '1010000', '101', 'สิงห์บุรี', '1', 'N', 'N', '1', '3', 'สิงห์บุรี', 'สห', '', '02', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '17', 'Y', '', 'สิงห์บุรี', 'สห', 'สขจ.สิงห์บุรี', 'SINGBURI', '10100');
INSERT INTO `tabt_office_location` VALUES ('10200', 'สำนักงานขนส่งจังหวัดลพบุรี', '', '1020000', '102', 'ลพบุรี', '1', 'N', 'N', '1', '3', 'ลพบุรี', 'ลบ', '', '02', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '16', 'Y', '', 'ลพบุรี', 'ลบ', 'สขจ.ลพบุรี', 'LOPBURI', '10200');
INSERT INTO `tabt_office_location` VALUES ('10201', 'สำนักงานขนส่งจังหวัดลพบุรี สาขาอ.ชัยบาดาล', '', '1020300', '102', 'ลพบุรี', '1', 'N', '', '1', '3', 'ลพบุรี', 'ลบ', '', '02', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.ชัยบาดาล', 'ลพบุรี', 'ลบ', 'สขข. อ.ชัยบาดาล', 'LOPBURI 1', '10201');
INSERT INTO `tabt_office_location` VALUES ('10202', 'สำนักงานขนส่งจังหวัดลพบุรี สาขาอ.โคกสำโรง', '', '1020500', '102', 'ลพบุรี', '1', 'N', '', '1', '3', 'ลพบุรี', 'ลบ', '', '02', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.โคกสำโรง', 'ลพบุรี', 'ลบ', 'สขข. อ.โคกสำโรง', 'LOPBURI 2', '10202');
INSERT INTO `tabt_office_location` VALUES ('10300', 'สำนักงานขนส่งจังหวัดอ่างทอง', '', '1030000', '103', 'อ่างทอง', '1', 'N', 'N', '1', '3', 'อ่างทอง', 'อท', '', '02', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '15', 'Y', '', 'อ่างทอง', 'อท', 'สขจ.อ่างทอง', 'ANGTHONG', '10300');
INSERT INTO `tabt_office_location` VALUES ('10301', 'สำนักงานขนส่งจังหวัดอ่างทอง สาขาอ.วิเศษชัยชาญ', '', '1030700', '103', 'อ่างทอง', '1', 'N', '', '1', '3', 'อ่างทอง', 'ลบ', '', '02', '2', 'C', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.วิเศษชัยชาญ', 'อ่างทอง', 'ลบ', 'สขข. อ.วิเศษชัยชาญ', 'ANGTHONG 1', '10301');
INSERT INTO `tabt_office_location` VALUES ('10400', 'สำนักงานขนส่งจังหวัดสระบุรี', '', '1040000', '104', 'สระบุรี', '1', 'N', 'Y', '1', '3', 'สระบุรี', 'สบ', '', '01', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '19', 'Y', '', 'สระบุรี', 'สบ', 'สขจ.สระบุรี', 'SARABURI', '10400');
INSERT INTO `tabt_office_location` VALUES ('10401', 'สำนักงานขนส่งจังหวัดสระบุรี สาขาอ.บ้านหมอ', '', '1040200', '104', 'สระบุรี', '1', 'N', '', '1', '3', 'สระบุรี', 'สบ', '', '01', '1', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.บ้านหมอ', 'สระบุรี', 'สบ', 'สขข. อ.บ้านหมอ', 'SARABURI 1', '10401');
INSERT INTO `tabt_office_location` VALUES ('10402', 'สำนักงานขนส่งจังหวัดสระบุรี สาขาอ.มวกเหล็ก', '', '1040500', '104', 'สระบุรี', '1', 'N', '', '1', '3', 'สระบุรี', 'สบ', '', '01', '1', 'C', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.มวกเหล็ก', 'สระบุรี', 'สบ', 'สขข. อ.มวกเหล็ก', 'SARABURI 2', '10402');
INSERT INTO `tabt_office_location` VALUES ('10500', 'สำนักงานขนส่งจังหวัดพระนครศรีอยุธยา', '', '1050000', '105', 'พระนครศรีอยุธยา', '1', 'N', 'Y', '1', '6', 'พระนครศรีอยุธยา', 'อย', '', '01', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '14', 'Y', '', 'พระนครศรีอยุธยา', 'อย', 'สขจ.พระนครศรีอยุธยา', 'AYUTTHAYA', '10500');
INSERT INTO `tabt_office_location` VALUES ('10501', 'สำนักงานขนส่งจังหวัดพระนครศรีอยุธยา สาขาอ.มหาราช', '', '1050900', '105', 'พระนครศรีอยุธยา', '1', 'N', '', '1', '6', 'พระนครศรีอยุธยา', 'อย', '', '01', '1', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.มหาราช', 'พระนครศรีอยุธยา', 'อย', 'สขข. อ.มหาราช', 'AYUTTHAYA 1', '10501');
INSERT INTO `tabt_office_location` VALUES ('10600', 'สำนักงานขนส่งจังหวัดปทุมธานี', '', '1060000', '106', 'ปทุมธานี', '1', 'N', 'Y', '1', '0', 'ปทุมธานี', 'ปท', '', '01', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '13', 'Y', '', 'ปทุมธานี', 'ปท', 'สขจ.ปทุมธานี', 'PATHUMTHANI', '10600');
INSERT INTO `tabt_office_location` VALUES ('10601', 'สำนักงานขนส่งจังหวัดปทุมธานี สาขาอ.คลองหลวง', 'Klongluang', '1060200', '106', 'ปทุมธานี', '1', 'N', '', '1', '0', 'ปทุมธานี', 'ปท', '', '01', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.คลองหลวง', 'ปทุมธานี', 'ปท', 'สขข. อ.คลองหลวง', 'PATHUMTHANI 1', '10601');
INSERT INTO `tabt_office_location` VALUES ('10700', 'สำนักงานขนส่งจังหวัดนนทบุรี', '', '1070000', '107', 'นนทบุรี', '1', 'N', 'Y', '1', '0', 'นนทบุรี', 'นบ', '', '01', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '12', 'Y', '', 'นนทบุรี', 'นบ', 'สขจ.นนทบุรี', 'NONTHABURI', '10700');
INSERT INTO `tabt_office_location` VALUES ('10800', 'สำนักงานขนส่งจังหวัดสมุทรปราการ', '', '1080000', '108', 'สมุทรปราการ', '1', 'N', 'Y', '1', '0', 'สมุทรปราการ', 'สป', '', '03', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '11', 'Y', '', 'สมุทรปราการ', 'สป', 'สขจ.สมุทรปราการ', 'SAMUTPRAKAN', '10800');
INSERT INTO `tabt_office_location` VALUES ('10801', 'สำนักงานขนส่งจังหวัดสมุทรปราการ สาขาอ.พระประแดง', '', '1080400', '108', 'สมุทรปราการ', '1', 'N', '', '1', '0', 'สมุทรปราการ', 'สป', '', '03', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.พระประแดง', 'สมุทรปราการ', 'สป', 'สขข. อ.พระประแดง', 'SAMUTPRAKAN 1', '10801');
INSERT INTO `tabt_office_location` VALUES ('20000', 'สำนักงานขนส่งจังหวัดนครนายก', '', '2000000', '200', 'นครนายก', '2', 'N', 'N', '2', '7', 'นครนายก', 'นย', '', '03', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '26', 'Y', '', 'นครนายก', 'นย', 'สขจ.นครนายก', 'NAKHONNAYOK', '20000');
INSERT INTO `tabt_office_location` VALUES ('20100', 'สำนักงานขนส่งจังหวัดปราจีนบุรี', '', '2010000', '201', 'ปราจีนบุรี', '2', 'N', 'N', '2', '7', 'ปราจีนบุรี', 'ปจ', '', '03', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '25', 'Y', '', 'ปราจีนบุรี', 'ปจ', 'สขจ.ปราจีนบุรี', 'PRACHINBURI', '20100');
INSERT INTO `tabt_office_location` VALUES ('20101', 'สำนักงานขนส่งจังหวัดปราจีนบุรี สาขา อ.สระแก้ว', '', '2010800', '201', 'ปราจีนบุรี', '2', '0', '', '2', '', 'ปราจีนบุรี', 'ปจ', '', '', '', 'C', '1', '', '2', '0000-00-00 00:00:00', '3100602707033', '0000-00-00 00:00:00', '3100602707033', '', '', 'N', 'อ.สระแก้ว', '', '', 'สขข. อ.สระแก้ว', '', '20101');
INSERT INTO `tabt_office_location` VALUES ('20200', 'สำนักงานขนส่งจังหวัดฉะเชิงเทรา', '', '2020000', '202', 'ฉะเชิงเทรา', '2', 'N', 'Y', '2', '7', 'ฉะเชิงเทรา', 'ฉช', '', '03', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '24', 'Y', '', 'ฉะเชิงเทรา', 'ฉช', 'สขจ.ฉะเชิงเทรา', 'CHACHOENGSAO', '20200');
INSERT INTO `tabt_office_location` VALUES ('20201', 'สำนักงานขนส่งจังหวัดฉะเชิงเทรา สาขาอ.พนมสารคาม', '', '2020700', '202', 'ฉะเชิงเทรา', '2', 'N', '', '2', '7', 'ฉะเชิงเทรา', 'ฉช', '', '03', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.พนมสารคาม', 'ฉะเชิงเทรา', 'ฉช', 'สขข. อ.พนมสารคาม', 'CHACHOENGSAO 1', '20201');
INSERT INTO `tabt_office_location` VALUES ('20300', 'สำนักงานขนส่งจังหวัดชลบุรี', 'CHONBURI PROVINCIAL LAND TRANSPORT OFFICE', '2030000', '203', 'ชลบุรี', '2', 'N', 'Y', '2', '7', 'ชลบุรี', 'ชบ', '', '09', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '20', 'Y', '', 'ชลบุรี', 'ชบ', 'สขจ.ชลบุรี', 'CHONBURI', '20300');
INSERT INTO `tabt_office_location` VALUES ('20301', 'สำนักงานขนส่งจังหวัดชลบุรี สาขาอ.บางละมุง', 'CHONBURI PROVINCIAL LAND TRANSPORT OFFICE BANGLAMUNG BRANCH', '2030400', '203', 'ชลบุรี', '2', 'N', '', '2', '7', 'ชลบุรี', 'ชบ', '', '09', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.บางละมุง', 'ชลบุรี', 'ชบ', 'สขข. อ.บางละมุง', 'CHONBURI 1', '20301');
INSERT INTO `tabt_office_location` VALUES ('20302', 'สำนักงานขนส่งจังหวัดชลบุรี สาขาอ.หนองใหญ่', 'CHONBURI PROVINCIAL LAND TRANSPORT OFFICE NONGYAI BRANCH', '2030300', '203', 'ชลบุรี', '2', 'N', '', '2', '7', 'ชลบุรี', 'ชบ', '', '09', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.หนองใหญ่', 'ชลบุรี', 'ชบ', 'สขข. อ.หนองใหญ่', 'CHONBURI 2', '20302');
INSERT INTO `tabt_office_location` VALUES ('20303', 'สำนักงานขนส่งจังหวัดชลบุรี สาขาอ.ศรีราชา', 'CHONBURI PROVINCIAL LAND TRANSPORT OFFICE SRIRACHA BRANCH', '2030900', '203', 'ชลบุรี', '2', 'N', '', '2', '7', 'ชลบุรี', 'ชบ', '', '09', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.ศรีราชา', 'ชลบุรี', 'ชบ', 'สขข. อ.ศรีราชา', 'CHONBURI 3', '20303');
INSERT INTO `tabt_office_location` VALUES ('20400', 'สำนักงานขนส่งจังหวัดระยอง', 'RAYONG PROVINCIAL LAND TRANSPORT OFFICE', '2040000', '204', 'ระยอง', '2', 'N', 'Y', '2', '7', 'ระยอง', 'รย', '', '09', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '21', 'Y', '', 'ระยอง', 'รย', 'สขจ.ระยอง', 'RAYONG', '20400');
INSERT INTO `tabt_office_location` VALUES ('20401', 'สำนักงานขนส่งจังหวัดระยอง สาขาอ.แกลง', '', '2040500', '204', 'ระยอง', '2', 'N', '', '2', '7', 'ระยอง', 'รย', '', '09', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.แกลง', 'ระยอง', 'รย', 'สขข. อ.แกลง', 'RAYONG 1', '20401');
INSERT INTO `tabt_office_location` VALUES ('20500', 'สำนักงานขนส่งจังหวัดจันทบุรี', 'CHANTHABURI PROVINCIAL LAND TRANSPORT OFFICE', '2050000', '205', 'จันทบุรี', '2', '', '', '2', '', 'จันทบุรี', 'จบ', '', '09', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '3200500022987', '03', '22', 'Y', '', 'จันทบุรี', 'จบ', 'สขจ.จันทบุรี', 'CHANTHABURI', '20500');
INSERT INTO `tabt_office_location` VALUES ('20501', 'สำนักงานขนส่งจังหวัดจันทบุรี สาขาอ.สอยดาว', 'CHANTHABURI PROVINCIAL LAND TRANSPORT OFFICE SOIDAO BRANCH', '2050700', '205', 'จันทบุรี', '2', 'Y', '', '2', '7', 'จันทบุรี', 'จบ', '', '09', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '100360', '01', '', 'N', 'อ.สอยดาว', 'จันทบุรี', 'จบ', 'สขข. อ.สอยดาว', 'CHANTRABURI 1', '20501');
INSERT INTO `tabt_office_location` VALUES ('20600', 'สำนักงานขนส่งจังหวัดตราด', '', '2060000', '206', 'ตราด', '2', 'Y', 'N', '2', '7', 'ตราด', 'ตร', '', '09', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '23', 'Y', '', 'ตราด', 'ตร', 'สขจ.ตราด', 'TRAT', '20600');
INSERT INTO `tabt_office_location` VALUES ('20601', 'สำนักงานขนส่งจังหวัดตราด สาขาอ.เขาสมิง', '', '2060200', '206', 'ตราด', '2', 'Y', '', '2', '7', 'ตราด', 'ตร', '', '09', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.เขาสมิง', 'ตราด', 'ตร', 'สขข. อ.เขาสมิง', 'TRAT 1', '20601');
INSERT INTO `tabt_office_location` VALUES ('20700', 'สำนักงานขนส่งจังหวัดสระแก้ว', '', '2070000', '207', 'สระแก้ว', '2', 'Y', 'N', '2', '7', 'สระแก้ว', 'สก', '', '03', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '27', 'Y', '', 'สระแก้ว', 'สก', 'สขจ.สระแก้ว', 'SAKAEO', '20700');
INSERT INTO `tabt_office_location` VALUES ('30000', 'สำนักงานขนส่งจังหวัดชัยภูมิ', '', '3000000', '300', 'ชัยภูมิ', '3', 'N', 'N', '3', '5', 'ชัยภูมิ', 'ชย', '', '14', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '36', 'Y', '', 'ชัยภูมิ', 'ชย', 'สขจ.ชัยภูมิ', 'CHAIYAPHUM', '30000');
INSERT INTO `tabt_office_location` VALUES ('30001', 'สำนักงานขนส่งจังหวัดชัยภูมิ สาขาอ.ภูเขียว', '', '3001300', '300', 'ชัยภูมิ', '3', 'N', '', '3', '5', 'ชัยภูมิ', 'ชย', '', '14', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ภูเขียว', 'ชัยภูมิ', 'ชย', 'สขข. อ.ภูเขียว', 'CHAIYAPHUM 1', '30001');
INSERT INTO `tabt_office_location` VALUES ('30002', 'สำนักงานขนส่งจังหวัดชัยภูมิ สาขาอ.บำเหน็จณรงค์', '', '3000200', '300', 'ชัยภูมิ', '3', 'N', '', '3', '5', 'ชัยภูมิ', 'ชย', '', '14', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บำเหน็จณรงค์', 'ชัยภูมิ', 'ชย', 'สขข. อ.บำเหน็จณรงค์', 'CHAIYAPHUM 2', '30002');
INSERT INTO `tabt_office_location` VALUES ('30100', 'สำนักงานขนส่งจังหวัดยโสธร', 'YASOTHON PROVINCIAL LAND TRANSPORT OFFICE', '3010000', '301', 'ยโสธร', '3', 'N', 'N', '3', '5', 'ยโสธร', 'ยส', '', '13', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '35', 'Y', '', 'ยโสธร', 'ยส', 'สขจ.ยโสธร', 'YASOTHON', '30100');
INSERT INTO `tabt_office_location` VALUES ('30101', 'สำนักงานขนส่งจังหวัดยโสธร สาขาอ.เลิงนกทา', 'YASOTHON PROVINCIAL LAND TRANSPORT OFFICE LOANGNOKTHA', '3010500', '301', 'ยโสธร', '3', 'N', '', '3', '5', 'ยโสธร', 'ยส', '', '13', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เลิงนกทา', 'ยโสธร', 'ยส', 'สขข. อ.เลิงนกทา', 'YASOTHON 1', '30101');
INSERT INTO `tabt_office_location` VALUES ('30102', 'สำนักงานขนส่งจังหวัดยโสธร สาขาอ.มหาชนะชัย', 'YASOTHON PROVINCIAL LAND TRANSPORT OFFICE MAHACHANACHAI BR', '3010600', '301', 'ยโสธร', '3', 'N', '', '3', '5', 'ยโสธร', 'ยส', '', '13', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.มหาชนะชัย', 'ยโสธร', 'ยส', 'สขข. อ.มหาชนะชัย', 'YASOTHON 2', '30102');
INSERT INTO `tabt_office_location` VALUES ('30200', 'สำนักงานขนส่งจังหวัดอุบลราชธานี', 'UBONRATCHATHANI PROVINCIAL LAND TRANSPORT OFFICE', '3020000', '302', 'อุบลราชธานี', '3', 'Y', 'Y', '3', '5', 'อุบลราชธานี', 'อบ', '', '13', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '34', 'Y', '', 'อุบลราชธานี', 'อบ', 'สขจ.อุบลราชธานี', 'UBONRATCHATHANI', '30200');
INSERT INTO `tabt_office_location` VALUES ('30201', 'สำนักงานขนส่งจังหวัดอุบลราชธานี สาขา อ.อำนาจเจริญ', '', '3020200', '302', 'อุบลราชธานี', '3', '1', '', '3', '', 'อุบลราชธานี', 'อบ', '', '', '2', 'C', '1', '', '2', '0000-00-00 00:00:00', '3100602707033', '0000-00-00 00:00:00', '3100602707033', '', '', 'N', 'อ.อำนาจเจริญ', 'อุบลราชธานี', 'อบ', 'สขข. อ.อำนาจเจริญ', '', '30201');
INSERT INTO `tabt_office_location` VALUES ('30202', 'สำนักงานขนส่งจังหวัดอุบลราชธานี สาขาอ.เดชอุดม', 'UBONRATCHATHANI PROVINCIAL LAND TRANSPORT OFFICE DETUDOM BR', '3020600', '302', 'อุบลราชธานี', '3', 'Y', '', '3', '5', 'อุบลราชธานี', 'อบ', '', '13', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เดชอุดม', 'อุบลราชธานี', 'อบ', 'สขข. อ.เดชอุดม', 'UBONRATCHATHANI 2', '30202');
INSERT INTO `tabt_office_location` VALUES ('30203', 'สำนักงานขนส่งจังหวัดอุบลราชธานี สาขาอ.เขมราฐ', 'UBONRATCHATHANI PROVINCIAL LAND TRANSPORT OFFICE KHEMARAT', '3020800', '302', 'อุบลราชธานี', '3', 'Y', '', '3', '5', 'อุบลราชธานี', 'อบ', '', '13', '2', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เขมราฐ', 'อุบลราชธานี', 'อบ', 'สขข. อ.เขมราฐ', 'UBONRATCHATHANI 3', '30203');
INSERT INTO `tabt_office_location` VALUES ('30204', 'สำนักงานขนส่งจังหวัดอุบลราชธานี สาขาอ.บุณฑริก', 'UBONRATCHATHANI PROVINCIAL LAND TRANSPORT OFFICE BOONTHARIK', '3020400', '302', 'อุบลราชธานี', '3', 'Y', '', '3', '5', 'อุบลราชธานี', 'อบ', '', '13', '2', 'C', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บุณฑริก', 'อุบลราชธานี', 'อบ', 'สขข. อ.บุณฑริก', 'UBONRATCHATHANI 4', '30204');
INSERT INTO `tabt_office_location` VALUES ('30300', 'สำนักงานขนส่งจังหวัดศรีสะเกษ', 'SISAKET PROVINCIAL LAND TRANSPORT OFFICE', '3030000', '303', 'ศรีสะเกษ', '3', 'Y', 'N', '3', '5', 'ศรีสะเกษ', 'ศก', '', '13', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '33', 'Y', '', 'ศรีสะเกษ', 'ศก', 'สขจ.ศรีสะเกษ', 'SISAKET', '30300');
INSERT INTO `tabt_office_location` VALUES ('30301', 'สำนักงานขนส่งจังหวัดศรีสะเกษ สาขาอ.กันทรลักษ์', 'SISAKET PROVINCIAL LAND TRANSPORT OFFICE KANTARALUK BRANCH', '3030300', '303', 'ศรีสะเกษ', '3', 'Y', '', '3', '5', 'ศรีสะเกษ', 'ศก', '', '13', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.กันทรลักษ์', 'ศรีสะเกษ', 'ศก', 'สขข. อ.กันทรลักษ์', 'SISAKET 1', '30301');
INSERT INTO `tabt_office_location` VALUES ('30400', 'สำนักงานขนส่งจังหวัดบุรีรัมย์', 'BURIRAM PROVINCIAL LAND TRANSPORT OFFICE', '3040000', '304', 'บุรีรัมย์', '3', 'Y', 'Y', '3', '5', 'บุรีรัมย์', 'บร', '', '14', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '31', 'Y', '', 'บุรีรัมย์', 'บร', 'สขจ.บุรีรัมย์', 'BURIRAM', '30400');
INSERT INTO `tabt_office_location` VALUES ('30401', 'สำนักงานขนส่งจังหวัดบุรีรัมย์ สาขาอ.นางรอง', 'BURIRAM PROVINCIAL LAND TRANSPORT OFFICE NANGRONG BRANCH', '3040800', '304', 'บุรีรัมย์', '3', 'Y', '', '3', '5', 'บุรีรัมย์', 'บร', '', '14', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.นางรอง', 'บุรีรัมย์', 'บร', 'สขข. อ.นางรอง', 'BURIRAM 1', '30401');
INSERT INTO `tabt_office_location` VALUES ('30402', 'สำนักงานขนส่งจังหวัดบุรีรัมย์ สาขาอ.พุทไธสง', 'BURIRAM PROVINCIAL LAND TRANSPORT OFFICE PUTTHAISONG BRANCH', '3041000', '304', 'บุรีรัมย์', '3', 'Y', '', '3', '5', 'บุรีรัมย์', 'บร', '', '14', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.พุทไธสง', 'บุรีรัมย์', 'บร', 'สขข. อ.พุทไธสง', 'BURIRAM 2', '30402');
INSERT INTO `tabt_office_location` VALUES ('30403', 'สำนักงานขนส่งจังหวัดบุรีรัมย์ สาขาอ.ประโคนชัย', 'BURIRAM PROVINCIAL LAND TRANSPORT OFFICE PRAKONCHAI BRANCH', '3041100', '304', 'บุรีรัมย์', '3', 'Y', '', '3', '5', 'บุรีรัมย์', 'บร', '', '14', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ประโคนชัย', 'บุรีรัมย์', 'บร', 'สขข. อ.ประโคนชัย', 'BURIRAM 3', '30403');
INSERT INTO `tabt_office_location` VALUES ('30500', 'สำนักงานขนส่งจังหวัดนครราชสีมา', '', '3050000', '305', 'นครราชสีมา', '3', 'N', 'Y', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '30', 'Y', '', 'นครราชสีมา', 'นม', 'สขจ.นครราชสีมา', 'NAKHONRATCHASIMA', '30500');
INSERT INTO `tabt_office_location` VALUES ('30501', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.ปากช่อง', '', '3051600', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ปากช่อง', 'นครราชสีมา', 'นม', 'สขข. อ.ปากช่อง', 'NAKHONRATCHASIMA 1', '30501');
INSERT INTO `tabt_office_location` VALUES ('30502', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.บัวใหญ่', '', '3050200', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บัวใหญ่', 'นครราชสีมา', 'นม', 'สขข. อ.บัวใหญ่', 'NAKHONRATCHASIMA 2', '30502');
INSERT INTO `tabt_office_location` VALUES ('30503', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.สีคิ้ว', '', '3052000', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.สีคิ้ว', 'นครราชสีมา', 'นม', 'สขข. อ.สีคิ้ว', 'NAKHONRATCHASIMA 3', '30503');
INSERT INTO `tabt_office_location` VALUES ('30504', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.โชคชัย', '', '3050400', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.โชคชัย', 'นครราชสีมา', 'นม', 'สขข. อ.โชคชัย', 'NAKHONRATCHASIMA 4', '30504');
INSERT INTO `tabt_office_location` VALUES ('30505', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.พิมาย', '', '3051800', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.พิมาย', 'นครราชสีมา', 'นม', 'สขข. อ.พิมาย', 'NAKHONRATCHASIMA 5', '30505');
INSERT INTO `tabt_office_location` VALUES ('30506', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.ปักธงชัย', '', '3051700', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ปักธงชัย', 'นครราชสีมา', 'นม', 'สขข. อ.ปักธงชัย', 'NAKHONRATCHASIMA 6', '30506');
INSERT INTO `tabt_office_location` VALUES ('30507', 'สำนักงานขนส่งจังหวัดนครราชสีมา สาขาอ.ด่านขุนทด', '', '3050600', '305', 'นครราชสีมา', '3', 'N', '', '3', '5', 'นครราชสีมา', 'นม', '', '14', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ด่านขุนทด', 'นครราชสีมา', 'นม', 'สขข. อ.ด่านขุนทด', 'NAKHONRATCHASIMA 7', '30507');
INSERT INTO `tabt_office_location` VALUES ('30600', 'สำนักงานขนส่งจังหวัดสุรินทร์', 'SURIN PROVINCIAL LAND TRANSPORT OFFICE', '3060000', '306', 'สุรินทร์', '3', 'Y', 'N', '3', '5', 'สุรินทร์', 'สร', '', '14', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '32', 'Y', '', 'สุรินทร์', 'สร', 'สขจ.สุรินทร์', 'SURIN', '30600');
INSERT INTO `tabt_office_location` VALUES ('30601', 'สำนักงานขนส่งจังหวัดสุรินทร์ สาขาอ.รัตนบุรี', 'SURIN PROVINCIAL LAND TRANSPORT OFFICE RATTANABURI BRANCH', '3060600', '306', 'สุรินทร์', '3', 'Y', '', '3', '5', 'สุรินทร์', 'สร', '', '14', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.รัตนบุรี', 'สุรินทร์', 'สร', 'สขข. อ.รัตนบุรี', 'SURIN 1', '30601');
INSERT INTO `tabt_office_location` VALUES ('30602', 'สำนักงานขนส่งจังหวัดสุรินทร์ สาขาอ.ปราสาท', 'SURIN PROVINCIAL LAND TRANSPORT OFFICE PRASART BRANCH', '3060400', '306', 'สุรินทร์', '3', 'Y', '', '3', '5', 'สุรินทร์', 'สร', '', '14', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ปราสาท', 'สุรินทร์', 'สร', 'สขข. อ.ปราสาท', 'SURIN 2', '30602');
INSERT INTO `tabt_office_location` VALUES ('30603', 'สำนักงานขนส่งจังหวัดสุรินทร์ สาขาอ.สังขะ', 'SURIN PROVINCIAL LAND TRANSPORT OFFICE SANGKHA BRANCH', '3060800', '306', 'สุรินทร์', '3', 'Y', '', '3', '5', 'สุรินทร์', 'สร', '', '14', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.สังขะ', 'สุรินทร์', 'สร', 'สขข. อ.สังขะ', 'SURIN 3', '30603');
INSERT INTO `tabt_office_location` VALUES ('30700', 'สำนักงานขนส่งจังหวัดอำนาจเจริญ', '', '3070000', '307', 'อำนาจเจริญ', '3', 'Y', 'N', '3', '5', 'อำนาจเจริญ', 'อจ', '', '13', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '37', 'Y', '', 'อำนาจเจริญ', 'อจ', 'สขจ.อำนาจเจริญ', 'AMNATCHAROEN', '30700');
INSERT INTO `tabt_office_location` VALUES ('30800', 'สำนักงานขนส่งจังหวัดหนองบัวลำภู', '', '3080000', '308', 'หนองบัวลำภู', '3', 'N', 'N', '3', '4', 'หนองบัวลำภู', 'นภ', '', '10', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '39', 'Y', '', 'หนองบัวลำภู', 'นภ', 'สขจ.หนองบัวลำภู', 'NONGBUALAMPHU', '30800');
INSERT INTO `tabt_office_location` VALUES ('30900', 'สำนักงานขนส่งจังหวัดบึงกาฬ', '', '3090000', '309', 'บึงกาฬ', '3', 'Y', 'N', '3', '4', 'บึงกาฬ', 'บก', '38000', '10', '3', 'U', '1', '40001', '1', '0000-00-00 00:00:00', '100360', '0000-00-00 00:00:00', '100360', '01', '38', 'Y', '', 'บึงกาฬ', 'บก', 'สขจ.บึงกาฬ', 'BUENG KAN', '30900');
INSERT INTO `tabt_office_location` VALUES ('40000', 'สำนักงานขนส่งจังหวัดหนองคาย', '', '4000000', '400', 'หนองคาย', '3', 'Y', 'N', '3', '4', 'หนองคาย', 'นค', '', '10', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '43', 'Y', '', 'หนองคาย', 'นค', 'สขจ.หนองคาย', 'NONGKHAI', '40000');
INSERT INTO `tabt_office_location` VALUES ('40001', 'สำนักงานขนส่งจังหวัดหนองคาย สาขาอ.บึงกาฬ', '', '4000200', '400', 'หนองคาย', '3', 'Y', '', '3', '4', 'หนองคาย', 'นค', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.บึงกาฬ', 'หนองคาย', 'นค', 'สขข. อ.บึงกาฬ', 'NONGKHAI 1', '40001');
INSERT INTO `tabt_office_location` VALUES ('40100', 'สำนักงานขนส่งจังหวัดเลย', 'LOEI PROVINCIAL LAND TRANSPORT OFFICE BRANCH', '4010000', '401', 'เลย', '3', 'Y', 'N', '3', '2', 'เลย', 'ลย', '', '10', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '42', 'Y', '', 'เลย', 'ลย', 'สขจ.เลย', 'LOEI', '40100');
INSERT INTO `tabt_office_location` VALUES ('40101', 'สำนักงานขนส่งจังหวัดเลย สาขาอ.ด่านซ้าย', 'LOEI PROVINCIAL LAND TRANSPORT OFFICE DANSAI BRANCH', '4010400', '401', 'เลย', '3', 'Y', '', '3', '2', 'เลย', 'ลย', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.ด่านซ้าย', 'เลย', 'ลย', 'สขข. อ.ด่านซ้าย', 'LOEI 1', '40101');
INSERT INTO `tabt_office_location` VALUES ('40200', 'สำนักงานขนส่งจังหวัดอุดรธานี', 'UDONTHANI PROVINCIAL LAND TRANSPORT OFFICE', '4020000', '402', 'อุดรธานี', '3', 'N', 'Y', '3', '4', 'อุดรธานี', 'อด', '', '10', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '41', 'Y', '', 'อุดรธานี', 'อด', 'สขจ.อุดรธานี', 'UDONTHANI', '40200');
INSERT INTO `tabt_office_location` VALUES ('40201', 'สำนักงานขนส่งจังหวัดอุดรธานี สาขาอ.กุมภวาปี', 'UDONTHANI PROVINCIAL LAND TRANSPORT OFFICE KUMPAVAPI BRANCH', '4020400', '402', 'อุดรธานี', '3', 'N', '', '3', '4', 'อุดรธานี', 'อด', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.กุมภวาปี', 'อุดรธานี', 'อด', 'สขข. อ.กุมภวาปี', 'UDONTHANI 1', '40201');
INSERT INTO `tabt_office_location` VALUES ('40203', 'สำนักงานขนส่งจังหวัดอุดรธานี สาขาอ.หนองหาน', 'UDONTHANI PROVINCIAL LAND TRANSPORT OFFICE NONGHAN BRANCH', '4021200', '402', 'อุดรธานี', '3', 'N', '', '3', '4', 'อุดรธานี', 'อด', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.หนองหาน', 'อุดรธานี', 'อด', 'สขข. อ.หนองหาน', 'UDONTHANI 3', '40203');
INSERT INTO `tabt_office_location` VALUES ('40204', 'สำนักงานขนส่งจังหวัดอุดรธานี สาขาอ.บ้านผือ', 'UDONTHANI PROVINCIAL LAND TRANSPORT OFFICE BANPUE BRANCH', '4020300', '402', 'อุดรธานี', '3', 'N', '', '3', '4', 'อุดรธานี', 'อด', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.บ้านผือ', 'อุดรธานี', 'อด', 'สขข. อ.บ้านผือ', 'UDONTHANI 4', '40204');
INSERT INTO `tabt_office_location` VALUES ('40205', 'สำนักงานขนส่งจังหวัดอุดรธานี สาขาอ.เพ็ญ', 'UDONTHANI PROVINCIAL LAND TRANSPORT OFFICE PEN BRANCH', '4021600', '402', 'อุดรธานี', '3', 'N', '', '3', '4', 'อุดรธานี', 'อด', '', '10', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.เพ็ญ', 'อุดรธานี', 'อด', 'สขข. อ.เพ็ญ', 'UDONTHANI 5', '40205');
INSERT INTO `tabt_office_location` VALUES ('40300', 'สำนักงานขนส่งจังหวัดนครพนม', 'NAKHONPHANOM PROVINCIAL LAND TRANSPORT OFFICE', '4030000', '403', 'นครพนม', '3', 'Y', 'N', '3', '4', 'นครพนม', 'นพ', '', '11', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '48', 'Y', '', 'นครพนม', 'นพ', 'สขจ.นครพนม', 'NAKHONPHANOM', '40300');
INSERT INTO `tabt_office_location` VALUES ('40301', 'สำนักงานขนส่งจังหวัดนครพนม สาขาอ.ธาตุพนม', 'NAKORNPANOM PROVINCIAL LAND TRANSPORT OFFICE TATPANOM BRANCH', '4030800', '403', 'นครพนม', '3', 'Y', '', '3', '4', 'นครพนม', 'นพ', '', '11', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '03', '', 'N', 'อ.ธาตุพนม', 'นครพนม', 'นพ', 'สขข. อ.ธาตุพนม', 'NAKHONPHANOM 1', '40301');
INSERT INTO `tabt_office_location` VALUES ('40400', 'สำนักงานขนส่งจังหวัดสกลนคร', 'SAKONNAKHON PROVINCIAL LAND TRANSPORT OFFICE', '4040000', '404', 'สกลนคร', '3', 'N', 'N', '3', '4', 'สกลนคร', 'สน', '', '11', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '47', 'Y', '', 'สกลนคร', 'สน', 'สขจ.สกลนคร', 'SAKONNAKHON', '40400');
INSERT INTO `tabt_office_location` VALUES ('40401', 'สำนักงานขนส่งจังหวัดสกลนคร สาขาอ.สว่างแดนดิน', 'SAKONNAKHON PROVINCIAL LAND TRANSPORT OFFICE SAVANGDANDIN BR', '4040900', '404', 'สกลนคร', '3', 'N', '', '3', '4', 'สกลนคร', 'สน', '', '11', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.สว่างแดนดิน', 'สกลนคร', 'สน', 'สขข. อ.สว่างแดนดิน', 'SAKONNAKHON 1', '40401');
INSERT INTO `tabt_office_location` VALUES ('40402', 'สำนักงานขนส่งจังหวัดสกลนคร สาขาอ.พังโคน', 'SAKONNAKHON PROVINCIAL LAND TRANSPORT OFFICE PANGKON BRANCH', '4040700', '404', 'สกลนคร', '3', 'N', '', '3', '4', 'สกลนคร', 'สน', '', '11', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.พังโคน', 'สกลนคร', 'สน', 'สขข. อ.พังโคน', 'SAKONNAKHON 2', '40402');
INSERT INTO `tabt_office_location` VALUES ('40500', 'สำนักงานขนส่งจังหวัดขอนแก่น', 'KHONKAEN PROVINCIAL LAND TRANSPORT OFFICE', '4050000', '405', 'ขอนแก่น', '3', 'N', 'Y', '3', '4', 'ขอนแก่น', 'ขก', '', '12', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '40', 'Y', '', 'ขอนแก่น', 'ขก', 'สขจ.ขอนแก่น', 'KHONKAEN', '40500');
INSERT INTO `tabt_office_location` VALUES ('40501', 'สำนักงานขนส่งจังหวัดขอนแก่น สาขาอ.พล', 'KHONKAEN PROVINCIAL LAND TRANSPORT OFFICE POL BRANCH', '4051400', '405', 'ขอนแก่น', '3', 'N', '', '3', '4', 'ขอนแก่น', 'ขก', '', '12', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.พล', 'ขอนแก่น', 'ขก', 'สขข. อ.พล', 'KHONKAEN 1', '40501');
INSERT INTO `tabt_office_location` VALUES ('40502', 'สำนักงานขนส่งจังหวัดขอนแก่น สาขาอ.ชุมแพ', 'KHONKAEN PROVINCIAL LAND TRANSPORT OFFICE CHUMPHAE BRANCH', '4050700', '405', 'ขอนแก่น', '3', 'N', '', '3', '4', 'ขอนแก่น', 'ขก', '', '12', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.ชุมแพ', 'ขอนแก่น', 'ขก', 'สขข. อ.ชุมแพ', 'KHONKAEN 2', '40502');
INSERT INTO `tabt_office_location` VALUES ('40503', 'สำนักงานขนส่งจังหวัดขอนแก่น สาขาอ.บ้านไผ่', 'KHONKAEN PROVINCIAL LAND TRANSPORT OFFICE BANPHAI BRANCH', '4050400', '405', 'ขอนแก่น', '3', 'N', '', '3', '4', 'ขอนแก่น', 'ขก', '', '12', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '03', '', 'N', 'อ.บ้านไผ่', 'ขอนแก่น', 'ขก', 'สขข. อ.บ้านไผ่', 'KHONKAEN 3', '40503');
INSERT INTO `tabt_office_location` VALUES ('40504', 'สำนักงานขนส่งจังหวัดขอนแก่น สาขาอ.น้ำพอง', 'KHONKAEN PROVINCIAL LAND TRANSPORT OFFICE NAMPONG BRANCH', '4051000', '405', 'ขอนแก่น', '3', 'N', '', '3', '4', 'ขอนแก่น', 'ขก', '', '12', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.น้ำพอง', 'ขอนแก่น', 'ขก', 'สขข. อ.น้ำพอง', 'KHONKAEN 4', '40504');
INSERT INTO `tabt_office_location` VALUES ('40600', 'สำนักงานขนส่งจังหวัดกาฬสินธุ์', 'KALASIN PROVINCIAL LAND TRANSPORT OFFICE', '4060000', '406', 'กาฬสินธุ์', '3', 'N', 'N', '3', '4', 'กาฬสินธุ์', 'กส', '', '12', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '46', 'Y', '', 'กาฬสินธุ์', 'กส', 'สขจ.กาฬสินธุ์', 'KALASIN', '40600');
INSERT INTO `tabt_office_location` VALUES ('40601', 'สำนักงานขนส่งจังหวัดกาฬสินธุ์ สาขาอ.กุฉินารายณ์', 'KALASIN PROVINCIAL LAND TRANSPORT OFFICE KUCHINARAI BRANCH', '4060800', '406', 'กาฬสินธุ์', '3', 'N', '', '3', '4', 'กาฬสินธุ์', 'กส', '', '12', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.กุฉินารายณ์', 'กาฬสินธุ์', 'กส', 'สขข. อ.กุฉินารายณ์', 'KALASIN 1', '40601');
INSERT INTO `tabt_office_location` VALUES ('40700', 'สำนักงานขนส่งจังหวัดมหาสารคาม', 'MAHASARAKHAMPROVINCIAL LAND TRANSPORT OFFICE', '4070000', '407', 'มหาสารคาม', '3', 'N', 'N', '3', '4', 'มหาสารคาม', 'มค', '', '12', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '44', 'Y', '', 'มหาสารคาม', 'มค', 'สขจ.มหาสารคาม', 'MAHASARAKHAM', '40700');
INSERT INTO `tabt_office_location` VALUES ('40701', 'สำนักงานขนส่งจังหวัดมหาสารคาม สาขาอ.พยัคฆภูมิพิสัย', 'MAHASARAKHAMPROVINCIAL LAND TRANSPORT OFFICE PAYAKAPUMPISAI', '4070800', '407', 'มหาสารคาม', '3', 'N', '', '3', '4', 'มหาสารคาม', 'มค', '', '12', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.พยัคฆภูมิพิสัย', 'มหาสารคาม', 'มค', 'สขข. อ.พยัคฆภูมิพิสัย', 'MAHASARAKHAM 1', '40701');
INSERT INTO `tabt_office_location` VALUES ('40800', 'สำนักงานขนส่งจังหวัดร้อยเอ็ด', 'ROI-ET PROVINCIAL LAND TRANSPORT OFFICE', '4080000', '408', 'ร้อยเอ็ด', '3', 'N', 'N', '3', '5', 'ร้อยเอ็ด', 'รอ', '', '12', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '45', 'Y', '', 'ร้อยเอ็ด', 'รอ', 'สขจ.ร้อยเอ็ด', 'ROI-ET', '40800');
INSERT INTO `tabt_office_location` VALUES ('40801', 'สำนักงานขนส่งจังหวัดร้อยเอ็ด สาขาอ.โพนทอง', 'ROI-ET PROVINCIAL LAND TRANSPORT OFFICE PONTHONG BRANCH', '4080800', '408', 'ร้อยเอ็ด', '3', 'N', '', '3', '5', 'ร้อยเอ็ด', 'รอ', '', '12', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.โพนทอง', 'ร้อยเอ็ด', 'รอ', 'สขข. อ.โพนทอง', 'ROI-ET 1', '40801');
INSERT INTO `tabt_office_location` VALUES ('40802', 'สำนักงานขนส่งจังหวัดร้อยเอ็ด สาขาอ.สุวรรณภูมิ', 'ROI-ET PROVINCIAL LAND TRANSPORT OFFICE SUVANAPUM BRANCH', '4081200', '408', 'ร้อยเอ็ด', '3', 'N', '', '3', '5', 'ร้อยเอ็ด', 'รอ', '', '12', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.สุวรรณภูมิ', 'ร้อยเอ็ด', 'รอ', 'สขข. อ.สุวรรณภูมิ', 'ROI-ET 2', '40802');
INSERT INTO `tabt_office_location` VALUES ('40900', 'สำนักงานขนส่งจังหวัดมุกดาหาร', 'MUKDAHAN PROVINCIAL LAND TRANSPORT OFFICE', '4090000', '409', 'มุกดาหาร', '3', 'Y', 'N', '3', '4', 'มุกดาหาร', 'มห', '', '11', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '49', 'Y', '', 'มุกดาหาร', 'มห', 'สขจ.มุกดาหาร', 'MUKDAHAN', '40900');
INSERT INTO `tabt_office_location` VALUES ('50000', 'สำนักงานขนส่งจังหวัดเชียงราย', 'CHIANGRAI PROVINCIAL LAND TRANSPORT OFFICE', '5000000', '500', 'เชียงราย', '4', 'Y', 'Y', '4', '1', 'เชียงราย', 'ชร', '', '16', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '57', 'Y', '', 'เชียงราย', 'ชร', 'สขจ.เชียงราย', 'CHIANGRAI', '50000');
INSERT INTO `tabt_office_location` VALUES ('50001', 'สำนักงานขนส่งจังหวัดเชียงราย สาขาอ.เทิง', 'CHIANGRAI PROVINCIAL LAND TRANSPORT OFFICE THOENG BRANCH', '5001000', '500', 'เชียงราย', '4', 'Y', '', '4', '1', 'เชียงราย', 'ชร', '', '16', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เทิง', 'เชียงราย', 'ชร', 'สขข. อ.เทิง', 'CHIANGRAI 1', '50001');
INSERT INTO `tabt_office_location` VALUES ('50002', 'สำนักงานขนส่งจังหวัดเชียงราย สาขาอ.เวียงป่าเป้า', 'CHIANGRAI PROVINCIAL LAND TRANSPORT OFFICE VIANGPAPAO BRANCH', '5001100', '500', 'เชียงราย', '4', 'Y', '', '4', '1', 'เชียงราย', 'ชร', '', '16', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เวียงป่าเป้า', 'เชียงราย', 'ชร', 'สขข. อ.เวียงป่าเป้า', 'CHIANGRAI 2', '50002');
INSERT INTO `tabt_office_location` VALUES ('50003', 'สำนักงานขนส่งจังหวัดเชียงราย สาขาอ.พาน', 'CHIANGRAI PROVINCIAL LAND TRANSPORT OFFICE PAN BRANCH', '5000900', '500', 'เชียงราย', '4', 'Y', '', '4', '1', 'เชียงราย', 'ชร', '', '16', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.พาน', 'เชียงราย', 'ชร', 'สขข. อ.พาน', 'CHIANGRAI 3', '50003');
INSERT INTO `tabt_office_location` VALUES ('50100', 'สำนักงานขนส่งจังหวัดแม่ฮ่องสอน', 'MAEHONGSON PROVINCIAL LAND TRANSPORT OFFICE', '5010000', '501', 'แม่ฮ่องสอน', '4', 'Y', 'N', '4', '1', 'แม่ฮ่องสอน', 'มส', '', '15', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '03', '58', 'Y', '', 'แม่ฮ่องสอน', 'มส', 'สขจ.แม่ฮ่องสอน', 'MAEHONGSON', '50100');
INSERT INTO `tabt_office_location` VALUES ('50101', 'สำนักงานขนส่งจังหวัดแม่ฮ่องสอน สาขาอ.แม่สะเรียง', 'MAEHONGSON PROVINCIAL LAND TRANSPORT OFFICE MAESARIANGBRANCH', '5010400', '501', 'แม่ฮ่องสอน', '4', 'Y', '', '4', '1', 'แม่ฮ่องสอน', 'มส', '', '15', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.แม่สะเรียง', 'แม่ฮ่องสอน', 'มส', 'สขข. อ.แม่สะเรียง', 'MAEHONGSON 1', '50101');
INSERT INTO `tabt_office_location` VALUES ('50102', 'สำนักงานขนส่งจังหวัดแม่ฮ่องสอน สาขาอ.ปาย', 'MAEHONGSON PROVINCIAL LAND TRANSPORT OFFICE PAI BRANCH', '5010500', '501', 'แม่ฮ่องสอน', '4', 'Y', '', '4', '1', 'แม่ฮ่องสอน', 'มส', '', '15', '1', 'C', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.ปาย', 'แม่ฮ่องสอน', 'มส', 'สขข. อ.ปาย', 'MAEHONGSON 2', '50102');
INSERT INTO `tabt_office_location` VALUES ('50200', 'สำนักงานขนส่งจังหวัดเชียงใหม่', 'CHIANGMAI PROVINCIAL LAND TRANSPORT OFFICE', '5020000', '502', 'เชียงใหม่', '4', 'Y', 'Y', '4', '1', 'เชียงใหม่', 'ชม', '', '15', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '50', 'Y', '', 'เชียงใหม่', 'ชม', 'สขจ.เชียงใหม่', 'CHIANGMAI', '50200');
INSERT INTO `tabt_office_location` VALUES ('50201', 'สำนักงานขนส่งจังหวัดเชียงใหม่ สาขาอ.ฝาง', 'CHIANGMAI PROVINCIAL LAND TRANSPORT OFFICE FANG BRANCH', '5020500', '502', 'เชียงใหม่', '4', 'Y', '', '4', '1', 'เชียงใหม่', 'ชม', '', '15', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ฝาง', 'เชียงใหม่', 'ชม', 'สขข. อ.ฝาง', 'CHIANGMAI 1', '50201');
INSERT INTO `tabt_office_location` VALUES ('50202', 'สำนักงานขนส่งจังหวัดเชียงใหม่ สาขาอ.จอมทอง', 'CHIANGMAI PROVINCIAL LAND TRANSPORT OFFICE JOMTHONG BRANCH', '5020300', '502', 'เชียงใหม่', '4', 'Y', '', '4', '1', 'เชียงใหม่', 'ชม', '', '15', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.จอมทอง', 'เชียงใหม่', 'ชม', 'สขข. อ.จอมทอง', 'CHIANGMAI 2', '50202');
INSERT INTO `tabt_office_location` VALUES ('50203', 'สำนักงานขนส่งจังหวัดเชียงใหม่ สาขาอ.แม่แตง', 'CHIANGMAI PROVINCIAL LAND TRANSPORT OFFICE MAETAENG BRANCH', '5021200', '502', 'เชียงใหม่', '4', 'Y', '', '4', '1', 'เชียงใหม่', 'ชม', '', '15', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.แม่แตง', 'เชียงใหม่', 'ชม', 'สขข. อ.แม่แตง', 'CHIANGMAI 3', '50203');
INSERT INTO `tabt_office_location` VALUES ('50300', 'สำนักงานขนส่งจังหวัดพะเยา', 'PHAYAO PROVINCIAL LAND TRANSPORT OFFICE', '5030000', '503', 'พะเยา', '4', '', '', '4', '', 'พะเยา', 'พย', '', '16', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '3200500022987', '01', '56', 'Y', '', 'พะเยา', 'พย', 'สขจ.พะเยา', 'PHAYAO', '50300');
INSERT INTO `tabt_office_location` VALUES ('50301', 'สำนักงานขนส่งจังหวัดพะเยา สาขาอ.ภูซาง', 'PHAYAO PROVINCIAL LAND TRANSPORT OFFICE PHUSANG BRANCH', '5030900', '503', 'พะเยา', '4', '', '', '4', '', 'พะเยา', 'พย', '', '16', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '3200500022987', '01', '', 'N', 'อ.ภูซาง', 'พะเยา', 'พย', 'สขข. อ.ภูซาง', 'PHAYAO 1', '50301');
INSERT INTO `tabt_office_location` VALUES ('50302', 'สำนักงานขนส่งจังหวัดพะเยา สาขาอ.ปง', 'PHAYAO PROVINCIAL LAND TRANSPORT OFFICE PONG BRANCH', '5030700', '503', 'พะเยา', '4', '', '', '4', '', 'พะเยา', 'พย', '', '16', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '3200500022987', '01', '', 'N', 'อ.ปง', 'พะเยา', 'พย', 'สขข. อ.ปง', 'PHAYAO 2', '50302');
INSERT INTO `tabt_office_location` VALUES ('50400', 'สำนักงานขนส่งจังหวัดน่าน', 'NAN PROVINCIAL LAND TRANSPORT OFFICE', '5040000', '504', 'น่าน', '4', 'Y', 'N', '4', '2', 'น่าน', 'นน', '', '16', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '55', 'Y', '', 'น่าน', 'นน', 'สขจ.น่าน', 'NAN', '50400');
INSERT INTO `tabt_office_location` VALUES ('50401', 'สำนักงานขนส่งจังหวัดน่าน สาขาอ.ปัว', 'NAN PROVINCIAL LAND TRANSPORT OFFICE PUA BRANCH', '5040700', '504', 'น่าน', '4', 'Y', '', '4', '2', 'น่าน', 'นน', '', '16', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.ปัว', 'น่าน', 'นน', 'สขข. อ.ปัว', 'NAN 1', '50401');
INSERT INTO `tabt_office_location` VALUES ('50402', 'สำนักงานขนส่งจังหวัดน่าน สาขาอ.เวียงสา', 'NAN PROVINCIAL LAND TRANSPORT OFFICE VIANGSA BRANCH', '5040800', '504', 'น่าน', '4', 'Y', '', '4', '2', 'น่าน', 'นน', '', '16', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เวียงสา', 'น่าน', 'นน', 'สขข. อ.เวียงสา', 'NAN 2', '50402');
INSERT INTO `tabt_office_location` VALUES ('50500', 'สำนักงานขนส่งจังหวัดลำพูน', '', '5050000', '505', 'ลำพูน', '4', 'N', 'N', '4', '1', 'ลำพูน', 'ลพ', '', '15', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '51', 'Y', '', 'ลำพูน', 'ลพ', 'สขจ.ลำพูน', 'LAMPHUN', '50500');
INSERT INTO `tabt_office_location` VALUES ('50501', 'สำนักงานขนส่งจังหวัดลำพูน สาขาอ.บ้านโฮ่ง', '', '5050200', '505', 'ลำพูน', '4', 'N', '', '4', '1', 'ลำพูน', 'ลพ', '', '15', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บ้านโฮ่ง', 'ลำพูน', 'ลพ', 'สขข. อ.บ้านโฮ่ง', 'LAMPHUN1', '50501');
INSERT INTO `tabt_office_location` VALUES ('50502', 'สำนักงานขนส่งจังหวัดลำพูน สาขาอ.ลี้', '', '5050300', '505', 'ลำพูน', '4', 'N', '', '4', '1', 'ลำพูน', 'ลพ', '', '15', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.ลี้', 'ลำพูน', 'ลพ', 'สขข. อ.ลี้', 'LAMPHUN 2', '50502');
INSERT INTO `tabt_office_location` VALUES ('50600', 'สำนักงานขนส่งจังหวัดลำปาง', 'LAMPANG PROVINCIAL LAND TRANSPORT OFFICE', '5060000', '506', 'ลำปาง', '4', 'N', 'N', '4', '1', 'ลำปาง', 'ลป', '', '15', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '52', 'Y', '', 'ลำปาง', 'ลป', 'สขจ.ลำปาง', 'LAMPANG', '50600');
INSERT INTO `tabt_office_location` VALUES ('50601', 'สำนักงานขนส่งจังหวัดลำปาง สาขาอ.เถิน', 'LAMPANG PROVINCIAL LAND TRANSPORT OFFICE THOEN BRANCH', '5061100', '506', 'ลำปาง', '4', 'N', '', '4', '1', 'ลำปาง', 'ลป', '', '15', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เถิน', 'ลำปาง', 'ลป', 'สขข. อ.เถิน', 'LAMPANG 1', '50601');
INSERT INTO `tabt_office_location` VALUES ('50602', 'สำนักงานขนส่งจังหวัดลำปาง สาขาอ.แจ้ห่ม', 'LAMPANG PROVINCIAL LAND TRANSPORT OFFICE CHAEHOM BRANCH', '5060300', '506', 'ลำปาง', '4', 'N', '', '4', '1', 'ลำปาง', 'ลป', '', '15', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.แจ้ห่ม', 'ลำปาง', 'ลป', 'สขข. อ.แจ้ห่ม', 'LAMPANG 2', '50602');
INSERT INTO `tabt_office_location` VALUES ('50603', 'สำนักงานขนส่งจังหวัดลำปาง สาขาอ.งาว', 'LAMPANG PROVINCIAL LAND TRANSPORT OFFICE NGAO BRANCH', '5060800', '506', 'ลำปาง', '4', 'N', '', '4', '1', 'ลำปาง', 'ลป', '', '15', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.งาว', 'ลำปาง', 'ลป', 'สขข. อ.งาว', 'LAMPANG 3', '50603');
INSERT INTO `tabt_office_location` VALUES ('50700', 'สำนักงานขนส่งจังหวัดแพร่', 'PHRAE PROVINCIAL LAND TRANSPORT OFFICE', '5070000', '507', 'แพร่', '4', 'N', 'N', '4', '2', 'แพร่', 'พร', '', '16', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '54', 'Y', '', 'แพร่', 'พร', 'สขจ.แพร่', 'PHRAE', '50700');
INSERT INTO `tabt_office_location` VALUES ('50701', 'สำนักงานขนส่งจังหวัดแพร่ สาขาอ.ร้องกวาง', 'PHRAE PROVINCIAL LAND TRANSPORT OFFICE RONGKWANG BRANCH', '5070400', '507', 'แพร่', '4', 'N', '', '4', '2', 'แพร่', 'พร', '', '16', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ร้องกวาง', 'แพร่', 'พร', 'สขข. อ.ร้องกวาง', 'PHRAE 1', '50701');
INSERT INTO `tabt_office_location` VALUES ('50702', 'สำนักงานขนส่งจังหวัดแพร่ สาขาอ.เด่นชัย', 'PHRAE PROVINCIAL LAND TRANSPORT OFFICE DENCHAI BRANCH', '5070200', '507', 'แพร่', '4', 'N', '', '4', '2', 'แพร่', 'พร', '', '16', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เด่นชัย', 'แพร่', 'พร', 'สขข. อ.เด่นชัย', 'PHRAE 2', '50702');
INSERT INTO `tabt_office_location` VALUES ('50703', 'สำนักงานขนส่งจังหวัดแพร่ สาขาอ.ลอง', 'PHRAE PROVINCIAL LAND TRANSPORT OFFICE LONG BRANCH', '5070300', '507', 'แพร่', '4', 'N', '', '4', '2', 'แพร่', 'พร', '', '16', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ลอง', 'แพร่', 'พร', 'สขข. อ.ลอง', 'PHRAE 3', '50703');
INSERT INTO `tabt_office_location` VALUES ('60000', 'สำนักงานขนส่งจังหวัดอุตรดิตถ์', 'UTTARADIT PROVINCIAL LAND TRANSPORT OFFICE', '6000000', '600', 'อุตรดิตถ์', '4', '', '', '4', '', 'อุตรดิตถ์', 'อต', '', '17', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '3200500022987', '01', '53', 'Y', '', 'อุตรดิตถ์', 'อต', 'สขจ.อุตรดิตถ์', 'UTTARADIT', '60000');
INSERT INTO `tabt_office_location` VALUES ('60001', 'สำนักงานขนส่งจังหวัดอุตรดิตถ์ สาขาอ.น้ำปาด', '', '6000500', '600', 'อุตรดิตถ์', '4', 'Y', '', '4', '2', 'อุตรดิตถ์', 'อต', '', '17', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.น้ำปาด', 'อุตรดิตถ์', 'อต', 'สขข. อ.น้ำปาด', 'UTTARADIT 1', '60001');
INSERT INTO `tabt_office_location` VALUES ('60002', 'สำนักงานขนส่งจังหวัดอุตรดิตถ์ สาขาอ.ตรอน', '', '6000800', '600', 'อุตรดิตถ์', '4', 'Y', '', '4', '2', 'อุตรดิตถ์', 'อต', '', '17', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ตรอน', 'อุตรดิตถ์', 'อต', 'สขข. อ.ตรอน', 'UTTARADIT 2', '60002');
INSERT INTO `tabt_office_location` VALUES ('60100', 'สำนักงานขนส่งจังหวัดสุโขทัย', 'SUKOTHAI PROVINCIAL LAND TRANSPORT OFFICE', '6010000', '601', 'สุโขทัย', '4', 'N', 'N', '4', '2', 'สุโขทัย', 'สท', '', '17', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '64', 'Y', '', 'สุโขทัย', 'สท', 'สขจ.สุโขทัย', 'SUKOTHAI', '60100');
INSERT INTO `tabt_office_location` VALUES ('60101', 'สำนักงานขนส่งจังหวัดสุโขทัย สาขาอ.สวรรคโลก', 'SUKOTHAI PROVINCIAL LAND TRANSPORT OFFICE SAWANKALOK BRANCH', '6010500', '601', 'สุโขทัย', '4', 'N', '', '4', '2', 'สุโขทัย', 'สท', '', '17', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.สวรรคโลก', 'สุโขทัย', 'สท', 'สขข. อ.สวรรคโลก', 'SUKOTHAI 1', '60101');
INSERT INTO `tabt_office_location` VALUES ('60200', 'สำนักงานขนส่งจังหวัดตาก', 'TAK PROVINCIAL LAND TRANSPORT OFFICE', '6020000', '602', 'ตาก', '4', 'Y', 'N', '4', '3', 'ตาก', 'ตก', '', '17', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '63', 'Y', '', 'ตาก', 'ตก', 'สขจ.ตาก', 'TAK', '60200');
INSERT INTO `tabt_office_location` VALUES ('60201', 'สำนักงานขนส่งจังหวัดตาก สาขาอ.แม่สอด', 'TAK PROVINCIAL LAND TRANSPORT OFFICE MAESOT BRANCH', '6020400', '602', 'ตาก', '4', 'Y', '', '4', '3', 'ตาก', 'ตก', '', '17', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.แม่สอด', 'ตาก', 'ตก', 'สขข. อ.แม่สอด', 'TAK 1', '60201');
INSERT INTO `tabt_office_location` VALUES ('60300', 'สำนักงานขนส่งจังหวัดพิษณุโลก', 'PHITSANULOK PROVINCIAL LAND TRANSPORT OFFICE', '6030000', '603', 'พิษณุโลก', '4', 'Y', 'Y', '4', '2', 'พิษณุโลก', 'พล', '', '17', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '65', 'Y', '', 'พิษณุโลก', 'พล', 'สขจ.พิษณุโลก', 'PHITSANULOK', '60300');
INSERT INTO `tabt_office_location` VALUES ('60301', 'สำนักงานขนส่งจังหวัดพิษณุโลก สาขาอ.นครไทย', 'PHITSANULOK PROVINCIAL LAND TRANSPORT OFFICE NAKORNTHAI BR', '6030500', '603', 'พิษณุโลก', '4', 'Y', '', '4', '2', 'พิษณุโลก', 'พล', '', '17', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.นครไทย', 'พิษณุโลก', 'พล', 'สขข. อ.นครไทย', 'PHITSANULOK 1', '60301');
INSERT INTO `tabt_office_location` VALUES ('60302', 'สำนักงานขนส่งจังหวัดพิษณุโลก สาขาอ.พรหมพิราม', 'PHITSANULOK PROVINCIAL LAND TRANSPORT OFFICE PHOMPIRAM BR', '6030600', '603', 'พิษณุโลก', '4', 'Y', '', '4', '2', 'พิษณุโลก', 'พล', '', '17', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.พรหมพิราม', 'พิษณุโลก', 'พล', 'สขข. อ.พรหมพิราม', 'PHITSANULOK 2', '60302');
INSERT INTO `tabt_office_location` VALUES ('60400', 'สำนักงานขนส่งจังหวัดกำแพงเพชร', '', '6040000', '604', 'กำแพงเพชร', '4', 'N', 'N', '4', '2', 'กำแพงเพชร', 'กพ', '', '18', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '62', 'Y', '', 'กำแพงเพชร', 'กพ', 'สขจ.กำแพงเพชร', 'KAMPHAENGPHET', '60400');
INSERT INTO `tabt_office_location` VALUES ('60401', 'สำนักงานขนส่งจังหวัดกำแพงเพชร สาขาอ.ขาณุวรลักษบุรี', '', '6040400', '604', 'กำแพงเพชร', '4', 'N', '', '4', '2', 'กำแพงเพชร', 'กพ', '', '18', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.ขาณุวรลักษบุรี', 'กำแพงเพชร', 'กพ', 'สขข. อ.ขาณุวรลักษบุรี', 'KAMPHAENGPHET 1', '60401');
INSERT INTO `tabt_office_location` VALUES ('60500', 'สำนักงานขนส่งจังหวัดพิจิตร', 'PHICHIT PROVINCIAL LAND TRANSPORT OFFICE', '6050000', '605', 'พิจิตร', '4', 'N', 'N', '4', '3', 'พิจิตร', 'พจ', '', '18', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '66', 'Y', '', 'พิจิตร', 'พจ', 'สขจ.พิจิตร', 'PHICHIT', '60500');
INSERT INTO `tabt_office_location` VALUES ('60501', 'สำนักงานขนส่งจังหวัดพิจิตร สาขาอ.โพทะเล', 'PHICHIT PROVINCIAL LAND TRANSPORT OFFICE PHOTHALE BRANCH', '6050500', '605', 'พิจิตร', '4', 'N', '', '4', '3', 'พิจิตร', 'พจ', '', '18', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.โพทะเล', 'พิจิตร', 'พจ', 'สขข. อ.โพทะเล', 'PHICHIT 1', '60501');
INSERT INTO `tabt_office_location` VALUES ('60600', 'สำนักงานขนส่งจังหวัดเพชรบูรณ์', '', '6060000', '606', 'เพชรบูรณ์', '4', 'N', 'N', '4', '2', 'เพชรบูรณ์', 'พช', '', '17', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '67', 'Y', '', 'เพชรบูรณ์', 'พช', 'สขจ.เพชรบูรณ์', 'PHETCHABUN', '60600');
INSERT INTO `tabt_office_location` VALUES ('60601', 'สำนักงานขนส่งจังหวัดเพชรบูรณ์ สาขาอ.บึงสามพัน', '', '6060700', '606', 'เพชรบูรณ์', '4', 'N', '', '4', '2', 'เพชรบูรณ์', 'พช', '', '17', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บึงสามพัน', 'เพชรบูรณ์', 'พช', 'สขข. อ.บึงสามพัน', 'PHETCHABUN 1 ', '60601');
INSERT INTO `tabt_office_location` VALUES ('60602', 'สำนักงานขนส่งจังหวัดเพชรบูรณ์ สาขาอ.ชนแดน', '', '6060200', '606', 'เพชรบูรณ์', '4', 'N', '', '4', '2', 'เพชรบูรณ์', 'พช', '', '17', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ชนแดน', 'เพชรบูรณ์', 'พช', 'สขข. อ.ชนแดน', 'PHETCHABUN 2', '60602');
INSERT INTO `tabt_office_location` VALUES ('60603', 'สำนักงานขนส่งจังหวัดเพชรบูรณ์ สาขาอ.หล่มสัก', '', '6060500', '606', 'เพชรบูรณ์', '4', 'N', '', '4', '2', 'เพชรบูรณ์', 'พช', '', '17', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.หล่มสัก', 'เพชรบูรณ์', 'พช', 'สขข. อ.หล่มสัก', 'PHETCHABUN 3', '60603');
INSERT INTO `tabt_office_location` VALUES ('60700', 'สำนักงานขนส่งจังหวัดนครสวรรค์', 'NAKORNSAWAN PROVINCIAL LAND TRANSPORT OFFICE', '6070000', '607', 'นครสวรรค์', '4', 'N', 'Y', '4', '3', 'นครสวรรค์', 'นว', '', '18', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '60', 'Y', '', 'นครสวรรค์', 'นว', 'สขจ.นครสวรรค์', 'NAKORNSAWAN', '60700');
INSERT INTO `tabt_office_location` VALUES ('60701', 'สำนักงานขนส่งจังหวัดนครสวรรค์ สาขาอ.ตาคลี', 'NAKORNSAWAN PROVINCIAL LAND TRANSPORT OFFICE TAKLEE BRANCH', '6071100', '607', 'นครสวรรค์', '4', 'N', '', '4', '3', 'นครสวรรค์', 'นว', '', '18', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.ตาคลี', 'นครสวรรค์', 'นว', 'สขข. อ.ตาคลี', 'NAKORNSAWAN 1', '60701');
INSERT INTO `tabt_office_location` VALUES ('60702', 'สำนักงานขนส่งจังหวัดนครสวรรค์ สาขาอ.หนองบัว', 'NAKORNSAWAN PROVINCIAL LAND TRANSPORT OFFICE NONGBUA BRANCH', '6070700', '607', 'นครสวรรค์', '4', 'N', '', '4', '3', 'นครสวรรค์', 'นว', '', '18', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.หนองบัว', 'นครสวรรค์', 'นว', 'สขข. อ.หนองบัว', 'NAKORNSAWAN 2', '60702');
INSERT INTO `tabt_office_location` VALUES ('60703', 'สำนักงานขนส่งจังหวัดนครสวรรค์ สาขาอ.ลาดยาว', 'NAKORNSAWAN PROVINCIAL LAND TRANSPORT OFFICE LADYAO BRANCH', '6070600', '607', 'นครสวรรค์', '4', 'N', '', '4', '3', 'นครสวรรค์', 'นว', '', '18', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.ลาดยาว', 'นครสวรรค์', 'นว', 'สขข. อ.ลาดยาว', 'NAKORNSAWAN 3', '60703');
INSERT INTO `tabt_office_location` VALUES ('60800', 'สำนักงานขนส่งจังหวัดอุทัยธานี', 'UTHAITANEE PROVINCIAL LAND TRANSPORT OFFICE', '6080000', '608', 'อุทัยธานี', '4', 'N', 'N', '4', '3', 'อุทัยธานี', 'อน', '', '18', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '61', 'Y', '', 'อุทัยธานี', 'อน', 'สขจ.อุทัยธานี', 'UTHAITANEE', '60800');
INSERT INTO `tabt_office_location` VALUES ('60801', 'สำนักงานขนส่งจังหวัดอุทัยธานี สาขาอ.บ้านไร่', 'UTHAITANEE PROVINCIAL LAND TRANSPORT OFFICE BANRAI BRANCH', '6080200', '608', 'อุทัยธานี', '4', 'N', '', '4', '3', 'อุทัยธานี', 'อน', '', '18', '3', 'U', '2', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.บ้านไร่', 'อุทัยธานี', 'อน', 'สขข. อ.บ้านไร่', 'UTHAITANEE 1', '60801');
INSERT INTO `tabt_office_location` VALUES ('70000', 'สำนักงานขนส่งจังหวัดสุพรรณบุรี', 'SUPHANBURI PROVINCIAL LAND TRANSPORT OFFICE', '7000000', '700', 'สุพรรณบุรี', '5', 'N', 'Y', '5', '6', 'สุพรรณบุรี', 'สพ', '', '04', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '72', 'Y', '', 'สุพรรณบุรี', 'สพ', 'สขจ.สุพรรณบุรี', 'SUPHANBURI', '70000');
INSERT INTO `tabt_office_location` VALUES ('70001', 'สำนักงานขนส่งจังหวัดสุพรรณบุรี สาขาอ.เดิมบางนางบวช', 'SUPHANBURI PROVINCIAL LAND TRANSPORT OFFICE DOEMBANG BR', '7000300', '700', 'สุพรรณบุรี', '5', 'N', '', '5', '6', 'สุพรรณบุรี', 'สพ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.เดิมบางนางบวช', 'สุพรรณบุรี', 'สพ', 'สขข. อ.เดิมบางนางบวช', 'SUPHANBURI 1', '70001');
INSERT INTO `tabt_office_location` VALUES ('70002', 'สำนักงานขนส่งจังหวัดสุพรรณบุรี สาขาอ.สองพี่น้อง', 'SUPHANBURI PROVINCIAL LAND TRANSPORT OFFICE SONGPEENONG BR', '7000800', '700', 'สุพรรณบุรี', '5', 'N', '', '5', '6', 'สุพรรณบุรี', 'สพ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.สองพี่น้อง', 'สุพรรณบุรี', 'สพ', 'สขข. อ.สองพี่น้อง', 'SUPHANBURI 2', '70002');
INSERT INTO `tabt_office_location` VALUES ('70100', 'สำนักงานขนส่งจังหวัดกาญจนบุรี', '', '7010000', '701', 'กาญจนบุรี', '5', '', '', '5', '', 'กาญจนบุรี', 'กจ', '', '04', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '3200500022987', '01', '71', 'Y', '', 'กาญจนบุรี', 'กจ', 'สขจ.กาญจนบุรี', 'KANCHANABURI', '70100');
INSERT INTO `tabt_office_location` VALUES ('70101', 'สำนักงานขนส่งจังหวัดกาญจนบุรี สาขาอ.ท่ามะกา', '', '7010800', '701', 'กาญจนบุรี', '5', 'Y', '', '5', '6', 'กาญจนบุรี', 'กจ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ท่ามะกา', 'กาญจนบุรี', 'กจ', 'สขข. อ.ท่ามะกา', 'KANCHANABURI 1', '70101');
INSERT INTO `tabt_office_location` VALUES ('70102', 'สำนักงานขนส่งจังหวัดกาญจนบุรี สาขาอ.พนมทวน', '', '7010400', '701', 'กาญจนบุรี', '5', 'Y', '', '5', '6', 'กาญจนบุรี', 'กจ', '', '06', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', 'DLT', '01', '', 'N', 'อ.พนมทวน', 'กาญจนบุรี', 'กจ', 'สขข. อ.พนมทวน', 'KANCHANABURI 2', '70102');
INSERT INTO `tabt_office_location` VALUES ('70103', 'สำนักงานขนส่งจังหวัดกาญจนบุรี สาขาอ.ทองผาภูมิ', '', '7011000', '701', 'กาญจนบุรี', '5', 'Y', '', '5', '6', 'กาญจนบุรี', 'กจ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ทองผาภูมิ', 'กาญจนบุรี', 'กจ', 'สขข. อ.ทองผาภูมิ', 'KANCHANABURI 3', '70103');
INSERT INTO `tabt_office_location` VALUES ('70200', 'สำนักงานขนส่งจังหวัดนครปฐม', '', '7020000', '702', 'นครปฐม', '5', 'N', 'Y', '5', '6', 'นครปฐม', 'นฐ', '', '04', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '04', '73', 'Y', '', 'นครปฐม', 'นฐ', 'สขจ.นครปฐม', 'NAKHONPATHOM', '70200');
INSERT INTO `tabt_office_location` VALUES ('70201', 'สำนักงานขนส่งจังหวัดนครปฐม สาขาอ.กำแพงแสน', '', '7020400', '702', 'นครปฐม', '5', 'N', '', '5', '6', 'นครปฐม', 'นฐ', '', '04', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.กำแพงแสน', 'นครปฐม', 'นฐ', 'สขข. อ.กำแพงแสน', 'NAKHONPATHOM 1', '70201');
INSERT INTO `tabt_office_location` VALUES ('70202', 'สำนักงานขนส่งจังหวัดนครปฐม สาขาอ.สามพราน', '', '7020600', '702', 'นครปฐม', '5', 'N', '', '5', '6', 'นครปฐม', 'นฐ', '', '04', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.สามพราน', 'นครปฐม', 'นฐ', 'สขข. อ.สามพราน', 'NAKHONPATHOM 2', '70202');
INSERT INTO `tabt_office_location` VALUES ('70300', 'สำนักงานขนส่งจังหวัดราชบุรี', 'RATCHABURI PROVINCIAL LAND TRANSPORT OFFICE', '7030000', '703', 'ราชบุรี', '5', 'Y', 'Y', '5', '6', 'ราชบุรี', 'รบ', '', '04', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '70', 'Y', '', 'ราชบุรี', 'รบ', 'สขจ.ราชบุรี', 'RATCHABURI', '70300');
INSERT INTO `tabt_office_location` VALUES ('70301', 'สำนักงานขนส่งจังหวัดราชบุรี สาขาอ.บ้านโป่ง', 'RATCHABURI PROVINCIAL LAND TRANSPORT OFFICE BANPONG BRANCH', '7030200', '703', 'ราชบุรี', '5', 'Y', '', '5', '6', 'ราชบุรี', 'รบ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บ้านโป่ง', 'ราชบุรี', 'รบ', 'สขข. อ.บ้านโป่ง', 'RATCHABURI 1', '70301');
INSERT INTO `tabt_office_location` VALUES ('70302', 'สำนักงานขนส่งจังหวัดราชบุรี สาขาอ.จอมบึง', 'RATCHABURI PROVINCIAL LAND TRANSPORT OFFICE CHOMBUNG BRANCH', '7030400', '703', 'ราชบุรี', '5', 'Y', '', '5', '6', 'ราชบุรี', 'รบ', '', '04', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.จอมบึง', 'ราชบุรี', 'รบ', 'สขข. อ.จอมบึง', 'RATCHABURI 2', '70302');
INSERT INTO `tabt_office_location` VALUES ('70400', 'สำนักงานขนส่งจังหวัดสมุทรสาคร', 'SAMUTSAKHON PROVINCIAL LAND TRANSPORT OFFICE', '7040000', '704', 'สมุทรสาคร', '5', 'N', 'N', '5', '6', 'สมุทรสาคร', 'สค', '', '05', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '74', 'Y', '', 'สมุทรสาคร', 'สค', 'สขจ.สมุทรสาคร', 'SAMUTSAKHON', '70400');
INSERT INTO `tabt_office_location` VALUES ('70500', 'สำนักงานขนส่งจังหวัดสมุทรสงคราม', 'SAMUTSONGKHRAM PROVINCIAL LAND TRANSPORT OFFICE', '7050000', '705', 'สมุทรสงคราม', '5', 'N', 'N', '5', '6', 'สมุทรสงคราม', 'สส', '', '05', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '75', 'Y', '', 'สมุทรสงคราม', 'สส', 'สขจ.สมุทรสงคราม', 'SAMUTSONGKHRAM', '70500');
INSERT INTO `tabt_office_location` VALUES ('70600', 'สำนักงานขนส่งจังหวัดเพชรบุรี', 'PETCHABURI PROVINCIAL LAND TRANSPORT OFFICE', '7060000', '706', 'เพชรบุรี', '5', 'Y', 'N', '5', '6', 'เพชรบุรี', 'พบ', '', '05', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '76', 'Y', '', 'เพชรบุรี', 'พบ', 'สขจ.เพชรบุรี', 'PETCHABURI', '70600');
INSERT INTO `tabt_office_location` VALUES ('70601', 'สำนักงานขนส่งจังหวัดเพชรบุรี สาขาอ.ชะอำ', 'PETCHABURI PROVINCIAL LAND TRANSPORT OFFICE CHA-AM BRANCH', '7060400', '706', 'เพชรบุรี', '5', 'Y', '', '5', '6', 'เพชรบุรี', 'พบ', '', '05', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ชะอำ', 'เพชรบุรี', 'พบ', 'สขข. อ.ชะอำ', 'PETCHABURI 1', '70601');
INSERT INTO `tabt_office_location` VALUES ('70700', 'สำนักงานขนส่งจังหวัดประจวบคีรีขันธ์', 'PRACHUAPKIRIKHAN PROVINCIAL LAND TRANSPORT OFFICE', '7070000', '707', 'ประจวบคีรีขันธ์', '5', 'Y', 'N', '5', '6', 'ประจวบคีรีขันธ์', 'ปข', '', '05', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '77', 'Y', '', 'ประจวบคีรีขันธ์', 'ปข', 'สขจ.ประจวบคีรีขันธ์', 'PRACHUAPKIRIKHAN', '70700');
INSERT INTO `tabt_office_location` VALUES ('70701', 'สำนักงานขนส่งจังหวัดประจวบคีรีขันธ์ สาขาอ.ปราณบุรี', 'PRACHUAPKIRIKHAN PROVINCIAL LAND TRANSPORT OFFICE PRANBURI', '7070600', '707', 'ประจวบคีรีขันธ์', '5', 'Y', '', '5', '6', 'ประจวบคีรีขันธ์', 'ปข', '', '05', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '03', '', 'N', 'อ.ปราณบุรี', 'ประจวบคีรีขันธ์', 'ปข', 'สขข. อ.ปราณบุรี', 'PRACHUAPKIRIKHAN 1', '70701');
INSERT INTO `tabt_office_location` VALUES ('70702', 'สำนักงานขนส่งจังหวัดประจวบคีรีขันธ์ สาขาอ.บางสะพาน', 'PRACHUAPKIRIKHAN PROVINCIAL LAND TRANSPORT OFFICE BANGSAPHAN', '7070200', '707', 'ประจวบคีรีขันธ์', '5', 'Y', '', '5', '6', 'ประจวบคีรีขันธ์', 'ปข', '', '05', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บางสะพาน', 'ประจวบคีรีขันธ์', 'ปข', 'สขข. อ.บางสะพาน', 'PRACHUAPKIRIKHAN 2', '70702');
INSERT INTO `tabt_office_location` VALUES ('80000', 'สำนักงานขนส่งจังหวัดชุมพร', 'CHUMPON PROVINCIAL LAND TRANSPORT OFFICE', '8000000', '800', 'ชุมพร', '6', 'Y', 'N', '6', '8', 'ชุมพร', 'ชพ', '', '06', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '86', 'Y', '', 'ชุมพร', 'ชพ', 'สขจ.ชุมพร', 'CHUMPON', '80000');
INSERT INTO `tabt_office_location` VALUES ('80001', 'สำนักงานขนส่งจังหวัดชุมพร สาขาอ.หลังสวน', 'CHUMPON PROVINCIAL LAND TRANSPORT OFFICE LANGSUAN BRANCH', '8000300', '800', 'ชุมพร', '6', 'Y', '', '6', '8', 'ชุมพร', 'ชพ', '', '06', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.หลังสวน', 'ชุมพร', 'ชพ', 'สขข. อ.หลังสวน', 'CHUMPON 1', '80001');
INSERT INTO `tabt_office_location` VALUES ('80100', 'สำนักงานขนส่งจังหวัดระนอง', 'RANONG PROVINCIAL LAND TRANSPORT OFFICE', '8010000', '801', 'ระนอง', '6', 'Y', 'N', '6', '8', 'ระนอง', 'รน', '', '07', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '85', 'Y', '', 'ระนอง', 'รน', 'สขจ.ระนอง', 'RANONG', '80100');
INSERT INTO `tabt_office_location` VALUES ('80200', 'สำนักงานขนส่งจังหวัดสุราษฎร์ธานี', 'SURATTHANI PROVINCIAL LAND TRANSPORT OFFICE BRANCH', '8020000', '802', 'สุราษฎร์ธานี', '6', 'N', 'Y', '6', '8', 'สุราษฎร์ธานี', 'สฎ', '', '06', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '84', 'Y', '', 'สุราษฎร์ธานี', 'สฎ', 'สขจ.สุราษฎร์ธานี', 'SURATTHANI', '80200');
INSERT INTO `tabt_office_location` VALUES ('80201', 'สำนักงานขนส่งจังหวัดสุราษฎร์ธานี สาขาอ.เวียงสระ', 'SURATTHANI PROVINCIAL LAND TRANSPORT OFFICE VIANGSA BRANCH', '8021700', '802', 'สุราษฎร์ธานี', '6', 'N', '', '6', '8', 'สุราษฎร์ธานี', 'สฎ', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เวียงสระ', 'สุราษฎร์ธานี', 'สฎ', 'สขข. อ.เวียงสระ', 'SURATTHANI 1', '80201');
INSERT INTO `tabt_office_location` VALUES ('80202', 'สำนักงานขนส่งจังหวัดสุราษฎร์ธานี สาขาอ.เกาะสมุย', 'SURATTHANI PROVINCIAL LAND TRANSPORT OFFICE KAOSAMUI BRANCH', '8021100', '802', 'สุราษฎร์ธานี', '6', 'N', '', '6', '8', 'สุราษฎร์ธานี', 'สฎ', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.เกาะสมุย', 'สุราษฎร์ธานี', 'สฎ', 'สขข. อ.เกาะสมุย', 'SURATTHANI 2', '80202');
INSERT INTO `tabt_office_location` VALUES ('80203', 'สำนักงานขนส่งจังหวัดสุราษฎร์ธานี สาขาอ.ไชยา', '', '8020500', '802', 'สุราษฎร์ธานี', '6', 'N', '', '6', '8', 'สุราษฎร์ธานี', 'สฎ', '', '06', '1', 'U', '1', '', '2', '0000-00-00 00:00:00', '104574', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ไชยา', 'สุราษฎร์ธานี', 'สฎ', 'สขข. อ.ไชยา', 'SURATTHANI 3', '80203');
INSERT INTO `tabt_office_location` VALUES ('80204', 'สำนักงานขนส่งจังหวัดสุราษฎร์ธานี สาขาอ.บ้านนาสาร', '', '8020200', '802', 'สุราษฎร์ธานี', '6', 'N', '', '6', '8', 'สุราษฎร์ธานี', 'สฎ', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.บ้านนาสาร', 'สุราษฎร์ธานี', 'สฎ', 'สขข. อ.บ้านนาสาร', 'SURATTHANI 4', '80204');
INSERT INTO `tabt_office_location` VALUES ('80300', 'สำนักงานขนส่งจังหวัดพังงา', 'PANG-NGA PROVINCIAL LAND TRANSPORT OFFICE', '8030000', '803', 'พังงา', '6', 'N', 'N', '6', '8', 'พังงา', 'พง', '', '07', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '82', 'Y', '', 'พังงา', 'พง', 'สขจ.พังงา', 'PANG-NGA', '80300');
INSERT INTO `tabt_office_location` VALUES ('80301', 'สำนักงานขนส่งจังหวัดพังงา สาขาอ.ตะกั่วป่า', 'PANG-NGA PROVINCIAL LAND TRANSPORT OFFICE TAKUAPA BRANCH', '8030500', '803', 'พังงา', '6', 'N', '', '6', '8', 'พังงา', 'พง', '', '07', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ตะกั่วป่า', 'พังงา', 'พง', 'สขข. อ.ตะกั่วป่า', 'PANG-NGA 1', '80301');
INSERT INTO `tabt_office_location` VALUES ('80400', 'สำนักงานขนส่งจังหวัดนครศรีธรรมราช', 'NAKORNSRITHAMMARAT PROVINCIAL LAND TRANSPORT OFFICE', '8040000', '804', 'นครศรีธรรมราช', '6', 'N', 'Y', '6', '8', 'นครศรีธรรมราช', 'นศ', '', '06', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '80', 'Y', '', 'นครศรีธรรมราช', 'นศ', 'สขจ.นครศรีธรรมราช', 'NAKORNSRITHAMMARAT', '80400');
INSERT INTO `tabt_office_location` VALUES ('80401', 'สำนักงานขนส่งจังหวัดนครศรีธรรมราช สาขาอ.ทุ่งสง', 'NAKORNSRITHAMMARAT PROVINCIAL LAND TRANSPORT OFFICE TUNGSONG', '8041400', '804', 'นครศรีธรรมราช', '6', 'N', '', '6', '8', 'นครศรีธรรมราช', 'นศ', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ทุ่งสง', 'นครศรีธรรมราช', 'นศ', 'สขข. อ.ทุ่งสง', 'NAKORNSRITHAMMARAT 1', '80401');
INSERT INTO `tabt_office_location` VALUES ('80402', 'สำนักงานขนส่งจังหวัดนครศรีธรรมราช สาขาอ.สิชล', '', '8041200', '804', 'นครศรีธรรมราช', '6', 'N', '', '6', '8', 'นครศรีธรรมราช', 'นศ', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.สิชล', 'นครศรีธรรมราช', 'นศ', 'สขข. อ.สิชล', 'NAKORNSRITHAMMARAT 2', '80402');
INSERT INTO `tabt_office_location` VALUES ('80500', 'สำนักงานขนส่งจังหวัดกระบี่', 'KRABI PROVINCIAL LAND TRANSPORT OFFICE', '8050000', '805', 'กระบี่', '6', 'N', 'N', '6', '8', 'กระบี่', 'กบ', '', '07', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '81', 'Y', '', 'กระบี่', 'กบ', 'สขจ.กระบี่', 'KRABI', '80500');
INSERT INTO `tabt_office_location` VALUES ('80501', 'สำนักงานขนส่งจังหวัดกระบี่ สาขาอ.อ่าวลึก', '', '8050200', '805', 'กระบี่', '6', 'N', '', '6', '8', 'กระบี่', 'กบ', '', '07', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '04', '', 'N', 'อ.อ่าวลึก', 'กระบี่', 'กบ', 'สขข. อ.อ่าวลึก', 'KRABI 1', '80501');
INSERT INTO `tabt_office_location` VALUES ('80600', 'สำนักงานขนส่งจังหวัดภูเก็ต', 'PHUKET PROVINCIAL LAND TRANSPORT OFFICE', '8060000', '806', 'ภูเก็ต', '6', 'N', 'Y', '6', '8', 'ภูเก็ต', 'ภก', '', '07', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '83', 'Y', '', 'ภูเก็ต', 'ภก', 'สขจ.ภูเก็ต', 'PHUKET', '80600');
INSERT INTO `tabt_office_location` VALUES ('90000', 'สำนักงานขนส่งจังหวัดพัทลุง', 'PHATTHALUNG PROVINCIAL LAND TRANSPORT OFFICE', '9000000', '900', 'พัทลุง', '6', 'N', 'N', '6', '8', 'พัทลุง', 'พท', '', '06', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '93', 'Y', '', 'พัทลุง', 'พท', 'สขจ.พัทลุง', 'PHATTHALUNG', '90000');
INSERT INTO `tabt_office_location` VALUES ('90001', 'สำนักงานขนส่งจังหวัดพัทลุง สาขาอ.ตะโหมด', 'PHATTHALUNG PROVINCIAL LAND TRANSPORT OFFICE TAMODE BRANCH', '9000400', '900', 'พัทลุง', '6', 'N', '', '6', '8', 'พัทลุง', 'พท', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ตะโหมด', 'พัทลุง', 'พท', 'สขข. อ.ตะโหมด', 'PHATTHALUNG 1', '90001');
INSERT INTO `tabt_office_location` VALUES ('90002', 'สำนักงานขนส่งจังหวัดพัทลุง สาขาอ.ควนขนุน', 'PHATTHALUNG PROVINCIAL LAND TRANSPORT OFFICE KUANKANOON BR', '9000500', '900', 'พัทลุง', '6', 'N', '', '6', '8', 'พัทลุง', 'พท', '', '06', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ควนขนุน', 'พัทลุง', 'พท', 'สขข. อ.ควนขนุน', 'PHATTHALUNG 2', '90002');
INSERT INTO `tabt_office_location` VALUES ('90100', 'สำนักงานขนส่งจังหวัดตรัง', 'TRANG PROVINCIAL LAND TRANSPORT OFFICE', '9010000', '901', 'ตรัง', '6', 'N', 'N', '6', '8', 'ตรัง', 'ตง', '', '07', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '01', '92', 'Y', '', 'ตรัง', 'ตง', 'สขจ.ตรัง', 'TRANG', '90100');
INSERT INTO `tabt_office_location` VALUES ('90101', 'สำนักงานขนส่งจังหวัดตรัง สาขาอ.ห้วยยอด', 'TRANG PROVINCIAL LAND TRANSPORT OFFICE HUANGYOD BRANCH', '9010200', '901', 'ตรัง', '6', 'N', '', '6', '8', 'ตรัง', 'ตง', '', '07', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '01', '', 'N', 'อ.ห้วยยอด', 'ตรัง', 'ตง', 'สขข. อ.ห้วยยอด', 'TRANG 1', '90101');
INSERT INTO `tabt_office_location` VALUES ('90200', 'สำนักงานขนส่งจังหวัดสงขลา', 'SONGKHLA PROVINCIAL LAND TRANSPORT OFFICE', '9020000', '902', 'สงขลา', '6', 'N', 'Y', '6', '8', 'สงขลา', 'สข', '', '08', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '02', '90', 'Y', '', 'สงขลา', 'สข', 'สขจ.สงขลา', 'SONGKHLA', '90200');
INSERT INTO `tabt_office_location` VALUES ('90201', 'สำนักงานขนส่งจังหวัดสงขลา สาขาอ.เมือง', 'SONGKHA PROVINCIAL LAND TRANSPORT OFFICE MUANG BRANCH', '9020100', '902', 'สงขลา', '6', 'N', '', '6', '8', 'สงขลา', 'สข', '', '08', '1', 'C', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.เมือง', 'สงขลา', 'สข', 'สขข. อ.เมืองสงขลา', 'SONGKHA 1', '90201');
INSERT INTO `tabt_office_location` VALUES ('90202', 'สำนักงานขนส่งจังหวัดสงขลา สาขาอ.นาทวี', 'SONGKHA PROVINCIAL LAND TRANSPORT OFFICE NATAWEE BRANCH', '9020400', '902', 'สงขลา', '6', 'N', '', '6', '8', 'สงขลา', 'สข', '', '08', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.นาทวี', 'สงขลา', 'สข', 'สขข. อ.นาทวี', 'SONGKHA 2', '90202');
INSERT INTO `tabt_office_location` VALUES ('90300', 'สำนักงานขนส่งจังหวัดสตูล', 'SATUN PROVINCIAL LAND TRANSPORT OFFICE', '9030000', '903', 'สตูล', '6', 'Y', 'N', '6', '8', 'สตูล', 'สต', '', '08', '2', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '02', '91', 'Y', '', 'สตูล', 'สต', 'สขจ.สตูล', 'SATUN', '90300');
INSERT INTO `tabt_office_location` VALUES ('90301', 'สำนักงานขนส่งจังหวัดสตูล สาขาอ.ละงู', 'SATUN PROVINCIAL LAND TRANSPORT OFFICE LA-NGU BRANCH', '9030500', '903', 'สตูล', '6', 'Y', '', '6', '8', 'สตูล', 'สต', '', '08', '2', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.ละงู', 'สตูล', 'สต', 'สขข. อ.ละงู', 'SATUN 1', '90301');
INSERT INTO `tabt_office_location` VALUES ('90400', 'สำนักงานขนส่งจังหวัดปัตตานี', 'PATTANI PROVINCIAL LAND TRANSPORT OFFICE', '9040000', '904', 'ปัตตานี', '6', 'Y', 'N', '6', '8', 'ปัตตานี', 'ปน', '', '08', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '02', '94', 'Y', '', 'ปัตตานี', 'ปน', 'สขจ.ปัตตานี', 'PATTANI', '90400');
INSERT INTO `tabt_office_location` VALUES ('90401', 'สำนักงานขนส่งจังหวัดปัตตานี สาขาอ.สายบุรี', 'PATTANI PROVINCIAL LAND TRANSPORT OFFICE SAIBURI BRANCH', '9040700', '904', 'ปัตตานี', '6', 'Y', '', '6', '8', 'ปัตตานี', 'ปน', '', '08', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.สายบุรี', 'ปัตตานี', 'ปน', 'สขข. อ.สายบุรี', 'PATTANI 1', '90401');
INSERT INTO `tabt_office_location` VALUES ('90500', 'สำนักงานขนส่งจังหวัดยะลา', 'YALA PROVINCIAL LAND TRANSPORT OFFICE', '9050000', '905', 'ยะลา', '6', 'Y', 'N', '6', '8', 'ยะลา', 'ยล', '', '08', '3', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '02', '95', 'Y', '', 'ยะลา', 'ยล', 'สขจ.ยะลา', 'YALA', '90500');
INSERT INTO `tabt_office_location` VALUES ('90501', 'สำนักงานขนส่งจังหวัดยะลา สาขาอ.เบตง', 'YALA PROVINCIAL LAND TRANSPORT OFFICE BETONG BRANCH', '9050400', '905', 'ยะลา', '6', 'Y', '', '6', '8', 'ยะลา', 'บต', '', '08', '3', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'Y', 'อ.เบตง', 'เบตง', 'บต', 'สขข. อ.เบตง', 'YALA 1', '90501');
INSERT INTO `tabt_office_location` VALUES ('90600', 'สำนักงานขนส่งจังหวัดนราธิวาส', 'NARATHIWAT PROVINCIAL LAND TRANSPORT OFFICE', '9060000', '906', 'นราธิวาส', '6', 'Y', 'N', '6', '8', 'นราธิวาส', 'นธ', '', '08', '1', 'U', '1', '', '1', NULL, '', '0000-00-00 00:00:00', '104910', '02', '96', 'Y', '', 'นราธิวาส', 'นธ', 'สขจ.นราธิวาส', 'NARATHIWAT', '90600');
INSERT INTO `tabt_office_location` VALUES ('90601', 'สำนักงานขนส่งจังหวัดนราธิวาส สาขาอ.สุไหงโก-ลก', 'NARATHIWAT PROVINCIAL LAND TRANSPORT OFFICE SUNGAIKOLOK BR', '9060600', '906', 'นราธิวาส', '6', 'Y', '', '6', '8', 'นราธิวาส', 'นธ', '', '08', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.สุไหงโก-ลก', 'นราธิวาส', 'นธ', 'สขข. อ.สุไหงโก-ลก', 'NARATHIWAT 1', '90601');
INSERT INTO `tabt_office_location` VALUES ('90602', 'สำนักงานขนส่งจังหวัดนราธิวาส สาขาอ.รือเสาะ', 'NARATHIWAT PROVINCIAL LAND TRANSPORT OFFICE RUESO BRANCH', '9060400', '906', 'นราธิวาส', '6', 'Y', '', '6', '8', 'นราธิวาส', 'นธ', '', '08', '1', 'U', '1', '', '2', NULL, '', '0000-00-00 00:00:00', '104910', '02', '', 'N', 'อ.รือเสาะ', 'นราธิวาส', 'นธ', 'สขข. อ.รือเสาะ', 'NARATHIWAT 2', '90602');
INSERT INTO `tabt_office_location` VALUES ('99001', 'สำนักสวัสดิภาพ', 'สำนักสวัสดิภาพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads`  (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อไฟล์',
  `real_filename` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ชื่อไฟล์จริง',
  `create_date` timestamp(0) DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL COMMENT 'ประเภท',
  PRIMARY KEY (`upload_id`) USING BTREE,
  INDEX `ref`(`ref`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES (7, 'Z2w_Osl2dYAcA77zGrRhNs', '16-08-2021.jpg', '199d562938a362f14aae380a83addd04.jpg', '2022-06-22 19:13:40', NULL);
INSERT INTO `uploads` VALUES (8, 'Z2w_Osl2dYAcA77zGrRhNs', '477168_resize.jpg', 'bb683fe97c9c922f669bbee1e968cc58.jpg', '2022-06-22 19:13:41', NULL);
INSERT INTO `uploads` VALUES (9, 'Y_C4Xe8tyR9e9Fo5MGyF_9', 'EDC.jpg', '1f88cc9a67455085d50f14426db58be2.jpg', '2022-06-22 19:19:53', NULL);
INSERT INTO `uploads` VALUES (10, 'Y_C4Xe8tyR9e9Fo5MGyF_9', 'ion.jpg', 'ec5dcc7910eaacf7c85c1fd1a0d35876.jpg', '2022-06-22 19:19:53', NULL);
INSERT INTO `uploads` VALUES (11, 'Jz6ZmW7UkYiqdZ20MTBSj9', '477169_resize _1_.jpg', '7d8d94f062bb38ab92e2575e5c3b4abe.jpg', '2022-06-22 19:44:54', NULL);
INSERT INTO `uploads` VALUES (12, 'Jz6ZmW7UkYiqdZ20MTBSj9', '477169_resize.jpg', 'be08450e050a8626ca242566255818df.jpg', '2022-06-22 19:44:55', NULL);
INSERT INTO `uploads` VALUES (13, 'PaT7jg70fBJo_KKGH7YUvs', 'MDM.jpg', 'a6247c6a1faeeb85d57f27389517d025.jpg', '2022-06-23 11:43:58', NULL);
INSERT INTO `uploads` VALUES (14, 'PaT7jg70fBJo_KKGH7YUvs', 'MOI-65.jpg', '2a33f0fc69bb468bc7ebec75d727e03b.jpg', '2022-06-23 11:43:58', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` smallint(6) NOT NULL DEFAULT 10,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `positionDesc` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `orgFullNameDes` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสจังหวัด',
  `offLocDesc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ-สกุล',
  `offLocCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสบัตรประจำตัวประชาชน',
  `id_no` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำแหน่ง',
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1411900116884', 'To2wnsFaSfKoW9QP8n_91-wLX9ucXLe4', '$2y$13$E33iuJSY6OrqKmmVnw.RXuwMTavdoO0Pxn2nRi8zv/OWAr9/eAZpO', 'eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0.sYgmzz9Vcv_2ZHWjkuU6piuPBE-oOI40dZhe_BCd7l84h_cTm6bkZw.9Vh96j-StCSNld0vgtWSQA.g7AIPehZ8bsPQLDjLbxKXKZnGTQGV_RF8jtq3wdbGQtr61lgV6IGV5KAifKF8Hhn2Y8ajBMz5GIeidQfF7Z8NS3LbXJAeZXSsnRnd4qZR1lM5Byanwbnppz6bZt-E5av.d2ume4x-A5FtgINOXOmcQg', NULL, 10, 10, 'นักวิชาการคอมพิวเตอร์ปฏิบัติการ', 'ศูนย์เทคโนโลยีสารสนเทศ กลุ่มบริหารข้อมูลและระบบสารสนเทศ งานพัฒนาระบบสารสนเทศบริการ', 'สำนักงานขนส่งกรุงเทพมหานครพื้นที่ 5', '00100', '1411900116884', 'นาย', 'เอกพันธุ์', 'ศรีวงษ์', 1636634841, 1655971920);

-- ----------------------------
-- Table structure for user2
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` smallint(6) NOT NULL DEFAULT 10,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `org_code` char(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `province_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'รหัสจังหวัด',
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อ-สกุล',
  `id_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสบัตรประจำตัวประชาชน',
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ตำแหน่ง',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user2
-- ----------------------------
INSERT INTO `user2` VALUES (1, '1411900116884', '1234', 'p@ssw0rd', '', '', 1, 10, '99991', '99991', 'นายเอกพันธุ์  ศรีวงษ์', '1-4119-00116-884', 'Administrator', 1421741593, 1602836658);

SET FOREIGN_KEY_CHECKS = 1;
