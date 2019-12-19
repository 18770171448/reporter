/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : reporter

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 16/12/2019 08:46:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for litemall_ad
-- ----------------------------
DROP TABLE IF EXISTS `litemall_ad`;
CREATE TABLE `litemall_ad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '广告标题',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所广告的商品页面或者活动页面链接地址',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '广告宣传图片',
  `position` tinyint(3) NULL DEFAULT 1 COMMENT '广告位置：1则是首页',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '活动内容',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '广告开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '广告结束时间',
  `enabled` tinyint(1) NULL DEFAULT 0 COMMENT '是否启动',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_ad
-- ----------------------------
INSERT INTO `litemall_ad` VALUES (1, '合作 谁是你的菜', '', 'http://yanxuan.nosdn.127.net/65091eebc48899298171c2eb6696fe27.jpg', 1, '合作 谁是你的菜', NULL, NULL, 1, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_ad` VALUES (2, '活动 美食节', '', 'http://yanxuan.nosdn.127.net/bff2e49136fcef1fd829f5036e07f116.jpg', 1, '活动 美食节', NULL, NULL, 1, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_ad` VALUES (3, '活动 母亲节', '', 'http://yanxuan.nosdn.127.net/8e50c65fda145e6dd1bf4fb7ee0fcecc.jpg', 1, '活动 母亲节5', NULL, NULL, 1, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_address
-- ----------------------------
DROP TABLE IF EXISTS `litemall_address`;
CREATE TABLE `litemall_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人名称',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户表的用户ID',
  `province` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '行政区域表的省ID',
  `city` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '行政区域表的市ID',
  `county` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '行政区域表的区县ID',
  `address_detail` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '详细收货地址',
  `area_code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地区编码',
  `postal_code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否默认地址',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收货地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_admin
-- ----------------------------
DROP TABLE IF EXISTS `litemall_admin`;
CREATE TABLE `litemall_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '管理员密码',
  `last_login_ip` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最近一次登录IP地址',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '\'' COMMENT '头像图片',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  `role_ids` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '[]' COMMENT '角色列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_admin
-- ----------------------------
INSERT INTO `litemall_admin` VALUES (1, 'admin123', '$2a$10$.rEfyBb/GURD9P2p0fRg/OAJGloGNDkJS4lY0cQHeqDgsbdTylBpu', '0:0:0:0:0:0:0:1', '2019-12-14 21:24:42', 'http://www.pxxyb.vip/fypv6lmbf9me871gdxar.jpg', '2018-02-01 00:00:00', '2019-12-14 21:24:42', 0, '[1]');
INSERT INTO `litemall_admin` VALUES (4, 'reporter', '$2a$10$kEJRCNkFKdEJe0nIXJ4hXeskQSNrf1Kgwqwr99UAptKZjw66cTwoe', '192.168.2.3', '2019-12-13 11:28:45', 'http://www.pxxyb.vip/eqavh9t4n6t9xdp2vlho.jpg', '2019-01-07 15:16:59', '2019-12-13 11:28:45', 0, '[3]');
INSERT INTO `litemall_admin` VALUES (5, 'sreporter', '$2a$10$Tk0nt7kbbEDDN0ZrYHY/UuAdC61aT6wQc4fiIIFHdGFKYk1h2my2S', '192.168.2.3', '2019-12-13 11:27:24', 'http://www.pxxyb.vip/7jarsdg6euhiea20ncl0.jpg', '2019-12-13 11:22:14', '2019-12-13 11:27:24', 0, '[2]');

-- ----------------------------
-- Table structure for litemall_brand
-- ----------------------------
DROP TABLE IF EXISTS `litemall_brand`;
CREATE TABLE `litemall_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '品牌商名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '品牌商简介',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '品牌商页的品牌商图片',
  `sort_order` tinyint(3) NULL DEFAULT 50,
  `floor_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '品牌商的商品低价，仅用于页面展示',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1046001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '品牌商表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_brand
-- ----------------------------
INSERT INTO `litemall_brand` VALUES (1001000, 'MUJI制造商', '严选精选了MUJI制造商和生产原料，\n用几乎零利润的价格，剔除品牌溢价，\n让用户享受原品牌的品质生活。', 'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png', 2, 12.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001002, '内野制造商', '严选从世界各地挑选毛巾，最终选择了为日本内野代工的工厂，追求毛巾的柔软度与功能性。品质比肩商场几百元的毛巾。', 'http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png', 10, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001003, 'Adidas制造商', '严选找到为Adidas等品牌制造商，\n选取优质原材料，与厂方一起设计，\n为你提供好的理想的运动装备。', 'http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png', 30, 49.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001007, '优衣库制造商', '严选找到日本知名服装UNIQLO的制造商，\n选取优质长绒棉和精梳工艺，\n与厂方一起设计，为你提供理想的棉袜。', 'http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png', 12, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001008, '膳魔师制造商', '严选深入保温行业内部，\n找到德国膳魔师制造商的代工厂。\n同样的品质，却有更优的价格。', 'http://yanxuan.nosdn.127.net/5fd51e29b9459dae7df8040c8219f241.png', 40, 45.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001010, '星巴克制造商', '严选寻访全国保温杯制造企业，\n最终找到高端咖啡品牌星巴克的制造商，\n专注保温杯生产20年，品质与颜值兼备。', 'http://yanxuan.nosdn.127.net/5668bc50f2f2e551891044525710dc84.png', 34, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001012, 'Wedgwood制造商', '严选寻访英国皇室御用陶瓷Wedgwood制造商，\n制模到成品，历经25道工序、7次检验、3次烧制，\n你看不见的地方，我们也在坚持。', 'http://yanxuan.nosdn.127.net/68940e8e23f96dbeb3548d943d83d5e4.png', 21, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001013, 'Royal Doulton制造商', '严选深入英国最大骨瓷品牌Royal Doulton制造商， \n顶级英国瓷器的代名词，广受世界皇室喜爱。\n每件瓷器，都有自己的故事。', 'http://yanxuan.nosdn.127.net/0de643a02043fd9680b11e21c452adaa.png', 47, 24.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001015, '日本KEYUCA制造商', 'KEYUCA是日本餐具及料理用具品牌，\n遵循极简原木风，高端餐具体验。\n严选的餐具正是来自这一品牌制造商。', 'http://yanxuan.nosdn.127.net/9b85b45f23da558be101dbcc273b1d6d.png', 49, 14.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001016, '爱慕制造商', '150家样品比对筛选，20家工厂深入走访，\n严选最终选定高端内衣爱慕制造商，\n20年品质保证，为你打造天然舒适的衣物。', 'http://yanxuan.nosdn.127.net/5104f84110eac111968c63c18ebd62c0.png', 9, 35.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001020, 'Ralph Lauren制造商', '我们与Ralph Lauren Home的制造商成功接洽，掌握先进的生产设备，传承品牌工艺和工序。追求生活品质的你，值得拥有。', 'http://yanxuan.nosdn.127.net/9df78eb751eae2546bd3ee7e61c9b854.png', 20, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001037, '新秀丽制造商', '严选为制作品质与颜值兼具的箱包，\n选定新秀丽、CK、Ricardo等品牌合作的制造商，\n拥有国内先进流水线20余条，实力保障品质。', 'http://yanxuan.nosdn.127.net/80dce660938931956ee9a3a2b111bd37.jpg', 5, 59.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001038, 'Coach制造商', '严选为制作高品质高颜值皮具配件，\n由Coach、MK等品牌制造商生产，\n由严选360度全程监制，给你带来优质皮具。', 'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png', 3, 49.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001039, 'MK制造商', '严选为制造高品质的皮具，\n选择Michael Kors品牌合作的制造工厂，\n18年专业皮具生产经验，手工至美，品质保证。', 'http://yanxuan.nosdn.127.net/fc9cd1309374f7707855de80522fb310.jpg', 17, 79.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1001045, '罗莱制造商', '严选团队为打造吸湿透气柔软的蚕丝被，\n从蚕茧原材到温感性能，多次甄选测试\n选择罗莱制造商工厂，手工处理，优质舒适。', 'http://yanxuan.nosdn.127.net/14122a41a4985d23e1a172302ee818e9.png', 45, 699.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1003000, 'Carters制造商', '来自Carters大牌代工厂生产，\n严选纯天然材料，无荧光不添加，\nITS安心标志权威检测，安全护航。', 'http://yanxuan.nosdn.127.net/efe9131599ced0297213e6ec67eb2174.png', 41, 19.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1005001, 'Goody制造商', '严选深入美国百年发饰品牌Goody制造商，\n确保每把梳子做工精湛，养护头皮。\n戴安娜王妃的最爱，你也能拥有。', 'http://yanxuan.nosdn.127.net/7c918f37de108f3687d69b39daab34eb.png', 48, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1006000, '范思哲制造商', '严选找寻意大利奢侈品牌范思哲Versace的制造商，\n致力于为用户带来精致、优雅、时尚的皮包，\n传承独特美感，体验品质生活。', 'http://yanxuan.nosdn.127.net/c80ae035387495a61a4515906205efff.png', 18, 99.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1008000, 'WPC制造商', '严选寻找日本雨伞品牌W.P.C制造商，\n采用严谨工艺以及环保材料，\n沉淀15年行业经验，打造精致雨具。', 'http://yanxuan.nosdn.127.net/c4e97cc87186ce17f9316f3ba39e220c.png', 22, 59.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1010001, '竹宝堂制造商', '严选走访河北、安徽等制刷基地，\n选定竹宝堂、丝芙兰等品牌的制造商，\n严格把关生产与质检，与您一同追求美的生活。', 'http://yanxuan.nosdn.127.net/61b0b7ae4f0163422009defbceaa41ad.jpg', 39, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1010002, '资生堂制造商', '发现美，成为美，是女性一生的追求。\n严选找寻资生堂代工厂，打造天然美妆产品，\n致力于带来更多美的体验和享受。', 'http://yanxuan.nosdn.127.net/5449236b80d1e678dedee2f626cd67c4.png', 19, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1015000, 'NITORI制造商', '宠物是人类最温情的陪伴，\n严选找寻日本最大家居品牌NITORI制造商，\n每一个脚印，都是为了更好地关怀你的TA', 'http://yanxuan.nosdn.127.net/6f3d310601b18610553c675e0e14d107.png', 43, 69.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1016002, 'HUGO BOSS制造商', '严选深入德国知名奢侈品HUGO BOSS的制造商，\n开发睡衣、睡袍、休闲裤等轻奢品质家居服，\n希望你在家的每一天都优雅精致。', 'http://yanxuan.nosdn.127.net/70ada9877b2efa82227437af3231fe50.png', 11, 45.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1018000, 'Sperry制造商', '严选团队对比多家硫化鞋制造商产品质量，\n走访多个制鞋工厂，最终选定Sperry品牌制造商，\n为你提供一双舒适有型的高品质帆布鞋。', 'http://yanxuan.nosdn.127.net/2eb12d84037346441088267432da31c4.png', 32, 199.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1021000, 'Marc Jacobs制造商', '严选寻访独立设计品牌Marc Jacobs的制造商，\n严格选材，细究纺织与生产的细节，多次打磨，\n初心不忘，为你带来优雅高档的服饰配件。', 'http://yanxuan.nosdn.127.net/c8dac4eb1a458d778420ba520edab3d0.png', 24, 69.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1022000, 'UGG制造商', '为寻找优质的皮毛一体雪地靴，\n严选走访多家雪地靴制造商，对比工艺，\n甄选UGG认可的代工厂，只为足下的优雅舒适。', 'http://yanxuan.nosdn.127.net/4d2a3dea7e0172ae48e8161f04cfa045.jpg', 29, 59.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1022001, 'Palladium制造商', '严选探访多个制鞋大厂，选定Palladium制造商，\n对比工艺选材，找到传承多年的制鞋配方，\n只为制作一款高品质休闲鞋。', 'http://yanxuan.nosdn.127.net/3480f2a4026c60eb4921f0aa3facbde8.png', 31, 249.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1023000, 'PetitBateau小帆船制造商', '为打造适合宝宝的婴童服装，\n严选团队寻找PetitBateau小帆船的品牌制造商，\n无荧光剂，国家A类标准，让宝宝穿的放心。', 'http://yanxuan.nosdn.127.net/1a11438598f1bb52b1741e123b523cb5.jpg', 25, 36.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1024000, 'WMF制造商', '严选找寻德国百年高端厨具WMF的制造商，\n选择拥有14年经验的不锈钢生产工厂，\n为你甄选事半功倍的优质厨具。', 'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png', 8, 9.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1024001, 'OBH制造商', '严选寻找OBH品牌的制造商，打造精致厨具，\n韩国独资工厂制造，严格质检，品质雕琢\n力求为消费者带来全新的烹饪体验。', 'http://yanxuan.nosdn.127.net/bf3499ac17a11ffb9bb7caa47ebef2dd.png', 42, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1024003, 'Stoneline制造商', '严选找寻德国经典品牌Stoneline的制造商，\n追踪工艺，考量细节，亲自试用，\n为你甄选出最合心意的锅具和陶瓷刀，下厨如神。', 'http://yanxuan.nosdn.127.net/3a44ae7db86f3f9b6e542720c54cc349.png', 28, 9.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1024006, 'KitchenAid制造商', '严选寻访KitchenAid品牌的制造商，\n采用德国LFGB认证食品级专用不锈钢，\n欧式简约设计，可靠安心，尽享下厨乐趣。', 'http://yanxuan.nosdn.127.net/e11385bf29d1b3949435b80fcd000948.png', 46, 98.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1025000, 'Timberland制造商', '为制作优质时尚的工装鞋靴，\n严选团队深入探访国内外制靴大厂，选择Timberland制造商，\n工厂拥有15年制鞋历史，专业品质有保证。', 'http://yanxuan.nosdn.127.net/6dcadb0791b33aa9fd00380b44fa6645.png', 37, 359.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1025001, 'Kenneth Cole制造商', '为出品优质格调的商务鞋靴，\n严选团队选择Kenneth Cole品牌合作的制造商，\n一切努力，只为打造高品质鞋靴。', 'http://yanxuan.nosdn.127.net/236322546c6860e1662ab147d6b0ba2f.jpg', 7, 349.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1026000, 'CK制造商', '严选寻访Calvin Klein品牌的制造商，\n深入世界领带第一生产地，设计与品质并重，\n致力于给消费者带来优质典雅的服饰用品。', 'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png', 1, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1026001, 'Under Armour制造商', '严选为甄选优质好袜，走访东北、新疆等产袜基地，\n最终选定Under Armour品牌的合作制造商，\n从原料、工艺、品质多维度筛选监制，保证好品质。', 'http://yanxuan.nosdn.127.net/4e93ea29b1d06fabfd24ba68a9b20a34.jpg', 35, 39.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1028000, 'Gucci制造商', '严选为设计一款优雅时尚的品质礼帽，\n找寻拥有10来年经验的大型毛毡帽厂商合作，\n坚持打造好设计、好工艺、好材质的潮流礼帽。', 'http://yanxuan.nosdn.127.net/278869cad9bf5411ffc18982686b88fb.jpg', 23, 59.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1028003, 'Burberry制造商', '为打造时尚舒适的童装系列，\n严选选择Burberry制造商，优化版型配色\n英伦风情融入经典格纹，百搭优雅气质款。', 'http://yanxuan.nosdn.127.net/07af01e281c7e0b912d162d611e22c32.jpg', 4, 99.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1033003, 'Armani制造商', '严选团队携手国际标准化专业生产厂家，\n厂家长期为Armani、Alexander wang等知名品牌代工，\n专业进口设备，精密质量把控，精于品质居家体验。', 'http://yanxuan.nosdn.127.net/981e06f0f46f5f1f041d7de3dd3202e6.jpg', 26, 199.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1033004, '爱马仕集团制造商', '严选采用欧洲一线品牌爱马仕的御用香料供应商，\n经过反复配比改良、试香调香、选品定样，\n为你带来独特馥郁的散香体验。', 'http://yanxuan.nosdn.127.net/d98470dd728fb5a91f7aceade07572b5.png', 33, 19.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1034001, 'Alexander McQueen制造商', '为制造精致实用的高品质包包，\n严选团队选择Alexander McQueen制造商，\n严格筛选，带来轻奢优雅体验。', 'http://yanxuan.nosdn.127.net/db7ee9667d84cbce573688297586699c.jpg', 16, 69.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1037000, '厚木ATSUGI制造商', '严选考究袜子品质，层层把关原料生产，\n携手12年行业生产资质的厚木品牌制造商，\n带来轻盈优雅，舒适显瘦的袜子系列。', 'http://yanxuan.nosdn.127.net/7df55c408dbac6085ed6c30836c828ac.jpg', 27, 29.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1038000, 'Birkenstock集团制造商', '为打造一双舒适的软木拖鞋，\n严选团队寻找BIRKENSTOCK集团旗下产品制造商，\n360度全程监制，舒适随脚，百搭文艺。', 'http://yanxuan.nosdn.127.net/05a2ecffb60b77e4c165bd8492e5c22a.jpg', 14, 59.90, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1038001, 'Nine West制造商', '为打造一双优雅舒适的高跟鞋，\n严选选择美国Nine West玖熙品牌的制造商，\n让美丽绽放在足尖。', 'http://yanxuan.nosdn.127.net/ad4df7848ce450f00483c2d5e9f2bfa7.png', 13, 219.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1039000, 'TEFAL制造商', '严选对标国际品质，致力于高品质生活好物，\n执着寻求优质厨房电器供应商，\n携手WMF、Tefal制造商，打造高品质厨具。', 'http://yanxuan.nosdn.127.net/2b7a07e25a3f3be886a7fb90ba975bb7.png', 44, 259.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1039001, '京瓷制造商', '严选想为你的厨房生活，带来新鲜感和活力，\n深入全国各地，选择日本京瓷等品牌代工厂，\n打造钻石系列厨具，颜值与品质兼具。', 'http://yanxuan.nosdn.127.net/3dda530605e3ab1c82d5ed30f2489473.png', 38, 89.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1040000, 'Tescom制造商', '严选为打造时尚健康的个护电器，\n选择Tescom品牌制造商，全球最大个护电器工厂之一，\n拥有20年经验，出口180多个国家，品质有保障。', 'http://yanxuan.nosdn.127.net/c17cd65971189fdc28f5bd6b78f657a7.png', 15, 59.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1041000, 'BCBG制造商', '严选从产品源头开始，每道工序质量把关，\n选择美国知名品牌BCBG的制造商合作，\n严谨匠心，致力于优质柔滑的睡衣穿搭产品。', 'http://yanxuan.nosdn.127.net/b9072023afd3621714fd5c49f140fca8.png', 36, 99.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_brand` VALUES (1046000, 'Police制造商', '严选团队选定Police品牌制造商合作，\n有11年眼镜生产资质，兼顾品质与品味，\n为你带来专业时尚的墨镜。', 'http://yanxuan.nosdn.127.net/66e2cb956a9dd1efc7732bea278e901e.png', 6, 109.00, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_cart
-- ----------------------------
DROP TABLE IF EXISTS `litemall_cart`;
CREATE TABLE `litemall_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表的用户ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品表的商品ID',
  `goods_sn` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `goods_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品货品表的货品ID',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '商品货品的价格',
  `number` smallint(5) NULL DEFAULT 0 COMMENT '商品货品的数量',
  `specifications` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `checked` tinyint(1) NULL DEFAULT 1 COMMENT '购物车中商品是否选择状态',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片或者商品货品图片',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '购物车商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_category
-- ----------------------------
DROP TABLE IF EXISTS `litemall_category`;
CREATE TABLE `litemall_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类目名称',
  `keywords` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '类目关键字，以JSON数组格式',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类目广告语介绍',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父类目ID',
  `icon_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类目图标',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '类目图片',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'L1',
  `sort_order` tinyint(3) NULL DEFAULT 50 COMMENT '排序',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1005003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '类目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_category
-- ----------------------------
INSERT INTO `litemall_category` VALUES (1005000, '新闻稿', '', '采访新闻', 0, 'http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png', 'http://yanxuan.nosdn.127.net/e8bf0cf08cf7eda21606ab191762e35c.png', 'L1', 2, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_category` VALUES (1005001, '文学稿', '', '文学创作', 0, 'http://yanxuan.nosdn.127.net/ad8b00d084cb7d0958998edb5fee9c0a.png', 'http://yanxuan.nosdn.127.net/3708dbcb35ad5abf9e001500f73db615.png', 'L1', 3, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_category` VALUES (1005002, '微信推文', '', '多层次，宽领域', 0, 'http://yanxuan.nosdn.127.net/c9280327a3fd2374c000f6bf52dff6eb.png', 'http://yanxuan.nosdn.127.net/fb670ff3511182833e5b035275e4ac09.png', 'L1', 9, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_collect
-- ----------------------------
DROP TABLE IF EXISTS `litemall_collect`;
CREATE TABLE `litemall_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户表的用户ID',
  `value_id` int(11) NOT NULL DEFAULT 0 COMMENT '如果type=0，则是商品ID；如果type=1，则是专题ID',
  `type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '收藏类型，如果type=0，则是商品ID；如果type=1，则是专题ID',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `goods_id`(`value_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_comment
-- ----------------------------
DROP TABLE IF EXISTS `litemall_comment`;
CREATE TABLE `litemall_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) NOT NULL DEFAULT 0 COMMENT '如果type=0，则是商品评论；如果是type=1，则是专题评论。',
  `type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '评论类型，如果type=0，则是商品评论；如果是type=1，则是专题评论；如果type=3，则是订单商品评论。',
  `content` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户表的用户ID',
  `has_picture` tinyint(1) NULL DEFAULT 0 COMMENT '是否含有图片',
  `pic_urls` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `star` smallint(6) NULL DEFAULT 1 COMMENT '评分， 1-5',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_value`(`value_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_comment
-- ----------------------------
INSERT INTO `litemall_comment` VALUES (1, 191201, 0, '写的不错', 1, 1, '[\"http://www.pxxyb.vip/buiv1ww5qb4s7x6p6kes.jpg\"]', 1, '2019-12-11 00:00:00', '2019-12-11 00:00:00', 0);
INSERT INTO `litemall_comment` VALUES (2, 191202, 0, '有待加强', 2, 1, '[\"http://www.pxxyb.vip/buiv1ww5qb4s7x6p6kes.jpg\"]', 1, '2019-12-11 00:00:00', '2019-12-01 00:00:00', 0);
INSERT INTO `litemall_comment` VALUES (3, 191203, 0, '很好！', 3, 1, '[\"http://www.pxxyb.vip/buiv1ww5qb4s7x6p6kes.jpg\"]', 1, '2019-12-26 00:00:00', '2019-08-02 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_coupon
-- ----------------------------
DROP TABLE IF EXISTS `litemall_coupon`;
CREATE TABLE `litemall_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '优惠券名称',
  `desc` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '优惠券介绍，通常是显示优惠券使用限制文字',
  `tag` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '优惠券标签，例如新人专用',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '优惠券数量，如果是0，则是无限量',
  `discount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠金额，',
  `min` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '最少消费金额才能使用优惠券。',
  `limit` smallint(6) NULL DEFAULT 1 COMMENT '用户领券限制数量，如果是0，则是不限制；默认是1，限领一张.',
  `type` smallint(6) NULL DEFAULT 0 COMMENT '优惠券赠送类型，如果是0则通用券，用户领取；如果是1，则是注册赠券；如果是2，则是优惠券码兑换；',
  `status` smallint(6) NULL DEFAULT 0 COMMENT '优惠券状态，如果是0则是正常可用；如果是1则是过期; 如果是2则是下架。',
  `goods_type` smallint(6) NULL DEFAULT 0 COMMENT '商品限制类型，如果0则全商品，如果是1则是类目限制，如果是2则是商品限制。',
  `goods_value` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '[]' COMMENT '商品限制值，goods_type如果是0则空集合，如果是1则是类目集合，如果是2则是商品集合。',
  `code` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '优惠券兑换码',
  `time_type` smallint(6) NULL DEFAULT 0 COMMENT '有效时间限制，如果是0，则基于领取时间的有效天数days；如果是1，则start_time和end_time是优惠券有效期；',
  `days` smallint(6) NULL DEFAULT 0 COMMENT '基于领取时间的有效天数days。',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '使用券开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '使用券截至时间',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券信息及规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_coupon
-- ----------------------------
INSERT INTO `litemall_coupon` VALUES (1, '限时满减券', '全场通用', '无限制', 0, 5.00, 99.00, 1, 0, 0, 0, '[]', NULL, 0, 10, NULL, NULL, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_coupon` VALUES (2, '限时满减券', '全场通用', '无限制', 0, 10.00, 99.00, 1, 0, 0, 0, '[]', NULL, 0, 10, NULL, NULL, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_coupon` VALUES (3, '新用户优惠券', '全场通用', '无限制', 0, 10.00, 99.00, 1, 1, 0, 0, '[]', NULL, 0, 10, NULL, NULL, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_coupon` VALUES (8, '可兑换优惠券', '全场通用', '仅兑换领券', 0, 15.00, 99.00, 1, 2, 0, 0, '[]', 'DC6FF8SE', 0, 7, NULL, NULL, '2018-12-23 09:29:57', '2018-12-23 09:29:57', 0);

-- ----------------------------
-- Table structure for litemall_coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `litemall_coupon_user`;
CREATE TABLE `litemall_coupon_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `coupon_id` int(11) NOT NULL COMMENT '优惠券ID',
  `status` smallint(6) NULL DEFAULT 0 COMMENT '使用状态, 如果是0则未使用；如果是1则已使用；如果是2则已过期；如果是3则已经下架；',
  `used_time` datetime(0) NULL DEFAULT NULL COMMENT '使用时间',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '有效期截至时间',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单ID',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券用户使用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_feedback
-- ----------------------------
DROP TABLE IF EXISTS `litemall_feedback`;
CREATE TABLE `litemall_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户表的用户ID',
  `username` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名称',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `feed_type` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '反馈类型',
  `content` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '反馈内容',
  `status` int(3) NOT NULL DEFAULT 0 COMMENT '状态',
  `has_picture` tinyint(1) NULL DEFAULT 0 COMMENT '是否含有图片',
  `pic_urls` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址列表，采用JSON数组格式',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_value`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '意见反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_footprint
-- ----------------------------
DROP TABLE IF EXISTS `litemall_footprint`;
CREATE TABLE `litemall_footprint`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户表的用户ID',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '浏览商品ID',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户浏览足迹表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_goods
-- ----------------------------
DROP TABLE IF EXISTS `litemall_goods`;
CREATE TABLE `litemall_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品编号',
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `category_id` int(11) NULL DEFAULT 0 COMMENT '商品所属类目ID',
  `brand_id` int(11) NULL DEFAULT 0,
  `gallery` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品宣传图片列表，采用JSON数组格式',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品关键字，采用逗号间隔',
  `brief` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品简介',
  `is_on_sale` tinyint(1) NULL DEFAULT 1 COMMENT '是否上架',
  `sort_order` smallint(4) NULL DEFAULT 100,
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品页面商品图片',
  `share_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品分享朋友圈图片',
  `is_new` tinyint(1) NULL DEFAULT 0 COMMENT '是否新品首发，如果设置则可以在新品首发页面展示',
  `is_hot` tinyint(1) NULL DEFAULT 0 COMMENT '是否人气推荐，如果设置则可以在人气推荐页面展示',
  `unit` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '’件‘' COMMENT '商品单位，例如件、盒',
  `counter_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '专柜价格',
  `retail_price` decimal(10, 2) NULL DEFAULT 100000.00 COMMENT '零售价格',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '商品详细介绍，是富文本格式',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_sn`(`goods_sn`) USING BTREE,
  INDEX `cat_id`(`category_id`) USING BTREE,
  INDEX `brand_id`(`brand_id`) USING BTREE,
  INDEX `sort_order`(`sort_order`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1181006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品基本信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_goods
-- ----------------------------
INSERT INTO `litemall_goods` VALUES (1006010, '1006010', '省委宣讲团在我校宣讲党的十九届四中全会精神', 1008008, 0, '[]', '', '认真学习！', 0, 16, 'http://www.pxxyb.vip/6bv47rkgzzz5mpun96ie.jpg', '', 0, 0, '件', 97.00, 659.00, '<p>&nbsp;</p>\n<p style=\"text-indent: 2em;\">本报讯 11月23日上午，根据省委统一部署，省委宣讲团成员、省委党史研究室主任俞银先莅临我校音乐厅宣讲党的十九届四中全会精神。宣讲会由党委书记陈金印主持，党委理论学习中心组成员，全校处级以上干部，全体教工党员、学生党员，离退休党员代表，师生代表800余人参加宣讲会。</p>\n<p style=\"text-indent: 2em;\">宣讲伊始，俞银先就开宗明义：这次全会通过的《决定》意义重大。</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 他运用大量具体事实和数据，引用丰富的历史材料，精辟诠释中国特色社会主义制度和国家治理体系的显著优越性，就准确把握坚持和完善中国特色社会主义制度、推进国家治理体系和治理能力现代化的总体要求、总体目标和重点任务，进行了深入解读。</p>\n<p style=\"text-indent: 2em;\">陈金印在总结讲话时指出，要坚持社会主义办学方向，努力提高师生政治素质。要把学习宣传贯彻十九届四中全会精神作为锤炼政治品格的重</p>\n<p>大实践，要在教书育人&ldquo;三全育人&rdquo;的工作中传承红色基因，积极引导和正面影响学生，努力提高自身的思想政治素质，始终忠于党和人民的教育事业，自觉贯彻党的教育方针，办好党和人民满意的教育。</p>\n<p style=\"text-indent: 2em;\">陈金印强调，要走好新时代群众路线，坚定不移践行以人民为中心的发展思想。走好新时代群众路线，坚持和完善&ldquo;三联系&rdquo;制度，创新密切联系群众的制度，围绕学校党委中心工作，统筹学习型、服务型、创新型&ldquo;三型&rdquo;党组织建设，继续推进&ldquo;连心、强基、模范&rdquo;三大工程建设，强化党组织的政治属性、教育功能和服务意识。必须把握内在要求，坚定不移提高依法治校水平。要坚持依法治校、依法执政、依法行政共同推进，科学制定学校各项规章制度、深入推进按章办事、切实提高依法治校水平，不断解放和增强办学活力。</p>\n<p style=\"text-indent: 2em;\">台上讲得生动精彩，台下听得认真专注。师生们一致认为，今天上了一堂难忘的高品质、高水平的思想政治理论课，很受启发和鼓舞。16级思想政治教育专业的学生廖妍婷说：&ldquo;听了报告，深感责任重大。作为一名思政专业的学生，一定要认真学习好四中全会精神，坚定理想信念，更好地实现人生价值</p>', '2018-02-01 00:00:00', '2019-12-12 10:53:35', 0);
INSERT INTO `litemall_goods` VALUES (1006013, '1006013', '2019年赣鄂两省古代文学年会在我校召开', 1036000, 1001045, '[]', '', '不错的新闻', 1, 7, 'http://www.pxxyb.vip/yxd70ysvc5qpuechnmy3.jpg', '', 0, 1, '件', 98.00, 699.00, '<p style=\"text-indent: 2em;\">本报讯 &ldquo;以文会友天下士，见贤思齐四海心&rdquo;。11月16日，2019年赣鄂两省古代文学年会在我校召开，来自江西、湖北的100余名专家学者和代表出席会议。</p>\n<p style=\"text-indent: 2em;\">开幕式上，副校长刘卫林教授致欢迎词，并介绍了学校的发展历程、现状及未来规划。他希望与会专家借此机会，加强古代文学相关问题的学术研讨，加强两省院校的学习交流，让古代文学在新时代焕发出勃勃生机。江西省文艺学会副会长包礼祥教授代</p>\n<p>表江西省文艺学会讲话，江西省古代文学学会(第四届理事会)会长杜华平教授致开幕词。人文与传媒学院院长易志文主持开幕式。</p>\n<p style=\"text-indent: 2em;\">开幕式后，与会代表围绕古代文学研究热点问题、赣西古代文学资源挖掘与研究等议题展开小组讨论，并进行大会发言。湖北工程学院黄晔、江西师范大学赵家晨、长江大学李征宇、江西省社会科学院黎清、三峡大学黄威、上饶师范学院陈力士、黄冈师范学院许怀之、萍乡学院何东萍分</p>\n<p>别就先秦遥谚理论、民国江西词人群体、岑参与江陵关系、宋代江西籍进士的文学与文化贡献、&ldquo;吴西塞&rdquo;还是&ldquo;楚西塞&rdquo;、朱熹《家礼》中&ldquo;家&rdquo;的政治伦理学内涵、《四大南戏》之说在近代的典范化、文廷式相关研究进行交流探讨。</p>\n<p style=\"text-indent: 2em;\">本次赣鄂两省古代文学年会的成功召开，对推动赣鄂古代文学学科的发展，加强赣鄂两省学者间的沟通与交流，都起到了积极的作用。</p>\n<p style=\"text-indent: 2em;\">（文传学院）</p>', '2018-02-01 00:00:00', '2019-12-12 10:53:44', 0);
INSERT INTO `litemall_goods` VALUES (1006014, '1006014', '校党委理论学习中心组\r\n召开会议', 1008008, 1001045, '[\"http://www.pxxyb.vip/s6cci64skz1aqvzou6iu.jpg\"]', '', '围绕“学习贯彻党的十九届四中全会精神”交流研讨', 1, 15, 'http://www.pxxyb.vip/4k0dqnna9fpieobmc2w8.jpg', '', 0, 1, '件', 90.00, 1399.00, '<p>本报讯&nbsp; 11月15日，校党委理论学习中心组在至善楼第一会议室举行党的十九届四中全会精神专题学习研讨会。会议由党委书记陈金印主持，校党委理论学习中心组全体成员参加学习。</p>\n<p style=\"text-indent: 2em;\">&ldquo;通过反复研读、深学细思、深刻领悟全会公报，更加坚定了对党绝对忠诚、对总书记绝对拥护的政治自信；更加坚定了对坚持走好中国特色社会主义道路的道路自信；更加坚定了对统筹推进&lsquo;四个全面&rsquo;战略布局的发展自信。&rdquo;</p>\n<p style=\"text-indent: 2em;\">&ldquo;我们只有坚定对党的绝对忠诚和对核心的绝对拥护，坚决维护党中央权威，坚决从思想上政治上行动上同以习近平同志为核心的党中央保持高度一致，才能不断提高依法治校的能力和水平，才能不断推进各项治国理政、全面从严治党的制度化、法律化。&rdquo;</p>\n<p style=\"text-indent: 2em;\">&ldquo;要贯彻落实好党委领导下的校长负责制，一是借主题教育契机，建立健全适应新时代要求科学的、完善的、配套的现代大学治理体系，包括管理制度体系、激励制度体系、问责制度体系等；二是严格执行现代大学治理体系，规范抓好学校管理与建设，要在同类院校中走前列做表率；三要分期分批加强对干部的教育，提高领导干部治理现代大学的治理能力与治理水平。&rdquo;</p>\n<p style=\"text-indent: 2em;\">校党委理论学习中心组全体成员结合&ldquo;不忘初心、牢记使命&rdquo;主题教育和自身工作实际，分享交流了学习党的十九届四中全会精神的心得体会。大家认为，党的十九届四中全会意义重大，对中国特色社会主义制度建设做出了全面部署，将努力学习领会全会精神，把学习成果运用于实践，为学校迎评促建贡献力量。</p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议强调，一定要把习近平总书记重要讲话精神和党的十九届四中全会精神学习好、领会好、贯彻好，做到坚持学思践悟、学通弄懂、学以致用，真正用先进思想武装头脑、指导实践、推动工作，把会议精神切切实实转化为推动高质量发展的强大动力；要严格履行全面从严治党&ldquo;两个责任&rdquo;，把管党治党政治责任牢牢扛在肩上、抓在手中，持续推进落实中央八项规定精神和实施细则要求，充分运用好执纪监督&ldquo;四种形态&rdquo;，坚决查处顶风违纪违规行为，坚决惩治师德师风败坏行为，坚决纠正执纪宽松软问题，努力建设风清气正的校园政治生态。</p>\n<p style=\"text-indent: 2em;\">（尹杰）</p>\n<p>&nbsp;<strong>&nbsp;&nbsp;&nbsp; </strong><strong>专题学习省委十四届十次全会精神</strong></p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 本报讯 11月30日下午，校党委理论学习中心组在至善楼第一会议室举行省委十四届十次全会精神专题学习会。会议传达学习了省委十四届十次全会精神，研究贯彻落实意见。会议由党委书记陈金印主持，校党委理论学习中心组全体成员参加学习。</p>\n<p style=\"text-indent: 2em;\">陈金印指出，省委十四届十次全会是我省深入学习贯彻党的十九届四中全会精神，全面贯彻落实党中央《决定》而召开的一次重要会议。全会通过的省委《实施意见》，为我省坚持和完善中国特色社会主义制度、推进治理体系和治理能力现代化作出具体安排部署。</p>\n<p style=\"text-indent: 2em;\">陈金印强调，要深入领会全会精神实质，切实把思想行动统一到省委决策部署上来，全面落实习近平总书记视察江西重要讲话精神，凝心聚力、真抓实干，为实现学校高质量跨越式发展注入新的精神动力。</p>\n<p style=\"text-indent: 2em;\">最后，陈金印就贯彻落实全会精神，提出了四点要求：一是要把学习宣传贯彻全会精神作为当前的一项重要政治任务，深入开展学习研讨交流；二是要在全校宣讲党的十九届四中全会精神的同时，与省委十四届十次全会精神结合起来；三是要结合实际，完善学校的治理体系，提高依法治校能力和水平；四是要围绕高质量发展要求，加快学校转型步伐，服务地方经济社会发展。</p>\n<p style=\"text-indent: 2em;\">（宣传部）</p>\n<p>&nbsp;</p>', '2018-02-01 00:00:00', '2019-12-12 10:57:32', 0);
INSERT INTO `litemall_goods` VALUES (1181005, '1233', '烦烦烦', 0, 0, '[]', '', 'ww', 1, 100, 'http://www.pxxyb.vip/el464fhibnqg6zndtwja.jpg', NULL, 1, 0, '’件‘', 31.00, 100000.00, '<p>大大方方</p>', '2019-12-12 10:56:57', '2019-12-12 10:56:57', 1);

-- ----------------------------
-- Table structure for litemall_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `litemall_goods_attribute`;
CREATE TABLE `litemall_goods_attribute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品表的商品ID',
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品参数名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品参数值',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 887 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_goods_attribute
-- ----------------------------
INSERT INTO `litemall_goods_attribute` VALUES (1, 1006002, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (2, 1006002, '适用床尺寸', '1.5米+1.8米通用', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (3, 1006002, '件数', '4件', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (4, 1006002, '工艺', '刺绣', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (5, 1006002, '执行标准', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (6, 1006002, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (7, 1006002, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (8, 1006007, '填充物重量', '2000g/2300g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (9, 1006007, '尺寸', '200*230cm/220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (10, 1006007, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (11, 1006007, '填充物', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (12, 1006007, '温馨提示', '1.经过碳化、清洗、梳理的天然羊毛被带会有少量味道，通风晾晒2-3天即可散去                     2.为减少羊毛漂白等化学用品的处理时间，部分羊毛可能未完全脱色，轻微泛黄属羊毛原色，为正常现象。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (13, 1006010, '填充物重量', '2000g/2300g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (14, 1006010, '尺寸', '200*230cm/220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (15, 1006010, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (16, 1006010, '填充物', '超细羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (17, 1006010, '温馨提示', '1.经过碳化、清洗、梳理的天然羊毛被带会有少量味道，通风晾晒2-3天即可散去                                        2.为减少羊毛漂白等化学用品的处理时间，部分羊毛可能未完全脱色，轻微泛黄属羊毛原色，为正常现象。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (18, 1006013, '尺寸', '200*230cm/ 220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (19, 1006013, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (20, 1006013, '填充物', '100%双宫茧桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (21, 1006013, '填充物重量', '0.5KG/1KG', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (22, 1006013, '温馨提示', '天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (23, 1006014, '尺寸', '200*230cm/ 220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (24, 1006014, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (25, 1006014, '填充物', '100%双宫茧桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (26, 1006014, '填充物重量', '0.5+1.5KG/1+2KG', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (27, 1006014, '温馨提示', '天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_attribute` VALUES (28, 1009009, '尺寸', '200*230cm/220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (29, 1009009, '填充成分', '白鹅绒', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (30, 1009009, '面料成分', '60%棉 40%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (31, 1009009, '填充物重量', '1500g/1700g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (32, 1009009, '含绒量', '95%', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (33, 1009009, '工艺', '双层立衬', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (34, 1009012, '尺寸', '48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (35, 1009012, '面料成分', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (36, 1009012, '填充成分', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (37, 1009012, '重量', '1000g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (38, 1009012, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (39, 1009012, '温馨提示', '枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (40, 1009013, '尺寸', '48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (41, 1009013, '面料成分', '70%高模量聚酯+30%聚酰胺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (42, 1009013, '填充成分', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (43, 1009013, '重量', '1000g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (44, 1009013, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (45, 1009013, '温馨提示', '枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (46, 1009024, '规格', '65*65*43cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (47, 1009024, '外套材质', '外套帆布：100%棉；外套弹力布：锦纶80%氨纶20%', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (48, 1009024, '内胆材质', '内胆面料：100%锦纶；填充物：聚苯乙烯（发泡粒子）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (49, 1009024, '*温馨提示', '本品为人工填充粒子，重量难免会有误差，敬请谅解。同时产品在运输过程中受挤压，也可能会造成凹陷。储存时请避免重物挤压以引起泡沫粒子塌陷。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (50, 1010000, '材质', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (51, 1010000, '尺寸', '200*150cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (52, 1010000, '温馨提示', '1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (53, 1010001, '材质', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (54, 1010001, '规格', '200*150cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (55, 1010001, '温馨提示', '1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (56, 1011004, '面料成分', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (57, 1011004, '安全技术', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (58, 1011004, '规格', '150×200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (59, 1011004, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (60, 1011004, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (61, 1011004, '重量', '1800g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (62, 1011004, '温馨提示', '1.深色纯棉毛巾被在织造染色过程中，巾面更易产生微细的纤维浮绒，使用前建议用清水漂洗1-2次，即可去掉产品上的浮绒。\n2.在洗涤时一定要注意不要与衣服混在一起机洗，强力的搓洗会引起掉毛或勾线现象。\n3.纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (63, 1015007, '尺寸', '45cm*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (64, 1015007, '面料成份', '100%全棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (65, 1015007, '内芯面料', '100%全棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (66, 1015007, '填充物', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (67, 1015007, '重量', '470g（内芯）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (68, 1015007, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (69, 1019000, '填充成分', '聚醚型聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (70, 1019000, '面料成分', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (71, 1019000, '尺寸', '50cm×30cm×9cm-7cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (72, 1019000, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (73, 1019000, '适用人数', '单人', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (74, 1019000, '温馨提示', '1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。                                                                                  2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (75, 1019001, '填充成分', '聚醚型聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (76, 1019001, '面料成分', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (77, 1019001, '尺寸', '50cm×30cm×10cm-6cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (78, 1019001, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (79, 1019001, '适用人数', '单人', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (80, 1019001, '温馨提示', '1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。 2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (81, 1019002, '填充成分', '聚醚型聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (82, 1019002, '面料成分', '聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (83, 1019002, '尺寸', '135cm×36cm×10cm-7cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (84, 1019002, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (85, 1019002, '适用人数', '双人', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (86, 1019002, '温馨提示', '1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (87, 1019006, '面料成分', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (88, 1019006, '填充成分', '20% 夜交藤+80% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (89, 1019006, '尺寸', '48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (90, 1019006, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (91, 1019006, '适用人数', '单人', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (92, 1019006, '温馨提示', '1.植物填充，遇梅雨季节需要通风、干燥保存。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (93, 1020000, '填充成分', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (94, 1020000, '面料成分', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (95, 1020000, '尺寸', '33cm×31cm×10cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (96, 1020000, '颜色', '灰色条纹/粉色条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (97, 1021004, '材质', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (98, 1021004, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (99, 1021004, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (100, 1021004, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (101, 1021004, '温馨提示', '1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (102, 1021010, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (103, 1021010, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (104, 1021010, '产地', '江苏南通', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (105, 1021010, '根数', '200根', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (106, 1021010, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (107, 1021010, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (108, 1022000, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (109, 1022000, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (110, 1022000, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (111, 1022000, '根数', '200根', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (112, 1022000, '尺寸', '被套200*230cm；床单245*250cm；枕套48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (113, 1022000, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (114, 1022001, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (115, 1022001, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (116, 1022001, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (117, 1022001, '根数', '200根', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (118, 1022001, '尺寸', '被套200*230cm；床单245*250cm；枕套48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (119, 1022001, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (120, 1023012, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (121, 1023012, '尺寸', '180*220cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (122, 1023012, '安全技术类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (123, 1023012, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (124, 1023012, '重量', '1480g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (125, 1023012, '温馨提示', '1.深色纯棉毛巾被在织造染色过程中，巾面更易产生微细的纤维浮绒，使用前建议用清水漂洗1-2次，即可去掉产品上的浮绒。\n2.在洗涤时一定要注意不要与衣服混在一起机洗，强力的搓洗会引起掉毛或勾线现象。\n3.纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (126, 1023032, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (127, 1023032, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (128, 1023032, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (129, 1023032, '根数', '200根', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (130, 1023032, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (131, 1023032, '工艺', '色织工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (132, 1023032, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (133, 1023034, '材质', '正面：100%棉  背面：15%棉  85%涤   底衬：100%涤', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (134, 1023034, '填充物', '70% 白鸭绒  30%白鸭绒片', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (135, 1023034, '克重', '250g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (136, 1023034, '产地', '中国', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (137, 1023034, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (138, 1023034, '颜色', '水银灰/ 水蓝/ 水粉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (139, 1027004, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (140, 1027004, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (141, 1027004, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (142, 1027004, '颜色', '灰白格/粉白格', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (143, 1027004, '重量', '1136g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (144, 1029005, '材质', '65% 天丝 35% 亚麻', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (145, 1029005, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (146, 1029005, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (147, 1029005, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (148, 1029005, '颜色', '渐变紫 / 渐变绿', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (149, 1029005, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (150, 1030001, '材质', '面纱：100%羊毛  底纱：55.7%棉  27.1%聚酯纤维  4.7%羊毛   12.5%其他', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (151, 1030001, '产地', '印度', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (152, 1030001, '执行标准', 'QB/T 2756-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (153, 1030001, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (154, 1030001, '工艺', '手工编织', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (155, 1030001, '温馨提示', '1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (156, 1030002, '材质', '绒面：93%羊毛  7%腈纶 衬背：100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (157, 1030002, '产地', '印度', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (158, 1030002, '执行标准', 'GB/T 27729-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (159, 1030002, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (160, 1030002, '工艺', '手工枪刺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (161, 1030002, '温馨提示', '1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (162, 1030003, '材质', '面纱： 100%羊毛  底纱： 88.3%棉   11.7%其他', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (163, 1030003, '产地', '印度', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (164, 1030003, '执行标准', 'QB/T 2756-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (165, 1030003, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (166, 1030003, '工艺', '手工编织', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (167, 1030003, '温馨提示', '1：羊毛材质存在一点羊骚味实属正常情况，建议开窗通风，多散散味道即可。\n2：羊毛地毯刚刚开始使用的时候多多少少都会有一点掉毛的情况，建议开始使用的时候用吸尘器多吸几次，之后掉毛的情况就会有改善。  \n3：因为天然羊毛材质，所以脚感会有一点点刺，不属于产品质量问题。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (168, 1030004, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (169, 1030004, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (170, 1030004, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (171, 1030004, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (172, 1030004, '颜色', '蓝色/ 灰色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (173, 1030004, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (174, 1030005, '材质', '100%亚麻', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (175, 1030005, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (176, 1030005, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (177, 1030005, '颜色', '橙色/ 灰色/ 黄色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (178, 1030005, '工艺', '水洗工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (179, 1030005, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (180, 1030005, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (181, 1030006, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (182, 1030006, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (183, 1030006, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (184, 1030006, '执行标准', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (185, 1030006, '颜色', '红色/ 黄色/ 蓝色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (186, 1030006, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (187, 1035006, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (188, 1035006, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (189, 1035006, '尺寸', '长61*宽43cm / 长86*宽53cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (190, 1035006, '工艺', '手工制作', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (191, 1035006, '执行标准', 'GB/T 26850-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (192, 1035006, '温馨提示', '纯棉材质在织造染色过程中，表面不可避免会产生微细的纤维浮绒，使用前清水漂洗1-2次，即可去掉浮绒。不属于产品质量问题。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (193, 1036002, '面料成分', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (194, 1036002, '填充物', '100% 高山苦荞麦壳', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (195, 1036002, '规格', '74×48cm±1cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (196, 1036002, '填充物重量', '3KG', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (197, 1036002, '温馨提示', '1.天然植物填充，遇梅雨季节需要干燥保存，如有少量飞虫产生，太阳下晒3小时即可去除。 \n2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (198, 1036013, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (199, 1036013, '尺寸', '150*200*25cm/ 180*200*25cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (200, 1036013, '执行标准', 'FZ/T 62028-2015', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (201, 1036013, '工艺', '双捻工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (202, 1036013, '产地', '浙江 江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (203, 1036013, '温馨提示', '1：针织棉面料因为工艺不可避免原因，使用一段时间后会出现起毛起球现象，使用去毛机修理一下即可。\n2：因为针织的编织工艺，成品在使用过程中会有轻微的变型，不影响使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (204, 1036016, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (205, 1036016, '尺寸', '150*200cm/ 180*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (206, 1036016, '执行标准', 'GB/T 22797-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (207, 1036016, '工艺', '色织水洗工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (208, 1036016, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (209, 1037011, '规格', '1.5/1.8m*2m*5cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (210, 1037011, '外层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (211, 1037011, '里层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (212, 1037011, '内芯', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (213, 1037011, '温馨提示', '1.记忆绵产品为进口环保化学材质聚氨酯发泡而成，刚打开包装会有少量聚氨酯气体产生，拆除外套通风除味3-5天即可。\n 2.床垫商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款床垫，挑选最舒适的进行使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (214, 1037012, '填充物', '100%高山苦荞', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (215, 1037012, '尺寸', '40*8cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (216, 1037012, '外用面料', '45%麻45%棉10%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (217, 1037012, '温馨提示', '1.天然植物填充，遇梅雨季节需要干燥保存，如有少量飞虫产生，太阳下晒3小时即可去除。\n 2.枕芯类商品受身高、体型、睡眠习惯不同，产生不同的使用体验，建议多试睡几款枕头，挑选最适合的进行使用。\n3.建议每次使用时间控制在15分钟以内。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (218, 1037012, '商品重量', '0.45kg+-0.05kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (219, 1039051, '规格', '33*24*14cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (220, 1039051, '外层面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (221, 1039051, '里层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (222, 1039051, '内芯', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (223, 1039051, '安全技术', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (224, 1039051, '*温馨提示', '1,水洗时请将外套取下，用冷水洗涤后置于阴凉处阴干或烘干。不能同褪色衣物同洗，以防沾污、沾色。\n2,外套洗后稍有缩水是正常现象，因是弹性织物，仅需四周拉一下长度即可。\n3,记忆棉不可水洗，请经常保持产品干燥，定期通风（不可曝晒）。若不慎打湿，立即用干毛巾将水分吸干，置于通风处阴干或用冷吹风吹干即可。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (225, 1043005, '坐垫外层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (226, 1043005, '坐垫内芯材料', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (227, 1043005, '执行标准', 'GB/T22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (228, 1043005, '方形尺寸', '36*36*3cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (229, 1043005, '圆形尺寸', 'Φ34*3cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (230, 1043005, '坐垫套面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (231, 1043005, '*温馨提示', '1,水洗时请将外套取下，用冷水洗涤后置于阴凉处阴干或烘干。不能同褪色衣物同洗，以防沾污、沾色。\n2,外套洗后稍有缩水是正常现象，因是弹性织物，仅需四周拉一下长度即可。\n3,记忆棉不可水洗，请经常保持产品干燥，每隔一段时间用吸尘器清理内芯落尘或用手轻轻拍打内芯，放在通风阴凉处适当晾晒即可。。若不慎打湿，立即用干毛巾将水分吸干，置于通风处阴干或用冷吹风吹干即可。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (232, 1044012, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (233, 1044012, '材质', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (234, 1044012, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (235, 1044012, '安全及时', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (236, 1044012, '温馨提示', '1.羊毛毯采取传统机织工艺，纯天然织造的，直接接触皮肤会有轻微扎人。\n2.初次使用时会有少量浮毛，建议干洗处理。\n3.商品为纯羊毛织造而成，若有少量气味请通风2-3天去除。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (237, 1046044, '材质', '100%美利奴羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (238, 1046044, '重量', '1260g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (239, 1046044, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (240, 1046044, '执行标准', 'FZ/T 61001-2006', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (241, 1046044, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (242, 1048005, '面料', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (243, 1048005, '尺寸', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (244, 1048005, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (245, 1048005, '颜色', '真朱红/ 薄缥蓝/ 枯野灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (246, 1048005, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (247, 1048005, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (248, 1055012, '材质', '外壳：100% 纯棉  内充：100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (249, 1055012, '克重', '600G/ 1400G', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (250, 1055012, '尺寸', '45*45cm / 66*66cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (251, 1055012, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (252, 1055012, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (253, 1055016, '颜色', '珍珠粉/ 宝石蓝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (254, 1055016, '尺寸', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (255, 1055016, '材质', '主面料：100% 棉\n填充：100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (256, 1055016, '克重', '600G', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (257, 1055016, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (258, 1055016, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (259, 1057036, '尺寸', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (260, 1057036, '颜色', '灰紫/ 蓝色/ 灰色/ 咖色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (261, 1057036, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (262, 1057036, '填充克重', '600G', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (263, 1057036, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (264, 1057036, '材质', '面料：100% 亚麻\n内芯面料：100%棉\n填充：100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (265, 1057036, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (266, 1064000, '尺寸', '38*38*30cm/60*55*20cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (267, 1064000, '产品标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (268, 1064000, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (269, 1064000, '颜色', '米色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (270, 1064002, '尺寸', '40R/60R', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (271, 1064002, '产品标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (272, 1064002, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (273, 1064002, '填充物重量', '110g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (274, 1064002, '颜色', '蓝白', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (275, 1064003, '产品标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (276, 1064003, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (277, 1064003, '尺寸', '29*19cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (278, 1064003, '颜色', '藏青色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (279, 1064004, '产品标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (280, 1064004, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (281, 1064004, '规格', '32*32*32cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (282, 1064004, '颜色', '牛仔条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (283, 1064006, '尺寸', '50x30x10-6cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (284, 1064006, '重量', '0.87kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (285, 1064006, '外层面料', '40%棉60%聚酯纤维（接触皮肤面全棉）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (286, 1064006, '里层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (287, 1064006, '内芯', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (288, 1064007, '规格', '135x36x10-7cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (289, 1064007, '重量', '2.3kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (290, 1064007, '外层面料', '40%棉60%聚酯纤维（接触皮肤面全棉）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (291, 1064007, '里层面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (292, 1064007, '内芯', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (293, 1064021, '颜色', '本白', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (294, 1064021, '执行标准', 'GB 7000.11-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (295, 1064021, '额定电压', '220-240V', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (296, 1064021, '型号', 'T710', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (297, 1064021, '温馨提示', '本产品不包含灯泡', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (298, 1064021, '产地', '中国中山', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (299, 1064022, '颜色', '本白', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (300, 1064022, '执行标准', 'GB 7000.11-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (301, 1064022, '型号', 'F710', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (302, 1064022, '额定电压', '220-240V', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (303, 1064022, '温馨提示', '本产品不包含灯泡', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (304, 1064022, '产地', '中国中山', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (305, 1065004, '尺寸', '150*30cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (306, 1065004, '颜色', '原木色/ 棕色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (307, 1065004, '执行标准', 'GB/T 23148-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (308, 1065004, '产地', '中国苏州', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (309, 1065004, '温馨提示', '原木色为水曲柳贴皮，棕色为胡桃木贴皮。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (310, 1065005, '尺寸', '150*28cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (311, 1065005, '颜色', '棕色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (312, 1065005, '执行标准', 'GB/T 23148-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (313, 1065005, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (314, 1068010, '填充物重量', '1300g/1560g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (315, 1068010, '尺寸', '1.5*2m/1.8*2m', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (316, 1068010, '外层面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (317, 1068010, '填充物', '100%羊毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (318, 1068010, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (319, 1068010, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (320, 1068010, '厚度', '3cm+-视商品干燥情况有少量浮动', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (321, 1068011, '填充物', '60%、90%驼绒/40%、10%驼毛', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (322, 1068011, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (323, 1068011, '尺寸', '200*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (324, 1068011, '填充物重量', '2000g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (325, 1068012, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (326, 1068012, '颜色', '灰紫/ 浅咖色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (327, 1068012, '印染工艺', '色织工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (328, 1068012, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (329, 1068012, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。 严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (330, 1068012, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (331, 1068012, '材质', '面料：100%棉  填充物：65% 棉/ 35%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (332, 1071004, '尺寸', '48*38*13cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (333, 1071004, '配色', '黑红/白姜黄', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (334, 1071004, '材质', '聚丙烯树脂', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (335, 1071004, '执行标准', 'GB 9688-1988', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (336, 1071004, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (337, 1071005, '尺寸', '185*160*100MM', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (338, 1071005, '材料', '聚丙烯树脂', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (339, 1071005, '执行标准', 'GB 9688-1988', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (340, 1071005, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (341, 1071006, '规格', '200*60mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (342, 1071006, '材料', '聚丙烯树脂', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (343, 1071006, '执行标准', 'GB 9688-1988', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (344, 1072000, '颜色', '象牙白/ 芥子黄/ 银铅色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (345, 1072000, '尺寸', '45*45cm/ 66*66cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (346, 1072000, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (347, 1072000, '工艺', '手工编织', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (348, 1072000, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (349, 1072000, '温馨提示', '此产品不含抱枕芯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (350, 1072001, '颜色', '缥蓝色/ 薄灰色/ 象牙色/ 赤紫色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (351, 1072001, '尺寸', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (352, 1072001, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (353, 1072001, '工艺', '色织水洗', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (354, 1072001, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (355, 1072001, '温馨提示', '此产品不含抱枕芯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (356, 1075023, '规格', '48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (357, 1075023, '填充物', '20%白鸭绒+80%白鹅毛片', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (358, 1075023, '填充物重量', '200g白鸭绒+800g白鹅毛片', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (359, 1075023, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (360, 1075023, '执行标准', 'QB/T 1194-2012', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (361, 1075024, '填充成分', '白鹅绒', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (362, 1075024, '含绒量', '95%', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (363, 1075024, '面料', '100%纯棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (364, 1075024, '面料参数', '120支 500根', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (365, 1075024, '填充物重量', '1500g/1700g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (366, 1075024, '尺寸', '200*230cm/220*240cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (367, 1075024, '工艺', '双层立衬', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (368, 1081000, '尺寸', '35*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (369, 1081000, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (370, 1081000, '产地', '浙江杭州', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (371, 1081000, '材质', '100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (372, 1081002, '尺寸', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (373, 1081002, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (374, 1081002, '材质', '100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (375, 1081002, '产地', '浙江杭州', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (376, 1083009, '鲜花', '厄瓜多尔玫瑰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (377, 1083009, '朵数', '1朵', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (378, 1083009, '颜色', '妖姬蓝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (379, 1083009, '尺寸', '17*17*12cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (380, 1083009, '花材种植地', '厄瓜多尔', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (381, 1083010, '鲜花主材', '奥斯汀玫瑰、泉水玫瑰、绣球', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (382, 1083010, '鲜花辅材', '棉毛苏叶、细爪草、褐色果、满天星', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (383, 1083010, '颜色', '柔情粉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (384, 1083010, '尺寸', '17*17*12cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (385, 1083010, '花材种植地', '日本', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (386, 1083010, '*温馨提示', '由于花材的季节性供应特点，个别配材会有所调整，且因花材批次不同会有一定微小色差，不会影响整体花盒效果。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (387, 1084001, '材质', '100%纯棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (388, 1084001, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (389, 1084001, '产品标准', 'FZ/T 61001-2006', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (390, 1084001, '安全技术', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (391, 1084001, '温馨提示', '1.纯棉毯采取传统针织工艺，纯天然织造的，使用前建议清洗一遍去除少量浮尘。\n2.商品为纯棉织造而成，若有少量气味请通风2-3天去除。\n3.纯棉针织盖毯清洗数次之后，可能存在微量变形，建议干洗。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (392, 1084001, '重量', '1280g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (393, 1084003, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (394, 1084003, '尺寸', '150*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (395, 1084003, '产品标准', 'FZ/T 61001-2006', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (396, 1084003, '安全技术', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (397, 1084003, '温馨提示', '1.纯棉毯采取传统针织工艺，纯天然织造的，使用前建议清洗一遍去除少量浮尘。\n2.商品为纯棉织造而成，若有少量气味请通风2-3天去除。\n3.纯棉针织盖毯清洗数次之后，可能存在微量变形，建议干洗。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (398, 1084003, '重量', '1115g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (399, 1086015, '颜色', '本白/ 哑黑/ 姜黄', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (400, 1086015, '执行标准', 'GB 7000.11-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (401, 1086015, '产地', '中国广东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (402, 1086015, '型号', 'MT20290-1-130', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (403, 1086015, '温馨提示', '本产品不含灯泡', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (404, 1086023, '材质', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (405, 1086023, '搭扣', '锌合金', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (406, 1086023, '拉带规格', '120cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (407, 1086023, '颈圈规格', '30-45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (408, 1086024, '材质', '100%锦纶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (409, 1086024, '搭扣', '锌合金', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (410, 1086024, '颈圈', '30-45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (411, 1086024, '拉带', '120cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (412, 1086025, '材质', '100%锦纶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (413, 1086025, '搭扣', '锌合金', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (414, 1086025, '拉带规格', '120cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (415, 1086025, '产品标准', 'FZ/T 63005-2010', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (416, 1086026, '材质', '100%锦纶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (417, 1086026, '搭扣', '锌合金', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (418, 1086026, '颈圈尺寸', '30-45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (419, 1086026, '拉带尺寸', '120cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (420, 1090004, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*25cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*25cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (421, 1090004, '颜色', '红色格子/ 蓝色格子/ 绿色格子/ 灰色格子', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (422, 1090004, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (423, 1090004, '工艺', '色织工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (424, 1090004, '温馨提示', '1：纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。 严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。\n2：不同批次面料和拉链稍有差异，请以实物为准。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (425, 1092024, '尺寸', '200*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (426, 1092024, '填充物', '100%桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (427, 1092024, '填充物重量', '1500g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (428, 1092024, '外套', '100%纯棉纱布', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (429, 1092024, '执行标准', 'GB/T 24252-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (430, 1092024, '安全技术类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (431, 1092038, '尺寸', '470*128*13mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (432, 1092038, '材质', '天然桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (433, 1092038, '重量', '200g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (434, 1092038, '颜色', 'GB/T 28495-2012', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (435, 1092039, '尺寸', '385mmX385mmX135mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (436, 1092039, '重量', '950g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (437, 1092039, '材质', '美卡瓦楞纸板', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (438, 1092039, '颜色', '本色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (439, 1093000, '材质', 'PU+PE（枝干）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (440, 1093000, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (441, 1093000, '长度', '81cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (442, 1093000, '花草种类', '木棉花', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (443, 1093001, '材质', 'PU+PE（枝干）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (444, 1093001, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (445, 1093001, '长度', '35cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (446, 1093001, '花草种类', '马蹄莲', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (447, 1093001, '数量', '一束（9朵）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (448, 1093002, '材质', 'PU+玻璃', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (449, 1093002, '颜色', '白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (450, 1093002, '长度', '33cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (451, 1093002, '花草种类', '木棉花', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (452, 1097004, '材质', '北美白橡木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (453, 1097004, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (454, 1097004, '产品尺寸', '1400/1600*820*750mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (455, 1097004, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (456, 1097005, '材质', '北美白橡木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (457, 1097005, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (458, 1097005, '产品尺寸', '430*520*870mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (459, 1097005, '安装方式', '无需组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (460, 1097006, '材质', '北美白橡木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (461, 1097006, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (462, 1097006, '产品尺寸', '600*600*550mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (463, 1097006, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (464, 1097007, '材质', '北美白橡木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (465, 1097007, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (466, 1097007, '产品尺寸', '600*600*530/650mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (467, 1097007, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (468, 1097009, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (469, 1097009, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (470, 1097009, '产品尺寸', '1000/1200*580*910mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (471, 1097009, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (472, 1097011, '材质', '北美白橡木+床铺板松木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (473, 1097011, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (474, 1097011, '产品尺寸', '2065*2188*1088mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (475, 1097011, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (476, 1097012, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (477, 1097012, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (478, 1097012, '产品尺寸', '480*400*550mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (479, 1097012, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (480, 1097013, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (481, 1097013, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (482, 1097013, '产品尺寸', '800*430*1100mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (483, 1097013, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (484, 1097014, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (485, 1097014, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (486, 1097014, '产品尺寸', '860*400*1200mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (487, 1097014, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (488, 1097016, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (489, 1097016, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (490, 1097016, '产品尺寸', '1800*450*525mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (491, 1097016, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (492, 1097017, '材质', '北美白橡木+抽屉背板桐木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (493, 1097017, '涂漆', '环保涂漆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (494, 1097017, '产品尺寸', '1200*600*450mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (495, 1097017, '安装方式', '需要组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (496, 1100000, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (497, 1100000, '执行标准', 'GB/T 22796-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (498, 1100000, '颜色', '石板灰/ 烟褐色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (499, 1100000, '尺寸', '48*74cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (500, 1100000, '工艺', '水洗工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (501, 1100000, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (502, 1100000, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (503, 1100001, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (504, 1100001, '执行标准', 'GB/T 22797-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (505, 1100001, '颜色', '石板灰/ 烟褐色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (506, 1100001, '尺寸', '245*250cm/ 245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (507, 1100001, '工艺', '水洗工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (508, 1100001, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (509, 1100001, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (510, 1100002, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (511, 1100002, '执行标准', 'GB/T 22797-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (512, 1100002, '尺寸', '150*200*25cm/ 180*200*25cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (513, 1100002, '颜色', '石板灰/ 烟褐色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (514, 1100002, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (515, 1100002, '工艺', '水洗工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (516, 1100002, '温馨提示', '纺织品经历印染、织造等多道环节，产品初次拿到可能有些许味道，清水漂洗、晾干后味道即可散去。\n严选面料全部经过国标检测认证，选用环保活性染料，请放心使用。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (517, 1108029, '规格尺寸', '290*260*380mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (518, 1108029, '材料', '美耐皿树脂\n硅胶\n201不锈钢（奥氏体型）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (519, 1108029, '执行标准', 'GB 9684-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (520, 1108030, '尺寸', '177*88*51mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (521, 1108030, '材料', '美耐皿树脂、聚碳酸酯（pc）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (522, 1108030, '执行标准', 'QB 1999-1994', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (523, 1108031, '规格尺寸', 'S 145*133*75mm\nM 187.4*172.5*97.4mm\nL 232*213*122.2mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (524, 1108031, '材料', '美耐皿树脂、201不锈钢（奥氏体型）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (525, 1108031, '执行标准', 'GB 9684-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (526, 1108032, '规格尺寸', 'S 128*88*55mm\nM 150*100*72mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (527, 1108032, '材料', '硅胶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (528, 1108032, '执行标准', 'GB 4806.1-1994', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (529, 1109004, '尺寸', '10寸/12寸', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (530, 1109004, '机芯', '太阳机芯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (531, 1109004, '材质', '水柳木/胡桃木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (532, 1109004, '能源', '5号电池*1（本产品不含电池）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (533, 1109005, '材质', '榉木', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (534, 1109005, '尺寸', '12*4.5*12cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (535, 1109005, '机芯类型', '扫秒机芯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (536, 1109005, '颜色', '原木色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (537, 1109005, '能源', '5号电池*1', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (538, 1109008, '填充物', '颗粒海绵', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (539, 1109008, '框架材质', '国际标准钢管', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (540, 1109008, '面料成分', '15%亚麻+85%涤', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (541, 1109008, '颜色', '米白色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (542, 1109008, '是否组装', '组装【沙发脚】', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (543, 1109008, '产品尺寸', '2P:1300*930*930mm;   1P:680*930*930mm;    0.5P:670*450*380mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (544, 1109034, '颜色', '象牙白', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (545, 1109034, '执行标准', 'GB/T22779-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (546, 1109034, '尺寸', '9.8 x 3.05 x 5.8cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (547, 1110002, '材质', 'ABS树脂+PP树脂', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (548, 1110002, 'USB线长', '约1m', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (549, 1110002, '尺寸', '102mm*130mm*85mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (550, 1110002, '颜色', '本白/冷灰/樱花粉/静谧蓝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (551, 1110003, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (552, 1110003, '尺寸', '1.5米床品（床笠款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品（床笠款）：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm\n1.5米床品（床单款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品（床单款）：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (553, 1110003, '执行标准', 'GB/T22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (554, 1110003, '颜色', '烟草绿/ 木兰黄/ 深茶褐/ 丁子灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (555, 1110003, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (556, 1110004, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (557, 1110004, '尺寸', '1.5米床品（床笠款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品（床笠款）：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm\n1.5米床品（床单款）： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品（床单款）：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (558, 1110004, '执行标准', 'GB/T22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (559, 1110004, '颜色', '烟草绿/ 深茶褐/ 丁子灰/ 木兰黄/ 茶香粉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (560, 1110004, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (561, 1110007, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (562, 1110007, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (563, 1110007, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (564, 1110007, '印染工艺', '色织工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (565, 1110007, '颜色', '松柏绿/ 枯茶褐/ 灰白/ 石竹咖', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (566, 1110007, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (567, 1110008, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (568, 1110008, '尺寸', '1.5M床：245*250cm\n1.8M床：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (569, 1110008, '颜色', '天蓝色/ 烟草色/ 茶香粉/ 蜜橙/ 千岁绿/ 荧光绿/ 青蓝/ 伽罗色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (570, 1110008, '执行标准', 'GB 18401-2009 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (571, 1110008, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (572, 1110013, '规格', 'S号 最长拉伸2.5m\nM号 最长拉伸4m', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (573, 1110013, '承重范围', 's  15公斤以下\nm  30公斤以下', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (574, 1110013, '材料', '塑胶（ABS TPR）\n耐拉反光涤纶带\n锌合金钩', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (575, 1110013, '执行标准', 'Q/PM002-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (576, 1110013, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (577, 1110014, '规格', 'S号 最长拉绳2.5m\nM号 最长拉伸4m', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (578, 1110014, '承重范围', '15-30kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (579, 1110014, '材质', '塑胶（ABS TPR）\n耐拉反光涤纶带\n锌合金钩', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (580, 1110014, '颜色', '日式木纹色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (581, 1110014, '执行标准', 'Q/PM002-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (582, 1110014, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (583, 1110015, '规格', 'S号 最长拉绳2.5M', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (584, 1110015, '承重范围', 'S 10-15kg\nM 15-30KG', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (585, 1110015, '材料', '塑胶（ABS TPR）\n高强耐拉反光涤纶带\n锌合金钩', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (586, 1110015, '颜色', '迷彩', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (587, 1110015, '执行标准', 'Q/PM002-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (588, 1110015, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (589, 1110016, '尺寸', '188*98*30MM', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (590, 1110016, '材料', '塑胶（ABS PVC）硅胶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (591, 1110016, '颜色', '蓝色/粉色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (592, 1110016, '执行标准', 'Q/PM001-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (593, 1110016, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (594, 1110016, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (595, 1110016, '温馨提示', '因宠物模特选择范围有限，故让小萨出镜，其实这款更适合猫咪和小狗用哦。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (596, 1110017, '规格', '小剪刀*1+中号理毛梳*1+针梳*1', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (597, 1110017, '材料', '合金钢、不锈钢针、塑胶（PP TPR）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (598, 1110017, '颜色', '白黑', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (599, 1110017, '执行标准', 'Q/PM001-2016\nQ/PM003-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (600, 1110017, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (601, 1110018, '规格', '大剪刀*1+大号钢针梳*1+双排针梳*1', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (602, 1110018, '材料', '合金钢、不锈钢针、塑胶（PP TPR）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (603, 1110018, '颜色', '白黑', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (604, 1110018, '执行标准', 'Q/PM001-2016\nQ/PM003-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (605, 1110018, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (606, 1110019, '规格', '宠物安全指甲剪+指甲锉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (607, 1110019, '材料', '合金钢 \n塑胶（TPR）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (608, 1110019, '执行标准', 'Q/PM003-2016', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (609, 1110019, '安全类别', '符合RoHs六项检测', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (610, 1115023, '尺寸', '200*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (611, 1115023, '填充物重量', '1500g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (612, 1115023, '执行标准', 'GB/T 24252-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (613, 1115023, '填充物', '100%桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (614, 1115023, '外套', '100%纯棉纱布', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (615, 1115023, '安全技术类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (616, 1115028, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (617, 1115028, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床笠：150*200*28cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床笠：180*200*28cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (618, 1115028, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (619, 1115028, '印染工艺', '色织工艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (620, 1115028, '颜色', '黑茶条纹/ 若绿条纹/ 缥蓝条纹/ 素麻条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (621, 1115028, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (622, 1115052, '尺寸', '直径50cm*高5cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (623, 1115052, '材质', '席面：蔺草/ 包边：65%聚酯纤维 35%棉 / 内芯：EPE', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (624, 1115052, '执行标准', 'QB/T 2934-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (625, 1115052, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (626, 1115053, '尺寸', '1.5米草席： 草席：150*195cm/ 枕套：48*74cm*2\n1.8米草席：草席：180*200cm/ 枕套：枕套：48*74cm*2', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (627, 1115053, '材质', '席面：蔺草/  枕套面：蔺草/ 包边：65% 聚酯纤维  35% 棉/ 枕套背面：100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (628, 1115053, '执行标准', 'QB/T 2934-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (629, 1115053, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (630, 1116030, '花材', '厄瓜多尔玫瑰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (631, 1116030, '附加功能', '音乐盒', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (632, 1116030, '产品尺寸', '直径10.5cm*高17cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (633, 1116030, '颜色', '黑色花朵+粉色底座', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (634, 1116031, '花材', '厄瓜多尔玫瑰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (635, 1116031, '附加功能', '音乐盒', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (636, 1116031, '产品尺寸', '直径10.5cm*高17cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (637, 1116031, '颜色', '渐变粉花朵+灰色底座', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (638, 1116032, '主体材质', '铝合金+布艺', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (639, 1116032, '填充物', '高回弹海绵', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (640, 1116032, '躺椅尺寸', '840*1250*1090mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (641, 1116032, '脚蹬尺寸', '550*445*450mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (642, 1116032, '安装方式', '自行组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (643, 1116032, '*特别提醒', '1.周六日暂无法发货，周末订单延至周一发货，请知悉！\n2.本产品配送范围：江浙沪、安徽、山东、福建、江西、湖北、河南、北京、天津、湖南、河北、山西、陕西、重庆、四川、海南、广西、贵州、云南、广东、辽宁、甘肃、宁夏、青海、内蒙古、吉林、黑龙江、新疆、西藏（航空件）\n3.本产品配送整件，不包安装，收到货物后，请自行按照产品说明书进行组装。如果组装时碰到无法解决的问题，可联系客服获取指导。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (644, 1116033, '椅身材质', '高弹力进口网布', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (645, 1116033, '扶手材质', 'PU', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (646, 1116033, '框架材质', '烤漆钢+工程塑料', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (647, 1116033, '椅轮', 'PA万向椅轮', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (648, 1116033, '气杆', '三弘气压杆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (649, 1116033, '产品尺寸', '700*700*1160mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (650, 1116033, '安装方式', '自行组装', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (651, 1116033, '*特别提醒', '1.周六日暂无法发货，周末订单延至周一发货，请知悉！\n2.本产品配送范围：江浙沪、安徽、山东、福建、江西、湖北、河南、北京、天津、湖南、河北、山西、陕西、重庆、四川、海南、广西、贵州、云南、广东、辽宁、甘肃、宁夏、青海、内蒙古、吉林、黑龙江、新疆、西藏（航空件）\n3.本产品配送整件，不包安装，收到货物后，请自行按照产品说明书进行组装。如果组装时碰到无法解决的问题，可联系客服获取指导。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (652, 1125016, '材质', '树脂', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (653, 1125016, '颜色', '黄色/蓝色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (654, 1125016, '尺寸', '129mm*96mm*302mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (655, 1125016, '摆件类型', '收纳型桌面摆件', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (656, 1125017, '材质', '陶瓷', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (657, 1125017, '颜色', '粉色/哑黑', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (658, 1125017, '尺寸', '160mm*145mm*135mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (659, 1125017, '摆件类型', '桌面摆件', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (660, 1127003, '执行标准', 'QB/T 1952.2-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (661, 1127003, '弹簧结构特征', '独立袋装弹簧', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (662, 1127003, '使用场所', '卧室、榻榻米', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (663, 1127003, '主要原材料', '进口乳胶', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (664, 1127003, '辅料', '软硬质海绵', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (665, 1127003, '高度', '25cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (666, 1127003, '配送范围', '以客服回复可配送范围为准', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (667, 1127003, '重量', '150*200cm  54+-3kg\n180*200cm   62+-3kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (668, 1127038, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (669, 1127038, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (670, 1127038, '颜色', '星空蓝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (671, 1127038, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (672, 1127038, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (673, 1127039, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (674, 1127039, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (675, 1127039, '颜色', '青粉拼接', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (676, 1127039, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (677, 1127039, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (678, 1127052, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (679, 1127052, '填充物', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (680, 1127052, '执行标准', 'GB/T22796-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (681, 1127052, '安全技术类别', 'GB18401-2010 A类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (682, 1127052, '规格', '150*200cm/180*200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (683, 1128002, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (684, 1128002, '颜色', '青粉拼接', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (685, 1128002, '产地', '中国北京', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (686, 1128002, '材质', '绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (687, 1130037, '规格', '40*40*7cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (688, 1130037, '填充物', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (689, 1130037, '填充物克重', '330g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (690, 1130037, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (691, 1130037, '颜色', '米白/深褐', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (692, 1130037, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (693, 1130037, '安全技术类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (694, 1130038, '填充物', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (695, 1130038, '填充物重量', '340g/725g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (696, 1130038, '面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (697, 1130038, '执行标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (698, 1130038, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (699, 1130038, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (700, 1130039, '填充物', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (701, 1130039, '面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (702, 1130039, '填充物重量', '170g/250g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (703, 1130039, '执行标准', 'FZ/T 62011.3-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (704, 1130041, '规格', '45*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (705, 1130041, '重量', '0.4-0.6kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (706, 1130041, '材料', '面100%羊毛皮\n衬100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (707, 1130041, '执行标准', 'QB/T2972-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (708, 1130042, '规格', '小号：90*50cm+-2\n双拼：180*55cm+-2', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (709, 1130042, '重量', '小号：0.6-0.9kg\n双拼：1.2-2kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (710, 1130042, '材料', '100%羊毛皮', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (711, 1130042, '执行标准', 'QB/T 2972-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (712, 1130042, '产品等级', '一等品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (713, 1130042, '备注', '黑色商品接触液体会有少量掉色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (714, 1130049, '面料', '65%莱赛尔（天丝）35%亚麻', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (715, 1130049, '填充物', '100%桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (716, 1130049, '执行标准', 'GB/T 24252-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (717, 1130049, '安全类别', 'GB 18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (718, 1130049, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (719, 1130049, '填充物克重', '360g（小）/470g（大）', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (720, 1130056, '材质', '席面：头层牛皮革/ 枕套面：头层牛皮革/ 枕套背面：100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (721, 1130056, '尺寸', '1.5米床：牛皮席：150x200cm/ 枕套：74x48cmx2\n1.8米床：牛皮席：180x200cm/ 枕套：74x48cmx2', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (722, 1130056, '鞣制方式', '铬植结合鞣', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (723, 1130056, '颜色', '苋红色/ 象牙黄/ 橄榄棕/ 亮银灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (724, 1130056, '执行标准', 'QB/T 4204-2011', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (725, 1130056, '产地', '中国重庆', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (726, 1131017, '材质', '席面：毛竹\n包边：100%棉\n背面：100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (727, 1131017, '尺寸', '150x195cm/ 180x200cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (728, 1131017, '颜色', '抹茶色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (729, 1131017, '执行标准', 'LY/T 1843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (730, 1131017, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (731, 1134022, '材质', '绒面：100% 聚酯纤维\n背面：TPR', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (732, 1134022, '颜色', '多色条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (733, 1134022, '尺寸', '86*61cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (734, 1134022, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (735, 1134022, '执行标准', 'QB/T 3000-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (736, 1134030, '规格尺寸', '方形38*38*3cm\n圆形 φ38*3cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (737, 1134030, '填充物重量', '方形：185g\n圆形155g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (738, 1134030, '面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (739, 1134030, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (740, 1134030, '安全类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (741, 1134030, '产品等级', '合格品', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (742, 1134032, '规格尺寸', '方形：380*380*30mm\n圆形：φ380*30mm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (743, 1134032, '填充物', '聚氨酯', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (744, 1134032, '填充物重量', '方形：185g\n圆形：155g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (745, 1134032, '面料', '100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (746, 1134032, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (747, 1134032, '安全技术类别', 'GB18401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (748, 1134056, '材质', '70%棉，30%莫代尔', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (749, 1134056, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (750, 1134056, '颜色', '砖釉红/菡萏粉/浅豆绿/青丝灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (751, 1134056, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (752, 1134056, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (753, 1135000, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (754, 1135000, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (755, 1135000, '颜色', '蒂芙尼蓝/ 墨黑/ 亮橙/ 浅灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (756, 1135000, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (757, 1135000, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (758, 1135001, '材质', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (759, 1135001, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (760, 1135001, '颜色', '草绿色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (761, 1135001, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (762, 1135001, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (763, 1135002, '材质', '100% 桑蚕丝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (764, 1135002, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (765, 1135002, '颜色', '浅杏粉/ 玛瑙红/ 烟白灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (766, 1135002, '产地', '中国四川', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (767, 1135002, '执行标准', 'GB/T22796-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (768, 1135050, '产品材质', 'PP塑料', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (769, 1135050, '产品尺寸', '52*42*40cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (770, 1135050, '产品净重', '2.105kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (771, 1135050, '产品毛重', '3.215kg', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (772, 1135050, '执行标准', 'GB 9688-1988', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (773, 1135050, '配送范围', '请咨询客服', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (774, 1135051, '材质', '100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (775, 1135051, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (776, 1135051, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (777, 1135051, '颜色', '米色/ 蓝灰/ 烟灰/ 咖色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (778, 1135051, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (779, 1135051, '物理遮光率', '80%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (780, 1135052, '材质', '36%黏胶纤维/  10%亚麻/ 54%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (781, 1135052, '颜色', '深卡其/ 米灰/ 灰蓝/ 粉橙', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (782, 1135052, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (783, 1135052, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (784, 1135052, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (785, 1135052, '物理遮光率', '60%-70%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (786, 1135053, '材质', '47%黏胶纤维/  53%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (787, 1135053, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (788, 1135053, '颜色', '山岩灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (789, 1135053, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (790, 1135053, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (791, 1135053, '物理遮光率', '70-80%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (792, 1135054, '材质', '36% 聚酯纤维 74% 粘胶纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (793, 1135054, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (794, 1135054, '颜色', '蓝色/ 绿色/ 黄色/ 红色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (795, 1135054, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (796, 1135054, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (797, 1135054, '物理遮光性', '80%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (798, 1135055, '材质', '52% 黏胶纤维  48%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (799, 1135055, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (800, 1135055, '颜色', '米灰几何纹/ 橙灰几何纹/ 蓝灰几何纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (801, 1135055, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (802, 1135055, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (803, 1135055, '物理遮光率', '70%-80%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (804, 1135056, '材质', '54% 黏胶纤维/ 46%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (805, 1135056, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (806, 1135056, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (807, 1135056, '颜色', '蓝条纹/ 粉条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (808, 1135056, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (809, 1135056, '物理遮光率', '60%-70%左右', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (810, 1135057, '材质', '100% 聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (811, 1135057, '尺寸', '1.4 x 2.6M：适用于1.4M宽以下的窗户。\n1.75 x 2.6M：适用于1.4M-1.75M宽的窗户。\n2.25 x 2.6M：适用于1.75M-2.25M宽的窗户。\n2.8 x 2.6M：适用于2.25M-2.8M宽的窗户。\n3.5 x 2.6M：适用于2.8M-3.5M宽的窗户。\n4.5 x 2.6M：适用于3.5M-4.5M宽的窗户。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (812, 1135057, '执行标准', 'GB/T 19817-2005', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (813, 1135057, '颜色', '莹白', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (814, 1135057, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (815, 1135058, '规格', '35*45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (816, 1135058, '填充物', '聚苯乙烯泡沫粒子', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (817, 1135058, '填充物重量', '260g', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (818, 1135058, '面料', '100%棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (819, 1135058, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (820, 1135058, '安全技术类别', 'GB 8401-2010 B类', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (821, 1138000, '材质', '面料: 96% 涤纶 4%氨纶\n填充物：100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (822, 1138000, '尺寸', '直径40cm/ 直径55cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (823, 1138000, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (824, 1138000, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (825, 1138000, '颜色', '天青色/ 松叶绿/ 珊瑚红/ 姜黄色/ 香芋粉/ 卡其色/ 深咖色/ 海军蓝', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (826, 1138001, '材质', '抱枕套：100%棉\n抱枕芯外壳：100%棉\n绣线：100%聚酯纤维\n填充：100%聚酯纤维', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (827, 1138001, '颜色', '静谧蓝/ 古典金/ 动感绿/ 浪漫粉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (828, 1138001, '尺寸', '45 x 45cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (829, 1138001, '执行标准', 'GB/T 22843-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (830, 1138001, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (831, 1143015, '材质', '席面：蔺草/ 包边：100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (832, 1143015, '执行标准', 'QB/T 2934-2008', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (833, 1143015, '产地', '中国浙江', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (834, 1143015, '颜色', '抹茶色', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (835, 1147045, '颜色', '灰黄条纹', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (836, 1147045, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (837, 1147045, '材质', '绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (838, 1147045, '产地', '中国北京', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (839, 1147046, '颜色', '条纹粉间', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (840, 1147046, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (841, 1147046, '材质', '绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (842, 1147046, '产地', '中国北京', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (843, 1147047, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (844, 1147047, '材质', '绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (845, 1147047, '颜色', '蓝粉拼接', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (846, 1147047, '产地', '中国北京', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (847, 1147048, '尺寸', '160*230cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (848, 1147048, '颜色', '蓝灰格', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (849, 1147048, '材质', '绒面：100% 聚酯纤维 背面：52% 聚酯纤维/ 48% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (850, 1147048, '产地', '中国北京', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (851, 1151012, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (852, 1151012, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (853, 1151012, '颜色', '素雅灰', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (854, 1151012, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (855, 1151012, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (856, 1151013, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (857, 1151013, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (858, 1151013, '颜色', '胭脂粉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (859, 1151013, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (860, 1151013, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (861, 1152161, '材质', '12%长麻/ 12%竹浆纤维/ 76%莱赛尔', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (862, 1152161, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (863, 1152161, '产地', '中国江苏', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (864, 1152161, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (865, 1155000, '材质', '100% 棉', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (866, 1155000, '尺寸', '1.5米床品： 被套 200*230cm/ 枕套：48*74cm*2/ 床单：245*250cm\n1.8米床品：被套 220*240cm/ 枕套：48*74cm*2/ 床单：245*270cm', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (867, 1155000, '颜色', '条纹绿格', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (868, 1155000, '执行标准', 'GB/T 22844-2009', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (869, 1155000, '产地', '中国山东', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (870, 1181000, '规格', '组合一：AB面独立弹簧床垫 进口乳胶150*200cm*1+可水洗抗菌防螨丝羽绒枕*2。\n组合二：AB面独立弹簧床垫 进口乳胶180*200cm*1+可水洗抗菌防螨丝羽绒枕*2', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (871, 1181000, '重要提醒', '活动时间：5月8日0点-5月14日24点。\n请在以上时间段内购买，其余时间均不可享受组合装优惠。', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_attribute` VALUES (872, 1006014, '尺寸', '200*230cm/ 220*240cm', '2018-10-26 21:27:13', '2018-10-26 21:27:13', 1);
INSERT INTO `litemall_goods_attribute` VALUES (873, 1006014, '面料', '100%棉', '2018-10-26 21:27:13', '2018-10-26 21:27:13', 1);
INSERT INTO `litemall_goods_attribute` VALUES (874, 1006014, '填充物', '100%双宫茧桑蚕丝', '2018-10-26 21:27:13', '2018-10-26 21:27:13', 1);
INSERT INTO `litemall_goods_attribute` VALUES (875, 1006014, '填充物重量', '0.5+1.5KG/1+2KG', '2018-10-26 21:27:13', '2018-10-26 21:27:13', 1);
INSERT INTO `litemall_goods_attribute` VALUES (876, 1006014, '温馨提示', '天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去', '2018-10-26 21:27:13', '2018-10-26 21:27:13', 1);
INSERT INTO `litemall_goods_attribute` VALUES (877, 1006014, '尺寸', '200*230cm/ 220*240cm', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_attribute` VALUES (878, 1006014, '面料', '100%棉', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_attribute` VALUES (879, 1006014, '填充物', '100%双宫茧桑蚕丝', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_attribute` VALUES (880, 1006014, '填充物重量', '0.5+1.5KG/1+2KG', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_attribute` VALUES (881, 1006014, '温馨提示', '天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_attribute` VALUES (882, 1006014, '尺寸', '200*230cm/ 220*240cm', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);
INSERT INTO `litemall_goods_attribute` VALUES (883, 1006014, '面料', '100%棉', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);
INSERT INTO `litemall_goods_attribute` VALUES (884, 1006014, '填充物', '100%双宫茧桑蚕丝', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);
INSERT INTO `litemall_goods_attribute` VALUES (885, 1006014, '填充物重量', '0.5+1.5KG/1+2KG', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);
INSERT INTO `litemall_goods_attribute` VALUES (886, 1006014, '温馨提示', '天然桑蚕丝具有正常蛋白味道，通风晾晒2-3天即可散去', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);

-- ----------------------------
-- Table structure for litemall_goods_product
-- ----------------------------
DROP TABLE IF EXISTS `litemall_goods_product`;
CREATE TABLE `litemall_goods_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品表的商品ID',
  `specifications` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品规格值列表，采用JSON数组格式',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品货品价格',
  `number` int(11) NOT NULL DEFAULT 0 COMMENT '商品货品数量',
  `url` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品货品图片',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 260 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品货品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_goods_product
-- ----------------------------
INSERT INTO `litemall_goods_product` VALUES (1, 1181000, '[\"1.5m床垫*1+枕头*2\",\"浅杏粉\"]', 999.00, 100, 'http://yanxuan.nosdn.127.net/1f67b1970ee20fd572b7202da0ff705d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (2, 1181000, '[\"1.5m床垫*1+枕头*2\",\"玛瑙红\"]', 1500.00, 198, 'quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-11-07 17:14:01', 0);
INSERT INTO `litemall_goods_product` VALUES (3, 1181000, '[\"1.5m床垫*1+枕头*2\",\"烟白灰\"]', 1000.00, 300, 'http://yanxuan.nosdn.127.net/36f64a7161b67e7fb8ea45be32ecfa25.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (4, 1181000, '[\"1.8m床垫*1+枕头*2\",\"浅杏粉\"]', 1001.00, 400, 'http://yanxuan.nosdn.127.net/10022c73fa7aa75c2c0d736e96cc56d5.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (5, 1181000, '[\"1.8m床垫*1+枕头*2\",\"玛瑙红\"]', 2000.00, 2, 'quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (6, 1181000, '[\"1.8m床垫*1+枕头*2\",\"烟白灰\"]', 3000.00, 0, 'http://yanxuan.nosdn.127.net/36f64a7161b67e7fb8ea45be32ecfa25.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (7, 1006002, '[\"标准\"]', 899.00, 100, 'http://yanxuan.nosdn.127.net/8ab2d3287af0cefa2cc539e40600621d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_product` VALUES (8, 1006007, '[\"标准\"]', 459.00, 100, 'http://yanxuan.nosdn.127.net/66425d1ed50b3968fed27c822fdd32e0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_product` VALUES (9, 1006010, '[\"标准\"]', 659.00, 100, 'http://yanxuan.nosdn.127.net/8fe022126a2789d970f82853be13a5e6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_product` VALUES (10, 1006013, '[\"标准\"]', 699.00, 100, 'http://yanxuan.nosdn.127.net/583812520c68ca7995b6fac4c67ae2c7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_product` VALUES (11, 1006014, '[\"标准\"]', 1399.00, 100, 'http://yanxuan.nosdn.127.net/2b537159f0f789034bf8c4b339c43750.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_product` VALUES (12, 1006051, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/ad5a317216f9da495b144070ecf1f957.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (13, 1009009, '[\"标准\"]', 1999.00, 100, 'http://yanxuan.nosdn.127.net/9791006f25e26b2d7c81f41f87ce8619.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (14, 1009012, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/a196b367f23ccfd8205b6da647c62b84.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (15, 1009013, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/da56fda947d0f430d5f4cf4aba14e679.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (16, 1009024, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/149dfa87a7324e184c5526ead81de9ad.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (17, 1009027, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/71cfd849335c498dee3c54d1eb823c17.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (18, 1010000, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/3bec70b85337c3eec182e54380ef7370.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (19, 1010001, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/a8b0a5def7d64e411dd98bdfb1fc989b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (20, 1011004, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/0984c9388a2c3fd2335779da904be393.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (21, 1015007, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/a2045004de8a6225289376ad54317fc8.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (22, 1019000, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/77c09feb378814be712741b273d16656.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (23, 1019001, '[\"标准\"]', 109.00, 100, 'http://yanxuan.nosdn.127.net/7644803ab19b3e398456aa5a54229363.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (24, 1019002, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/0118039f7cda342651595d994ed09567.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (25, 1019006, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/60c3707837c97a21715ecc3986a744ce.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (26, 1020000, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/819fdf1f635a694166bcfdd426416e8c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (27, 1021000, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/7191f2599c7fe44ed4cff7a76e853154.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (28, 1021001, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/fd5a8622ee1a7dfd4b57b938ebf25b24.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (29, 1021004, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/654b02045fde802b51d5bbf09a8b75f2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (30, 1021010, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/25d734cc0b2eae8f63f9deb1e4ad5f64.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (31, 1022000, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/5350e35e6f22165f38928f3c2c52ac57.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (32, 1022001, '[\"标准\"]', 349.00, 100, 'http://yanxuan.nosdn.127.net/bf8faee3b27b480f63b70056597b626d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (33, 1023003, '[\"标准\"]', 398.00, 100, 'http://yanxuan.nosdn.127.net/c39d54c06a71b4b61b6092a0d31f2335.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (34, 1023012, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/07376e78bf4fb8a5aa8e6a0b1437c3ad.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (35, 1023032, '[\"标准\"]', 449.00, 100, 'http://yanxuan.nosdn.127.net/e0b928ada728c140f6965bb41f47407b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (36, 1023034, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/715899c65c023bb4973fb0466a5b79d6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (37, 1025005, '[\"标准\"]', 268.00, 100, 'http://yanxuan.nosdn.127.net/49e26f00ca4d0ce00f9960d22c936738.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (38, 1027004, '[\"标准\"]', 249.00, 100, 'http://yanxuan.nosdn.127.net/6252f53aaf36c072b6678f3d8c635132.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (39, 1029005, '[\"标准\"]', 959.00, 100, 'http://yanxuan.nosdn.127.net/25fe52f44853eb45f610846991bc4d9d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (40, 1030001, '[\"标准\"]', 969.00, 100, 'http://yanxuan.nosdn.127.net/88dc5d80c6f84102f003ecd69c86e1cf.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (41, 1030002, '[\"标准\"]', 899.00, 100, 'http://yanxuan.nosdn.127.net/8b9328496990357033d4259fda250679.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (42, 1030003, '[\"标准\"]', 1469.00, 100, 'http://yanxuan.nosdn.127.net/1d1ab099dc0e254c15e57302e78e200b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (43, 1030004, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/e84f2e3b3d39cfdc8af5c3954a877aae.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (44, 1030005, '[\"标准\"]', 899.00, 100, 'http://yanxuan.nosdn.127.net/86f57132793d3e3c924a7ba529849288.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (45, 1030006, '[\"标准\"]', 329.00, 100, 'http://yanxuan.nosdn.127.net/578ffec952eb25ff072d8ea1b676bfd2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (46, 1033000, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/9aab9a0bf4fef8fe3dc8c732bc22d4b7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (47, 1035006, '[\"标准\"]', 56.00, 100, 'http://yanxuan.nosdn.127.net/ee92704f3b8323905b51fc647823e6e5.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (48, 1036002, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/ffd7efe9d5225dff9f36d5110b027caa.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (49, 1036013, '[\"标准\"]', 109.00, 100, 'http://yanxuan.nosdn.127.net/da1bc2c10f7b2e53f2466bd23953b982.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (50, 1036016, '[\"标准\"]', 109.00, 100, 'http://yanxuan.nosdn.127.net/513d08057c69fdb7d19cc810e976118d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (51, 1037011, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/a03ea6f4509439acdafcb7ceba1debe0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (52, 1037012, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/ffd2c91c7cf9c6e0f630595f7679b95d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (53, 1038004, '[\"标准\"]', 359.00, 100, 'http://yanxuan.nosdn.127.net/4d3d3eaeb872860539d7faa59f9f84e9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (54, 1039051, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/c8ca0600fa7ba11ca8be6a3173dd38c9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (55, 1039056, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/3e14e82a44c3a250af63df4c29c572d0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (56, 1043005, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/2a95b16f5b147cab4845641bee738a2e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (57, 1044012, '[\"标准\"]', 349.00, 100, 'http://yanxuan.nosdn.127.net/a803c68ea88e3116023b45ac9ea99510.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (58, 1045000, '[\"标准\"]', 28.00, 100, 'http://yanxuan.nosdn.127.net/b2adc3fd9b84a289a1be03e8ee400e61.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (59, 1046001, '[\"标准\"]', 8.90, 100, 'http://yanxuan.nosdn.127.net/74583e585825ecacb11f7c53d2021e00.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (60, 1046002, '[\"标准\"]', 9.90, 100, 'http://yanxuan.nosdn.127.net/eb486cfe807c4fe5696aa59cbcf1f96a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (61, 1046044, '[\"标准\"]', 349.00, 100, 'http://yanxuan.nosdn.127.net/2bfecfe58ea3ee0d554f2ed58e9ba30a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (62, 1048005, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/ce980c16810a471dffff6aa8d7bac754.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (63, 1051000, '[\"标准\"]', 180.00, 100, 'http://yanxuan.nosdn.127.net/e564410546a11ddceb5a82bfce8da43d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (64, 1051001, '[\"标准\"]', 159.00, 100, 'http://yanxuan.nosdn.127.net/f53ed57d9e23fda7e24dfd0e0a50c5d1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (65, 1051002, '[\"标准\"]', 228.00, 100, 'http://yanxuan.nosdn.127.net/56f4b4753392d27c0c2ccceeb579ed6f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (66, 1051003, '[\"标准\"]', 148.00, 100, 'http://yanxuan.nosdn.127.net/6a54ccc389afb2459b163245bbb2c978.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (67, 1055012, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/3d437c8d68e2ec3f3dd61001bf98f16e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (68, 1055016, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/23e0203f1512f33e605f61c28fa03d2d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (69, 1055022, '[\"标准\"]', 4.90, 100, 'http://yanxuan.nosdn.127.net/c7c74a96eacb29455dbf557b840eaaf5.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (70, 1056002, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/922fdbe007033f7a88f7ebc57c3d1e75.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (71, 1057036, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/8a9ee5ba08929cc9e40b973607d2f633.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (72, 1064000, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/ebe118f94ddafe82c4a8cd51da6ff183.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (73, 1064002, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/48dbfe207b2203ef45055dcc9cedbe60.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (74, 1064003, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/58ed94b63b39339e7814f1339013793c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (75, 1064004, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/337da7094c1df295ca0f0b8baa55b2d5.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (76, 1064006, '[\"标准\"]', 129.00, 100, 'http://yanxuan.nosdn.127.net/35306b8e65932dd28a5628d0bb44a044.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (77, 1064007, '[\"标准\"]', 249.00, 100, 'http://yanxuan.nosdn.127.net/d7bd87f8cc1965b25be33a8aad53812b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (78, 1064021, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/c83a3881704094ddd3970099ca77d115.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (79, 1064022, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/a9c155e26d09e3c92b623f0472ed674a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (80, 1065004, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/05977cf923857db0c44b405bd87b096b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (81, 1065005, '[\"标准\"]', 249.00, 100, 'http://yanxuan.nosdn.127.net/18b7be03bba9d01e4285fc443ea65bb1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (82, 1068010, '[\"标准\"]', 329.00, 100, 'http://yanxuan.nosdn.127.net/9ed4ff9642ea9cb776a20560647cd72b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (83, 1068011, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/0e4ba6ed44fef8803c243e585b621ab7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (84, 1068012, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/69145abddddd31ae8878ea7ca7297b4b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (85, 1070000, '[\"标准\"]', 26.00, 100, 'http://yanxuan.nosdn.127.net/8392725765cdd57fdae3f173877f4bda.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (86, 1071004, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/f0abf2bf11c8d303212e4a0c1106bb73.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (87, 1071005, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/07a47d73e2eb53b1a7939219a4e63618.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (88, 1071006, '[\"标准\"]', 9.90, 100, 'http://yanxuan.nosdn.127.net/d206e0d15955b4d76431a752f2c94f9f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (89, 1072000, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/87cf3a17ad40bfdcdc3314ea4591a5e8.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (90, 1072001, '[\"标准\"]', 49.00, 100, 'http://yanxuan.nosdn.127.net/0e9d5954d7dc2477d9c46b730e05ab42.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (91, 1073008, '[\"标准\"]', 149.00, 100, 'http://yanxuan.nosdn.127.net/619e46411ccd62e5c0f16692ee1a85a0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (92, 1074001, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/73567265b04a9998f64419186ddd8531.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (93, 1075022, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/97ad483a94ed88216a989df83e39cbf0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (94, 1075023, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/29bc800b9f1fa551bc3cd47b10e2a799.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (95, 1075024, '[\"标准\"]', 2399.00, 100, 'http://yanxuan.nosdn.127.net/ce4a1eb18ea518bf584620632509935f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (96, 1081000, '[\"标准\"]', 49.00, 100, 'http://yanxuan.nosdn.127.net/cc45baafad00405699552c187c64c512.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (97, 1081002, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/380cfcd5d8bc22360de089f0b4eb11da.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (98, 1083009, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/76e5c820f6bb71a26517ffa01f499871.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (99, 1083010, '[\"标准\"]', 469.00, 100, 'http://yanxuan.nosdn.127.net/b9a12d07f8f2d04d662d9340e68e6687.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (100, 1084001, '[\"标准\"]', 249.00, 100, 'http://yanxuan.nosdn.127.net/07f682d405c1d2ed343c210ac8f8862a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (101, 1084003, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/cf40c167e7054fe184d49f19121f63c7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (102, 1085019, '[\"标准\"]', 349.00, 100, 'http://yanxuan.nosdn.127.net/65c955a7a98e84d44ca30bb88a591eac.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (103, 1086015, '[\"标准\"]', 249.00, 100, 'http://yanxuan.nosdn.127.net/d5c2ecfe0fb00cdd8b829975bab21a31.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (104, 1086023, '[\"标准\"]', 19.90, 100, 'http://yanxuan.nosdn.127.net/121a99e896b3e332c102eb5f6f9b3406.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (105, 1086024, '[\"标准\"]', 9.90, 100, 'http://yanxuan.nosdn.127.net/af899cfaa13f515ecb9cf9a33f41370a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (106, 1086025, '[\"标准\"]', 49.00, 100, 'http://yanxuan.nosdn.127.net/78eff56b293c8354bc9ac496fc2c5179.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (107, 1086026, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/caecdaa37d9cbcff980cee0968911e34.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (108, 1086052, '[\"标准\"]', 859.00, 100, 'http://yanxuan.nosdn.127.net/93171a281c4ed272c007a050816e6f6c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (109, 1090004, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/a3a92057f10e5e6e804c19ef495e3dee.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (110, 1092001, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/8e35b003ce7895c39eeb073b1f61b1d7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (111, 1092005, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/ab1992495e0370f09386d418ad45220d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (112, 1092024, '[\"标准\"]', 1599.00, 100, 'http://yanxuan.nosdn.127.net/f245a86dcb9f455217241e437b203926.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (113, 1092025, '[\"标准\"]', 19.90, 100, 'http://yanxuan.nosdn.127.net/56a46e9a4832587471c0f9ad7c1b7d85.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (114, 1092026, '[\"标准\"]', 19.90, 100, 'http://yanxuan.nosdn.127.net/83433f5a7ef69abda2544a53332a0fad.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (115, 1092038, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/1aba9ed9c9160b9ca8e7de58ce4e46b1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (116, 1092039, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/d8c18953bcb05f0b07d6b48e2d159ace.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (117, 1093000, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/1a22cc488390b616e75afbbd94db6584.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (118, 1093001, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/71fede861c3641d570a89a65ccf4525f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (119, 1093002, '[\"标准\"]', 49.00, 100, 'http://yanxuan.nosdn.127.net/48d95e820628610fcdcda30570d4379c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (120, 1097004, '[\"标准\"]', 1699.00, 100, 'http://yanxuan.nosdn.127.net/54f822e9c542d20566c7f70f90d52ae6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (121, 1097005, '[\"标准\"]', 1199.00, 100, 'http://yanxuan.nosdn.127.net/e5fd0724a05387615738173fb8f1570d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (122, 1097006, '[\"标准\"]', 999.00, 100, 'http://yanxuan.nosdn.127.net/bcf2a72face2c4221dfdc9b3c97d4062.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (123, 1097007, '[\"标准\"]', 759.00, 100, 'http://yanxuan.nosdn.127.net/b6e132180679b0673486145decc89aa3.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (124, 1097009, '[\"标准\"]', 1599.00, 100, 'http://yanxuan.nosdn.127.net/e7b68189ef2f77a28110c3fc7ca5a697.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (125, 1097011, '[\"标准\"]', 3899.00, 100, 'http://yanxuan.nosdn.127.net/fea36ef2514c904f4f45f1975f37f289.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (126, 1097012, '[\"标准\"]', 999.00, 100, 'http://yanxuan.nosdn.127.net/d659d5ce0efaa9baa43abb6e34a1d9fe.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (127, 1097013, '[\"标准\"]', 2699.00, 100, 'http://yanxuan.nosdn.127.net/2fa8cb066a356f47a3f0814e99fee7f2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (128, 1097014, '[\"标准\"]', 4199.00, 100, 'http://yanxuan.nosdn.127.net/308184b7b1965470d58b5c92e9bcc4b0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (129, 1097016, '[\"标准\"]', 2799.00, 100, 'http://yanxuan.nosdn.127.net/a7e6df722b82ad1b0158adcbdcf30df9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (130, 1097017, '[\"标准\"]', 2199.00, 100, 'http://yanxuan.nosdn.127.net/e16ff61bef76db81090db191b9d5ec15.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (131, 1100000, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/15e40cfb6a78f557616814a815685fd4.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (132, 1100001, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/a95285853138cbaf56e4ba729f2b8749.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (133, 1100002, '[\"标准\"]', 189.00, 100, 'http://yanxuan.nosdn.127.net/edf1945ef594c00920bdc727f4c5c7fd.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (134, 1108029, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/fe52cd141b4b330db5627114b0e0e550.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (135, 1108030, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/4891e60ff08ceed36d40a754e45e8742.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (136, 1108031, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/e13e9697e01339c6cf7479eb81b3fbe2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (137, 1108032, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/b1f9e1f700469f71fe3c4187ef53c99f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (138, 1109004, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/d25b5990f16c6d1ac168a34b7aeca681.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (139, 1109005, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/7f508253f65733c7b2af52dd3943ee28.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (140, 1109008, '[\"标准\"]', 3999.00, 100, 'http://yanxuan.nosdn.127.net/c5be2604c0e4186a4e7079feeb742cee.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (141, 1109034, '[\"标准\"]', 129.00, 100, 'http://yanxuan.nosdn.127.net/c2c96acc680cbadb1787385598e1e593.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (142, 1110002, '[\"标准\"]', 119.00, 100, 'http://yanxuan.nosdn.127.net/a7a524512c34d24a4b9762766dd9d0f0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (143, 1110003, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/72dfb4bfc1cd1b834c064a9d1d40627d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (144, 1110004, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/1ffd5831e63027715445f74a28f8c4ed.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (145, 1110007, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/deeb55bb45f94cb236a47d1264e883b8.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (146, 1110008, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/255a4888161f9b4fe530cf319f14551d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (147, 1110013, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/6eb8d1c37142a5951b6242791c78146b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (148, 1110014, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/cb4f78bd887059416c3df485e3f31366.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (149, 1110015, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/56da5270172244be56c00fdc8eb24fae.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (150, 1110016, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/3bd73b7279a83d1cbb50c0e45778e6d6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (151, 1110017, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/534231583f82572398ec84bad425cdaf.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (152, 1110018, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/d93aa5d6e7a296101cf4cb72613aeda6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (153, 1110019, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/1e7e392b6fc9da99dc112197b7444eec.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (154, 1111007, '[\"标准\"]', 78.00, 100, 'http://yanxuan.nosdn.127.net/8d228f767b136a67aaf2cbbf6deb46fa.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (155, 1111010, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/ef7efe55839e66993fb604dc3c2d9410.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (156, 1113010, '[\"标准\"]', 59.00, 100, 'http://yanxuan.nosdn.127.net/2d0920b51331bb1636330ad8e07d1b97.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (157, 1113011, '[\"标准\"]', 49.00, 100, 'http://yanxuan.nosdn.127.net/7a683f68fc988df299b5cfe6273d6fb7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (158, 1113019, '[\"标准\"]', 208.00, 100, 'http://yanxuan.nosdn.127.net/ad504bb389039ff35c4cd6ae912be87e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (159, 1114011, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/196b5ce11930b4eadaec563cb0406634.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (160, 1115023, '[\"标准\"]', 1599.00, 100, 'http://yanxuan.nosdn.127.net/f3d1f0217ed250a37ea807f456351a51.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (161, 1115028, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/3d0045e8f43439c7004fae052b2162ed.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (162, 1115052, '[\"标准\"]', 86.00, 100, 'http://yanxuan.nosdn.127.net/39dea35a3ea2361e4b054ee2f421af53.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (163, 1115053, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/fabf9ac36751a2e1322135c56f1dc338.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (164, 1116004, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/14d3a47ccf52815baf6df308be6db5a6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (165, 1116005, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/71937456c3cd654f936f619201a79c09.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (166, 1116008, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/149a09a391ea5a888debf50b9dc4ed7b.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (167, 1116011, '[\"标准\"]', 36.00, 82, 'http://yanxuan.nosdn.127.net/767b370d07f3973500db54900bcbd2a7.png', '2018-02-01 00:00:00', '2018-11-09 19:23:10', 0);
INSERT INTO `litemall_goods_product` VALUES (168, 1116030, '[\"标准\"]', 439.00, 100, 'http://yanxuan.nosdn.127.net/9d59a22b5aff348b5aba5fc7e451ea4d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (169, 1116031, '[\"标准\"]', 439.00, 100, 'http://yanxuan.nosdn.127.net/f88c3dc42f3e4d7da1ded8c1ee6a97ba.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (170, 1116032, '[\"标准\"]', 3499.00, 100, 'http://yanxuan.nosdn.127.net/45176a783387751fc07a07f5031dd62c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (171, 1116033, '[\"标准\"]', 1399.00, 100, 'http://yanxuan.nosdn.127.net/f1dbf1d9967c478ee6def81ed40734a2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (172, 1125010, '[\"标准\"]', 159.00, 100, 'http://yanxuan.nosdn.127.net/f82995ccb2a2f6beddd4ad794f5da2a1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (173, 1125011, '[\"标准\"]', 139.00, 100, 'http://yanxuan.nosdn.127.net/be9740b734087f294f59a6560b932bc1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (174, 1125016, '[\"标准\"]', 139.00, 100, 'http://yanxuan.nosdn.127.net/46f3059b020eb3900e9af8e8c1af8a97.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (175, 1125017, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/ae63fed274187e3e572043c53fefd836.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (176, 1125026, '[\"标准\"]', 159.00, 100, 'http://yanxuan.nosdn.127.net/6308c120c441fd3e47658167ad944156.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (177, 1127003, '[\"标准\"]', 2599.00, 100, 'http://yanxuan.nosdn.127.net/6ad1813d123f7a80f84c2cfa5f8c7caf.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (178, 1127024, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/0a70f12a712e90d7d93beec4f686fe8e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (179, 1127025, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/b2fe79c872a8a7f647264b5e51bcc802.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (180, 1127038, '[\"标准\"]', 359.00, 100, 'http://yanxuan.nosdn.127.net/addc278cf9c301dd535791df2e03b2ea.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (181, 1127039, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/be64df0a04ade4cfd75bf7d4e8509ecc.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (182, 1127047, '[\"标准\"]', 29.00, 98, 'http://yanxuan.nosdn.127.net/6c03ca93d8fe404faa266ea86f3f1e43.png', '2018-02-01 00:00:00', '2018-11-07 17:38:13', 0);
INSERT INTO `litemall_goods_product` VALUES (183, 1127052, '[\"标准\"]', 169.00, 100, 'http://yanxuan.nosdn.127.net/4f483526cfe3b953f403ae02049df5b9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (184, 1128002, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/a1094a808ffb3a52a6cb13565a283d98.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (185, 1128010, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/a84e8e6979f00efd9a728ed36b154753.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (186, 1128011, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/d6e25ec5b4ad7aa37e077ce751b56f46.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (187, 1129015, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/fc11a482efeece9630548d8b350e7f54.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (188, 1129016, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/a7c7eec41194e65d64931a2d08ef4f8c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (189, 1130037, '[\"标准\"]', 39.00, 100, 'http://yanxuan.nosdn.127.net/19ecd7c6f6f31219cf75117238d95139.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (190, 1130038, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/4d77296e02896675558f1a8a83742132.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (191, 1130039, '[\"标准\"]', 89.00, 100, 'http://yanxuan.nosdn.127.net/03c73e1f1ce1d2365e83b3230e507030.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (192, 1130041, '[\"标准\"]', 109.00, 100, 'http://yanxuan.nosdn.127.net/442b9d99c0e7f39efd7967e0e5987374.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (193, 1130042, '[\"标准\"]', 239.00, 100, 'http://yanxuan.nosdn.127.net/dc9d09334eb201fe9408ed604e549941.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (194, 1130049, '[\"标准\"]', 429.00, 100, 'http://yanxuan.nosdn.127.net/d88513f85b3617d734bde93af2c766c9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (195, 1130056, '[\"标准\"]', 2299.00, 100, 'http://yanxuan.nosdn.127.net/56e72b84a9bb66687c003ecdaba73816.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (196, 1131017, '[\"标准\"]', 259.00, 100, 'http://yanxuan.nosdn.127.net/2b6e2268ed712f1a336283f013abb7a1.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (197, 1134022, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/a2b7489b4a2b1c09b66464cede4dabd7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (198, 1134030, '[\"标准\"]', 46.00, 99, 'http://yanxuan.nosdn.127.net/aa49dfe878becf768eddc4c1636643a6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (199, 1134032, '[\"标准\"]', 49.00, 84, 'http://yanxuan.nosdn.127.net/8b30eeb17c831eba08b97bdcb4c46a8e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (200, 1134036, '[\"标准\"]', 38.00, 100, 'http://yanxuan.nosdn.127.net/9356cc27b22bd47ad43913d13226555f.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (201, 1134056, '[\"标准\"]', 429.00, 100, 'http://yanxuan.nosdn.127.net/c29f47f58ba1e3c2ff5a193eec0b11d6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (202, 1135000, '[\"标准\"]', 359.00, 100, 'http://yanxuan.nosdn.127.net/53d0309471b570a7e12a3f01ba694491.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (203, 1135001, '[\"标准\"]', 459.00, 100, 'http://yanxuan.nosdn.127.net/f82ee85933d6f0cc95382215281d3526.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (204, 1135002, '[\"标准\"]', 2599.00, 100, 'http://yanxuan.nosdn.127.net/45548f26cfd0c7c41e0afc3709d48286.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (205, 1135050, '[\"标准\"]', 179.00, 100, 'http://yanxuan.nosdn.127.net/366f3f3f0e8971c8cf871e2b55b74ff2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (206, 1135051, '[\"标准\"]', 299.00, 100, 'http://yanxuan.nosdn.127.net/9126151f028a8804026d530836b481cb.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (207, 1135052, '[\"标准\"]', 259.00, 100, 'http://yanxuan.nosdn.127.net/63f5da1f5363af43aa91864bf66af48e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (208, 1135053, '[\"标准\"]', 429.00, 100, 'http://yanxuan.nosdn.127.net/1f9e34b1aadd14ea0c9c299c530d86ba.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (209, 1135054, '[\"标准\"]', 559.00, 100, 'http://yanxuan.nosdn.127.net/30d7daa0824fbb61b6c36175c8203349.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (210, 1135055, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/87b6a608b99279ebf1764682e9e5fcec.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (211, 1135056, '[\"标准\"]', 259.00, 100, 'http://yanxuan.nosdn.127.net/536246ca4adb77274a94b18bb2f91f47.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (212, 1135057, '[\"标准\"]', 199.00, 100, 'http://yanxuan.nosdn.127.net/98c5e80b8e328687ce9c949314ebc41d.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (213, 1135058, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/37bc0fa3524a904ac740340fa92bd515.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (214, 1135065, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/055eb16f95fe995108dd683f532fda22.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (215, 1135072, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/43e57d4208cdc78ac9c088f9b3e798f5.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (216, 1135073, '[\"标准\"]', 69.00, 100, 'http://yanxuan.nosdn.127.net/53052b04ae001d289c040e09ea92231c.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (217, 1138000, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/ad953e16ad8c33b714e7af941ce8cd56.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (218, 1138001, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/dbc5b25b824c3b3d7ff43b56ca35eee9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (219, 1143006, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/2b48feb65954c6739be28d15b9fbfbe3.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (220, 1143015, '[\"标准\"]', 79.00, 100, 'http://yanxuan.nosdn.127.net/50e197854e0ada79c37b7215a1574450.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (221, 1143016, '[\"标准\"]', 319.00, 100, 'http://yanxuan.nosdn.127.net/e56c6239ee4a641ce2a4565c6babb43e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (222, 1143018, '[\"标准\"]', 68.00, 100, 'http://yanxuan.nosdn.127.net/d1fd69cee4990f4de1109baef30efeeb.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (223, 1143019, '[\"标准\"]', 98.00, 100, 'http://yanxuan.nosdn.127.net/277b07c1e5e6fb57cf9ca47fcd3903d5.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (224, 1143020, '[\"标准\"]', 168.00, 100, 'http://yanxuan.nosdn.127.net/200d4d59763af9a0781cca4a06175de7.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (225, 1147045, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/5cda4a0c4c4ff9728d03186bd053c9ca.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (226, 1147046, '[\"标准\"]', 599.00, 100, 'http://yanxuan.nosdn.127.net/655d718df8107f8e7fd1dc6140e29039.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (227, 1147047, '[\"标准\"]', 559.00, 100, 'http://yanxuan.nosdn.127.net/bda805b0a2464b6ec33c18981565e50e.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (228, 1147048, '[\"标准\"]', 559.00, 100, 'http://yanxuan.nosdn.127.net/fd7920a2eadd10fa10c0c03959a2abe0.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (229, 1151012, '[\"标准\"]', 359.00, 100, 'http://yanxuan.nosdn.127.net/cb65635dbcef42b68ba21433f4948f5a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (230, 1151013, '[\"标准\"]', 359.00, 100, 'http://yanxuan.nosdn.127.net/73a8692048f58f15e823b636d7c3bb74.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (231, 1152004, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/8c93cef435d888bd79833777df1cd0c2.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (232, 1152008, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/203cb83d93606865e3ddde57b69b9e9a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (233, 1152009, '[\"标准\"]', 29.00, 100, 'http://yanxuan.nosdn.127.net/ae6d41117717387b82dcaf1dfce0cd97.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (234, 1152031, '[\"标准\"]', 99.00, 100, 'http://yanxuan.nosdn.127.net/fd6e78a397bd9e9804116a36f0270b0a.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (235, 1152095, '[\"标准\"]', 499.00, 100, 'http://yanxuan.nosdn.127.net/c86b49f635fa141decebabbd0966a6ef.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (236, 1152097, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/532836444ae5eaec40b5810ca4f9b1e6.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (237, 1152100, '[\"标准\"]', 499.00, 100, 'http://yanxuan.nosdn.127.net/a667c4fbbd9c499c0733539d7e986617.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (238, 1152101, '[\"标准\"]', 888.00, 100, 'http://yanxuan.nosdn.127.net/c1c62211a17b71a634fa0c705d11fb42.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (239, 1152161, '[\"标准\"]', 459.00, 100, 'http://yanxuan.nosdn.127.net/977401e75113f7c8334c4fb5b4bf6215.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (240, 1153006, '[\"标准\"]', 1288.00, 100, 'http://yanxuan.nosdn.127.net/2743921b945a6c71fcdc3c5282a03413.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (241, 1155000, '[\"标准\"]', 399.00, 100, 'http://yanxuan.nosdn.127.net/d7d6ef1f1865991077384761b4521dce.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (242, 1155015, '[\"标准\"]', 12.90, 100, 'http://yanxuan.nosdn.127.net/66b9f1638c0517d179262f14ed1345f9.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (243, 1156006, '[\"标准\"]', 699.00, 100, 'http://yanxuan.nosdn.127.net/ea5b0a572b35089446fba491db7fbbc3.png', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_product` VALUES (244, 1166008, '[\"标准\"]', 459.00, 98, 'http://yanxuan.nosdn.127.net/615a16e899e01efb780c488df4233f48.png', '2018-02-01 00:00:00', '2018-11-07 17:14:01', 0);
INSERT INTO `litemall_goods_product` VALUES (251, 1181004, '[\"标准\"]', 0.00, 0, '', '2019-12-11 20:35:34', '2019-12-11 20:35:34', 0);
INSERT INTO `litemall_goods_product` VALUES (252, 1006010, '[\"标准\"]', 659.00, 100, 'http://yanxuan.nosdn.127.net/8fe022126a2789d970f82853be13a5e6.png', '2019-12-12 10:42:12', '2019-12-12 10:42:12', 1);
INSERT INTO `litemall_goods_product` VALUES (253, 1006013, '[\"标准\"]', 699.00, 100, 'http://yanxuan.nosdn.127.net/583812520c68ca7995b6fac4c67ae2c7.png', '2019-12-12 10:51:05', '2019-12-12 10:51:05', 1);
INSERT INTO `litemall_goods_product` VALUES (254, 1006013, '[\"标准\"]', 699.00, 100, 'http://yanxuan.nosdn.127.net/583812520c68ca7995b6fac4c67ae2c7.png', '2019-12-12 10:51:53', '2019-12-12 10:51:53', 1);
INSERT INTO `litemall_goods_product` VALUES (255, 1006010, '[\"标准\"]', 659.00, 100, 'http://yanxuan.nosdn.127.net/8fe022126a2789d970f82853be13a5e6.png', '2019-12-12 10:53:35', '2019-12-12 10:53:35', 0);
INSERT INTO `litemall_goods_product` VALUES (256, 1006013, '[\"标准\"]', 699.00, 100, 'http://yanxuan.nosdn.127.net/583812520c68ca7995b6fac4c67ae2c7.png', '2019-12-12 10:53:44', '2019-12-12 10:53:44', 0);
INSERT INTO `litemall_goods_product` VALUES (257, 1006014, '[\"标准\"]', 1399.00, 100, 'http://yanxuan.nosdn.127.net/2b537159f0f789034bf8c4b339c43750.png', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_product` VALUES (258, 1181005, '[\"标准\"]', 0.00, 0, '', '2019-12-12 10:56:57', '2019-12-12 10:56:57', 1);
INSERT INTO `litemall_goods_product` VALUES (259, 1006014, '[\"标准\"]', 1399.00, 100, 'http://yanxuan.nosdn.127.net/2b537159f0f789034bf8c4b339c43750.png', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);

-- ----------------------------
-- Table structure for litemall_goods_specification
-- ----------------------------
DROP TABLE IF EXISTS `litemall_goods_specification`;
CREATE TABLE `litemall_goods_specification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品表的商品ID',
  `specification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品规格名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品规格值',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品规格图片',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 259 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品规格表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_goods_specification
-- ----------------------------
INSERT INTO `litemall_goods_specification` VALUES (1, 1181000, '规格', '1.5m床垫*1+枕头*2', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (2, 1181000, '规格', '1.8m床垫*1+枕头*2', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (3, 1181000, '颜色', '浅杏粉', 'http://yanxuan.nosdn.127.net/10022c73fa7aa75c2c0d736e96cc56d5.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (4, 1181000, '颜色', '玛瑙红', 'http://yanxuan.nosdn.127.net/29442127f431a1a1801c195905319427.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (5, 1181000, '颜色', '烟白灰', 'http://yanxuan.nosdn.127.net/36f64a7161b67e7fb8ea45be32ecfa25.png?quality=90&thumbnail=200x200&imageView', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (6, 1006002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_specification` VALUES (7, 1006007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_specification` VALUES (8, 1006010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_specification` VALUES (9, 1006013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_specification` VALUES (10, 1006014, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 1);
INSERT INTO `litemall_goods_specification` VALUES (11, 1006051, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (12, 1009009, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (13, 1009012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (14, 1009013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (15, 1009024, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (16, 1009027, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (17, 1010000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (18, 1010001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (19, 1011004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (20, 1015007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (21, 1019000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (22, 1019001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (23, 1019002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (24, 1019006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (25, 1020000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (26, 1021000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (27, 1021001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (28, 1021004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (29, 1021010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (30, 1022000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (31, 1022001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (32, 1023003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (33, 1023012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (34, 1023032, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (35, 1023034, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (36, 1025005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (37, 1027004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (38, 1029005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (39, 1030001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (40, 1030002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (41, 1030003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (42, 1030004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (43, 1030005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (44, 1030006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (45, 1033000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (46, 1035006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (47, 1036002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (48, 1036013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (49, 1036016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (50, 1037011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (51, 1037012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (52, 1038004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (53, 1039051, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (54, 1039056, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (55, 1043005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (56, 1044012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (57, 1045000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (58, 1046001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (59, 1046002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (60, 1046044, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (61, 1048005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (62, 1051000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (63, 1051001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (64, 1051002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (65, 1051003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (66, 1055012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (67, 1055016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (68, 1055022, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (69, 1056002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (70, 1057036, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (71, 1064000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (72, 1064002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (73, 1064003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (74, 1064004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (75, 1064006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (76, 1064007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (77, 1064021, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (78, 1064022, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (79, 1065004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (80, 1065005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (81, 1068010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (82, 1068011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (83, 1068012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (84, 1070000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (85, 1071004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (86, 1071005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (87, 1071006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (88, 1072000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (89, 1072001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (90, 1073008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (91, 1074001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (92, 1075022, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (93, 1075023, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (94, 1075024, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (95, 1081000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (96, 1081002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (97, 1083009, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (98, 1083010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (99, 1084001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (100, 1084003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (101, 1085019, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (102, 1086015, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (103, 1086023, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (104, 1086024, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (105, 1086025, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (106, 1086026, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (107, 1086052, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (108, 1090004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (109, 1092001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (110, 1092005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (111, 1092024, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (112, 1092025, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (113, 1092026, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (114, 1092038, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (115, 1092039, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (116, 1093000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (117, 1093001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (118, 1093002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (119, 1097004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (120, 1097005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (121, 1097006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (122, 1097007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (123, 1097009, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (124, 1097011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (125, 1097012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (126, 1097013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (127, 1097014, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (128, 1097016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (129, 1097017, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (130, 1100000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (131, 1100001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (132, 1100002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (133, 1108029, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (134, 1108030, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (135, 1108031, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (136, 1108032, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (137, 1109004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (138, 1109005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (139, 1109008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (140, 1109034, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (141, 1110002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (142, 1110003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (143, 1110004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (144, 1110007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (145, 1110008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (146, 1110013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (147, 1110014, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (148, 1110015, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (149, 1110016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (150, 1110017, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (151, 1110018, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (152, 1110019, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (153, 1111007, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (154, 1111010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (155, 1113010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (156, 1113011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (157, 1113019, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (158, 1114011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (159, 1115023, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (160, 1115028, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (161, 1115052, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (162, 1115053, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (163, 1116004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (164, 1116005, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (165, 1116008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (166, 1116011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (167, 1116030, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (168, 1116031, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (169, 1116032, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (170, 1116033, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (171, 1125010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (172, 1125011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (173, 1125016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (174, 1125017, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (175, 1125026, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (176, 1127003, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (177, 1127024, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (178, 1127025, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (179, 1127038, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (180, 1127039, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (181, 1127047, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (182, 1127052, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (183, 1128002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (184, 1128010, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (185, 1128011, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (186, 1129015, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (187, 1129016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (188, 1130037, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (189, 1130038, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (190, 1130039, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (191, 1130041, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (192, 1130042, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (193, 1130049, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (194, 1130056, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (195, 1131017, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (196, 1134022, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (197, 1134030, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (198, 1134032, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (199, 1134036, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (200, 1134056, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (201, 1135000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (202, 1135001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (203, 1135002, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (204, 1135050, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (205, 1135051, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (206, 1135052, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (207, 1135053, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (208, 1135054, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (209, 1135055, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (210, 1135056, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (211, 1135057, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (212, 1135058, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (213, 1135065, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (214, 1135072, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (215, 1135073, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (216, 1138000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (217, 1138001, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (218, 1143006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (219, 1143015, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (220, 1143016, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (221, 1143018, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (222, 1143019, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (223, 1143020, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (224, 1147045, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (225, 1147046, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (226, 1147047, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (227, 1147048, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (228, 1151012, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (229, 1151013, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (230, 1152004, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (231, 1152008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (232, 1152009, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (233, 1152031, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (234, 1152095, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (235, 1152097, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (236, 1152100, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (237, 1152101, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (238, 1152161, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (239, 1153006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (240, 1155000, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (241, 1155015, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (242, 1156006, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (243, 1166008, '规格', '标准', '', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_goods_specification` VALUES (250, 1181004, '规格', '标准', '', '2019-12-11 20:35:34', '2019-12-11 20:35:34', 0);
INSERT INTO `litemall_goods_specification` VALUES (251, 1006010, '规格', '标准', '', '2019-12-12 10:42:12', '2019-12-12 10:42:12', 1);
INSERT INTO `litemall_goods_specification` VALUES (252, 1006013, '规格', '标准', '', '2019-12-12 10:51:05', '2019-12-12 10:51:05', 1);
INSERT INTO `litemall_goods_specification` VALUES (253, 1006013, '规格', '标准', '', '2019-12-12 10:51:53', '2019-12-12 10:51:53', 1);
INSERT INTO `litemall_goods_specification` VALUES (254, 1006010, '规格', '标准', '', '2019-12-12 10:53:35', '2019-12-12 10:53:35', 0);
INSERT INTO `litemall_goods_specification` VALUES (255, 1006013, '规格', '标准', '', '2019-12-12 10:53:44', '2019-12-12 10:53:44', 0);
INSERT INTO `litemall_goods_specification` VALUES (256, 1006014, '规格', '标准', '', '2019-12-12 10:55:57', '2019-12-12 10:55:57', 1);
INSERT INTO `litemall_goods_specification` VALUES (257, 1181005, '规格', '标准', '', '2019-12-12 10:56:57', '2019-12-12 10:56:57', 1);
INSERT INTO `litemall_goods_specification` VALUES (258, 1006014, '规格', '标准', '', '2019-12-12 10:57:32', '2019-12-12 10:57:32', 0);

-- ----------------------------
-- Table structure for litemall_groupon
-- ----------------------------
DROP TABLE IF EXISTS `litemall_groupon`;
CREATE TABLE `litemall_groupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '关联的订单ID',
  `groupon_id` int(11) NULL DEFAULT 0 COMMENT '参与的团购ID，仅当user_type不是1',
  `rules_id` int(11) NOT NULL COMMENT '团购规则ID，关联litemall_groupon_rules表ID字段',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `creator_user_id` int(11) NOT NULL COMMENT '创建者ID',
  `add_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `share_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '团购分享图片地址',
  `payed` tinyint(1) NOT NULL COMMENT '是否已经支付',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_groupon_rules
-- ----------------------------
DROP TABLE IF EXISTS `litemall_groupon_rules`;
CREATE TABLE `litemall_groupon_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品表的商品ID',
  `goods_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品图片或者商品货品图片',
  `discount` decimal(63, 0) NOT NULL COMMENT '优惠金额',
  `discount_member` int(11) NOT NULL COMMENT '达到优惠条件的人数',
  `add_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `expire_time` datetime(0) NULL DEFAULT NULL COMMENT '团购过期时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_groupon_rules
-- ----------------------------
INSERT INTO `litemall_groupon_rules` VALUES (1, 1039051, '多功能午睡枕', 'http://yanxuan.nosdn.127.net/c8ca0600fa7ba11ca8be6a3173dd38c9.png', 20, 20, '2018-11-08 13:41:44', '2018-11-08 13:41:44', '2019-12-31 00:00:00', 0);
INSERT INTO `litemall_groupon_rules` VALUES (2, 1109008, '云端沙发组合', 'http://yanxuan.nosdn.127.net/c5be2604c0e4186a4e7079feeb742cee.png', 50, 5, '2018-11-08 13:42:44', '2018-11-08 13:42:44', '2019-12-31 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_issue
-- ----------------------------
DROP TABLE IF EXISTS `litemall_issue`;
CREATE TABLE `litemall_issue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '问题标题',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '问题答案',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '常见问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_issue
-- ----------------------------
INSERT INTO `litemall_issue` VALUES (1, '购买运费如何收取？', '单笔订单金额（不含运费）满88元免邮费；不满88元，每单收取10元运费。\n(港澳台地区需满', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_issue` VALUES (2, '使用什么快递发货？', '严选默认使用顺丰快递发货（个别商品使用其他快递），配送范围覆盖全国大部分地区（港澳台地区除', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_issue` VALUES (3, '如何申请退货？', '1.自收到商品之日起30日内，顾客可申请无忧退货，退款将原路返还，不同的银行处理时间不同，', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_issue` VALUES (4, '如何开具发票？', '1.如需开具普通发票，请在下单时选择“我要开发票”并填写相关信息（APP仅限2.4.0及以', '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_keyword
-- ----------------------------
DROP TABLE IF EXISTS `litemall_keyword`;
CREATE TABLE `litemall_keyword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关键字的跳转链接',
  `is_hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是热门关键字',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是默认关键字',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT '排序',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关键字表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_keyword
-- ----------------------------
INSERT INTO `litemall_keyword` VALUES (1, '母亲节', '', 0, 0, 100, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (2, '日式', '', 0, 0, 100, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (3, '夏凉被', '', 0, 0, 100, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (4, '新品上市', '', 0, 0, 100, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (5, '墨镜', '', 0, 0, 5, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (6, '520元礼包抢先领', '', 1, 1, 1, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);
INSERT INTO `litemall_keyword` VALUES (7, '单鞋', '', 0, 0, 8, '2018-02-01 00:00:00', '2018-02-01 00:00:00', 0);

-- ----------------------------
-- Table structure for litemall_log
-- ----------------------------
DROP TABLE IF EXISTS `litemall_log`;
CREATE TABLE `litemall_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员地址',
  `type` int(11) NULL DEFAULT NULL COMMENT '操作分类',
  `action` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作动作',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '操作状态',
  `result` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作结果，或者成功消息，或者失败消息',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '补充信息',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_log
-- ----------------------------
INSERT INTO `litemall_log` VALUES (1, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 14:48:02', '2019-12-11 14:48:02', 0);
INSERT INTO `litemall_log` VALUES (2, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 15:29:22', '2019-12-11 15:29:22', 0);
INSERT INTO `litemall_log` VALUES (3, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 15:50:39', '2019-12-11 15:50:39', 0);
INSERT INTO `litemall_log` VALUES (4, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 15:51:01', '2019-12-11 15:51:01', 0);
INSERT INTO `litemall_log` VALUES (5, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-11 16:00:17', '2019-12-11 16:00:17', 0);
INSERT INTO `litemall_log` VALUES (6, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 16:00:20', '2019-12-11 16:00:20', 0);
INSERT INTO `litemall_log` VALUES (7, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-11 19:58:09', '2019-12-11 19:58:09', 0);
INSERT INTO `litemall_log` VALUES (8, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 10:14:21', '2019-12-12 10:14:21', 0);
INSERT INTO `litemall_log` VALUES (9, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 11:35:52', '2019-12-12 11:35:52', 0);
INSERT INTO `litemall_log` VALUES (10, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 15:12:55', '2019-12-12 15:12:55', 0);
INSERT INTO `litemall_log` VALUES (11, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 15:13:04', '2019-12-12 15:13:04', 0);
INSERT INTO `litemall_log` VALUES (12, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 15:34:39', '2019-12-12 15:34:39', 0);
INSERT INTO `litemall_log` VALUES (13, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 15:40:23', '2019-12-12 15:40:23', 0);
INSERT INTO `litemall_log` VALUES (14, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 16:00:00', '2019-12-12 16:00:00', 0);
INSERT INTO `litemall_log` VALUES (15, 'mall123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 16:00:10', '2019-12-12 16:00:10', 0);
INSERT INTO `litemall_log` VALUES (16, 'mall123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 16:00:14', '2019-12-12 16:00:14', 0);
INSERT INTO `litemall_log` VALUES (17, 'promotion123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 16:00:26', '2019-12-12 16:00:26', 0);
INSERT INTO `litemall_log` VALUES (18, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 19:31:28', '2019-12-12 19:31:28', 0);
INSERT INTO `litemall_log` VALUES (19, 'admin123', '0:0:0:0:0:0:0:1', 1, '退出', 1, '', '', '2019-12-12 20:54:46', '2019-12-12 20:54:46', 0);
INSERT INTO `litemall_log` VALUES (20, 'mall123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 20:54:57', '2019-12-12 20:54:57', 0);
INSERT INTO `litemall_log` VALUES (21, 'mall123', '0:0:0:0:0:0:0:1', 1, '退出', 1, '', '', '2019-12-12 21:04:59', '2019-12-12 21:04:59', 0);
INSERT INTO `litemall_log` VALUES (22, 'promotion123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:05:22', '2019-12-12 21:05:22', 0);
INSERT INTO `litemall_log` VALUES (23, 'promotion123', '0:0:0:0:0:0:0:1', 1, '退出', 1, '', '', '2019-12-12 21:06:00', '2019-12-12 21:06:00', 0);
INSERT INTO `litemall_log` VALUES (24, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:06:01', '2019-12-12 21:06:01', 0);
INSERT INTO `litemall_log` VALUES (25, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:18:55', '2019-12-12 21:18:55', 0);
INSERT INTO `litemall_log` VALUES (26, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:20:27', '2019-12-12 21:20:27', 0);
INSERT INTO `litemall_log` VALUES (27, 'promotion123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:20:34', '2019-12-12 21:20:34', 0);
INSERT INTO `litemall_log` VALUES (28, 'promotion123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:20:49', '2019-12-12 21:20:49', 0);
INSERT INTO `litemall_log` VALUES (29, 'mall123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:20:57', '2019-12-12 21:20:57', 0);
INSERT INTO `litemall_log` VALUES (30, 'mall123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:21:10', '2019-12-12 21:21:10', 0);
INSERT INTO `litemall_log` VALUES (31, 'mall123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:21:17', '2019-12-12 21:21:17', 0);
INSERT INTO `litemall_log` VALUES (32, 'mall123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:21:24', '2019-12-12 21:21:24', 0);
INSERT INTO `litemall_log` VALUES (33, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:21:25', '2019-12-12 21:21:25', 0);
INSERT INTO `litemall_log` VALUES (34, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:24:45', '2019-12-12 21:24:45', 0);
INSERT INTO `litemall_log` VALUES (35, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:27:34', '2019-12-12 21:27:34', 0);
INSERT INTO `litemall_log` VALUES (36, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:29:22', '2019-12-12 21:29:22', 0);
INSERT INTO `litemall_log` VALUES (37, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:29:43', '2019-12-12 21:29:43', 0);
INSERT INTO `litemall_log` VALUES (38, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:31:09', '2019-12-12 21:31:09', 0);
INSERT INTO `litemall_log` VALUES (39, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-12 21:31:23', '2019-12-12 21:31:23', 0);
INSERT INTO `litemall_log` VALUES (40, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:32:31', '2019-12-12 21:32:31', 0);
INSERT INTO `litemall_log` VALUES (41, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:33:19', '2019-12-12 21:33:19', 0);
INSERT INTO `litemall_log` VALUES (42, 'mall123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:33:26', '2019-12-12 21:33:26', 0);
INSERT INTO `litemall_log` VALUES (43, 'mall123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:33:38', '2019-12-12 21:33:38', 0);
INSERT INTO `litemall_log` VALUES (44, 'admin', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:36:03', '2019-12-12 21:36:03', 0);
INSERT INTO `litemall_log` VALUES (45, 'admin', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:36:27', '2019-12-12 21:36:27', 0);
INSERT INTO `litemall_log` VALUES (46, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:36:37', '2019-12-12 21:36:37', 0);
INSERT INTO `litemall_log` VALUES (47, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:36:54', '2019-12-12 21:36:54', 0);
INSERT INTO `litemall_log` VALUES (48, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:23', '2019-12-12 21:37:23', 0);
INSERT INTO `litemall_log` VALUES (49, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:28', '2019-12-12 21:37:28', 0);
INSERT INTO `litemall_log` VALUES (50, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:30', '2019-12-12 21:37:30', 0);
INSERT INTO `litemall_log` VALUES (51, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:34', '2019-12-12 21:37:34', 0);
INSERT INTO `litemall_log` VALUES (52, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:42', '2019-12-12 21:37:42', 0);
INSERT INTO `litemall_log` VALUES (53, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:37:43', '2019-12-12 21:37:43', 0);
INSERT INTO `litemall_log` VALUES (54, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:02', '2019-12-12 21:38:02', 0);
INSERT INTO `litemall_log` VALUES (55, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:02', '2019-12-12 21:38:02', 0);
INSERT INTO `litemall_log` VALUES (56, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:03', '2019-12-12 21:38:03', 0);
INSERT INTO `litemall_log` VALUES (57, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:06', '2019-12-12 21:38:06', 0);
INSERT INTO `litemall_log` VALUES (58, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:13', '2019-12-12 21:38:13', 0);
INSERT INTO `litemall_log` VALUES (59, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:29', '2019-12-12 21:38:29', 0);
INSERT INTO `litemall_log` VALUES (60, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:30', '2019-12-12 21:38:30', 0);
INSERT INTO `litemall_log` VALUES (61, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:38:30', '2019-12-12 21:38:30', 0);
INSERT INTO `litemall_log` VALUES (62, 'admin', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:39:01', '2019-12-12 21:39:01', 0);
INSERT INTO `litemall_log` VALUES (63, 'admin', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:39:20', '2019-12-12 21:39:20', 0);
INSERT INTO `litemall_log` VALUES (64, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:39:32', '2019-12-12 21:39:32', 0);
INSERT INTO `litemall_log` VALUES (65, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:39:38', '2019-12-12 21:39:38', 0);
INSERT INTO `litemall_log` VALUES (66, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:39:53', '2019-12-12 21:39:53', 0);
INSERT INTO `litemall_log` VALUES (67, 'repoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:39:58', '2019-12-12 21:39:58', 0);
INSERT INTO `litemall_log` VALUES (68, 'repoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:40:03', '2019-12-12 21:40:03', 0);
INSERT INTO `litemall_log` VALUES (69, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:41:10', '2019-12-12 21:41:10', 0);
INSERT INTO `litemall_log` VALUES (70, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:41:22', '2019-12-12 21:41:22', 0);
INSERT INTO `litemall_log` VALUES (71, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:41:27', '2019-12-12 21:41:27', 0);
INSERT INTO `litemall_log` VALUES (72, 'srepoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:41:40', '2019-12-12 21:41:40', 0);
INSERT INTO `litemall_log` VALUES (73, 'srepoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:42:08', '2019-12-12 21:42:08', 0);
INSERT INTO `litemall_log` VALUES (74, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:42:17', '2019-12-12 21:42:17', 0);
INSERT INTO `litemall_log` VALUES (75, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:42:22', '2019-12-12 21:42:22', 0);
INSERT INTO `litemall_log` VALUES (76, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-12 21:42:30', '2019-12-12 21:42:30', 0);
INSERT INTO `litemall_log` VALUES (77, 'srepoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:42:42', '2019-12-12 21:42:42', 0);
INSERT INTO `litemall_log` VALUES (78, 'srepoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:42:47', '2019-12-12 21:42:47', 0);
INSERT INTO `litemall_log` VALUES (79, 'srepoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:43:00', '2019-12-12 21:43:00', 0);
INSERT INTO `litemall_log` VALUES (80, 'srepoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:43:43', '2019-12-12 21:43:43', 0);
INSERT INTO `litemall_log` VALUES (81, 'repoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:44:07', '2019-12-12 21:44:07', 0);
INSERT INTO `litemall_log` VALUES (82, 'repoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:44:41', '2019-12-12 21:44:41', 0);
INSERT INTO `litemall_log` VALUES (83, 'repoter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:44:49', '2019-12-12 21:44:49', 0);
INSERT INTO `litemall_log` VALUES (84, 'repoter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-12 21:45:26', '2019-12-12 21:45:26', 0);
INSERT INTO `litemall_log` VALUES (85, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-12 21:45:29', '2019-12-12 21:45:29', 0);
INSERT INTO `litemall_log` VALUES (86, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:18:06', '2019-12-13 11:18:06', 0);
INSERT INTO `litemall_log` VALUES (87, 'admin123', '192.168.2.3', 1, '删除管理员', 1, 'srepoter', '', '2019-12-13 11:20:55', '2019-12-13 11:20:55', 0);
INSERT INTO `litemall_log` VALUES (88, 'admin123', '192.168.2.3', 1, '添加管理员', 1, 'sreporter', '', '2019-12-13 11:22:14', '2019-12-13 11:22:14', 0);
INSERT INTO `litemall_log` VALUES (89, 'admin123', '192.168.2.3', 1, '编辑管理员', 1, 'admin123', '', '2019-12-13 11:22:33', '2019-12-13 11:22:33', 0);
INSERT INTO `litemall_log` VALUES (90, 'admin123', '192.168.2.3', 1, '编辑管理员', 1, 'reporter', '', '2019-12-13 11:23:13', '2019-12-13 11:23:13', 0);
INSERT INTO `litemall_log` VALUES (91, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:23:21', '2019-12-13 11:23:21', 0);
INSERT INTO `litemall_log` VALUES (92, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:23:24', '2019-12-13 11:23:24', 0);
INSERT INTO `litemall_log` VALUES (93, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:23:28', '2019-12-13 11:23:28', 0);
INSERT INTO `litemall_log` VALUES (94, 'sreporter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:24:13', '2019-12-13 11:24:13', 0);
INSERT INTO `litemall_log` VALUES (95, 'sreporter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:24:29', '2019-12-13 11:24:29', 0);
INSERT INTO `litemall_log` VALUES (96, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-13 11:24:44', '2019-12-13 11:24:44', 0);
INSERT INTO `litemall_log` VALUES (97, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-13 11:24:51', '2019-12-13 11:24:51', 0);
INSERT INTO `litemall_log` VALUES (98, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:25:00', '2019-12-13 11:25:00', 0);
INSERT INTO `litemall_log` VALUES (99, 'admin123', '192.168.2.3', 1, '编辑管理员', 1, 'reporter', '', '2019-12-13 11:25:17', '2019-12-13 11:25:17', 0);
INSERT INTO `litemall_log` VALUES (100, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:25:21', '2019-12-13 11:25:21', 0);
INSERT INTO `litemall_log` VALUES (101, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-13 11:25:31', '2019-12-13 11:25:31', 0);
INSERT INTO `litemall_log` VALUES (102, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-13 11:25:32', '2019-12-13 11:25:32', 0);
INSERT INTO `litemall_log` VALUES (103, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:25:35', '2019-12-13 11:25:35', 0);
INSERT INTO `litemall_log` VALUES (104, 'admin123', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:27:10', '2019-12-13 11:27:10', 0);
INSERT INTO `litemall_log` VALUES (105, 'sreporter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:27:24', '2019-12-13 11:27:24', 0);
INSERT INTO `litemall_log` VALUES (106, 'sreporter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:27:33', '2019-12-13 11:27:33', 0);
INSERT INTO `litemall_log` VALUES (107, '匿名用户', '192.168.2.3', 1, '登录', 0, '用户帐号或密码不正确', '', '2019-12-13 11:27:42', '2019-12-13 11:27:42', 0);
INSERT INTO `litemall_log` VALUES (108, 'reporter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:27:53', '2019-12-13 11:27:53', 0);
INSERT INTO `litemall_log` VALUES (109, 'reporter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:28:18', '2019-12-13 11:28:18', 0);
INSERT INTO `litemall_log` VALUES (110, 'reporter', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 11:28:45', '2019-12-13 11:28:45', 0);
INSERT INTO `litemall_log` VALUES (111, 'reporter', '192.168.2.3', 1, '退出', 1, '', '', '2019-12-13 11:28:56', '2019-12-13 11:28:56', 0);
INSERT INTO `litemall_log` VALUES (112, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 14:43:55', '2019-12-13 14:43:55', 0);
INSERT INTO `litemall_log` VALUES (113, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-13 15:36:06', '2019-12-13 15:36:06', 0);
INSERT INTO `litemall_log` VALUES (114, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 15:40:52', '2019-12-13 15:40:52', 0);
INSERT INTO `litemall_log` VALUES (115, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-13 15:42:57', '2019-12-13 15:42:57', 0);
INSERT INTO `litemall_log` VALUES (116, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-13 21:30:02', '2019-12-13 21:30:02', 0);
INSERT INTO `litemall_log` VALUES (117, 'admin123', '192.168.2.3', 1, '登录', 1, '', '', '2019-12-13 21:34:40', '2019-12-13 21:34:40', 0);
INSERT INTO `litemall_log` VALUES (118, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-13 22:03:22', '2019-12-13 22:03:22', 0);
INSERT INTO `litemall_log` VALUES (119, 'admin123', '0:0:0:0:0:0:0:1', 1, '登录', 1, '', '', '2019-12-14 21:24:42', '2019-12-14 21:24:42', 0);

-- ----------------------------
-- Table structure for litemall_order
-- ----------------------------
DROP TABLE IF EXISTS `litemall_order`;
CREATE TABLE `litemall_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `order_sn` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `order_status` smallint(6) NOT NULL COMMENT '订单状态',
  `consignee` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人名称',
  `mobile` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人手机号',
  `address` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货具体地址',
  `message` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户订单留言',
  `goods_price` decimal(10, 2) NOT NULL COMMENT '商品总费用',
  `freight_price` decimal(10, 2) NOT NULL COMMENT '配送费用',
  `coupon_price` decimal(10, 2) NOT NULL COMMENT '优惠券减免',
  `integral_price` decimal(10, 2) NOT NULL COMMENT '用户积分减免',
  `groupon_price` decimal(10, 2) NOT NULL COMMENT '团购优惠价减免',
  `order_price` decimal(10, 2) NOT NULL COMMENT '订单费用， = goods_price + freight_price - coupon_price',
  `actual_price` decimal(10, 2) NOT NULL COMMENT '实付费用， = order_price - integral_price',
  `pay_id` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信付款编号',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '微信付款时间',
  `ship_sn` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货编号',
  `ship_channel` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货快递公司',
  `ship_time` datetime(0) NULL DEFAULT NULL COMMENT '发货开始时间',
  `confirm_time` datetime(0) NULL DEFAULT NULL COMMENT '用户确认收货时间',
  `comments` smallint(6) NULL DEFAULT 0 COMMENT '待评价订单商品数量',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '订单关闭时间',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `litemall_order_goods`;
CREATE TABLE `litemall_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '订单表的订单ID',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品表的商品ID',
  `goods_name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_sn` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品编号',
  `product_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品货品表的货品ID',
  `number` smallint(5) NOT NULL DEFAULT 0 COMMENT '商品货品的购买数量',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品货品的售价',
  `specifications` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品货品的规格列表',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品货品图片或者商品图片',
  `comment` int(11) NULL DEFAULT 0 COMMENT '订单商品评论，如果是-1，则超期不能评价；如果是0，则可以评价；如果其他值，则是comment表里面的评论ID。',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_permission
-- ----------------------------
DROP TABLE IF EXISTS `litemall_permission`;
CREATE TABLE `litemall_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `permission` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_permission
-- ----------------------------
INSERT INTO `litemall_permission` VALUES (1, 1, '*', '2019-01-01 00:00:00', '2019-01-01 00:00:00', 0);
INSERT INTO `litemall_permission` VALUES (2, 2, 'admin:goods:list', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (3, 2, 'admin:goods:delete', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (4, 2, 'admin:goods:create', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (5, 2, 'admin:goods:edit', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (6, 2, 'admin:goods:detail', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (7, 2, 'admin:goods:update', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (8, 2, 'admin:goods:catAndBrand', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (9, 2, 'admin:comment:list', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (10, 2, 'admin:comment:delete', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (11, 2, 'admin:goods:edit', '2019-01-07 15:18:53', '2019-01-07 15:18:53', 1);
INSERT INTO `litemall_permission` VALUES (12, 3, 'admin:ad:list', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (13, 3, 'admin:ad:delete', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (14, 3, 'admin:ad:create', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (15, 3, 'admin:ad:update', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (16, 3, 'admin:ad:read', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (17, 3, 'admin:groupon:list', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (18, 3, 'admin:groupon:update', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (19, 3, 'admin:groupon:create', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (20, 3, 'admin:groupon:read', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (21, 3, 'admin:groupon:delete', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (22, 3, 'admin:topic:create', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (23, 3, 'admin:topic:read', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (24, 3, 'admin:topic:list', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (25, 3, 'admin:topic:delete', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (26, 3, 'admin:topic:update', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (27, 3, 'admin:coupon:list', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (28, 3, 'admin:coupon:delete', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (29, 3, 'admin:coupon:read', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (30, 3, 'admin:coupon:create', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (31, 3, 'admin:coupon:update', '2019-01-07 15:18:57', '2019-01-07 15:18:57', 1);
INSERT INTO `litemall_permission` VALUES (32, 2, 'admin:comment:delete', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (33, 2, 'admin:comment:list', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (34, 2, 'admin:goods:update', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (35, 2, 'admin:goods:delete', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (36, 2, 'admin:goods:create', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (37, 2, 'admin:goods:list', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (38, 2, 'admin:history:list', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (39, 2, 'admin:user:list', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (40, 2, 'index:permission:write', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (41, 2, 'index:permission:read', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (42, 2, 'admin:stat:goods', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (43, 2, 'admin:stat:user', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (44, 2, 'admin:stat:order', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (45, 2, 'admin:topic:update', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (46, 2, 'admin:topic:delete', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (47, 2, 'admin:topic:read', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (48, 2, 'admin:topic:create', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (49, 2, 'admin:topic:list', '2019-12-12 21:20:14', '2019-12-12 21:20:14', 0);
INSERT INTO `litemall_permission` VALUES (50, 3, 'admin:comment:delete', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (51, 3, 'admin:comment:list', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (52, 3, 'admin:goods:update', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (53, 3, 'admin:goods:delete', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (54, 3, 'admin:goods:create', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (55, 3, 'admin:goods:list', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);
INSERT INTO `litemall_permission` VALUES (56, 3, 'admin:goods:read', '2019-12-12 21:20:21', '2019-12-12 21:20:21', 0);

-- ----------------------------
-- Table structure for litemall_region
-- ----------------------------
DROP TABLE IF EXISTS `litemall_region`;
CREATE TABLE `litemall_region`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '行政区域父ID，例如区县的pid指向市，市的pid指向省，省的pid则是0',
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '行政区域名称',
  `type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '行政区域类型，如如1则是省， 如果是2则是市，如果是3则是区县',
  `code` int(11) NOT NULL DEFAULT 0 COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`pid`) USING BTREE,
  INDEX `region_type`(`type`) USING BTREE,
  INDEX `agency_id`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3232 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '行政区域表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_region
-- ----------------------------
INSERT INTO `litemall_region` VALUES (1, 0, '北京市', 1, 110000);
INSERT INTO `litemall_region` VALUES (2, 0, '天津市', 1, 120000);
INSERT INTO `litemall_region` VALUES (3, 0, '河北省', 1, 130000);
INSERT INTO `litemall_region` VALUES (4, 0, '山西省', 1, 140000);
INSERT INTO `litemall_region` VALUES (5, 0, '内蒙古自治区', 1, 150000);
INSERT INTO `litemall_region` VALUES (6, 0, '辽宁省', 1, 210000);
INSERT INTO `litemall_region` VALUES (7, 0, '吉林省', 1, 220000);
INSERT INTO `litemall_region` VALUES (8, 0, '黑龙江省', 1, 230000);
INSERT INTO `litemall_region` VALUES (9, 0, '上海市', 1, 310000);
INSERT INTO `litemall_region` VALUES (10, 0, '江苏省', 1, 320000);
INSERT INTO `litemall_region` VALUES (11, 0, '浙江省', 1, 330000);
INSERT INTO `litemall_region` VALUES (12, 0, '安徽省', 1, 340000);
INSERT INTO `litemall_region` VALUES (13, 0, '福建省', 1, 350000);
INSERT INTO `litemall_region` VALUES (14, 0, '江西省', 1, 360000);
INSERT INTO `litemall_region` VALUES (15, 0, '山东省', 1, 370000);
INSERT INTO `litemall_region` VALUES (16, 0, '河南省', 1, 410000);
INSERT INTO `litemall_region` VALUES (17, 0, '湖北省', 1, 420000);
INSERT INTO `litemall_region` VALUES (18, 0, '湖南省', 1, 430000);
INSERT INTO `litemall_region` VALUES (19, 0, '广东省', 1, 440000);
INSERT INTO `litemall_region` VALUES (20, 0, '广西壮族自治区', 1, 450000);
INSERT INTO `litemall_region` VALUES (21, 0, '海南省', 1, 460000);
INSERT INTO `litemall_region` VALUES (22, 0, '重庆市', 1, 500000);
INSERT INTO `litemall_region` VALUES (23, 0, '四川省', 1, 510000);
INSERT INTO `litemall_region` VALUES (24, 0, '贵州省', 1, 520000);
INSERT INTO `litemall_region` VALUES (25, 0, '云南省', 1, 530000);
INSERT INTO `litemall_region` VALUES (26, 0, '西藏自治区', 1, 540000);
INSERT INTO `litemall_region` VALUES (27, 0, '陕西省', 1, 610000);
INSERT INTO `litemall_region` VALUES (28, 0, '甘肃省', 1, 620000);
INSERT INTO `litemall_region` VALUES (29, 0, '青海省', 1, 630000);
INSERT INTO `litemall_region` VALUES (30, 0, '宁夏回族自治区', 1, 640000);
INSERT INTO `litemall_region` VALUES (31, 0, '新疆维吾尔自治区', 1, 650000);
INSERT INTO `litemall_region` VALUES (32, 1, '市辖区', 2, 110100);
INSERT INTO `litemall_region` VALUES (33, 2, '市辖区', 2, 120100);
INSERT INTO `litemall_region` VALUES (34, 3, '石家庄市', 2, 130100);
INSERT INTO `litemall_region` VALUES (35, 3, '唐山市', 2, 130200);
INSERT INTO `litemall_region` VALUES (36, 3, '秦皇岛市', 2, 130300);
INSERT INTO `litemall_region` VALUES (37, 3, '邯郸市', 2, 130400);
INSERT INTO `litemall_region` VALUES (38, 3, '邢台市', 2, 130500);
INSERT INTO `litemall_region` VALUES (39, 3, '保定市', 2, 130600);
INSERT INTO `litemall_region` VALUES (40, 3, '张家口市', 2, 130700);
INSERT INTO `litemall_region` VALUES (41, 3, '承德市', 2, 130800);
INSERT INTO `litemall_region` VALUES (42, 3, '沧州市', 2, 130900);
INSERT INTO `litemall_region` VALUES (43, 3, '廊坊市', 2, 131000);
INSERT INTO `litemall_region` VALUES (44, 3, '衡水市', 2, 131100);
INSERT INTO `litemall_region` VALUES (45, 3, '省直辖县级行政区划', 2, 139000);
INSERT INTO `litemall_region` VALUES (46, 4, '太原市', 2, 140100);
INSERT INTO `litemall_region` VALUES (47, 4, '大同市', 2, 140200);
INSERT INTO `litemall_region` VALUES (48, 4, '阳泉市', 2, 140300);
INSERT INTO `litemall_region` VALUES (49, 4, '长治市', 2, 140400);
INSERT INTO `litemall_region` VALUES (50, 4, '晋城市', 2, 140500);
INSERT INTO `litemall_region` VALUES (51, 4, '朔州市', 2, 140600);
INSERT INTO `litemall_region` VALUES (52, 4, '晋中市', 2, 140700);
INSERT INTO `litemall_region` VALUES (53, 4, '运城市', 2, 140800);
INSERT INTO `litemall_region` VALUES (54, 4, '忻州市', 2, 140900);
INSERT INTO `litemall_region` VALUES (55, 4, '临汾市', 2, 141000);
INSERT INTO `litemall_region` VALUES (56, 4, '吕梁市', 2, 141100);
INSERT INTO `litemall_region` VALUES (57, 5, '呼和浩特市', 2, 150100);
INSERT INTO `litemall_region` VALUES (58, 5, '包头市', 2, 150200);
INSERT INTO `litemall_region` VALUES (59, 5, '乌海市', 2, 150300);
INSERT INTO `litemall_region` VALUES (60, 5, '赤峰市', 2, 150400);
INSERT INTO `litemall_region` VALUES (61, 5, '通辽市', 2, 150500);
INSERT INTO `litemall_region` VALUES (62, 5, '鄂尔多斯市', 2, 150600);
INSERT INTO `litemall_region` VALUES (63, 5, '呼伦贝尔市', 2, 150700);
INSERT INTO `litemall_region` VALUES (64, 5, '巴彦淖尔市', 2, 150800);
INSERT INTO `litemall_region` VALUES (65, 5, '乌兰察布市', 2, 150900);
INSERT INTO `litemall_region` VALUES (66, 5, '兴安盟', 2, 152200);
INSERT INTO `litemall_region` VALUES (67, 5, '锡林郭勒盟', 2, 152500);
INSERT INTO `litemall_region` VALUES (68, 5, '阿拉善盟', 2, 152900);
INSERT INTO `litemall_region` VALUES (69, 6, '沈阳市', 2, 210100);
INSERT INTO `litemall_region` VALUES (70, 6, '大连市', 2, 210200);
INSERT INTO `litemall_region` VALUES (71, 6, '鞍山市', 2, 210300);
INSERT INTO `litemall_region` VALUES (72, 6, '抚顺市', 2, 210400);
INSERT INTO `litemall_region` VALUES (73, 6, '本溪市', 2, 210500);
INSERT INTO `litemall_region` VALUES (74, 6, '丹东市', 2, 210600);
INSERT INTO `litemall_region` VALUES (75, 6, '锦州市', 2, 210700);
INSERT INTO `litemall_region` VALUES (76, 6, '营口市', 2, 210800);
INSERT INTO `litemall_region` VALUES (77, 6, '阜新市', 2, 210900);
INSERT INTO `litemall_region` VALUES (78, 6, '辽阳市', 2, 211000);
INSERT INTO `litemall_region` VALUES (79, 6, '盘锦市', 2, 211100);
INSERT INTO `litemall_region` VALUES (80, 6, '铁岭市', 2, 211200);
INSERT INTO `litemall_region` VALUES (81, 6, '朝阳市', 2, 211300);
INSERT INTO `litemall_region` VALUES (82, 6, '葫芦岛市', 2, 211400);
INSERT INTO `litemall_region` VALUES (83, 7, '长春市', 2, 220100);
INSERT INTO `litemall_region` VALUES (84, 7, '吉林市', 2, 220200);
INSERT INTO `litemall_region` VALUES (85, 7, '四平市', 2, 220300);
INSERT INTO `litemall_region` VALUES (86, 7, '辽源市', 2, 220400);
INSERT INTO `litemall_region` VALUES (87, 7, '通化市', 2, 220500);
INSERT INTO `litemall_region` VALUES (88, 7, '白山市', 2, 220600);
INSERT INTO `litemall_region` VALUES (89, 7, '松原市', 2, 220700);
INSERT INTO `litemall_region` VALUES (90, 7, '白城市', 2, 220800);
INSERT INTO `litemall_region` VALUES (91, 7, '延边朝鲜族自治州', 2, 222400);
INSERT INTO `litemall_region` VALUES (92, 8, '哈尔滨市', 2, 230100);
INSERT INTO `litemall_region` VALUES (93, 8, '齐齐哈尔市', 2, 230200);
INSERT INTO `litemall_region` VALUES (94, 8, '鸡西市', 2, 230300);
INSERT INTO `litemall_region` VALUES (95, 8, '鹤岗市', 2, 230400);
INSERT INTO `litemall_region` VALUES (96, 8, '双鸭山市', 2, 230500);
INSERT INTO `litemall_region` VALUES (97, 8, '大庆市', 2, 230600);
INSERT INTO `litemall_region` VALUES (98, 8, '伊春市', 2, 230700);
INSERT INTO `litemall_region` VALUES (99, 8, '佳木斯市', 2, 230800);
INSERT INTO `litemall_region` VALUES (100, 8, '七台河市', 2, 230900);
INSERT INTO `litemall_region` VALUES (101, 8, '牡丹江市', 2, 231000);
INSERT INTO `litemall_region` VALUES (102, 8, '黑河市', 2, 231100);
INSERT INTO `litemall_region` VALUES (103, 8, '绥化市', 2, 231200);
INSERT INTO `litemall_region` VALUES (104, 8, '大兴安岭地区', 2, 232700);
INSERT INTO `litemall_region` VALUES (105, 9, '市辖区', 2, 310100);
INSERT INTO `litemall_region` VALUES (106, 10, '南京市', 2, 320100);
INSERT INTO `litemall_region` VALUES (107, 10, '无锡市', 2, 320200);
INSERT INTO `litemall_region` VALUES (108, 10, '徐州市', 2, 320300);
INSERT INTO `litemall_region` VALUES (109, 10, '常州市', 2, 320400);
INSERT INTO `litemall_region` VALUES (110, 10, '苏州市', 2, 320500);
INSERT INTO `litemall_region` VALUES (111, 10, '南通市', 2, 320600);
INSERT INTO `litemall_region` VALUES (112, 10, '连云港市', 2, 320700);
INSERT INTO `litemall_region` VALUES (113, 10, '淮安市', 2, 320800);
INSERT INTO `litemall_region` VALUES (114, 10, '盐城市', 2, 320900);
INSERT INTO `litemall_region` VALUES (115, 10, '扬州市', 2, 321000);
INSERT INTO `litemall_region` VALUES (116, 10, '镇江市', 2, 321100);
INSERT INTO `litemall_region` VALUES (117, 10, '泰州市', 2, 321200);
INSERT INTO `litemall_region` VALUES (118, 10, '宿迁市', 2, 321300);
INSERT INTO `litemall_region` VALUES (119, 11, '杭州市', 2, 330100);
INSERT INTO `litemall_region` VALUES (120, 11, '宁波市', 2, 330200);
INSERT INTO `litemall_region` VALUES (121, 11, '温州市', 2, 330300);
INSERT INTO `litemall_region` VALUES (122, 11, '嘉兴市', 2, 330400);
INSERT INTO `litemall_region` VALUES (123, 11, '湖州市', 2, 330500);
INSERT INTO `litemall_region` VALUES (124, 11, '绍兴市', 2, 330600);
INSERT INTO `litemall_region` VALUES (125, 11, '金华市', 2, 330700);
INSERT INTO `litemall_region` VALUES (126, 11, '衢州市', 2, 330800);
INSERT INTO `litemall_region` VALUES (127, 11, '舟山市', 2, 330900);
INSERT INTO `litemall_region` VALUES (128, 11, '台州市', 2, 331000);
INSERT INTO `litemall_region` VALUES (129, 11, '丽水市', 2, 331100);
INSERT INTO `litemall_region` VALUES (130, 12, '合肥市', 2, 340100);
INSERT INTO `litemall_region` VALUES (131, 12, '芜湖市', 2, 340200);
INSERT INTO `litemall_region` VALUES (132, 12, '蚌埠市', 2, 340300);
INSERT INTO `litemall_region` VALUES (133, 12, '淮南市', 2, 340400);
INSERT INTO `litemall_region` VALUES (134, 12, '马鞍山市', 2, 340500);
INSERT INTO `litemall_region` VALUES (135, 12, '淮北市', 2, 340600);
INSERT INTO `litemall_region` VALUES (136, 12, '铜陵市', 2, 340700);
INSERT INTO `litemall_region` VALUES (137, 12, '安庆市', 2, 340800);
INSERT INTO `litemall_region` VALUES (138, 12, '黄山市', 2, 341000);
INSERT INTO `litemall_region` VALUES (139, 12, '滁州市', 2, 341100);
INSERT INTO `litemall_region` VALUES (140, 12, '阜阳市', 2, 341200);
INSERT INTO `litemall_region` VALUES (141, 12, '宿州市', 2, 341300);
INSERT INTO `litemall_region` VALUES (142, 12, '六安市', 2, 341500);
INSERT INTO `litemall_region` VALUES (143, 12, '亳州市', 2, 341600);
INSERT INTO `litemall_region` VALUES (144, 12, '池州市', 2, 341700);
INSERT INTO `litemall_region` VALUES (145, 12, '宣城市', 2, 341800);
INSERT INTO `litemall_region` VALUES (146, 13, '福州市', 2, 350100);
INSERT INTO `litemall_region` VALUES (147, 13, '厦门市', 2, 350200);
INSERT INTO `litemall_region` VALUES (148, 13, '莆田市', 2, 350300);
INSERT INTO `litemall_region` VALUES (149, 13, '三明市', 2, 350400);
INSERT INTO `litemall_region` VALUES (150, 13, '泉州市', 2, 350500);
INSERT INTO `litemall_region` VALUES (151, 13, '漳州市', 2, 350600);
INSERT INTO `litemall_region` VALUES (152, 13, '南平市', 2, 350700);
INSERT INTO `litemall_region` VALUES (153, 13, '龙岩市', 2, 350800);
INSERT INTO `litemall_region` VALUES (154, 13, '宁德市', 2, 350900);
INSERT INTO `litemall_region` VALUES (155, 14, '南昌市', 2, 360100);
INSERT INTO `litemall_region` VALUES (156, 14, '景德镇市', 2, 360200);
INSERT INTO `litemall_region` VALUES (157, 14, '萍乡市', 2, 360300);
INSERT INTO `litemall_region` VALUES (158, 14, '九江市', 2, 360400);
INSERT INTO `litemall_region` VALUES (159, 14, '新余市', 2, 360500);
INSERT INTO `litemall_region` VALUES (160, 14, '鹰潭市', 2, 360600);
INSERT INTO `litemall_region` VALUES (161, 14, '赣州市', 2, 360700);
INSERT INTO `litemall_region` VALUES (162, 14, '吉安市', 2, 360800);
INSERT INTO `litemall_region` VALUES (163, 14, '宜春市', 2, 360900);
INSERT INTO `litemall_region` VALUES (164, 14, '抚州市', 2, 361000);
INSERT INTO `litemall_region` VALUES (165, 14, '上饶市', 2, 361100);
INSERT INTO `litemall_region` VALUES (166, 15, '济南市', 2, 370100);
INSERT INTO `litemall_region` VALUES (167, 15, '青岛市', 2, 370200);
INSERT INTO `litemall_region` VALUES (168, 15, '淄博市', 2, 370300);
INSERT INTO `litemall_region` VALUES (169, 15, '枣庄市', 2, 370400);
INSERT INTO `litemall_region` VALUES (170, 15, '东营市', 2, 370500);
INSERT INTO `litemall_region` VALUES (171, 15, '烟台市', 2, 370600);
INSERT INTO `litemall_region` VALUES (172, 15, '潍坊市', 2, 370700);
INSERT INTO `litemall_region` VALUES (173, 15, '济宁市', 2, 370800);
INSERT INTO `litemall_region` VALUES (174, 15, '泰安市', 2, 370900);
INSERT INTO `litemall_region` VALUES (175, 15, '威海市', 2, 371000);
INSERT INTO `litemall_region` VALUES (176, 15, '日照市', 2, 371100);
INSERT INTO `litemall_region` VALUES (177, 15, '莱芜市', 2, 371200);
INSERT INTO `litemall_region` VALUES (178, 15, '临沂市', 2, 371300);
INSERT INTO `litemall_region` VALUES (179, 15, '德州市', 2, 371400);
INSERT INTO `litemall_region` VALUES (180, 15, '聊城市', 2, 371500);
INSERT INTO `litemall_region` VALUES (181, 15, '滨州市', 2, 371600);
INSERT INTO `litemall_region` VALUES (182, 15, '菏泽市', 2, 371700);
INSERT INTO `litemall_region` VALUES (183, 16, '郑州市', 2, 410100);
INSERT INTO `litemall_region` VALUES (184, 16, '开封市', 2, 410200);
INSERT INTO `litemall_region` VALUES (185, 16, '洛阳市', 2, 410300);
INSERT INTO `litemall_region` VALUES (186, 16, '平顶山市', 2, 410400);
INSERT INTO `litemall_region` VALUES (187, 16, '安阳市', 2, 410500);
INSERT INTO `litemall_region` VALUES (188, 16, '鹤壁市', 2, 410600);
INSERT INTO `litemall_region` VALUES (189, 16, '新乡市', 2, 410700);
INSERT INTO `litemall_region` VALUES (190, 16, '焦作市', 2, 410800);
INSERT INTO `litemall_region` VALUES (191, 16, '濮阳市', 2, 410900);
INSERT INTO `litemall_region` VALUES (192, 16, '许昌市', 2, 411000);
INSERT INTO `litemall_region` VALUES (193, 16, '漯河市', 2, 411100);
INSERT INTO `litemall_region` VALUES (194, 16, '三门峡市', 2, 411200);
INSERT INTO `litemall_region` VALUES (195, 16, '南阳市', 2, 411300);
INSERT INTO `litemall_region` VALUES (196, 16, '商丘市', 2, 411400);
INSERT INTO `litemall_region` VALUES (197, 16, '信阳市', 2, 411500);
INSERT INTO `litemall_region` VALUES (198, 16, '周口市', 2, 411600);
INSERT INTO `litemall_region` VALUES (199, 16, '驻马店市', 2, 411700);
INSERT INTO `litemall_region` VALUES (200, 16, '省直辖县级行政区划', 2, 419000);
INSERT INTO `litemall_region` VALUES (201, 17, '武汉市', 2, 420100);
INSERT INTO `litemall_region` VALUES (202, 17, '黄石市', 2, 420200);
INSERT INTO `litemall_region` VALUES (203, 17, '十堰市', 2, 420300);
INSERT INTO `litemall_region` VALUES (204, 17, '宜昌市', 2, 420500);
INSERT INTO `litemall_region` VALUES (205, 17, '襄阳市', 2, 420600);
INSERT INTO `litemall_region` VALUES (206, 17, '鄂州市', 2, 420700);
INSERT INTO `litemall_region` VALUES (207, 17, '荆门市', 2, 420800);
INSERT INTO `litemall_region` VALUES (208, 17, '孝感市', 2, 420900);
INSERT INTO `litemall_region` VALUES (209, 17, '荆州市', 2, 421000);
INSERT INTO `litemall_region` VALUES (210, 17, '黄冈市', 2, 421100);
INSERT INTO `litemall_region` VALUES (211, 17, '咸宁市', 2, 421200);
INSERT INTO `litemall_region` VALUES (212, 17, '随州市', 2, 421300);
INSERT INTO `litemall_region` VALUES (213, 17, '恩施土家族苗族自治州', 2, 422800);
INSERT INTO `litemall_region` VALUES (214, 17, '省直辖县级行政区划', 2, 429000);
INSERT INTO `litemall_region` VALUES (215, 18, '长沙市', 2, 430100);
INSERT INTO `litemall_region` VALUES (216, 18, '株洲市', 2, 430200);
INSERT INTO `litemall_region` VALUES (217, 18, '湘潭市', 2, 430300);
INSERT INTO `litemall_region` VALUES (218, 18, '衡阳市', 2, 430400);
INSERT INTO `litemall_region` VALUES (219, 18, '邵阳市', 2, 430500);
INSERT INTO `litemall_region` VALUES (220, 18, '岳阳市', 2, 430600);
INSERT INTO `litemall_region` VALUES (221, 18, '常德市', 2, 430700);
INSERT INTO `litemall_region` VALUES (222, 18, '张家界市', 2, 430800);
INSERT INTO `litemall_region` VALUES (223, 18, '益阳市', 2, 430900);
INSERT INTO `litemall_region` VALUES (224, 18, '郴州市', 2, 431000);
INSERT INTO `litemall_region` VALUES (225, 18, '永州市', 2, 431100);
INSERT INTO `litemall_region` VALUES (226, 18, '怀化市', 2, 431200);
INSERT INTO `litemall_region` VALUES (227, 18, '娄底市', 2, 431300);
INSERT INTO `litemall_region` VALUES (228, 18, '湘西土家族苗族自治州', 2, 433100);
INSERT INTO `litemall_region` VALUES (229, 19, '广州市', 2, 440100);
INSERT INTO `litemall_region` VALUES (230, 19, '韶关市', 2, 440200);
INSERT INTO `litemall_region` VALUES (231, 19, '深圳市', 2, 440300);
INSERT INTO `litemall_region` VALUES (232, 19, '珠海市', 2, 440400);
INSERT INTO `litemall_region` VALUES (233, 19, '汕头市', 2, 440500);
INSERT INTO `litemall_region` VALUES (234, 19, '佛山市', 2, 440600);
INSERT INTO `litemall_region` VALUES (235, 19, '江门市', 2, 440700);
INSERT INTO `litemall_region` VALUES (236, 19, '湛江市', 2, 440800);
INSERT INTO `litemall_region` VALUES (237, 19, '茂名市', 2, 440900);
INSERT INTO `litemall_region` VALUES (238, 19, '肇庆市', 2, 441200);
INSERT INTO `litemall_region` VALUES (239, 19, '惠州市', 2, 441300);
INSERT INTO `litemall_region` VALUES (240, 19, '梅州市', 2, 441400);
INSERT INTO `litemall_region` VALUES (241, 19, '汕尾市', 2, 441500);
INSERT INTO `litemall_region` VALUES (242, 19, '河源市', 2, 441600);
INSERT INTO `litemall_region` VALUES (243, 19, '阳江市', 2, 441700);
INSERT INTO `litemall_region` VALUES (244, 19, '清远市', 2, 441800);
INSERT INTO `litemall_region` VALUES (245, 19, '东莞市', 2, 441900);
INSERT INTO `litemall_region` VALUES (246, 19, '中山市', 2, 442000);
INSERT INTO `litemall_region` VALUES (247, 19, '潮州市', 2, 445100);
INSERT INTO `litemall_region` VALUES (248, 19, '揭阳市', 2, 445200);
INSERT INTO `litemall_region` VALUES (249, 19, '云浮市', 2, 445300);
INSERT INTO `litemall_region` VALUES (250, 20, '南宁市', 2, 450100);
INSERT INTO `litemall_region` VALUES (251, 20, '柳州市', 2, 450200);
INSERT INTO `litemall_region` VALUES (252, 20, '桂林市', 2, 450300);
INSERT INTO `litemall_region` VALUES (253, 20, '梧州市', 2, 450400);
INSERT INTO `litemall_region` VALUES (254, 20, '北海市', 2, 450500);
INSERT INTO `litemall_region` VALUES (255, 20, '防城港市', 2, 450600);
INSERT INTO `litemall_region` VALUES (256, 20, '钦州市', 2, 450700);
INSERT INTO `litemall_region` VALUES (257, 20, '贵港市', 2, 450800);
INSERT INTO `litemall_region` VALUES (258, 20, '玉林市', 2, 450900);
INSERT INTO `litemall_region` VALUES (259, 20, '百色市', 2, 451000);
INSERT INTO `litemall_region` VALUES (260, 20, '贺州市', 2, 451100);
INSERT INTO `litemall_region` VALUES (261, 20, '河池市', 2, 451200);
INSERT INTO `litemall_region` VALUES (262, 20, '来宾市', 2, 451300);
INSERT INTO `litemall_region` VALUES (263, 20, '崇左市', 2, 451400);
INSERT INTO `litemall_region` VALUES (264, 21, '海口市', 2, 460100);
INSERT INTO `litemall_region` VALUES (265, 21, '三亚市', 2, 460200);
INSERT INTO `litemall_region` VALUES (266, 21, '三沙市', 2, 460300);
INSERT INTO `litemall_region` VALUES (267, 21, '儋州市', 2, 460400);
INSERT INTO `litemall_region` VALUES (268, 21, '省直辖县级行政区划', 2, 469000);
INSERT INTO `litemall_region` VALUES (269, 22, '市辖区', 2, 500100);
INSERT INTO `litemall_region` VALUES (270, 22, '县', 2, 500200);
INSERT INTO `litemall_region` VALUES (271, 23, '成都市', 2, 510100);
INSERT INTO `litemall_region` VALUES (272, 23, '自贡市', 2, 510300);
INSERT INTO `litemall_region` VALUES (273, 23, '攀枝花市', 2, 510400);
INSERT INTO `litemall_region` VALUES (274, 23, '泸州市', 2, 510500);
INSERT INTO `litemall_region` VALUES (275, 23, '德阳市', 2, 510600);
INSERT INTO `litemall_region` VALUES (276, 23, '绵阳市', 2, 510700);
INSERT INTO `litemall_region` VALUES (277, 23, '广元市', 2, 510800);
INSERT INTO `litemall_region` VALUES (278, 23, '遂宁市', 2, 510900);
INSERT INTO `litemall_region` VALUES (279, 23, '内江市', 2, 511000);
INSERT INTO `litemall_region` VALUES (280, 23, '乐山市', 2, 511100);
INSERT INTO `litemall_region` VALUES (281, 23, '南充市', 2, 511300);
INSERT INTO `litemall_region` VALUES (282, 23, '眉山市', 2, 511400);
INSERT INTO `litemall_region` VALUES (283, 23, '宜宾市', 2, 511500);
INSERT INTO `litemall_region` VALUES (284, 23, '广安市', 2, 511600);
INSERT INTO `litemall_region` VALUES (285, 23, '达州市', 2, 511700);
INSERT INTO `litemall_region` VALUES (286, 23, '雅安市', 2, 511800);
INSERT INTO `litemall_region` VALUES (287, 23, '巴中市', 2, 511900);
INSERT INTO `litemall_region` VALUES (288, 23, '资阳市', 2, 512000);
INSERT INTO `litemall_region` VALUES (289, 23, '阿坝藏族羌族自治州', 2, 513200);
INSERT INTO `litemall_region` VALUES (290, 23, '甘孜藏族自治州', 2, 513300);
INSERT INTO `litemall_region` VALUES (291, 23, '凉山彝族自治州', 2, 513400);
INSERT INTO `litemall_region` VALUES (292, 24, '贵阳市', 2, 520100);
INSERT INTO `litemall_region` VALUES (293, 24, '六盘水市', 2, 520200);
INSERT INTO `litemall_region` VALUES (294, 24, '遵义市', 2, 520300);
INSERT INTO `litemall_region` VALUES (295, 24, '安顺市', 2, 520400);
INSERT INTO `litemall_region` VALUES (296, 24, '毕节市', 2, 520500);
INSERT INTO `litemall_region` VALUES (297, 24, '铜仁市', 2, 520600);
INSERT INTO `litemall_region` VALUES (298, 24, '黔西南布依族苗族自治州', 2, 522300);
INSERT INTO `litemall_region` VALUES (299, 24, '黔东南苗族侗族自治州', 2, 522600);
INSERT INTO `litemall_region` VALUES (300, 24, '黔南布依族苗族自治州', 2, 522700);
INSERT INTO `litemall_region` VALUES (301, 25, '昆明市', 2, 530100);
INSERT INTO `litemall_region` VALUES (302, 25, '曲靖市', 2, 530300);
INSERT INTO `litemall_region` VALUES (303, 25, '玉溪市', 2, 530400);
INSERT INTO `litemall_region` VALUES (304, 25, '保山市', 2, 530500);
INSERT INTO `litemall_region` VALUES (305, 25, '昭通市', 2, 530600);
INSERT INTO `litemall_region` VALUES (306, 25, '丽江市', 2, 530700);
INSERT INTO `litemall_region` VALUES (307, 25, '普洱市', 2, 530800);
INSERT INTO `litemall_region` VALUES (308, 25, '临沧市', 2, 530900);
INSERT INTO `litemall_region` VALUES (309, 25, '楚雄彝族自治州', 2, 532300);
INSERT INTO `litemall_region` VALUES (310, 25, '红河哈尼族彝族自治州', 2, 532500);
INSERT INTO `litemall_region` VALUES (311, 25, '文山壮族苗族自治州', 2, 532600);
INSERT INTO `litemall_region` VALUES (312, 25, '西双版纳傣族自治州', 2, 532800);
INSERT INTO `litemall_region` VALUES (313, 25, '大理白族自治州', 2, 532900);
INSERT INTO `litemall_region` VALUES (314, 25, '德宏傣族景颇族自治州', 2, 533100);
INSERT INTO `litemall_region` VALUES (315, 25, '怒江傈僳族自治州', 2, 533300);
INSERT INTO `litemall_region` VALUES (316, 25, '迪庆藏族自治州', 2, 533400);
INSERT INTO `litemall_region` VALUES (317, 26, '拉萨市', 2, 540100);
INSERT INTO `litemall_region` VALUES (318, 26, '日喀则市', 2, 540200);
INSERT INTO `litemall_region` VALUES (319, 26, '昌都市', 2, 540300);
INSERT INTO `litemall_region` VALUES (320, 26, '林芝市', 2, 540400);
INSERT INTO `litemall_region` VALUES (321, 26, '山南市', 2, 540500);
INSERT INTO `litemall_region` VALUES (322, 26, '那曲地区', 2, 542400);
INSERT INTO `litemall_region` VALUES (323, 26, '阿里地区', 2, 542500);
INSERT INTO `litemall_region` VALUES (324, 27, '西安市', 2, 610100);
INSERT INTO `litemall_region` VALUES (325, 27, '铜川市', 2, 610200);
INSERT INTO `litemall_region` VALUES (326, 27, '宝鸡市', 2, 610300);
INSERT INTO `litemall_region` VALUES (327, 27, '咸阳市', 2, 610400);
INSERT INTO `litemall_region` VALUES (328, 27, '渭南市', 2, 610500);
INSERT INTO `litemall_region` VALUES (329, 27, '延安市', 2, 610600);
INSERT INTO `litemall_region` VALUES (330, 27, '汉中市', 2, 610700);
INSERT INTO `litemall_region` VALUES (331, 27, '榆林市', 2, 610800);
INSERT INTO `litemall_region` VALUES (332, 27, '安康市', 2, 610900);
INSERT INTO `litemall_region` VALUES (333, 27, '商洛市', 2, 611000);
INSERT INTO `litemall_region` VALUES (334, 28, '兰州市', 2, 620100);
INSERT INTO `litemall_region` VALUES (335, 28, '嘉峪关市', 2, 620200);
INSERT INTO `litemall_region` VALUES (336, 28, '金昌市', 2, 620300);
INSERT INTO `litemall_region` VALUES (337, 28, '白银市', 2, 620400);
INSERT INTO `litemall_region` VALUES (338, 28, '天水市', 2, 620500);
INSERT INTO `litemall_region` VALUES (339, 28, '武威市', 2, 620600);
INSERT INTO `litemall_region` VALUES (340, 28, '张掖市', 2, 620700);
INSERT INTO `litemall_region` VALUES (341, 28, '平凉市', 2, 620800);
INSERT INTO `litemall_region` VALUES (342, 28, '酒泉市', 2, 620900);
INSERT INTO `litemall_region` VALUES (343, 28, '庆阳市', 2, 621000);
INSERT INTO `litemall_region` VALUES (344, 28, '定西市', 2, 621100);
INSERT INTO `litemall_region` VALUES (345, 28, '陇南市', 2, 621200);
INSERT INTO `litemall_region` VALUES (346, 28, '临夏回族自治州', 2, 622900);
INSERT INTO `litemall_region` VALUES (347, 28, '甘南藏族自治州', 2, 623000);
INSERT INTO `litemall_region` VALUES (348, 29, '西宁市', 2, 630100);
INSERT INTO `litemall_region` VALUES (349, 29, '海东市', 2, 630200);
INSERT INTO `litemall_region` VALUES (350, 29, '海北藏族自治州', 2, 632200);
INSERT INTO `litemall_region` VALUES (351, 29, '黄南藏族自治州', 2, 632300);
INSERT INTO `litemall_region` VALUES (352, 29, '海南藏族自治州', 2, 632500);
INSERT INTO `litemall_region` VALUES (353, 29, '果洛藏族自治州', 2, 632600);
INSERT INTO `litemall_region` VALUES (354, 29, '玉树藏族自治州', 2, 632700);
INSERT INTO `litemall_region` VALUES (355, 29, '海西蒙古族藏族自治州', 2, 632800);
INSERT INTO `litemall_region` VALUES (356, 30, '银川市', 2, 640100);
INSERT INTO `litemall_region` VALUES (357, 30, '石嘴山市', 2, 640200);
INSERT INTO `litemall_region` VALUES (358, 30, '吴忠市', 2, 640300);
INSERT INTO `litemall_region` VALUES (359, 30, '固原市', 2, 640400);
INSERT INTO `litemall_region` VALUES (360, 30, '中卫市', 2, 640500);
INSERT INTO `litemall_region` VALUES (361, 31, '乌鲁木齐市', 2, 650100);
INSERT INTO `litemall_region` VALUES (362, 31, '克拉玛依市', 2, 650200);
INSERT INTO `litemall_region` VALUES (363, 31, '吐鲁番市', 2, 650400);
INSERT INTO `litemall_region` VALUES (364, 31, '哈密市', 2, 650500);
INSERT INTO `litemall_region` VALUES (365, 31, '昌吉回族自治州', 2, 652300);
INSERT INTO `litemall_region` VALUES (366, 31, '博尔塔拉蒙古自治州', 2, 652700);
INSERT INTO `litemall_region` VALUES (367, 31, '巴音郭楞蒙古自治州', 2, 652800);
INSERT INTO `litemall_region` VALUES (368, 31, '阿克苏地区', 2, 652900);
INSERT INTO `litemall_region` VALUES (369, 31, '克孜勒苏柯尔克孜自治州', 2, 653000);
INSERT INTO `litemall_region` VALUES (370, 31, '喀什地区', 2, 653100);
INSERT INTO `litemall_region` VALUES (371, 31, '和田地区', 2, 653200);
INSERT INTO `litemall_region` VALUES (372, 31, '伊犁哈萨克自治州', 2, 654000);
INSERT INTO `litemall_region` VALUES (373, 31, '塔城地区', 2, 654200);
INSERT INTO `litemall_region` VALUES (374, 31, '阿勒泰地区', 2, 654300);
INSERT INTO `litemall_region` VALUES (375, 31, '自治区直辖县级行政区划', 2, 659000);
INSERT INTO `litemall_region` VALUES (376, 32, '东城区', 3, 110101);
INSERT INTO `litemall_region` VALUES (377, 32, '西城区', 3, 110102);
INSERT INTO `litemall_region` VALUES (378, 32, '朝阳区', 3, 110105);
INSERT INTO `litemall_region` VALUES (379, 32, '丰台区', 3, 110106);
INSERT INTO `litemall_region` VALUES (380, 32, '石景山区', 3, 110107);
INSERT INTO `litemall_region` VALUES (381, 32, '海淀区', 3, 110108);
INSERT INTO `litemall_region` VALUES (382, 32, '门头沟区', 3, 110109);
INSERT INTO `litemall_region` VALUES (383, 32, '房山区', 3, 110111);
INSERT INTO `litemall_region` VALUES (384, 32, '通州区', 3, 110112);
INSERT INTO `litemall_region` VALUES (385, 32, '顺义区', 3, 110113);
INSERT INTO `litemall_region` VALUES (386, 32, '昌平区', 3, 110114);
INSERT INTO `litemall_region` VALUES (387, 32, '大兴区', 3, 110115);
INSERT INTO `litemall_region` VALUES (388, 32, '怀柔区', 3, 110116);
INSERT INTO `litemall_region` VALUES (389, 32, '平谷区', 3, 110117);
INSERT INTO `litemall_region` VALUES (390, 32, '密云区', 3, 110118);
INSERT INTO `litemall_region` VALUES (391, 32, '延庆区', 3, 110119);
INSERT INTO `litemall_region` VALUES (392, 33, '和平区', 3, 120101);
INSERT INTO `litemall_region` VALUES (393, 33, '河东区', 3, 120102);
INSERT INTO `litemall_region` VALUES (394, 33, '河西区', 3, 120103);
INSERT INTO `litemall_region` VALUES (395, 33, '南开区', 3, 120104);
INSERT INTO `litemall_region` VALUES (396, 33, '河北区', 3, 120105);
INSERT INTO `litemall_region` VALUES (397, 33, '红桥区', 3, 120106);
INSERT INTO `litemall_region` VALUES (398, 33, '东丽区', 3, 120110);
INSERT INTO `litemall_region` VALUES (399, 33, '西青区', 3, 120111);
INSERT INTO `litemall_region` VALUES (400, 33, '津南区', 3, 120112);
INSERT INTO `litemall_region` VALUES (401, 33, '北辰区', 3, 120113);
INSERT INTO `litemall_region` VALUES (402, 33, '武清区', 3, 120114);
INSERT INTO `litemall_region` VALUES (403, 33, '宝坻区', 3, 120115);
INSERT INTO `litemall_region` VALUES (404, 33, '滨海新区', 3, 120116);
INSERT INTO `litemall_region` VALUES (405, 33, '宁河区', 3, 120117);
INSERT INTO `litemall_region` VALUES (406, 33, '静海区', 3, 120118);
INSERT INTO `litemall_region` VALUES (407, 33, '蓟州区', 3, 120119);
INSERT INTO `litemall_region` VALUES (408, 34, '长安区', 3, 130102);
INSERT INTO `litemall_region` VALUES (409, 34, '桥西区', 3, 130104);
INSERT INTO `litemall_region` VALUES (410, 34, '新华区', 3, 130105);
INSERT INTO `litemall_region` VALUES (411, 34, '井陉矿区', 3, 130107);
INSERT INTO `litemall_region` VALUES (412, 34, '裕华区', 3, 130108);
INSERT INTO `litemall_region` VALUES (413, 34, '藁城区', 3, 130109);
INSERT INTO `litemall_region` VALUES (414, 34, '鹿泉区', 3, 130110);
INSERT INTO `litemall_region` VALUES (415, 34, '栾城区', 3, 130111);
INSERT INTO `litemall_region` VALUES (416, 34, '井陉县', 3, 130121);
INSERT INTO `litemall_region` VALUES (417, 34, '正定县', 3, 130123);
INSERT INTO `litemall_region` VALUES (418, 34, '行唐县', 3, 130125);
INSERT INTO `litemall_region` VALUES (419, 34, '灵寿县', 3, 130126);
INSERT INTO `litemall_region` VALUES (420, 34, '高邑县', 3, 130127);
INSERT INTO `litemall_region` VALUES (421, 34, '深泽县', 3, 130128);
INSERT INTO `litemall_region` VALUES (422, 34, '赞皇县', 3, 130129);
INSERT INTO `litemall_region` VALUES (423, 34, '无极县', 3, 130130);
INSERT INTO `litemall_region` VALUES (424, 34, '平山县', 3, 130131);
INSERT INTO `litemall_region` VALUES (425, 34, '元氏县', 3, 130132);
INSERT INTO `litemall_region` VALUES (426, 34, '赵县', 3, 130133);
INSERT INTO `litemall_region` VALUES (427, 34, '晋州市', 3, 130183);
INSERT INTO `litemall_region` VALUES (428, 34, '新乐市', 3, 130184);
INSERT INTO `litemall_region` VALUES (429, 35, '路南区', 3, 130202);
INSERT INTO `litemall_region` VALUES (430, 35, '路北区', 3, 130203);
INSERT INTO `litemall_region` VALUES (431, 35, '古冶区', 3, 130204);
INSERT INTO `litemall_region` VALUES (432, 35, '开平区', 3, 130205);
INSERT INTO `litemall_region` VALUES (433, 35, '丰南区', 3, 130207);
INSERT INTO `litemall_region` VALUES (434, 35, '丰润区', 3, 130208);
INSERT INTO `litemall_region` VALUES (435, 35, '曹妃甸区', 3, 130209);
INSERT INTO `litemall_region` VALUES (436, 35, '滦县', 3, 130223);
INSERT INTO `litemall_region` VALUES (437, 35, '滦南县', 3, 130224);
INSERT INTO `litemall_region` VALUES (438, 35, '乐亭县', 3, 130225);
INSERT INTO `litemall_region` VALUES (439, 35, '迁西县', 3, 130227);
INSERT INTO `litemall_region` VALUES (440, 35, '玉田县', 3, 130229);
INSERT INTO `litemall_region` VALUES (441, 35, '遵化市', 3, 130281);
INSERT INTO `litemall_region` VALUES (442, 35, '迁安市', 3, 130283);
INSERT INTO `litemall_region` VALUES (443, 36, '海港区', 3, 130302);
INSERT INTO `litemall_region` VALUES (444, 36, '山海关区', 3, 130303);
INSERT INTO `litemall_region` VALUES (445, 36, '北戴河区', 3, 130304);
INSERT INTO `litemall_region` VALUES (446, 36, '抚宁区', 3, 130306);
INSERT INTO `litemall_region` VALUES (447, 36, '青龙满族自治县', 3, 130321);
INSERT INTO `litemall_region` VALUES (448, 36, '昌黎县', 3, 130322);
INSERT INTO `litemall_region` VALUES (449, 36, '卢龙县', 3, 130324);
INSERT INTO `litemall_region` VALUES (450, 37, '邯山区', 3, 130402);
INSERT INTO `litemall_region` VALUES (451, 37, '丛台区', 3, 130403);
INSERT INTO `litemall_region` VALUES (452, 37, '复兴区', 3, 130404);
INSERT INTO `litemall_region` VALUES (453, 37, '峰峰矿区', 3, 130406);
INSERT INTO `litemall_region` VALUES (454, 37, '邯郸县', 3, 130421);
INSERT INTO `litemall_region` VALUES (455, 37, '临漳县', 3, 130423);
INSERT INTO `litemall_region` VALUES (456, 37, '成安县', 3, 130424);
INSERT INTO `litemall_region` VALUES (457, 37, '大名县', 3, 130425);
INSERT INTO `litemall_region` VALUES (458, 37, '涉县', 3, 130426);
INSERT INTO `litemall_region` VALUES (459, 37, '磁县', 3, 130427);
INSERT INTO `litemall_region` VALUES (460, 37, '肥乡县', 3, 130428);
INSERT INTO `litemall_region` VALUES (461, 37, '永年县', 3, 130429);
INSERT INTO `litemall_region` VALUES (462, 37, '邱县', 3, 130430);
INSERT INTO `litemall_region` VALUES (463, 37, '鸡泽县', 3, 130431);
INSERT INTO `litemall_region` VALUES (464, 37, '广平县', 3, 130432);
INSERT INTO `litemall_region` VALUES (465, 37, '馆陶县', 3, 130433);
INSERT INTO `litemall_region` VALUES (466, 37, '魏县', 3, 130434);
INSERT INTO `litemall_region` VALUES (467, 37, '曲周县', 3, 130435);
INSERT INTO `litemall_region` VALUES (468, 37, '武安市', 3, 130481);
INSERT INTO `litemall_region` VALUES (469, 38, '桥东区', 3, 130502);
INSERT INTO `litemall_region` VALUES (470, 38, '桥西区', 3, 130503);
INSERT INTO `litemall_region` VALUES (471, 38, '邢台县', 3, 130521);
INSERT INTO `litemall_region` VALUES (472, 38, '临城县', 3, 130522);
INSERT INTO `litemall_region` VALUES (473, 38, '内丘县', 3, 130523);
INSERT INTO `litemall_region` VALUES (474, 38, '柏乡县', 3, 130524);
INSERT INTO `litemall_region` VALUES (475, 38, '隆尧县', 3, 130525);
INSERT INTO `litemall_region` VALUES (476, 38, '任县', 3, 130526);
INSERT INTO `litemall_region` VALUES (477, 38, '南和县', 3, 130527);
INSERT INTO `litemall_region` VALUES (478, 38, '宁晋县', 3, 130528);
INSERT INTO `litemall_region` VALUES (479, 38, '巨鹿县', 3, 130529);
INSERT INTO `litemall_region` VALUES (480, 38, '新河县', 3, 130530);
INSERT INTO `litemall_region` VALUES (481, 38, '广宗县', 3, 130531);
INSERT INTO `litemall_region` VALUES (482, 38, '平乡县', 3, 130532);
INSERT INTO `litemall_region` VALUES (483, 38, '威县', 3, 130533);
INSERT INTO `litemall_region` VALUES (484, 38, '清河县', 3, 130534);
INSERT INTO `litemall_region` VALUES (485, 38, '临西县', 3, 130535);
INSERT INTO `litemall_region` VALUES (486, 38, '南宫市', 3, 130581);
INSERT INTO `litemall_region` VALUES (487, 38, '沙河市', 3, 130582);
INSERT INTO `litemall_region` VALUES (488, 39, '竞秀区', 3, 130602);
INSERT INTO `litemall_region` VALUES (489, 39, '莲池区', 3, 130606);
INSERT INTO `litemall_region` VALUES (490, 39, '满城区', 3, 130607);
INSERT INTO `litemall_region` VALUES (491, 39, '清苑区', 3, 130608);
INSERT INTO `litemall_region` VALUES (492, 39, '徐水区', 3, 130609);
INSERT INTO `litemall_region` VALUES (493, 39, '涞水县', 3, 130623);
INSERT INTO `litemall_region` VALUES (494, 39, '阜平县', 3, 130624);
INSERT INTO `litemall_region` VALUES (495, 39, '定兴县', 3, 130626);
INSERT INTO `litemall_region` VALUES (496, 39, '唐县', 3, 130627);
INSERT INTO `litemall_region` VALUES (497, 39, '高阳县', 3, 130628);
INSERT INTO `litemall_region` VALUES (498, 39, '容城县', 3, 130629);
INSERT INTO `litemall_region` VALUES (499, 39, '涞源县', 3, 130630);
INSERT INTO `litemall_region` VALUES (500, 39, '望都县', 3, 130631);
INSERT INTO `litemall_region` VALUES (501, 39, '安新县', 3, 130632);
INSERT INTO `litemall_region` VALUES (502, 39, '易县', 3, 130633);
INSERT INTO `litemall_region` VALUES (503, 39, '曲阳县', 3, 130634);
INSERT INTO `litemall_region` VALUES (504, 39, '蠡县', 3, 130635);
INSERT INTO `litemall_region` VALUES (505, 39, '顺平县', 3, 130636);
INSERT INTO `litemall_region` VALUES (506, 39, '博野县', 3, 130637);
INSERT INTO `litemall_region` VALUES (507, 39, '雄县', 3, 130638);
INSERT INTO `litemall_region` VALUES (508, 39, '涿州市', 3, 130681);
INSERT INTO `litemall_region` VALUES (509, 39, '安国市', 3, 130683);
INSERT INTO `litemall_region` VALUES (510, 39, '高碑店市', 3, 130684);
INSERT INTO `litemall_region` VALUES (511, 40, '桥东区', 3, 130702);
INSERT INTO `litemall_region` VALUES (512, 40, '桥西区', 3, 130703);
INSERT INTO `litemall_region` VALUES (513, 40, '宣化区', 3, 130705);
INSERT INTO `litemall_region` VALUES (514, 40, '下花园区', 3, 130706);
INSERT INTO `litemall_region` VALUES (515, 40, '万全区', 3, 130708);
INSERT INTO `litemall_region` VALUES (516, 40, '崇礼区', 3, 130709);
INSERT INTO `litemall_region` VALUES (517, 40, '张北县', 3, 130722);
INSERT INTO `litemall_region` VALUES (518, 40, '康保县', 3, 130723);
INSERT INTO `litemall_region` VALUES (519, 40, '沽源县', 3, 130724);
INSERT INTO `litemall_region` VALUES (520, 40, '尚义县', 3, 130725);
INSERT INTO `litemall_region` VALUES (521, 40, '蔚县', 3, 130726);
INSERT INTO `litemall_region` VALUES (522, 40, '阳原县', 3, 130727);
INSERT INTO `litemall_region` VALUES (523, 40, '怀安县', 3, 130728);
INSERT INTO `litemall_region` VALUES (524, 40, '怀来县', 3, 130730);
INSERT INTO `litemall_region` VALUES (525, 40, '涿鹿县', 3, 130731);
INSERT INTO `litemall_region` VALUES (526, 40, '赤城县', 3, 130732);
INSERT INTO `litemall_region` VALUES (527, 41, '双桥区', 3, 130802);
INSERT INTO `litemall_region` VALUES (528, 41, '双滦区', 3, 130803);
INSERT INTO `litemall_region` VALUES (529, 41, '鹰手营子矿区', 3, 130804);
INSERT INTO `litemall_region` VALUES (530, 41, '承德县', 3, 130821);
INSERT INTO `litemall_region` VALUES (531, 41, '兴隆县', 3, 130822);
INSERT INTO `litemall_region` VALUES (532, 41, '平泉县', 3, 130823);
INSERT INTO `litemall_region` VALUES (533, 41, '滦平县', 3, 130824);
INSERT INTO `litemall_region` VALUES (534, 41, '隆化县', 3, 130825);
INSERT INTO `litemall_region` VALUES (535, 41, '丰宁满族自治县', 3, 130826);
INSERT INTO `litemall_region` VALUES (536, 41, '宽城满族自治县', 3, 130827);
INSERT INTO `litemall_region` VALUES (537, 41, '围场满族蒙古族自治县', 3, 130828);
INSERT INTO `litemall_region` VALUES (538, 42, '新华区', 3, 130902);
INSERT INTO `litemall_region` VALUES (539, 42, '运河区', 3, 130903);
INSERT INTO `litemall_region` VALUES (540, 42, '沧县', 3, 130921);
INSERT INTO `litemall_region` VALUES (541, 42, '青县', 3, 130922);
INSERT INTO `litemall_region` VALUES (542, 42, '东光县', 3, 130923);
INSERT INTO `litemall_region` VALUES (543, 42, '海兴县', 3, 130924);
INSERT INTO `litemall_region` VALUES (544, 42, '盐山县', 3, 130925);
INSERT INTO `litemall_region` VALUES (545, 42, '肃宁县', 3, 130926);
INSERT INTO `litemall_region` VALUES (546, 42, '南皮县', 3, 130927);
INSERT INTO `litemall_region` VALUES (547, 42, '吴桥县', 3, 130928);
INSERT INTO `litemall_region` VALUES (548, 42, '献县', 3, 130929);
INSERT INTO `litemall_region` VALUES (549, 42, '孟村回族自治县', 3, 130930);
INSERT INTO `litemall_region` VALUES (550, 42, '泊头市', 3, 130981);
INSERT INTO `litemall_region` VALUES (551, 42, '任丘市', 3, 130982);
INSERT INTO `litemall_region` VALUES (552, 42, '黄骅市', 3, 130983);
INSERT INTO `litemall_region` VALUES (553, 42, '河间市', 3, 130984);
INSERT INTO `litemall_region` VALUES (554, 43, '安次区', 3, 131002);
INSERT INTO `litemall_region` VALUES (555, 43, '广阳区', 3, 131003);
INSERT INTO `litemall_region` VALUES (556, 43, '固安县', 3, 131022);
INSERT INTO `litemall_region` VALUES (557, 43, '永清县', 3, 131023);
INSERT INTO `litemall_region` VALUES (558, 43, '香河县', 3, 131024);
INSERT INTO `litemall_region` VALUES (559, 43, '大城县', 3, 131025);
INSERT INTO `litemall_region` VALUES (560, 43, '文安县', 3, 131026);
INSERT INTO `litemall_region` VALUES (561, 43, '大厂回族自治县', 3, 131028);
INSERT INTO `litemall_region` VALUES (562, 43, '霸州市', 3, 131081);
INSERT INTO `litemall_region` VALUES (563, 43, '三河市', 3, 131082);
INSERT INTO `litemall_region` VALUES (564, 44, '桃城区', 3, 131102);
INSERT INTO `litemall_region` VALUES (565, 44, '冀州区', 3, 131103);
INSERT INTO `litemall_region` VALUES (566, 44, '枣强县', 3, 131121);
INSERT INTO `litemall_region` VALUES (567, 44, '武邑县', 3, 131122);
INSERT INTO `litemall_region` VALUES (568, 44, '武强县', 3, 131123);
INSERT INTO `litemall_region` VALUES (569, 44, '饶阳县', 3, 131124);
INSERT INTO `litemall_region` VALUES (570, 44, '安平县', 3, 131125);
INSERT INTO `litemall_region` VALUES (571, 44, '故城县', 3, 131126);
INSERT INTO `litemall_region` VALUES (572, 44, '景县', 3, 131127);
INSERT INTO `litemall_region` VALUES (573, 44, '阜城县', 3, 131128);
INSERT INTO `litemall_region` VALUES (574, 44, '深州市', 3, 131182);
INSERT INTO `litemall_region` VALUES (575, 45, '定州市', 3, 139001);
INSERT INTO `litemall_region` VALUES (576, 45, '辛集市', 3, 139002);
INSERT INTO `litemall_region` VALUES (577, 46, '小店区', 3, 140105);
INSERT INTO `litemall_region` VALUES (578, 46, '迎泽区', 3, 140106);
INSERT INTO `litemall_region` VALUES (579, 46, '杏花岭区', 3, 140107);
INSERT INTO `litemall_region` VALUES (580, 46, '尖草坪区', 3, 140108);
INSERT INTO `litemall_region` VALUES (581, 46, '万柏林区', 3, 140109);
INSERT INTO `litemall_region` VALUES (582, 46, '晋源区', 3, 140110);
INSERT INTO `litemall_region` VALUES (583, 46, '清徐县', 3, 140121);
INSERT INTO `litemall_region` VALUES (584, 46, '阳曲县', 3, 140122);
INSERT INTO `litemall_region` VALUES (585, 46, '娄烦县', 3, 140123);
INSERT INTO `litemall_region` VALUES (586, 46, '古交市', 3, 140181);
INSERT INTO `litemall_region` VALUES (587, 47, '城区', 3, 140202);
INSERT INTO `litemall_region` VALUES (588, 47, '矿区', 3, 140203);
INSERT INTO `litemall_region` VALUES (589, 47, '南郊区', 3, 140211);
INSERT INTO `litemall_region` VALUES (590, 47, '新荣区', 3, 140212);
INSERT INTO `litemall_region` VALUES (591, 47, '阳高县', 3, 140221);
INSERT INTO `litemall_region` VALUES (592, 47, '天镇县', 3, 140222);
INSERT INTO `litemall_region` VALUES (593, 47, '广灵县', 3, 140223);
INSERT INTO `litemall_region` VALUES (594, 47, '灵丘县', 3, 140224);
INSERT INTO `litemall_region` VALUES (595, 47, '浑源县', 3, 140225);
INSERT INTO `litemall_region` VALUES (596, 47, '左云县', 3, 140226);
INSERT INTO `litemall_region` VALUES (597, 47, '大同县', 3, 140227);
INSERT INTO `litemall_region` VALUES (598, 48, '城区', 3, 140302);
INSERT INTO `litemall_region` VALUES (599, 48, '矿区', 3, 140303);
INSERT INTO `litemall_region` VALUES (600, 48, '郊区', 3, 140311);
INSERT INTO `litemall_region` VALUES (601, 48, '平定县', 3, 140321);
INSERT INTO `litemall_region` VALUES (602, 48, '盂县', 3, 140322);
INSERT INTO `litemall_region` VALUES (603, 49, '城区', 3, 140402);
INSERT INTO `litemall_region` VALUES (604, 49, '郊区', 3, 140411);
INSERT INTO `litemall_region` VALUES (605, 49, '长治县', 3, 140421);
INSERT INTO `litemall_region` VALUES (606, 49, '襄垣县', 3, 140423);
INSERT INTO `litemall_region` VALUES (607, 49, '屯留县', 3, 140424);
INSERT INTO `litemall_region` VALUES (608, 49, '平顺县', 3, 140425);
INSERT INTO `litemall_region` VALUES (609, 49, '黎城县', 3, 140426);
INSERT INTO `litemall_region` VALUES (610, 49, '壶关县', 3, 140427);
INSERT INTO `litemall_region` VALUES (611, 49, '长子县', 3, 140428);
INSERT INTO `litemall_region` VALUES (612, 49, '武乡县', 3, 140429);
INSERT INTO `litemall_region` VALUES (613, 49, '沁县', 3, 140430);
INSERT INTO `litemall_region` VALUES (614, 49, '沁源县', 3, 140431);
INSERT INTO `litemall_region` VALUES (615, 49, '潞城市', 3, 140481);
INSERT INTO `litemall_region` VALUES (616, 50, '城区', 3, 140502);
INSERT INTO `litemall_region` VALUES (617, 50, '沁水县', 3, 140521);
INSERT INTO `litemall_region` VALUES (618, 50, '阳城县', 3, 140522);
INSERT INTO `litemall_region` VALUES (619, 50, '陵川县', 3, 140524);
INSERT INTO `litemall_region` VALUES (620, 50, '泽州县', 3, 140525);
INSERT INTO `litemall_region` VALUES (621, 50, '高平市', 3, 140581);
INSERT INTO `litemall_region` VALUES (622, 51, '朔城区', 3, 140602);
INSERT INTO `litemall_region` VALUES (623, 51, '平鲁区', 3, 140603);
INSERT INTO `litemall_region` VALUES (624, 51, '山阴县', 3, 140621);
INSERT INTO `litemall_region` VALUES (625, 51, '应县', 3, 140622);
INSERT INTO `litemall_region` VALUES (626, 51, '右玉县', 3, 140623);
INSERT INTO `litemall_region` VALUES (627, 51, '怀仁县', 3, 140624);
INSERT INTO `litemall_region` VALUES (628, 52, '榆次区', 3, 140702);
INSERT INTO `litemall_region` VALUES (629, 52, '榆社县', 3, 140721);
INSERT INTO `litemall_region` VALUES (630, 52, '左权县', 3, 140722);
INSERT INTO `litemall_region` VALUES (631, 52, '和顺县', 3, 140723);
INSERT INTO `litemall_region` VALUES (632, 52, '昔阳县', 3, 140724);
INSERT INTO `litemall_region` VALUES (633, 52, '寿阳县', 3, 140725);
INSERT INTO `litemall_region` VALUES (634, 52, '太谷县', 3, 140726);
INSERT INTO `litemall_region` VALUES (635, 52, '祁县', 3, 140727);
INSERT INTO `litemall_region` VALUES (636, 52, '平遥县', 3, 140728);
INSERT INTO `litemall_region` VALUES (637, 52, '灵石县', 3, 140729);
INSERT INTO `litemall_region` VALUES (638, 52, '介休市', 3, 140781);
INSERT INTO `litemall_region` VALUES (639, 53, '盐湖区', 3, 140802);
INSERT INTO `litemall_region` VALUES (640, 53, '临猗县', 3, 140821);
INSERT INTO `litemall_region` VALUES (641, 53, '万荣县', 3, 140822);
INSERT INTO `litemall_region` VALUES (642, 53, '闻喜县', 3, 140823);
INSERT INTO `litemall_region` VALUES (643, 53, '稷山县', 3, 140824);
INSERT INTO `litemall_region` VALUES (644, 53, '新绛县', 3, 140825);
INSERT INTO `litemall_region` VALUES (645, 53, '绛县', 3, 140826);
INSERT INTO `litemall_region` VALUES (646, 53, '垣曲县', 3, 140827);
INSERT INTO `litemall_region` VALUES (647, 53, '夏县', 3, 140828);
INSERT INTO `litemall_region` VALUES (648, 53, '平陆县', 3, 140829);
INSERT INTO `litemall_region` VALUES (649, 53, '芮城县', 3, 140830);
INSERT INTO `litemall_region` VALUES (650, 53, '永济市', 3, 140881);
INSERT INTO `litemall_region` VALUES (651, 53, '河津市', 3, 140882);
INSERT INTO `litemall_region` VALUES (652, 54, '忻府区', 3, 140902);
INSERT INTO `litemall_region` VALUES (653, 54, '定襄县', 3, 140921);
INSERT INTO `litemall_region` VALUES (654, 54, '五台县', 3, 140922);
INSERT INTO `litemall_region` VALUES (655, 54, '代县', 3, 140923);
INSERT INTO `litemall_region` VALUES (656, 54, '繁峙县', 3, 140924);
INSERT INTO `litemall_region` VALUES (657, 54, '宁武县', 3, 140925);
INSERT INTO `litemall_region` VALUES (658, 54, '静乐县', 3, 140926);
INSERT INTO `litemall_region` VALUES (659, 54, '神池县', 3, 140927);
INSERT INTO `litemall_region` VALUES (660, 54, '五寨县', 3, 140928);
INSERT INTO `litemall_region` VALUES (661, 54, '岢岚县', 3, 140929);
INSERT INTO `litemall_region` VALUES (662, 54, '河曲县', 3, 140930);
INSERT INTO `litemall_region` VALUES (663, 54, '保德县', 3, 140931);
INSERT INTO `litemall_region` VALUES (664, 54, '偏关县', 3, 140932);
INSERT INTO `litemall_region` VALUES (665, 54, '原平市', 3, 140981);
INSERT INTO `litemall_region` VALUES (666, 55, '尧都区', 3, 141002);
INSERT INTO `litemall_region` VALUES (667, 55, '曲沃县', 3, 141021);
INSERT INTO `litemall_region` VALUES (668, 55, '翼城县', 3, 141022);
INSERT INTO `litemall_region` VALUES (669, 55, '襄汾县', 3, 141023);
INSERT INTO `litemall_region` VALUES (670, 55, '洪洞县', 3, 141024);
INSERT INTO `litemall_region` VALUES (671, 55, '古县', 3, 141025);
INSERT INTO `litemall_region` VALUES (672, 55, '安泽县', 3, 141026);
INSERT INTO `litemall_region` VALUES (673, 55, '浮山县', 3, 141027);
INSERT INTO `litemall_region` VALUES (674, 55, '吉县', 3, 141028);
INSERT INTO `litemall_region` VALUES (675, 55, '乡宁县', 3, 141029);
INSERT INTO `litemall_region` VALUES (676, 55, '大宁县', 3, 141030);
INSERT INTO `litemall_region` VALUES (677, 55, '隰县', 3, 141031);
INSERT INTO `litemall_region` VALUES (678, 55, '永和县', 3, 141032);
INSERT INTO `litemall_region` VALUES (679, 55, '蒲县', 3, 141033);
INSERT INTO `litemall_region` VALUES (680, 55, '汾西县', 3, 141034);
INSERT INTO `litemall_region` VALUES (681, 55, '侯马市', 3, 141081);
INSERT INTO `litemall_region` VALUES (682, 55, '霍州市', 3, 141082);
INSERT INTO `litemall_region` VALUES (683, 56, '离石区', 3, 141102);
INSERT INTO `litemall_region` VALUES (684, 56, '文水县', 3, 141121);
INSERT INTO `litemall_region` VALUES (685, 56, '交城县', 3, 141122);
INSERT INTO `litemall_region` VALUES (686, 56, '兴县', 3, 141123);
INSERT INTO `litemall_region` VALUES (687, 56, '临县', 3, 141124);
INSERT INTO `litemall_region` VALUES (688, 56, '柳林县', 3, 141125);
INSERT INTO `litemall_region` VALUES (689, 56, '石楼县', 3, 141126);
INSERT INTO `litemall_region` VALUES (690, 56, '岚县', 3, 141127);
INSERT INTO `litemall_region` VALUES (691, 56, '方山县', 3, 141128);
INSERT INTO `litemall_region` VALUES (692, 56, '中阳县', 3, 141129);
INSERT INTO `litemall_region` VALUES (693, 56, '交口县', 3, 141130);
INSERT INTO `litemall_region` VALUES (694, 56, '孝义市', 3, 141181);
INSERT INTO `litemall_region` VALUES (695, 56, '汾阳市', 3, 141182);
INSERT INTO `litemall_region` VALUES (696, 57, '新城区', 3, 150102);
INSERT INTO `litemall_region` VALUES (697, 57, '回民区', 3, 150103);
INSERT INTO `litemall_region` VALUES (698, 57, '玉泉区', 3, 150104);
INSERT INTO `litemall_region` VALUES (699, 57, '赛罕区', 3, 150105);
INSERT INTO `litemall_region` VALUES (700, 57, '土默特左旗', 3, 150121);
INSERT INTO `litemall_region` VALUES (701, 57, '托克托县', 3, 150122);
INSERT INTO `litemall_region` VALUES (702, 57, '和林格尔县', 3, 150123);
INSERT INTO `litemall_region` VALUES (703, 57, '清水河县', 3, 150124);
INSERT INTO `litemall_region` VALUES (704, 57, '武川县', 3, 150125);
INSERT INTO `litemall_region` VALUES (705, 58, '东河区', 3, 150202);
INSERT INTO `litemall_region` VALUES (706, 58, '昆都仑区', 3, 150203);
INSERT INTO `litemall_region` VALUES (707, 58, '青山区', 3, 150204);
INSERT INTO `litemall_region` VALUES (708, 58, '石拐区', 3, 150205);
INSERT INTO `litemall_region` VALUES (709, 58, '白云鄂博矿区', 3, 150206);
INSERT INTO `litemall_region` VALUES (710, 58, '九原区', 3, 150207);
INSERT INTO `litemall_region` VALUES (711, 58, '土默特右旗', 3, 150221);
INSERT INTO `litemall_region` VALUES (712, 58, '固阳县', 3, 150222);
INSERT INTO `litemall_region` VALUES (713, 58, '达尔罕茂明安联合旗', 3, 150223);
INSERT INTO `litemall_region` VALUES (714, 59, '海勃湾区', 3, 150302);
INSERT INTO `litemall_region` VALUES (715, 59, '海南区', 3, 150303);
INSERT INTO `litemall_region` VALUES (716, 59, '乌达区', 3, 150304);
INSERT INTO `litemall_region` VALUES (717, 60, '红山区', 3, 150402);
INSERT INTO `litemall_region` VALUES (718, 60, '元宝山区', 3, 150403);
INSERT INTO `litemall_region` VALUES (719, 60, '松山区', 3, 150404);
INSERT INTO `litemall_region` VALUES (720, 60, '阿鲁科尔沁旗', 3, 150421);
INSERT INTO `litemall_region` VALUES (721, 60, '巴林左旗', 3, 150422);
INSERT INTO `litemall_region` VALUES (722, 60, '巴林右旗', 3, 150423);
INSERT INTO `litemall_region` VALUES (723, 60, '林西县', 3, 150424);
INSERT INTO `litemall_region` VALUES (724, 60, '克什克腾旗', 3, 150425);
INSERT INTO `litemall_region` VALUES (725, 60, '翁牛特旗', 3, 150426);
INSERT INTO `litemall_region` VALUES (726, 60, '喀喇沁旗', 3, 150428);
INSERT INTO `litemall_region` VALUES (727, 60, '宁城县', 3, 150429);
INSERT INTO `litemall_region` VALUES (728, 60, '敖汉旗', 3, 150430);
INSERT INTO `litemall_region` VALUES (729, 61, '科尔沁区', 3, 150502);
INSERT INTO `litemall_region` VALUES (730, 61, '科尔沁左翼中旗', 3, 150521);
INSERT INTO `litemall_region` VALUES (731, 61, '科尔沁左翼后旗', 3, 150522);
INSERT INTO `litemall_region` VALUES (732, 61, '开鲁县', 3, 150523);
INSERT INTO `litemall_region` VALUES (733, 61, '库伦旗', 3, 150524);
INSERT INTO `litemall_region` VALUES (734, 61, '奈曼旗', 3, 150525);
INSERT INTO `litemall_region` VALUES (735, 61, '扎鲁特旗', 3, 150526);
INSERT INTO `litemall_region` VALUES (736, 61, '霍林郭勒市', 3, 150581);
INSERT INTO `litemall_region` VALUES (737, 62, '东胜区', 3, 150602);
INSERT INTO `litemall_region` VALUES (738, 62, '康巴什区', 3, 150603);
INSERT INTO `litemall_region` VALUES (739, 62, '达拉特旗', 3, 150621);
INSERT INTO `litemall_region` VALUES (740, 62, '准格尔旗', 3, 150622);
INSERT INTO `litemall_region` VALUES (741, 62, '鄂托克前旗', 3, 150623);
INSERT INTO `litemall_region` VALUES (742, 62, '鄂托克旗', 3, 150624);
INSERT INTO `litemall_region` VALUES (743, 62, '杭锦旗', 3, 150625);
INSERT INTO `litemall_region` VALUES (744, 62, '乌审旗', 3, 150626);
INSERT INTO `litemall_region` VALUES (745, 62, '伊金霍洛旗', 3, 150627);
INSERT INTO `litemall_region` VALUES (746, 63, '海拉尔区', 3, 150702);
INSERT INTO `litemall_region` VALUES (747, 63, '扎赉诺尔区', 3, 150703);
INSERT INTO `litemall_region` VALUES (748, 63, '阿荣旗', 3, 150721);
INSERT INTO `litemall_region` VALUES (749, 63, '莫力达瓦达斡尔族自治旗', 3, 150722);
INSERT INTO `litemall_region` VALUES (750, 63, '鄂伦春自治旗', 3, 150723);
INSERT INTO `litemall_region` VALUES (751, 63, '鄂温克族自治旗', 3, 150724);
INSERT INTO `litemall_region` VALUES (752, 63, '陈巴尔虎旗', 3, 150725);
INSERT INTO `litemall_region` VALUES (753, 63, '新巴尔虎左旗', 3, 150726);
INSERT INTO `litemall_region` VALUES (754, 63, '新巴尔虎右旗', 3, 150727);
INSERT INTO `litemall_region` VALUES (755, 63, '满洲里市', 3, 150781);
INSERT INTO `litemall_region` VALUES (756, 63, '牙克石市', 3, 150782);
INSERT INTO `litemall_region` VALUES (757, 63, '扎兰屯市', 3, 150783);
INSERT INTO `litemall_region` VALUES (758, 63, '额尔古纳市', 3, 150784);
INSERT INTO `litemall_region` VALUES (759, 63, '根河市', 3, 150785);
INSERT INTO `litemall_region` VALUES (760, 64, '临河区', 3, 150802);
INSERT INTO `litemall_region` VALUES (761, 64, '五原县', 3, 150821);
INSERT INTO `litemall_region` VALUES (762, 64, '磴口县', 3, 150822);
INSERT INTO `litemall_region` VALUES (763, 64, '乌拉特前旗', 3, 150823);
INSERT INTO `litemall_region` VALUES (764, 64, '乌拉特中旗', 3, 150824);
INSERT INTO `litemall_region` VALUES (765, 64, '乌拉特后旗', 3, 150825);
INSERT INTO `litemall_region` VALUES (766, 64, '杭锦后旗', 3, 150826);
INSERT INTO `litemall_region` VALUES (767, 65, '集宁区', 3, 150902);
INSERT INTO `litemall_region` VALUES (768, 65, '卓资县', 3, 150921);
INSERT INTO `litemall_region` VALUES (769, 65, '化德县', 3, 150922);
INSERT INTO `litemall_region` VALUES (770, 65, '商都县', 3, 150923);
INSERT INTO `litemall_region` VALUES (771, 65, '兴和县', 3, 150924);
INSERT INTO `litemall_region` VALUES (772, 65, '凉城县', 3, 150925);
INSERT INTO `litemall_region` VALUES (773, 65, '察哈尔右翼前旗', 3, 150926);
INSERT INTO `litemall_region` VALUES (774, 65, '察哈尔右翼中旗', 3, 150927);
INSERT INTO `litemall_region` VALUES (775, 65, '察哈尔右翼后旗', 3, 150928);
INSERT INTO `litemall_region` VALUES (776, 65, '四子王旗', 3, 150929);
INSERT INTO `litemall_region` VALUES (777, 65, '丰镇市', 3, 150981);
INSERT INTO `litemall_region` VALUES (778, 66, '乌兰浩特市', 3, 152201);
INSERT INTO `litemall_region` VALUES (779, 66, '阿尔山市', 3, 152202);
INSERT INTO `litemall_region` VALUES (780, 66, '科尔沁右翼前旗', 3, 152221);
INSERT INTO `litemall_region` VALUES (781, 66, '科尔沁右翼中旗', 3, 152222);
INSERT INTO `litemall_region` VALUES (782, 66, '扎赉特旗', 3, 152223);
INSERT INTO `litemall_region` VALUES (783, 66, '突泉县', 3, 152224);
INSERT INTO `litemall_region` VALUES (784, 67, '二连浩特市', 3, 152501);
INSERT INTO `litemall_region` VALUES (785, 67, '锡林浩特市', 3, 152502);
INSERT INTO `litemall_region` VALUES (786, 67, '阿巴嘎旗', 3, 152522);
INSERT INTO `litemall_region` VALUES (787, 67, '苏尼特左旗', 3, 152523);
INSERT INTO `litemall_region` VALUES (788, 67, '苏尼特右旗', 3, 152524);
INSERT INTO `litemall_region` VALUES (789, 67, '东乌珠穆沁旗', 3, 152525);
INSERT INTO `litemall_region` VALUES (790, 67, '西乌珠穆沁旗', 3, 152526);
INSERT INTO `litemall_region` VALUES (791, 67, '太仆寺旗', 3, 152527);
INSERT INTO `litemall_region` VALUES (792, 67, '镶黄旗', 3, 152528);
INSERT INTO `litemall_region` VALUES (793, 67, '正镶白旗', 3, 152529);
INSERT INTO `litemall_region` VALUES (794, 67, '正蓝旗', 3, 152530);
INSERT INTO `litemall_region` VALUES (795, 67, '多伦县', 3, 152531);
INSERT INTO `litemall_region` VALUES (796, 68, '阿拉善左旗', 3, 152921);
INSERT INTO `litemall_region` VALUES (797, 68, '阿拉善右旗', 3, 152922);
INSERT INTO `litemall_region` VALUES (798, 68, '额济纳旗', 3, 152923);
INSERT INTO `litemall_region` VALUES (799, 69, '和平区', 3, 210102);
INSERT INTO `litemall_region` VALUES (800, 69, '沈河区', 3, 210103);
INSERT INTO `litemall_region` VALUES (801, 69, '大东区', 3, 210104);
INSERT INTO `litemall_region` VALUES (802, 69, '皇姑区', 3, 210105);
INSERT INTO `litemall_region` VALUES (803, 69, '铁西区', 3, 210106);
INSERT INTO `litemall_region` VALUES (804, 69, '苏家屯区', 3, 210111);
INSERT INTO `litemall_region` VALUES (805, 69, '浑南区', 3, 210112);
INSERT INTO `litemall_region` VALUES (806, 69, '沈北新区', 3, 210113);
INSERT INTO `litemall_region` VALUES (807, 69, '于洪区', 3, 210114);
INSERT INTO `litemall_region` VALUES (808, 69, '辽中区', 3, 210115);
INSERT INTO `litemall_region` VALUES (809, 69, '康平县', 3, 210123);
INSERT INTO `litemall_region` VALUES (810, 69, '法库县', 3, 210124);
INSERT INTO `litemall_region` VALUES (811, 69, '新民市', 3, 210181);
INSERT INTO `litemall_region` VALUES (812, 70, '中山区', 3, 210202);
INSERT INTO `litemall_region` VALUES (813, 70, '西岗区', 3, 210203);
INSERT INTO `litemall_region` VALUES (814, 70, '沙河口区', 3, 210204);
INSERT INTO `litemall_region` VALUES (815, 70, '甘井子区', 3, 210211);
INSERT INTO `litemall_region` VALUES (816, 70, '旅顺口区', 3, 210212);
INSERT INTO `litemall_region` VALUES (817, 70, '金州区', 3, 210213);
INSERT INTO `litemall_region` VALUES (818, 70, '普兰店区', 3, 210214);
INSERT INTO `litemall_region` VALUES (819, 70, '长海县', 3, 210224);
INSERT INTO `litemall_region` VALUES (820, 70, '瓦房店市', 3, 210281);
INSERT INTO `litemall_region` VALUES (821, 70, '庄河市', 3, 210283);
INSERT INTO `litemall_region` VALUES (822, 71, '铁东区', 3, 210302);
INSERT INTO `litemall_region` VALUES (823, 71, '铁西区', 3, 210303);
INSERT INTO `litemall_region` VALUES (824, 71, '立山区', 3, 210304);
INSERT INTO `litemall_region` VALUES (825, 71, '千山区', 3, 210311);
INSERT INTO `litemall_region` VALUES (826, 71, '台安县', 3, 210321);
INSERT INTO `litemall_region` VALUES (827, 71, '岫岩满族自治县', 3, 210323);
INSERT INTO `litemall_region` VALUES (828, 71, '海城市', 3, 210381);
INSERT INTO `litemall_region` VALUES (829, 72, '新抚区', 3, 210402);
INSERT INTO `litemall_region` VALUES (830, 72, '东洲区', 3, 210403);
INSERT INTO `litemall_region` VALUES (831, 72, '望花区', 3, 210404);
INSERT INTO `litemall_region` VALUES (832, 72, '顺城区', 3, 210411);
INSERT INTO `litemall_region` VALUES (833, 72, '抚顺县', 3, 210421);
INSERT INTO `litemall_region` VALUES (834, 72, '新宾满族自治县', 3, 210422);
INSERT INTO `litemall_region` VALUES (835, 72, '清原满族自治县', 3, 210423);
INSERT INTO `litemall_region` VALUES (836, 73, '平山区', 3, 210502);
INSERT INTO `litemall_region` VALUES (837, 73, '溪湖区', 3, 210503);
INSERT INTO `litemall_region` VALUES (838, 73, '明山区', 3, 210504);
INSERT INTO `litemall_region` VALUES (839, 73, '南芬区', 3, 210505);
INSERT INTO `litemall_region` VALUES (840, 73, '本溪满族自治县', 3, 210521);
INSERT INTO `litemall_region` VALUES (841, 73, '桓仁满族自治县', 3, 210522);
INSERT INTO `litemall_region` VALUES (842, 74, '元宝区', 3, 210602);
INSERT INTO `litemall_region` VALUES (843, 74, '振兴区', 3, 210603);
INSERT INTO `litemall_region` VALUES (844, 74, '振安区', 3, 210604);
INSERT INTO `litemall_region` VALUES (845, 74, '宽甸满族自治县', 3, 210624);
INSERT INTO `litemall_region` VALUES (846, 74, '东港市', 3, 210681);
INSERT INTO `litemall_region` VALUES (847, 74, '凤城市', 3, 210682);
INSERT INTO `litemall_region` VALUES (848, 75, '古塔区', 3, 210702);
INSERT INTO `litemall_region` VALUES (849, 75, '凌河区', 3, 210703);
INSERT INTO `litemall_region` VALUES (850, 75, '太和区', 3, 210711);
INSERT INTO `litemall_region` VALUES (851, 75, '黑山县', 3, 210726);
INSERT INTO `litemall_region` VALUES (852, 75, '义县', 3, 210727);
INSERT INTO `litemall_region` VALUES (853, 75, '凌海市', 3, 210781);
INSERT INTO `litemall_region` VALUES (854, 75, '北镇市', 3, 210782);
INSERT INTO `litemall_region` VALUES (855, 76, '站前区', 3, 210802);
INSERT INTO `litemall_region` VALUES (856, 76, '西市区', 3, 210803);
INSERT INTO `litemall_region` VALUES (857, 76, '鲅鱼圈区', 3, 210804);
INSERT INTO `litemall_region` VALUES (858, 76, '老边区', 3, 210811);
INSERT INTO `litemall_region` VALUES (859, 76, '盖州市', 3, 210881);
INSERT INTO `litemall_region` VALUES (860, 76, '大石桥市', 3, 210882);
INSERT INTO `litemall_region` VALUES (861, 77, '海州区', 3, 210902);
INSERT INTO `litemall_region` VALUES (862, 77, '新邱区', 3, 210903);
INSERT INTO `litemall_region` VALUES (863, 77, '太平区', 3, 210904);
INSERT INTO `litemall_region` VALUES (864, 77, '清河门区', 3, 210905);
INSERT INTO `litemall_region` VALUES (865, 77, '细河区', 3, 210911);
INSERT INTO `litemall_region` VALUES (866, 77, '阜新蒙古族自治县', 3, 210921);
INSERT INTO `litemall_region` VALUES (867, 77, '彰武县', 3, 210922);
INSERT INTO `litemall_region` VALUES (868, 78, '白塔区', 3, 211002);
INSERT INTO `litemall_region` VALUES (869, 78, '文圣区', 3, 211003);
INSERT INTO `litemall_region` VALUES (870, 78, '宏伟区', 3, 211004);
INSERT INTO `litemall_region` VALUES (871, 78, '弓长岭区', 3, 211005);
INSERT INTO `litemall_region` VALUES (872, 78, '太子河区', 3, 211011);
INSERT INTO `litemall_region` VALUES (873, 78, '辽阳县', 3, 211021);
INSERT INTO `litemall_region` VALUES (874, 78, '灯塔市', 3, 211081);
INSERT INTO `litemall_region` VALUES (875, 79, '双台子区', 3, 211102);
INSERT INTO `litemall_region` VALUES (876, 79, '兴隆台区', 3, 211103);
INSERT INTO `litemall_region` VALUES (877, 79, '大洼区', 3, 211104);
INSERT INTO `litemall_region` VALUES (878, 79, '盘山县', 3, 211122);
INSERT INTO `litemall_region` VALUES (879, 80, '银州区', 3, 211202);
INSERT INTO `litemall_region` VALUES (880, 80, '清河区', 3, 211204);
INSERT INTO `litemall_region` VALUES (881, 80, '铁岭县', 3, 211221);
INSERT INTO `litemall_region` VALUES (882, 80, '西丰县', 3, 211223);
INSERT INTO `litemall_region` VALUES (883, 80, '昌图县', 3, 211224);
INSERT INTO `litemall_region` VALUES (884, 80, '调兵山市', 3, 211281);
INSERT INTO `litemall_region` VALUES (885, 80, '开原市', 3, 211282);
INSERT INTO `litemall_region` VALUES (886, 81, '双塔区', 3, 211302);
INSERT INTO `litemall_region` VALUES (887, 81, '龙城区', 3, 211303);
INSERT INTO `litemall_region` VALUES (888, 81, '朝阳县', 3, 211321);
INSERT INTO `litemall_region` VALUES (889, 81, '建平县', 3, 211322);
INSERT INTO `litemall_region` VALUES (890, 81, '喀喇沁左翼蒙古族自治县', 3, 211324);
INSERT INTO `litemall_region` VALUES (891, 81, '北票市', 3, 211381);
INSERT INTO `litemall_region` VALUES (892, 81, '凌源市', 3, 211382);
INSERT INTO `litemall_region` VALUES (893, 82, '连山区', 3, 211402);
INSERT INTO `litemall_region` VALUES (894, 82, '龙港区', 3, 211403);
INSERT INTO `litemall_region` VALUES (895, 82, '南票区', 3, 211404);
INSERT INTO `litemall_region` VALUES (896, 82, '绥中县', 3, 211421);
INSERT INTO `litemall_region` VALUES (897, 82, '建昌县', 3, 211422);
INSERT INTO `litemall_region` VALUES (898, 82, '兴城市', 3, 211481);
INSERT INTO `litemall_region` VALUES (899, 83, '南关区', 3, 220102);
INSERT INTO `litemall_region` VALUES (900, 83, '宽城区', 3, 220103);
INSERT INTO `litemall_region` VALUES (901, 83, '朝阳区', 3, 220104);
INSERT INTO `litemall_region` VALUES (902, 83, '二道区', 3, 220105);
INSERT INTO `litemall_region` VALUES (903, 83, '绿园区', 3, 220106);
INSERT INTO `litemall_region` VALUES (904, 83, '双阳区', 3, 220112);
INSERT INTO `litemall_region` VALUES (905, 83, '九台区', 3, 220113);
INSERT INTO `litemall_region` VALUES (906, 83, '农安县', 3, 220122);
INSERT INTO `litemall_region` VALUES (907, 83, '榆树市', 3, 220182);
INSERT INTO `litemall_region` VALUES (908, 83, '德惠市', 3, 220183);
INSERT INTO `litemall_region` VALUES (909, 84, '昌邑区', 3, 220202);
INSERT INTO `litemall_region` VALUES (910, 84, '龙潭区', 3, 220203);
INSERT INTO `litemall_region` VALUES (911, 84, '船营区', 3, 220204);
INSERT INTO `litemall_region` VALUES (912, 84, '丰满区', 3, 220211);
INSERT INTO `litemall_region` VALUES (913, 84, '永吉县', 3, 220221);
INSERT INTO `litemall_region` VALUES (914, 84, '蛟河市', 3, 220281);
INSERT INTO `litemall_region` VALUES (915, 84, '桦甸市', 3, 220282);
INSERT INTO `litemall_region` VALUES (916, 84, '舒兰市', 3, 220283);
INSERT INTO `litemall_region` VALUES (917, 84, '磐石市', 3, 220284);
INSERT INTO `litemall_region` VALUES (918, 85, '铁西区', 3, 220302);
INSERT INTO `litemall_region` VALUES (919, 85, '铁东区', 3, 220303);
INSERT INTO `litemall_region` VALUES (920, 85, '梨树县', 3, 220322);
INSERT INTO `litemall_region` VALUES (921, 85, '伊通满族自治县', 3, 220323);
INSERT INTO `litemall_region` VALUES (922, 85, '公主岭市', 3, 220381);
INSERT INTO `litemall_region` VALUES (923, 85, '双辽市', 3, 220382);
INSERT INTO `litemall_region` VALUES (924, 86, '龙山区', 3, 220402);
INSERT INTO `litemall_region` VALUES (925, 86, '西安区', 3, 220403);
INSERT INTO `litemall_region` VALUES (926, 86, '东丰县', 3, 220421);
INSERT INTO `litemall_region` VALUES (927, 86, '东辽县', 3, 220422);
INSERT INTO `litemall_region` VALUES (928, 87, '东昌区', 3, 220502);
INSERT INTO `litemall_region` VALUES (929, 87, '二道江区', 3, 220503);
INSERT INTO `litemall_region` VALUES (930, 87, '通化县', 3, 220521);
INSERT INTO `litemall_region` VALUES (931, 87, '辉南县', 3, 220523);
INSERT INTO `litemall_region` VALUES (932, 87, '柳河县', 3, 220524);
INSERT INTO `litemall_region` VALUES (933, 87, '梅河口市', 3, 220581);
INSERT INTO `litemall_region` VALUES (934, 87, '集安市', 3, 220582);
INSERT INTO `litemall_region` VALUES (935, 88, '浑江区', 3, 220602);
INSERT INTO `litemall_region` VALUES (936, 88, '江源区', 3, 220605);
INSERT INTO `litemall_region` VALUES (937, 88, '抚松县', 3, 220621);
INSERT INTO `litemall_region` VALUES (938, 88, '靖宇县', 3, 220622);
INSERT INTO `litemall_region` VALUES (939, 88, '长白朝鲜族自治县', 3, 220623);
INSERT INTO `litemall_region` VALUES (940, 88, '临江市', 3, 220681);
INSERT INTO `litemall_region` VALUES (941, 89, '宁江区', 3, 220702);
INSERT INTO `litemall_region` VALUES (942, 89, '前郭尔罗斯蒙古族自治县', 3, 220721);
INSERT INTO `litemall_region` VALUES (943, 89, '长岭县', 3, 220722);
INSERT INTO `litemall_region` VALUES (944, 89, '乾安县', 3, 220723);
INSERT INTO `litemall_region` VALUES (945, 89, '扶余市', 3, 220781);
INSERT INTO `litemall_region` VALUES (946, 90, '洮北区', 3, 220802);
INSERT INTO `litemall_region` VALUES (947, 90, '镇赉县', 3, 220821);
INSERT INTO `litemall_region` VALUES (948, 90, '通榆县', 3, 220822);
INSERT INTO `litemall_region` VALUES (949, 90, '洮南市', 3, 220881);
INSERT INTO `litemall_region` VALUES (950, 90, '大安市', 3, 220882);
INSERT INTO `litemall_region` VALUES (951, 91, '延吉市', 3, 222401);
INSERT INTO `litemall_region` VALUES (952, 91, '图们市', 3, 222402);
INSERT INTO `litemall_region` VALUES (953, 91, '敦化市', 3, 222403);
INSERT INTO `litemall_region` VALUES (954, 91, '珲春市', 3, 222404);
INSERT INTO `litemall_region` VALUES (955, 91, '龙井市', 3, 222405);
INSERT INTO `litemall_region` VALUES (956, 91, '和龙市', 3, 222406);
INSERT INTO `litemall_region` VALUES (957, 91, '汪清县', 3, 222424);
INSERT INTO `litemall_region` VALUES (958, 91, '安图县', 3, 222426);
INSERT INTO `litemall_region` VALUES (959, 92, '道里区', 3, 230102);
INSERT INTO `litemall_region` VALUES (960, 92, '南岗区', 3, 230103);
INSERT INTO `litemall_region` VALUES (961, 92, '道外区', 3, 230104);
INSERT INTO `litemall_region` VALUES (962, 92, '平房区', 3, 230108);
INSERT INTO `litemall_region` VALUES (963, 92, '松北区', 3, 230109);
INSERT INTO `litemall_region` VALUES (964, 92, '香坊区', 3, 230110);
INSERT INTO `litemall_region` VALUES (965, 92, '呼兰区', 3, 230111);
INSERT INTO `litemall_region` VALUES (966, 92, '阿城区', 3, 230112);
INSERT INTO `litemall_region` VALUES (967, 92, '双城区', 3, 230113);
INSERT INTO `litemall_region` VALUES (968, 92, '依兰县', 3, 230123);
INSERT INTO `litemall_region` VALUES (969, 92, '方正县', 3, 230124);
INSERT INTO `litemall_region` VALUES (970, 92, '宾县', 3, 230125);
INSERT INTO `litemall_region` VALUES (971, 92, '巴彦县', 3, 230126);
INSERT INTO `litemall_region` VALUES (972, 92, '木兰县', 3, 230127);
INSERT INTO `litemall_region` VALUES (973, 92, '通河县', 3, 230128);
INSERT INTO `litemall_region` VALUES (974, 92, '延寿县', 3, 230129);
INSERT INTO `litemall_region` VALUES (975, 92, '尚志市', 3, 230183);
INSERT INTO `litemall_region` VALUES (976, 92, '五常市', 3, 230184);
INSERT INTO `litemall_region` VALUES (977, 93, '龙沙区', 3, 230202);
INSERT INTO `litemall_region` VALUES (978, 93, '建华区', 3, 230203);
INSERT INTO `litemall_region` VALUES (979, 93, '铁锋区', 3, 230204);
INSERT INTO `litemall_region` VALUES (980, 93, '昂昂溪区', 3, 230205);
INSERT INTO `litemall_region` VALUES (981, 93, '富拉尔基区', 3, 230206);
INSERT INTO `litemall_region` VALUES (982, 93, '碾子山区', 3, 230207);
INSERT INTO `litemall_region` VALUES (983, 93, '梅里斯达斡尔族区', 3, 230208);
INSERT INTO `litemall_region` VALUES (984, 93, '龙江县', 3, 230221);
INSERT INTO `litemall_region` VALUES (985, 93, '依安县', 3, 230223);
INSERT INTO `litemall_region` VALUES (986, 93, '泰来县', 3, 230224);
INSERT INTO `litemall_region` VALUES (987, 93, '甘南县', 3, 230225);
INSERT INTO `litemall_region` VALUES (988, 93, '富裕县', 3, 230227);
INSERT INTO `litemall_region` VALUES (989, 93, '克山县', 3, 230229);
INSERT INTO `litemall_region` VALUES (990, 93, '克东县', 3, 230230);
INSERT INTO `litemall_region` VALUES (991, 93, '拜泉县', 3, 230231);
INSERT INTO `litemall_region` VALUES (992, 93, '讷河市', 3, 230281);
INSERT INTO `litemall_region` VALUES (993, 94, '鸡冠区', 3, 230302);
INSERT INTO `litemall_region` VALUES (994, 94, '恒山区', 3, 230303);
INSERT INTO `litemall_region` VALUES (995, 94, '滴道区', 3, 230304);
INSERT INTO `litemall_region` VALUES (996, 94, '梨树区', 3, 230305);
INSERT INTO `litemall_region` VALUES (997, 94, '城子河区', 3, 230306);
INSERT INTO `litemall_region` VALUES (998, 94, '麻山区', 3, 230307);
INSERT INTO `litemall_region` VALUES (999, 94, '鸡东县', 3, 230321);
INSERT INTO `litemall_region` VALUES (1000, 94, '虎林市', 3, 230381);
INSERT INTO `litemall_region` VALUES (1001, 94, '密山市', 3, 230382);
INSERT INTO `litemall_region` VALUES (1002, 95, '向阳区', 3, 230402);
INSERT INTO `litemall_region` VALUES (1003, 95, '工农区', 3, 230403);
INSERT INTO `litemall_region` VALUES (1004, 95, '南山区', 3, 230404);
INSERT INTO `litemall_region` VALUES (1005, 95, '兴安区', 3, 230405);
INSERT INTO `litemall_region` VALUES (1006, 95, '东山区', 3, 230406);
INSERT INTO `litemall_region` VALUES (1007, 95, '兴山区', 3, 230407);
INSERT INTO `litemall_region` VALUES (1008, 95, '萝北县', 3, 230421);
INSERT INTO `litemall_region` VALUES (1009, 95, '绥滨县', 3, 230422);
INSERT INTO `litemall_region` VALUES (1010, 96, '尖山区', 3, 230502);
INSERT INTO `litemall_region` VALUES (1011, 96, '岭东区', 3, 230503);
INSERT INTO `litemall_region` VALUES (1012, 96, '四方台区', 3, 230505);
INSERT INTO `litemall_region` VALUES (1013, 96, '宝山区', 3, 230506);
INSERT INTO `litemall_region` VALUES (1014, 96, '集贤县', 3, 230521);
INSERT INTO `litemall_region` VALUES (1015, 96, '友谊县', 3, 230522);
INSERT INTO `litemall_region` VALUES (1016, 96, '宝清县', 3, 230523);
INSERT INTO `litemall_region` VALUES (1017, 96, '饶河县', 3, 230524);
INSERT INTO `litemall_region` VALUES (1018, 97, '萨尔图区', 3, 230602);
INSERT INTO `litemall_region` VALUES (1019, 97, '龙凤区', 3, 230603);
INSERT INTO `litemall_region` VALUES (1020, 97, '让胡路区', 3, 230604);
INSERT INTO `litemall_region` VALUES (1021, 97, '红岗区', 3, 230605);
INSERT INTO `litemall_region` VALUES (1022, 97, '大同区', 3, 230606);
INSERT INTO `litemall_region` VALUES (1023, 97, '肇州县', 3, 230621);
INSERT INTO `litemall_region` VALUES (1024, 97, '肇源县', 3, 230622);
INSERT INTO `litemall_region` VALUES (1025, 97, '林甸县', 3, 230623);
INSERT INTO `litemall_region` VALUES (1026, 97, '杜尔伯特蒙古族自治县', 3, 230624);
INSERT INTO `litemall_region` VALUES (1027, 98, '伊春区', 3, 230702);
INSERT INTO `litemall_region` VALUES (1028, 98, '南岔区', 3, 230703);
INSERT INTO `litemall_region` VALUES (1029, 98, '友好区', 3, 230704);
INSERT INTO `litemall_region` VALUES (1030, 98, '西林区', 3, 230705);
INSERT INTO `litemall_region` VALUES (1031, 98, '翠峦区', 3, 230706);
INSERT INTO `litemall_region` VALUES (1032, 98, '新青区', 3, 230707);
INSERT INTO `litemall_region` VALUES (1033, 98, '美溪区', 3, 230708);
INSERT INTO `litemall_region` VALUES (1034, 98, '金山屯区', 3, 230709);
INSERT INTO `litemall_region` VALUES (1035, 98, '五营区', 3, 230710);
INSERT INTO `litemall_region` VALUES (1036, 98, '乌马河区', 3, 230711);
INSERT INTO `litemall_region` VALUES (1037, 98, '汤旺河区', 3, 230712);
INSERT INTO `litemall_region` VALUES (1038, 98, '带岭区', 3, 230713);
INSERT INTO `litemall_region` VALUES (1039, 98, '乌伊岭区', 3, 230714);
INSERT INTO `litemall_region` VALUES (1040, 98, '红星区', 3, 230715);
INSERT INTO `litemall_region` VALUES (1041, 98, '上甘岭区', 3, 230716);
INSERT INTO `litemall_region` VALUES (1042, 98, '嘉荫县', 3, 230722);
INSERT INTO `litemall_region` VALUES (1043, 98, '铁力市', 3, 230781);
INSERT INTO `litemall_region` VALUES (1044, 99, '向阳区', 3, 230803);
INSERT INTO `litemall_region` VALUES (1045, 99, '前进区', 3, 230804);
INSERT INTO `litemall_region` VALUES (1046, 99, '东风区', 3, 230805);
INSERT INTO `litemall_region` VALUES (1047, 99, '郊区', 3, 230811);
INSERT INTO `litemall_region` VALUES (1048, 99, '桦南县', 3, 230822);
INSERT INTO `litemall_region` VALUES (1049, 99, '桦川县', 3, 230826);
INSERT INTO `litemall_region` VALUES (1050, 99, '汤原县', 3, 230828);
INSERT INTO `litemall_region` VALUES (1051, 99, '同江市', 3, 230881);
INSERT INTO `litemall_region` VALUES (1052, 99, '富锦市', 3, 230882);
INSERT INTO `litemall_region` VALUES (1053, 99, '抚远市', 3, 230883);
INSERT INTO `litemall_region` VALUES (1054, 100, '新兴区', 3, 230902);
INSERT INTO `litemall_region` VALUES (1055, 100, '桃山区', 3, 230903);
INSERT INTO `litemall_region` VALUES (1056, 100, '茄子河区', 3, 230904);
INSERT INTO `litemall_region` VALUES (1057, 100, '勃利县', 3, 230921);
INSERT INTO `litemall_region` VALUES (1058, 101, '东安区', 3, 231002);
INSERT INTO `litemall_region` VALUES (1059, 101, '阳明区', 3, 231003);
INSERT INTO `litemall_region` VALUES (1060, 101, '爱民区', 3, 231004);
INSERT INTO `litemall_region` VALUES (1061, 101, '西安区', 3, 231005);
INSERT INTO `litemall_region` VALUES (1062, 101, '林口县', 3, 231025);
INSERT INTO `litemall_region` VALUES (1063, 101, '绥芬河市', 3, 231081);
INSERT INTO `litemall_region` VALUES (1064, 101, '海林市', 3, 231083);
INSERT INTO `litemall_region` VALUES (1065, 101, '宁安市', 3, 231084);
INSERT INTO `litemall_region` VALUES (1066, 101, '穆棱市', 3, 231085);
INSERT INTO `litemall_region` VALUES (1067, 101, '东宁市', 3, 231086);
INSERT INTO `litemall_region` VALUES (1068, 102, '爱辉区', 3, 231102);
INSERT INTO `litemall_region` VALUES (1069, 102, '嫩江县', 3, 231121);
INSERT INTO `litemall_region` VALUES (1070, 102, '逊克县', 3, 231123);
INSERT INTO `litemall_region` VALUES (1071, 102, '孙吴县', 3, 231124);
INSERT INTO `litemall_region` VALUES (1072, 102, '北安市', 3, 231181);
INSERT INTO `litemall_region` VALUES (1073, 102, '五大连池市', 3, 231182);
INSERT INTO `litemall_region` VALUES (1074, 103, '北林区', 3, 231202);
INSERT INTO `litemall_region` VALUES (1075, 103, '望奎县', 3, 231221);
INSERT INTO `litemall_region` VALUES (1076, 103, '兰西县', 3, 231222);
INSERT INTO `litemall_region` VALUES (1077, 103, '青冈县', 3, 231223);
INSERT INTO `litemall_region` VALUES (1078, 103, '庆安县', 3, 231224);
INSERT INTO `litemall_region` VALUES (1079, 103, '明水县', 3, 231225);
INSERT INTO `litemall_region` VALUES (1080, 103, '绥棱县', 3, 231226);
INSERT INTO `litemall_region` VALUES (1081, 103, '安达市', 3, 231281);
INSERT INTO `litemall_region` VALUES (1082, 103, '肇东市', 3, 231282);
INSERT INTO `litemall_region` VALUES (1083, 103, '海伦市', 3, 231283);
INSERT INTO `litemall_region` VALUES (1084, 104, '呼玛县', 3, 232721);
INSERT INTO `litemall_region` VALUES (1085, 104, '塔河县', 3, 232722);
INSERT INTO `litemall_region` VALUES (1086, 104, '漠河县', 3, 232723);
INSERT INTO `litemall_region` VALUES (1087, 105, '黄浦区', 3, 310101);
INSERT INTO `litemall_region` VALUES (1088, 105, '徐汇区', 3, 310104);
INSERT INTO `litemall_region` VALUES (1089, 105, '长宁区', 3, 310105);
INSERT INTO `litemall_region` VALUES (1090, 105, '静安区', 3, 310106);
INSERT INTO `litemall_region` VALUES (1091, 105, '普陀区', 3, 310107);
INSERT INTO `litemall_region` VALUES (1092, 105, '虹口区', 3, 310109);
INSERT INTO `litemall_region` VALUES (1093, 105, '杨浦区', 3, 310110);
INSERT INTO `litemall_region` VALUES (1094, 105, '闵行区', 3, 310112);
INSERT INTO `litemall_region` VALUES (1095, 105, '宝山区', 3, 310113);
INSERT INTO `litemall_region` VALUES (1096, 105, '嘉定区', 3, 310114);
INSERT INTO `litemall_region` VALUES (1097, 105, '浦东新区', 3, 310115);
INSERT INTO `litemall_region` VALUES (1098, 105, '金山区', 3, 310116);
INSERT INTO `litemall_region` VALUES (1099, 105, '松江区', 3, 310117);
INSERT INTO `litemall_region` VALUES (1100, 105, '青浦区', 3, 310118);
INSERT INTO `litemall_region` VALUES (1101, 105, '奉贤区', 3, 310120);
INSERT INTO `litemall_region` VALUES (1102, 105, '崇明区', 3, 310151);
INSERT INTO `litemall_region` VALUES (1103, 106, '玄武区', 3, 320102);
INSERT INTO `litemall_region` VALUES (1104, 106, '秦淮区', 3, 320104);
INSERT INTO `litemall_region` VALUES (1105, 106, '建邺区', 3, 320105);
INSERT INTO `litemall_region` VALUES (1106, 106, '鼓楼区', 3, 320106);
INSERT INTO `litemall_region` VALUES (1107, 106, '浦口区', 3, 320111);
INSERT INTO `litemall_region` VALUES (1108, 106, '栖霞区', 3, 320113);
INSERT INTO `litemall_region` VALUES (1109, 106, '雨花台区', 3, 320114);
INSERT INTO `litemall_region` VALUES (1110, 106, '江宁区', 3, 320115);
INSERT INTO `litemall_region` VALUES (1111, 106, '六合区', 3, 320116);
INSERT INTO `litemall_region` VALUES (1112, 106, '溧水区', 3, 320117);
INSERT INTO `litemall_region` VALUES (1113, 106, '高淳区', 3, 320118);
INSERT INTO `litemall_region` VALUES (1114, 107, '锡山区', 3, 320205);
INSERT INTO `litemall_region` VALUES (1115, 107, '惠山区', 3, 320206);
INSERT INTO `litemall_region` VALUES (1116, 107, '滨湖区', 3, 320211);
INSERT INTO `litemall_region` VALUES (1117, 107, '梁溪区', 3, 320213);
INSERT INTO `litemall_region` VALUES (1118, 107, '新吴区', 3, 320214);
INSERT INTO `litemall_region` VALUES (1119, 107, '江阴市', 3, 320281);
INSERT INTO `litemall_region` VALUES (1120, 107, '宜兴市', 3, 320282);
INSERT INTO `litemall_region` VALUES (1121, 108, '鼓楼区', 3, 320302);
INSERT INTO `litemall_region` VALUES (1122, 108, '云龙区', 3, 320303);
INSERT INTO `litemall_region` VALUES (1123, 108, '贾汪区', 3, 320305);
INSERT INTO `litemall_region` VALUES (1124, 108, '泉山区', 3, 320311);
INSERT INTO `litemall_region` VALUES (1125, 108, '铜山区', 3, 320312);
INSERT INTO `litemall_region` VALUES (1126, 108, '丰县', 3, 320321);
INSERT INTO `litemall_region` VALUES (1127, 108, '沛县', 3, 320322);
INSERT INTO `litemall_region` VALUES (1128, 108, '睢宁县', 3, 320324);
INSERT INTO `litemall_region` VALUES (1129, 108, '新沂市', 3, 320381);
INSERT INTO `litemall_region` VALUES (1130, 108, '邳州市', 3, 320382);
INSERT INTO `litemall_region` VALUES (1131, 109, '天宁区', 3, 320402);
INSERT INTO `litemall_region` VALUES (1132, 109, '钟楼区', 3, 320404);
INSERT INTO `litemall_region` VALUES (1133, 109, '新北区', 3, 320411);
INSERT INTO `litemall_region` VALUES (1134, 109, '武进区', 3, 320412);
INSERT INTO `litemall_region` VALUES (1135, 109, '金坛区', 3, 320413);
INSERT INTO `litemall_region` VALUES (1136, 109, '溧阳市', 3, 320481);
INSERT INTO `litemall_region` VALUES (1137, 110, '虎丘区', 3, 320505);
INSERT INTO `litemall_region` VALUES (1138, 110, '吴中区', 3, 320506);
INSERT INTO `litemall_region` VALUES (1139, 110, '相城区', 3, 320507);
INSERT INTO `litemall_region` VALUES (1140, 110, '姑苏区', 3, 320508);
INSERT INTO `litemall_region` VALUES (1141, 110, '吴江区', 3, 320509);
INSERT INTO `litemall_region` VALUES (1142, 110, '常熟市', 3, 320581);
INSERT INTO `litemall_region` VALUES (1143, 110, '张家港市', 3, 320582);
INSERT INTO `litemall_region` VALUES (1144, 110, '昆山市', 3, 320583);
INSERT INTO `litemall_region` VALUES (1145, 110, '太仓市', 3, 320585);
INSERT INTO `litemall_region` VALUES (1146, 111, '崇川区', 3, 320602);
INSERT INTO `litemall_region` VALUES (1147, 111, '港闸区', 3, 320611);
INSERT INTO `litemall_region` VALUES (1148, 111, '通州区', 3, 320612);
INSERT INTO `litemall_region` VALUES (1149, 111, '海安县', 3, 320621);
INSERT INTO `litemall_region` VALUES (1150, 111, '如东县', 3, 320623);
INSERT INTO `litemall_region` VALUES (1151, 111, '启东市', 3, 320681);
INSERT INTO `litemall_region` VALUES (1152, 111, '如皋市', 3, 320682);
INSERT INTO `litemall_region` VALUES (1153, 111, '海门市', 3, 320684);
INSERT INTO `litemall_region` VALUES (1154, 112, '连云区', 3, 320703);
INSERT INTO `litemall_region` VALUES (1155, 112, '海州区', 3, 320706);
INSERT INTO `litemall_region` VALUES (1156, 112, '赣榆区', 3, 320707);
INSERT INTO `litemall_region` VALUES (1157, 112, '东海县', 3, 320722);
INSERT INTO `litemall_region` VALUES (1158, 112, '灌云县', 3, 320723);
INSERT INTO `litemall_region` VALUES (1159, 112, '灌南县', 3, 320724);
INSERT INTO `litemall_region` VALUES (1160, 113, '淮安区', 3, 320803);
INSERT INTO `litemall_region` VALUES (1161, 113, '淮阴区', 3, 320804);
INSERT INTO `litemall_region` VALUES (1162, 113, '清江浦区', 3, 320812);
INSERT INTO `litemall_region` VALUES (1163, 113, '洪泽区', 3, 320813);
INSERT INTO `litemall_region` VALUES (1164, 113, '涟水县', 3, 320826);
INSERT INTO `litemall_region` VALUES (1165, 113, '盱眙县', 3, 320830);
INSERT INTO `litemall_region` VALUES (1166, 113, '金湖县', 3, 320831);
INSERT INTO `litemall_region` VALUES (1167, 114, '亭湖区', 3, 320902);
INSERT INTO `litemall_region` VALUES (1168, 114, '盐都区', 3, 320903);
INSERT INTO `litemall_region` VALUES (1169, 114, '大丰区', 3, 320904);
INSERT INTO `litemall_region` VALUES (1170, 114, '响水县', 3, 320921);
INSERT INTO `litemall_region` VALUES (1171, 114, '滨海县', 3, 320922);
INSERT INTO `litemall_region` VALUES (1172, 114, '阜宁县', 3, 320923);
INSERT INTO `litemall_region` VALUES (1173, 114, '射阳县', 3, 320924);
INSERT INTO `litemall_region` VALUES (1174, 114, '建湖县', 3, 320925);
INSERT INTO `litemall_region` VALUES (1175, 114, '东台市', 3, 320981);
INSERT INTO `litemall_region` VALUES (1176, 115, '广陵区', 3, 321002);
INSERT INTO `litemall_region` VALUES (1177, 115, '邗江区', 3, 321003);
INSERT INTO `litemall_region` VALUES (1178, 115, '江都区', 3, 321012);
INSERT INTO `litemall_region` VALUES (1179, 115, '宝应县', 3, 321023);
INSERT INTO `litemall_region` VALUES (1180, 115, '仪征市', 3, 321081);
INSERT INTO `litemall_region` VALUES (1181, 115, '高邮市', 3, 321084);
INSERT INTO `litemall_region` VALUES (1182, 116, '京口区', 3, 321102);
INSERT INTO `litemall_region` VALUES (1183, 116, '润州区', 3, 321111);
INSERT INTO `litemall_region` VALUES (1184, 116, '丹徒区', 3, 321112);
INSERT INTO `litemall_region` VALUES (1185, 116, '丹阳市', 3, 321181);
INSERT INTO `litemall_region` VALUES (1186, 116, '扬中市', 3, 321182);
INSERT INTO `litemall_region` VALUES (1187, 116, '句容市', 3, 321183);
INSERT INTO `litemall_region` VALUES (1188, 117, '海陵区', 3, 321202);
INSERT INTO `litemall_region` VALUES (1189, 117, '高港区', 3, 321203);
INSERT INTO `litemall_region` VALUES (1190, 117, '姜堰区', 3, 321204);
INSERT INTO `litemall_region` VALUES (1191, 117, '兴化市', 3, 321281);
INSERT INTO `litemall_region` VALUES (1192, 117, '靖江市', 3, 321282);
INSERT INTO `litemall_region` VALUES (1193, 117, '泰兴市', 3, 321283);
INSERT INTO `litemall_region` VALUES (1194, 118, '宿城区', 3, 321302);
INSERT INTO `litemall_region` VALUES (1195, 118, '宿豫区', 3, 321311);
INSERT INTO `litemall_region` VALUES (1196, 118, '沭阳县', 3, 321322);
INSERT INTO `litemall_region` VALUES (1197, 118, '泗阳县', 3, 321323);
INSERT INTO `litemall_region` VALUES (1198, 118, '泗洪县', 3, 321324);
INSERT INTO `litemall_region` VALUES (1199, 119, '上城区', 3, 330102);
INSERT INTO `litemall_region` VALUES (1200, 119, '下城区', 3, 330103);
INSERT INTO `litemall_region` VALUES (1201, 119, '江干区', 3, 330104);
INSERT INTO `litemall_region` VALUES (1202, 119, '拱墅区', 3, 330105);
INSERT INTO `litemall_region` VALUES (1203, 119, '西湖区', 3, 330106);
INSERT INTO `litemall_region` VALUES (1204, 119, '滨江区', 3, 330108);
INSERT INTO `litemall_region` VALUES (1205, 119, '萧山区', 3, 330109);
INSERT INTO `litemall_region` VALUES (1206, 119, '余杭区', 3, 330110);
INSERT INTO `litemall_region` VALUES (1207, 119, '富阳区', 3, 330111);
INSERT INTO `litemall_region` VALUES (1208, 119, '桐庐县', 3, 330122);
INSERT INTO `litemall_region` VALUES (1209, 119, '淳安县', 3, 330127);
INSERT INTO `litemall_region` VALUES (1210, 119, '建德市', 3, 330182);
INSERT INTO `litemall_region` VALUES (1211, 119, '临安市', 3, 330185);
INSERT INTO `litemall_region` VALUES (1212, 120, '海曙区', 3, 330203);
INSERT INTO `litemall_region` VALUES (1213, 120, '江东区', 3, 330204);
INSERT INTO `litemall_region` VALUES (1214, 120, '江北区', 3, 330205);
INSERT INTO `litemall_region` VALUES (1215, 120, '北仑区', 3, 330206);
INSERT INTO `litemall_region` VALUES (1216, 120, '镇海区', 3, 330211);
INSERT INTO `litemall_region` VALUES (1217, 120, '鄞州区', 3, 330212);
INSERT INTO `litemall_region` VALUES (1218, 120, '象山县', 3, 330225);
INSERT INTO `litemall_region` VALUES (1219, 120, '宁海县', 3, 330226);
INSERT INTO `litemall_region` VALUES (1220, 120, '余姚市', 3, 330281);
INSERT INTO `litemall_region` VALUES (1221, 120, '慈溪市', 3, 330282);
INSERT INTO `litemall_region` VALUES (1222, 120, '奉化市', 3, 330283);
INSERT INTO `litemall_region` VALUES (1223, 121, '鹿城区', 3, 330302);
INSERT INTO `litemall_region` VALUES (1224, 121, '龙湾区', 3, 330303);
INSERT INTO `litemall_region` VALUES (1225, 121, '瓯海区', 3, 330304);
INSERT INTO `litemall_region` VALUES (1226, 121, '洞头区', 3, 330305);
INSERT INTO `litemall_region` VALUES (1227, 121, '永嘉县', 3, 330324);
INSERT INTO `litemall_region` VALUES (1228, 121, '平阳县', 3, 330326);
INSERT INTO `litemall_region` VALUES (1229, 121, '苍南县', 3, 330327);
INSERT INTO `litemall_region` VALUES (1230, 121, '文成县', 3, 330328);
INSERT INTO `litemall_region` VALUES (1231, 121, '泰顺县', 3, 330329);
INSERT INTO `litemall_region` VALUES (1232, 121, '瑞安市', 3, 330381);
INSERT INTO `litemall_region` VALUES (1233, 121, '乐清市', 3, 330382);
INSERT INTO `litemall_region` VALUES (1234, 122, '南湖区', 3, 330402);
INSERT INTO `litemall_region` VALUES (1235, 122, '秀洲区', 3, 330411);
INSERT INTO `litemall_region` VALUES (1236, 122, '嘉善县', 3, 330421);
INSERT INTO `litemall_region` VALUES (1237, 122, '海盐县', 3, 330424);
INSERT INTO `litemall_region` VALUES (1238, 122, '海宁市', 3, 330481);
INSERT INTO `litemall_region` VALUES (1239, 122, '平湖市', 3, 330482);
INSERT INTO `litemall_region` VALUES (1240, 122, '桐乡市', 3, 330483);
INSERT INTO `litemall_region` VALUES (1241, 123, '吴兴区', 3, 330502);
INSERT INTO `litemall_region` VALUES (1242, 123, '南浔区', 3, 330503);
INSERT INTO `litemall_region` VALUES (1243, 123, '德清县', 3, 330521);
INSERT INTO `litemall_region` VALUES (1244, 123, '长兴县', 3, 330522);
INSERT INTO `litemall_region` VALUES (1245, 123, '安吉县', 3, 330523);
INSERT INTO `litemall_region` VALUES (1246, 124, '越城区', 3, 330602);
INSERT INTO `litemall_region` VALUES (1247, 124, '柯桥区', 3, 330603);
INSERT INTO `litemall_region` VALUES (1248, 124, '上虞区', 3, 330604);
INSERT INTO `litemall_region` VALUES (1249, 124, '新昌县', 3, 330624);
INSERT INTO `litemall_region` VALUES (1250, 124, '诸暨市', 3, 330681);
INSERT INTO `litemall_region` VALUES (1251, 124, '嵊州市', 3, 330683);
INSERT INTO `litemall_region` VALUES (1252, 125, '婺城区', 3, 330702);
INSERT INTO `litemall_region` VALUES (1253, 125, '金东区', 3, 330703);
INSERT INTO `litemall_region` VALUES (1254, 125, '武义县', 3, 330723);
INSERT INTO `litemall_region` VALUES (1255, 125, '浦江县', 3, 330726);
INSERT INTO `litemall_region` VALUES (1256, 125, '磐安县', 3, 330727);
INSERT INTO `litemall_region` VALUES (1257, 125, '兰溪市', 3, 330781);
INSERT INTO `litemall_region` VALUES (1258, 125, '义乌市', 3, 330782);
INSERT INTO `litemall_region` VALUES (1259, 125, '东阳市', 3, 330783);
INSERT INTO `litemall_region` VALUES (1260, 125, '永康市', 3, 330784);
INSERT INTO `litemall_region` VALUES (1261, 126, '柯城区', 3, 330802);
INSERT INTO `litemall_region` VALUES (1262, 126, '衢江区', 3, 330803);
INSERT INTO `litemall_region` VALUES (1263, 126, '常山县', 3, 330822);
INSERT INTO `litemall_region` VALUES (1264, 126, '开化县', 3, 330824);
INSERT INTO `litemall_region` VALUES (1265, 126, '龙游县', 3, 330825);
INSERT INTO `litemall_region` VALUES (1266, 126, '江山市', 3, 330881);
INSERT INTO `litemall_region` VALUES (1267, 127, '定海区', 3, 330902);
INSERT INTO `litemall_region` VALUES (1268, 127, '普陀区', 3, 330903);
INSERT INTO `litemall_region` VALUES (1269, 127, '岱山县', 3, 330921);
INSERT INTO `litemall_region` VALUES (1270, 127, '嵊泗县', 3, 330922);
INSERT INTO `litemall_region` VALUES (1271, 128, '椒江区', 3, 331002);
INSERT INTO `litemall_region` VALUES (1272, 128, '黄岩区', 3, 331003);
INSERT INTO `litemall_region` VALUES (1273, 128, '路桥区', 3, 331004);
INSERT INTO `litemall_region` VALUES (1274, 128, '玉环县', 3, 331021);
INSERT INTO `litemall_region` VALUES (1275, 128, '三门县', 3, 331022);
INSERT INTO `litemall_region` VALUES (1276, 128, '天台县', 3, 331023);
INSERT INTO `litemall_region` VALUES (1277, 128, '仙居县', 3, 331024);
INSERT INTO `litemall_region` VALUES (1278, 128, '温岭市', 3, 331081);
INSERT INTO `litemall_region` VALUES (1279, 128, '临海市', 3, 331082);
INSERT INTO `litemall_region` VALUES (1280, 129, '莲都区', 3, 331102);
INSERT INTO `litemall_region` VALUES (1281, 129, '青田县', 3, 331121);
INSERT INTO `litemall_region` VALUES (1282, 129, '缙云县', 3, 331122);
INSERT INTO `litemall_region` VALUES (1283, 129, '遂昌县', 3, 331123);
INSERT INTO `litemall_region` VALUES (1284, 129, '松阳县', 3, 331124);
INSERT INTO `litemall_region` VALUES (1285, 129, '云和县', 3, 331125);
INSERT INTO `litemall_region` VALUES (1286, 129, '庆元县', 3, 331126);
INSERT INTO `litemall_region` VALUES (1287, 129, '景宁畲族自治县', 3, 331127);
INSERT INTO `litemall_region` VALUES (1288, 129, '龙泉市', 3, 331181);
INSERT INTO `litemall_region` VALUES (1289, 130, '瑶海区', 3, 340102);
INSERT INTO `litemall_region` VALUES (1290, 130, '庐阳区', 3, 340103);
INSERT INTO `litemall_region` VALUES (1291, 130, '蜀山区', 3, 340104);
INSERT INTO `litemall_region` VALUES (1292, 130, '包河区', 3, 340111);
INSERT INTO `litemall_region` VALUES (1293, 130, '长丰县', 3, 340121);
INSERT INTO `litemall_region` VALUES (1294, 130, '肥东县', 3, 340122);
INSERT INTO `litemall_region` VALUES (1295, 130, '肥西县', 3, 340123);
INSERT INTO `litemall_region` VALUES (1296, 130, '庐江县', 3, 340124);
INSERT INTO `litemall_region` VALUES (1297, 130, '巢湖市', 3, 340181);
INSERT INTO `litemall_region` VALUES (1298, 131, '镜湖区', 3, 340202);
INSERT INTO `litemall_region` VALUES (1299, 131, '弋江区', 3, 340203);
INSERT INTO `litemall_region` VALUES (1300, 131, '鸠江区', 3, 340207);
INSERT INTO `litemall_region` VALUES (1301, 131, '三山区', 3, 340208);
INSERT INTO `litemall_region` VALUES (1302, 131, '芜湖县', 3, 340221);
INSERT INTO `litemall_region` VALUES (1303, 131, '繁昌县', 3, 340222);
INSERT INTO `litemall_region` VALUES (1304, 131, '南陵县', 3, 340223);
INSERT INTO `litemall_region` VALUES (1305, 131, '无为县', 3, 340225);
INSERT INTO `litemall_region` VALUES (1306, 132, '龙子湖区', 3, 340302);
INSERT INTO `litemall_region` VALUES (1307, 132, '蚌山区', 3, 340303);
INSERT INTO `litemall_region` VALUES (1308, 132, '禹会区', 3, 340304);
INSERT INTO `litemall_region` VALUES (1309, 132, '淮上区', 3, 340311);
INSERT INTO `litemall_region` VALUES (1310, 132, '怀远县', 3, 340321);
INSERT INTO `litemall_region` VALUES (1311, 132, '五河县', 3, 340322);
INSERT INTO `litemall_region` VALUES (1312, 132, '固镇县', 3, 340323);
INSERT INTO `litemall_region` VALUES (1313, 133, '大通区', 3, 340402);
INSERT INTO `litemall_region` VALUES (1314, 133, '田家庵区', 3, 340403);
INSERT INTO `litemall_region` VALUES (1315, 133, '谢家集区', 3, 340404);
INSERT INTO `litemall_region` VALUES (1316, 133, '八公山区', 3, 340405);
INSERT INTO `litemall_region` VALUES (1317, 133, '潘集区', 3, 340406);
INSERT INTO `litemall_region` VALUES (1318, 133, '凤台县', 3, 340421);
INSERT INTO `litemall_region` VALUES (1319, 133, '寿县', 3, 340422);
INSERT INTO `litemall_region` VALUES (1320, 134, '花山区', 3, 340503);
INSERT INTO `litemall_region` VALUES (1321, 134, '雨山区', 3, 340504);
INSERT INTO `litemall_region` VALUES (1322, 134, '博望区', 3, 340506);
INSERT INTO `litemall_region` VALUES (1323, 134, '当涂县', 3, 340521);
INSERT INTO `litemall_region` VALUES (1324, 134, '含山县', 3, 340522);
INSERT INTO `litemall_region` VALUES (1325, 134, '和县', 3, 340523);
INSERT INTO `litemall_region` VALUES (1326, 135, '杜集区', 3, 340602);
INSERT INTO `litemall_region` VALUES (1327, 135, '相山区', 3, 340603);
INSERT INTO `litemall_region` VALUES (1328, 135, '烈山区', 3, 340604);
INSERT INTO `litemall_region` VALUES (1329, 135, '濉溪县', 3, 340621);
INSERT INTO `litemall_region` VALUES (1330, 136, '铜官区', 3, 340705);
INSERT INTO `litemall_region` VALUES (1331, 136, '义安区', 3, 340706);
INSERT INTO `litemall_region` VALUES (1332, 136, '郊区', 3, 340711);
INSERT INTO `litemall_region` VALUES (1333, 136, '枞阳县', 3, 340722);
INSERT INTO `litemall_region` VALUES (1334, 137, '迎江区', 3, 340802);
INSERT INTO `litemall_region` VALUES (1335, 137, '大观区', 3, 340803);
INSERT INTO `litemall_region` VALUES (1336, 137, '宜秀区', 3, 340811);
INSERT INTO `litemall_region` VALUES (1337, 137, '怀宁县', 3, 340822);
INSERT INTO `litemall_region` VALUES (1338, 137, '潜山县', 3, 340824);
INSERT INTO `litemall_region` VALUES (1339, 137, '太湖县', 3, 340825);
INSERT INTO `litemall_region` VALUES (1340, 137, '宿松县', 3, 340826);
INSERT INTO `litemall_region` VALUES (1341, 137, '望江县', 3, 340827);
INSERT INTO `litemall_region` VALUES (1342, 137, '岳西县', 3, 340828);
INSERT INTO `litemall_region` VALUES (1343, 137, '桐城市', 3, 340881);
INSERT INTO `litemall_region` VALUES (1344, 138, '屯溪区', 3, 341002);
INSERT INTO `litemall_region` VALUES (1345, 138, '黄山区', 3, 341003);
INSERT INTO `litemall_region` VALUES (1346, 138, '徽州区', 3, 341004);
INSERT INTO `litemall_region` VALUES (1347, 138, '歙县', 3, 341021);
INSERT INTO `litemall_region` VALUES (1348, 138, '休宁县', 3, 341022);
INSERT INTO `litemall_region` VALUES (1349, 138, '黟县', 3, 341023);
INSERT INTO `litemall_region` VALUES (1350, 138, '祁门县', 3, 341024);
INSERT INTO `litemall_region` VALUES (1351, 139, '琅琊区', 3, 341102);
INSERT INTO `litemall_region` VALUES (1352, 139, '南谯区', 3, 341103);
INSERT INTO `litemall_region` VALUES (1353, 139, '来安县', 3, 341122);
INSERT INTO `litemall_region` VALUES (1354, 139, '全椒县', 3, 341124);
INSERT INTO `litemall_region` VALUES (1355, 139, '定远县', 3, 341125);
INSERT INTO `litemall_region` VALUES (1356, 139, '凤阳县', 3, 341126);
INSERT INTO `litemall_region` VALUES (1357, 139, '天长市', 3, 341181);
INSERT INTO `litemall_region` VALUES (1358, 139, '明光市', 3, 341182);
INSERT INTO `litemall_region` VALUES (1359, 140, '颍州区', 3, 341202);
INSERT INTO `litemall_region` VALUES (1360, 140, '颍东区', 3, 341203);
INSERT INTO `litemall_region` VALUES (1361, 140, '颍泉区', 3, 341204);
INSERT INTO `litemall_region` VALUES (1362, 140, '临泉县', 3, 341221);
INSERT INTO `litemall_region` VALUES (1363, 140, '太和县', 3, 341222);
INSERT INTO `litemall_region` VALUES (1364, 140, '阜南县', 3, 341225);
INSERT INTO `litemall_region` VALUES (1365, 140, '颍上县', 3, 341226);
INSERT INTO `litemall_region` VALUES (1366, 140, '界首市', 3, 341282);
INSERT INTO `litemall_region` VALUES (1367, 141, '埇桥区', 3, 341302);
INSERT INTO `litemall_region` VALUES (1368, 141, '砀山县', 3, 341321);
INSERT INTO `litemall_region` VALUES (1369, 141, '萧县', 3, 341322);
INSERT INTO `litemall_region` VALUES (1370, 141, '灵璧县', 3, 341323);
INSERT INTO `litemall_region` VALUES (1371, 141, '泗县', 3, 341324);
INSERT INTO `litemall_region` VALUES (1372, 142, '金安区', 3, 341502);
INSERT INTO `litemall_region` VALUES (1373, 142, '裕安区', 3, 341503);
INSERT INTO `litemall_region` VALUES (1374, 142, '叶集区', 3, 341504);
INSERT INTO `litemall_region` VALUES (1375, 142, '霍邱县', 3, 341522);
INSERT INTO `litemall_region` VALUES (1376, 142, '舒城县', 3, 341523);
INSERT INTO `litemall_region` VALUES (1377, 142, '金寨县', 3, 341524);
INSERT INTO `litemall_region` VALUES (1378, 142, '霍山县', 3, 341525);
INSERT INTO `litemall_region` VALUES (1379, 143, '谯城区', 3, 341602);
INSERT INTO `litemall_region` VALUES (1380, 143, '涡阳县', 3, 341621);
INSERT INTO `litemall_region` VALUES (1381, 143, '蒙城县', 3, 341622);
INSERT INTO `litemall_region` VALUES (1382, 143, '利辛县', 3, 341623);
INSERT INTO `litemall_region` VALUES (1383, 144, '贵池区', 3, 341702);
INSERT INTO `litemall_region` VALUES (1384, 144, '东至县', 3, 341721);
INSERT INTO `litemall_region` VALUES (1385, 144, '石台县', 3, 341722);
INSERT INTO `litemall_region` VALUES (1386, 144, '青阳县', 3, 341723);
INSERT INTO `litemall_region` VALUES (1387, 145, '宣州区', 3, 341802);
INSERT INTO `litemall_region` VALUES (1388, 145, '郎溪县', 3, 341821);
INSERT INTO `litemall_region` VALUES (1389, 145, '广德县', 3, 341822);
INSERT INTO `litemall_region` VALUES (1390, 145, '泾县', 3, 341823);
INSERT INTO `litemall_region` VALUES (1391, 145, '绩溪县', 3, 341824);
INSERT INTO `litemall_region` VALUES (1392, 145, '旌德县', 3, 341825);
INSERT INTO `litemall_region` VALUES (1393, 145, '宁国市', 3, 341881);
INSERT INTO `litemall_region` VALUES (1394, 146, '鼓楼区', 3, 350102);
INSERT INTO `litemall_region` VALUES (1395, 146, '台江区', 3, 350103);
INSERT INTO `litemall_region` VALUES (1396, 146, '仓山区', 3, 350104);
INSERT INTO `litemall_region` VALUES (1397, 146, '马尾区', 3, 350105);
INSERT INTO `litemall_region` VALUES (1398, 146, '晋安区', 3, 350111);
INSERT INTO `litemall_region` VALUES (1399, 146, '闽侯县', 3, 350121);
INSERT INTO `litemall_region` VALUES (1400, 146, '连江县', 3, 350122);
INSERT INTO `litemall_region` VALUES (1401, 146, '罗源县', 3, 350123);
INSERT INTO `litemall_region` VALUES (1402, 146, '闽清县', 3, 350124);
INSERT INTO `litemall_region` VALUES (1403, 146, '永泰县', 3, 350125);
INSERT INTO `litemall_region` VALUES (1404, 146, '平潭县', 3, 350128);
INSERT INTO `litemall_region` VALUES (1405, 146, '福清市', 3, 350181);
INSERT INTO `litemall_region` VALUES (1406, 146, '长乐市', 3, 350182);
INSERT INTO `litemall_region` VALUES (1407, 147, '思明区', 3, 350203);
INSERT INTO `litemall_region` VALUES (1408, 147, '海沧区', 3, 350205);
INSERT INTO `litemall_region` VALUES (1409, 147, '湖里区', 3, 350206);
INSERT INTO `litemall_region` VALUES (1410, 147, '集美区', 3, 350211);
INSERT INTO `litemall_region` VALUES (1411, 147, '同安区', 3, 350212);
INSERT INTO `litemall_region` VALUES (1412, 147, '翔安区', 3, 350213);
INSERT INTO `litemall_region` VALUES (1413, 148, '城厢区', 3, 350302);
INSERT INTO `litemall_region` VALUES (1414, 148, '涵江区', 3, 350303);
INSERT INTO `litemall_region` VALUES (1415, 148, '荔城区', 3, 350304);
INSERT INTO `litemall_region` VALUES (1416, 148, '秀屿区', 3, 350305);
INSERT INTO `litemall_region` VALUES (1417, 148, '仙游县', 3, 350322);
INSERT INTO `litemall_region` VALUES (1418, 149, '梅列区', 3, 350402);
INSERT INTO `litemall_region` VALUES (1419, 149, '三元区', 3, 350403);
INSERT INTO `litemall_region` VALUES (1420, 149, '明溪县', 3, 350421);
INSERT INTO `litemall_region` VALUES (1421, 149, '清流县', 3, 350423);
INSERT INTO `litemall_region` VALUES (1422, 149, '宁化县', 3, 350424);
INSERT INTO `litemall_region` VALUES (1423, 149, '大田县', 3, 350425);
INSERT INTO `litemall_region` VALUES (1424, 149, '尤溪县', 3, 350426);
INSERT INTO `litemall_region` VALUES (1425, 149, '沙县', 3, 350427);
INSERT INTO `litemall_region` VALUES (1426, 149, '将乐县', 3, 350428);
INSERT INTO `litemall_region` VALUES (1427, 149, '泰宁县', 3, 350429);
INSERT INTO `litemall_region` VALUES (1428, 149, '建宁县', 3, 350430);
INSERT INTO `litemall_region` VALUES (1429, 149, '永安市', 3, 350481);
INSERT INTO `litemall_region` VALUES (1430, 150, '鲤城区', 3, 350502);
INSERT INTO `litemall_region` VALUES (1431, 150, '丰泽区', 3, 350503);
INSERT INTO `litemall_region` VALUES (1432, 150, '洛江区', 3, 350504);
INSERT INTO `litemall_region` VALUES (1433, 150, '泉港区', 3, 350505);
INSERT INTO `litemall_region` VALUES (1434, 150, '惠安县', 3, 350521);
INSERT INTO `litemall_region` VALUES (1435, 150, '安溪县', 3, 350524);
INSERT INTO `litemall_region` VALUES (1436, 150, '永春县', 3, 350525);
INSERT INTO `litemall_region` VALUES (1437, 150, '德化县', 3, 350526);
INSERT INTO `litemall_region` VALUES (1438, 150, '金门县', 3, 350527);
INSERT INTO `litemall_region` VALUES (1439, 150, '石狮市', 3, 350581);
INSERT INTO `litemall_region` VALUES (1440, 150, '晋江市', 3, 350582);
INSERT INTO `litemall_region` VALUES (1441, 150, '南安市', 3, 350583);
INSERT INTO `litemall_region` VALUES (1442, 151, '芗城区', 3, 350602);
INSERT INTO `litemall_region` VALUES (1443, 151, '龙文区', 3, 350603);
INSERT INTO `litemall_region` VALUES (1444, 151, '云霄县', 3, 350622);
INSERT INTO `litemall_region` VALUES (1445, 151, '漳浦县', 3, 350623);
INSERT INTO `litemall_region` VALUES (1446, 151, '诏安县', 3, 350624);
INSERT INTO `litemall_region` VALUES (1447, 151, '长泰县', 3, 350625);
INSERT INTO `litemall_region` VALUES (1448, 151, '东山县', 3, 350626);
INSERT INTO `litemall_region` VALUES (1449, 151, '南靖县', 3, 350627);
INSERT INTO `litemall_region` VALUES (1450, 151, '平和县', 3, 350628);
INSERT INTO `litemall_region` VALUES (1451, 151, '华安县', 3, 350629);
INSERT INTO `litemall_region` VALUES (1452, 151, '龙海市', 3, 350681);
INSERT INTO `litemall_region` VALUES (1453, 152, '延平区', 3, 350702);
INSERT INTO `litemall_region` VALUES (1454, 152, '建阳区', 3, 350703);
INSERT INTO `litemall_region` VALUES (1455, 152, '顺昌县', 3, 350721);
INSERT INTO `litemall_region` VALUES (1456, 152, '浦城县', 3, 350722);
INSERT INTO `litemall_region` VALUES (1457, 152, '光泽县', 3, 350723);
INSERT INTO `litemall_region` VALUES (1458, 152, '松溪县', 3, 350724);
INSERT INTO `litemall_region` VALUES (1459, 152, '政和县', 3, 350725);
INSERT INTO `litemall_region` VALUES (1460, 152, '邵武市', 3, 350781);
INSERT INTO `litemall_region` VALUES (1461, 152, '武夷山市', 3, 350782);
INSERT INTO `litemall_region` VALUES (1462, 152, '建瓯市', 3, 350783);
INSERT INTO `litemall_region` VALUES (1463, 153, '新罗区', 3, 350802);
INSERT INTO `litemall_region` VALUES (1464, 153, '永定区', 3, 350803);
INSERT INTO `litemall_region` VALUES (1465, 153, '长汀县', 3, 350821);
INSERT INTO `litemall_region` VALUES (1466, 153, '上杭县', 3, 350823);
INSERT INTO `litemall_region` VALUES (1467, 153, '武平县', 3, 350824);
INSERT INTO `litemall_region` VALUES (1468, 153, '连城县', 3, 350825);
INSERT INTO `litemall_region` VALUES (1469, 153, '漳平市', 3, 350881);
INSERT INTO `litemall_region` VALUES (1470, 154, '蕉城区', 3, 350902);
INSERT INTO `litemall_region` VALUES (1471, 154, '霞浦县', 3, 350921);
INSERT INTO `litemall_region` VALUES (1472, 154, '古田县', 3, 350922);
INSERT INTO `litemall_region` VALUES (1473, 154, '屏南县', 3, 350923);
INSERT INTO `litemall_region` VALUES (1474, 154, '寿宁县', 3, 350924);
INSERT INTO `litemall_region` VALUES (1475, 154, '周宁县', 3, 350925);
INSERT INTO `litemall_region` VALUES (1476, 154, '柘荣县', 3, 350926);
INSERT INTO `litemall_region` VALUES (1477, 154, '福安市', 3, 350981);
INSERT INTO `litemall_region` VALUES (1478, 154, '福鼎市', 3, 350982);
INSERT INTO `litemall_region` VALUES (1479, 155, '东湖区', 3, 360102);
INSERT INTO `litemall_region` VALUES (1480, 155, '西湖区', 3, 360103);
INSERT INTO `litemall_region` VALUES (1481, 155, '青云谱区', 3, 360104);
INSERT INTO `litemall_region` VALUES (1482, 155, '湾里区', 3, 360105);
INSERT INTO `litemall_region` VALUES (1483, 155, '青山湖区', 3, 360111);
INSERT INTO `litemall_region` VALUES (1484, 155, '新建区', 3, 360112);
INSERT INTO `litemall_region` VALUES (1485, 155, '南昌县', 3, 360121);
INSERT INTO `litemall_region` VALUES (1486, 155, '安义县', 3, 360123);
INSERT INTO `litemall_region` VALUES (1487, 155, '进贤县', 3, 360124);
INSERT INTO `litemall_region` VALUES (1488, 156, '昌江区', 3, 360202);
INSERT INTO `litemall_region` VALUES (1489, 156, '珠山区', 3, 360203);
INSERT INTO `litemall_region` VALUES (1490, 156, '浮梁县', 3, 360222);
INSERT INTO `litemall_region` VALUES (1491, 156, '乐平市', 3, 360281);
INSERT INTO `litemall_region` VALUES (1492, 157, '安源区', 3, 360302);
INSERT INTO `litemall_region` VALUES (1493, 157, '湘东区', 3, 360313);
INSERT INTO `litemall_region` VALUES (1494, 157, '莲花县', 3, 360321);
INSERT INTO `litemall_region` VALUES (1495, 157, '上栗县', 3, 360322);
INSERT INTO `litemall_region` VALUES (1496, 157, '芦溪县', 3, 360323);
INSERT INTO `litemall_region` VALUES (1497, 158, '濂溪区', 3, 360402);
INSERT INTO `litemall_region` VALUES (1498, 158, '浔阳区', 3, 360403);
INSERT INTO `litemall_region` VALUES (1499, 158, '九江县', 3, 360421);
INSERT INTO `litemall_region` VALUES (1500, 158, '武宁县', 3, 360423);
INSERT INTO `litemall_region` VALUES (1501, 158, '修水县', 3, 360424);
INSERT INTO `litemall_region` VALUES (1502, 158, '永修县', 3, 360425);
INSERT INTO `litemall_region` VALUES (1503, 158, '德安县', 3, 360426);
INSERT INTO `litemall_region` VALUES (1504, 158, '都昌县', 3, 360428);
INSERT INTO `litemall_region` VALUES (1505, 158, '湖口县', 3, 360429);
INSERT INTO `litemall_region` VALUES (1506, 158, '彭泽县', 3, 360430);
INSERT INTO `litemall_region` VALUES (1507, 158, '瑞昌市', 3, 360481);
INSERT INTO `litemall_region` VALUES (1508, 158, '共青城市', 3, 360482);
INSERT INTO `litemall_region` VALUES (1509, 158, '庐山市', 3, 360483);
INSERT INTO `litemall_region` VALUES (1510, 159, '渝水区', 3, 360502);
INSERT INTO `litemall_region` VALUES (1511, 159, '分宜县', 3, 360521);
INSERT INTO `litemall_region` VALUES (1512, 160, '月湖区', 3, 360602);
INSERT INTO `litemall_region` VALUES (1513, 160, '余江县', 3, 360622);
INSERT INTO `litemall_region` VALUES (1514, 160, '贵溪市', 3, 360681);
INSERT INTO `litemall_region` VALUES (1515, 161, '章贡区', 3, 360702);
INSERT INTO `litemall_region` VALUES (1516, 161, '南康区', 3, 360703);
INSERT INTO `litemall_region` VALUES (1517, 161, '赣县', 3, 360721);
INSERT INTO `litemall_region` VALUES (1518, 161, '信丰县', 3, 360722);
INSERT INTO `litemall_region` VALUES (1519, 161, '大余县', 3, 360723);
INSERT INTO `litemall_region` VALUES (1520, 161, '上犹县', 3, 360724);
INSERT INTO `litemall_region` VALUES (1521, 161, '崇义县', 3, 360725);
INSERT INTO `litemall_region` VALUES (1522, 161, '安远县', 3, 360726);
INSERT INTO `litemall_region` VALUES (1523, 161, '龙南县', 3, 360727);
INSERT INTO `litemall_region` VALUES (1524, 161, '定南县', 3, 360728);
INSERT INTO `litemall_region` VALUES (1525, 161, '全南县', 3, 360729);
INSERT INTO `litemall_region` VALUES (1526, 161, '宁都县', 3, 360730);
INSERT INTO `litemall_region` VALUES (1527, 161, '于都县', 3, 360731);
INSERT INTO `litemall_region` VALUES (1528, 161, '兴国县', 3, 360732);
INSERT INTO `litemall_region` VALUES (1529, 161, '会昌县', 3, 360733);
INSERT INTO `litemall_region` VALUES (1530, 161, '寻乌县', 3, 360734);
INSERT INTO `litemall_region` VALUES (1531, 161, '石城县', 3, 360735);
INSERT INTO `litemall_region` VALUES (1532, 161, '瑞金市', 3, 360781);
INSERT INTO `litemall_region` VALUES (1533, 162, '吉州区', 3, 360802);
INSERT INTO `litemall_region` VALUES (1534, 162, '青原区', 3, 360803);
INSERT INTO `litemall_region` VALUES (1535, 162, '吉安县', 3, 360821);
INSERT INTO `litemall_region` VALUES (1536, 162, '吉水县', 3, 360822);
INSERT INTO `litemall_region` VALUES (1537, 162, '峡江县', 3, 360823);
INSERT INTO `litemall_region` VALUES (1538, 162, '新干县', 3, 360824);
INSERT INTO `litemall_region` VALUES (1539, 162, '永丰县', 3, 360825);
INSERT INTO `litemall_region` VALUES (1540, 162, '泰和县', 3, 360826);
INSERT INTO `litemall_region` VALUES (1541, 162, '遂川县', 3, 360827);
INSERT INTO `litemall_region` VALUES (1542, 162, '万安县', 3, 360828);
INSERT INTO `litemall_region` VALUES (1543, 162, '安福县', 3, 360829);
INSERT INTO `litemall_region` VALUES (1544, 162, '永新县', 3, 360830);
INSERT INTO `litemall_region` VALUES (1545, 162, '井冈山市', 3, 360881);
INSERT INTO `litemall_region` VALUES (1546, 163, '袁州区', 3, 360902);
INSERT INTO `litemall_region` VALUES (1547, 163, '奉新县', 3, 360921);
INSERT INTO `litemall_region` VALUES (1548, 163, '万载县', 3, 360922);
INSERT INTO `litemall_region` VALUES (1549, 163, '上高县', 3, 360923);
INSERT INTO `litemall_region` VALUES (1550, 163, '宜丰县', 3, 360924);
INSERT INTO `litemall_region` VALUES (1551, 163, '靖安县', 3, 360925);
INSERT INTO `litemall_region` VALUES (1552, 163, '铜鼓县', 3, 360926);
INSERT INTO `litemall_region` VALUES (1553, 163, '丰城市', 3, 360981);
INSERT INTO `litemall_region` VALUES (1554, 163, '樟树市', 3, 360982);
INSERT INTO `litemall_region` VALUES (1555, 163, '高安市', 3, 360983);
INSERT INTO `litemall_region` VALUES (1556, 164, '临川区', 3, 361002);
INSERT INTO `litemall_region` VALUES (1557, 164, '南城县', 3, 361021);
INSERT INTO `litemall_region` VALUES (1558, 164, '黎川县', 3, 361022);
INSERT INTO `litemall_region` VALUES (1559, 164, '南丰县', 3, 361023);
INSERT INTO `litemall_region` VALUES (1560, 164, '崇仁县', 3, 361024);
INSERT INTO `litemall_region` VALUES (1561, 164, '乐安县', 3, 361025);
INSERT INTO `litemall_region` VALUES (1562, 164, '宜黄县', 3, 361026);
INSERT INTO `litemall_region` VALUES (1563, 164, '金溪县', 3, 361027);
INSERT INTO `litemall_region` VALUES (1564, 164, '资溪县', 3, 361028);
INSERT INTO `litemall_region` VALUES (1565, 164, '东乡县', 3, 361029);
INSERT INTO `litemall_region` VALUES (1566, 164, '广昌县', 3, 361030);
INSERT INTO `litemall_region` VALUES (1567, 165, '信州区', 3, 361102);
INSERT INTO `litemall_region` VALUES (1568, 165, '广丰区', 3, 361103);
INSERT INTO `litemall_region` VALUES (1569, 165, '上饶县', 3, 361121);
INSERT INTO `litemall_region` VALUES (1570, 165, '玉山县', 3, 361123);
INSERT INTO `litemall_region` VALUES (1571, 165, '铅山县', 3, 361124);
INSERT INTO `litemall_region` VALUES (1572, 165, '横峰县', 3, 361125);
INSERT INTO `litemall_region` VALUES (1573, 165, '弋阳县', 3, 361126);
INSERT INTO `litemall_region` VALUES (1574, 165, '余干县', 3, 361127);
INSERT INTO `litemall_region` VALUES (1575, 165, '鄱阳县', 3, 361128);
INSERT INTO `litemall_region` VALUES (1576, 165, '万年县', 3, 361129);
INSERT INTO `litemall_region` VALUES (1577, 165, '婺源县', 3, 361130);
INSERT INTO `litemall_region` VALUES (1578, 165, '德兴市', 3, 361181);
INSERT INTO `litemall_region` VALUES (1579, 166, '历下区', 3, 370102);
INSERT INTO `litemall_region` VALUES (1580, 166, '市中区', 3, 370103);
INSERT INTO `litemall_region` VALUES (1581, 166, '槐荫区', 3, 370104);
INSERT INTO `litemall_region` VALUES (1582, 166, '天桥区', 3, 370105);
INSERT INTO `litemall_region` VALUES (1583, 166, '历城区', 3, 370112);
INSERT INTO `litemall_region` VALUES (1584, 166, '长清区', 3, 370113);
INSERT INTO `litemall_region` VALUES (1585, 166, '平阴县', 3, 370124);
INSERT INTO `litemall_region` VALUES (1586, 166, '济阳县', 3, 370125);
INSERT INTO `litemall_region` VALUES (1587, 166, '商河县', 3, 370126);
INSERT INTO `litemall_region` VALUES (1588, 166, '章丘市', 3, 370181);
INSERT INTO `litemall_region` VALUES (1589, 167, '市南区', 3, 370202);
INSERT INTO `litemall_region` VALUES (1590, 167, '市北区', 3, 370203);
INSERT INTO `litemall_region` VALUES (1591, 167, '黄岛区', 3, 370211);
INSERT INTO `litemall_region` VALUES (1592, 167, '崂山区', 3, 370212);
INSERT INTO `litemall_region` VALUES (1593, 167, '李沧区', 3, 370213);
INSERT INTO `litemall_region` VALUES (1594, 167, '城阳区', 3, 370214);
INSERT INTO `litemall_region` VALUES (1595, 167, '胶州市', 3, 370281);
INSERT INTO `litemall_region` VALUES (1596, 167, '即墨市', 3, 370282);
INSERT INTO `litemall_region` VALUES (1597, 167, '平度市', 3, 370283);
INSERT INTO `litemall_region` VALUES (1598, 167, '莱西市', 3, 370285);
INSERT INTO `litemall_region` VALUES (1599, 168, '淄川区', 3, 370302);
INSERT INTO `litemall_region` VALUES (1600, 168, '张店区', 3, 370303);
INSERT INTO `litemall_region` VALUES (1601, 168, '博山区', 3, 370304);
INSERT INTO `litemall_region` VALUES (1602, 168, '临淄区', 3, 370305);
INSERT INTO `litemall_region` VALUES (1603, 168, '周村区', 3, 370306);
INSERT INTO `litemall_region` VALUES (1604, 168, '桓台县', 3, 370321);
INSERT INTO `litemall_region` VALUES (1605, 168, '高青县', 3, 370322);
INSERT INTO `litemall_region` VALUES (1606, 168, '沂源县', 3, 370323);
INSERT INTO `litemall_region` VALUES (1607, 169, '市中区', 3, 370402);
INSERT INTO `litemall_region` VALUES (1608, 169, '薛城区', 3, 370403);
INSERT INTO `litemall_region` VALUES (1609, 169, '峄城区', 3, 370404);
INSERT INTO `litemall_region` VALUES (1610, 169, '台儿庄区', 3, 370405);
INSERT INTO `litemall_region` VALUES (1611, 169, '山亭区', 3, 370406);
INSERT INTO `litemall_region` VALUES (1612, 169, '滕州市', 3, 370481);
INSERT INTO `litemall_region` VALUES (1613, 170, '东营区', 3, 370502);
INSERT INTO `litemall_region` VALUES (1614, 170, '河口区', 3, 370503);
INSERT INTO `litemall_region` VALUES (1615, 170, '垦利区', 3, 370505);
INSERT INTO `litemall_region` VALUES (1616, 170, '利津县', 3, 370522);
INSERT INTO `litemall_region` VALUES (1617, 170, '广饶县', 3, 370523);
INSERT INTO `litemall_region` VALUES (1618, 171, '芝罘区', 3, 370602);
INSERT INTO `litemall_region` VALUES (1619, 171, '福山区', 3, 370611);
INSERT INTO `litemall_region` VALUES (1620, 171, '牟平区', 3, 370612);
INSERT INTO `litemall_region` VALUES (1621, 171, '莱山区', 3, 370613);
INSERT INTO `litemall_region` VALUES (1622, 171, '长岛县', 3, 370634);
INSERT INTO `litemall_region` VALUES (1623, 171, '龙口市', 3, 370681);
INSERT INTO `litemall_region` VALUES (1624, 171, '莱阳市', 3, 370682);
INSERT INTO `litemall_region` VALUES (1625, 171, '莱州市', 3, 370683);
INSERT INTO `litemall_region` VALUES (1626, 171, '蓬莱市', 3, 370684);
INSERT INTO `litemall_region` VALUES (1627, 171, '招远市', 3, 370685);
INSERT INTO `litemall_region` VALUES (1628, 171, '栖霞市', 3, 370686);
INSERT INTO `litemall_region` VALUES (1629, 171, '海阳市', 3, 370687);
INSERT INTO `litemall_region` VALUES (1630, 172, '潍城区', 3, 370702);
INSERT INTO `litemall_region` VALUES (1631, 172, '寒亭区', 3, 370703);
INSERT INTO `litemall_region` VALUES (1632, 172, '坊子区', 3, 370704);
INSERT INTO `litemall_region` VALUES (1633, 172, '奎文区', 3, 370705);
INSERT INTO `litemall_region` VALUES (1634, 172, '临朐县', 3, 370724);
INSERT INTO `litemall_region` VALUES (1635, 172, '昌乐县', 3, 370725);
INSERT INTO `litemall_region` VALUES (1636, 172, '青州市', 3, 370781);
INSERT INTO `litemall_region` VALUES (1637, 172, '诸城市', 3, 370782);
INSERT INTO `litemall_region` VALUES (1638, 172, '寿光市', 3, 370783);
INSERT INTO `litemall_region` VALUES (1639, 172, '安丘市', 3, 370784);
INSERT INTO `litemall_region` VALUES (1640, 172, '高密市', 3, 370785);
INSERT INTO `litemall_region` VALUES (1641, 172, '昌邑市', 3, 370786);
INSERT INTO `litemall_region` VALUES (1642, 173, '任城区', 3, 370811);
INSERT INTO `litemall_region` VALUES (1643, 173, '兖州区', 3, 370812);
INSERT INTO `litemall_region` VALUES (1644, 173, '微山县', 3, 370826);
INSERT INTO `litemall_region` VALUES (1645, 173, '鱼台县', 3, 370827);
INSERT INTO `litemall_region` VALUES (1646, 173, '金乡县', 3, 370828);
INSERT INTO `litemall_region` VALUES (1647, 173, '嘉祥县', 3, 370829);
INSERT INTO `litemall_region` VALUES (1648, 173, '汶上县', 3, 370830);
INSERT INTO `litemall_region` VALUES (1649, 173, '泗水县', 3, 370831);
INSERT INTO `litemall_region` VALUES (1650, 173, '梁山县', 3, 370832);
INSERT INTO `litemall_region` VALUES (1651, 173, '曲阜市', 3, 370881);
INSERT INTO `litemall_region` VALUES (1652, 173, '邹城市', 3, 370883);
INSERT INTO `litemall_region` VALUES (1653, 174, '泰山区', 3, 370902);
INSERT INTO `litemall_region` VALUES (1654, 174, '岱岳区', 3, 370911);
INSERT INTO `litemall_region` VALUES (1655, 174, '宁阳县', 3, 370921);
INSERT INTO `litemall_region` VALUES (1656, 174, '东平县', 3, 370923);
INSERT INTO `litemall_region` VALUES (1657, 174, '新泰市', 3, 370982);
INSERT INTO `litemall_region` VALUES (1658, 174, '肥城市', 3, 370983);
INSERT INTO `litemall_region` VALUES (1659, 175, '环翠区', 3, 371002);
INSERT INTO `litemall_region` VALUES (1660, 175, '文登区', 3, 371003);
INSERT INTO `litemall_region` VALUES (1661, 175, '荣成市', 3, 371082);
INSERT INTO `litemall_region` VALUES (1662, 175, '乳山市', 3, 371083);
INSERT INTO `litemall_region` VALUES (1663, 176, '东港区', 3, 371102);
INSERT INTO `litemall_region` VALUES (1664, 176, '岚山区', 3, 371103);
INSERT INTO `litemall_region` VALUES (1665, 176, '五莲县', 3, 371121);
INSERT INTO `litemall_region` VALUES (1666, 176, '莒县', 3, 371122);
INSERT INTO `litemall_region` VALUES (1667, 177, '莱城区', 3, 371202);
INSERT INTO `litemall_region` VALUES (1668, 177, '钢城区', 3, 371203);
INSERT INTO `litemall_region` VALUES (1669, 178, '兰山区', 3, 371302);
INSERT INTO `litemall_region` VALUES (1670, 178, '罗庄区', 3, 371311);
INSERT INTO `litemall_region` VALUES (1671, 178, '河东区', 3, 371312);
INSERT INTO `litemall_region` VALUES (1672, 178, '沂南县', 3, 371321);
INSERT INTO `litemall_region` VALUES (1673, 178, '郯城县', 3, 371322);
INSERT INTO `litemall_region` VALUES (1674, 178, '沂水县', 3, 371323);
INSERT INTO `litemall_region` VALUES (1675, 178, '兰陵县', 3, 371324);
INSERT INTO `litemall_region` VALUES (1676, 178, '费县', 3, 371325);
INSERT INTO `litemall_region` VALUES (1677, 178, '平邑县', 3, 371326);
INSERT INTO `litemall_region` VALUES (1678, 178, '莒南县', 3, 371327);
INSERT INTO `litemall_region` VALUES (1679, 178, '蒙阴县', 3, 371328);
INSERT INTO `litemall_region` VALUES (1680, 178, '临沭县', 3, 371329);
INSERT INTO `litemall_region` VALUES (1681, 179, '德城区', 3, 371402);
INSERT INTO `litemall_region` VALUES (1682, 179, '陵城区', 3, 371403);
INSERT INTO `litemall_region` VALUES (1683, 179, '宁津县', 3, 371422);
INSERT INTO `litemall_region` VALUES (1684, 179, '庆云县', 3, 371423);
INSERT INTO `litemall_region` VALUES (1685, 179, '临邑县', 3, 371424);
INSERT INTO `litemall_region` VALUES (1686, 179, '齐河县', 3, 371425);
INSERT INTO `litemall_region` VALUES (1687, 179, '平原县', 3, 371426);
INSERT INTO `litemall_region` VALUES (1688, 179, '夏津县', 3, 371427);
INSERT INTO `litemall_region` VALUES (1689, 179, '武城县', 3, 371428);
INSERT INTO `litemall_region` VALUES (1690, 179, '乐陵市', 3, 371481);
INSERT INTO `litemall_region` VALUES (1691, 179, '禹城市', 3, 371482);
INSERT INTO `litemall_region` VALUES (1692, 180, '东昌府区', 3, 371502);
INSERT INTO `litemall_region` VALUES (1693, 180, '阳谷县', 3, 371521);
INSERT INTO `litemall_region` VALUES (1694, 180, '莘县', 3, 371522);
INSERT INTO `litemall_region` VALUES (1695, 180, '茌平县', 3, 371523);
INSERT INTO `litemall_region` VALUES (1696, 180, '东阿县', 3, 371524);
INSERT INTO `litemall_region` VALUES (1697, 180, '冠县', 3, 371525);
INSERT INTO `litemall_region` VALUES (1698, 180, '高唐县', 3, 371526);
INSERT INTO `litemall_region` VALUES (1699, 180, '临清市', 3, 371581);
INSERT INTO `litemall_region` VALUES (1700, 181, '滨城区', 3, 371602);
INSERT INTO `litemall_region` VALUES (1701, 181, '沾化区', 3, 371603);
INSERT INTO `litemall_region` VALUES (1702, 181, '惠民县', 3, 371621);
INSERT INTO `litemall_region` VALUES (1703, 181, '阳信县', 3, 371622);
INSERT INTO `litemall_region` VALUES (1704, 181, '无棣县', 3, 371623);
INSERT INTO `litemall_region` VALUES (1705, 181, '博兴县', 3, 371625);
INSERT INTO `litemall_region` VALUES (1706, 181, '邹平县', 3, 371626);
INSERT INTO `litemall_region` VALUES (1707, 182, '牡丹区', 3, 371702);
INSERT INTO `litemall_region` VALUES (1708, 182, '定陶区', 3, 371703);
INSERT INTO `litemall_region` VALUES (1709, 182, '曹县', 3, 371721);
INSERT INTO `litemall_region` VALUES (1710, 182, '单县', 3, 371722);
INSERT INTO `litemall_region` VALUES (1711, 182, '成武县', 3, 371723);
INSERT INTO `litemall_region` VALUES (1712, 182, '巨野县', 3, 371724);
INSERT INTO `litemall_region` VALUES (1713, 182, '郓城县', 3, 371725);
INSERT INTO `litemall_region` VALUES (1714, 182, '鄄城县', 3, 371726);
INSERT INTO `litemall_region` VALUES (1715, 182, '东明县', 3, 371728);
INSERT INTO `litemall_region` VALUES (1716, 183, '中原区', 3, 410102);
INSERT INTO `litemall_region` VALUES (1717, 183, '二七区', 3, 410103);
INSERT INTO `litemall_region` VALUES (1718, 183, '管城回族区', 3, 410104);
INSERT INTO `litemall_region` VALUES (1719, 183, '金水区', 3, 410105);
INSERT INTO `litemall_region` VALUES (1720, 183, '上街区', 3, 410106);
INSERT INTO `litemall_region` VALUES (1721, 183, '惠济区', 3, 410108);
INSERT INTO `litemall_region` VALUES (1722, 183, '中牟县', 3, 410122);
INSERT INTO `litemall_region` VALUES (1723, 183, '巩义市', 3, 410181);
INSERT INTO `litemall_region` VALUES (1724, 183, '荥阳市', 3, 410182);
INSERT INTO `litemall_region` VALUES (1725, 183, '新密市', 3, 410183);
INSERT INTO `litemall_region` VALUES (1726, 183, '新郑市', 3, 410184);
INSERT INTO `litemall_region` VALUES (1727, 183, '登封市', 3, 410185);
INSERT INTO `litemall_region` VALUES (1728, 184, '龙亭区', 3, 410202);
INSERT INTO `litemall_region` VALUES (1729, 184, '顺河回族区', 3, 410203);
INSERT INTO `litemall_region` VALUES (1730, 184, '鼓楼区', 3, 410204);
INSERT INTO `litemall_region` VALUES (1731, 184, '禹王台区', 3, 410205);
INSERT INTO `litemall_region` VALUES (1732, 184, '金明区', 3, 410211);
INSERT INTO `litemall_region` VALUES (1733, 184, '祥符区', 3, 410212);
INSERT INTO `litemall_region` VALUES (1734, 184, '杞县', 3, 410221);
INSERT INTO `litemall_region` VALUES (1735, 184, '通许县', 3, 410222);
INSERT INTO `litemall_region` VALUES (1736, 184, '尉氏县', 3, 410223);
INSERT INTO `litemall_region` VALUES (1737, 184, '兰考县', 3, 410225);
INSERT INTO `litemall_region` VALUES (1738, 185, '老城区', 3, 410302);
INSERT INTO `litemall_region` VALUES (1739, 185, '西工区', 3, 410303);
INSERT INTO `litemall_region` VALUES (1740, 185, '瀍河回族区', 3, 410304);
INSERT INTO `litemall_region` VALUES (1741, 185, '涧西区', 3, 410305);
INSERT INTO `litemall_region` VALUES (1742, 185, '吉利区', 3, 410306);
INSERT INTO `litemall_region` VALUES (1743, 185, '洛龙区', 3, 410311);
INSERT INTO `litemall_region` VALUES (1744, 185, '孟津县', 3, 410322);
INSERT INTO `litemall_region` VALUES (1745, 185, '新安县', 3, 410323);
INSERT INTO `litemall_region` VALUES (1746, 185, '栾川县', 3, 410324);
INSERT INTO `litemall_region` VALUES (1747, 185, '嵩县', 3, 410325);
INSERT INTO `litemall_region` VALUES (1748, 185, '汝阳县', 3, 410326);
INSERT INTO `litemall_region` VALUES (1749, 185, '宜阳县', 3, 410327);
INSERT INTO `litemall_region` VALUES (1750, 185, '洛宁县', 3, 410328);
INSERT INTO `litemall_region` VALUES (1751, 185, '伊川县', 3, 410329);
INSERT INTO `litemall_region` VALUES (1752, 185, '偃师市', 3, 410381);
INSERT INTO `litemall_region` VALUES (1753, 186, '新华区', 3, 410402);
INSERT INTO `litemall_region` VALUES (1754, 186, '卫东区', 3, 410403);
INSERT INTO `litemall_region` VALUES (1755, 186, '石龙区', 3, 410404);
INSERT INTO `litemall_region` VALUES (1756, 186, '湛河区', 3, 410411);
INSERT INTO `litemall_region` VALUES (1757, 186, '宝丰县', 3, 410421);
INSERT INTO `litemall_region` VALUES (1758, 186, '叶县', 3, 410422);
INSERT INTO `litemall_region` VALUES (1759, 186, '鲁山县', 3, 410423);
INSERT INTO `litemall_region` VALUES (1760, 186, '郏县', 3, 410425);
INSERT INTO `litemall_region` VALUES (1761, 186, '舞钢市', 3, 410481);
INSERT INTO `litemall_region` VALUES (1762, 186, '汝州市', 3, 410482);
INSERT INTO `litemall_region` VALUES (1763, 187, '文峰区', 3, 410502);
INSERT INTO `litemall_region` VALUES (1764, 187, '北关区', 3, 410503);
INSERT INTO `litemall_region` VALUES (1765, 187, '殷都区', 3, 410505);
INSERT INTO `litemall_region` VALUES (1766, 187, '龙安区', 3, 410506);
INSERT INTO `litemall_region` VALUES (1767, 187, '安阳县', 3, 410522);
INSERT INTO `litemall_region` VALUES (1768, 187, '汤阴县', 3, 410523);
INSERT INTO `litemall_region` VALUES (1769, 187, '滑县', 3, 410526);
INSERT INTO `litemall_region` VALUES (1770, 187, '内黄县', 3, 410527);
INSERT INTO `litemall_region` VALUES (1771, 187, '林州市', 3, 410581);
INSERT INTO `litemall_region` VALUES (1772, 188, '鹤山区', 3, 410602);
INSERT INTO `litemall_region` VALUES (1773, 188, '山城区', 3, 410603);
INSERT INTO `litemall_region` VALUES (1774, 188, '淇滨区', 3, 410611);
INSERT INTO `litemall_region` VALUES (1775, 188, '浚县', 3, 410621);
INSERT INTO `litemall_region` VALUES (1776, 188, '淇县', 3, 410622);
INSERT INTO `litemall_region` VALUES (1777, 189, '红旗区', 3, 410702);
INSERT INTO `litemall_region` VALUES (1778, 189, '卫滨区', 3, 410703);
INSERT INTO `litemall_region` VALUES (1779, 189, '凤泉区', 3, 410704);
INSERT INTO `litemall_region` VALUES (1780, 189, '牧野区', 3, 410711);
INSERT INTO `litemall_region` VALUES (1781, 189, '新乡县', 3, 410721);
INSERT INTO `litemall_region` VALUES (1782, 189, '获嘉县', 3, 410724);
INSERT INTO `litemall_region` VALUES (1783, 189, '原阳县', 3, 410725);
INSERT INTO `litemall_region` VALUES (1784, 189, '延津县', 3, 410726);
INSERT INTO `litemall_region` VALUES (1785, 189, '封丘县', 3, 410727);
INSERT INTO `litemall_region` VALUES (1786, 189, '长垣县', 3, 410728);
INSERT INTO `litemall_region` VALUES (1787, 189, '卫辉市', 3, 410781);
INSERT INTO `litemall_region` VALUES (1788, 189, '辉县市', 3, 410782);
INSERT INTO `litemall_region` VALUES (1789, 190, '解放区', 3, 410802);
INSERT INTO `litemall_region` VALUES (1790, 190, '中站区', 3, 410803);
INSERT INTO `litemall_region` VALUES (1791, 190, '马村区', 3, 410804);
INSERT INTO `litemall_region` VALUES (1792, 190, '山阳区', 3, 410811);
INSERT INTO `litemall_region` VALUES (1793, 190, '修武县', 3, 410821);
INSERT INTO `litemall_region` VALUES (1794, 190, '博爱县', 3, 410822);
INSERT INTO `litemall_region` VALUES (1795, 190, '武陟县', 3, 410823);
INSERT INTO `litemall_region` VALUES (1796, 190, '温县', 3, 410825);
INSERT INTO `litemall_region` VALUES (1797, 190, '沁阳市', 3, 410882);
INSERT INTO `litemall_region` VALUES (1798, 190, '孟州市', 3, 410883);
INSERT INTO `litemall_region` VALUES (1799, 191, '华龙区', 3, 410902);
INSERT INTO `litemall_region` VALUES (1800, 191, '清丰县', 3, 410922);
INSERT INTO `litemall_region` VALUES (1801, 191, '南乐县', 3, 410923);
INSERT INTO `litemall_region` VALUES (1802, 191, '范县', 3, 410926);
INSERT INTO `litemall_region` VALUES (1803, 191, '台前县', 3, 410927);
INSERT INTO `litemall_region` VALUES (1804, 191, '濮阳县', 3, 410928);
INSERT INTO `litemall_region` VALUES (1805, 192, '魏都区', 3, 411002);
INSERT INTO `litemall_region` VALUES (1806, 192, '许昌县', 3, 411023);
INSERT INTO `litemall_region` VALUES (1807, 192, '鄢陵县', 3, 411024);
INSERT INTO `litemall_region` VALUES (1808, 192, '襄城县', 3, 411025);
INSERT INTO `litemall_region` VALUES (1809, 192, '禹州市', 3, 411081);
INSERT INTO `litemall_region` VALUES (1810, 192, '长葛市', 3, 411082);
INSERT INTO `litemall_region` VALUES (1811, 193, '源汇区', 3, 411102);
INSERT INTO `litemall_region` VALUES (1812, 193, '郾城区', 3, 411103);
INSERT INTO `litemall_region` VALUES (1813, 193, '召陵区', 3, 411104);
INSERT INTO `litemall_region` VALUES (1814, 193, '舞阳县', 3, 411121);
INSERT INTO `litemall_region` VALUES (1815, 193, '临颍县', 3, 411122);
INSERT INTO `litemall_region` VALUES (1816, 194, '湖滨区', 3, 411202);
INSERT INTO `litemall_region` VALUES (1817, 194, '陕州区', 3, 411203);
INSERT INTO `litemall_region` VALUES (1818, 194, '渑池县', 3, 411221);
INSERT INTO `litemall_region` VALUES (1819, 194, '卢氏县', 3, 411224);
INSERT INTO `litemall_region` VALUES (1820, 194, '义马市', 3, 411281);
INSERT INTO `litemall_region` VALUES (1821, 194, '灵宝市', 3, 411282);
INSERT INTO `litemall_region` VALUES (1822, 195, '宛城区', 3, 411302);
INSERT INTO `litemall_region` VALUES (1823, 195, '卧龙区', 3, 411303);
INSERT INTO `litemall_region` VALUES (1824, 195, '南召县', 3, 411321);
INSERT INTO `litemall_region` VALUES (1825, 195, '方城县', 3, 411322);
INSERT INTO `litemall_region` VALUES (1826, 195, '西峡县', 3, 411323);
INSERT INTO `litemall_region` VALUES (1827, 195, '镇平县', 3, 411324);
INSERT INTO `litemall_region` VALUES (1828, 195, '内乡县', 3, 411325);
INSERT INTO `litemall_region` VALUES (1829, 195, '淅川县', 3, 411326);
INSERT INTO `litemall_region` VALUES (1830, 195, '社旗县', 3, 411327);
INSERT INTO `litemall_region` VALUES (1831, 195, '唐河县', 3, 411328);
INSERT INTO `litemall_region` VALUES (1832, 195, '新野县', 3, 411329);
INSERT INTO `litemall_region` VALUES (1833, 195, '桐柏县', 3, 411330);
INSERT INTO `litemall_region` VALUES (1834, 195, '邓州市', 3, 411381);
INSERT INTO `litemall_region` VALUES (1835, 196, '梁园区', 3, 411402);
INSERT INTO `litemall_region` VALUES (1836, 196, '睢阳区', 3, 411403);
INSERT INTO `litemall_region` VALUES (1837, 196, '民权县', 3, 411421);
INSERT INTO `litemall_region` VALUES (1838, 196, '睢县', 3, 411422);
INSERT INTO `litemall_region` VALUES (1839, 196, '宁陵县', 3, 411423);
INSERT INTO `litemall_region` VALUES (1840, 196, '柘城县', 3, 411424);
INSERT INTO `litemall_region` VALUES (1841, 196, '虞城县', 3, 411425);
INSERT INTO `litemall_region` VALUES (1842, 196, '夏邑县', 3, 411426);
INSERT INTO `litemall_region` VALUES (1843, 196, '永城市', 3, 411481);
INSERT INTO `litemall_region` VALUES (1844, 197, '浉河区', 3, 411502);
INSERT INTO `litemall_region` VALUES (1845, 197, '平桥区', 3, 411503);
INSERT INTO `litemall_region` VALUES (1846, 197, '罗山县', 3, 411521);
INSERT INTO `litemall_region` VALUES (1847, 197, '光山县', 3, 411522);
INSERT INTO `litemall_region` VALUES (1848, 197, '新县', 3, 411523);
INSERT INTO `litemall_region` VALUES (1849, 197, '商城县', 3, 411524);
INSERT INTO `litemall_region` VALUES (1850, 197, '固始县', 3, 411525);
INSERT INTO `litemall_region` VALUES (1851, 197, '潢川县', 3, 411526);
INSERT INTO `litemall_region` VALUES (1852, 197, '淮滨县', 3, 411527);
INSERT INTO `litemall_region` VALUES (1853, 197, '息县', 3, 411528);
INSERT INTO `litemall_region` VALUES (1854, 198, '川汇区', 3, 411602);
INSERT INTO `litemall_region` VALUES (1855, 198, '扶沟县', 3, 411621);
INSERT INTO `litemall_region` VALUES (1856, 198, '西华县', 3, 411622);
INSERT INTO `litemall_region` VALUES (1857, 198, '商水县', 3, 411623);
INSERT INTO `litemall_region` VALUES (1858, 198, '沈丘县', 3, 411624);
INSERT INTO `litemall_region` VALUES (1859, 198, '郸城县', 3, 411625);
INSERT INTO `litemall_region` VALUES (1860, 198, '淮阳县', 3, 411626);
INSERT INTO `litemall_region` VALUES (1861, 198, '太康县', 3, 411627);
INSERT INTO `litemall_region` VALUES (1862, 198, '鹿邑县', 3, 411628);
INSERT INTO `litemall_region` VALUES (1863, 198, '项城市', 3, 411681);
INSERT INTO `litemall_region` VALUES (1864, 199, '驿城区', 3, 411702);
INSERT INTO `litemall_region` VALUES (1865, 199, '西平县', 3, 411721);
INSERT INTO `litemall_region` VALUES (1866, 199, '上蔡县', 3, 411722);
INSERT INTO `litemall_region` VALUES (1867, 199, '平舆县', 3, 411723);
INSERT INTO `litemall_region` VALUES (1868, 199, '正阳县', 3, 411724);
INSERT INTO `litemall_region` VALUES (1869, 199, '确山县', 3, 411725);
INSERT INTO `litemall_region` VALUES (1870, 199, '泌阳县', 3, 411726);
INSERT INTO `litemall_region` VALUES (1871, 199, '汝南县', 3, 411727);
INSERT INTO `litemall_region` VALUES (1872, 199, '遂平县', 3, 411728);
INSERT INTO `litemall_region` VALUES (1873, 199, '新蔡县', 3, 411729);
INSERT INTO `litemall_region` VALUES (1874, 200, '济源市', 3, 419001);
INSERT INTO `litemall_region` VALUES (1875, 201, '江岸区', 3, 420102);
INSERT INTO `litemall_region` VALUES (1876, 201, '江汉区', 3, 420103);
INSERT INTO `litemall_region` VALUES (1877, 201, '硚口区', 3, 420104);
INSERT INTO `litemall_region` VALUES (1878, 201, '汉阳区', 3, 420105);
INSERT INTO `litemall_region` VALUES (1879, 201, '武昌区', 3, 420106);
INSERT INTO `litemall_region` VALUES (1880, 201, '青山区', 3, 420107);
INSERT INTO `litemall_region` VALUES (1881, 201, '洪山区', 3, 420111);
INSERT INTO `litemall_region` VALUES (1882, 201, '东西湖区', 3, 420112);
INSERT INTO `litemall_region` VALUES (1883, 201, '汉南区', 3, 420113);
INSERT INTO `litemall_region` VALUES (1884, 201, '蔡甸区', 3, 420114);
INSERT INTO `litemall_region` VALUES (1885, 201, '江夏区', 3, 420115);
INSERT INTO `litemall_region` VALUES (1886, 201, '黄陂区', 3, 420116);
INSERT INTO `litemall_region` VALUES (1887, 201, '新洲区', 3, 420117);
INSERT INTO `litemall_region` VALUES (1888, 202, '黄石港区', 3, 420202);
INSERT INTO `litemall_region` VALUES (1889, 202, '西塞山区', 3, 420203);
INSERT INTO `litemall_region` VALUES (1890, 202, '下陆区', 3, 420204);
INSERT INTO `litemall_region` VALUES (1891, 202, '铁山区', 3, 420205);
INSERT INTO `litemall_region` VALUES (1892, 202, '阳新县', 3, 420222);
INSERT INTO `litemall_region` VALUES (1893, 202, '大冶市', 3, 420281);
INSERT INTO `litemall_region` VALUES (1894, 203, '茅箭区', 3, 420302);
INSERT INTO `litemall_region` VALUES (1895, 203, '张湾区', 3, 420303);
INSERT INTO `litemall_region` VALUES (1896, 203, '郧阳区', 3, 420304);
INSERT INTO `litemall_region` VALUES (1897, 203, '郧西县', 3, 420322);
INSERT INTO `litemall_region` VALUES (1898, 203, '竹山县', 3, 420323);
INSERT INTO `litemall_region` VALUES (1899, 203, '竹溪县', 3, 420324);
INSERT INTO `litemall_region` VALUES (1900, 203, '房县', 3, 420325);
INSERT INTO `litemall_region` VALUES (1901, 203, '丹江口市', 3, 420381);
INSERT INTO `litemall_region` VALUES (1902, 204, '西陵区', 3, 420502);
INSERT INTO `litemall_region` VALUES (1903, 204, '伍家岗区', 3, 420503);
INSERT INTO `litemall_region` VALUES (1904, 204, '点军区', 3, 420504);
INSERT INTO `litemall_region` VALUES (1905, 204, '猇亭区', 3, 420505);
INSERT INTO `litemall_region` VALUES (1906, 204, '夷陵区', 3, 420506);
INSERT INTO `litemall_region` VALUES (1907, 204, '远安县', 3, 420525);
INSERT INTO `litemall_region` VALUES (1908, 204, '兴山县', 3, 420526);
INSERT INTO `litemall_region` VALUES (1909, 204, '秭归县', 3, 420527);
INSERT INTO `litemall_region` VALUES (1910, 204, '长阳土家族自治县', 3, 420528);
INSERT INTO `litemall_region` VALUES (1911, 204, '五峰土家族自治县', 3, 420529);
INSERT INTO `litemall_region` VALUES (1912, 204, '宜都市', 3, 420581);
INSERT INTO `litemall_region` VALUES (1913, 204, '当阳市', 3, 420582);
INSERT INTO `litemall_region` VALUES (1914, 204, '枝江市', 3, 420583);
INSERT INTO `litemall_region` VALUES (1915, 205, '襄城区', 3, 420602);
INSERT INTO `litemall_region` VALUES (1916, 205, '樊城区', 3, 420606);
INSERT INTO `litemall_region` VALUES (1917, 205, '襄州区', 3, 420607);
INSERT INTO `litemall_region` VALUES (1918, 205, '南漳县', 3, 420624);
INSERT INTO `litemall_region` VALUES (1919, 205, '谷城县', 3, 420625);
INSERT INTO `litemall_region` VALUES (1920, 205, '保康县', 3, 420626);
INSERT INTO `litemall_region` VALUES (1921, 205, '老河口市', 3, 420682);
INSERT INTO `litemall_region` VALUES (1922, 205, '枣阳市', 3, 420683);
INSERT INTO `litemall_region` VALUES (1923, 205, '宜城市', 3, 420684);
INSERT INTO `litemall_region` VALUES (1924, 206, '梁子湖区', 3, 420702);
INSERT INTO `litemall_region` VALUES (1925, 206, '华容区', 3, 420703);
INSERT INTO `litemall_region` VALUES (1926, 206, '鄂城区', 3, 420704);
INSERT INTO `litemall_region` VALUES (1927, 207, '东宝区', 3, 420802);
INSERT INTO `litemall_region` VALUES (1928, 207, '掇刀区', 3, 420804);
INSERT INTO `litemall_region` VALUES (1929, 207, '京山县', 3, 420821);
INSERT INTO `litemall_region` VALUES (1930, 207, '沙洋县', 3, 420822);
INSERT INTO `litemall_region` VALUES (1931, 207, '钟祥市', 3, 420881);
INSERT INTO `litemall_region` VALUES (1932, 208, '孝南区', 3, 420902);
INSERT INTO `litemall_region` VALUES (1933, 208, '孝昌县', 3, 420921);
INSERT INTO `litemall_region` VALUES (1934, 208, '大悟县', 3, 420922);
INSERT INTO `litemall_region` VALUES (1935, 208, '云梦县', 3, 420923);
INSERT INTO `litemall_region` VALUES (1936, 208, '应城市', 3, 420981);
INSERT INTO `litemall_region` VALUES (1937, 208, '安陆市', 3, 420982);
INSERT INTO `litemall_region` VALUES (1938, 208, '汉川市', 3, 420984);
INSERT INTO `litemall_region` VALUES (1939, 209, '沙市区', 3, 421002);
INSERT INTO `litemall_region` VALUES (1940, 209, '荆州区', 3, 421003);
INSERT INTO `litemall_region` VALUES (1941, 209, '公安县', 3, 421022);
INSERT INTO `litemall_region` VALUES (1942, 209, '监利县', 3, 421023);
INSERT INTO `litemall_region` VALUES (1943, 209, '江陵县', 3, 421024);
INSERT INTO `litemall_region` VALUES (1944, 209, '石首市', 3, 421081);
INSERT INTO `litemall_region` VALUES (1945, 209, '洪湖市', 3, 421083);
INSERT INTO `litemall_region` VALUES (1946, 209, '松滋市', 3, 421087);
INSERT INTO `litemall_region` VALUES (1947, 210, '黄州区', 3, 421102);
INSERT INTO `litemall_region` VALUES (1948, 210, '团风县', 3, 421121);
INSERT INTO `litemall_region` VALUES (1949, 210, '红安县', 3, 421122);
INSERT INTO `litemall_region` VALUES (1950, 210, '罗田县', 3, 421123);
INSERT INTO `litemall_region` VALUES (1951, 210, '英山县', 3, 421124);
INSERT INTO `litemall_region` VALUES (1952, 210, '浠水县', 3, 421125);
INSERT INTO `litemall_region` VALUES (1953, 210, '蕲春县', 3, 421126);
INSERT INTO `litemall_region` VALUES (1954, 210, '黄梅县', 3, 421127);
INSERT INTO `litemall_region` VALUES (1955, 210, '麻城市', 3, 421181);
INSERT INTO `litemall_region` VALUES (1956, 210, '武穴市', 3, 421182);
INSERT INTO `litemall_region` VALUES (1957, 211, '咸安区', 3, 421202);
INSERT INTO `litemall_region` VALUES (1958, 211, '嘉鱼县', 3, 421221);
INSERT INTO `litemall_region` VALUES (1959, 211, '通城县', 3, 421222);
INSERT INTO `litemall_region` VALUES (1960, 211, '崇阳县', 3, 421223);
INSERT INTO `litemall_region` VALUES (1961, 211, '通山县', 3, 421224);
INSERT INTO `litemall_region` VALUES (1962, 211, '赤壁市', 3, 421281);
INSERT INTO `litemall_region` VALUES (1963, 212, '曾都区', 3, 421303);
INSERT INTO `litemall_region` VALUES (1964, 212, '随县', 3, 421321);
INSERT INTO `litemall_region` VALUES (1965, 212, '广水市', 3, 421381);
INSERT INTO `litemall_region` VALUES (1966, 213, '恩施市', 3, 422801);
INSERT INTO `litemall_region` VALUES (1967, 213, '利川市', 3, 422802);
INSERT INTO `litemall_region` VALUES (1968, 213, '建始县', 3, 422822);
INSERT INTO `litemall_region` VALUES (1969, 213, '巴东县', 3, 422823);
INSERT INTO `litemall_region` VALUES (1970, 213, '宣恩县', 3, 422825);
INSERT INTO `litemall_region` VALUES (1971, 213, '咸丰县', 3, 422826);
INSERT INTO `litemall_region` VALUES (1972, 213, '来凤县', 3, 422827);
INSERT INTO `litemall_region` VALUES (1973, 213, '鹤峰县', 3, 422828);
INSERT INTO `litemall_region` VALUES (1974, 214, '仙桃市', 3, 429004);
INSERT INTO `litemall_region` VALUES (1975, 214, '潜江市', 3, 429005);
INSERT INTO `litemall_region` VALUES (1976, 214, '天门市', 3, 429006);
INSERT INTO `litemall_region` VALUES (1977, 214, '神农架林区', 3, 429021);
INSERT INTO `litemall_region` VALUES (1978, 215, '芙蓉区', 3, 430102);
INSERT INTO `litemall_region` VALUES (1979, 215, '天心区', 3, 430103);
INSERT INTO `litemall_region` VALUES (1980, 215, '岳麓区', 3, 430104);
INSERT INTO `litemall_region` VALUES (1981, 215, '开福区', 3, 430105);
INSERT INTO `litemall_region` VALUES (1982, 215, '雨花区', 3, 430111);
INSERT INTO `litemall_region` VALUES (1983, 215, '望城区', 3, 430112);
INSERT INTO `litemall_region` VALUES (1984, 215, '长沙县', 3, 430121);
INSERT INTO `litemall_region` VALUES (1985, 215, '宁乡县', 3, 430124);
INSERT INTO `litemall_region` VALUES (1986, 215, '浏阳市', 3, 430181);
INSERT INTO `litemall_region` VALUES (1987, 216, '荷塘区', 3, 430202);
INSERT INTO `litemall_region` VALUES (1988, 216, '芦淞区', 3, 430203);
INSERT INTO `litemall_region` VALUES (1989, 216, '石峰区', 3, 430204);
INSERT INTO `litemall_region` VALUES (1990, 216, '天元区', 3, 430211);
INSERT INTO `litemall_region` VALUES (1991, 216, '株洲县', 3, 430221);
INSERT INTO `litemall_region` VALUES (1992, 216, '攸县', 3, 430223);
INSERT INTO `litemall_region` VALUES (1993, 216, '茶陵县', 3, 430224);
INSERT INTO `litemall_region` VALUES (1994, 216, '炎陵县', 3, 430225);
INSERT INTO `litemall_region` VALUES (1995, 216, '醴陵市', 3, 430281);
INSERT INTO `litemall_region` VALUES (1996, 217, '雨湖区', 3, 430302);
INSERT INTO `litemall_region` VALUES (1997, 217, '岳塘区', 3, 430304);
INSERT INTO `litemall_region` VALUES (1998, 217, '湘潭县', 3, 430321);
INSERT INTO `litemall_region` VALUES (1999, 217, '湘乡市', 3, 430381);
INSERT INTO `litemall_region` VALUES (2000, 217, '韶山市', 3, 430382);
INSERT INTO `litemall_region` VALUES (2001, 218, '珠晖区', 3, 430405);
INSERT INTO `litemall_region` VALUES (2002, 218, '雁峰区', 3, 430406);
INSERT INTO `litemall_region` VALUES (2003, 218, '石鼓区', 3, 430407);
INSERT INTO `litemall_region` VALUES (2004, 218, '蒸湘区', 3, 430408);
INSERT INTO `litemall_region` VALUES (2005, 218, '南岳区', 3, 430412);
INSERT INTO `litemall_region` VALUES (2006, 218, '衡阳县', 3, 430421);
INSERT INTO `litemall_region` VALUES (2007, 218, '衡南县', 3, 430422);
INSERT INTO `litemall_region` VALUES (2008, 218, '衡山县', 3, 430423);
INSERT INTO `litemall_region` VALUES (2009, 218, '衡东县', 3, 430424);
INSERT INTO `litemall_region` VALUES (2010, 218, '祁东县', 3, 430426);
INSERT INTO `litemall_region` VALUES (2011, 218, '耒阳市', 3, 430481);
INSERT INTO `litemall_region` VALUES (2012, 218, '常宁市', 3, 430482);
INSERT INTO `litemall_region` VALUES (2013, 219, '双清区', 3, 430502);
INSERT INTO `litemall_region` VALUES (2014, 219, '大祥区', 3, 430503);
INSERT INTO `litemall_region` VALUES (2015, 219, '北塔区', 3, 430511);
INSERT INTO `litemall_region` VALUES (2016, 219, '邵东县', 3, 430521);
INSERT INTO `litemall_region` VALUES (2017, 219, '新邵县', 3, 430522);
INSERT INTO `litemall_region` VALUES (2018, 219, '邵阳县', 3, 430523);
INSERT INTO `litemall_region` VALUES (2019, 219, '隆回县', 3, 430524);
INSERT INTO `litemall_region` VALUES (2020, 219, '洞口县', 3, 430525);
INSERT INTO `litemall_region` VALUES (2021, 219, '绥宁县', 3, 430527);
INSERT INTO `litemall_region` VALUES (2022, 219, '新宁县', 3, 430528);
INSERT INTO `litemall_region` VALUES (2023, 219, '城步苗族自治县', 3, 430529);
INSERT INTO `litemall_region` VALUES (2024, 219, '武冈市', 3, 430581);
INSERT INTO `litemall_region` VALUES (2025, 220, '岳阳楼区', 3, 430602);
INSERT INTO `litemall_region` VALUES (2026, 220, '云溪区', 3, 430603);
INSERT INTO `litemall_region` VALUES (2027, 220, '君山区', 3, 430611);
INSERT INTO `litemall_region` VALUES (2028, 220, '岳阳县', 3, 430621);
INSERT INTO `litemall_region` VALUES (2029, 220, '华容县', 3, 430623);
INSERT INTO `litemall_region` VALUES (2030, 220, '湘阴县', 3, 430624);
INSERT INTO `litemall_region` VALUES (2031, 220, '平江县', 3, 430626);
INSERT INTO `litemall_region` VALUES (2032, 220, '汨罗市', 3, 430681);
INSERT INTO `litemall_region` VALUES (2033, 220, '临湘市', 3, 430682);
INSERT INTO `litemall_region` VALUES (2034, 221, '武陵区', 3, 430702);
INSERT INTO `litemall_region` VALUES (2035, 221, '鼎城区', 3, 430703);
INSERT INTO `litemall_region` VALUES (2036, 221, '安乡县', 3, 430721);
INSERT INTO `litemall_region` VALUES (2037, 221, '汉寿县', 3, 430722);
INSERT INTO `litemall_region` VALUES (2038, 221, '澧县', 3, 430723);
INSERT INTO `litemall_region` VALUES (2039, 221, '临澧县', 3, 430724);
INSERT INTO `litemall_region` VALUES (2040, 221, '桃源县', 3, 430725);
INSERT INTO `litemall_region` VALUES (2041, 221, '石门县', 3, 430726);
INSERT INTO `litemall_region` VALUES (2042, 221, '津市市', 3, 430781);
INSERT INTO `litemall_region` VALUES (2043, 222, '永定区', 3, 430802);
INSERT INTO `litemall_region` VALUES (2044, 222, '武陵源区', 3, 430811);
INSERT INTO `litemall_region` VALUES (2045, 222, '慈利县', 3, 430821);
INSERT INTO `litemall_region` VALUES (2046, 222, '桑植县', 3, 430822);
INSERT INTO `litemall_region` VALUES (2047, 223, '资阳区', 3, 430902);
INSERT INTO `litemall_region` VALUES (2048, 223, '赫山区', 3, 430903);
INSERT INTO `litemall_region` VALUES (2049, 223, '南县', 3, 430921);
INSERT INTO `litemall_region` VALUES (2050, 223, '桃江县', 3, 430922);
INSERT INTO `litemall_region` VALUES (2051, 223, '安化县', 3, 430923);
INSERT INTO `litemall_region` VALUES (2052, 223, '沅江市', 3, 430981);
INSERT INTO `litemall_region` VALUES (2053, 224, '北湖区', 3, 431002);
INSERT INTO `litemall_region` VALUES (2054, 224, '苏仙区', 3, 431003);
INSERT INTO `litemall_region` VALUES (2055, 224, '桂阳县', 3, 431021);
INSERT INTO `litemall_region` VALUES (2056, 224, '宜章县', 3, 431022);
INSERT INTO `litemall_region` VALUES (2057, 224, '永兴县', 3, 431023);
INSERT INTO `litemall_region` VALUES (2058, 224, '嘉禾县', 3, 431024);
INSERT INTO `litemall_region` VALUES (2059, 224, '临武县', 3, 431025);
INSERT INTO `litemall_region` VALUES (2060, 224, '汝城县', 3, 431026);
INSERT INTO `litemall_region` VALUES (2061, 224, '桂东县', 3, 431027);
INSERT INTO `litemall_region` VALUES (2062, 224, '安仁县', 3, 431028);
INSERT INTO `litemall_region` VALUES (2063, 224, '资兴市', 3, 431081);
INSERT INTO `litemall_region` VALUES (2064, 225, '零陵区', 3, 431102);
INSERT INTO `litemall_region` VALUES (2065, 225, '冷水滩区', 3, 431103);
INSERT INTO `litemall_region` VALUES (2066, 225, '祁阳县', 3, 431121);
INSERT INTO `litemall_region` VALUES (2067, 225, '东安县', 3, 431122);
INSERT INTO `litemall_region` VALUES (2068, 225, '双牌县', 3, 431123);
INSERT INTO `litemall_region` VALUES (2069, 225, '道县', 3, 431124);
INSERT INTO `litemall_region` VALUES (2070, 225, '江永县', 3, 431125);
INSERT INTO `litemall_region` VALUES (2071, 225, '宁远县', 3, 431126);
INSERT INTO `litemall_region` VALUES (2072, 225, '蓝山县', 3, 431127);
INSERT INTO `litemall_region` VALUES (2073, 225, '新田县', 3, 431128);
INSERT INTO `litemall_region` VALUES (2074, 225, '江华瑶族自治县', 3, 431129);
INSERT INTO `litemall_region` VALUES (2075, 226, '鹤城区', 3, 431202);
INSERT INTO `litemall_region` VALUES (2076, 226, '中方县', 3, 431221);
INSERT INTO `litemall_region` VALUES (2077, 226, '沅陵县', 3, 431222);
INSERT INTO `litemall_region` VALUES (2078, 226, '辰溪县', 3, 431223);
INSERT INTO `litemall_region` VALUES (2079, 226, '溆浦县', 3, 431224);
INSERT INTO `litemall_region` VALUES (2080, 226, '会同县', 3, 431225);
INSERT INTO `litemall_region` VALUES (2081, 226, '麻阳苗族自治县', 3, 431226);
INSERT INTO `litemall_region` VALUES (2082, 226, '新晃侗族自治县', 3, 431227);
INSERT INTO `litemall_region` VALUES (2083, 226, '芷江侗族自治县', 3, 431228);
INSERT INTO `litemall_region` VALUES (2084, 226, '靖州苗族侗族自治县', 3, 431229);
INSERT INTO `litemall_region` VALUES (2085, 226, '通道侗族自治县', 3, 431230);
INSERT INTO `litemall_region` VALUES (2086, 226, '洪江市', 3, 431281);
INSERT INTO `litemall_region` VALUES (2087, 227, '娄星区', 3, 431302);
INSERT INTO `litemall_region` VALUES (2088, 227, '双峰县', 3, 431321);
INSERT INTO `litemall_region` VALUES (2089, 227, '新化县', 3, 431322);
INSERT INTO `litemall_region` VALUES (2090, 227, '冷水江市', 3, 431381);
INSERT INTO `litemall_region` VALUES (2091, 227, '涟源市', 3, 431382);
INSERT INTO `litemall_region` VALUES (2092, 228, '吉首市', 3, 433101);
INSERT INTO `litemall_region` VALUES (2093, 228, '泸溪县', 3, 433122);
INSERT INTO `litemall_region` VALUES (2094, 228, '凤凰县', 3, 433123);
INSERT INTO `litemall_region` VALUES (2095, 228, '花垣县', 3, 433124);
INSERT INTO `litemall_region` VALUES (2096, 228, '保靖县', 3, 433125);
INSERT INTO `litemall_region` VALUES (2097, 228, '古丈县', 3, 433126);
INSERT INTO `litemall_region` VALUES (2098, 228, '永顺县', 3, 433127);
INSERT INTO `litemall_region` VALUES (2099, 228, '龙山县', 3, 433130);
INSERT INTO `litemall_region` VALUES (2100, 229, '荔湾区', 3, 440103);
INSERT INTO `litemall_region` VALUES (2101, 229, '越秀区', 3, 440104);
INSERT INTO `litemall_region` VALUES (2102, 229, '海珠区', 3, 440105);
INSERT INTO `litemall_region` VALUES (2103, 229, '天河区', 3, 440106);
INSERT INTO `litemall_region` VALUES (2104, 229, '白云区', 3, 440111);
INSERT INTO `litemall_region` VALUES (2105, 229, '黄埔区', 3, 440112);
INSERT INTO `litemall_region` VALUES (2106, 229, '番禺区', 3, 440113);
INSERT INTO `litemall_region` VALUES (2107, 229, '花都区', 3, 440114);
INSERT INTO `litemall_region` VALUES (2108, 229, '南沙区', 3, 440115);
INSERT INTO `litemall_region` VALUES (2109, 229, '从化区', 3, 440117);
INSERT INTO `litemall_region` VALUES (2110, 229, '增城区', 3, 440118);
INSERT INTO `litemall_region` VALUES (2111, 230, '武江区', 3, 440203);
INSERT INTO `litemall_region` VALUES (2112, 230, '浈江区', 3, 440204);
INSERT INTO `litemall_region` VALUES (2113, 230, '曲江区', 3, 440205);
INSERT INTO `litemall_region` VALUES (2114, 230, '始兴县', 3, 440222);
INSERT INTO `litemall_region` VALUES (2115, 230, '仁化县', 3, 440224);
INSERT INTO `litemall_region` VALUES (2116, 230, '翁源县', 3, 440229);
INSERT INTO `litemall_region` VALUES (2117, 230, '乳源瑶族自治县', 3, 440232);
INSERT INTO `litemall_region` VALUES (2118, 230, '新丰县', 3, 440233);
INSERT INTO `litemall_region` VALUES (2119, 230, '乐昌市', 3, 440281);
INSERT INTO `litemall_region` VALUES (2120, 230, '南雄市', 3, 440282);
INSERT INTO `litemall_region` VALUES (2121, 231, '罗湖区', 3, 440303);
INSERT INTO `litemall_region` VALUES (2122, 231, '福田区', 3, 440304);
INSERT INTO `litemall_region` VALUES (2123, 231, '南山区', 3, 440305);
INSERT INTO `litemall_region` VALUES (2124, 231, '宝安区', 3, 440306);
INSERT INTO `litemall_region` VALUES (2125, 231, '龙岗区', 3, 440307);
INSERT INTO `litemall_region` VALUES (2126, 231, '盐田区', 3, 440308);
INSERT INTO `litemall_region` VALUES (2127, 232, '香洲区', 3, 440402);
INSERT INTO `litemall_region` VALUES (2128, 232, '斗门区', 3, 440403);
INSERT INTO `litemall_region` VALUES (2129, 232, '金湾区', 3, 440404);
INSERT INTO `litemall_region` VALUES (2130, 233, '龙湖区', 3, 440507);
INSERT INTO `litemall_region` VALUES (2131, 233, '金平区', 3, 440511);
INSERT INTO `litemall_region` VALUES (2132, 233, '濠江区', 3, 440512);
INSERT INTO `litemall_region` VALUES (2133, 233, '潮阳区', 3, 440513);
INSERT INTO `litemall_region` VALUES (2134, 233, '潮南区', 3, 440514);
INSERT INTO `litemall_region` VALUES (2135, 233, '澄海区', 3, 440515);
INSERT INTO `litemall_region` VALUES (2136, 233, '南澳县', 3, 440523);
INSERT INTO `litemall_region` VALUES (2137, 234, '禅城区', 3, 440604);
INSERT INTO `litemall_region` VALUES (2138, 234, '南海区', 3, 440605);
INSERT INTO `litemall_region` VALUES (2139, 234, '顺德区', 3, 440606);
INSERT INTO `litemall_region` VALUES (2140, 234, '三水区', 3, 440607);
INSERT INTO `litemall_region` VALUES (2141, 234, '高明区', 3, 440608);
INSERT INTO `litemall_region` VALUES (2142, 235, '蓬江区', 3, 440703);
INSERT INTO `litemall_region` VALUES (2143, 235, '江海区', 3, 440704);
INSERT INTO `litemall_region` VALUES (2144, 235, '新会区', 3, 440705);
INSERT INTO `litemall_region` VALUES (2145, 235, '台山市', 3, 440781);
INSERT INTO `litemall_region` VALUES (2146, 235, '开平市', 3, 440783);
INSERT INTO `litemall_region` VALUES (2147, 235, '鹤山市', 3, 440784);
INSERT INTO `litemall_region` VALUES (2148, 235, '恩平市', 3, 440785);
INSERT INTO `litemall_region` VALUES (2149, 236, '赤坎区', 3, 440802);
INSERT INTO `litemall_region` VALUES (2150, 236, '霞山区', 3, 440803);
INSERT INTO `litemall_region` VALUES (2151, 236, '坡头区', 3, 440804);
INSERT INTO `litemall_region` VALUES (2152, 236, '麻章区', 3, 440811);
INSERT INTO `litemall_region` VALUES (2153, 236, '遂溪县', 3, 440823);
INSERT INTO `litemall_region` VALUES (2154, 236, '徐闻县', 3, 440825);
INSERT INTO `litemall_region` VALUES (2155, 236, '廉江市', 3, 440881);
INSERT INTO `litemall_region` VALUES (2156, 236, '雷州市', 3, 440882);
INSERT INTO `litemall_region` VALUES (2157, 236, '吴川市', 3, 440883);
INSERT INTO `litemall_region` VALUES (2158, 237, '茂南区', 3, 440902);
INSERT INTO `litemall_region` VALUES (2159, 237, '电白区', 3, 440904);
INSERT INTO `litemall_region` VALUES (2160, 237, '高州市', 3, 440981);
INSERT INTO `litemall_region` VALUES (2161, 237, '化州市', 3, 440982);
INSERT INTO `litemall_region` VALUES (2162, 237, '信宜市', 3, 440983);
INSERT INTO `litemall_region` VALUES (2163, 238, '端州区', 3, 441202);
INSERT INTO `litemall_region` VALUES (2164, 238, '鼎湖区', 3, 441203);
INSERT INTO `litemall_region` VALUES (2165, 238, '高要区', 3, 441204);
INSERT INTO `litemall_region` VALUES (2166, 238, '广宁县', 3, 441223);
INSERT INTO `litemall_region` VALUES (2167, 238, '怀集县', 3, 441224);
INSERT INTO `litemall_region` VALUES (2168, 238, '封开县', 3, 441225);
INSERT INTO `litemall_region` VALUES (2169, 238, '德庆县', 3, 441226);
INSERT INTO `litemall_region` VALUES (2170, 238, '四会市', 3, 441284);
INSERT INTO `litemall_region` VALUES (2171, 239, '惠城区', 3, 441302);
INSERT INTO `litemall_region` VALUES (2172, 239, '惠阳区', 3, 441303);
INSERT INTO `litemall_region` VALUES (2173, 239, '博罗县', 3, 441322);
INSERT INTO `litemall_region` VALUES (2174, 239, '惠东县', 3, 441323);
INSERT INTO `litemall_region` VALUES (2175, 239, '龙门县', 3, 441324);
INSERT INTO `litemall_region` VALUES (2176, 240, '梅江区', 3, 441402);
INSERT INTO `litemall_region` VALUES (2177, 240, '梅县区', 3, 441403);
INSERT INTO `litemall_region` VALUES (2178, 240, '大埔县', 3, 441422);
INSERT INTO `litemall_region` VALUES (2179, 240, '丰顺县', 3, 441423);
INSERT INTO `litemall_region` VALUES (2180, 240, '五华县', 3, 441424);
INSERT INTO `litemall_region` VALUES (2181, 240, '平远县', 3, 441426);
INSERT INTO `litemall_region` VALUES (2182, 240, '蕉岭县', 3, 441427);
INSERT INTO `litemall_region` VALUES (2183, 240, '兴宁市', 3, 441481);
INSERT INTO `litemall_region` VALUES (2184, 241, '城区', 3, 441502);
INSERT INTO `litemall_region` VALUES (2185, 241, '海丰县', 3, 441521);
INSERT INTO `litemall_region` VALUES (2186, 241, '陆河县', 3, 441523);
INSERT INTO `litemall_region` VALUES (2187, 241, '陆丰市', 3, 441581);
INSERT INTO `litemall_region` VALUES (2188, 242, '源城区', 3, 441602);
INSERT INTO `litemall_region` VALUES (2189, 242, '紫金县', 3, 441621);
INSERT INTO `litemall_region` VALUES (2190, 242, '龙川县', 3, 441622);
INSERT INTO `litemall_region` VALUES (2191, 242, '连平县', 3, 441623);
INSERT INTO `litemall_region` VALUES (2192, 242, '和平县', 3, 441624);
INSERT INTO `litemall_region` VALUES (2193, 242, '东源县', 3, 441625);
INSERT INTO `litemall_region` VALUES (2194, 243, '江城区', 3, 441702);
INSERT INTO `litemall_region` VALUES (2195, 243, '阳东区', 3, 441704);
INSERT INTO `litemall_region` VALUES (2196, 243, '阳西县', 3, 441721);
INSERT INTO `litemall_region` VALUES (2197, 243, '阳春市', 3, 441781);
INSERT INTO `litemall_region` VALUES (2198, 244, '清城区', 3, 441802);
INSERT INTO `litemall_region` VALUES (2199, 244, '清新区', 3, 441803);
INSERT INTO `litemall_region` VALUES (2200, 244, '佛冈县', 3, 441821);
INSERT INTO `litemall_region` VALUES (2201, 244, '阳山县', 3, 441823);
INSERT INTO `litemall_region` VALUES (2202, 244, '连山壮族瑶族自治县', 3, 441825);
INSERT INTO `litemall_region` VALUES (2203, 244, '连南瑶族自治县', 3, 441826);
INSERT INTO `litemall_region` VALUES (2204, 244, '英德市', 3, 441881);
INSERT INTO `litemall_region` VALUES (2205, 244, '连州市', 3, 441882);
INSERT INTO `litemall_region` VALUES (2206, 245, '东莞市', 3, 441900);
INSERT INTO `litemall_region` VALUES (2207, 246, '中山市', 3, 442000);
INSERT INTO `litemall_region` VALUES (2208, 247, '湘桥区', 3, 445102);
INSERT INTO `litemall_region` VALUES (2209, 247, '潮安区', 3, 445103);
INSERT INTO `litemall_region` VALUES (2210, 247, '饶平县', 3, 445122);
INSERT INTO `litemall_region` VALUES (2211, 248, '榕城区', 3, 445202);
INSERT INTO `litemall_region` VALUES (2212, 248, '揭东区', 3, 445203);
INSERT INTO `litemall_region` VALUES (2213, 248, '揭西县', 3, 445222);
INSERT INTO `litemall_region` VALUES (2214, 248, '惠来县', 3, 445224);
INSERT INTO `litemall_region` VALUES (2215, 248, '普宁市', 3, 445281);
INSERT INTO `litemall_region` VALUES (2216, 249, '云城区', 3, 445302);
INSERT INTO `litemall_region` VALUES (2217, 249, '云安区', 3, 445303);
INSERT INTO `litemall_region` VALUES (2218, 249, '新兴县', 3, 445321);
INSERT INTO `litemall_region` VALUES (2219, 249, '郁南县', 3, 445322);
INSERT INTO `litemall_region` VALUES (2220, 249, '罗定市', 3, 445381);
INSERT INTO `litemall_region` VALUES (2221, 250, '兴宁区', 3, 450102);
INSERT INTO `litemall_region` VALUES (2222, 250, '青秀区', 3, 450103);
INSERT INTO `litemall_region` VALUES (2223, 250, '江南区', 3, 450105);
INSERT INTO `litemall_region` VALUES (2224, 250, '西乡塘区', 3, 450107);
INSERT INTO `litemall_region` VALUES (2225, 250, '良庆区', 3, 450108);
INSERT INTO `litemall_region` VALUES (2226, 250, '邕宁区', 3, 450109);
INSERT INTO `litemall_region` VALUES (2227, 250, '武鸣区', 3, 450110);
INSERT INTO `litemall_region` VALUES (2228, 250, '隆安县', 3, 450123);
INSERT INTO `litemall_region` VALUES (2229, 250, '马山县', 3, 450124);
INSERT INTO `litemall_region` VALUES (2230, 250, '上林县', 3, 450125);
INSERT INTO `litemall_region` VALUES (2231, 250, '宾阳县', 3, 450126);
INSERT INTO `litemall_region` VALUES (2232, 250, '横县', 3, 450127);
INSERT INTO `litemall_region` VALUES (2233, 251, '城中区', 3, 450202);
INSERT INTO `litemall_region` VALUES (2234, 251, '鱼峰区', 3, 450203);
INSERT INTO `litemall_region` VALUES (2235, 251, '柳南区', 3, 450204);
INSERT INTO `litemall_region` VALUES (2236, 251, '柳北区', 3, 450205);
INSERT INTO `litemall_region` VALUES (2237, 251, '柳江区', 3, 450206);
INSERT INTO `litemall_region` VALUES (2238, 251, '柳城县', 3, 450222);
INSERT INTO `litemall_region` VALUES (2239, 251, '鹿寨县', 3, 450223);
INSERT INTO `litemall_region` VALUES (2240, 251, '融安县', 3, 450224);
INSERT INTO `litemall_region` VALUES (2241, 251, '融水苗族自治县', 3, 450225);
INSERT INTO `litemall_region` VALUES (2242, 251, '三江侗族自治县', 3, 450226);
INSERT INTO `litemall_region` VALUES (2243, 252, '秀峰区', 3, 450302);
INSERT INTO `litemall_region` VALUES (2244, 252, '叠彩区', 3, 450303);
INSERT INTO `litemall_region` VALUES (2245, 252, '象山区', 3, 450304);
INSERT INTO `litemall_region` VALUES (2246, 252, '七星区', 3, 450305);
INSERT INTO `litemall_region` VALUES (2247, 252, '雁山区', 3, 450311);
INSERT INTO `litemall_region` VALUES (2248, 252, '临桂区', 3, 450312);
INSERT INTO `litemall_region` VALUES (2249, 252, '阳朔县', 3, 450321);
INSERT INTO `litemall_region` VALUES (2250, 252, '灵川县', 3, 450323);
INSERT INTO `litemall_region` VALUES (2251, 252, '全州县', 3, 450324);
INSERT INTO `litemall_region` VALUES (2252, 252, '兴安县', 3, 450325);
INSERT INTO `litemall_region` VALUES (2253, 252, '永福县', 3, 450326);
INSERT INTO `litemall_region` VALUES (2254, 252, '灌阳县', 3, 450327);
INSERT INTO `litemall_region` VALUES (2255, 252, '龙胜各族自治县', 3, 450328);
INSERT INTO `litemall_region` VALUES (2256, 252, '资源县', 3, 450329);
INSERT INTO `litemall_region` VALUES (2257, 252, '平乐县', 3, 450330);
INSERT INTO `litemall_region` VALUES (2258, 252, '荔浦县', 3, 450331);
INSERT INTO `litemall_region` VALUES (2259, 252, '恭城瑶族自治县', 3, 450332);
INSERT INTO `litemall_region` VALUES (2260, 253, '万秀区', 3, 450403);
INSERT INTO `litemall_region` VALUES (2261, 253, '长洲区', 3, 450405);
INSERT INTO `litemall_region` VALUES (2262, 253, '龙圩区', 3, 450406);
INSERT INTO `litemall_region` VALUES (2263, 253, '苍梧县', 3, 450421);
INSERT INTO `litemall_region` VALUES (2264, 253, '藤县', 3, 450422);
INSERT INTO `litemall_region` VALUES (2265, 253, '蒙山县', 3, 450423);
INSERT INTO `litemall_region` VALUES (2266, 253, '岑溪市', 3, 450481);
INSERT INTO `litemall_region` VALUES (2267, 254, '海城区', 3, 450502);
INSERT INTO `litemall_region` VALUES (2268, 254, '银海区', 3, 450503);
INSERT INTO `litemall_region` VALUES (2269, 254, '铁山港区', 3, 450512);
INSERT INTO `litemall_region` VALUES (2270, 254, '合浦县', 3, 450521);
INSERT INTO `litemall_region` VALUES (2271, 255, '港口区', 3, 450602);
INSERT INTO `litemall_region` VALUES (2272, 255, '防城区', 3, 450603);
INSERT INTO `litemall_region` VALUES (2273, 255, '上思县', 3, 450621);
INSERT INTO `litemall_region` VALUES (2274, 255, '东兴市', 3, 450681);
INSERT INTO `litemall_region` VALUES (2275, 256, '钦南区', 3, 450702);
INSERT INTO `litemall_region` VALUES (2276, 256, '钦北区', 3, 450703);
INSERT INTO `litemall_region` VALUES (2277, 256, '灵山县', 3, 450721);
INSERT INTO `litemall_region` VALUES (2278, 256, '浦北县', 3, 450722);
INSERT INTO `litemall_region` VALUES (2279, 257, '港北区', 3, 450802);
INSERT INTO `litemall_region` VALUES (2280, 257, '港南区', 3, 450803);
INSERT INTO `litemall_region` VALUES (2281, 257, '覃塘区', 3, 450804);
INSERT INTO `litemall_region` VALUES (2282, 257, '平南县', 3, 450821);
INSERT INTO `litemall_region` VALUES (2283, 257, '桂平市', 3, 450881);
INSERT INTO `litemall_region` VALUES (2284, 258, '玉州区', 3, 450902);
INSERT INTO `litemall_region` VALUES (2285, 258, '福绵区', 3, 450903);
INSERT INTO `litemall_region` VALUES (2286, 258, '容县', 3, 450921);
INSERT INTO `litemall_region` VALUES (2287, 258, '陆川县', 3, 450922);
INSERT INTO `litemall_region` VALUES (2288, 258, '博白县', 3, 450923);
INSERT INTO `litemall_region` VALUES (2289, 258, '兴业县', 3, 450924);
INSERT INTO `litemall_region` VALUES (2290, 258, '北流市', 3, 450981);
INSERT INTO `litemall_region` VALUES (2291, 259, '右江区', 3, 451002);
INSERT INTO `litemall_region` VALUES (2292, 259, '田阳县', 3, 451021);
INSERT INTO `litemall_region` VALUES (2293, 259, '田东县', 3, 451022);
INSERT INTO `litemall_region` VALUES (2294, 259, '平果县', 3, 451023);
INSERT INTO `litemall_region` VALUES (2295, 259, '德保县', 3, 451024);
INSERT INTO `litemall_region` VALUES (2296, 259, '那坡县', 3, 451026);
INSERT INTO `litemall_region` VALUES (2297, 259, '凌云县', 3, 451027);
INSERT INTO `litemall_region` VALUES (2298, 259, '乐业县', 3, 451028);
INSERT INTO `litemall_region` VALUES (2299, 259, '田林县', 3, 451029);
INSERT INTO `litemall_region` VALUES (2300, 259, '西林县', 3, 451030);
INSERT INTO `litemall_region` VALUES (2301, 259, '隆林各族自治县', 3, 451031);
INSERT INTO `litemall_region` VALUES (2302, 259, '靖西市', 3, 451081);
INSERT INTO `litemall_region` VALUES (2303, 260, '八步区', 3, 451102);
INSERT INTO `litemall_region` VALUES (2304, 260, '平桂区', 3, 451103);
INSERT INTO `litemall_region` VALUES (2305, 260, '昭平县', 3, 451121);
INSERT INTO `litemall_region` VALUES (2306, 260, '钟山县', 3, 451122);
INSERT INTO `litemall_region` VALUES (2307, 260, '富川瑶族自治县', 3, 451123);
INSERT INTO `litemall_region` VALUES (2308, 261, '金城江区', 3, 451202);
INSERT INTO `litemall_region` VALUES (2309, 261, '南丹县', 3, 451221);
INSERT INTO `litemall_region` VALUES (2310, 261, '天峨县', 3, 451222);
INSERT INTO `litemall_region` VALUES (2311, 261, '凤山县', 3, 451223);
INSERT INTO `litemall_region` VALUES (2312, 261, '东兰县', 3, 451224);
INSERT INTO `litemall_region` VALUES (2313, 261, '罗城仫佬族自治县', 3, 451225);
INSERT INTO `litemall_region` VALUES (2314, 261, '环江毛南族自治县', 3, 451226);
INSERT INTO `litemall_region` VALUES (2315, 261, '巴马瑶族自治县', 3, 451227);
INSERT INTO `litemall_region` VALUES (2316, 261, '都安瑶族自治县', 3, 451228);
INSERT INTO `litemall_region` VALUES (2317, 261, '大化瑶族自治县', 3, 451229);
INSERT INTO `litemall_region` VALUES (2318, 261, '宜州市', 3, 451281);
INSERT INTO `litemall_region` VALUES (2319, 262, '兴宾区', 3, 451302);
INSERT INTO `litemall_region` VALUES (2320, 262, '忻城县', 3, 451321);
INSERT INTO `litemall_region` VALUES (2321, 262, '象州县', 3, 451322);
INSERT INTO `litemall_region` VALUES (2322, 262, '武宣县', 3, 451323);
INSERT INTO `litemall_region` VALUES (2323, 262, '金秀瑶族自治县', 3, 451324);
INSERT INTO `litemall_region` VALUES (2324, 262, '合山市', 3, 451381);
INSERT INTO `litemall_region` VALUES (2325, 263, '江州区', 3, 451402);
INSERT INTO `litemall_region` VALUES (2326, 263, '扶绥县', 3, 451421);
INSERT INTO `litemall_region` VALUES (2327, 263, '宁明县', 3, 451422);
INSERT INTO `litemall_region` VALUES (2328, 263, '龙州县', 3, 451423);
INSERT INTO `litemall_region` VALUES (2329, 263, '大新县', 3, 451424);
INSERT INTO `litemall_region` VALUES (2330, 263, '天等县', 3, 451425);
INSERT INTO `litemall_region` VALUES (2331, 263, '凭祥市', 3, 451481);
INSERT INTO `litemall_region` VALUES (2332, 264, '秀英区', 3, 460105);
INSERT INTO `litemall_region` VALUES (2333, 264, '龙华区', 3, 460106);
INSERT INTO `litemall_region` VALUES (2334, 264, '琼山区', 3, 460107);
INSERT INTO `litemall_region` VALUES (2335, 264, '美兰区', 3, 460108);
INSERT INTO `litemall_region` VALUES (2336, 265, '市辖区', 3, 460201);
INSERT INTO `litemall_region` VALUES (2337, 265, '海棠区', 3, 460202);
INSERT INTO `litemall_region` VALUES (2338, 265, '吉阳区', 3, 460203);
INSERT INTO `litemall_region` VALUES (2339, 265, '天涯区', 3, 460204);
INSERT INTO `litemall_region` VALUES (2340, 265, '崖州区', 3, 460205);
INSERT INTO `litemall_region` VALUES (2341, 266, '西沙群岛', 3, 460321);
INSERT INTO `litemall_region` VALUES (2342, 266, '南沙群岛', 3, 460322);
INSERT INTO `litemall_region` VALUES (2343, 266, '中沙群岛的岛礁及其海域', 3, 460323);
INSERT INTO `litemall_region` VALUES (2344, 267, '儋州市', 3, 460400);
INSERT INTO `litemall_region` VALUES (2345, 268, '五指山市', 3, 469001);
INSERT INTO `litemall_region` VALUES (2346, 268, '琼海市', 3, 469002);
INSERT INTO `litemall_region` VALUES (2347, 268, '文昌市', 3, 469005);
INSERT INTO `litemall_region` VALUES (2348, 268, '万宁市', 3, 469006);
INSERT INTO `litemall_region` VALUES (2349, 268, '东方市', 3, 469007);
INSERT INTO `litemall_region` VALUES (2350, 268, '定安县', 3, 469021);
INSERT INTO `litemall_region` VALUES (2351, 268, '屯昌县', 3, 469022);
INSERT INTO `litemall_region` VALUES (2352, 268, '澄迈县', 3, 469023);
INSERT INTO `litemall_region` VALUES (2353, 268, '临高县', 3, 469024);
INSERT INTO `litemall_region` VALUES (2354, 268, '白沙黎族自治县', 3, 469025);
INSERT INTO `litemall_region` VALUES (2355, 268, '昌江黎族自治县', 3, 469026);
INSERT INTO `litemall_region` VALUES (2356, 268, '乐东黎族自治县', 3, 469027);
INSERT INTO `litemall_region` VALUES (2357, 268, '陵水黎族自治县', 3, 469028);
INSERT INTO `litemall_region` VALUES (2358, 268, '保亭黎族苗族自治县', 3, 469029);
INSERT INTO `litemall_region` VALUES (2359, 268, '琼中黎族苗族自治县', 3, 469030);
INSERT INTO `litemall_region` VALUES (2360, 269, '万州区', 3, 500101);
INSERT INTO `litemall_region` VALUES (2361, 269, '涪陵区', 3, 500102);
INSERT INTO `litemall_region` VALUES (2362, 269, '渝中区', 3, 500103);
INSERT INTO `litemall_region` VALUES (2363, 269, '大渡口区', 3, 500104);
INSERT INTO `litemall_region` VALUES (2364, 269, '江北区', 3, 500105);
INSERT INTO `litemall_region` VALUES (2365, 269, '沙坪坝区', 3, 500106);
INSERT INTO `litemall_region` VALUES (2366, 269, '九龙坡区', 3, 500107);
INSERT INTO `litemall_region` VALUES (2367, 269, '南岸区', 3, 500108);
INSERT INTO `litemall_region` VALUES (2368, 269, '北碚区', 3, 500109);
INSERT INTO `litemall_region` VALUES (2369, 269, '綦江区', 3, 500110);
INSERT INTO `litemall_region` VALUES (2370, 269, '大足区', 3, 500111);
INSERT INTO `litemall_region` VALUES (2371, 269, '渝北区', 3, 500112);
INSERT INTO `litemall_region` VALUES (2372, 269, '巴南区', 3, 500113);
INSERT INTO `litemall_region` VALUES (2373, 269, '黔江区', 3, 500114);
INSERT INTO `litemall_region` VALUES (2374, 269, '长寿区', 3, 500115);
INSERT INTO `litemall_region` VALUES (2375, 269, '江津区', 3, 500116);
INSERT INTO `litemall_region` VALUES (2376, 269, '合川区', 3, 500117);
INSERT INTO `litemall_region` VALUES (2377, 269, '永川区', 3, 500118);
INSERT INTO `litemall_region` VALUES (2378, 269, '南川区', 3, 500119);
INSERT INTO `litemall_region` VALUES (2379, 269, '璧山区', 3, 500120);
INSERT INTO `litemall_region` VALUES (2380, 269, '铜梁区', 3, 500151);
INSERT INTO `litemall_region` VALUES (2381, 269, '潼南区', 3, 500152);
INSERT INTO `litemall_region` VALUES (2382, 269, '荣昌区', 3, 500153);
INSERT INTO `litemall_region` VALUES (2383, 269, '开州区', 3, 500154);
INSERT INTO `litemall_region` VALUES (2384, 270, '梁平县', 3, 500228);
INSERT INTO `litemall_region` VALUES (2385, 270, '城口县', 3, 500229);
INSERT INTO `litemall_region` VALUES (2386, 270, '丰都县', 3, 500230);
INSERT INTO `litemall_region` VALUES (2387, 270, '垫江县', 3, 500231);
INSERT INTO `litemall_region` VALUES (2388, 270, '武隆县', 3, 500232);
INSERT INTO `litemall_region` VALUES (2389, 270, '忠县', 3, 500233);
INSERT INTO `litemall_region` VALUES (2390, 270, '云阳县', 3, 500235);
INSERT INTO `litemall_region` VALUES (2391, 270, '奉节县', 3, 500236);
INSERT INTO `litemall_region` VALUES (2392, 270, '巫山县', 3, 500237);
INSERT INTO `litemall_region` VALUES (2393, 270, '巫溪县', 3, 500238);
INSERT INTO `litemall_region` VALUES (2394, 270, '石柱土家族自治县', 3, 500240);
INSERT INTO `litemall_region` VALUES (2395, 270, '秀山土家族苗族自治县', 3, 500241);
INSERT INTO `litemall_region` VALUES (2396, 270, '酉阳土家族苗族自治县', 3, 500242);
INSERT INTO `litemall_region` VALUES (2397, 270, '彭水苗族土家族自治县', 3, 500243);
INSERT INTO `litemall_region` VALUES (2398, 271, '锦江区', 3, 510104);
INSERT INTO `litemall_region` VALUES (2399, 271, '青羊区', 3, 510105);
INSERT INTO `litemall_region` VALUES (2400, 271, '金牛区', 3, 510106);
INSERT INTO `litemall_region` VALUES (2401, 271, '武侯区', 3, 510107);
INSERT INTO `litemall_region` VALUES (2402, 271, '成华区', 3, 510108);
INSERT INTO `litemall_region` VALUES (2403, 271, '龙泉驿区', 3, 510112);
INSERT INTO `litemall_region` VALUES (2404, 271, '青白江区', 3, 510113);
INSERT INTO `litemall_region` VALUES (2405, 271, '新都区', 3, 510114);
INSERT INTO `litemall_region` VALUES (2406, 271, '温江区', 3, 510115);
INSERT INTO `litemall_region` VALUES (2407, 271, '双流区', 3, 510116);
INSERT INTO `litemall_region` VALUES (2408, 271, '金堂县', 3, 510121);
INSERT INTO `litemall_region` VALUES (2409, 271, '郫县', 3, 510124);
INSERT INTO `litemall_region` VALUES (2410, 271, '大邑县', 3, 510129);
INSERT INTO `litemall_region` VALUES (2411, 271, '蒲江县', 3, 510131);
INSERT INTO `litemall_region` VALUES (2412, 271, '新津县', 3, 510132);
INSERT INTO `litemall_region` VALUES (2413, 271, '都江堰市', 3, 510181);
INSERT INTO `litemall_region` VALUES (2414, 271, '彭州市', 3, 510182);
INSERT INTO `litemall_region` VALUES (2415, 271, '邛崃市', 3, 510183);
INSERT INTO `litemall_region` VALUES (2416, 271, '崇州市', 3, 510184);
INSERT INTO `litemall_region` VALUES (2417, 271, '简阳市', 3, 510185);
INSERT INTO `litemall_region` VALUES (2418, 272, '自流井区', 3, 510302);
INSERT INTO `litemall_region` VALUES (2419, 272, '贡井区', 3, 510303);
INSERT INTO `litemall_region` VALUES (2420, 272, '大安区', 3, 510304);
INSERT INTO `litemall_region` VALUES (2421, 272, '沿滩区', 3, 510311);
INSERT INTO `litemall_region` VALUES (2422, 272, '荣县', 3, 510321);
INSERT INTO `litemall_region` VALUES (2423, 272, '富顺县', 3, 510322);
INSERT INTO `litemall_region` VALUES (2424, 273, '东区', 3, 510402);
INSERT INTO `litemall_region` VALUES (2425, 273, '西区', 3, 510403);
INSERT INTO `litemall_region` VALUES (2426, 273, '仁和区', 3, 510411);
INSERT INTO `litemall_region` VALUES (2427, 273, '米易县', 3, 510421);
INSERT INTO `litemall_region` VALUES (2428, 273, '盐边县', 3, 510422);
INSERT INTO `litemall_region` VALUES (2429, 274, '江阳区', 3, 510502);
INSERT INTO `litemall_region` VALUES (2430, 274, '纳溪区', 3, 510503);
INSERT INTO `litemall_region` VALUES (2431, 274, '龙马潭区', 3, 510504);
INSERT INTO `litemall_region` VALUES (2432, 274, '泸县', 3, 510521);
INSERT INTO `litemall_region` VALUES (2433, 274, '合江县', 3, 510522);
INSERT INTO `litemall_region` VALUES (2434, 274, '叙永县', 3, 510524);
INSERT INTO `litemall_region` VALUES (2435, 274, '古蔺县', 3, 510525);
INSERT INTO `litemall_region` VALUES (2436, 275, '旌阳区', 3, 510603);
INSERT INTO `litemall_region` VALUES (2437, 275, '中江县', 3, 510623);
INSERT INTO `litemall_region` VALUES (2438, 275, '罗江县', 3, 510626);
INSERT INTO `litemall_region` VALUES (2439, 275, '广汉市', 3, 510681);
INSERT INTO `litemall_region` VALUES (2440, 275, '什邡市', 3, 510682);
INSERT INTO `litemall_region` VALUES (2441, 275, '绵竹市', 3, 510683);
INSERT INTO `litemall_region` VALUES (2442, 276, '涪城区', 3, 510703);
INSERT INTO `litemall_region` VALUES (2443, 276, '游仙区', 3, 510704);
INSERT INTO `litemall_region` VALUES (2444, 276, '安州区', 3, 510705);
INSERT INTO `litemall_region` VALUES (2445, 276, '三台县', 3, 510722);
INSERT INTO `litemall_region` VALUES (2446, 276, '盐亭县', 3, 510723);
INSERT INTO `litemall_region` VALUES (2447, 276, '梓潼县', 3, 510725);
INSERT INTO `litemall_region` VALUES (2448, 276, '北川羌族自治县', 3, 510726);
INSERT INTO `litemall_region` VALUES (2449, 276, '平武县', 3, 510727);
INSERT INTO `litemall_region` VALUES (2450, 276, '江油市', 3, 510781);
INSERT INTO `litemall_region` VALUES (2451, 277, '利州区', 3, 510802);
INSERT INTO `litemall_region` VALUES (2452, 277, '昭化区', 3, 510811);
INSERT INTO `litemall_region` VALUES (2453, 277, '朝天区', 3, 510812);
INSERT INTO `litemall_region` VALUES (2454, 277, '旺苍县', 3, 510821);
INSERT INTO `litemall_region` VALUES (2455, 277, '青川县', 3, 510822);
INSERT INTO `litemall_region` VALUES (2456, 277, '剑阁县', 3, 510823);
INSERT INTO `litemall_region` VALUES (2457, 277, '苍溪县', 3, 510824);
INSERT INTO `litemall_region` VALUES (2458, 278, '船山区', 3, 510903);
INSERT INTO `litemall_region` VALUES (2459, 278, '安居区', 3, 510904);
INSERT INTO `litemall_region` VALUES (2460, 278, '蓬溪县', 3, 510921);
INSERT INTO `litemall_region` VALUES (2461, 278, '射洪县', 3, 510922);
INSERT INTO `litemall_region` VALUES (2462, 278, '大英县', 3, 510923);
INSERT INTO `litemall_region` VALUES (2463, 279, '市中区', 3, 511002);
INSERT INTO `litemall_region` VALUES (2464, 279, '东兴区', 3, 511011);
INSERT INTO `litemall_region` VALUES (2465, 279, '威远县', 3, 511024);
INSERT INTO `litemall_region` VALUES (2466, 279, '资中县', 3, 511025);
INSERT INTO `litemall_region` VALUES (2467, 279, '隆昌县', 3, 511028);
INSERT INTO `litemall_region` VALUES (2468, 280, '市中区', 3, 511102);
INSERT INTO `litemall_region` VALUES (2469, 280, '沙湾区', 3, 511111);
INSERT INTO `litemall_region` VALUES (2470, 280, '五通桥区', 3, 511112);
INSERT INTO `litemall_region` VALUES (2471, 280, '金口河区', 3, 511113);
INSERT INTO `litemall_region` VALUES (2472, 280, '犍为县', 3, 511123);
INSERT INTO `litemall_region` VALUES (2473, 280, '井研县', 3, 511124);
INSERT INTO `litemall_region` VALUES (2474, 280, '夹江县', 3, 511126);
INSERT INTO `litemall_region` VALUES (2475, 280, '沐川县', 3, 511129);
INSERT INTO `litemall_region` VALUES (2476, 280, '峨边彝族自治县', 3, 511132);
INSERT INTO `litemall_region` VALUES (2477, 280, '马边彝族自治县', 3, 511133);
INSERT INTO `litemall_region` VALUES (2478, 280, '峨眉山市', 3, 511181);
INSERT INTO `litemall_region` VALUES (2479, 281, '顺庆区', 3, 511302);
INSERT INTO `litemall_region` VALUES (2480, 281, '高坪区', 3, 511303);
INSERT INTO `litemall_region` VALUES (2481, 281, '嘉陵区', 3, 511304);
INSERT INTO `litemall_region` VALUES (2482, 281, '南部县', 3, 511321);
INSERT INTO `litemall_region` VALUES (2483, 281, '营山县', 3, 511322);
INSERT INTO `litemall_region` VALUES (2484, 281, '蓬安县', 3, 511323);
INSERT INTO `litemall_region` VALUES (2485, 281, '仪陇县', 3, 511324);
INSERT INTO `litemall_region` VALUES (2486, 281, '西充县', 3, 511325);
INSERT INTO `litemall_region` VALUES (2487, 281, '阆中市', 3, 511381);
INSERT INTO `litemall_region` VALUES (2488, 282, '东坡区', 3, 511402);
INSERT INTO `litemall_region` VALUES (2489, 282, '彭山区', 3, 511403);
INSERT INTO `litemall_region` VALUES (2490, 282, '仁寿县', 3, 511421);
INSERT INTO `litemall_region` VALUES (2491, 282, '洪雅县', 3, 511423);
INSERT INTO `litemall_region` VALUES (2492, 282, '丹棱县', 3, 511424);
INSERT INTO `litemall_region` VALUES (2493, 282, '青神县', 3, 511425);
INSERT INTO `litemall_region` VALUES (2494, 283, '翠屏区', 3, 511502);
INSERT INTO `litemall_region` VALUES (2495, 283, '南溪区', 3, 511503);
INSERT INTO `litemall_region` VALUES (2496, 283, '宜宾县', 3, 511521);
INSERT INTO `litemall_region` VALUES (2497, 283, '江安县', 3, 511523);
INSERT INTO `litemall_region` VALUES (2498, 283, '长宁县', 3, 511524);
INSERT INTO `litemall_region` VALUES (2499, 283, '高县', 3, 511525);
INSERT INTO `litemall_region` VALUES (2500, 283, '珙县', 3, 511526);
INSERT INTO `litemall_region` VALUES (2501, 283, '筠连县', 3, 511527);
INSERT INTO `litemall_region` VALUES (2502, 283, '兴文县', 3, 511528);
INSERT INTO `litemall_region` VALUES (2503, 283, '屏山县', 3, 511529);
INSERT INTO `litemall_region` VALUES (2504, 284, '广安区', 3, 511602);
INSERT INTO `litemall_region` VALUES (2505, 284, '前锋区', 3, 511603);
INSERT INTO `litemall_region` VALUES (2506, 284, '岳池县', 3, 511621);
INSERT INTO `litemall_region` VALUES (2507, 284, '武胜县', 3, 511622);
INSERT INTO `litemall_region` VALUES (2508, 284, '邻水县', 3, 511623);
INSERT INTO `litemall_region` VALUES (2509, 284, '华蓥市', 3, 511681);
INSERT INTO `litemall_region` VALUES (2510, 285, '通川区', 3, 511702);
INSERT INTO `litemall_region` VALUES (2511, 285, '达川区', 3, 511703);
INSERT INTO `litemall_region` VALUES (2512, 285, '宣汉县', 3, 511722);
INSERT INTO `litemall_region` VALUES (2513, 285, '开江县', 3, 511723);
INSERT INTO `litemall_region` VALUES (2514, 285, '大竹县', 3, 511724);
INSERT INTO `litemall_region` VALUES (2515, 285, '渠县', 3, 511725);
INSERT INTO `litemall_region` VALUES (2516, 285, '万源市', 3, 511781);
INSERT INTO `litemall_region` VALUES (2517, 286, '雨城区', 3, 511802);
INSERT INTO `litemall_region` VALUES (2518, 286, '名山区', 3, 511803);
INSERT INTO `litemall_region` VALUES (2519, 286, '荥经县', 3, 511822);
INSERT INTO `litemall_region` VALUES (2520, 286, '汉源县', 3, 511823);
INSERT INTO `litemall_region` VALUES (2521, 286, '石棉县', 3, 511824);
INSERT INTO `litemall_region` VALUES (2522, 286, '天全县', 3, 511825);
INSERT INTO `litemall_region` VALUES (2523, 286, '芦山县', 3, 511826);
INSERT INTO `litemall_region` VALUES (2524, 286, '宝兴县', 3, 511827);
INSERT INTO `litemall_region` VALUES (2525, 287, '巴州区', 3, 511902);
INSERT INTO `litemall_region` VALUES (2526, 287, '恩阳区', 3, 511903);
INSERT INTO `litemall_region` VALUES (2527, 287, '通江县', 3, 511921);
INSERT INTO `litemall_region` VALUES (2528, 287, '南江县', 3, 511922);
INSERT INTO `litemall_region` VALUES (2529, 287, '平昌县', 3, 511923);
INSERT INTO `litemall_region` VALUES (2530, 288, '雁江区', 3, 512002);
INSERT INTO `litemall_region` VALUES (2531, 288, '安岳县', 3, 512021);
INSERT INTO `litemall_region` VALUES (2532, 288, '乐至县', 3, 512022);
INSERT INTO `litemall_region` VALUES (2533, 289, '马尔康市', 3, 513201);
INSERT INTO `litemall_region` VALUES (2534, 289, '汶川县', 3, 513221);
INSERT INTO `litemall_region` VALUES (2535, 289, '理县', 3, 513222);
INSERT INTO `litemall_region` VALUES (2536, 289, '茂县', 3, 513223);
INSERT INTO `litemall_region` VALUES (2537, 289, '松潘县', 3, 513224);
INSERT INTO `litemall_region` VALUES (2538, 289, '九寨沟县', 3, 513225);
INSERT INTO `litemall_region` VALUES (2539, 289, '金川县', 3, 513226);
INSERT INTO `litemall_region` VALUES (2540, 289, '小金县', 3, 513227);
INSERT INTO `litemall_region` VALUES (2541, 289, '黑水县', 3, 513228);
INSERT INTO `litemall_region` VALUES (2542, 289, '壤塘县', 3, 513230);
INSERT INTO `litemall_region` VALUES (2543, 289, '阿坝县', 3, 513231);
INSERT INTO `litemall_region` VALUES (2544, 289, '若尔盖县', 3, 513232);
INSERT INTO `litemall_region` VALUES (2545, 289, '红原县', 3, 513233);
INSERT INTO `litemall_region` VALUES (2546, 290, '康定市', 3, 513301);
INSERT INTO `litemall_region` VALUES (2547, 290, '泸定县', 3, 513322);
INSERT INTO `litemall_region` VALUES (2548, 290, '丹巴县', 3, 513323);
INSERT INTO `litemall_region` VALUES (2549, 290, '九龙县', 3, 513324);
INSERT INTO `litemall_region` VALUES (2550, 290, '雅江县', 3, 513325);
INSERT INTO `litemall_region` VALUES (2551, 290, '道孚县', 3, 513326);
INSERT INTO `litemall_region` VALUES (2552, 290, '炉霍县', 3, 513327);
INSERT INTO `litemall_region` VALUES (2553, 290, '甘孜县', 3, 513328);
INSERT INTO `litemall_region` VALUES (2554, 290, '新龙县', 3, 513329);
INSERT INTO `litemall_region` VALUES (2555, 290, '德格县', 3, 513330);
INSERT INTO `litemall_region` VALUES (2556, 290, '白玉县', 3, 513331);
INSERT INTO `litemall_region` VALUES (2557, 290, '石渠县', 3, 513332);
INSERT INTO `litemall_region` VALUES (2558, 290, '色达县', 3, 513333);
INSERT INTO `litemall_region` VALUES (2559, 290, '理塘县', 3, 513334);
INSERT INTO `litemall_region` VALUES (2560, 290, '巴塘县', 3, 513335);
INSERT INTO `litemall_region` VALUES (2561, 290, '乡城县', 3, 513336);
INSERT INTO `litemall_region` VALUES (2562, 290, '稻城县', 3, 513337);
INSERT INTO `litemall_region` VALUES (2563, 290, '得荣县', 3, 513338);
INSERT INTO `litemall_region` VALUES (2564, 291, '西昌市', 3, 513401);
INSERT INTO `litemall_region` VALUES (2565, 291, '木里藏族自治县', 3, 513422);
INSERT INTO `litemall_region` VALUES (2566, 291, '盐源县', 3, 513423);
INSERT INTO `litemall_region` VALUES (2567, 291, '德昌县', 3, 513424);
INSERT INTO `litemall_region` VALUES (2568, 291, '会理县', 3, 513425);
INSERT INTO `litemall_region` VALUES (2569, 291, '会东县', 3, 513426);
INSERT INTO `litemall_region` VALUES (2570, 291, '宁南县', 3, 513427);
INSERT INTO `litemall_region` VALUES (2571, 291, '普格县', 3, 513428);
INSERT INTO `litemall_region` VALUES (2572, 291, '布拖县', 3, 513429);
INSERT INTO `litemall_region` VALUES (2573, 291, '金阳县', 3, 513430);
INSERT INTO `litemall_region` VALUES (2574, 291, '昭觉县', 3, 513431);
INSERT INTO `litemall_region` VALUES (2575, 291, '喜德县', 3, 513432);
INSERT INTO `litemall_region` VALUES (2576, 291, '冕宁县', 3, 513433);
INSERT INTO `litemall_region` VALUES (2577, 291, '越西县', 3, 513434);
INSERT INTO `litemall_region` VALUES (2578, 291, '甘洛县', 3, 513435);
INSERT INTO `litemall_region` VALUES (2579, 291, '美姑县', 3, 513436);
INSERT INTO `litemall_region` VALUES (2580, 291, '雷波县', 3, 513437);
INSERT INTO `litemall_region` VALUES (2581, 292, '南明区', 3, 520102);
INSERT INTO `litemall_region` VALUES (2582, 292, '云岩区', 3, 520103);
INSERT INTO `litemall_region` VALUES (2583, 292, '花溪区', 3, 520111);
INSERT INTO `litemall_region` VALUES (2584, 292, '乌当区', 3, 520112);
INSERT INTO `litemall_region` VALUES (2585, 292, '白云区', 3, 520113);
INSERT INTO `litemall_region` VALUES (2586, 292, '观山湖区', 3, 520115);
INSERT INTO `litemall_region` VALUES (2587, 292, '开阳县', 3, 520121);
INSERT INTO `litemall_region` VALUES (2588, 292, '息烽县', 3, 520122);
INSERT INTO `litemall_region` VALUES (2589, 292, '修文县', 3, 520123);
INSERT INTO `litemall_region` VALUES (2590, 292, '清镇市', 3, 520181);
INSERT INTO `litemall_region` VALUES (2591, 293, '钟山区', 3, 520201);
INSERT INTO `litemall_region` VALUES (2592, 293, '六枝特区', 3, 520203);
INSERT INTO `litemall_region` VALUES (2593, 293, '水城县', 3, 520221);
INSERT INTO `litemall_region` VALUES (2594, 293, '盘县', 3, 520222);
INSERT INTO `litemall_region` VALUES (2595, 294, '红花岗区', 3, 520302);
INSERT INTO `litemall_region` VALUES (2596, 294, '汇川区', 3, 520303);
INSERT INTO `litemall_region` VALUES (2597, 294, '播州区', 3, 520304);
INSERT INTO `litemall_region` VALUES (2598, 294, '桐梓县', 3, 520322);
INSERT INTO `litemall_region` VALUES (2599, 294, '绥阳县', 3, 520323);
INSERT INTO `litemall_region` VALUES (2600, 294, '正安县', 3, 520324);
INSERT INTO `litemall_region` VALUES (2601, 294, '道真仡佬族苗族自治县', 3, 520325);
INSERT INTO `litemall_region` VALUES (2602, 294, '务川仡佬族苗族自治县', 3, 520326);
INSERT INTO `litemall_region` VALUES (2603, 294, '凤冈县', 3, 520327);
INSERT INTO `litemall_region` VALUES (2604, 294, '湄潭县', 3, 520328);
INSERT INTO `litemall_region` VALUES (2605, 294, '余庆县', 3, 520329);
INSERT INTO `litemall_region` VALUES (2606, 294, '习水县', 3, 520330);
INSERT INTO `litemall_region` VALUES (2607, 294, '赤水市', 3, 520381);
INSERT INTO `litemall_region` VALUES (2608, 294, '仁怀市', 3, 520382);
INSERT INTO `litemall_region` VALUES (2609, 295, '西秀区', 3, 520402);
INSERT INTO `litemall_region` VALUES (2610, 295, '平坝区', 3, 520403);
INSERT INTO `litemall_region` VALUES (2611, 295, '普定县', 3, 520422);
INSERT INTO `litemall_region` VALUES (2612, 295, '镇宁布依族苗族自治县', 3, 520423);
INSERT INTO `litemall_region` VALUES (2613, 295, '关岭布依族苗族自治县', 3, 520424);
INSERT INTO `litemall_region` VALUES (2614, 295, '紫云苗族布依族自治县', 3, 520425);
INSERT INTO `litemall_region` VALUES (2615, 296, '七星关区', 3, 520502);
INSERT INTO `litemall_region` VALUES (2616, 296, '大方县', 3, 520521);
INSERT INTO `litemall_region` VALUES (2617, 296, '黔西县', 3, 520522);
INSERT INTO `litemall_region` VALUES (2618, 296, '金沙县', 3, 520523);
INSERT INTO `litemall_region` VALUES (2619, 296, '织金县', 3, 520524);
INSERT INTO `litemall_region` VALUES (2620, 296, '纳雍县', 3, 520525);
INSERT INTO `litemall_region` VALUES (2621, 296, '威宁彝族回族苗族自治县', 3, 520526);
INSERT INTO `litemall_region` VALUES (2622, 296, '赫章县', 3, 520527);
INSERT INTO `litemall_region` VALUES (2623, 297, '碧江区', 3, 520602);
INSERT INTO `litemall_region` VALUES (2624, 297, '万山区', 3, 520603);
INSERT INTO `litemall_region` VALUES (2625, 297, '江口县', 3, 520621);
INSERT INTO `litemall_region` VALUES (2626, 297, '玉屏侗族自治县', 3, 520622);
INSERT INTO `litemall_region` VALUES (2627, 297, '石阡县', 3, 520623);
INSERT INTO `litemall_region` VALUES (2628, 297, '思南县', 3, 520624);
INSERT INTO `litemall_region` VALUES (2629, 297, '印江土家族苗族自治县', 3, 520625);
INSERT INTO `litemall_region` VALUES (2630, 297, '德江县', 3, 520626);
INSERT INTO `litemall_region` VALUES (2631, 297, '沿河土家族自治县', 3, 520627);
INSERT INTO `litemall_region` VALUES (2632, 297, '松桃苗族自治县', 3, 520628);
INSERT INTO `litemall_region` VALUES (2633, 298, '兴义市', 3, 522301);
INSERT INTO `litemall_region` VALUES (2634, 298, '兴仁县', 3, 522322);
INSERT INTO `litemall_region` VALUES (2635, 298, '普安县', 3, 522323);
INSERT INTO `litemall_region` VALUES (2636, 298, '晴隆县', 3, 522324);
INSERT INTO `litemall_region` VALUES (2637, 298, '贞丰县', 3, 522325);
INSERT INTO `litemall_region` VALUES (2638, 298, '望谟县', 3, 522326);
INSERT INTO `litemall_region` VALUES (2639, 298, '册亨县', 3, 522327);
INSERT INTO `litemall_region` VALUES (2640, 298, '安龙县', 3, 522328);
INSERT INTO `litemall_region` VALUES (2641, 299, '凯里市', 3, 522601);
INSERT INTO `litemall_region` VALUES (2642, 299, '黄平县', 3, 522622);
INSERT INTO `litemall_region` VALUES (2643, 299, '施秉县', 3, 522623);
INSERT INTO `litemall_region` VALUES (2644, 299, '三穗县', 3, 522624);
INSERT INTO `litemall_region` VALUES (2645, 299, '镇远县', 3, 522625);
INSERT INTO `litemall_region` VALUES (2646, 299, '岑巩县', 3, 522626);
INSERT INTO `litemall_region` VALUES (2647, 299, '天柱县', 3, 522627);
INSERT INTO `litemall_region` VALUES (2648, 299, '锦屏县', 3, 522628);
INSERT INTO `litemall_region` VALUES (2649, 299, '剑河县', 3, 522629);
INSERT INTO `litemall_region` VALUES (2650, 299, '台江县', 3, 522630);
INSERT INTO `litemall_region` VALUES (2651, 299, '黎平县', 3, 522631);
INSERT INTO `litemall_region` VALUES (2652, 299, '榕江县', 3, 522632);
INSERT INTO `litemall_region` VALUES (2653, 299, '从江县', 3, 522633);
INSERT INTO `litemall_region` VALUES (2654, 299, '雷山县', 3, 522634);
INSERT INTO `litemall_region` VALUES (2655, 299, '麻江县', 3, 522635);
INSERT INTO `litemall_region` VALUES (2656, 299, '丹寨县', 3, 522636);
INSERT INTO `litemall_region` VALUES (2657, 300, '都匀市', 3, 522701);
INSERT INTO `litemall_region` VALUES (2658, 300, '福泉市', 3, 522702);
INSERT INTO `litemall_region` VALUES (2659, 300, '荔波县', 3, 522722);
INSERT INTO `litemall_region` VALUES (2660, 300, '贵定县', 3, 522723);
INSERT INTO `litemall_region` VALUES (2661, 300, '瓮安县', 3, 522725);
INSERT INTO `litemall_region` VALUES (2662, 300, '独山县', 3, 522726);
INSERT INTO `litemall_region` VALUES (2663, 300, '平塘县', 3, 522727);
INSERT INTO `litemall_region` VALUES (2664, 300, '罗甸县', 3, 522728);
INSERT INTO `litemall_region` VALUES (2665, 300, '长顺县', 3, 522729);
INSERT INTO `litemall_region` VALUES (2666, 300, '龙里县', 3, 522730);
INSERT INTO `litemall_region` VALUES (2667, 300, '惠水县', 3, 522731);
INSERT INTO `litemall_region` VALUES (2668, 300, '三都水族自治县', 3, 522732);
INSERT INTO `litemall_region` VALUES (2669, 301, '五华区', 3, 530102);
INSERT INTO `litemall_region` VALUES (2670, 301, '盘龙区', 3, 530103);
INSERT INTO `litemall_region` VALUES (2671, 301, '官渡区', 3, 530111);
INSERT INTO `litemall_region` VALUES (2672, 301, '西山区', 3, 530112);
INSERT INTO `litemall_region` VALUES (2673, 301, '东川区', 3, 530113);
INSERT INTO `litemall_region` VALUES (2674, 301, '呈贡区', 3, 530114);
INSERT INTO `litemall_region` VALUES (2675, 301, '晋宁县', 3, 530122);
INSERT INTO `litemall_region` VALUES (2676, 301, '富民县', 3, 530124);
INSERT INTO `litemall_region` VALUES (2677, 301, '宜良县', 3, 530125);
INSERT INTO `litemall_region` VALUES (2678, 301, '石林彝族自治县', 3, 530126);
INSERT INTO `litemall_region` VALUES (2679, 301, '嵩明县', 3, 530127);
INSERT INTO `litemall_region` VALUES (2680, 301, '禄劝彝族苗族自治县', 3, 530128);
INSERT INTO `litemall_region` VALUES (2681, 301, '寻甸回族彝族自治县', 3, 530129);
INSERT INTO `litemall_region` VALUES (2682, 301, '安宁市', 3, 530181);
INSERT INTO `litemall_region` VALUES (2683, 302, '麒麟区', 3, 530302);
INSERT INTO `litemall_region` VALUES (2684, 302, '沾益区', 3, 530303);
INSERT INTO `litemall_region` VALUES (2685, 302, '马龙县', 3, 530321);
INSERT INTO `litemall_region` VALUES (2686, 302, '陆良县', 3, 530322);
INSERT INTO `litemall_region` VALUES (2687, 302, '师宗县', 3, 530323);
INSERT INTO `litemall_region` VALUES (2688, 302, '罗平县', 3, 530324);
INSERT INTO `litemall_region` VALUES (2689, 302, '富源县', 3, 530325);
INSERT INTO `litemall_region` VALUES (2690, 302, '会泽县', 3, 530326);
INSERT INTO `litemall_region` VALUES (2691, 302, '宣威市', 3, 530381);
INSERT INTO `litemall_region` VALUES (2692, 303, '红塔区', 3, 530402);
INSERT INTO `litemall_region` VALUES (2693, 303, '江川区', 3, 530403);
INSERT INTO `litemall_region` VALUES (2694, 303, '澄江县', 3, 530422);
INSERT INTO `litemall_region` VALUES (2695, 303, '通海县', 3, 530423);
INSERT INTO `litemall_region` VALUES (2696, 303, '华宁县', 3, 530424);
INSERT INTO `litemall_region` VALUES (2697, 303, '易门县', 3, 530425);
INSERT INTO `litemall_region` VALUES (2698, 303, '峨山彝族自治县', 3, 530426);
INSERT INTO `litemall_region` VALUES (2699, 303, '新平彝族傣族自治县', 3, 530427);
INSERT INTO `litemall_region` VALUES (2700, 303, '元江哈尼族彝族傣族自治县', 3, 530428);
INSERT INTO `litemall_region` VALUES (2701, 304, '隆阳区', 3, 530502);
INSERT INTO `litemall_region` VALUES (2702, 304, '施甸县', 3, 530521);
INSERT INTO `litemall_region` VALUES (2703, 304, '龙陵县', 3, 530523);
INSERT INTO `litemall_region` VALUES (2704, 304, '昌宁县', 3, 530524);
INSERT INTO `litemall_region` VALUES (2705, 304, '腾冲市', 3, 530581);
INSERT INTO `litemall_region` VALUES (2706, 305, '昭阳区', 3, 530602);
INSERT INTO `litemall_region` VALUES (2707, 305, '鲁甸县', 3, 530621);
INSERT INTO `litemall_region` VALUES (2708, 305, '巧家县', 3, 530622);
INSERT INTO `litemall_region` VALUES (2709, 305, '盐津县', 3, 530623);
INSERT INTO `litemall_region` VALUES (2710, 305, '大关县', 3, 530624);
INSERT INTO `litemall_region` VALUES (2711, 305, '永善县', 3, 530625);
INSERT INTO `litemall_region` VALUES (2712, 305, '绥江县', 3, 530626);
INSERT INTO `litemall_region` VALUES (2713, 305, '镇雄县', 3, 530627);
INSERT INTO `litemall_region` VALUES (2714, 305, '彝良县', 3, 530628);
INSERT INTO `litemall_region` VALUES (2715, 305, '威信县', 3, 530629);
INSERT INTO `litemall_region` VALUES (2716, 305, '水富县', 3, 530630);
INSERT INTO `litemall_region` VALUES (2717, 306, '古城区', 3, 530702);
INSERT INTO `litemall_region` VALUES (2718, 306, '玉龙纳西族自治县', 3, 530721);
INSERT INTO `litemall_region` VALUES (2719, 306, '永胜县', 3, 530722);
INSERT INTO `litemall_region` VALUES (2720, 306, '华坪县', 3, 530723);
INSERT INTO `litemall_region` VALUES (2721, 306, '宁蒗彝族自治县', 3, 530724);
INSERT INTO `litemall_region` VALUES (2722, 307, '思茅区', 3, 530802);
INSERT INTO `litemall_region` VALUES (2723, 307, '宁洱哈尼族彝族自治县', 3, 530821);
INSERT INTO `litemall_region` VALUES (2724, 307, '墨江哈尼族自治县', 3, 530822);
INSERT INTO `litemall_region` VALUES (2725, 307, '景东彝族自治县', 3, 530823);
INSERT INTO `litemall_region` VALUES (2726, 307, '景谷傣族彝族自治县', 3, 530824);
INSERT INTO `litemall_region` VALUES (2727, 307, '镇沅彝族哈尼族拉祜族自治县', 3, 530825);
INSERT INTO `litemall_region` VALUES (2728, 307, '江城哈尼族彝族自治县', 3, 530826);
INSERT INTO `litemall_region` VALUES (2729, 307, '孟连傣族拉祜族佤族自治县', 3, 530827);
INSERT INTO `litemall_region` VALUES (2730, 307, '澜沧拉祜族自治县', 3, 530828);
INSERT INTO `litemall_region` VALUES (2731, 307, '西盟佤族自治县', 3, 530829);
INSERT INTO `litemall_region` VALUES (2732, 308, '临翔区', 3, 530902);
INSERT INTO `litemall_region` VALUES (2733, 308, '凤庆县', 3, 530921);
INSERT INTO `litemall_region` VALUES (2734, 308, '云县', 3, 530922);
INSERT INTO `litemall_region` VALUES (2735, 308, '永德县', 3, 530923);
INSERT INTO `litemall_region` VALUES (2736, 308, '镇康县', 3, 530924);
INSERT INTO `litemall_region` VALUES (2737, 308, '双江拉祜族佤族布朗族傣族自治县', 3, 530925);
INSERT INTO `litemall_region` VALUES (2738, 308, '耿马傣族佤族自治县', 3, 530926);
INSERT INTO `litemall_region` VALUES (2739, 308, '沧源佤族自治县', 3, 530927);
INSERT INTO `litemall_region` VALUES (2740, 309, '楚雄市', 3, 532301);
INSERT INTO `litemall_region` VALUES (2741, 309, '双柏县', 3, 532322);
INSERT INTO `litemall_region` VALUES (2742, 309, '牟定县', 3, 532323);
INSERT INTO `litemall_region` VALUES (2743, 309, '南华县', 3, 532324);
INSERT INTO `litemall_region` VALUES (2744, 309, '姚安县', 3, 532325);
INSERT INTO `litemall_region` VALUES (2745, 309, '大姚县', 3, 532326);
INSERT INTO `litemall_region` VALUES (2746, 309, '永仁县', 3, 532327);
INSERT INTO `litemall_region` VALUES (2747, 309, '元谋县', 3, 532328);
INSERT INTO `litemall_region` VALUES (2748, 309, '武定县', 3, 532329);
INSERT INTO `litemall_region` VALUES (2749, 309, '禄丰县', 3, 532331);
INSERT INTO `litemall_region` VALUES (2750, 310, '个旧市', 3, 532501);
INSERT INTO `litemall_region` VALUES (2751, 310, '开远市', 3, 532502);
INSERT INTO `litemall_region` VALUES (2752, 310, '蒙自市', 3, 532503);
INSERT INTO `litemall_region` VALUES (2753, 310, '弥勒市', 3, 532504);
INSERT INTO `litemall_region` VALUES (2754, 310, '屏边苗族自治县', 3, 532523);
INSERT INTO `litemall_region` VALUES (2755, 310, '建水县', 3, 532524);
INSERT INTO `litemall_region` VALUES (2756, 310, '石屏县', 3, 532525);
INSERT INTO `litemall_region` VALUES (2757, 310, '泸西县', 3, 532527);
INSERT INTO `litemall_region` VALUES (2758, 310, '元阳县', 3, 532528);
INSERT INTO `litemall_region` VALUES (2759, 310, '红河县', 3, 532529);
INSERT INTO `litemall_region` VALUES (2760, 310, '金平苗族瑶族傣族自治县', 3, 532530);
INSERT INTO `litemall_region` VALUES (2761, 310, '绿春县', 3, 532531);
INSERT INTO `litemall_region` VALUES (2762, 310, '河口瑶族自治县', 3, 532532);
INSERT INTO `litemall_region` VALUES (2763, 311, '文山市', 3, 532601);
INSERT INTO `litemall_region` VALUES (2764, 311, '砚山县', 3, 532622);
INSERT INTO `litemall_region` VALUES (2765, 311, '西畴县', 3, 532623);
INSERT INTO `litemall_region` VALUES (2766, 311, '麻栗坡县', 3, 532624);
INSERT INTO `litemall_region` VALUES (2767, 311, '马关县', 3, 532625);
INSERT INTO `litemall_region` VALUES (2768, 311, '丘北县', 3, 532626);
INSERT INTO `litemall_region` VALUES (2769, 311, '广南县', 3, 532627);
INSERT INTO `litemall_region` VALUES (2770, 311, '富宁县', 3, 532628);
INSERT INTO `litemall_region` VALUES (2771, 312, '景洪市', 3, 532801);
INSERT INTO `litemall_region` VALUES (2772, 312, '勐海县', 3, 532822);
INSERT INTO `litemall_region` VALUES (2773, 312, '勐腊县', 3, 532823);
INSERT INTO `litemall_region` VALUES (2774, 313, '大理市', 3, 532901);
INSERT INTO `litemall_region` VALUES (2775, 313, '漾濞彝族自治县', 3, 532922);
INSERT INTO `litemall_region` VALUES (2776, 313, '祥云县', 3, 532923);
INSERT INTO `litemall_region` VALUES (2777, 313, '宾川县', 3, 532924);
INSERT INTO `litemall_region` VALUES (2778, 313, '弥渡县', 3, 532925);
INSERT INTO `litemall_region` VALUES (2779, 313, '南涧彝族自治县', 3, 532926);
INSERT INTO `litemall_region` VALUES (2780, 313, '巍山彝族回族自治县', 3, 532927);
INSERT INTO `litemall_region` VALUES (2781, 313, '永平县', 3, 532928);
INSERT INTO `litemall_region` VALUES (2782, 313, '云龙县', 3, 532929);
INSERT INTO `litemall_region` VALUES (2783, 313, '洱源县', 3, 532930);
INSERT INTO `litemall_region` VALUES (2784, 313, '剑川县', 3, 532931);
INSERT INTO `litemall_region` VALUES (2785, 313, '鹤庆县', 3, 532932);
INSERT INTO `litemall_region` VALUES (2786, 314, '瑞丽市', 3, 533102);
INSERT INTO `litemall_region` VALUES (2787, 314, '芒市', 3, 533103);
INSERT INTO `litemall_region` VALUES (2788, 314, '梁河县', 3, 533122);
INSERT INTO `litemall_region` VALUES (2789, 314, '盈江县', 3, 533123);
INSERT INTO `litemall_region` VALUES (2790, 314, '陇川县', 3, 533124);
INSERT INTO `litemall_region` VALUES (2791, 315, '泸水市', 3, 533301);
INSERT INTO `litemall_region` VALUES (2792, 315, '福贡县', 3, 533323);
INSERT INTO `litemall_region` VALUES (2793, 315, '贡山独龙族怒族自治县', 3, 533324);
INSERT INTO `litemall_region` VALUES (2794, 315, '兰坪白族普米族自治县', 3, 533325);
INSERT INTO `litemall_region` VALUES (2795, 316, '香格里拉市', 3, 533401);
INSERT INTO `litemall_region` VALUES (2796, 316, '德钦县', 3, 533422);
INSERT INTO `litemall_region` VALUES (2797, 316, '维西傈僳族自治县', 3, 533423);
INSERT INTO `litemall_region` VALUES (2798, 317, '城关区', 3, 540102);
INSERT INTO `litemall_region` VALUES (2799, 317, '堆龙德庆区', 3, 540103);
INSERT INTO `litemall_region` VALUES (2800, 317, '林周县', 3, 540121);
INSERT INTO `litemall_region` VALUES (2801, 317, '当雄县', 3, 540122);
INSERT INTO `litemall_region` VALUES (2802, 317, '尼木县', 3, 540123);
INSERT INTO `litemall_region` VALUES (2803, 317, '曲水县', 3, 540124);
INSERT INTO `litemall_region` VALUES (2804, 317, '达孜县', 3, 540126);
INSERT INTO `litemall_region` VALUES (2805, 317, '墨竹工卡县', 3, 540127);
INSERT INTO `litemall_region` VALUES (2806, 318, '桑珠孜区', 3, 540202);
INSERT INTO `litemall_region` VALUES (2807, 318, '南木林县', 3, 540221);
INSERT INTO `litemall_region` VALUES (2808, 318, '江孜县', 3, 540222);
INSERT INTO `litemall_region` VALUES (2809, 318, '定日县', 3, 540223);
INSERT INTO `litemall_region` VALUES (2810, 318, '萨迦县', 3, 540224);
INSERT INTO `litemall_region` VALUES (2811, 318, '拉孜县', 3, 540225);
INSERT INTO `litemall_region` VALUES (2812, 318, '昂仁县', 3, 540226);
INSERT INTO `litemall_region` VALUES (2813, 318, '谢通门县', 3, 540227);
INSERT INTO `litemall_region` VALUES (2814, 318, '白朗县', 3, 540228);
INSERT INTO `litemall_region` VALUES (2815, 318, '仁布县', 3, 540229);
INSERT INTO `litemall_region` VALUES (2816, 318, '康马县', 3, 540230);
INSERT INTO `litemall_region` VALUES (2817, 318, '定结县', 3, 540231);
INSERT INTO `litemall_region` VALUES (2818, 318, '仲巴县', 3, 540232);
INSERT INTO `litemall_region` VALUES (2819, 318, '亚东县', 3, 540233);
INSERT INTO `litemall_region` VALUES (2820, 318, '吉隆县', 3, 540234);
INSERT INTO `litemall_region` VALUES (2821, 318, '聂拉木县', 3, 540235);
INSERT INTO `litemall_region` VALUES (2822, 318, '萨嘎县', 3, 540236);
INSERT INTO `litemall_region` VALUES (2823, 318, '岗巴县', 3, 540237);
INSERT INTO `litemall_region` VALUES (2824, 319, '卡若区', 3, 540302);
INSERT INTO `litemall_region` VALUES (2825, 319, '江达县', 3, 540321);
INSERT INTO `litemall_region` VALUES (2826, 319, '贡觉县', 3, 540322);
INSERT INTO `litemall_region` VALUES (2827, 319, '类乌齐县', 3, 540323);
INSERT INTO `litemall_region` VALUES (2828, 319, '丁青县', 3, 540324);
INSERT INTO `litemall_region` VALUES (2829, 319, '察雅县', 3, 540325);
INSERT INTO `litemall_region` VALUES (2830, 319, '八宿县', 3, 540326);
INSERT INTO `litemall_region` VALUES (2831, 319, '左贡县', 3, 540327);
INSERT INTO `litemall_region` VALUES (2832, 319, '芒康县', 3, 540328);
INSERT INTO `litemall_region` VALUES (2833, 319, '洛隆县', 3, 540329);
INSERT INTO `litemall_region` VALUES (2834, 319, '边坝县', 3, 540330);
INSERT INTO `litemall_region` VALUES (2835, 320, '巴宜区', 3, 540402);
INSERT INTO `litemall_region` VALUES (2836, 320, '工布江达县', 3, 540421);
INSERT INTO `litemall_region` VALUES (2837, 320, '米林县', 3, 540422);
INSERT INTO `litemall_region` VALUES (2838, 320, '墨脱县', 3, 540423);
INSERT INTO `litemall_region` VALUES (2839, 320, '波密县', 3, 540424);
INSERT INTO `litemall_region` VALUES (2840, 320, '察隅县', 3, 540425);
INSERT INTO `litemall_region` VALUES (2841, 320, '朗县', 3, 540426);
INSERT INTO `litemall_region` VALUES (2842, 321, '乃东区', 3, 540502);
INSERT INTO `litemall_region` VALUES (2843, 321, '扎囊县', 3, 540521);
INSERT INTO `litemall_region` VALUES (2844, 321, '贡嘎县', 3, 540522);
INSERT INTO `litemall_region` VALUES (2845, 321, '桑日县', 3, 540523);
INSERT INTO `litemall_region` VALUES (2846, 321, '琼结县', 3, 540524);
INSERT INTO `litemall_region` VALUES (2847, 321, '曲松县', 3, 540525);
INSERT INTO `litemall_region` VALUES (2848, 321, '措美县', 3, 540526);
INSERT INTO `litemall_region` VALUES (2849, 321, '洛扎县', 3, 540527);
INSERT INTO `litemall_region` VALUES (2850, 321, '加查县', 3, 540528);
INSERT INTO `litemall_region` VALUES (2851, 321, '隆子县', 3, 540529);
INSERT INTO `litemall_region` VALUES (2852, 321, '错那县', 3, 540530);
INSERT INTO `litemall_region` VALUES (2853, 321, '浪卡子县', 3, 540531);
INSERT INTO `litemall_region` VALUES (2854, 322, '那曲县', 3, 542421);
INSERT INTO `litemall_region` VALUES (2855, 322, '嘉黎县', 3, 542422);
INSERT INTO `litemall_region` VALUES (2856, 322, '比如县', 3, 542423);
INSERT INTO `litemall_region` VALUES (2857, 322, '聂荣县', 3, 542424);
INSERT INTO `litemall_region` VALUES (2858, 322, '安多县', 3, 542425);
INSERT INTO `litemall_region` VALUES (2859, 322, '申扎县', 3, 542426);
INSERT INTO `litemall_region` VALUES (2860, 322, '索县', 3, 542427);
INSERT INTO `litemall_region` VALUES (2861, 322, '班戈县', 3, 542428);
INSERT INTO `litemall_region` VALUES (2862, 322, '巴青县', 3, 542429);
INSERT INTO `litemall_region` VALUES (2863, 322, '尼玛县', 3, 542430);
INSERT INTO `litemall_region` VALUES (2864, 322, '双湖县', 3, 542431);
INSERT INTO `litemall_region` VALUES (2865, 323, '普兰县', 3, 542521);
INSERT INTO `litemall_region` VALUES (2866, 323, '札达县', 3, 542522);
INSERT INTO `litemall_region` VALUES (2867, 323, '噶尔县', 3, 542523);
INSERT INTO `litemall_region` VALUES (2868, 323, '日土县', 3, 542524);
INSERT INTO `litemall_region` VALUES (2869, 323, '革吉县', 3, 542525);
INSERT INTO `litemall_region` VALUES (2870, 323, '改则县', 3, 542526);
INSERT INTO `litemall_region` VALUES (2871, 323, '措勤县', 3, 542527);
INSERT INTO `litemall_region` VALUES (2872, 324, '新城区', 3, 610102);
INSERT INTO `litemall_region` VALUES (2873, 324, '碑林区', 3, 610103);
INSERT INTO `litemall_region` VALUES (2874, 324, '莲湖区', 3, 610104);
INSERT INTO `litemall_region` VALUES (2875, 324, '灞桥区', 3, 610111);
INSERT INTO `litemall_region` VALUES (2876, 324, '未央区', 3, 610112);
INSERT INTO `litemall_region` VALUES (2877, 324, '雁塔区', 3, 610113);
INSERT INTO `litemall_region` VALUES (2878, 324, '阎良区', 3, 610114);
INSERT INTO `litemall_region` VALUES (2879, 324, '临潼区', 3, 610115);
INSERT INTO `litemall_region` VALUES (2880, 324, '长安区', 3, 610116);
INSERT INTO `litemall_region` VALUES (2881, 324, '高陵区', 3, 610117);
INSERT INTO `litemall_region` VALUES (2882, 324, '蓝田县', 3, 610122);
INSERT INTO `litemall_region` VALUES (2883, 324, '周至县', 3, 610124);
INSERT INTO `litemall_region` VALUES (2884, 324, '户县', 3, 610125);
INSERT INTO `litemall_region` VALUES (2885, 325, '王益区', 3, 610202);
INSERT INTO `litemall_region` VALUES (2886, 325, '印台区', 3, 610203);
INSERT INTO `litemall_region` VALUES (2887, 325, '耀州区', 3, 610204);
INSERT INTO `litemall_region` VALUES (2888, 325, '宜君县', 3, 610222);
INSERT INTO `litemall_region` VALUES (2889, 326, '渭滨区', 3, 610302);
INSERT INTO `litemall_region` VALUES (2890, 326, '金台区', 3, 610303);
INSERT INTO `litemall_region` VALUES (2891, 326, '陈仓区', 3, 610304);
INSERT INTO `litemall_region` VALUES (2892, 326, '凤翔县', 3, 610322);
INSERT INTO `litemall_region` VALUES (2893, 326, '岐山县', 3, 610323);
INSERT INTO `litemall_region` VALUES (2894, 326, '扶风县', 3, 610324);
INSERT INTO `litemall_region` VALUES (2895, 326, '眉县', 3, 610326);
INSERT INTO `litemall_region` VALUES (2896, 326, '陇县', 3, 610327);
INSERT INTO `litemall_region` VALUES (2897, 326, '千阳县', 3, 610328);
INSERT INTO `litemall_region` VALUES (2898, 326, '麟游县', 3, 610329);
INSERT INTO `litemall_region` VALUES (2899, 326, '凤县', 3, 610330);
INSERT INTO `litemall_region` VALUES (2900, 326, '太白县', 3, 610331);
INSERT INTO `litemall_region` VALUES (2901, 327, '秦都区', 3, 610402);
INSERT INTO `litemall_region` VALUES (2902, 327, '杨陵区', 3, 610403);
INSERT INTO `litemall_region` VALUES (2903, 327, '渭城区', 3, 610404);
INSERT INTO `litemall_region` VALUES (2904, 327, '三原县', 3, 610422);
INSERT INTO `litemall_region` VALUES (2905, 327, '泾阳县', 3, 610423);
INSERT INTO `litemall_region` VALUES (2906, 327, '乾县', 3, 610424);
INSERT INTO `litemall_region` VALUES (2907, 327, '礼泉县', 3, 610425);
INSERT INTO `litemall_region` VALUES (2908, 327, '永寿县', 3, 610426);
INSERT INTO `litemall_region` VALUES (2909, 327, '彬县', 3, 610427);
INSERT INTO `litemall_region` VALUES (2910, 327, '长武县', 3, 610428);
INSERT INTO `litemall_region` VALUES (2911, 327, '旬邑县', 3, 610429);
INSERT INTO `litemall_region` VALUES (2912, 327, '淳化县', 3, 610430);
INSERT INTO `litemall_region` VALUES (2913, 327, '武功县', 3, 610431);
INSERT INTO `litemall_region` VALUES (2914, 327, '兴平市', 3, 610481);
INSERT INTO `litemall_region` VALUES (2915, 328, '临渭区', 3, 610502);
INSERT INTO `litemall_region` VALUES (2916, 328, '华州区', 3, 610503);
INSERT INTO `litemall_region` VALUES (2917, 328, '潼关县', 3, 610522);
INSERT INTO `litemall_region` VALUES (2918, 328, '大荔县', 3, 610523);
INSERT INTO `litemall_region` VALUES (2919, 328, '合阳县', 3, 610524);
INSERT INTO `litemall_region` VALUES (2920, 328, '澄城县', 3, 610525);
INSERT INTO `litemall_region` VALUES (2921, 328, '蒲城县', 3, 610526);
INSERT INTO `litemall_region` VALUES (2922, 328, '白水县', 3, 610527);
INSERT INTO `litemall_region` VALUES (2923, 328, '富平县', 3, 610528);
INSERT INTO `litemall_region` VALUES (2924, 328, '韩城市', 3, 610581);
INSERT INTO `litemall_region` VALUES (2925, 328, '华阴市', 3, 610582);
INSERT INTO `litemall_region` VALUES (2926, 329, '宝塔区', 3, 610602);
INSERT INTO `litemall_region` VALUES (2927, 329, '安塞区', 3, 610603);
INSERT INTO `litemall_region` VALUES (2928, 329, '延长县', 3, 610621);
INSERT INTO `litemall_region` VALUES (2929, 329, '延川县', 3, 610622);
INSERT INTO `litemall_region` VALUES (2930, 329, '子长县', 3, 610623);
INSERT INTO `litemall_region` VALUES (2931, 329, '志丹县', 3, 610625);
INSERT INTO `litemall_region` VALUES (2932, 329, '吴起县', 3, 610626);
INSERT INTO `litemall_region` VALUES (2933, 329, '甘泉县', 3, 610627);
INSERT INTO `litemall_region` VALUES (2934, 329, '富县', 3, 610628);
INSERT INTO `litemall_region` VALUES (2935, 329, '洛川县', 3, 610629);
INSERT INTO `litemall_region` VALUES (2936, 329, '宜川县', 3, 610630);
INSERT INTO `litemall_region` VALUES (2937, 329, '黄龙县', 3, 610631);
INSERT INTO `litemall_region` VALUES (2938, 329, '黄陵县', 3, 610632);
INSERT INTO `litemall_region` VALUES (2939, 330, '汉台区', 3, 610702);
INSERT INTO `litemall_region` VALUES (2940, 330, '南郑县', 3, 610721);
INSERT INTO `litemall_region` VALUES (2941, 330, '城固县', 3, 610722);
INSERT INTO `litemall_region` VALUES (2942, 330, '洋县', 3, 610723);
INSERT INTO `litemall_region` VALUES (2943, 330, '西乡县', 3, 610724);
INSERT INTO `litemall_region` VALUES (2944, 330, '勉县', 3, 610725);
INSERT INTO `litemall_region` VALUES (2945, 330, '宁强县', 3, 610726);
INSERT INTO `litemall_region` VALUES (2946, 330, '略阳县', 3, 610727);
INSERT INTO `litemall_region` VALUES (2947, 330, '镇巴县', 3, 610728);
INSERT INTO `litemall_region` VALUES (2948, 330, '留坝县', 3, 610729);
INSERT INTO `litemall_region` VALUES (2949, 330, '佛坪县', 3, 610730);
INSERT INTO `litemall_region` VALUES (2950, 331, '榆阳区', 3, 610802);
INSERT INTO `litemall_region` VALUES (2951, 331, '横山区', 3, 610803);
INSERT INTO `litemall_region` VALUES (2952, 331, '神木县', 3, 610821);
INSERT INTO `litemall_region` VALUES (2953, 331, '府谷县', 3, 610822);
INSERT INTO `litemall_region` VALUES (2954, 331, '靖边县', 3, 610824);
INSERT INTO `litemall_region` VALUES (2955, 331, '定边县', 3, 610825);
INSERT INTO `litemall_region` VALUES (2956, 331, '绥德县', 3, 610826);
INSERT INTO `litemall_region` VALUES (2957, 331, '米脂县', 3, 610827);
INSERT INTO `litemall_region` VALUES (2958, 331, '佳县', 3, 610828);
INSERT INTO `litemall_region` VALUES (2959, 331, '吴堡县', 3, 610829);
INSERT INTO `litemall_region` VALUES (2960, 331, '清涧县', 3, 610830);
INSERT INTO `litemall_region` VALUES (2961, 331, '子洲县', 3, 610831);
INSERT INTO `litemall_region` VALUES (2962, 332, '汉滨区', 3, 610902);
INSERT INTO `litemall_region` VALUES (2963, 332, '汉阴县', 3, 610921);
INSERT INTO `litemall_region` VALUES (2964, 332, '石泉县', 3, 610922);
INSERT INTO `litemall_region` VALUES (2965, 332, '宁陕县', 3, 610923);
INSERT INTO `litemall_region` VALUES (2966, 332, '紫阳县', 3, 610924);
INSERT INTO `litemall_region` VALUES (2967, 332, '岚皋县', 3, 610925);
INSERT INTO `litemall_region` VALUES (2968, 332, '平利县', 3, 610926);
INSERT INTO `litemall_region` VALUES (2969, 332, '镇坪县', 3, 610927);
INSERT INTO `litemall_region` VALUES (2970, 332, '旬阳县', 3, 610928);
INSERT INTO `litemall_region` VALUES (2971, 332, '白河县', 3, 610929);
INSERT INTO `litemall_region` VALUES (2972, 333, '商州区', 3, 611002);
INSERT INTO `litemall_region` VALUES (2973, 333, '洛南县', 3, 611021);
INSERT INTO `litemall_region` VALUES (2974, 333, '丹凤县', 3, 611022);
INSERT INTO `litemall_region` VALUES (2975, 333, '商南县', 3, 611023);
INSERT INTO `litemall_region` VALUES (2976, 333, '山阳县', 3, 611024);
INSERT INTO `litemall_region` VALUES (2977, 333, '镇安县', 3, 611025);
INSERT INTO `litemall_region` VALUES (2978, 333, '柞水县', 3, 611026);
INSERT INTO `litemall_region` VALUES (2979, 334, '城关区', 3, 620102);
INSERT INTO `litemall_region` VALUES (2980, 334, '七里河区', 3, 620103);
INSERT INTO `litemall_region` VALUES (2981, 334, '西固区', 3, 620104);
INSERT INTO `litemall_region` VALUES (2982, 334, '安宁区', 3, 620105);
INSERT INTO `litemall_region` VALUES (2983, 334, '红古区', 3, 620111);
INSERT INTO `litemall_region` VALUES (2984, 334, '永登县', 3, 620121);
INSERT INTO `litemall_region` VALUES (2985, 334, '皋兰县', 3, 620122);
INSERT INTO `litemall_region` VALUES (2986, 334, '榆中县', 3, 620123);
INSERT INTO `litemall_region` VALUES (2987, 335, '嘉峪关市', 3, 620201);
INSERT INTO `litemall_region` VALUES (2988, 336, '金川区', 3, 620302);
INSERT INTO `litemall_region` VALUES (2989, 336, '永昌县', 3, 620321);
INSERT INTO `litemall_region` VALUES (2990, 337, '白银区', 3, 620402);
INSERT INTO `litemall_region` VALUES (2991, 337, '平川区', 3, 620403);
INSERT INTO `litemall_region` VALUES (2992, 337, '靖远县', 3, 620421);
INSERT INTO `litemall_region` VALUES (2993, 337, '会宁县', 3, 620422);
INSERT INTO `litemall_region` VALUES (2994, 337, '景泰县', 3, 620423);
INSERT INTO `litemall_region` VALUES (2995, 338, '秦州区', 3, 620502);
INSERT INTO `litemall_region` VALUES (2996, 338, '麦积区', 3, 620503);
INSERT INTO `litemall_region` VALUES (2997, 338, '清水县', 3, 620521);
INSERT INTO `litemall_region` VALUES (2998, 338, '秦安县', 3, 620522);
INSERT INTO `litemall_region` VALUES (2999, 338, '甘谷县', 3, 620523);
INSERT INTO `litemall_region` VALUES (3000, 338, '武山县', 3, 620524);
INSERT INTO `litemall_region` VALUES (3001, 338, '张家川回族自治县', 3, 620525);
INSERT INTO `litemall_region` VALUES (3002, 339, '凉州区', 3, 620602);
INSERT INTO `litemall_region` VALUES (3003, 339, '民勤县', 3, 620621);
INSERT INTO `litemall_region` VALUES (3004, 339, '古浪县', 3, 620622);
INSERT INTO `litemall_region` VALUES (3005, 339, '天祝藏族自治县', 3, 620623);
INSERT INTO `litemall_region` VALUES (3006, 340, '甘州区', 3, 620702);
INSERT INTO `litemall_region` VALUES (3007, 340, '肃南裕固族自治县', 3, 620721);
INSERT INTO `litemall_region` VALUES (3008, 340, '民乐县', 3, 620722);
INSERT INTO `litemall_region` VALUES (3009, 340, '临泽县', 3, 620723);
INSERT INTO `litemall_region` VALUES (3010, 340, '高台县', 3, 620724);
INSERT INTO `litemall_region` VALUES (3011, 340, '山丹县', 3, 620725);
INSERT INTO `litemall_region` VALUES (3012, 341, '崆峒区', 3, 620802);
INSERT INTO `litemall_region` VALUES (3013, 341, '泾川县', 3, 620821);
INSERT INTO `litemall_region` VALUES (3014, 341, '灵台县', 3, 620822);
INSERT INTO `litemall_region` VALUES (3015, 341, '崇信县', 3, 620823);
INSERT INTO `litemall_region` VALUES (3016, 341, '华亭县', 3, 620824);
INSERT INTO `litemall_region` VALUES (3017, 341, '庄浪县', 3, 620825);
INSERT INTO `litemall_region` VALUES (3018, 341, '静宁县', 3, 620826);
INSERT INTO `litemall_region` VALUES (3019, 342, '肃州区', 3, 620902);
INSERT INTO `litemall_region` VALUES (3020, 342, '金塔县', 3, 620921);
INSERT INTO `litemall_region` VALUES (3021, 342, '瓜州县', 3, 620922);
INSERT INTO `litemall_region` VALUES (3022, 342, '肃北蒙古族自治县', 3, 620923);
INSERT INTO `litemall_region` VALUES (3023, 342, '阿克塞哈萨克族自治县', 3, 620924);
INSERT INTO `litemall_region` VALUES (3024, 342, '玉门市', 3, 620981);
INSERT INTO `litemall_region` VALUES (3025, 342, '敦煌市', 3, 620982);
INSERT INTO `litemall_region` VALUES (3026, 343, '西峰区', 3, 621002);
INSERT INTO `litemall_region` VALUES (3027, 343, '庆城县', 3, 621021);
INSERT INTO `litemall_region` VALUES (3028, 343, '环县', 3, 621022);
INSERT INTO `litemall_region` VALUES (3029, 343, '华池县', 3, 621023);
INSERT INTO `litemall_region` VALUES (3030, 343, '合水县', 3, 621024);
INSERT INTO `litemall_region` VALUES (3031, 343, '正宁县', 3, 621025);
INSERT INTO `litemall_region` VALUES (3032, 343, '宁县', 3, 621026);
INSERT INTO `litemall_region` VALUES (3033, 343, '镇原县', 3, 621027);
INSERT INTO `litemall_region` VALUES (3034, 344, '安定区', 3, 621102);
INSERT INTO `litemall_region` VALUES (3035, 344, '通渭县', 3, 621121);
INSERT INTO `litemall_region` VALUES (3036, 344, '陇西县', 3, 621122);
INSERT INTO `litemall_region` VALUES (3037, 344, '渭源县', 3, 621123);
INSERT INTO `litemall_region` VALUES (3038, 344, '临洮县', 3, 621124);
INSERT INTO `litemall_region` VALUES (3039, 344, '漳县', 3, 621125);
INSERT INTO `litemall_region` VALUES (3040, 344, '岷县', 3, 621126);
INSERT INTO `litemall_region` VALUES (3041, 345, '武都区', 3, 621202);
INSERT INTO `litemall_region` VALUES (3042, 345, '成县', 3, 621221);
INSERT INTO `litemall_region` VALUES (3043, 345, '文县', 3, 621222);
INSERT INTO `litemall_region` VALUES (3044, 345, '宕昌县', 3, 621223);
INSERT INTO `litemall_region` VALUES (3045, 345, '康县', 3, 621224);
INSERT INTO `litemall_region` VALUES (3046, 345, '西和县', 3, 621225);
INSERT INTO `litemall_region` VALUES (3047, 345, '礼县', 3, 621226);
INSERT INTO `litemall_region` VALUES (3048, 345, '徽县', 3, 621227);
INSERT INTO `litemall_region` VALUES (3049, 345, '两当县', 3, 621228);
INSERT INTO `litemall_region` VALUES (3050, 346, '临夏市', 3, 622901);
INSERT INTO `litemall_region` VALUES (3051, 346, '临夏县', 3, 622921);
INSERT INTO `litemall_region` VALUES (3052, 346, '康乐县', 3, 622922);
INSERT INTO `litemall_region` VALUES (3053, 346, '永靖县', 3, 622923);
INSERT INTO `litemall_region` VALUES (3054, 346, '广河县', 3, 622924);
INSERT INTO `litemall_region` VALUES (3055, 346, '和政县', 3, 622925);
INSERT INTO `litemall_region` VALUES (3056, 346, '东乡族自治县', 3, 622926);
INSERT INTO `litemall_region` VALUES (3057, 346, '积石山保安族东乡族撒拉族自治县', 3, 622927);
INSERT INTO `litemall_region` VALUES (3058, 347, '合作市', 3, 623001);
INSERT INTO `litemall_region` VALUES (3059, 347, '临潭县', 3, 623021);
INSERT INTO `litemall_region` VALUES (3060, 347, '卓尼县', 3, 623022);
INSERT INTO `litemall_region` VALUES (3061, 347, '舟曲县', 3, 623023);
INSERT INTO `litemall_region` VALUES (3062, 347, '迭部县', 3, 623024);
INSERT INTO `litemall_region` VALUES (3063, 347, '玛曲县', 3, 623025);
INSERT INTO `litemall_region` VALUES (3064, 347, '碌曲县', 3, 623026);
INSERT INTO `litemall_region` VALUES (3065, 347, '夏河县', 3, 623027);
INSERT INTO `litemall_region` VALUES (3066, 348, '城东区', 3, 630102);
INSERT INTO `litemall_region` VALUES (3067, 348, '城中区', 3, 630103);
INSERT INTO `litemall_region` VALUES (3068, 348, '城西区', 3, 630104);
INSERT INTO `litemall_region` VALUES (3069, 348, '城北区', 3, 630105);
INSERT INTO `litemall_region` VALUES (3070, 348, '大通回族土族自治县', 3, 630121);
INSERT INTO `litemall_region` VALUES (3071, 348, '湟中县', 3, 630122);
INSERT INTO `litemall_region` VALUES (3072, 348, '湟源县', 3, 630123);
INSERT INTO `litemall_region` VALUES (3073, 349, '乐都区', 3, 630202);
INSERT INTO `litemall_region` VALUES (3074, 349, '平安区', 3, 630203);
INSERT INTO `litemall_region` VALUES (3075, 349, '民和回族土族自治县', 3, 630222);
INSERT INTO `litemall_region` VALUES (3076, 349, '互助土族自治县', 3, 630223);
INSERT INTO `litemall_region` VALUES (3077, 349, '化隆回族自治县', 3, 630224);
INSERT INTO `litemall_region` VALUES (3078, 349, '循化撒拉族自治县', 3, 630225);
INSERT INTO `litemall_region` VALUES (3079, 350, '门源回族自治县', 3, 632221);
INSERT INTO `litemall_region` VALUES (3080, 350, '祁连县', 3, 632222);
INSERT INTO `litemall_region` VALUES (3081, 350, '海晏县', 3, 632223);
INSERT INTO `litemall_region` VALUES (3082, 350, '刚察县', 3, 632224);
INSERT INTO `litemall_region` VALUES (3083, 351, '同仁县', 3, 632321);
INSERT INTO `litemall_region` VALUES (3084, 351, '尖扎县', 3, 632322);
INSERT INTO `litemall_region` VALUES (3085, 351, '泽库县', 3, 632323);
INSERT INTO `litemall_region` VALUES (3086, 351, '河南蒙古族自治县', 3, 632324);
INSERT INTO `litemall_region` VALUES (3087, 352, '共和县', 3, 632521);
INSERT INTO `litemall_region` VALUES (3088, 352, '同德县', 3, 632522);
INSERT INTO `litemall_region` VALUES (3089, 352, '贵德县', 3, 632523);
INSERT INTO `litemall_region` VALUES (3090, 352, '兴海县', 3, 632524);
INSERT INTO `litemall_region` VALUES (3091, 352, '贵南县', 3, 632525);
INSERT INTO `litemall_region` VALUES (3092, 353, '玛沁县', 3, 632621);
INSERT INTO `litemall_region` VALUES (3093, 353, '班玛县', 3, 632622);
INSERT INTO `litemall_region` VALUES (3094, 353, '甘德县', 3, 632623);
INSERT INTO `litemall_region` VALUES (3095, 353, '达日县', 3, 632624);
INSERT INTO `litemall_region` VALUES (3096, 353, '久治县', 3, 632625);
INSERT INTO `litemall_region` VALUES (3097, 353, '玛多县', 3, 632626);
INSERT INTO `litemall_region` VALUES (3098, 354, '玉树市', 3, 632701);
INSERT INTO `litemall_region` VALUES (3099, 354, '杂多县', 3, 632722);
INSERT INTO `litemall_region` VALUES (3100, 354, '称多县', 3, 632723);
INSERT INTO `litemall_region` VALUES (3101, 354, '治多县', 3, 632724);
INSERT INTO `litemall_region` VALUES (3102, 354, '囊谦县', 3, 632725);
INSERT INTO `litemall_region` VALUES (3103, 354, '曲麻莱县', 3, 632726);
INSERT INTO `litemall_region` VALUES (3104, 355, '格尔木市', 3, 632801);
INSERT INTO `litemall_region` VALUES (3105, 355, '德令哈市', 3, 632802);
INSERT INTO `litemall_region` VALUES (3106, 355, '乌兰县', 3, 632821);
INSERT INTO `litemall_region` VALUES (3107, 355, '都兰县', 3, 632822);
INSERT INTO `litemall_region` VALUES (3108, 355, '天峻县', 3, 632823);
INSERT INTO `litemall_region` VALUES (3109, 356, '兴庆区', 3, 640104);
INSERT INTO `litemall_region` VALUES (3110, 356, '西夏区', 3, 640105);
INSERT INTO `litemall_region` VALUES (3111, 356, '金凤区', 3, 640106);
INSERT INTO `litemall_region` VALUES (3112, 356, '永宁县', 3, 640121);
INSERT INTO `litemall_region` VALUES (3113, 356, '贺兰县', 3, 640122);
INSERT INTO `litemall_region` VALUES (3114, 356, '灵武市', 3, 640181);
INSERT INTO `litemall_region` VALUES (3115, 357, '大武口区', 3, 640202);
INSERT INTO `litemall_region` VALUES (3116, 357, '惠农区', 3, 640205);
INSERT INTO `litemall_region` VALUES (3117, 357, '平罗县', 3, 640221);
INSERT INTO `litemall_region` VALUES (3118, 358, '利通区', 3, 640302);
INSERT INTO `litemall_region` VALUES (3119, 358, '红寺堡区', 3, 640303);
INSERT INTO `litemall_region` VALUES (3120, 358, '盐池县', 3, 640323);
INSERT INTO `litemall_region` VALUES (3121, 358, '同心县', 3, 640324);
INSERT INTO `litemall_region` VALUES (3122, 358, '青铜峡市', 3, 640381);
INSERT INTO `litemall_region` VALUES (3123, 359, '原州区', 3, 640402);
INSERT INTO `litemall_region` VALUES (3124, 359, '西吉县', 3, 640422);
INSERT INTO `litemall_region` VALUES (3125, 359, '隆德县', 3, 640423);
INSERT INTO `litemall_region` VALUES (3126, 359, '泾源县', 3, 640424);
INSERT INTO `litemall_region` VALUES (3127, 359, '彭阳县', 3, 640425);
INSERT INTO `litemall_region` VALUES (3128, 360, '沙坡头区', 3, 640502);
INSERT INTO `litemall_region` VALUES (3129, 360, '中宁县', 3, 640521);
INSERT INTO `litemall_region` VALUES (3130, 360, '海原县', 3, 640522);
INSERT INTO `litemall_region` VALUES (3131, 361, '天山区', 3, 650102);
INSERT INTO `litemall_region` VALUES (3132, 361, '沙依巴克区', 3, 650103);
INSERT INTO `litemall_region` VALUES (3133, 361, '新市区', 3, 650104);
INSERT INTO `litemall_region` VALUES (3134, 361, '水磨沟区', 3, 650105);
INSERT INTO `litemall_region` VALUES (3135, 361, '头屯河区', 3, 650106);
INSERT INTO `litemall_region` VALUES (3136, 361, '达坂城区', 3, 650107);
INSERT INTO `litemall_region` VALUES (3137, 361, '米东区', 3, 650109);
INSERT INTO `litemall_region` VALUES (3138, 361, '乌鲁木齐县', 3, 650121);
INSERT INTO `litemall_region` VALUES (3139, 362, '独山子区', 3, 650202);
INSERT INTO `litemall_region` VALUES (3140, 362, '克拉玛依区', 3, 650203);
INSERT INTO `litemall_region` VALUES (3141, 362, '白碱滩区', 3, 650204);
INSERT INTO `litemall_region` VALUES (3142, 362, '乌尔禾区', 3, 650205);
INSERT INTO `litemall_region` VALUES (3143, 363, '高昌区', 3, 650402);
INSERT INTO `litemall_region` VALUES (3144, 363, '鄯善县', 3, 650421);
INSERT INTO `litemall_region` VALUES (3145, 363, '托克逊县', 3, 650422);
INSERT INTO `litemall_region` VALUES (3146, 364, '伊州区', 3, 650502);
INSERT INTO `litemall_region` VALUES (3147, 364, '巴里坤哈萨克自治县', 3, 650521);
INSERT INTO `litemall_region` VALUES (3148, 364, '伊吾县', 3, 650522);
INSERT INTO `litemall_region` VALUES (3149, 365, '昌吉市', 3, 652301);
INSERT INTO `litemall_region` VALUES (3150, 365, '阜康市', 3, 652302);
INSERT INTO `litemall_region` VALUES (3151, 365, '呼图壁县', 3, 652323);
INSERT INTO `litemall_region` VALUES (3152, 365, '玛纳斯县', 3, 652324);
INSERT INTO `litemall_region` VALUES (3153, 365, '奇台县', 3, 652325);
INSERT INTO `litemall_region` VALUES (3154, 365, '吉木萨尔县', 3, 652327);
INSERT INTO `litemall_region` VALUES (3155, 365, '木垒哈萨克自治县', 3, 652328);
INSERT INTO `litemall_region` VALUES (3156, 366, '博乐市', 3, 652701);
INSERT INTO `litemall_region` VALUES (3157, 366, '阿拉山口市', 3, 652702);
INSERT INTO `litemall_region` VALUES (3158, 366, '精河县', 3, 652722);
INSERT INTO `litemall_region` VALUES (3159, 366, '温泉县', 3, 652723);
INSERT INTO `litemall_region` VALUES (3160, 367, '库尔勒市', 3, 652801);
INSERT INTO `litemall_region` VALUES (3161, 367, '轮台县', 3, 652822);
INSERT INTO `litemall_region` VALUES (3162, 367, '尉犁县', 3, 652823);
INSERT INTO `litemall_region` VALUES (3163, 367, '若羌县', 3, 652824);
INSERT INTO `litemall_region` VALUES (3164, 367, '且末县', 3, 652825);
INSERT INTO `litemall_region` VALUES (3165, 367, '焉耆回族自治县', 3, 652826);
INSERT INTO `litemall_region` VALUES (3166, 367, '和静县', 3, 652827);
INSERT INTO `litemall_region` VALUES (3167, 367, '和硕县', 3, 652828);
INSERT INTO `litemall_region` VALUES (3168, 367, '博湖县', 3, 652829);
INSERT INTO `litemall_region` VALUES (3169, 368, '阿克苏市', 3, 652901);
INSERT INTO `litemall_region` VALUES (3170, 368, '温宿县', 3, 652922);
INSERT INTO `litemall_region` VALUES (3171, 368, '库车县', 3, 652923);
INSERT INTO `litemall_region` VALUES (3172, 368, '沙雅县', 3, 652924);
INSERT INTO `litemall_region` VALUES (3173, 368, '新和县', 3, 652925);
INSERT INTO `litemall_region` VALUES (3174, 368, '拜城县', 3, 652926);
INSERT INTO `litemall_region` VALUES (3175, 368, '乌什县', 3, 652927);
INSERT INTO `litemall_region` VALUES (3176, 368, '阿瓦提县', 3, 652928);
INSERT INTO `litemall_region` VALUES (3177, 368, '柯坪县', 3, 652929);
INSERT INTO `litemall_region` VALUES (3178, 369, '阿图什市', 3, 653001);
INSERT INTO `litemall_region` VALUES (3179, 369, '阿克陶县', 3, 653022);
INSERT INTO `litemall_region` VALUES (3180, 369, '阿合奇县', 3, 653023);
INSERT INTO `litemall_region` VALUES (3181, 369, '乌恰县', 3, 653024);
INSERT INTO `litemall_region` VALUES (3182, 370, '喀什市', 3, 653101);
INSERT INTO `litemall_region` VALUES (3183, 370, '疏附县', 3, 653121);
INSERT INTO `litemall_region` VALUES (3184, 370, '疏勒县', 3, 653122);
INSERT INTO `litemall_region` VALUES (3185, 370, '英吉沙县', 3, 653123);
INSERT INTO `litemall_region` VALUES (3186, 370, '泽普县', 3, 653124);
INSERT INTO `litemall_region` VALUES (3187, 370, '莎车县', 3, 653125);
INSERT INTO `litemall_region` VALUES (3188, 370, '叶城县', 3, 653126);
INSERT INTO `litemall_region` VALUES (3189, 370, '麦盖提县', 3, 653127);
INSERT INTO `litemall_region` VALUES (3190, 370, '岳普湖县', 3, 653128);
INSERT INTO `litemall_region` VALUES (3191, 370, '伽师县', 3, 653129);
INSERT INTO `litemall_region` VALUES (3192, 370, '巴楚县', 3, 653130);
INSERT INTO `litemall_region` VALUES (3193, 370, '塔什库尔干塔吉克自治县', 3, 653131);
INSERT INTO `litemall_region` VALUES (3194, 371, '和田市', 3, 653201);
INSERT INTO `litemall_region` VALUES (3195, 371, '和田县', 3, 653221);
INSERT INTO `litemall_region` VALUES (3196, 371, '墨玉县', 3, 653222);
INSERT INTO `litemall_region` VALUES (3197, 371, '皮山县', 3, 653223);
INSERT INTO `litemall_region` VALUES (3198, 371, '洛浦县', 3, 653224);
INSERT INTO `litemall_region` VALUES (3199, 371, '策勒县', 3, 653225);
INSERT INTO `litemall_region` VALUES (3200, 371, '于田县', 3, 653226);
INSERT INTO `litemall_region` VALUES (3201, 371, '民丰县', 3, 653227);
INSERT INTO `litemall_region` VALUES (3202, 372, '伊宁市', 3, 654002);
INSERT INTO `litemall_region` VALUES (3203, 372, '奎屯市', 3, 654003);
INSERT INTO `litemall_region` VALUES (3204, 372, '霍尔果斯市', 3, 654004);
INSERT INTO `litemall_region` VALUES (3205, 372, '伊宁县', 3, 654021);
INSERT INTO `litemall_region` VALUES (3206, 372, '察布查尔锡伯自治县', 3, 654022);
INSERT INTO `litemall_region` VALUES (3207, 372, '霍城县', 3, 654023);
INSERT INTO `litemall_region` VALUES (3208, 372, '巩留县', 3, 654024);
INSERT INTO `litemall_region` VALUES (3209, 372, '新源县', 3, 654025);
INSERT INTO `litemall_region` VALUES (3210, 372, '昭苏县', 3, 654026);
INSERT INTO `litemall_region` VALUES (3211, 372, '特克斯县', 3, 654027);
INSERT INTO `litemall_region` VALUES (3212, 372, '尼勒克县', 3, 654028);
INSERT INTO `litemall_region` VALUES (3213, 373, '塔城市', 3, 654201);
INSERT INTO `litemall_region` VALUES (3214, 373, '乌苏市', 3, 654202);
INSERT INTO `litemall_region` VALUES (3215, 373, '额敏县', 3, 654221);
INSERT INTO `litemall_region` VALUES (3216, 373, '沙湾县', 3, 654223);
INSERT INTO `litemall_region` VALUES (3217, 373, '托里县', 3, 654224);
INSERT INTO `litemall_region` VALUES (3218, 373, '裕民县', 3, 654225);
INSERT INTO `litemall_region` VALUES (3219, 373, '和布克赛尔蒙古自治县', 3, 654226);
INSERT INTO `litemall_region` VALUES (3220, 374, '阿勒泰市', 3, 654301);
INSERT INTO `litemall_region` VALUES (3221, 374, '布尔津县', 3, 654321);
INSERT INTO `litemall_region` VALUES (3222, 374, '富蕴县', 3, 654322);
INSERT INTO `litemall_region` VALUES (3223, 374, '福海县', 3, 654323);
INSERT INTO `litemall_region` VALUES (3224, 374, '哈巴河县', 3, 654324);
INSERT INTO `litemall_region` VALUES (3225, 374, '青河县', 3, 654325);
INSERT INTO `litemall_region` VALUES (3226, 374, '吉木乃县', 3, 654326);
INSERT INTO `litemall_region` VALUES (3227, 375, '石河子市', 3, 659001);
INSERT INTO `litemall_region` VALUES (3228, 375, '阿拉尔市', 3, 659002);
INSERT INTO `litemall_region` VALUES (3229, 375, '图木舒克市', 3, 659003);
INSERT INTO `litemall_region` VALUES (3230, 375, '五家渠市', 3, 659004);
INSERT INTO `litemall_region` VALUES (3231, 375, '铁门关市', 3, 659006);

-- ----------------------------
-- Table structure for litemall_role
-- ----------------------------
DROP TABLE IF EXISTS `litemall_role`;
CREATE TABLE `litemall_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `desc` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_UNIQUE`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_role
-- ----------------------------
INSERT INTO `litemall_role` VALUES (1, '超级管理员', '所有模块的权限', 1, '2019-01-01 00:00:00', '2019-01-01 00:00:00', 0);
INSERT INTO `litemall_role` VALUES (2, '高级记者', '除系统管理操作权限', 1, '2019-01-01 00:00:00', '2019-01-07 15:15:12', 0);
INSERT INTO `litemall_role` VALUES (3, '记者', '只有文章管理模块的操作权限', 1, '2019-01-01 00:00:00', '2019-01-07 15:15:24', 0);

-- ----------------------------
-- Table structure for litemall_search_history
-- ----------------------------
DROP TABLE IF EXISTS `litemall_search_history`;
CREATE TABLE `litemall_search_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表的用户ID',
  `keyword` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索关键字',
  `from` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '搜索来源，如pc、wx、app',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '搜索历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for litemall_storage
-- ----------------------------
DROP TABLE IF EXISTS `litemall_storage`;
CREATE TABLE `litemall_storage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件的唯一索引',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件类型',
  `size` int(11) NOT NULL COMMENT '文件大小',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件访问链接',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_storage
-- ----------------------------
INSERT INTO `litemall_storage` VALUES (1, 'dpa1lkg8alrrr33pyzbs.jpg', 'A3B347B041833132827104CDD522830C.jpg', 'image/jpeg', 37974, 'http://www.pxxyb.vip/dpa1lkg8alrrr33pyzbs.jpg', '2019-12-11 16:19:44', '2019-12-11 16:19:44', 0);
INSERT INTO `litemall_storage` VALUES (2, 'buiv1ww5qb4s7x6p6kes.jpg', '5F6306C58EFC2F752C0C2905B3C4F2CB.jpg', 'image/jpeg', 41821, 'http://www.pxxyb.vip/buiv1ww5qb4s7x6p6kes.jpg', '2019-12-11 16:21:27', '2019-12-11 16:21:27', 0);
INSERT INTO `litemall_storage` VALUES (3, 'ag1a32aw14oqmc2hdd5h.jpg', '672990117929BBFA607D2F499BB96E87.jpg', 'image/jpeg', 147213, 'http://www.pxxyb.vip/ag1a32aw14oqmc2hdd5h.jpg', '2019-12-11 19:58:53', '2019-12-11 19:58:53', 0);
INSERT INTO `litemall_storage` VALUES (4, 's837wzrkcfgg5m5nisyu.jpg', '6B937B6AF7C07E838992B02327F4CE9D.jpg', 'image/jpeg', 117622, 'http://www.pxxyb.vip/s837wzrkcfgg5m5nisyu.jpg', '2019-12-12 10:30:50', '2019-12-12 10:30:50', 0);
INSERT INTO `litemall_storage` VALUES (5, '6bv47rkgzzz5mpun96ie.jpg', 'BA5B121693320F2387EA166E448CB0B4.jpg', 'image/jpeg', 32913, 'http://www.pxxyb.vip/6bv47rkgzzz5mpun96ie.jpg', '2019-12-12 10:41:49', '2019-12-12 10:41:49', 0);
INSERT INTO `litemall_storage` VALUES (6, 'yxd70ysvc5qpuechnmy3.jpg', 'C681562823A36AA235FD7117DF3F3C55.jpg', 'image/jpeg', 22577, 'http://www.pxxyb.vip/yxd70ysvc5qpuechnmy3.jpg', '2019-12-12 10:51:45', '2019-12-12 10:51:45', 0);
INSERT INTO `litemall_storage` VALUES (7, 'el464fhibnqg6zndtwja.jpg', '1B24EE2E9354BF5FD041812F5A038F56.jpg', 'image/jpeg', 212550, 'http://www.pxxyb.vip/el464fhibnqg6zndtwja.jpg', '2019-12-12 10:56:39', '2019-12-12 10:56:39', 0);
INSERT INTO `litemall_storage` VALUES (8, '4k0dqnna9fpieobmc2w8.jpg', '8C2E8A9FE93E6AAE64363EAFFEBDF868.jpg', 'image/jpeg', 47539, 'http://www.pxxyb.vip/4k0dqnna9fpieobmc2w8.jpg', '2019-12-12 10:57:24', '2019-12-12 10:57:24', 0);
INSERT INTO `litemall_storage` VALUES (9, 's6cci64skz1aqvzou6iu.jpg', '6B937B6AF7C07E838992B02327F4CE9D.jpg', 'image/jpeg', 117622, 'http://www.pxxyb.vip/s6cci64skz1aqvzou6iu.jpg', '2019-12-12 10:57:30', '2019-12-12 10:57:30', 0);
INSERT INTO `litemall_storage` VALUES (10, 'ziuv2h8dgnqi9no4nhur.jpg', '6B937B6AF7C07E838992B02327F4CE9D.jpg', 'image/jpeg', 117622, 'http://www.pxxyb.vip/ziuv2h8dgnqi9no4nhur.jpg', '2019-12-12 20:14:52', '2019-12-12 20:14:52', 0);
INSERT INTO `litemall_storage` VALUES (11, 'aczwq26wg82xrhj48raw.jpg', '6B937B6AF7C07E838992B02327F4CE9D.jpg', 'image/jpeg', 117622, 'http://www.pxxyb.vip/aczwq26wg82xrhj48raw.jpg', '2019-12-12 20:15:15', '2019-12-12 20:15:15', 0);
INSERT INTO `litemall_storage` VALUES (12, 'kz0v9q42v19xbhxjedxp.jpg', '6B937B6AF7C07E838992B02327F4CE9D.jpg', 'image/jpeg', 117622, 'http://www.pxxyb.vip/kz0v9q42v19xbhxjedxp.jpg', '2019-12-12 20:24:08', '2019-12-12 20:24:08', 0);
INSERT INTO `litemall_storage` VALUES (13, '7jarsdg6euhiea20ncl0.jpg', '6.jpg', 'image/jpeg', 41219, 'http://www.pxxyb.vip/7jarsdg6euhiea20ncl0.jpg', '2019-12-13 11:22:12', '2019-12-13 11:22:12', 0);
INSERT INTO `litemall_storage` VALUES (14, 'fypv6lmbf9me871gdxar.jpg', '6.jpg', 'image/jpeg', 41219, 'http://www.pxxyb.vip/fypv6lmbf9me871gdxar.jpg', '2019-12-13 11:22:21', '2019-12-13 11:22:21', 0);
INSERT INTO `litemall_storage` VALUES (15, 'eqavh9t4n6t9xdp2vlho.jpg', '6.jpg', 'image/jpeg', 41219, 'http://www.pxxyb.vip/eqavh9t4n6t9xdp2vlho.jpg', '2019-12-13 11:23:12', '2019-12-13 11:23:12', 0);

-- ----------------------------
-- Table structure for litemall_system
-- ----------------------------
DROP TABLE IF EXISTS `litemall_system`;
CREATE TABLE `litemall_system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统配置名',
  `key_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统配置值',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_system
-- ----------------------------
INSERT INTO `litemall_system` VALUES (1, 'litemall_order_unpaid', '30', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (2, 'litemall_wx_index_new', '6', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (3, 'litemall_order_unconfirm', '7', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (4, 'litemall_wx_share', 'false', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (5, 'litemall_express_freight_min', '88', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (6, 'litemall_mall_name', 'litemall', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (7, 'litemall_express_freight_value', '8', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (8, 'litemall_mall_qq', '738696120', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (9, 'litemall_wx_index_hot', '6', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (10, 'litemall_order_comment', '7', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (11, 'litemall_wx_catlog_goods', '4', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (12, 'litemall_mall_phone', '021-xxxx-xxxx', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (13, 'litemall_wx_catlog_list', '4', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (14, 'litemall_mall_address', '上海', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (15, 'litemall_wx_index_brand', '4', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);
INSERT INTO `litemall_system` VALUES (16, 'litemall_wx_index_topic', '4', '2019-12-11 14:47:52', '2019-12-11 14:47:52', 0);

-- ----------------------------
-- Table structure for litemall_topic
-- ----------------------------
DROP TABLE IF EXISTS `litemall_topic`;
CREATE TABLE `litemall_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '\'' COMMENT '专题标题',
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '\'' COMMENT '专题子标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '专题内容，富文本格式',
  `price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '专题相关商品最低价',
  `read_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1k' COMMENT '专题阅读量',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '专题图片',
  `sort_order` int(11) NULL DEFAULT 100 COMMENT '排序',
  `goods` varchar(1023) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '专题相关商品，采用JSON数组格式',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `topic_id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '专题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_topic
-- ----------------------------
INSERT INTO `litemall_topic` VALUES (264, '省委宣讲团在我校宣讲党的十九届四中全会精神', '根据省委统一部署，省委宣讲团成员、省委党史研究室主任俞银先莅临我校音乐厅宣讲党的十九届四中全会精神', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<p style=\"text-indent: 2em;\">本报讯 11月8日，我校在至善楼第二会议室召开文明创建工作布置会。校长史焕平、党委副书记蔡宝琦、副校长刘卫林、宣传部部长陈永国出席会议。各二级学院党总支书记，相关职能部门负责人参加会议。会议由蔡宝琦主持。</p>\n<p style=\"text-indent: 2em;\">会上，陈永国传达了全市创建全国文明城市工作布置会精神，指出了我校当前存在的问题，并安排部署了文明创建工作；刘卫林详细部署了冲</p>\n<p>刺阶段的细节工作，并指出要及时发现问题，迅速采取措施解决问题。</p>\n<p style=\"text-indent: 2em;\">史焕平指出，2019年是萍乡三年创建工作中承上启下的关键一年，学校要积极响应市委市政府号召，全面落实文明城市及文明单位创建工作的各项任务。自今年开展创建工作以来，校园环境整体有了较大改观，道路更干净了，空气更清新了，校园更整洁了，师生的文明素养也有了较大提高。随后，史焕平就创建冲刺阶段的工作提出三点要求：一是提高认识，全员发动；二是分工负责，协调配合；三是有所侧重，加强督查。</p>\n<p style=\"text-indent: 2em;\">蔡宝琦在会议总结时要求，当前创建工作已经进入了倒计时，全体师生员工都要立即行动起来，全力以赴地投入到文明创建工作中，确保学校在全国文明城市的测评中交上一份满意的答卷。</p>', 98.00, '77.7k', 'http://www.pxxyb.vip/buiv1ww5qb4s7x6p6kes.jpg', 0, '[]', '2018-02-01 00:00:00', '2019-12-11 16:21:30', 0);
INSERT INTO `litemall_topic` VALUES (265, '\'校党委理论学习中心组专题学习党的十九届四中全会精神', '\'校党委理论学习中心组在至善楼第一会议室举行党的十九届四中全会精神专题学习会', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<p style=\"text-indent: 2em;\">会上，陈金印传达了中国共产党第十九届中央委员会第四次全体会议公报精神。</p>\n<p>陈金印指出，全会听取和讨论了习近平总书记受中央政治局委托作的工作报告，充分肯定党的十九届三中全会以来中央政治局的工作。审议通过了《中共中央关于坚持和完善中国特色社会主义制度、推进国家治理体系和治理能力现代化若干重大问题的决定》，这是完善和发展我国国家制度</p>\n<p>和治理体系的纲领性文件。</p>\n<p style=\"text-indent: 2em;\">陈金印就学习宣传贯彻党的十九届四中全会精神提出三点要求。一要充分认识党的十九届四中全会召开的重大意义。党的十九届四中全会是在新中国成立70周年，在&ldquo;两个一百年&rdquo;奋斗目标历史交汇点上、中华民族伟大复兴处于关键时期，召开的一次具有开创性、里程碑意义的重要会议。它推动中国特色社会主义制度更加成熟更加定型，开启国家治理体系和治理能力现代化新征程。二要准确把握党的十九届四中全会精神实质。对于全会审议通过的《决定》和习近平总书记在第二次全体会议上的重要讲话，我们要深入学习贯彻，重点要把握好《决定》总体要求、总体目标、主要内容、工作要求，精准对标对表，深化改革创新，积极推进治理体系和治理能力现代化，推动党中央各项决策部署在学校落地生根。三要扎实抓好党的十九届四中全会精神的学习宣传贯彻落实。要坚决把党的全面领导落到实处，要坚定自觉地增强制度自信，结合实际完善和发展制度，提高制度执行力和治理能力。</p>', 97.00, '50.6k', 'http://www.pxxyb.vip/dpa1lkg8alrrr33pyzbs.jpg', 0, '[]', '2019-12-11 14:54:30', '2019-12-11 16:20:28', 0);

-- ----------------------------
-- Table structure for litemall_user
-- ----------------------------
DROP TABLE IF EXISTS `litemall_user`;
CREATE TABLE `litemall_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户密码',
  `gender` tinyint(3) NOT NULL DEFAULT 0 COMMENT '性别：0 未知， 1男， 1 女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `last_login_ip` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最近一次登录IP地址',
  `user_level` tinyint(3) NULL DEFAULT 0 COMMENT '0 普通用户，1 VIP用户，2 高级VIP用户',
  `nickname` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称或网络名称',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户手机号码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像图片',
  `weixin_openid` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '微信登录openid',
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '微信登录会话KEY',
  `status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0 可用, 1 禁用, 2 注销',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litemall_user
-- ----------------------------
INSERT INTO `litemall_user` VALUES (1, '黄睿', '$2a$10$lTu9qi0hr19OC800Db.eludFr0AXuJUSrMHi/iPYhKRlPFeqJxlye', 1, '1999-09-18', '2019-04-20 22:17:43', '0:0:0:0:0:0:0:1', 1, 'user123', '18770171448', '', '', '', 0, '2019-04-20 22:17:43', '2019-04-20 22:17:43', 0);

-- ----------------------------
-- Table structure for litemall_user_formid
-- ----------------------------
DROP TABLE IF EXISTS `litemall_user_formid`;
CREATE TABLE `litemall_user_formid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '缓存的FormId',
  `isprepay` tinyint(1) NOT NULL COMMENT '是FormId还是prepayId',
  `useAmount` int(2) NOT NULL COMMENT '可用次数，fromId为1，prepay为3，用1次减1',
  `expire_time` datetime(0) NOT NULL COMMENT '过期时间，腾讯规定为7天',
  `openId` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信登录openid',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
