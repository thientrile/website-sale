/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : shopit

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 05/09/2023 00:28:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_cart_product_id`(`product_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_cart_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Audio');
INSERT INTO `category` VALUES (2, 'Graphics');
INSERT INTO `category` VALUES (3, 'Themes');
INSERT INTO `category` VALUES (4, 'Video');

-- ----------------------------
-- Table structure for deteted
-- ----------------------------
DROP TABLE IF EXISTS `deteted`;
CREATE TABLE `deteted`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `function` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deteted
-- ----------------------------
INSERT INTO `deteted` VALUES (0, 'exist');
INSERT INTO `deteted` VALUES (1, 'deleted');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `thumnali` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES (27, 42, 'Mẫu website dùng thử 123Website - MẪU WEBSITE BÁN HÀNG CÔNG NGHỆ – DGWork.mp3', 'mp3');
INSERT INTO `gallery` VALUES (29, 44, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (31, 46, 'PM02_20230306234256.png', 'png');
INSERT INTO `gallery` VALUES (32, 46, 'dgwork-product-surfer.jpg', 'jpg');
INSERT INTO `gallery` VALUES (33, 46, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (34, 47, 'PM02_20230306234256.png', 'png');
INSERT INTO `gallery` VALUES (35, 47, 'dgwork-product-surfer.jpg', 'jpg');
INSERT INTO `gallery` VALUES (36, 47, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (37, 47, 'video_thumbnail.jpg', 'jpg');
INSERT INTO `gallery` VALUES (38, 47, 'dgwork-product-mockup-3.jpg', 'jpg');
INSERT INTO `gallery` VALUES (39, 47, 'z4156449901375_3d8f82d0ca0b79b132e817eb92e3e91a - Copy.jpg', 'jpg');
INSERT INTO `gallery` VALUES (41, 42, 'video_thumbnail.jpg', 'jpg');
INSERT INTO `gallery` VALUES (42, 48, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (43, 48, 'video_thumbnail.jpg', 'jpg');
INSERT INTO `gallery` VALUES (44, 48, 'dgwork-product-mockup-3.jpg', 'jpg');
INSERT INTO `gallery` VALUES (45, 48, 'z4156449901375_3d8f82d0ca0b79b132e817eb92e3e91a - Copy.jpg', 'jpg');
INSERT INTO `gallery` VALUES (46, 49, 'dgwork-product-surfer.jpg', 'jpg');
INSERT INTO `gallery` VALUES (47, 49, 'dgwork-product-video.jpg', 'jpg');
INSERT INTO `gallery` VALUES (48, 49, 'focux-1024x933-1.jpg', 'jpg');
INSERT INTO `gallery` VALUES (49, 50, 'dgwork-header-voice.jpg', 'jpg');
INSERT INTO `gallery` VALUES (50, 50, 'dgwork-product-camera.jpg', 'jpg');
INSERT INTO `gallery` VALUES (51, 50, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (52, 50, 'dgwork-product-surfer.jpg', 'jpg');
INSERT INTO `gallery` VALUES (53, 50, 'dgwork-product-video.jpg', 'jpg');
INSERT INTO `gallery` VALUES (54, 50, 'focux-1024x933-1.jpg', 'jpg');
INSERT INTO `gallery` VALUES (55, 51, 'dgwork-product-guitar.jpg', 'jpg');
INSERT INTO `gallery` VALUES (56, 51, 'dgwork-product-iphone-book.jpg', 'jpg');
INSERT INTO `gallery` VALUES (57, 51, 'dgwork-product-mockup-2.jpg', 'jpg');
INSERT INTO `gallery` VALUES (58, 51, 'dgwork-product-mockup-3.jpg', 'jpg');
INSERT INTO `gallery` VALUES (59, 51, 'dgwork-product-phone-2.jpg', 'jpg');
INSERT INTO `gallery` VALUES (60, 51, 'video_thumbnail.jpg', 'jpg');
INSERT INTO `gallery` VALUES (61, 52, 'Ghostblade Webcomic by WLOP Live Wallpaper.mp4', 'mp4');
INSERT INTO `gallery` VALUES (62, 53, 'bmn.mp3', 'mp3');
INSERT INTO `gallery` VALUES (63, 53, 'bmt.png', 'png');
INSERT INTO `gallery` VALUES (64, 54, 'requy.mp3', 'mp3');
INSERT INTO `gallery` VALUES (65, 55, 'dgwork-header-voice.jpg', 'jpg');
INSERT INTO `gallery` VALUES (66, 55, 'dgwork-product-camera.jpg', 'jpg');
INSERT INTO `gallery` VALUES (67, 55, 'dgwork-product-citynews.jpg', 'jpg');
INSERT INTO `gallery` VALUES (68, 55, 'dgwork-product-surfer.jpg', 'jpg');
INSERT INTO `gallery` VALUES (69, 55, 'dgwork-product-video.jpg', 'jpg');
INSERT INTO `gallery` VALUES (70, 55, 'focux-1024x933-1.jpg', 'jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (96, 12, 54, '2023-03-10 10:22:57');
INSERT INTO `order` VALUES (97, 4942.8, 54, '2023-03-10 10:23:23');
INSERT INTO `order` VALUES (98, 0, 54, '2023-03-10 10:26:12');
INSERT INTO `order` VALUES (99, 30, 54, '2023-03-10 10:26:26');
INSERT INTO `order` VALUES (100, 20, 54, '2023-03-10 10:26:54');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_details_order_id`(`order_id` ASC) USING BTREE,
  INDEX `fk_order_details_product_id`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_order_details_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_order_details_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (29, 96, 42, 12, 0);
INSERT INTO `order_details` VALUES (30, 97, 52, 0, 0);
INSERT INTO `order_details` VALUES (31, 97, 53, 12357, 0.6);
INSERT INTO `order_details` VALUES (32, 98, 51, 0, 0);
INSERT INTO `order_details` VALUES (33, 99, 55, 30, 0);
INSERT INTO `order_details` VALUES (34, 100, 54, 20, 0);

-- ----------------------------
-- Table structure for post_product
-- ----------------------------
DROP TABLE IF EXISTS `post_product`;
CREATE TABLE `post_product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_post_product_product_id`(`user_id` ASC) USING BTREE,
  INDEX `fk_post_product_product_id_2`(`product_id` ASC) USING BTREE,
  CONSTRAINT `fk_post_product_product_id_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_post_product_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_product
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(350) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `source` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sDescription` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `discount` double NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp,
  `deleted` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id` ASC) USING BTREE,
  INDEX `fk_product_deleted`(`deleted` ASC) USING BTREE,
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_deleted` FOREIGN KEY (`deleted`) REFERENCES `deteted` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (42, 'Custom Template #2', 'dgwork-product-mockup-3.jpg', 'Mẫu website dùng thử 123Website - MẪU WEBSITE BÁN HÀNG CÔNG NGHỆ – DGWork.mp3', 1, 'Page Builder\r\nAfter enabled Elementor page builder for the product post, you can customize the product template with front-end editor visually.\r\n\r\nPredefined Templates\r\nWe include some predefined section templates in the Visual Composer template list that allow you to create different section layouts fastly.\r\n\r\nFlexible Layout\r\nYou can create complex layout for the custom product template, make the product page looks more like an optmized landing page.\r\n\r\nPredefined Templates\r\nWe include some predefined section templates in the Visual Composer template list that allow you to create different section layouts fastly.', 'DGWork is a flexible shop & business WordPress EDD Theme offering deep integration with Easy Digital Downloads. It’s perfect to create your self-hosted online shop to sell the digital products like software, photography, videos, audios, eBook or graphic design works, etc. Either multi-product sh...', 0, 12, '2023-03-05 22:36:01', '2023-03-09 18:14:09', 0);
INSERT INTO `product` VALUES (43, 'Custom Template #1', 'video_thumbnail.jpg', '18+ - Sexy Anime Girl & The Rain - 4K - Live Wallpaper.mkv', 4, 'Flexible Layout\r\nYou can create complex layout for the custom product template, make the product page looks more like an optmized landing page.\r\n\r\nPage Builder\r\nAfter enabled Elementor page builder for the product post, you can customize the product template with front-end editor visually.\r\n\r\nPredefined Templates\r\nWe include some predefined section templates in the Visual Composer template list that allow you to create different section layouts fastly.', 'DGWork is a flexible shop & business WordPress EDD Theme offering deep integration with Easy Digital Downloads. It’s perfect to create your self-hosted online shop to sell the digital products like software, photography, videos, audios, eBook or graphic design works, etc. Either multi-product sh...\r\n\r\nPREVIEW IT\r\nPlay\r\n\r\n\r\n00:00\r\n-14:06\r\nMute\r\n\r\nSettings\r\nEnter fullscreen\r\nPlay\r\n', 0, 1000, '2023-03-05 23:24:18', '2023-03-05 23:24:18', 0);
INSERT INTO `product` VALUES (44, 'CityNews Theme', 'dgwork-product-citynews.jpg', 'dgwork-product-citynews.jpg', 1, 'CityNews is a newspaper style WordPress Theme that let you create a news, magazine or blog website easily.\r\n\r\nWe include Visual Composer Page Builder into this theme that you can create your own page with highly customized layout. There are four post formats support: Standard, Video, Gallery and Audio. Also, we include some shortcodes and four different blog layouts.If you’re going to create a clean and newspaper style website to focus on write the news, story or journal, don’t miss it.\r\n\r\nOverview\r\nHTML5/CSS3\r\nFully Responsive\r\nRetina Ready\r\nFour different blog Layouts\r\nBeautifu Fullwidth Swipe Slider\r\nVisual Composer Page Builder\r\nCustom Widgets Included\r\nMany Useful Shortcodes Included\r\nGallery Template Ready\r\nAdvanced Theme Options\r\nCross-browser Compatible (IE9+/Firefox/Safari/Chrome/Opera)\r\nWell Documented\r\nWPML Ready\r\nDemo Files Included (XML)\r\nExcellent Support\r\nAnd more…', 'CityNews is a Newspaper WordPress Theme that let you create a news, magazine or blog website easily.', 0, 49, '2023-03-05 23:30:49', '2023-03-09 17:24:38', 0);
INSERT INTO `product` VALUES (46, 'Test', 'z4156449901375_3d8f82d0ca0b79b132e817eb92e3e91a.jpg', 'import-excel.zip', 1, '', '', 0, 2000, '2023-03-07 14:46:29', '2023-03-08 15:35:58', 1);
INSERT INTO `product` VALUES (47, 'test', 'PM02_20230306234256.png', 'PM02_20230306234256.png', 1, '', '', 0, 30243, '2023-03-08 21:33:12', '2023-03-09 17:24:01', 1);
INSERT INTO `product` VALUES (48, 'test', 'z4156449901375_3d8f82d0ca0b79b132e817eb92e3e91a - Copy.jpg', 'dgwork-product-citynews.jpg', 3, '', '', 0, 3952, '2023-03-10 00:49:29', '2023-03-10 00:49:29', 1);
INSERT INTO `product` VALUES (49, 'Brandminute Mockups', 'dgwork-product-mockup-2.jpg', 'dgwork-product-mockup-2.jpg', 2, '', '', 0, 3000, '2023-03-10 09:51:39', '2023-03-10 09:51:39', 0);
INSERT INTO `product` VALUES (50, 'Standard Product Template', 'dgwork-product-guitar.jpg', 'dgwork-product-guitar.jpg', 3, '', '', 0, 12002, '2023-03-10 09:52:48', '2023-03-10 09:52:48', 0);
INSERT INTO `product` VALUES (51, 'Rock and Roll Demo', 'dgwork-product-dj.jpg', 'dgwork-product-dj.jpg', 3, '', '', 0, 0, '2023-03-10 09:53:32', '2023-03-10 09:53:32', 0);
INSERT INTO `product` VALUES (52, 'Mountain Video Clip', 'simplekey.jpg', 'Ghostblade Webcomic by WLOP Live Wallpaper.mp4', 4, '', '', 0, 0, '2023-03-10 09:54:59', '2023-03-10 09:54:59', 0);
INSERT INTO `product` VALUES (53, 'Jazz Background Music', 'dgwork-header-voice.jpg', 'bmn.mp3', 1, '', '', 0.6, 12357, '2023-03-10 09:56:31', '2023-03-10 09:56:31', 0);
INSERT INTO `product` VALUES (54, 'Rễ quý', 'requy.png', 'requy.mp3', 1, '', '', 0, 20, '2023-03-10 09:58:05', '2023-03-10 09:58:05', 0);
INSERT INTO `product` VALUES (55, 'SimpleKey Theme', 'simplekey.jpg', 'simplekey.jpg', 2, '', '', 0, 30, '2023-03-10 09:59:15', '2023-03-10 09:59:15', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Admin', 'Có tất cả các quuyền( không ai có quyền chỉnh sửa thông tin hay thêm quyền admin ngoại trừ admin)');
INSERT INTO `role` VALUES (2, 'User', 'Khách hàng');
INSERT INTO `role` VALUES (3, 'Manage Member', 'được phân tối cao được quản lý các tài khoản của thành viên hệ thống bao gồm người dùng và nhân viên hệ thống');
INSERT INTO `role` VALUES (4, 'Product Management', 'Được toàn quyền bên sản phẩm xử lý sản phẩm');
INSERT INTO `role` VALUES (5, 'Member update', 'Chỉ được quyền xem và cập nhật thông tin thành viên(lưu ý không có quyền thay đổi phân quyền có cấp lớn hơn bản thân)');
INSERT INTO `role` VALUES (6, 'Product updated', 'chỉ được quyền cập nhật thông tin sản phẩm');
INSERT INTO `role` VALUES (7, 'Member import', 'Được quyền thêm thành viên\r\nLưu ý chỉ được phân quyền đồng cấp');
INSERT INTO `role` VALUES (8, 'Product import', 'Chỉ được quyền nhập sản phẩm');
INSERT INTO `role` VALUES (9, 'Member deleted', 'Được quyền xoá thành viên');
INSERT INTO `role` VALUES (10, 'Product deleted', 'Chỉ được quyền xoá sản phẩm');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'people.png',
  `fullname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` int NOT NULL DEFAULT 2,
  `deleted` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  INDEX `fk_user_deleted`(`deleted` ASC) USING BTREE,
  CONSTRAINT `fk_user_deleted` FOREIGN KEY (`deleted`) REFERENCES `deteted` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (54, 'video_thumbnail.jpg', 'Lê Thiên Trí', 54752.2, 'ttri0403@hotmail.com', '0946268770', 'bà rịa vũng tàu', 'f7404b332a2777927e6e446101fdb321', 1, 0);
INSERT INTO `user` VALUES (55, '124.jpg', 'phạm phúc toàn', 98692.08, 'phamphuctoan2003434@gmail.com', '1234567', 'hcm', 'c8b40ce5d82c9ee082ddc5ad04f8ada8', 2, 1);
INSERT INTO `user` VALUES (60, 'PM02_20230306234256.png', 'user12', 0, 'admin@admin.com', '0946268770', 'Tỉnh Bà Rịa - Vũng Tàu, Việt Nam', 'f7404b332a2777927e6e446101fdb321', 1, 0);
INSERT INTO `user` VALUES (61, 'people.png', 'Mmember', 0, 'mmember@gmail.com', '0946268770', '', 'f7404b332a2777927e6e446101fdb321', 5, 0);
INSERT INTO `user` VALUES (62, 'people.png', 'Member7', 0, 'm7@gmail.com', '', '', 'f7404b332a2777927e6e446101fdb321', 8, 1);
INSERT INTO `user` VALUES (63, 'people.png', 'ProudutM', 0, 'mproduct@gmail.com', '', '', 'f7404b332a2777927e6e446101fdb321', 7, 1);
INSERT INTO `user` VALUES (64, 'people.png', 'testnew', 0, 'test12@gmail.com', '', '', 'f7404b332a2777927e6e446101fdb321', 2, 1);
INSERT INTO `user` VALUES (65, 'people.png', 'product update', 0, 'proupdate@gmail.com', '', '', 'f7404b332a2777927e6e446101fdb321', 6, 0);
INSERT INTO `user` VALUES (66, 'people.png', 'thientrile2003@gmail.com', 10000, 'thientrile2003@gmail.com', NULL, NULL, 'f7404b332a2777927e6e446101fdb321', 1, 0);
INSERT INTO `user` VALUES (67, '_dadd4022-e0df-4a9a-94e5-3ea60e09e5e3.jpg', 'anhshell', 100000, 'lightshell1309@gmail.com', NULL, NULL, '98173ac686944d1a71396593d9cd2e5c', 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
