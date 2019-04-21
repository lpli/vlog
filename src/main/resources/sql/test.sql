/*
 Navicat Premium Data Transfer

 Source Server         : vlog
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 21/04/2019 21:55:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `cover_type` tinyint(2) NULL DEFAULT NULL COMMENT '1:单图；2：多图',
  `author_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者id',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '0:草稿;1:审核中;2:正式；',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `publish_time` timestamp(0) NULL DEFAULT NULL COMMENT '发布时间',
  `article_category` bigint(10) NULL DEFAULT NULL COMMENT '分类',
  `car_category` bigint(10) NULL DEFAULT NULL COMMENT '车系',
  `tags` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (6, '新京报评论：杜蕾斯“百万文案”“翻车”，别把恶俗当创意', 1, 'admin', 0, '& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;文| 嘉木& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;嘉木（媒体人）& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;编辑：杨林鑫校对：危卓& lt;/p& gt;', '2019-04-21 21:35:50', '2019-04-21 21:35:50', NULL, NULL, NULL, NULL);
INSERT INTO `article` VALUES (7, '新京报评论：杜蕾斯“百万文案”“翻车”，别把恶俗当创意', 1, 'admin', 0, '& lt;p& gt;ssssssssssssss& lt;/p& gt;', '2019-04-21 21:45:05', '2019-04-21 21:45:05', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `level` tinyint(2) NULL DEFAULT NULL COMMENT '分类级别',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `seq` int(3) NULL DEFAULT NULL COMMENT '序列号',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for article_log
-- ----------------------------
DROP TABLE IF EXISTS `article_log`;
CREATE TABLE `article_log`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_id` bigint(10) NULL DEFAULT NULL COMMENT '文章id',
  `article_status` tinyint(2) NULL DEFAULT NULL COMMENT '文章状态',
  `article_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `operate_time` timestamp(0) NULL DEFAULT NULL COMMENT '操作时间',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '意见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_log
-- ----------------------------
INSERT INTO `article_log` VALUES (1, 1, 0, NULL, NULL, NULL, '2019-04-21 16:43:04', NULL);
INSERT INTO `article_log` VALUES (2, 2, 0, '<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">文| 嘉木</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。</p>', '侧耳', 'admin', '2019-04-21 16:46:09', NULL);
INSERT INTO `article_log` VALUES (3, 3, 0, '<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">文| 嘉木</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\"><img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /></p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">杜蕾斯官方微博截图。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。</p>\n<p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: \'Microsoft Yahei\', Avenir, \'Segoe UI\', \'Hiragino Sans GB\', STHeiti, \'Microsoft Sans Serif\', \'WenQuanYi Micro Hei\', sans-serif; font-size: 18px;\">所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。</p>', '侧耳', 'admin', '2019-04-21 16:46:49', NULL);
INSERT INTO `article_log` VALUES (4, 4, 0, '& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;文| 嘉木& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。& lt;/p& gt;', 'ssss', 'admin', '2019-04-21 16:52:57', NULL);
INSERT INTO `article_log` VALUES (5, 5, 0, '& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;文| 嘉木& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。& lt;/p& gt;', '新京报评论：杜蕾斯“百万文案”“翻车”，别把恶俗当创意', 'admin', '2019-04-21 21:21:48', NULL);
INSERT INTO `article_log` VALUES (6, 6, 0, '& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662163/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;文| 嘉木& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;热点追得快，文案写得妙。杜蕾斯的营销文案经常因为其独到的创意而被网友称为年薪百万的文案，更被视为广告行业的创意标杆。而这回它却因和饿了么、喜茶、淘票票的联名广告遭遇&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;让我们回到&ldquo;翻车&rdquo;现场。4月19日，杜蕾斯官方微博发起了一个＃419不眠夜＃的话题。杜蕾斯联名喜茶在官方微博发微博，配文是&ldquo;419不眠夜，今夜一滴不许剩&rdquo;，随后，喜茶官方微博在评论区互动称：&ldquo;你唇上始终有我的芝士。&rdquo;而杜蕾斯联名饿了么的配文是&ldquo;419不眠夜，今晚喂饱每一张嘴。&rdquo;至于杜蕾斯联名淘票票的配文则是&ldquo;419不眠夜，今夜钻进那片秘密角落。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662164/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;虽然&ldquo;翻车&rdquo;之后杜蕾斯官方微博修改相关了海报，喜茶方面也发表了道歉声明，但这并不能阻挡&ldquo;事故&rdquo;图片的传播。风流和下流只有一字之差，两者的边界显然没有那么的泾渭分明。更何况如此低俗的海报内容，大大超乎了消费者们普遍的接受程度。不少网友留言&ldquo;这机灵抖的又蠢又恶心，一点不好笑&rdquo;&ldquo;以前的团队让人觉得会心一笑，现在的团队让人觉得恶心下流。&rdquo;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;据悉这次&ldquo;翻车&rdquo;的背后是杜蕾斯更换了新的运营团队。而这也暴露出新团队在尺度把握上的不够，或许是新团队为了证明自己，以为是生理产品就可以围绕&ldquo;性&rdquo;字大做文章且毫无禁忌。可品牌传承有时候并不比创新容易，为了证明自己的能力而冒进难免会&ldquo;翻车&rdquo;。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;作为企业当然可以玩创意，但玩的过火则要担着商业风险，须知稍不留神就会将这些年积累起来的良好名声搭进去。从这次的杜蕾斯&ldquo;419不眠夜&rdquo;文案到椰树椰汁的&ldquo;从小喝到大&rdquo;，乃至之前的绝味鸭脖&ldquo;双11&rdquo;海报，诸如此类带有浓郁荷尔蒙气味的低级广告可谓层出不穷。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;不可否认，这些充满暗示性的擦边球文案，在短期内会帮助企业收获大量的关注。但与此同时，这样做对品牌价值造成的损害却往往是不可逆转的。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;& lt;img class=\"content-picture\" style=\"border: 0px none; vertical-align: middle; max-width: 100%; margin: 0.6em auto; display: block;\" src=\"https://inews.gtimg.com/newsapp_bt/0/8652662166/1000\" /& gt;& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;杜蕾斯官方微博截图。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;当一个生理用品和一个食品玩起跨界，凭借着&ldquo;一滴都不许剩&rdquo;和&ldquo;你唇上始终有我的芝士&rdquo;的文案，一度上了微博热搜。估计会让不少喜欢喝喜茶的用户就此有了阴影。而饿了么的文案，估计也能帮助不少的女性朋友减肥。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;广告鬼才叶明桂曾就如何建立品牌时讲到，要投射品牌背后的善意。《广告法》第九条也明确规定，广告不得妨碍社会公共秩序或者违背社会良好风尚，不得含有淫秽、色情、赌博、迷信、恐怖、暴力的内容。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;所以，作为企业不能为了博得流量和关注就一味挑战受众们的底线，将低俗当抖机灵，在法律的边缘试探。你不尊重受众，那作为潜在消费者的受众们自然会用自己的行动作出选择。而你在法律的边缘不断试探，也迟早会因触碰到红线受到惩罚。& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;嘉木（媒体人）& lt;/p& gt;\n& lt;p class=\"one-p\" style=\"margin: 0px 0px 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: & #39;Microsoft Yahei& #39;, Avenir, & #39;Segoe UI& #39;, & #39;Hiragino Sans GB& #39;, STHeiti, & #39;Microsoft Sans Serif& #39;, & #39;WenQuanYi Micro Hei& #39;, sans-serif; font-size: 18px;\"& gt;编辑：杨林鑫校对：危卓& lt;/p& gt;', '新京报评论：杜蕾斯“百万文案”“翻车”，别把恶俗当创意', 'admin', '2019-04-21 21:35:50', NULL);
INSERT INTO `article_log` VALUES (7, 7, 0, '& lt;p& gt;ssssssssssssss& lt;/p& gt;', '新京报评论：杜蕾斯“百万文案”“翻车”，别把恶俗当创意', 'admin', '2019-04-21 21:45:05', NULL);

-- ----------------------------
-- Table structure for car_category
-- ----------------------------
DROP TABLE IF EXISTS `car_category`;
CREATE TABLE `car_category`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `band` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `letter` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字母列表',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `code` int(6) NULL DEFAULT NULL COMMENT '编号',
  `seq` int(6) NULL DEFAULT NULL COMMENT '序列号',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (13, '权限设置', '', 0, 10, 1, 'el-icon-info');
INSERT INTO `menu` VALUES (14, '用户管理', '/user', 13, 1001, 1, 'el-icon-third-user');
INSERT INTO `menu` VALUES (15, '部门管理', '/group', 13, 1002, 3, 'el-icon-third-apartment');
INSERT INTO `menu` VALUES (16, '角色管理', '/role', 13, 1003, 2, 'el-icon-third-team');
INSERT INTO `menu` VALUES (17, '资源管理', '', 13, 1004, 4, 'el-icon-third-appstore');
INSERT INTO `menu` VALUES (20, '演示', '', 0, 20, 1, 'el-icon-third-deploymentunit');
INSERT INTO `menu` VALUES (21, '编辑器', '/editor', 20, 2001, 1, 'el-icon-edit');
INSERT INTO `menu` VALUES (23, '菜单', '/menu', 17, 100401, 1, 'el-icon-third-menu');
INSERT INTO `menu` VALUES (24, '操作', '/operation', 17, 100402, 2, 'el-icon-third-wrench-fill');
INSERT INTO `menu` VALUES (25, '内容管理', '', 0, 30, 1, 'el-icon-third-book');
INSERT INTO `menu` VALUES (26, '我的稿件', '/article/my', 25, 3001, 1, 'el-icon-third-idcard');
INSERT INTO `menu` VALUES (27, '稿件审核', '/article/approve', 25, 3002, 2, 'el-icon-third-filter');
INSERT INTO `menu` VALUES (28, '发布文章', '/article/publish', 25, 3003, 3, 'el-icon-third-audit');

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作名称',
  `url` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拦截url',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (6, '新增用户', '/user/create', '100001', NULL);
INSERT INTO `operation` VALUES (7, '修改用户', '/user/update', '100002', NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `type` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类型（1:菜单；2:页面元素；3:操作）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '1');
INSERT INTO `permission` VALUES (2, '1');
INSERT INTO `permission` VALUES (3, '1');
INSERT INTO `permission` VALUES (4, '1');
INSERT INTO `permission` VALUES (5, '1');
INSERT INTO `permission` VALUES (6, '1');
INSERT INTO `permission` VALUES (7, '1');
INSERT INTO `permission` VALUES (8, '1');
INSERT INTO `permission` VALUES (9, '1');
INSERT INTO `permission` VALUES (10, '1');
INSERT INTO `permission` VALUES (11, '1');
INSERT INTO `permission` VALUES (12, '1');
INSERT INTO `permission` VALUES (13, '1');
INSERT INTO `permission` VALUES (14, '1');
INSERT INTO `permission` VALUES (15, '1');
INSERT INTO `permission` VALUES (16, '1');
INSERT INTO `permission` VALUES (17, '1');
INSERT INTO `permission` VALUES (18, '1');
INSERT INTO `permission` VALUES (19, '1');
INSERT INTO `permission` VALUES (20, '1');
INSERT INTO `permission` VALUES (21, '1');
INSERT INTO `permission` VALUES (22, '1');
INSERT INTO `permission` VALUES (23, '1');
INSERT INTO `permission` VALUES (24, '1');
INSERT INTO `permission` VALUES (25, '1');
INSERT INTO `permission` VALUES (26, '1');
INSERT INTO `permission` VALUES (27, '1');
INSERT INTO `permission` VALUES (28, '1');
INSERT INTO `permission` VALUES (29, '1');
INSERT INTO `permission` VALUES (30, '1');
INSERT INTO `permission` VALUES (31, '1');
INSERT INTO `permission` VALUES (32, '1');
INSERT INTO `permission` VALUES (33, '1');
INSERT INTO `permission` VALUES (34, '1');
INSERT INTO `permission` VALUES (35, '1');
INSERT INTO `permission` VALUES (36, '1');
INSERT INTO `permission` VALUES (37, '1');
INSERT INTO `permission` VALUES (38, '3');
INSERT INTO `permission` VALUES (39, '3');
INSERT INTO `permission` VALUES (40, '1');
INSERT INTO `permission` VALUES (41, '1');
INSERT INTO `permission` VALUES (42, '1');
INSERT INTO `permission` VALUES (43, '1');

-- ----------------------------
-- Table structure for permission_menu_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu_re`;
CREATE TABLE `permission_menu_re`  (
  `permission_id` bigint(10) NOT NULL,
  `menu_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `menu_id`) USING BTREE,
  INDEX `fk_pm_menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `fk_pm_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_pm_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_menu_re
-- ----------------------------
INSERT INTO `permission_menu_re` VALUES (7, 13);
INSERT INTO `permission_menu_re` VALUES (8, 14);
INSERT INTO `permission_menu_re` VALUES (9, 15);
INSERT INTO `permission_menu_re` VALUES (10, 16);
INSERT INTO `permission_menu_re` VALUES (11, 17);
INSERT INTO `permission_menu_re` VALUES (14, 20);
INSERT INTO `permission_menu_re` VALUES (15, 21);
INSERT INTO `permission_menu_re` VALUES (19, 23);
INSERT INTO `permission_menu_re` VALUES (20, 24);
INSERT INTO `permission_menu_re` VALUES (40, 25);
INSERT INTO `permission_menu_re` VALUES (41, 26);
INSERT INTO `permission_menu_re` VALUES (42, 27);
INSERT INTO `permission_menu_re` VALUES (43, 28);

-- ----------------------------
-- Table structure for permission_operation_re
-- ----------------------------
DROP TABLE IF EXISTS `permission_operation_re`;
CREATE TABLE `permission_operation_re`  (
  `permission_id` bigint(10) NOT NULL,
  `operation_id` bigint(10) NOT NULL,
  PRIMARY KEY (`permission_id`, `operation_id`) USING BTREE,
  INDEX `fk_po_operation_id`(`operation_id`) USING BTREE,
  CONSTRAINT `fk_po_operation_id` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_po_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限-操作关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_operation_re
-- ----------------------------
INSERT INTO `permission_operation_re` VALUES (38, 6);
INSERT INTO `permission_operation_re` VALUES (39, 7);

-- ----------------------------
-- Table structure for resource_image
-- ----------------------------
DROP TABLE IF EXISTS `resource_image`;
CREATE TABLE `resource_image`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `size` bigint(9) NULL DEFAULT NULL COMMENT '大小(字节数)',
  `upload_time` timestamp(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resource_image
-- ----------------------------
INSERT INTO `resource_image` VALUES ('067e1cd7-80b4-4e8b-a4e3-0ac08cbd4852', '067e1cd7-80b4-4e8b-a4e3-0ac08cbd4852.png', '2019/04/21/067e1cd7-80b4-4e8b-a4e3-0ac08cbd4852.png', 3363, '2019-04-21 15:25:21');
INSERT INTO `resource_image` VALUES ('07713c68-1623-4379-bee4-ed1e65b8d15c', '07713c68-1623-4379-bee4-ed1e65b8d15c.gif', '2019/03/31/07713c68-1623-4379-bee4-ed1e65b8d15c.gif', 1679955, '2019-03-31 20:51:01');
INSERT INTO `resource_image` VALUES ('07972ee7-600b-478f-83f9-ad38697c1113', '07972ee7-600b-478f-83f9-ad38697c1113.gif', '2019/04/21/07972ee7-600b-478f-83f9-ad38697c1113.gif', 1679955, '2019-04-21 15:14:06');
INSERT INTO `resource_image` VALUES ('0893bc08-80bc-40b4-b145-8be4bbb7a4c3', '0893bc08-80bc-40b4-b145-8be4bbb7a4c3.gif', '2019/03/31/0893bc08-80bc-40b4-b145-8be4bbb7a4c3.gif', 1679955, '2019-03-31 20:48:27');
INSERT INTO `resource_image` VALUES ('0a08e160-12da-411c-8c10-f822b297e294', '0a08e160-12da-411c-8c10-f822b297e294.png', '2019/03/23/0a08e160-12da-411c-8c10-f822b297e294.png', 3363, '2019-03-23 16:22:26');
INSERT INTO `resource_image` VALUES ('0e932ade-0b59-4fbb-ae29-a53cc5aa5c7f', '0e932ade-0b59-4fbb-ae29-a53cc5aa5c7f.gif', '2019/03/23/0e932ade-0b59-4fbb-ae29-a53cc5aa5c7f.gif', 1679955, '2019-03-23 16:12:08');
INSERT INTO `resource_image` VALUES ('0f09d7a7-86ca-4013-8ac3-fd4450a42514', '0f09d7a7-86ca-4013-8ac3-fd4450a42514.jpg', '2019/03/15/0f09d7a7-86ca-4013-8ac3-fd4450a42514.jpg', 75150, '2019-03-15 22:58:18');
INSERT INTO `resource_image` VALUES ('13356baa-67d9-47b5-90aa-b96b7566e110', '13356baa-67d9-47b5-90aa-b96b7566e110.png', '2019/04/21/13356baa-67d9-47b5-90aa-b96b7566e110.png', 3363, '2019-04-21 15:19:44');
INSERT INTO `resource_image` VALUES ('156e0bd8-cd9f-401c-8320-f477596d5f96', '156e0bd8-cd9f-401c-8320-f477596d5f96.png', '2019/04/21/156e0bd8-cd9f-401c-8320-f477596d5f96.png', 3363, '2019-04-21 16:00:30');
INSERT INTO `resource_image` VALUES ('15cbdf70-cb4e-4962-8996-5e3c2209826b', '15cbdf70-cb4e-4962-8996-5e3c2209826b.jpg', '2019/03/15/15cbdf70-cb4e-4962-8996-5e3c2209826b.jpg', 75150, '2019-03-15 22:19:03');
INSERT INTO `resource_image` VALUES ('1c854569-e625-40c5-8657-22398d74b616', '1c854569-e625-40c5-8657-22398d74b616.gif', '2019/04/19/1c854569-e625-40c5-8657-22398d74b616.gif', 1679955, '2019-04-19 23:25:23');
INSERT INTO `resource_image` VALUES ('1df5021e-eb3a-4305-a61f-771b0cdc929b', '1df5021e-eb3a-4305-a61f-771b0cdc929b.gif', '2019/03/23/1df5021e-eb3a-4305-a61f-771b0cdc929b.gif', 1679955, '2019-03-23 14:58:28');
INSERT INTO `resource_image` VALUES ('2a3f0a47-396a-4e49-a469-18552ce53715', '2a3f0a47-396a-4e49-a469-18552ce53715.jpg', '2019/03/15/2a3f0a47-396a-4e49-a469-18552ce53715.jpg', 19879, '2019-03-15 22:22:54');
INSERT INTO `resource_image` VALUES ('2e00d560-09e7-42ed-83a9-37ad3bf7010a', '2e00d560-09e7-42ed-83a9-37ad3bf7010a.png', '2019/04/21/2e00d560-09e7-42ed-83a9-37ad3bf7010a.png', 3363, '2019-04-21 15:44:31');
INSERT INTO `resource_image` VALUES ('330d2cdd-50bf-4742-8536-0ef0713de508', '330d2cdd-50bf-4742-8536-0ef0713de508.gif', '2019/03/23/330d2cdd-50bf-4742-8536-0ef0713de508.gif', 1679955, '2019-03-23 16:01:33');
INSERT INTO `resource_image` VALUES ('3400632f-6ca2-4d40-9a86-6376ba33b8c3', '3400632f-6ca2-4d40-9a86-6376ba33b8c3.jpg', '2019/03/15/3400632f-6ca2-4d40-9a86-6376ba33b8c3.jpg', 19879, '2019-03-15 22:01:24');
INSERT INTO `resource_image` VALUES ('365e3787-b68e-4325-90ec-e322ba209b14', '365e3787-b68e-4325-90ec-e322ba209b14.gif', '2019/03/23/365e3787-b68e-4325-90ec-e322ba209b14.gif', 1679955, '2019-03-23 16:18:08');
INSERT INTO `resource_image` VALUES ('3b0c91f5-3444-4866-a681-b2053c402a58', '3b0c91f5-3444-4866-a681-b2053c402a58.gif', '2019/03/16/3b0c91f5-3444-4866-a681-b2053c402a58.gif', 1679955, '2019-03-16 21:09:30');
INSERT INTO `resource_image` VALUES ('3d1e7c43-7548-4244-9436-fb7404912c0b', '3d1e7c43-7548-4244-9436-fb7404912c0b.gif', '2019/04/21/3d1e7c43-7548-4244-9436-fb7404912c0b.gif', 1679955, '2019-04-21 15:58:47');
INSERT INTO `resource_image` VALUES ('45817e39-ebc9-47fa-827b-5aadf189daa0', '45817e39-ebc9-47fa-827b-5aadf189daa0.gif', '2019/04/21/45817e39-ebc9-47fa-827b-5aadf189daa0.gif', 1679955, '2019-04-21 15:04:58');
INSERT INTO `resource_image` VALUES ('52439cd7-f68d-4983-95d2-d01a1e56dd5a', '52439cd7-f68d-4983-95d2-d01a1e56dd5a.gif', '2019/03/23/52439cd7-f68d-4983-95d2-d01a1e56dd5a.gif', 1679955, '2019-03-23 16:17:38');
INSERT INTO `resource_image` VALUES ('560dc95f-954a-441b-8e26-cbbded9914ca', '560dc95f-954a-441b-8e26-cbbded9914ca.gif', '2019/04/19/560dc95f-954a-441b-8e26-cbbded9914ca.gif', 1679955, '2019-04-19 23:24:40');
INSERT INTO `resource_image` VALUES ('56b0f015-2f12-45a9-9067-4f670bd121f8', '56b0f015-2f12-45a9-9067-4f670bd121f8.png', '2019/04/21/56b0f015-2f12-45a9-9067-4f670bd121f8.png', 3363, '2019-04-21 15:48:54');
INSERT INTO `resource_image` VALUES ('572e0728-2dd0-4472-9ce8-27c9d3d7bfe7', '572e0728-2dd0-4472-9ce8-27c9d3d7bfe7.png', '2019/04/21/572e0728-2dd0-4472-9ce8-27c9d3d7bfe7.png', 3363, '2019-04-21 15:58:59');
INSERT INTO `resource_image` VALUES ('5bc16685-e4af-41fb-927b-eb926da2612a', '5bc16685-e4af-41fb-927b-eb926da2612a.png', '2019/03/16/5bc16685-e4af-41fb-927b-eb926da2612a.png', 3363, '2019-03-16 20:50:08');
INSERT INTO `resource_image` VALUES ('5debea4f-5b90-479f-8c5c-31e6ac56d341', '5debea4f-5b90-479f-8c5c-31e6ac56d341.gif', '2019/04/21/5debea4f-5b90-479f-8c5c-31e6ac56d341.gif', 1679955, '2019-04-21 16:00:15');
INSERT INTO `resource_image` VALUES ('5ec09404-99cc-4850-b16d-180d3e4c8e5f', '5ec09404-99cc-4850-b16d-180d3e4c8e5f.png', '2019/04/21/5ec09404-99cc-4850-b16d-180d3e4c8e5f.png', 3363, '2019-04-21 15:27:29');
INSERT INTO `resource_image` VALUES ('611cc7ab-0347-4f75-81ee-896953ee32ad', '611cc7ab-0347-4f75-81ee-896953ee32ad.png', '2019/04/21/611cc7ab-0347-4f75-81ee-896953ee32ad.png', 3363, '2019-04-21 15:30:35');
INSERT INTO `resource_image` VALUES ('6d06fb45-90cc-4317-a5c6-ffa951a51b41', '6d06fb45-90cc-4317-a5c6-ffa951a51b41.gif', '2019/03/23/6d06fb45-90cc-4317-a5c6-ffa951a51b41.gif', 1679955, '2019-03-23 16:14:43');
INSERT INTO `resource_image` VALUES ('6fc6d855-76f5-43a2-a384-963305c2b960', '6fc6d855-76f5-43a2-a384-963305c2b960.png', '2019/04/21/6fc6d855-76f5-43a2-a384-963305c2b960.png', 3363, '2019-04-21 15:29:34');
INSERT INTO `resource_image` VALUES ('715ae58a-02ca-42a1-bcba-d5862108f3ea', '715ae58a-02ca-42a1-bcba-d5862108f3ea.jpg', '2019/03/15/715ae58a-02ca-42a1-bcba-d5862108f3ea.jpg', 19879, '2019-03-15 22:33:41');
INSERT INTO `resource_image` VALUES ('776f437a-0035-47ce-8ab5-9d722a45398d', '776f437a-0035-47ce-8ab5-9d722a45398d.jpg', '2019/03/15/776f437a-0035-47ce-8ab5-9d722a45398d.jpg', 75150, '2019-03-15 22:15:10');
INSERT INTO `resource_image` VALUES ('7cd3b282-728f-457e-be6d-dcd82f247299', '7cd3b282-728f-457e-be6d-dcd82f247299.jpg', '2019/03/15/7cd3b282-728f-457e-be6d-dcd82f247299.jpg', 19879, '2019-03-15 21:58:18');
INSERT INTO `resource_image` VALUES ('7db8740a-3e6f-49ff-b673-0d112505f455', '7db8740a-3e6f-49ff-b673-0d112505f455.jpg', '2019/03/15/7db8740a-3e6f-49ff-b673-0d112505f455.jpg', 19879, '2019-03-15 22:35:23');
INSERT INTO `resource_image` VALUES ('7dd11efb-a1c9-4cd7-bb17-cc8367486580', '7dd11efb-a1c9-4cd7-bb17-cc8367486580.png', '2019/03/16/7dd11efb-a1c9-4cd7-bb17-cc8367486580.png', 3363, '2019-03-16 21:12:38');
INSERT INTO `resource_image` VALUES ('80ca3d10-e2ac-4004-ab42-cbde7634c930', '80ca3d10-e2ac-4004-ab42-cbde7634c930.jpg', '2019/03/15/80ca3d10-e2ac-4004-ab42-cbde7634c930.jpg', 19879, '2019-03-15 22:36:14');
INSERT INTO `resource_image` VALUES ('811ff9a2-c02a-4f7f-8cbc-ab7e899542e0', '811ff9a2-c02a-4f7f-8cbc-ab7e899542e0.png', '2019/04/21/811ff9a2-c02a-4f7f-8cbc-ab7e899542e0.png', 3363, '2019-04-21 15:48:25');
INSERT INTO `resource_image` VALUES ('83090c4c-9c8d-455e-ab84-08d40a916537', '83090c4c-9c8d-455e-ab84-08d40a916537.gif', '2019/04/21/83090c4c-9c8d-455e-ab84-08d40a916537.gif', 1679955, '2019-04-21 15:16:47');
INSERT INTO `resource_image` VALUES ('88e6670d-cb93-4096-a589-8e8c82934be9', '88e6670d-cb93-4096-a589-8e8c82934be9.png', '2019/04/21/88e6670d-cb93-4096-a589-8e8c82934be9.png', 3363, '2019-04-21 15:28:31');
INSERT INTO `resource_image` VALUES ('8c96af2e-2fb9-49b3-9900-799cb9d019c7', '8c96af2e-2fb9-49b3-9900-799cb9d019c7.gif', '2019/03/23/8c96af2e-2fb9-49b3-9900-799cb9d019c7.gif', 1679955, '2019-03-23 16:10:52');
INSERT INTO `resource_image` VALUES ('92ff5270-5446-4963-a92e-c9faefdcc429', '92ff5270-5446-4963-a92e-c9faefdcc429.gif', '2019/03/23/92ff5270-5446-4963-a92e-c9faefdcc429.gif', 1679955, '2019-03-23 14:58:49');
INSERT INTO `resource_image` VALUES ('9c3a4eb4-59f6-4696-b35c-015a7fbbef8f', '9c3a4eb4-59f6-4696-b35c-015a7fbbef8f.png', '2019/04/21/9c3a4eb4-59f6-4696-b35c-015a7fbbef8f.png', 3363, '2019-04-21 15:39:53');
INSERT INTO `resource_image` VALUES ('a0312466-a20c-4a2a-8efc-bceb1dfc38d7', 'a0312466-a20c-4a2a-8efc-bceb1dfc38d7.png', '2019/04/21/a0312466-a20c-4a2a-8efc-bceb1dfc38d7.png', 3363, '2019-04-21 15:30:06');
INSERT INTO `resource_image` VALUES ('a2ae2fc5-5354-4683-9db6-5022cb622f43', 'a2ae2fc5-5354-4683-9db6-5022cb622f43.png', '2019/04/21/a2ae2fc5-5354-4683-9db6-5022cb622f43.png', 3363, '2019-04-21 15:58:38');
INSERT INTO `resource_image` VALUES ('a963cc08-af01-4a06-9785-722c527b7f37', 'a963cc08-af01-4a06-9785-722c527b7f37.gif', '2019/04/21/a963cc08-af01-4a06-9785-722c527b7f37.gif', 1679955, '2019-04-21 15:11:29');
INSERT INTO `resource_image` VALUES ('a9943dae-6a0c-4ac7-b96b-ad94a13847eb', 'a9943dae-6a0c-4ac7-b96b-ad94a13847eb.png', '2019/04/21/a9943dae-6a0c-4ac7-b96b-ad94a13847eb.png', 3363, '2019-04-21 15:50:51');
INSERT INTO `resource_image` VALUES ('af21731b-e186-4ab5-ad25-3192a67e2e7b', 'af21731b-e186-4ab5-ad25-3192a67e2e7b.gif', '2019/03/23/af21731b-e186-4ab5-ad25-3192a67e2e7b.gif', 1679955, '2019-03-23 16:10:20');
INSERT INTO `resource_image` VALUES ('afb06e63-9aa0-4eb1-a88f-5971fdb3b144', 'afb06e63-9aa0-4eb1-a88f-5971fdb3b144.png', '2019/04/21/afb06e63-9aa0-4eb1-a88f-5971fdb3b144.png', 3363, '2019-04-21 15:53:18');
INSERT INTO `resource_image` VALUES ('b432b45e-e568-4f6d-b92d-b2c2f2e8f095', 'b432b45e-e568-4f6d-b92d-b2c2f2e8f095.gif', '2019/04/21/b432b45e-e568-4f6d-b92d-b2c2f2e8f095.gif', 1679955, '2019-04-21 15:55:18');
INSERT INTO `resource_image` VALUES ('b582e157-f9b5-4f5c-9b15-87453e7f00e0', 'b582e157-f9b5-4f5c-9b15-87453e7f00e0.png', '2019/04/21/b582e157-f9b5-4f5c-9b15-87453e7f00e0.png', 3363, '2019-04-21 16:00:03');
INSERT INTO `resource_image` VALUES ('b94e6dcb-469c-412e-a78c-f87590f03dee', 'b94e6dcb-469c-412e-a78c-f87590f03dee.gif', '2019/03/18/b94e6dcb-469c-412e-a78c-f87590f03dee.gif', 1679955, '2019-03-18 23:33:36');
INSERT INTO `resource_image` VALUES ('bd807692-fd88-4aeb-99da-ba276e421022', 'bd807692-fd88-4aeb-99da-ba276e421022.jpg', '2019/03/15/bd807692-fd88-4aeb-99da-ba276e421022.jpg', 75150, '2019-03-15 22:35:55');
INSERT INTO `resource_image` VALUES ('bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee', 'bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee.jpg', '2019/03/15/bfc94b4f-be6d-4b24-ac78-b65a5e65b6ee.jpg', 19879, '2019-03-15 22:27:42');
INSERT INTO `resource_image` VALUES ('c21c01c9-2074-4e68-bb1f-a092c84d8956', 'c21c01c9-2074-4e68-bb1f-a092c84d8956.gif', '2019/03/23/c21c01c9-2074-4e68-bb1f-a092c84d8956.gif', 1679955, '2019-03-23 16:22:20');
INSERT INTO `resource_image` VALUES ('cada7024-8ca9-4ba7-854f-14c43d768205', 'cada7024-8ca9-4ba7-854f-14c43d768205.gif', '2019/03/23/cada7024-8ca9-4ba7-854f-14c43d768205.gif', 1679955, '2019-03-23 17:02:32');
INSERT INTO `resource_image` VALUES ('cb2ada95-6206-4843-80df-5a8366dfe7c2', 'cb2ada95-6206-4843-80df-5a8366dfe7c2.jpg', '2019/03/15/cb2ada95-6206-4843-80df-5a8366dfe7c2.jpg', 19879, '2019-03-15 22:35:43');
INSERT INTO `resource_image` VALUES ('ce14d20e-278e-4f1c-8482-90585ba932b1', 'ce14d20e-278e-4f1c-8482-90585ba932b1.png', '2019/04/21/ce14d20e-278e-4f1c-8482-90585ba932b1.png', 3363, '2019-04-21 15:22:37');
INSERT INTO `resource_image` VALUES ('d9029a4a-a9f6-4ed9-8bdb-d4e4b691974d', 'd9029a4a-a9f6-4ed9-8bdb-d4e4b691974d.jpg', '2019/03/15/d9029a4a-a9f6-4ed9-8bdb-d4e4b691974d.jpg', 75150, '2019-03-15 22:15:20');
INSERT INTO `resource_image` VALUES ('ddf8d052-091f-44e1-b045-ce6a22091336', 'ddf8d052-091f-44e1-b045-ce6a22091336.jpg', '2019/03/15/ddf8d052-091f-44e1-b045-ce6a22091336.jpg', 19879, '2019-03-15 22:15:30');
INSERT INTO `resource_image` VALUES ('e47366fe-0c90-4e1b-8615-90cb4309f80b', 'e47366fe-0c90-4e1b-8615-90cb4309f80b.gif', '2019/03/23/e47366fe-0c90-4e1b-8615-90cb4309f80b.gif', 1679955, '2019-03-23 16:09:31');
INSERT INTO `resource_image` VALUES ('ea495d2b-fd9e-42dc-b0de-8ba7c0d22042', 'ea495d2b-fd9e-42dc-b0de-8ba7c0d22042.gif', '2019/03/23/ea495d2b-fd9e-42dc-b0de-8ba7c0d22042.gif', 1679955, '2019-03-23 16:21:04');
INSERT INTO `resource_image` VALUES ('ebb789aa-7e93-4f51-8748-4e5f16d7d990', 'ebb789aa-7e93-4f51-8748-4e5f16d7d990.gif', '2019/03/31/ebb789aa-7e93-4f51-8748-4e5f16d7d990.gif', 1679955, '2019-03-31 20:50:36');
INSERT INTO `resource_image` VALUES ('edb454e5-110d-4ed3-9d80-16e83df82a63', 'edb454e5-110d-4ed3-9d80-16e83df82a63.jpg', '2019/03/15/edb454e5-110d-4ed3-9d80-16e83df82a63.jpg', 19879, '2019-03-15 22:14:50');
INSERT INTO `resource_image` VALUES ('f122c25f-f2bc-4b55-96eb-e04abcd9a839', 'f122c25f-f2bc-4b55-96eb-e04abcd9a839.png', '2019/04/21/f122c25f-f2bc-4b55-96eb-e04abcd9a839.png', 3363, '2019-04-21 16:07:42');
INSERT INTO `resource_image` VALUES ('fabc786b-8188-4cb3-bce6-9da3ec995795', 'fabc786b-8188-4cb3-bce6-9da3ec995795.png', '2019/04/21/fabc786b-8188-4cb3-bce6-9da3ec995795.png', 3363, '2019-04-21 15:55:08');
INSERT INTO `resource_image` VALUES ('fad6b99b-647a-4817-8a46-edcabfb3a514', 'fad6b99b-647a-4817-8a46-edcabfb3a514.gif', '2019/04/19/fad6b99b-647a-4817-8a46-edcabfb3a514.gif', 1679955, '2019-04-19 23:23:59');
INSERT INTO `resource_image` VALUES ('fe7116e5-8e47-4100-bb17-c173c4d7d700', 'fe7116e5-8e47-4100-bb17-c173c4d7d700.png', '2019/04/21/fe7116e5-8e47-4100-bb17-c173c4d7d700.png', 3363, '2019-04-21 15:46:30');
INSERT INTO `resource_image` VALUES ('ff8d3062-c1cc-45cd-8cc6-db9e2ccab025', 'ff8d3062-c1cc-45cd-8cc6-db9e2ccab025.png', '2019/04/21/ff8d3062-c1cc-45cd-8cc6-db9e2ccab025.png', 3363, '2019-04-21 15:50:11');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员', 'ADMIN', NULL, '2019-02-25 21:17:25');
INSERT INTO `role` VALUES (5, '普通人员', 'ROLE_NORMAL', 'admin', '2019-03-17 14:47:56');
INSERT INTO `role` VALUES (6, '测试人员', 'ROLE_TEST', 'admin', '2019-03-19 23:06:15');
INSERT INTO `role` VALUES (7, '测试一', 'ROLE_TEST1', 'admin', '2019-03-19 23:15:46');
INSERT INTO `role` VALUES (8, '测试二', 'ROLE_TEST2', 'admin', '2019-03-19 23:16:01');
INSERT INTO `role` VALUES (9, '测试三', 'ROLE_TEST3', 'admin', '2019-03-19 23:16:17');
INSERT INTO `role` VALUES (10, '测试四', 'ROLE_TEST4', 'admin', '2019-03-19 23:16:28');

-- ----------------------------
-- Table structure for role_permission_re
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_re`;
CREATE TABLE `role_permission_re`  (
  `role_id` bigint(12) NOT NULL COMMENT '角色id',
  `permission_id` bigint(10) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `fk_rp_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `fk_rp_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_rp_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-权限关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission_re
-- ----------------------------
INSERT INTO `role_permission_re` VALUES (5, 7);
INSERT INTO `role_permission_re` VALUES (5, 8);
INSERT INTO `role_permission_re` VALUES (5, 9);
INSERT INTO `role_permission_re` VALUES (5, 10);
INSERT INTO `role_permission_re` VALUES (5, 11);
INSERT INTO `role_permission_re` VALUES (5, 14);
INSERT INTO `role_permission_re` VALUES (5, 15);
INSERT INTO `role_permission_re` VALUES (5, 19);
INSERT INTO `role_permission_re` VALUES (5, 20);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否可用(1:可用；0:禁用)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '上世纪大精神的', 'e10adc3949ba59abbe56e057f20f883e', 'lll@xxx.com', '15871411351', 1, '2019-01-05 17:33:11', '2019-02-24 14:17:30');
INSERT INTO `user` VALUES (2, 'test0001', 'sdasdsa', 'e10adc3949ba59abbe56e057f20f883e', 'ssss@qqq.com', '13512345678', 1, '2019-03-19 21:28:37', NULL);
INSERT INTO `user` VALUES (4, 'test0003', 'test0003', 'e10adc3949ba59abbe56e057f20f883e', '111@qqq.com', '13811111111', 1, '2019-03-19 21:39:25', NULL);
INSERT INTO `user` VALUES (5, 'test0004', 'test0004', 'e10adc3949ba59abbe56e057f20f883e', 'sdsda@qq.com', '13500000000', 1, '2019-03-19 21:50:56', NULL);

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组名',
  `pid` bigint(10) NULL DEFAULT NULL COMMENT '父id',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, '默认分组', 0, '系统管理员所在分组');
INSERT INTO `user_group` VALUES (100, '分组', 1, NULL);
INSERT INTO `user_group` VALUES (101, '武汉', 1, NULL);
INSERT INTO `user_group` VALUES (102, '测试', 1, NULL);
INSERT INTO `user_group` VALUES (105, 'sdadsadsa', 102, NULL);
INSERT INTO `user_group` VALUES (114, 'sss', 101, NULL);

-- ----------------------------
-- Table structure for user_group_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_re`;
CREATE TABLE `user_group_re`  (
  `user_id` bigint(10) NOT NULL,
  `group_id` bigint(10) NOT NULL,
  PRIMARY KEY (`user_id`, `group_id`) USING BTREE,
  INDEX `fk_ug_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ug_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-用户组关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group_re
-- ----------------------------
INSERT INTO `user_group_re` VALUES (1, 1);
INSERT INTO `user_group_re` VALUES (2, 101);
INSERT INTO `user_group_re` VALUES (5, 101);
INSERT INTO `user_group_re` VALUES (4, 102);

-- ----------------------------
-- Table structure for user_group_role_re
-- ----------------------------
DROP TABLE IF EXISTS `user_group_role_re`;
CREATE TABLE `user_group_role_re`  (
  `group_id` bigint(10) NOT NULL,
  `role_id` bigint(10) NOT NULL,
  PRIMARY KEY (`group_id`, `role_id`) USING BTREE,
  INDEX `fk_ur_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_ug_group_id` FOREIGN KEY (`group_id`) REFERENCES `user_group` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_ur_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组-角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role_r
-- ----------------------------
DROP TABLE IF EXISTS `user_role_r`;
CREATE TABLE `user_role_r`  (
  `user_id` bigint(10) NOT NULL COMMENT '用户id',
  `role_id` bigint(12) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `fk_role_id`(`role_id`) USING BTREE,
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role_r
-- ----------------------------
INSERT INTO `user_role_r` VALUES (1, 1);
INSERT INTO `user_role_r` VALUES (2, 5);
INSERT INTO `user_role_r` VALUES (4, 6);
INSERT INTO `user_role_r` VALUES (5, 10);

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
delimiter ;;
CREATE DEFINER=`vlog`@`%` FUNCTION `getChildLst`(`rootId` int) RETURNS varchar(1000) CHARSET utf8
BEGIN
	 DECLARE sTemp VARCHAR(1000); 
		DECLARE sTempChd VARCHAR(1000); 

		SET sTemp = '^'; 
		SET sTempChd = rootId; 

		WHILE sTempChd is not null DO 
				SET sTemp = concat(sTemp,',',sTempChd); 
				SELECT group_concat(id) INTO sTempChd FROM user_group where FIND_IN_SET(pid,sTempChd)>0; 
		END WHILE; 
		RETURN substring(sTemp,4+length(rootId));
END
;;
delimiter ;

-- ----------------------------
-- Function structure for getTreeList
-- ----------------------------
DROP FUNCTION IF EXISTS `getTreeList`;
delimiter ;;
CREATE DEFINER=`vlog`@`%` FUNCTION `getTreeList`(`rootId` int) RETURNS varchar(1000) CHARSET utf8
BEGIN
	 DECLARE sTemp VARCHAR(1000); 
		DECLARE sTempChd VARCHAR(1000); 

		SET sTemp = '^'; 
		SET sTempChd = rootId; 

		WHILE sTempChd is not null DO 
				SET sTemp = concat(sTemp,',',sTempChd); 
				SELECT group_concat(id) INTO sTempChd FROM user_group where FIND_IN_SET(pid,sTempChd)>0; 
		END WHILE; 
		RETURN substring(sTemp,3);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
