/*
 Navicat Premium Data Transfer

 Source Server         : trung
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : skyshop

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 12/12/2022 14:44:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id_ad` int NOT NULL,
  `UserName_ad` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Password_ad` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ad`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id_cart` int NOT NULL,
  `id_User` int NOT NULL,
  PRIMARY KEY (`id_cart`) USING BTREE,
  INDEX `id_User`(`id_User` ASC) USING BTREE,
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_User`) REFERENCES `users` (`id_User`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_product
-- ----------------------------
DROP TABLE IF EXISTS `cart_product`;
CREATE TABLE `cart_product`  (
  `id_cart` int NOT NULL,
  `id_Product` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cart`, `id_Product`) USING BTREE,
  INDEX `id_Product`(`id_Product` ASC) USING BTREE,
  CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_product_ibfk_2` FOREIGN KEY (`id_Product`) REFERENCES `products` (`id_Product`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_product
-- ----------------------------

-- ----------------------------
-- Table structure for describe
-- ----------------------------
DROP TABLE IF EXISTS `describe`;
CREATE TABLE `describe`  (
  `id_describe` int NOT NULL,
  `information` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL,
  PRIMARY KEY (`id_describe`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of describe
-- ----------------------------

-- ----------------------------
-- Table structure for oders
-- ----------------------------
DROP TABLE IF EXISTS `oders`;
CREATE TABLE `oders`  (
  `id_oder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_user` int NOT NULL,
  `id_user_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `priceSum` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `id_transporter` int NULL DEFAULT NULL,
  `date_ship` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_oder`) USING BTREE,
  INDEX `id_user`(`id_user` ASC) USING BTREE,
  INDEX `id_user_address`(`id_user_address` ASC) USING BTREE,
  INDEX `id_transporter`(`id_transporter` ASC) USING BTREE,
  CONSTRAINT `oders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_User`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `oders_ibfk_3` FOREIGN KEY (`id_transporter`) REFERENCES `transporter` (`id_transporter`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oders
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id_order_Details` int NOT NULL,
  `id_oder` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `iid_product` int NOT NULL,
  PRIMARY KEY (`id_order_Details`) USING BTREE,
  INDEX `id_oder`(`id_oder` ASC) USING BTREE,
  INDEX `iid_product`(`iid_product` ASC) USING BTREE,
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_oder`) REFERENCES `oders` (`id_oder`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`iid_product`) REFERENCES `products` (`id_Product`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `id_Product_category` int NOT NULL,
  `category_Name` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_Product_category`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_categories
-- ----------------------------

-- ----------------------------
-- Table structure for product_img
-- ----------------------------
DROP TABLE IF EXISTS `product_img`;
CREATE TABLE `product_img`  (
  `id_img` int NOT NULL,
  `id_product` int NOT NULL,
  `img_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_img`) USING BTREE,
  INDEX `id_product`(`id_product` ASC) USING BTREE,
  CONSTRAINT `product_img_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_Product`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_img
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id_Product` int NOT NULL,
  `name_Product` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_Product_category` int NOT NULL,
  `id_describe` int NOT NULL,
  `price` bigint NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number` bigint NOT NULL,
  PRIMARY KEY (`id_Product`) USING BTREE,
  INDEX `id_Product_category`(`id_Product_category` ASC) USING BTREE,
  INDEX `id_describe`(`id_describe` ASC) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_Product_category`) REFERENCES `product_categories` (`id_Product_category`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_describe`) REFERENCES `describe` (`id_describe`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for transporter
-- ----------------------------
DROP TABLE IF EXISTS `transporter`;
CREATE TABLE `transporter`  (
  `id_transporter` int NOT NULL,
  `name_transporter` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `price_ship` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_transporter`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transporter
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_User` int NOT NULL,
  `id_Ad` int NOT NULL,
  `email_user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fullName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `userName_User` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_User` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number_phone` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id_User`) USING BTREE,
  INDEX `id_Ad`(`id_Ad` ASC) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_Ad`) REFERENCES `admin` (`id_ad`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
