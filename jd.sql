/*
 Navicat Premium Data Transfer

 Source Server         : aaaa
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : 122.14.213.193:3306
 Source Schema         : jd

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 14/06/2022 16:04:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `users` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '17331779624', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES (2, '15297365256', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES (3, '15131756210', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `admin` VALUES (4, '12345678912', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图片路径',
  `group_top_id` int(11) NULL DEFAULT NULL COMMENT '上分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES (1, '空调', '898a7ac882ba6c63.jpg', 19);
INSERT INTO `group` VALUES (2, '冰箱', '260803efca5e8a73.jpg', 2);
INSERT INTO `group` VALUES (3, '电脑', '0188085e6fd6cd12.png', 9);
INSERT INTO `group` VALUES (4, '全面屏手机', '5be6ebd8Nb07ef492.png', 5);
INSERT INTO `group` VALUES (5, '手机', '6119d3f773fcdacd.jpg', 5);
INSERT INTO `group` VALUES (6, '数据线', 'e9a80b7af28e83a6.jpg', 6);
INSERT INTO `group` VALUES (7, '女性手机', '09b2b19f13691c60.jpg', 5);
INSERT INTO `group` VALUES (8, '京东维修', '5a169205N84a49a6a.jpg', 5);
INSERT INTO `group` VALUES (9, '京东维修', '5a1691e0N62f626e3.jpg', 5);
INSERT INTO `group` VALUES (10, '手机储蓄卡', '5a167b73Na69aae95.jpg', 6);
INSERT INTO `group` VALUES (11, '手机贴膜', '5ac486c6N0c8a93dc.jpg', 6);
INSERT INTO `group` VALUES (12, '充电器', '5ac4874fN6bc007b0.jpg', 6);
INSERT INTO `group` VALUES (13, '充电宝', 'd9503871495a5a18.jpg', 6);
INSERT INTO `group` VALUES (14, '坚果炒货', '59ffd6d0Ncb29412d.png', 1);
INSERT INTO `group` VALUES (15, '蜜饯果干', '59ffd6fbN047718c7.jpg', 1);
INSERT INTO `group` VALUES (16, '无糖食品', '59ffd6ffN95ab2f9b.jpg', 1);
INSERT INTO `group` VALUES (17, '大米', '59dc753fN205018c1.jpg', 7);
INSERT INTO `group` VALUES (18, '南北干货', '5a0564e7N24b2f750.jpg', 7);
INSERT INTO `group` VALUES (19, '杂粮', '5a0564bdN760afe2b.jpg', 7);
INSERT INTO `group` VALUES (20, '烘培原料', '5a0564d6Na553bc94.jpg', 7);
INSERT INTO `group` VALUES (21, '牛奶制品', '5a056b11N78c98876.jpg', 8);
INSERT INTO `group` VALUES (22, '名茶', '5a056b66Ne82a1269.jpg', 8);
INSERT INTO `group` VALUES (23, '饮用水', '5a0569bdN28dfb4c9.jpg', 8);
INSERT INTO `group` VALUES (24, '饮料', '5a056afaN5db50aa8.jpg', 8);
INSERT INTO `group` VALUES (25, '微波炉', '5a17f203N50016f64.jpg', 2);
INSERT INTO `group` VALUES (26, '榨汁机', '5a17f224N9756f6e5.jpg', 2);
INSERT INTO `group` VALUES (27, '电烤箱', '5a17f1f1N9c125c81.jpg', 2);
INSERT INTO `group` VALUES (28, '曲面电视', '5a17f73eN1ed10bce.jpg', 12);
INSERT INTO `group` VALUES (29, '超薄电视', '5a17f724N6b00846c.jpg', 12);
INSERT INTO `group` VALUES (30, 'HDR', '5a17f719N7371175e.jpg', 12);
INSERT INTO `group` VALUES (31, 'OLED电视', '5a17f70fN00d172ce.jpg', 12);
INSERT INTO `group` VALUES (32, '壁挂式空调', '5a17f6f6Ndfe746aa.jpg', 19);
INSERT INTO `group` VALUES (33, '柜式空调', '5a17f70dN5ecd3e87.jpg', 19);
INSERT INTO `group` VALUES (34, '中央空调', '5a17f6e4N2357e87a.jpg', 19);
INSERT INTO `group` VALUES (35, ' 笔记本', '5a17b976N7ab8a3a6.jpg', 9);
INSERT INTO `group` VALUES (36, '二合一平板', '5a17b93dN89330bb3.jpg', 9);
INSERT INTO `group` VALUES (37, '台式机', '5a17b996Nba3bed32.jpg', 9);
INSERT INTO `group` VALUES (38, '一体机', '5a17b978N2a93f7a9.jpg', 9);
INSERT INTO `group` VALUES (39, '游戏本', '5a17b971N14214c4f.jpg', 9);
INSERT INTO `group` VALUES (40, '鼠标', '5a16a5f0Nc6b32dda.jpg', 11);
INSERT INTO `group` VALUES (41, '机械键盘', '5a16a58cNb6b027df.jpg', 11);
INSERT INTO `group` VALUES (42, '移动硬盘', '5a16a5adN67c1a043.jpg', 11);
INSERT INTO `group` VALUES (43, '线缆', '5a16a592N7e614f3d.jpg', 11);
INSERT INTO `group` VALUES (44, '路由器', '5a16a0c0Nc9e4641e.jpg', 13);
INSERT INTO `group` VALUES (45, '网卡', '5a16a0cbN03d41e72.jpg', 13);
INSERT INTO `group` VALUES (46, '交换机', '5a16a0b1Nd29a04bf.jpg', 13);
INSERT INTO `group` VALUES (47, '跑步机', '5a1fb545Nbbb405b3.jpg', 10);
INSERT INTO `group` VALUES (48, '运动护具', '5a27e633Nbba71819.jpg', 10);
INSERT INTO `group` VALUES (49, '哑铃', '5a1fb54dNc8ade0cc.jpg', 10);
INSERT INTO `group` VALUES (50, '运动套装', '5a1fb5a7N668d3a07.jpg', 4);
INSERT INTO `group` VALUES (51, '健身服', '5a28a174N10534680.jpg', 4);

-- ----------------------------
-- Table structure for group_left
-- ----------------------------
DROP TABLE IF EXISTS `group_left`;
CREATE TABLE `group_left`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '左分类列表',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_left
-- ----------------------------
INSERT INTO `group_left` VALUES (1, '手机数码');
INSERT INTO `group_left` VALUES (2, '京东超市');
INSERT INTO `group_left` VALUES (3, '家用电器');
INSERT INTO `group_left` VALUES (4, '电脑办公');
INSERT INTO `group_left` VALUES (5, '玩具乐器');
INSERT INTO `group_left` VALUES (6, '家居厨具');
INSERT INTO `group_left` VALUES (7, '运动户外');

-- ----------------------------
-- Table structure for group_top
-- ----------------------------
DROP TABLE IF EXISTS `group_top`;
CREATE TABLE `group_top`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上分类列表',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `group_left_id` int(11) NULL DEFAULT NULL COMMENT '左分类列表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_top
-- ----------------------------
INSERT INTO `group_top` VALUES (1, '休闲零食', 2);
INSERT INTO `group_top` VALUES (2, '厨房小电', 3);
INSERT INTO `group_top` VALUES (3, '积木拼插', 5);
INSERT INTO `group_top` VALUES (4, '运动服装', 7);
INSERT INTO `group_top` VALUES (5, '手机通讯', 1);
INSERT INTO `group_top` VALUES (6, '手机配件', 1);
INSERT INTO `group_top` VALUES (7, '粮油调味', 2);
INSERT INTO `group_top` VALUES (8, '水饮茗茶', 2);
INSERT INTO `group_top` VALUES (9, '电脑整机', 4);
INSERT INTO `group_top` VALUES (10, '健身训练', 7);
INSERT INTO `group_top` VALUES (11, '外设产品', 4);
INSERT INTO `group_top` VALUES (12, '电视', 3);
INSERT INTO `group_top` VALUES (13, '网络产品', 4);
INSERT INTO `group_top` VALUES (14, '体育用品', 7);
INSERT INTO `group_top` VALUES (15, '遥控电动', 5);
INSERT INTO `group_top` VALUES (16, '厨卫大电', 6);
INSERT INTO `group_top` VALUES (17, '家装软饰', 6);
INSERT INTO `group_top` VALUES (18, '家纺', 6);
INSERT INTO `group_top` VALUES (19, '空调', 3);

-- ----------------------------
-- Table structure for index_banner
-- ----------------------------
DROP TABLE IF EXISTS `index_banner`;
CREATE TABLE `index_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_banner
-- ----------------------------
INSERT INTO `index_banner` VALUES (1, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/117701/31/25469/84752/62678d3aE9934cd5f/bf0f40350f5599bb.jpg!cr_1053x420_4_0!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (2, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/106619/19/27245/111174/6263c470E244520b1/16867dcf3018ef7b.jpg!cr_1125x449_0_166!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (3, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/93166/9/25755/249439/624bda01E91dc29e4/dde04b84593663ca.jpg!cr_1125x449_0_166!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (4, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/111599/32/20611/150924/61e2a195E026daf30/6929ec3bc8f3c3aa.jpg!cr_1125x449_0_166!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (5, '\r\nhttps://m15.360buyimg.com/mobilecms/s1062x420_jfs/t1/221811/25/11827/470923/621f1a8fEbc5fc995/bfd9bc5b7f5883e4.png!cr_1053x420_4_0!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (6, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/87369/10/27141/144375/6269288cE406c04d4/ff1eba2b617350fa.jpg!cr_1053x420_4_0!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (7, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/195206/32/22025/84939/62389396E9e9cd45f/27374bc5ca5d77a4.jpg!cr_1125x449_0_166!q70.jpg\r\n');
INSERT INTO `index_banner` VALUES (8, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/117701/31/25469/84752/62678d3aE9934cd5f/bf0f40350f5599bb.jpg!cr_1053x420_4_0!q70.jpg\r\n');

-- ----------------------------
-- Table structure for index_menu
-- ----------------------------
DROP TABLE IF EXISTS `index_menu`;
CREATE TABLE `index_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of index_menu
-- ----------------------------
INSERT INTO `index_menu` VALUES (1, 'https://m15.360buyimg.com/mobilecms/jfs/t1/41867/2/15966/7116/60ec0e0dE9f50d596/758babcb4f911bf4.png!q70.jpg', '京东服饰');
INSERT INTO `index_menu` VALUES (2, 'https://m15.360buyimg.com/mobilecms/jfs/t1/191060/24/12861/6818/60ec11f2E67cf5ee6/c264378678b3cd96.png!q70.jpg', '京东国际');
INSERT INTO `index_menu` VALUES (3, 'https://m15.360buyimg.com/mobilecms/jfs/t1/186882/8/12149/5894/60ec1250E9335241a/b22054613aa8ae75.png!q70.jpg', '京东拍卖');
INSERT INTO `index_menu` VALUES (4, 'https://m15.360buyimg.com/mobilecms/jfs/t1/184220/15/16402/5719/6103a727Eee850902/0f552e380db9cd0e.png!q70.jpg', '看病购药');
INSERT INTO `index_menu` VALUES (5, 'https://m15.360buyimg.com/mobilecms/jfs/t1/145692/9/1817/4493/5efbf652E61c4f3ec/722840c121d67fc6.png!q70.jpg', '玩3C');
INSERT INTO `index_menu` VALUES (6, 'https://m15.360buyimg.com/mobilecms/jfs/t1/185282/10/13877/6658/60ec1404E0fc4061a/a7c213f76e37a8d6.png!q70.jpg', '沃尔玛');
INSERT INTO `index_menu` VALUES (7, 'https://m15.360buyimg.com/mobilecms/jfs/t1/182378/35/13924/7463/60ec14c6E1f434a60/37fba58239f3547e.png!q70.jpg', '美妆馆');
INSERT INTO `index_menu` VALUES (8, 'https://m15.360buyimg.com/mobilecms/jfs/t1/191377/35/12864/5624/60ec146cE304517a9/20acb632f59fbbbd.png!q70.jpg', '京东旅行');
INSERT INTO `index_menu` VALUES (9, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/36551/10/16098/5792/60ec1589E755822d7/f958b896e706008a.png!q70.jpg\r\n', '拍拍二手');
INSERT INTO `index_menu` VALUES (10, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/161914/40/25956/3773/619711b3Ead2fc2e6/e48410133b38352d.png!q70.jpg\r\n', '潮燃青年');
INSERT INTO `index_menu` VALUES (11, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/175540/24/19329/6842/60ec0b0aEf35f7384/ec560dbf9b82b90b.png!q70.jpg\r\n', '京东超市');
INSERT INTO `index_menu` VALUES (12, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/178015/31/13828/6862/60ec0c04Ee2fd63ac/ccf74d805a059a44.png!q70.jpg\r\n', '数码电器');
INSERT INTO `index_menu` VALUES (13, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/177902/16/13776/5658/60ec0e71E801087f2/a0d5a68bf1461e6d.png!q70.jpg\r\n', '京东生鲜');
INSERT INTO `index_menu` VALUES (14, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/196472/7/12807/7127/60ec0ea3Efe11835b/37c65625d94cae75.png!q70.jpg\r\n', '京东到家');
INSERT INTO `index_menu` VALUES (15, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/185733/21/13527/6648/60ec0f31E0fea3e0a/d86d463521140bb6.png!q70.jpg\r\n', '充值缴费');
INSERT INTO `index_menu` VALUES (16, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/199143/10/8979/4223/614599f5E45cd5464/d15aa650a0ebe596.png!q70.jpg\r\n', '物流查询');
INSERT INTO `index_menu` VALUES (17, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/186080/16/13681/8175/60ec0fcdE032af6cf/c5acd2f8454c40e1.png!q70.jpg\r\n', '领券');
INSERT INTO `index_menu` VALUES (18, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/196711/35/12751/6996/60ec1000E21b5bab4/38077313cb9eac4b.png!q70.jpg\r\n', '领金贴');
INSERT INTO `index_menu` VALUES (19, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/37709/6/15279/6118/60ec1046E4b5592c6/a7d6b66354efb141.png!q70.jpg\r\n', 'PLUS会员');
INSERT INTO `index_menu` VALUES (20, '\r\nhttps://m15.360buyimg.com/mobilecms/jfs/t1/192665/22/12752/7912/60ec15cbE261a32bf/3ace51badf80e71b.png!q70.jpg\r\n', '全部');

-- ----------------------------
-- Table structure for shop_address
-- ----------------------------
DROP TABLE IF EXISTS `shop_address`;
CREATE TABLE `shop_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `users` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人地址',
  `pid` int(11) NULL DEFAULT NULL COMMENT '用户名id',
  `key` int(1) NULL DEFAULT 0 COMMENT '默认地址 1为默认',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_address
-- ----------------------------
INSERT INTO `shop_address` VALUES (17, 'wdawda', '12345698712', '74896123', 1, 0);
INSERT INTO `shop_address` VALUES (19, '赵云', '13992929292', '河北省秦皇岛市北戴河区', 1, 0);
INSERT INTO `shop_address` VALUES (33, '爽歪', '13928282828', '北京市北京市东城区', 3, 1);
INSERT INTO `shop_address` VALUES (35, '张飞', '15224242424', '北京市北京市东城区', 3, 0);
INSERT INTO `shop_address` VALUES (36, '哈哈', '13966666666', '天津市天津市南开区', 3, 0);
INSERT INTO `shop_address` VALUES (37, '王文硕', '13582444444', '北京市北京市东城区', NULL, 1);

-- ----------------------------
-- Table structure for shop_car
-- ----------------------------
DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `num` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `pid` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `list_pid` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '商品id',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品颜色',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格1',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格2',
  `store` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_car
-- ----------------------------
INSERT INTO `shop_car` VALUES (55, '当贝 超级电视盒子MAX 1 网络机顶盒 双频WiFi6 千兆网口 6G 64G超大运存 投屏HDR10 8K解码', 'dd50e5fd96b6b1b1.jpg', 699.00, 2, 3, 2, '当贝1G语音基础版', '', '', NULL);
INSERT INTO `shop_car` VALUES (56, 'dwadasda', '629d71572025a.jpg', 129.00, 1, 1, 1, 'awed发哇哇', '', '', NULL);
INSERT INTO `shop_car` VALUES (57, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 1, 1, 3, '遥望-90CM大客厅76*2瓦无极调光5灯套餐B', '', '', NULL);
INSERT INTO `shop_car` VALUES (58, 'dido/第一度 E10智能手表 血压/心率/心电图/血氧/运动/体温测量腕表 适用小米苹果华为血压手表', '624e25e5c3f0328c.jpg', 599.00, 1, 1, 5, 'E10血压手表【热销】高性价比', '', '', NULL);
INSERT INTO `shop_car` VALUES (59, '荣耀笔记本MagicBook X 14 2021 14英寸全面屏轻薄笔记本电脑 （i3 8GB 256GB多屏协同）冰河银', '1f4864959f2a4a37.jpg', 2999.00, 1, 1, 16, '银色', '', '', NULL);
INSERT INTO `shop_car` VALUES (60, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 2, 3, 3, '遥望-90CM大客厅76*2瓦无极调光5灯套餐B', '', '', NULL);
INSERT INTO `shop_car` VALUES (61, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 1, NULL, 3, '遥望-110CM超大客厅125*2瓦智控5灯套餐D', '', '', NULL);
INSERT INTO `shop_car` VALUES (62, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 1, NULL, 3, '遥望-110CM超大客厅125*2瓦无极6灯套餐C', '', '', NULL);
INSERT INTO `shop_car` VALUES (63, '【华强北4代顶配版】Air3苹果蓝牙耳机双耳无线降噪适用iphone 13/12/11入耳维肯 旗舰全功能3【4月空间音频降噪版】 【秒弹窗 指纹触控 改名定位 蓝牙5.2】', 'f896953e4b7c64b8.jpg', 229.00, 1, NULL, 6, '旗舰全功能四代【4月空间音频降噪版】', '', '', NULL);
INSERT INTO `shop_car` VALUES (64, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 1, NULL, 3, '遥望-110CM超大客厅125*2瓦无极6灯套餐C', '', '', NULL);
INSERT INTO `shop_car` VALUES (65, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg', 999.00, 1, NULL, 3, '', '', '', NULL);
INSERT INTO `shop_car` VALUES (66, '李宁（LI-NING）CBA比赛篮球室内外成人儿童7号橡胶材质蓝球 LBQK607-4', '00e8ad839f0a681a.jpg', 75.00, 4, 1, 4, '', '', '', NULL);

-- ----------------------------
-- Table structure for shop_list
-- ----------------------------
DROP TABLE IF EXISTS `shop_list`;
CREATE TABLE `shop_list`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情图片',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品单价',
  `click` int(11) NULL DEFAULT NULL COMMENT '点击量',
  `star` int(1) NULL DEFAULT 4 COMMENT '星级',
  `pid` int(11) NULL DEFAULT NULL COMMENT '店铺id',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品颜色',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格1',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格2',
  `group_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分组类型id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_list
-- ----------------------------
INSERT INTO `shop_list` VALUES (1, 'dwadasda', '629d71572025a.jpg/629d715720b16.png', '629d71572165a.png/629d715721f5a.png', 'sdgsdsdg', 129.00, 3, 4, 3, 'awed发哇哇/啊大反攻a给 /说如果三四个三个热', '24/45/12', '', '3');
INSERT INTO `shop_list` VALUES (2, '', '', '629dad2c2b42c.jpg', '', 0.00, 23, 4, 1, '当贝1G红外基础版,当贝1G语音基础版,当贝2G红外增强版,当贝2G语音增强版', '', '', '2');
INSERT INTO `shop_list` VALUES (3, 'TCL照明客厅吸顶灯具套餐led后现代超薄北欧大气简约卧室灯灯饰 遥望-90CM大客厅76*2瓦无极调光5灯套餐A', 'e18eab95bd7c4d83.jpg/8c1582b6aad19e28.jpg/c23ca8eb37d18e55.jpg/63019fece50e424d.jpg', '08e914942369a4f4.jpg/95298166d66f0190.jpg/1925fb3f869788e8.jpg/c609ed112c9286e4.jpg/906ebb57ac9b1142.jpg/023e46c8a25998f6.jpg/f909be2914125b3c.jpg/af944f58620f14b0.jpg/300897fe643f123e.jpg/430856e11f90176e.jpg/471a2b26639ded12.jpg', '此商品将于2022-05-13,00点参加闪购特卖，灯饰大牌低至五折 ', 999.00, 1, 4, 2, '遥望-90CM大客厅76*2瓦无极调光5灯套餐B/遥望-110CM超大客厅125*2瓦无极6灯套餐C/遥望-110CM超大客厅125*2瓦智控5灯套餐D', NULL, NULL, '3');
INSERT INTO `shop_list` VALUES (4, '李宁（LI-NING）CBA比赛篮球室内外成人儿童7号橡胶材质蓝球 LBQK607-4', '00e8ad839f0a681a.jpg/a8a1b00c45f2fdbe.jpg/e0d3aac16211d146.jpg/82184215eac4effa.jpg', 'bf432808133c93fd.jpg/b93ad07f2d2ba7f1.jpg/66c102e0f58fc04c.jpg/24b91fa5832c0224.jpg/65b794bcd9c1ae6d.jpg/256be6048b356ed2.jpg', '【李宁大牌日】5月13日钜惠来袭！进入即享满300减60！更多优惠等你来抢！查看详情 ', 75.00, 1, 4, 3, '☆爆款☆【发泡科技5号软弹】/☆爆款☆【发泡科技标准软弹】', NULL, NULL, '4');
INSERT INTO `shop_list` VALUES (5, 'dido/第一度 E10智能手表 血压/心率/心电图/血氧/运动/体温测量腕表 适用小米苹果华为血压手表', '624e25e5c3f0328c.jpg/9b66b1f23e9286b5.jpg/72ce925f76202d25.jpg', '873bb1af657b3b5c.jpg/c58417ab0b534165.jpg/dbee7a4d8fc974c3.jpg/6477e6389bb0f87e.png/27d626514b3ae3ab.jpg', '【智能血压/血氧/心率/心电手环】【全新智能芯片】【32种心电图】【体温测量】【远程互动】【呼吸率监测】【9种运动模式】', 599.00, 1, 4, 2, 'E10血压手表【热销】高性价比/E39血压手表【气泵式】高精准/E39S Pro高精准血压【气泵式】/E30【血压心率运动通话音乐】/E31通话手表-血压心率音乐运动/S2S户外手表-GPS心率/气压海拔', NULL, NULL, '1');
INSERT INTO `shop_list` VALUES (6, '【华强北4代顶配版】Air3苹果蓝牙耳机双耳无线降噪适用iphone 13/12/11入耳维肯 旗舰全功能3【4月空间音频降噪版】 【秒弹窗+指纹触控+改名定位+蓝牙5.2】', 'f896953e4b7c64b8.jpg/2ae23edee01ee6cd.jpg/196dd663857be83c.jpg/e0cd4c1287373aef.png', 'a7a90cab74bfba6d.jpg/7de4ce371de0c27c.jpg/02e9e9f0da86e937.jpg/433719bbb3ade80a.jpg/4719058468eb3977.jpg', '【下单立减40元】送原装保护套+数据线！【顶配原装同款】包含二代3三代全功能！【店长承诺】90天免费试用！5年免费换新！送运费险！', 229.00, 1, 4, 1, '旗舰全功能四代【4月空间音频降噪版】', '【秒弹窗+指纹触控+改名定位+蓝牙5.2】', NULL, '4');
INSERT INTO `shop_list` VALUES (7, '罗马仕sense6F 22.5W超级快充 20000毫安时充电宝20W苹果PD 兼容18W 大容量移动电源适用于苹果安卓华为小米', '5c2b52db6378d306.jpg/d60e18c8bd45bcd7.jpg/0a0d3471d1f3c84e.jpg/6a08689f85c87b11.jpg', '8224fc21fc78c6ad.jpg/8a23340946518208.jpg/f488f73d908ba36b.gif/7affd146a83d6189.jpg/941a173de8742a8c.gif/603f115885afd217.jpg', '【立减20元】限时到手价119元！【活动时间】5月13日-5月15日；限量500个！【户外电源】505WH/500W充电专家，PD100W超级快充！请点击(此商品不参加上述活动) ', 139.00, 1, 4, 4, '【2米加长款】TypeC66W 带灯 黑', NULL, NULL, '5');
INSERT INTO `shop_list` VALUES (8, '华为手机通用测血压心率血氧体温智能手环心电图心脏报警心跳远程关爱健康监测仪老人送礼多功能运动男女腕表 经典黑【血压心率心电监测+IP67防水】', '31d7fc4bb16f32d5.jpg/093e8ed479d7863f.jpg/9519ab9065d9277f.jpg', 'ce6c01fbd64e0672.jpg/d8fb90849fb0f06e.jpg/b6b7cfc4c18cb983.jpg/c665f1912389dcde.jpg/e91c1a992ff4249a.jpg', '【高精度血压心率监测】【心电图血氧检测】【24小时心率报警提醒】【体温测量】【远程关爱亲人健康】', 498.00, 1, 4, 5, '科技红【血压心率心电监测+IP67防水】/经典黑【血压心率心电监测+IP67防水】/天空蓝【血压心率心电监测+IP67防水】', NULL, NULL, '8');
INSERT INTO `shop_list` VALUES (9, 'Apple iPhone 13 (A2634) 128GB 星光色 支持移动联通电信5G 双卡双待手机【快充套装】', '0dd82913e51e4d8f.jpg/83f34169ea4c555a.jpg/afe95300568b3c65.jpg/802ee3b7358b7e49.jpg', '58fa174ca397a311.jpg', '【优惠仅限套装，不支持单独退货】20W快充头套装！因套装商品到货时间不一致，存在先收到手机后收到充电头的情况！更多优惠请点击 ', 6098.00, 1, 4, 4, '星光色/午夜色/粉色/蓝色/红色/绿色', '128GB/256GB/512GB', '公开版/快充套装/AirPods套装/AirPodsPro套装/Watch S7套装', '8');
INSERT INTO `shop_list` VALUES (10, 'Apple iPhone 13 Pro (A2639) 128GB 远峰蓝色 支持移动联通电信5G 双卡双待手机', 'e89ebf523380c753.jpg/b86593be51ceee89.jpg/a6370c0cae952065.jpg/f51c5b09195d7055.jpg/f10df38277cdb775.jpg', 'd163f99585473f8f.jpg/6d54a485adeb0b54.jpg', '【限时优惠】指定iPhone13下单立减600元，iPhone12下单立减400元！更多优惠请点击 ', 7999.00, 1, 4, 4, '远峰蓝色/石墨色/银色/金色/苍岭绿色', '128GB/256GB/512GB/1TB', '公开版/快充套装/AirPods套装/AirPodsPro套装/Watch S7套装', '9');
INSERT INTO `shop_list` VALUES (11, '【英特尔酷睿i7独立显卡】买手力荐高端高性能笔记本电脑轻薄本游戏本 女生学生商务商用办公手提摆渡者 顶配版玫瑰金-11代英特尔强芯全面屏+指纹解锁 8G高速运行+128G极速固态硬盘', 'a8529f8faeaa7c75.jpg/626ec78ae3b023a3.jpg/c714ebdc7585fbd9.jpg', 'a57a5ebd4b48ffce.jpg/ebaa1440dedb2635.jpg', '英特尔11代处理器，MX450独立显卡，下单送9大豪礼，鼠标。LED夜灯、鼠标垫、USB分接器、键盘膜、耳机、运动手环', 1588.00, 1, 4, 1, '顶配版英特尔四核10代+IPS屏窄边+抗蓝光 银/顶配版英特尔四核11代+IPS屏窄边+抗蓝光+指纹/i7酷睿7代+窄边屏+指纹解锁+抗蓝光', '16G高速运行+128G极速固态硬盘/16G高速运行+ 256G极速固态硬盘/16G高速运行+128G极速固态硬盘', NULL, '6');
INSERT INTO `shop_list` VALUES (12, '华为笔记本电脑MateBook D 14 SE版 14英寸 11代酷睿 i5 锐炬显卡 8G+512G 轻薄本/高清护眼防眩光屏 银', 'd65dd608458c8c0b.jpg/807454984d51f098.jpg/ab09a951be5b7c5a.jpg', 'c47db01709ca9ea8.jpg/6257e4d94c2f2b74.jpg', '【华为MateBookD14SE版丨高清护眼防眩光屏，华为分享新升级，英特尔11代处理器】更多爆款 ', 3999.00, 1, 4, 1, 'MateBook D 14 SE版/i5 8GB 512GB 皓月银', 'i5 8GB 512GB 皓月银/i5 8GB 512GB 深空灰/Win11版丨i5 16G 512G 云杉绿', NULL, '9');
INSERT INTO `shop_list` VALUES (13, '联想笔记本电脑 拯救者R9000P 16英寸高性能电竞游戏本(标压 8核 R7-5800H 16G 512G RTX3060 2.5k屏 165Hz)', 'dc3e380c45a51a14.jpg/5c143c83cc11ff06.jpg/f1daa2c34dc16bb1.jpg', '1b57f88abbbdcdf7.jpg/e4a5cf8989293d09.jpg/950d57f75338d7e2.jpg/ed0c5c0a9891da43.jpg', '【专业电竞本】锐龙标压8核，RTX3060独显，电竞级原感屏，大电池长续航，超能快充，接口丰富（更好多货） ', 8299.00, 1, 4, 2, '爆款直降RTX3070 R7 165Hz2.5k屏 R9000X', '官方标配', '单主机/鼠标套装/支架套装', '2');
INSERT INTO `shop_list` VALUES (14, '联想笔记本电脑 小新Air14 英特尔酷睿i5 14英寸轻薄本(i5 16G 512G 高色域)银 全面屏商务办公本', '0a5bf29235f60863.jpg/f5bd0446e0d03273.jpg/0d7493c04b3228c3.jpg', '26f580c312761731.jpg/c1f9eab2006423d6.jpg/0135ee476f89f0cd.jpg/8b07d885993447cb.jpg/ea2df0a0f489f5d9.jpg', '【热销】酷睿处理器，金属机身，高色域全面屏，物理防窥摄像头，接口丰富，大电池长续航（更多好货） ', 7699.00, 1, 4, 3, '【爆品】Air14Plus i5 2.2K屏/【上新】Pro16 12代标压i5 2.5K/【爆品】Air14Plus i5独显2.2K屏', '官方标配', '小新蓝牙鼠标套装', '2');
INSERT INTO `shop_list` VALUES (15, '戴尔(DELL)游匣G15 15.6英寸游戏笔记本电脑(八核i7 16G 512G RTX3060显卡 165Hz 100%sRGB高色域)耀夜黑', '450bc51b1271b040.jpg/0f8c4e460461bb34.jpg/19d22c7ce7d78de6.jpg', 'e00e8eaf912b84e6.jpg/2deb7b064e88bdc0.jpg', '【白条3期免息，按规则晒单限量返100元E卡】戴尔游匣G15爆款新品，RTX3060显卡，全新升级win11，点击查看 ', 6499.00, 1, 4, 2, 'G15全新12代游戏本/G15爆款游戏本', '爆款新品8核i7', NULL, '1');
INSERT INTO `shop_list` VALUES (16, '荣耀笔记本MagicBook X 14 2021 14英寸全面屏轻薄笔记本电脑 （i3 8GB 256GB多屏协同）冰河银', '1f4864959f2a4a37.jpg/478aafdfbb739ebb.jpg/c36da470cda6e23f.jpg/a4eb5e84db97c1f4.jpg', 'd74f81cf506b9b5d.jpg/ba2e7c6d61070204.jpg/a80ceb435c2ab2b0.jpg', '【畅销单品#晒单赢好礼】MagicBookX系列，超能生产力，轻薄全金属，护眼全面屏，指纹识别，多屏协同，畅享轻薄【抢购】 ', 2999.00, 1, 4, 2, '银色', '【X 15 2022版】i5 8+512G/【X 14 2022版】i5 16+512G/【X 15 2022版】i5 16+512G/【X 15 2021版】i5 8+512G', NULL, '1');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `pid` int(11) NULL DEFAULT NULL COMMENT '管理员id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '垃圾', 1);
INSERT INTO `store` VALUES (2, '企鹅电脑', 2);
INSERT INTO `store` VALUES (3, '企鹅手机', 2);
INSERT INTO `store` VALUES (4, '企鹅运动', 2);
INSERT INTO `store` VALUES (5, '企鹅', 1);
INSERT INTO `store` VALUES (7, '王八蛋', 3);
INSERT INTO `store` VALUES (9, NULL, 0);
INSERT INTO `store` VALUES (10, '\"333\"', 0);
INSERT INTO `store` VALUES (11, '我的天涯', 1);
INSERT INTO `store` VALUES (12, 'sss', 4);
INSERT INTO `store` VALUES (13, '222', 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `users` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '17331779624', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (2, '18834512378', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (3, '15732762701', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (4, '15733788367', 'e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `users` VALUES (5, '13582473597', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
