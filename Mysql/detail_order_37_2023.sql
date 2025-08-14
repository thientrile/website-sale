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

 Date: 05/09/2023 10:35:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detail_order_37_2023
-- ----------------------------
DROP TABLE IF EXISTS `detail_order_37_2023`;
CREATE TABLE `detail_order_37_2023`  (
  `id` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int NOT NULL COMMENT 'Mã sản phẩm',
  `sku_id` int NOT NULL COMMENT 'Mã SKU sản phẩm',
  `quantity` decimal(15, 4) NOT NULL COMMENT 'Số lượng',
  `quantity_paid` decimal(15, 4) NULL DEFAULT 0.0000 COMMENT 'Còn nợ',
  `returned` decimal(15, 4) NOT NULL COMMENT 'Số lượng',
  `max_allowed_order` decimal(15, 4) NOT NULL COMMENT 'Số lượng',
  `date_add` int NOT NULL COMMENT 'Thời gian tạo',
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên món',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ghi chú món ăn cho món vừa gọi',
  `price` decimal(15, 4) NOT NULL COMMENT 'Số lượng',
  `default_price` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  `root_price` decimal(15, 4) NOT NULL COMMENT 'Số lượng',
  `wh_history_id` int NOT NULL COMMENT 'Giá góc lưu ở đây',
  `decrement` decimal(15, 4) NOT NULL COMMENT '% Giảm giá',
  `vat` decimal(15, 4) NOT NULL COMMENT '% VAT',
  `user_decrement` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Người thực hiện giảm giá hay tăng giá',
  `last_update` int NOT NULL COMMENT 'Thời gian cập nhật gần nhất',
  `user_add` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Người thêm',
  `attribute_1` int NOT NULL,
  `attribute_2` int NOT NULL,
  `attribute_3` int NOT NULL,
  `attribute_4` int NOT NULL,
  `attribute_5` int NOT NULL,
  `sku_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `same_groups` int NOT NULL,
  `wh_history_return_id` int NOT NULL,
  `is_coupon` int NOT NULL,
  `coupon_id` int NOT NULL,
  `is_cancel` int NOT NULL,
  `cancel_report_id` int NOT NULL,
  `delivered` decimal(15, 4) NOT NULL DEFAULT 0.0000 COMMENT 'Số lượng đã giao',
  `inverse` int NOT NULL COMMENT '= 0 là đơn vị nhập; = 1 đơn vị xuất;',
  `expire_date` int NOT NULL COMMENT 'Unix time của expire_date: ngày hết hạn sử dụng',
  `ratio_convert` decimal(15, 4) NOT NULL,
  `barcode` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cashback_value` decimal(15, 4) NOT NULL,
  `cashback_is_value` int NOT NULL,
  `sale_price` decimal(15, 4) NOT NULL COMMENT 'Giá được điều chỉnh khi đại lý xuất bán trực tiếp; công ty giao hộ',
  `sale_decrement` decimal(15, 4) NOT NULL COMMENT 'Giá giảm được điều chỉnh khi đại lý xuất bán trực tiếp; công ty giao hộ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Bảng đơn hàng' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detail_order_37_2023
-- ----------------------------
INSERT INTO `detail_order_37_2023` VALUES ('000011108230AGEM', '001230811AAJH0', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722016, 'Áo sơ mi nữ tay dài Trắng( sản phẩm để test vui lòng không nhấn đặt hàng)', '', 6.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722016, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 5.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('000012308236BZKB', '001230823AAAPA', 2147483647, 2147483647, 7.0000, 0.0000, 0.0000, 0.0000, 1692758109, 'Áo sơ mi nam nữ dài tay Unisex Basic màu trắng và đen sơ mi lụa mịn mát form rộng suông ELNIDO-ED03 Cotton Casual Crew Neck V-Neck V-Neck V-Neck V-Neck Slim-fitting Plain Floral Striped Black White', '', 100000.0000, 100000.0000, 100000.0000, 0, 0.0000, 0.0000, '', 1692758109, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00002110823F2BSS', '001230811AA6SF', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722017, 'Áo sơ mi nữ tay dài Trắng( sản phẩm để test vui lòng không nhấn đặt hàng)', '', 6.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722017, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 5.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00002230823KLYGJ', '002230823AAK0K', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1692758109, 'Áo sơ mi nam nữ dài tay Unisex Basic màu trắng và đen sơ mi lụa mịn mát form rộng suông ELNIDO-ED03 Cotton Casual Crew Neck V-Neck V-Neck V-Neck V-Neck Slim-fitting Plain Floral Striped Black White', '', 100000.0000, 100000.0000, 100000.0000, 0, 0.0000, 0.0000, '', 1692758109, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00003110823L9JBF', '001230811AAG7Q', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722017, 'Áo hoodie nam nữ local brand unisex cặp đôi nỉ ngoại cotton form rộng có mũ xám đen dày oversize CLOUDZY DRACULA', '', 1.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722017, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00003230823EY2DG', '002230823AADGG', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1692758110, 'Áo sơ mi nam nữ dài tay Unisex Basic màu trắng và đen sơ mi lụa mịn mát form rộng suông ELNIDO-ED03 Cotton Casual Crew Neck V-Neck V-Neck V-Neck V-Neck Slim-fitting Plain Floral Striped Black White', '', 100000.0000, 100000.0000, 100000.0000, 0, 0.0000, 0.0000, '', 1692758110, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00004110823JHH86', '001230811AABU6', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722018, 'Áo hoodie nam nữ local brand unisex cặp đôi nỉ ngoại cotton form rộng có mũ xám đen dày oversize CLOUDZY DRACULA', '', 1.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722018, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00004230823Z3VGF', '002230823AAOKC', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1692758110, 'Áo sơ mi nam nữ dài tay Unisex Basic màu trắng và đen sơ mi lụa mịn mát form rộng suông ELNIDO-ED03 Cotton Casual Crew Neck V-Neck V-Neck V-Neck V-Neck Slim-fitting Plain Floral Striped Black White', '', 100000.0000, 100000.0000, 100000.0000, 0, 0.0000, 0.0000, '', 1692758110, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00005110823KM0N3', '001230811AA0TO', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722018, 'Áo hoodie nam nữ local brand unisex cặp đôi nỉ ngoại cotton form rộng có mũ xám đen dày oversize CLOUDZY DRACULA', '', 1.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722018, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00006110823GD9CT', '001230811AA4EK', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722019, 'Áo sơ mi nam tay dài Trắng Đen POLYS Fullbox, Vải Chéo Thái dày dặn, co giãn, thoáng khí LONG SLEEVE', '', 200000.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722019, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00007110823SLDHC', '001230811AAHR7', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722019, 'Áo sơ mi nam tay dài Trắng Đen POLYS Fullbox, Vải Chéo Thái dày dặn, co giãn, thoáng khí LONG SLEEVE', '', 200000.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722019, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00008110823K4D7U', '001230811AAGDE', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722020, 'Áo sơ mi nam tay dài Trắng Đen POLYS Fullbox, Vải Chéo Thái dày dặn, co giãn, thoáng khí LONG SLEEVE', '', 200000.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722020, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00009110823E810D', '001230811AAZ95', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722020, 'Áo sơ mi nam tay dài Trắng Đen POLYS Fullbox, Vải Chéo Thái dày dặn, co giãn, thoáng khí LONG SLEEVE', '', 200000.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722020, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);
INSERT INTO `detail_order_37_2023` VALUES ('00010110823WXGKS', '001230811AAYFC', 2147483647, 2147483647, 1.0000, 0.0000, 0.0000, 0.0000, 1691722021, 'Áo sơ mi nam tay dài Trắng Đen POLYS Fullbox, Vải Chéo Thái dày dặn, co giãn, thoáng khí LONG SLEEVE', '', 200000.0000, 0.0000, 0.0000, 0, 0.0000, 0.0000, '', 1691722021, 'Admin_master', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0.0000, 0, 0, 0.0000, '', 0.0000, 0, 0.0000, 0.0000);

SET FOREIGN_KEY_CHECKS = 1;
