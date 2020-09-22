/*
 Navicat Premium Data Transfer

 Source Server         : 本地MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : decoration

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 22/09/2020 21:16:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `role` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色',
  `last_login_at` datetime NULL DEFAULT NULL COMMENT '上次登录时间',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '888', '李永', 2, NULL, '2020-09-09 20:46:58', '2020-09-09 23:49:27');
INSERT INTO `admin` VALUES (2, 'mayun', '888', '马云', 2, NULL, '2020-09-08 20:46:54', '2020-09-08 21:49:55');
INSERT INTO `admin` VALUES (3, 'huaten', '888', '花藤', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章标题',
  `cate` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属分类',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '封面图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '为什么中国人这么讲究宅居风水？', 1, '风水就是人与居住环境之间的和谐关系，中国古代叫做“风水”，同样的学问在西方国家叫做“人居环境科学”。', 'https://tgi1.jia.com/125/652/25652723.jpg', '风水就是人与居住环境之间的和谐关系，中国古代叫做“风水”，同样的学问在西方国家叫做“人居环境科学”。风水知识是经过世世代代的古人通过生活经验等总结出来的，遵循以人为本的原则，大到空间的外部环境、内部方位布局，小到一桌一椅、一花一石的摆放，都有它的规则与原理可循。\r\n\r\n设计的本质，是将人的安全性、舒适性与健康性作为前提，再漂亮的设计，如果没有人性化的核心，一定不是好的设计。因此一个好的设计师，一定是懂风水且能把风水与设计相融合的。\r\n\r\n说到风水布局，很多人都认为一定是摆个鱼缸啊、挂个宝剑啊、摆个貔貅啊等等。\r\n\r\n其实这些，传统的风水布局方法，早已脱离了时下流行的设计风格，但是现在流行的设计元素、家居也同样具有五行的属性，只要我们掌握这些属性再结合我们的设计风格，就可以搭配出具有时尚设计且能够调和家居风水的完美设计方案。', '2020-09-08 20:58:22', NULL);
INSERT INTO `article` VALUES (2, '插座线和照明线为何不能走一路？', 2, '水电装修是家装的重要一环，关系到用电安全，在装修时一定要注意接线规范。', 'https://tgi12.jia.com/125/884/25884486.jpg', '水电装修是家装的重要一环，关系到用电安全，在装修时一定要注意接线规范。前不久有业主说家里装修新房时，自己接完电线后竟出现了火花，吓得赶紧叫电工师傅来看看，结果发现原来是线插错了，究竟是怎么回事呢？\r\n\r\n\r\n原来是灯线和插座线错接在了一起，会造成很大的安全隐患。一般情况下，家里的照明线和插座线都是分开处理的。\r\n\r\n\r\n灯线和插座线不在一起的好处是互不干扰，一个出了故障，不会影响另一个的使用。检修故障时也能轻松找到问题的位置，更科学合理。', '2020-09-08 21:00:34', NULL);
INSERT INTO `article` VALUES (3, '74.1m²，才是一个人住的标配！', 3, '这套74.1m²的住宅，整体以灰色为主，打造现代风格公寓，尤其是墨绿色的点缀，把整所公寓衬托得细腻质感', 'https://tgi12.jia.com/125/883/25883705.png', '这套74.1m²的住宅，整体以灰色为主，打造现代风格公寓，尤其是墨绿色的点缀，把整所公寓衬托得细腻质感，知性优雅。\r\n\r\nimage.png\r\n开放式的客厅和厨房一体，客厅木色的地板，裸露的天花，灰色的沙发，大大的落地窗，光线充足，整个空间的色彩搭配，看起来非常高级，很美妙的生活空间。', '2020-09-08 21:00:37', NULL);

-- ----------------------------
-- Table structure for case
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '案例id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '案例名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '案例图片',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '案例表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of case
-- ----------------------------
INSERT INTO `case` VALUES (1, '焱歌国际', 'https://tgi1.jia.com/115/006/15006222.jpg', '品牌发源于香港，拥有国内外众多***青年团队。获得多项国内外大奖，诚信经营，严谨做事。关于设计', '服务区域：静安、杨浦、闵行、宝山、浦东\r\n擅长类型：别墅、复式、大平层、小户型/一房、商铺装修', '2020-09-08 21:06:19', NULL);
INSERT INTO `case` VALUES (2, '乐杰装饰', 'https://tgi12.jia.com/128/086/28086336.png', '乐杰装饰成立于2003年，拥有十四年的设计施工经验， 四十多位***室内设计师，一百多位明星施工队', '服务区域：黄浦、静安、普陀、宝山、嘉定、浦东\r\n擅长类型：别墅、复式、大平层、四房、三房', '2020-09-08 21:11:18', NULL);
INSERT INTO `case` VALUES (3, '秋月枫舎', 'https://tgi1.jia.com/126/820/26820321.jpg', '本案整体风格为现代轻奢风，设计师通过白色、蓝色和绿色的搭配，来打造这一个温馨而又舒适的家,整体既实用又好看', '本案整体风格为现代轻奢风，设计师通过白色、蓝色和绿色的搭配，来打造这一个温馨而又舒适的家,整体既实用又好看\r\n\r\n客厅', '2020-09-08 21:12:14', '2020-09-08 22:12:19');
INSERT INTO `case` VALUES (4, '臻奢意境', 'https://tgi1.jia.com/126/819/26819863.jpg', '本案例主要风格是美式风，通过经典美式复古元素，打造了一个温暖、有着浓厚的典雅气息的居住之所。', '本案例主要风格是美式风，通过经典美式复古元素，打造了一个温暖、有着浓厚的典雅气息的居住之所。', '2020-09-08 22:13:04', NULL);

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类图片',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES (1, '装修常识', 'https://tgi13.jia.com/125/890/25890898.jpg', '2020-09-08 20:54:57', '2020-09-08 20:55:05');
INSERT INTO `cate` VALUES (2, '装修报价', 'https://tgi13.jia.com/122/476/22476058.jpg', '2020-09-08 20:55:29', '0000-00-00 00:00:00');
INSERT INTO `cate` VALUES (3, '装修攻略', 'https://tgi13.jia.com/125/942/25942969.jpg', '2020-09-08 20:55:52', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '公司地址',
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `longitude` decimal(10, 6) NULL COMMENT '经度',
  `latitude` decimal(10, 6) NULL COMMENT '纬度',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '拉齐娜国际', '黄浦', '4001616158', '拉齐娜国际设计在上海发展至今已经有了12年的历程，公司从起初的50㎡发展为2000㎡的5A甲级办公楼', 112.485612, 122.524685, '2020-09-08 21:14:53', NULL);

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动图片',
  `article_id` int(11) NOT NULL DEFAULT 0 COMMENT '对应文章id',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动链接',
  `creatted_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '活动版块' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (1, '促销活动1', 'https://oneimg1.jia.com/content/public/resource/12809245/2017/02/258759_field_5_1486370140.jpg', 1, 'http://www.baidu.com', '2020-09-08 21:04:43', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '预约id',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '预约姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电话',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '装修类型',
  `order_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '预约日期',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '留言',
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
