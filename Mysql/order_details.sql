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

 Date: 05/09/2023 10:34:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_item_id` int NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_details_order_id`(`order_id` ASC) USING BTREE,
  INDEX `product_item_id`(`product_item_id` ASC) USING BTREE,
  INDEX `fk_order_details_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_order_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_order_details_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (104, 208, 157, 124, 49, 0);
INSERT INTO `order_details` VALUES (105, 209, 155, 122, 12, 0);
INSERT INTO `order_details` VALUES (106, 210, 156, 123, 0, 0);
INSERT INTO `order_details` VALUES (107, 211, 157, 125, 2450, 0);
INSERT INTO `order_details` VALUES (108, 212, 158, 126, 0, 0);
INSERT INTO `order_details` VALUES (109, 212, 159, 127, 0, 0);
INSERT INTO `order_details` VALUES (110, 213, 160, 128, 0, 0);
INSERT INTO `order_details` VALUES (111, 213, 161, 129, 9, 0);
INSERT INTO `order_details` VALUES (112, 213, 161, 130, 69, 0);
INSERT INTO `order_details` VALUES (113, 213, 162, 132, 287, 0);
INSERT INTO `order_details` VALUES (114, 213, 162, 131, 29, 0);
INSERT INTO `order_details` VALUES (115, 214, 155, 122, 12, 0);

SET FOREIGN_KEY_CHECKS = 1;
