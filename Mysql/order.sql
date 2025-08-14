/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : dgwork

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 05/09/2023 10:34:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` double NOT NULL,
  `user_id` int NOT NULL,
  `date_order` datetime NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_order_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (208, 49, 66, '2023-06-16 16:11:01');
INSERT INTO `order` VALUES (209, 12, 66, '2023-06-17 09:26:07');
INSERT INTO `order` VALUES (210, 0, 66, '2023-06-17 09:26:21');
INSERT INTO `order` VALUES (211, 2450, 66, '2023-06-17 09:26:37');
INSERT INTO `order` VALUES (212, 0, 66, '2023-06-17 09:27:02');
INSERT INTO `order` VALUES (213, 394, 66, '2023-06-17 09:27:49');
INSERT INTO `order` VALUES (214, 12, 264, '2023-06-27 09:27:44');

SET FOREIGN_KEY_CHECKS = 1;
