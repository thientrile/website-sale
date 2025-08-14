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

 Date: 05/09/2023 10:35:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_37_2023
-- ----------------------------
DROP TABLE IF EXISTS `order_37_2023`;
CREATE TABLE `order_37_2023`  (
  `id` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `amount` int NOT NULL DEFAULT 0,
  `user_add` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shop_id` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `waiter` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cashback_total` decimal(15, 4) NOT NULL,
  `pro_allow_commission` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pro_allow_commission_value` decimal(15, 4) NOT NULL,
  `pro_allow_commission_percent` decimal(15, 4) NOT NULL,
  `treasurer_group_id` int NOT NULL DEFAULT 0,
  `voucher_id` int NOT NULL DEFAULT 0,
  `printed` int NOT NULL DEFAULT 0,
  `last_update` int NOT NULL DEFAULT 0,
  `last_date` varchar(18) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `treasurer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `count_print` int NOT NULL DEFAULT 0,
  `name_customer` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_customer` int NOT NULL DEFAULT 0,
  `mobile_customer` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_customer` int NOT NULL DEFAULT 0,
  `payment_type` int NOT NULL DEFAULT 0,
  `is_booking` int NOT NULL DEFAULT 0 COMMENT '= 1 đơn hàng đặt; =0 đơn hàng bán hàng bình thường',
  `status_booking` int NOT NULL COMMENT '=0 not yet deliveried; =1 deliveried some; =2 done deliveried',
  `vat` int NOT NULL DEFAULT 0,
  `created_at` int NOT NULL DEFAULT 0,
  `hold_date` int NOT NULL DEFAULT 0,
  `liabilities_id` int NOT NULL DEFAULT 0,
  `ship_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ship_mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ship_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ship_note` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address_book_id` int NOT NULL,
  `cash_more` decimal(15, 4) NOT NULL COMMENT 'cash more for MB360Pay',
  `returned_from_order_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `returned_from_created_at` int NOT NULL,
  `total` decimal(15, 4) NOT NULL COMMENT 'Tổng tiền của order',
  `total_paid` decimal(15, 4) NOT NULL COMMENT 'Tổng tiền đã trả',
  `is_wholesale_price` int NOT NULL DEFAULT 0 COMMENT 'Đơn hàng là giá sỉ hay giá lẻ',
  `sub_orders` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Thông tin những order con được tạo ra từ đơn hàng: format: orderid:createdat;orderid:createdat;	',
  `created_from_order` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'ID order cha',
  `created_from_order_at` int NOT NULL DEFAULT 0 COMMENT 'Thời gian tạo của order cha',
  `order_type` int NOT NULL DEFAULT 0 COMMENT '=0 order from POS, =1 warehouse; =3 from ',
  `created_by_client_id` int NOT NULL,
  `for_client_id` int NOT NULL DEFAULT 0,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `treasurer_id` int NOT NULL COMMENT '=0 là chưa tạo phiếu thu, còn > 0 là đã tạo phiếu thu, dành cho các trường hợp tạo phiếu xuất kho',
  `is_correction` int NOT NULL DEFAULT 0,
  `warehouse_id` int NOT NULL COMMENT 'Xuất từ kho nào??',
  `url_chung_tu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Url hình ảnh liên quan đơn hàng',
  `is_internal` int NOT NULL COMMENT 'Là xuất cho nội bộ hay xuất cho khách; nếu xuất cho khách thì dùng id_customer; còn xuất nội bộ thì dùng trường export_for_wh_id',
  `export_for_wh_id` int NOT NULL,
  `is_official_customer` int NOT NULL DEFAULT 0,
  `service_fee` decimal(15, 4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Bảng đơn hàng' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_37_2023
-- ----------------------------
INSERT INTO `order_37_2023` VALUES ('001230811AA0TO', '577679939178105646', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1691053291, '03/08/23 16:01:31', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1691053291, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 1.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 0.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AA4EK', '577668815782972206', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1690877915, '01/08/23 15:18:35', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1690877915, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 222200.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AA6SF', '577713229150718766', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1691562583, '09/08/23 13:29:43', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1691562583, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 1.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 0.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AABU6', '577683583557995310', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1691117335, '04/08/23 09:48:55', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1691117335, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 22201.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAG7Q', '577683596601297710', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1691145492, '04/08/23 17:38:12', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1691145492, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 22201.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAGDE', '577663711703042862', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1690855729, '01/08/23 09:08:49', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1690855729, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 222200.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAHR7', '577668512118180654', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1690873614, '01/08/23 14:06:54', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1690873614, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 222200.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAJH0', '577714508013210414', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1691577113, '09/08/23 17:31:53', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1691577113, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 1.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 0.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAYFC', '577662478893157166', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1690855760, '01/08/23 09:09:20', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1690855760, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 222200.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230811AAZ95', '577663426611743534', 0, 'Admin_master', 37, 140, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1690855746, '01/08/23 09:09:06', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1690855746, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 222200.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 22200.0000);
INSERT INTO `order_37_2023` VALUES ('001230823AAAPA', '577780356979526405', 0, 'Admin_master', 37, 130, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1692775266, '23/08/23 14:21:06', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1692775266, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 700004.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 4.0000);
INSERT INTO `order_37_2023` VALUES ('002230823AADGG', '577780442649168645', 0, 'Admin_master', 37, 100, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1692757756, '23/08/23 09:29:16', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1692757756, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 100004.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 4.0000);
INSERT INTO `order_37_2023` VALUES ('002230823AAK0K', '577780442649234181', 0, 'Admin_master', 37, 100, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1692757756, '23/08/23 09:29:16', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1692757756, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 100004.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 4.0000);
INSERT INTO `order_37_2023` VALUES ('002230823AAOKC', '577780442649299717', 0, 'Admin_master', 37, 100, '', 0.0000, '', 0.0000, 0.0000, 0, 0, 0, 1692757756, '23/08/23 09:29:16', '', '', 0, '', 0, '', 0, 0, 0, 0, 0, 1692757756, 0, 0, '', '', '', '', 0, 0.0000, '', 0, 100004.0000, 0.0000, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 37, '', 0, 0, 0, 4.0000);

SET FOREIGN_KEY_CHECKS = 1;
