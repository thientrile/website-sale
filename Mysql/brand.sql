/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : citipos_thuctap

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 05/09/2023 14:10:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `background` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_by` int NOT NULL,
  `created_at` int NOT NULL,
  `deleted` int NOT NULL DEFAULT 0,
  `deleted_by` int NOT NULL,
  `root_id` int NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3758 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Khai báo thương hiệu hàng hóa cho mục đích filter' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (3, 'VinaBrands', NULL, NULL, NULL, 13, 1606591345, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (4, 'Damode', NULL, NULL, NULL, 13, 1606701303, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (5, 'Yobe', NULL, NULL, NULL, 13, 1606701326, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (6, 'Milky Dress', NULL, NULL, NULL, 13, 1606701333, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (9, 'Teknails', NULL, NULL, NULL, 13, 1623416804, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (10, 'GMAC', NULL, NULL, NULL, 13, 1625218187, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (12, 'MJMVN', NULL, NULL, NULL, 13, 1625218193, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (15, 'Aplus', NULL, NULL, NULL, 13, 1625219464, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (18, 'Dolomen', NULL, NULL, NULL, 13, 1625221910, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (19, 'Dược Phú Thái', NULL, NULL, NULL, 13, 1625221917, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (21, 'Hoàng Kha Nam', NULL, NULL, NULL, 13, 1625221925, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (24, 'Edna', NULL, NULL, NULL, 13, 1625221931, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (27, 'Dhouse', NULL, NULL, NULL, 13, 1625221938, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (30, 'Dnut', NULL, NULL, NULL, 13, 1625221942, 1, 0, 0, 0);
INSERT INTO `brand` VALUES (33, 'Vinateks', NULL, NULL, NULL, 13, 1625221949, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (34, 'Phúc Tiến ', NULL, NULL, NULL, 13, 1625221967, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (37, 'VSC', NULL, NULL, NULL, 13, 1625221978, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (39, 'Đất Nước Xanh', NULL, NULL, NULL, 13, 1625221985, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (42, 'Haduhi', NULL, NULL, NULL, 13, 1625221991, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (45, 'Mudaru', NULL, NULL, NULL, 13, 1625221999, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (48, 'Vinabrands', NULL, NULL, NULL, 13, 1625222007, 1, 0, 0, 0);
INSERT INTO `brand` VALUES (51, 'MDStory', NULL, NULL, NULL, 13, 1626407562, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (52, 'Green100', NULL, NULL, NULL, 13, 1626668570, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (55, 'Plsur', NULL, NULL, NULL, 13, 1626668659, 1, 0, 0, 0);
INSERT INTO `brand` VALUES (3750, 'Plusur', NULL, NULL, NULL, 1, 1627227737, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (3751, 'VinaFoods', NULL, NULL, NULL, 60, 1628562346, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (3754, 'Hằng Nga', NULL, NULL, NULL, 13, 1629805674, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (3756, 'Amity', NULL, NULL, NULL, 13, 1631502135, 0, 0, 0, 0);
INSERT INTO `brand` VALUES (3757, 'Vinaginseng', NULL, NULL, NULL, 13, 1631774272, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
